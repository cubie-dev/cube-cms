<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * @property-read int $id
 * @property-read string $key
 * @property-read string $value
 * @property-read Carbon $created_at
 * @property-read Carbon $updated_at
 */
class Setting extends Model
{
    protected $table = 'settings';
    protected $fillable = ['key', 'value'];

    public function getValue(): string
    {
        return $this->value;
    }

    public function getIntValue(): int
    {
        return (int) $this->value;
    }

    public function getArrayValue(): array
    {
        return explode(',', $this->value);
    }
}
