<?php

declare(strict_types=1);

namespace App\Domains\User\Repositories;

use App\Domains\Core\Repositories\Repository;
use App\Domains\User\Models\User;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Collection;
use Spatie\QueryBuilder\QueryBuilder;

/**
 * @extends Repository<User>
 */
class UserRepository extends Repository
{
    protected function makeQueryBuilder(): QueryBuilder
    {
        return QueryBuilder::for(User::class);
    }

    /**
     * @param int $limit
     * @return Collection<int, User>
     */
    public function getLastUsers(int $limit = 3): Collection
    {
        return $this->getQueryBuilder()
            ->latest()
            ->limit($limit)
            ->get();
    }

    /**
     * @param string $ip
     * @return Collection<int, User>
     */
    public function getUsersRegisteredOnIp(string $ip): Collection
    {
        return $this->getQueryBuilder()
            ->where('ip_register', $ip)
            ->get();
    }
}
