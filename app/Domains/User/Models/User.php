<?php

namespace App\Domains\User\Models;

use App\Domains\Auth\Models\Ban;
use App\Domains\Hotel\Models\Currency;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

/**
 * App\Models\User
 *
 * @property int $id
 * @property string $username
 * @property string $real_name
 * @property string $password
 * @property string|null $mail
 * @property string $mail_verified
 * @property int $account_created
 * @property int|null $last_login
 * @property int|null $last_online
 * @property string|null $motto
 * @property string $look
 * @property string $gender
 * @property int $rank
 * @property int $credits
 * @property string $online
 * @property string|null $auth_ticket
 * @property string $ip_register
 * @property string $ip_current Have your CMS update this IP. If you do not do this IP banning won't work!
 * @property string $machine_id
 * @property int $home_room
 * @property string $user_agent_register
 * @property string $user_agent_current
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property \Illuminate\Support\Carbon|null $deleted_at
 * @property-read \App\Domains\Auth\Models\Ban $ban
 * @property-read Currency[] $currencies
 * @property-read Currency[] $activeCurrencies
 * @property-read \Illuminate\Notifications\DatabaseNotificationCollection|\Illuminate\Notifications\DatabaseNotification[] $notifications
 * @method static \Illuminate\Database\Eloquent\Builder|User newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|User newQuery()
 * @method static \Illuminate\Database\Query\Builder|User onlyTrashed()
 * @method static \Illuminate\Database\Eloquent\Builder|User query()
 * @method static \Illuminate\Database\Query\Builder|User withTrashed()
 * @method static \Illuminate\Database\Query\Builder|User withoutTrashed()
 * @mixin \Eloquent
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

    public function activeCurrencies(): HasMany
    {
        return $this
            ->currencies()
            ->withWhereHas('type', function ($query) {
                $query->where('active', true);
            });
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

    public function getMotto(): string
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
