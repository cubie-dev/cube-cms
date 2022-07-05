<?php

namespace App\Services;

use App\Exceptions\Auth\BannedException;
use App\Exceptions\Auth\IncorrectCredentialsException;
use App\Models\User;
use Symfony\Component\HttpKernel\Exception\UnprocessableEntityHttpException;

class AuthService
{
    public function login(string $username, string $password): bool
    {
        if (auth()->once(compact('username', 'password'))) {
            /** @var User $user */
            $user = auth()->user();

            if ($user->isBanned()) {
                (new BannedException($user->ban))->flash();
            }

            auth()->login($user);

            return true;
        }

        (new IncorrectCredentialsException())->flash();

        return false;
    }
}
