<?php

declare(strict_types=1);

namespace App\Domains\User\Models;

use Illuminate\Database\Eloquent\Model;

class Badge extends Model
{
    protected $table = 'users_badges';
    protected $fillable = [
        'user_id',
        'slot_id',
        'badge_code'
    ];

    public function getId(): int
    {
        return $this->id;
    }

    public function getSlotId(): int
    {
        return $this->slot_od;
    }

    public function getBadgeCode(): string
    {
        return $this->badge_code;
    }
}
