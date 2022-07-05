<?php

namespace App\Http\Controllers;

use App\Http\Requests\Auth\LoginRequest;
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
        return inertia('auth/Login', [
            'breadcrumbs' => fn () => Breadcrumbs::generate('auth.login'),
            'newestUsers' => UserResource::collection($this->userRepository->getLastUsers(3)),
        ]);
    }

    public function postLogin(LoginRequest $request): RedirectResponse
    {
        if ($this->authService->login($request->get('username'), $request->get('password'))) {
            return Redirect::route('user.home');
        }

        return Redirect::route('auth.login');
    }
}
