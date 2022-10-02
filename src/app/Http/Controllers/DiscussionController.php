<?php declare(strict_types=1);

namespace App\Http\Controllers;

use App\Http\Resources\UserResource;
use Diglactic\Breadcrumbs\Breadcrumbs;

class DiscussionController extends Controller
{
    public function showDiscussion(string $id)
    {
        return inertia(
            component: 'community/Discussion',
            props: [
                'breadcrumbs' => fn () => Breadcrumbs::generate('auth.login'),
                'newestUsers' => UserResource::collection($this->userRepository->getLastUsers()),
            ]
        );
    }
}
