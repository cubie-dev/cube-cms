<?php

namespace App\Repositories;

use App\Models\BadWord;
use Illuminate\Database\Eloquent\Builder;

class HotelWordFilterRepository extends Repository
{
    public function getModel(): BadWord|Builder
    {
        return BadWord::query();
    }

    public function containsForbiddenWord(string $word): bool
    {
        return $this->getModel()
            ->whereRaw('INSTR(wordfilter.key, ?)', [$word])
            ->exists();
    }
}
