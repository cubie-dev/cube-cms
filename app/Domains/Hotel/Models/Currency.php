<?php

declare(strict_types=1);

namespace App\Domains\Hotel\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Support\Facades\Storage;

/**
 * @property-read int $id
 * @property-read int $user_id
 * @property-read int $amount
 * @property-read int $type
 * @property-read CurrencyType $currencyType
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

    public function getAmount(): int
    {
        return $this->amount;
    }

    /**
     * @return HasOne<CurrencyType>
     */
    public function currencyType(): HasOne
    {
        return $this->hasOne(CurrencyType::class, 'id', 'type');
    }

    public function getIconUrl(): string
    {
        return Storage::disk('currencies')->url($this->getTypeId() . '.png');
    }
}
