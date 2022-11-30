<?php

namespace App\Http\Controllers;

use App\Dto\LoginDto;
use App\Dto\NewUserDto;
use App\Http\Requests\Auth\LoginRequest;
use App\Http\Requests\Auth\RegisterRequest;
use App\Http\Resources\UserResource;
use App\Repositories\UserRepository;
use App\Services\AuthService;
use Diglactic\Breadcrumbs\Breadcrumbs;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Redirect;
use Inertia\Response;

class AuthController extends Controller
{
    public function __construct(
        private readonly AuthService $authService,
        private readonly UserRepository $userRepository,
    ) {
    }

    public function showLogin(): Response
    {
        return inertia(
            component: 'auth/Login',
            props: [
                'breadcrumbs' => fn () => Breadcrumbs::generate('auth.login'),
                'newestUsers' => UserResource::collection($this->userRepository->getLastUsers()),
            ]
        );
    }

    public function postLogin(LoginRequest $request): RedirectResponse
    {
        if (
            $this->authService->login(
                loginDto: new LoginDto(
                    username: $request->get('username'),
                    password: $request->get('password'),
                    ip: $request->getClientIp(),
                    userAgent: $request->userAgent(),
                )
            )
        ) {
            return Redirect::route('user.home');
        }

        return Redirect::route('auth.login');
    }

    public function showRegister(): Response
    {
        return inertia(
            component: 'auth/Register',
            props: [
                'breadcrumbs' => fn () => Breadcrumbs::generate('auth.register'),
            ]
        );
    }

    public function postRegister(RegisterRequest $request): RedirectResponse
    {
        if ($this->authService->register(
            newUser: new NewUserDto(
                username: $request->get('username'),
                email: $request->get('email'),
                password: $request->get('password'),
                ip: $request->ip(),
                userAgent: $request->userAgent(),
            ))
        ) {
            return Redirect::route('user.home');
        }

        return Redirect::route('auth.register');
    }
}
