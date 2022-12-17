<?php

namespace App\Domains\User\Repositories;

use App\Domains\Core\Repositories\Repository;
use App\Domains\User\Models\User;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Collection;

/**
 * @extends Repository<User>
 */
class UserRepository extends Repository
{
    public function getModel(): User|Builder
    {
        return User::query();
    }

    /**
     * @param int $limit
     * @return Collection<int, User>
     */
    public function getLastUsers(int $limit = 3): Collection
    {
        return $this->getModel()
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
        return $this->getModel()
            ->where('ip_register', $ip)
            ->get();
    }
}
