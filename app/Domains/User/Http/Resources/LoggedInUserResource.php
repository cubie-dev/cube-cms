<?php

namespace App\Domains\User\Http\Resources;

use App\Domains\Hotel\Http\Resources\CurrencyResource;
use App\Domains\User\Models\User;
use Illuminate\Http\Resources\Json\JsonResource;

/**
 * @property User $resource
 */
class LoggedInUserResource extends JsonResource
{
    public function toArray($request): array
    {
        return [
            'id' => $this->resource->getId(),
            'username' => $this->resource->getUsername(),
            'motto' => $this->resource->getMotto(),
            'look' => $this->resource->getLook(),
            'online' => $this->resource->isOnline(),
            'credits' => $this->resource->getCredits(),
            'active_currencies' => $this->whenLoaded('activeCurrencies', function () {
                return CurrencyResource::collection($this->resource->activeCurrencies);
            }),
        ];
    }
}
