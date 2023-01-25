<?php

declare(strict_types=1);

namespace App\Domains\User\Repositories;

use App\Domains\Community\Enums\Currency;
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

    public function loadRelationsForAuth(User $user): User
    {
        $user->loadMissing([
            'activeCurrencies',
            'role'
        ]);

        return $user;
    }

    public function refreshRelations(User $user, array $relations): User
    {
        $user->load($relations);

        return $user;
    }

    /**
     * @param int $limit
     * @param bool $excludeStaff
     * @return Collection<int, User>
     */
    public function getUsersWithMostDiamonds(int $limit = 3, bool $excludeStaff = true): Collection
    {
        return $this->getQueryBuilder()
            ->select('users.*', 'users_currency.amount')
            ->join('users_currency', 'users.id', '=', 'users_currency.user_id')
            ->join('currency_types', 'users_currency.type', '=', 'currency_types.id')
            ->where('currency_types.name', Currency::DIAMONDS)
            ->when($excludeStaff, function (Builder $builder) {
                return $builder->where('users.rank', '<', 4);
            })
            ->orderByDesc('users_currency.amount')
            ->limit($limit)
            ->get();
    }

    public function getUsersWithMostCredits(int $limit = 3, bool $excludeStaff = true): Collection
    {
        return $this->getQueryBuilder()
            ->orderBy('credits', 'DESC')
            ->when($excludeStaff, function (Builder $builder) {
                return $builder->where('users.rank', '<', 4);
            })
            ->limit($limit)
            ->get();
    }

    public function getUsersWithMostDuckets(int $limit = 3, bool $excludeStaff = true): Collection
    {
        return $this->getQueryBuilder()
            ->select('users.*', 'users_currency.amount')
            ->join('users_currency', 'users.id', '=', 'users_currency.user_id')
            ->join('currency_types', 'users_currency.type', '=', 'currency_types.id')
            ->where('currency_types.name', Currency::DUCKETS)
            ->when($excludeStaff, function (Builder $builder) {
                return $builder->where('users.rank', '<', 4);
            })
            ->orderByDesc('users_currency.amount')
            ->limit($limit)
            ->get();
    }

    public function getUsersWithMostRespectReceived(int $limit = 3): Collection
    {
        return $this->getQueryBuilder()
            ->join('users_settings', 'users.id', '=', 'users_settings.user_id')
            ->select('users.*', 'users_settings.respects_received')
            ->orderByDesc('users_settings.respects_received')
            ->limit($limit)
            ->get();
    }

    public function getUsersWithMostRooms(int $limit = 3): Collection
    {
        return $this->getQueryBuilder()
            ->join('rooms', 'users.id', '=', 'rooms.owner_id')
            ->selectRaw('users.*, COUNT(rooms.id) as room_count')
            ->groupBy('users.id')
            ->orderByDesc('room_count')
            ->limit($limit)
            ->get();
    }

    public function getUsersWithMostOnline(int $limit = 3): Collection
    {
        return $this->getQueryBuilder()
            ->join('users_settings', 'users.id', '=', 'users_settings.user_id')
            ->select('users.*', 'users_settings.online_time')
            ->orderByDesc('users_settings.online_time')
            ->limit($limit)
            ->get();
    }
}
