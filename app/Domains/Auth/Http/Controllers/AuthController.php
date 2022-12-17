<?php

namespace App\Domains\Auth\Http\Controllers;

use App\Domains\Auth\Dtos\LoginDto;
use App\Domains\Auth\Exceptions\BannedException;
use App\Domains\Auth\Http\Requests\LoginRequest;
use App\Domains\Auth\Http\Requests\RegisterRequest;
use App\Domains\Auth\Services\AuthService;
use App\Domains\User\Dtos\NewUserDto;
use App\Domains\User\Http\Resources\UserResource;
use App\Domains\User\Repositories\UserRepository;
use App\Http\Controllers\Controller;
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
        try {
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
                return Redirect::route('user.me');
            }
        } catch (BannedException $e) {
            $e->flash();
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
            return Redirect::route('user.me');
        }

        return Redirect::route('auth.register');
    }
}
