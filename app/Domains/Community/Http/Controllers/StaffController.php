<?php

declare(strict_types=1);

namespace App\Domains\Community\Http\Controllers;

use App\Domains\Community\Http\Resources\Staff\RoleResource;
use App\Domains\Community\Http\Resources\Staff\StaffResource;
use App\Domains\Community\Services\RoleService;
use App\Http\Controllers\Controller;
use Diglactic\Breadcrumbs\Breadcrumbs;
use Inertia\Response;

class StaffController extends Controller
{
    public function __construct(
        private readonly RoleService $roleService
    ) {
    }

    public function showStaff(): Response
    {
        return inertia()->render(
            component: 'community/staff/Staff',
            props: [
                'staff' => RoleResource::collection($this->roleService->getStaffMembers()),
                'breadcrumbs' => fn () => Breadcrumbs::generate('community.staff'),
            ]
        );
    }
}
