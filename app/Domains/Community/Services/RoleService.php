<?php

declare(strict_types=1);

namespace App\Domains\Community\Services;

use App\Domains\Auth\Models\Role;
use App\Domains\Community\Dtos\RoleData;
use App\Domains\Community\Repositories\RoleRepository;
use App\Domains\Core\Repositories\QueryBuilderOptions;
use Illuminate\Database\Eloquent\Collection;

class RoleService
{
    public function __construct(
        private readonly RoleRepository $roleRepository
    ) {
    }

    /**
     * @return Collection<Role>
     */
    public function getStaffMembers(): Collection
    {
        return $this->roleRepository
            ->withBuilderOptions(function (QueryBuilderOptions $builder) {
                return $builder->withRelations('users.activeBadges');
            })
            ->getRolesAboveLevel(level: 3); // @TODO make this configurable
    }
}
