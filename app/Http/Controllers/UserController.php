<?php

namespace App\Http\Controllers;

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
            ]);
    }
}
