<?php

declare(strict_types=1);

namespace App\Domains\User\Http\Controllers;

use App\Http\Controllers\Controller;
use Diglactic\Breadcrumbs\Breadcrumbs;
use Inertia\Inertia;
use Inertia\Response;

class UserController extends Controller
{
    public function showMe(): Response
    {
        return Inertia::render(
            component: 'user/Me',
            props: [
                'breadcrumbs' => fn () => Breadcrumbs::generate('user.me')
            ]
        );
    }
}
