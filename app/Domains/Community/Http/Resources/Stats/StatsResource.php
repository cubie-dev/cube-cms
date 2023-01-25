<?php

declare(strict_types=1);

namespace App\Domains\Community\Http\Resources\Stats;

use App\Domains\Community\Dtos\StatsData;
use App\Domains\Community\Dtos\StatsTopUserData;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

/**
 * @property StatsData $resource
 */
class StatsResource extends JsonResource
{
    /**
     * @param Request $request
     * @return array<string, StatsTopUserData[]>
     */
    public function toArray($request): array
    {
        $stats = $this->resource->getStats();

        return array_reduce(
            array_keys($stats),
            static function (array $carry, string $key) use ($stats): array {
                $carry[$key] = StatsUserResource::collection($stats[$key]);

                return $carry;
            },
            []
        );
    }
}
