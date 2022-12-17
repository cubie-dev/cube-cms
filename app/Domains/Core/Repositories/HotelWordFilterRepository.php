<?php

namespace App\Domains\Core\Repositories;

use App\Domains\Core\Models\BadWord;
use App\Repositories\Repository;
use Illuminate\Database\Eloquent\Builder;

/**
 * @extends Repository<BadWord>
 */
class HotelWordFilterRepository extends Repository
{
    public function getModel(): BadWord|Builder
    {
        return BadWord::query();
    }

    public function containsForbiddenWord(string $text): bool
    {
        return $this->getModel()
            ->whereRaw('INSTR(wordfilter.key, ?)', [$text])
            ->exists();
    }
}
