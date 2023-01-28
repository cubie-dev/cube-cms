<?php

declare(strict_types=1);

namespace App\Domains\Community\Http\Controllers;

use App\Domains\Community\Services\RoleService;
use App\Http\Controllers\Controller;
use Diglactic\Breadcrumbs\Breadcrumbs;
use Inertia\Response;

class StaffController extends Controller
{
    public function __construct(
        private readonly RoleService $staffService
    ) {
    }

    public function showStaff(): Response
    {
        return inertia()->render(
            component: 'community/staff/Staff',
            props: [
                'staff' => $this->staffService->getRoles(),
                'breadcrumbs' => fn () => Breadcrumbs::generate('community.staff'),
            ]
        );
    }
}
