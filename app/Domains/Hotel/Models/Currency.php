<?php

namespace App\Domains\Hotel\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Support\Facades\Storage;

/**
 * @property-read CurrencyType $type
 */
class Currency extends Model
{
    protected $table = 'users_currency';

    protected $fillable = [
        'user_id',
        'type',
        'amount'
    ];

    public function getId(): int
    {
        return $this->id;
    }

    public function getUserId(): int
    {
        return $this->user_id;
    }

    public function getTypeId(): int
    {
        return $this->type;
    }

    public function getAmount(): string
    {
        return $this->amount;
    }

    /**
     * @return HasOne<CurrencyType>
     */
    public function type(): HasOne
    {
        return $this->hasOne(CurrencyType::class, 'id', 'type');
    }

    public function getIconUrl(): string
    {
        return Storage::disk('currencies')->url($this->getTypeId() . '.png');
    }
}
