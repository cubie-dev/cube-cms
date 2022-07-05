<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

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
 * @property int $pixels
 * @property int $points
 * @property string $online
 * @property string|null $auth_ticket
 * @property string $ip_register
 * @property string $ip_current Have your CMS update this IP. If you do not do this IP banning won't work!
 * @property string $machine_id
 * @property int $home_room
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property \Illuminate\Support\Carbon|null $deleted_at
 * @property-read \App\Models\Ban $ban
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
        'pixels',
        'points',
        'online',
        'auth_ticket',
        'ip_register',
        'ip_current',
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

    public function ban(): HasOne
    {
        return $this->hasOne(Ban::class, 'user_id', 'id');
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
}
