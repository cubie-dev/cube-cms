<?php

declare(strict_types=1);

namespace App\Domains\Auth\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Ban
 *
 * @property int $id
 * @property int $user_id
 * @property string $ip
 * @property string $machine_id
 * @property int $user_staff_id
 * @property int $timestamp
 * @property int $ban_expire
 * @property string $ban_reason
 * @property string $type Account is the entry in the users table banned.
 * IP is any client that connects with that IP.
 * Machine is the computer that logged in.
 * Super is all of the above.
 * @property int $cfh_topic
 */
class Ban extends Model
{
    protected $table = 'bans';
    protected $fillable = [
        'user_id',
        'ip',
        'machine_id',
        'user_staff_id',
        'timestamp',
        'ban_expire',
        'ban_reason',
        'type',
        'cfh_topic',
    ];

    public function getReason(): string
    {
        return $this->ban_reason;
    }

    public function getExpiration(): Carbon
    {
        return Carbon::createFromTimestamp($this->ban_expire);
    }
}
