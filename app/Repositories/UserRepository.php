<?php

namespace App\Repositories;

use App\Models\User;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Collection;

class UserRepository extends Repository
{
    public function getModel(): User|Builder
    {
        return User::query();
    }

    public function getLastUsers(int $limit = 3): Collection
    {
        return $this->getModel()
            ->latest()
            ->limit($limit)
            ->get();
    }
}
