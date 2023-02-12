<?php

declare(strict_types=1);

namespace App\Domains\User\Models;

use App\Domains\Auth\Models\Ban;
use App\Domains\Auth\Models\Role;
use App\Domains\Hotel\Models\Currency;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\DatabaseNotificationCollection;
use Illuminate\Notifications\Notifiable;

/**
 * App\Models\User
 *
 * @property-read Ban $ban
 * @property-read Currency[] $currencies
 * @property-read Currency[] $activeCurrencies
 * @property-read Role $role
 * @property-read Collection<int, Badge> $badges
 * @property-read Collection<int, Badge> $activeBadges
 */
class User extends Authenticatable
{
    use Notifiable;
    use SoftDeletes;

    protected $fillable = [
        'username',
        'real_name',
        'password',
        'mail',
        'mail_verified',
        'account_created',
        'last_login',
        'last_online',
        'motto',
        'look',
        'gender',
        'rank',
        'credits',
        'online',
        'auth_ticket',
        'ip_register',
        'ip_current',
        'user_agent_current',
        'user_agent_register'
    ];

    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    /**
     * @return HasOne<Ban>
     */
    public function ban(): HasOne
    {
        return $this->hasOne(Ban::class, 'user_id', 'id');
    }

    /**
     * @return HasMany<Currency>
     */
    public function currencies(): HasMany
    {
        return $this->hasMany(Currency::class, 'user_id', 'id');
    }

    /**
     * @return HasMany<Currency>
     */
    public function activeCurrencies(): HasMany
    {
        return $this
            ->currencies()
            ->withWhereHas('currencyType', function ($query) {
                $query->where('active', true);
            });
    }

    public function role(): HasOne
    {
        return $this->hasOne(Role::class, 'id', 'rank');
    }

    /**
     * @return HasMany<Badge>
     */
    public function badges(): HasMany
    {
        return $this->hasMany(Badge::class, 'user_id', 'id');
    }

    /**
     * @return HasMany<Badge>
     */
    public function activeBadges(): HasMany
    {
        return $this->badges()->where('slot_id', '>', 0);
    }

    public function isBanned(): bool
    {
        return (bool)$this->ban;
    }

    public function getId(): int
    {
        return $this->id;
    }

    public function getUsername(): string
    {
        return $this->username;
    }

    public function getMotto(): ?string
    {
        return $this->motto;
    }

    public function getLook(): string
    {
        return $this->look;
    }

    public function isOnline(): bool
    {
        return $this->online === '1';
    }

    public function setLastLogin(int $timestamp): self
    {
        $this->last_login = $timestamp;

        return $this;
    }

    public function setUserAgentCurrent(string $userAgent): self
    {
        $this->user_agent_current = $userAgent;

        return $this;
    }

    public function setIpCurrent(string $ip): self
    {
        $this->ip_current = $ip;

        return $this;
    }

    public function getCredits(): int
    {
        return $this->credits;
    }
}
