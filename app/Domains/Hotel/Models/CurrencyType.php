<?php

namespace App\Domains\Hotel\Models;

use Illuminate\Database\Eloquent\Model;

class CurrencyType extends Model
{
    protected $table = 'currency_types';
    protected $fillable = [
        'name',
        'active'
    ];
    protected $casts = [
        'active' => 'boolean'
    ];

    public function getId(): int
    {
        return $this->id;
    }

    public function getName(): string
    {
        return $this->name;
    }

    public function isActive(): bool
    {
        return $this->active;
    }
}
