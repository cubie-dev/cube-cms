<?php

declare(strict_types=1);

namespace App\Domains\Core\Repositories;

use App\Domains\Core\Models\BadWord;
use Illuminate\Database\Eloquent\Builder;
use Spatie\QueryBuilder\QueryBuilder;

/**
 * @extends Repository<BadWord>
 */
class HotelWordFilterRepository extends Repository
{
    public function makeQueryBuilder(): QueryBuilder
    {
        return QueryBuilder::for(BadWord::class);
    }

    public function containsForbiddenWord(string $text): bool
    {
        return $this->getQueryBuilder()
            ->whereRaw('INSTR(wordfilter.key, ?)', [$text])
            ->exists();
    }
}
