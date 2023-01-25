<?php

namespace App\Domains\Community\Http\Resources\Stats;

use App\Domains\Community\Dtos\StatsTopUserData;
use Illuminate\Http\Resources\Json\JsonResource;

/**
 * @property-read StatsTopUserData $resource
 */
class StatsUserResource extends JsonResource
{
    public function toArray($request): array
    {
        return [
            'id' => $this->resource->getUser()->getId(),
            'username' => $this->resource->getUser()->getUsername(),
            'look' => $this->resource->getUser()->getLook(),
            'amount' => $this->resource->getAmount(),
        ];
    }
}
