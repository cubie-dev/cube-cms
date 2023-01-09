<?php

declare(strict_types=1);

namespace App\Domains\Auth\Http\Controllers;

use App\Domains\Auth\Dtos\LoginDto;
use App\Domains\Auth\Http\Requests\LoginRequest;
use App\Domains\Auth\Http\Requests\RegisterRequest;
use App\Domains\Auth\Services\AuthService;
use App\Domains\User\Dtos\NewUserDto;
use App\Domains\User\Http\Resources\LoggedInUserResource;
use App\Domains\User\Http\Resources\UserResource;
use App\Domains\User\Repositories\UserRepository;
use App\Exceptions\FlashableException;
use App\Http\Controllers\Controller;
use Diglactic\Breadcrumbs\Breadcrumbs;
use Illuminate\Http\RedirectResponse;
use Inertia\Response;
use Inertia\ResponseFactory;

class AuthController extends Controller
{
    public function __construct(
        private readonly AuthService $authService,
        private readonly UserRepository $userRepository
    ) {
    }

    public function showLogin(): Response
    {
        return inertia()->render(
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
            $this->authService->login(
                loginDto: new LoginDto(
                    username: $request->get('username'),
                    password: $request->get('password'),
                    ip: $request->getClientIp(),
                    userAgent: $request->userAgent(),
                )
            );

            return redirect()->route('user.me');
        } catch (FlashableException $e) {
            $e->flash();
        }

        return redirect()->route('auth.login');
    }

    public function showRegister(): Response
    {
        return inertia()->render(
            component: 'auth/Register',
            props: [
                'breadcrumbs' => fn () => Breadcrumbs::generate('auth.register'),
            ]
        );
    }

    public function postRegister(RegisterRequest $request): RedirectResponse
    {
        if (
            $user = $this->authService->register(
                newUser: new NewUserDto(
                    username: $request->get('username'),
                    email: $request->get('email'),
                    password: $request->get('password'),
                    ip: $request->ip(),
                    userAgent: $request->userAgent(),
                )
            )
        ) {
            inertia()->share('user', new LoggedInUserResource($user));

            return redirect()->route('user.me');
        }

        return redirect()->route('auth.register');
    }
}
