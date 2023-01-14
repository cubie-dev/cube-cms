<?php

namespace App\Domains\Auth\Models;

use Illuminate\Database\Eloquent\Model;

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
}
