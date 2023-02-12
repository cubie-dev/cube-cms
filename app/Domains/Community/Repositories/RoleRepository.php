<?php

declare(strict_types=1);

namespace App\Domains\Community\Repositories;

use App\Domains\Auth\Models\Role;
use App\Domains\Core\Repositories\Repository;
use Illuminate\Database\Eloquent\Collection;
use Spatie\QueryBuilder\QueryBuilder;

/**
 * @extends Repository<Role>
 */
class RoleRepository extends Repository
{

    protected function makeQueryBuilder(): QueryBuilder
    {
        return QueryBuilder::for(Role::class);
    }

    /**
     * @param int $level
     * @return Collection<Role>
     */
    public function getRolesAboveLevel(int $level): Collection
    {
        return $this->getQueryBuilder()
            ->where('level', '>=', $level)
            ->orderByDesc('level')
            ->get();
    }
}
