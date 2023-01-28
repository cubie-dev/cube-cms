<?php

namespace App\Domains\Auth\Models;

use App\Domains\User\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

/**
 * @property-read User[] $users
 */
class Role extends Model
{
    protected $table = 'permissions';

    public function getId(): int
    {
        return $this->id;
    }

    public function getName(): string
    {
        return $this->rank_name;
    }

    public function getBadge(): string
    {
        return $this->badge;
    }

    /**
     * @return HasMany<User>
     */
    public function users(): HasMany
    {
        return $this->hasMany(User::class, 'rank_id', 'id');
    }
}
