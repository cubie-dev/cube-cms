<?php

declare(strict_types=1);

namespace App\Domains\Community\Services;

use App\Domains\Auth\Models\Role;
use App\Domains\Community\Dtos\StaffData;
use App\Domains\Community\Repositories\RoleRepository;

class RoleService
{
    public function __construct(
        private readonly RoleRepository $roleRepository
    ) {
    }

    public function convertModelToDto(Role $role)
    {
        return new StaffData(
            id: $role->getId(),
            name: $role->getName(),
            users: $role->users
        );
    }

    /**
     * @return StaffData[]
     */
    public function getRoles(int $minimumLevel = 1): array
    {
        $roles = $this->roleRepository
            ->withRelations('users')
            ->getStaffAboveLevel($minimumLevel);

        return $roles->map(fn (Role $role) => $this->convertModelToDto($role))->toArray();
    }
}
