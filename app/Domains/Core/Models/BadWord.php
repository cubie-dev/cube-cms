<?php

declare(strict_types=1);

namespace App\Domains\Core\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\BadWord
 *
 * @property-read int $id
 * @property-read string $key The word to filter.
 * @property-read string $replacement What the word should be replaced with.
 * @property-read string $hide Wether the whole message that contains this word should be hidden from being displayed.
 * @property-read string $report Wether the message should be reported as auto-report to the moderators.
 * @property-read int $mute Time user gets muted for mentioning this word.
 * @property-read \Illuminate\Support\Carbon|null $created_at
 * @property-read \Illuminate\Support\Carbon|null $updated_at
 */
class BadWord extends Model
{
    protected $table = 'wordfilter';
    protected $fillable = ['key', 'replacement', 'hide', 'report', 'mute'];
}
