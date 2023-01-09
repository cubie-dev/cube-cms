<?php

declare(strict_types=1);

namespace App\Domains\Hotel\Http\Resources;

use App\Domains\Hotel\Models\Currency;
use Illuminate\Http\Resources\Json\JsonResource;

/**
 * @property Currency $resource
 */
class CurrencyResource extends JsonResource
{
    /**
     * @param $request
     * @return array<string, mixed>
     */
    public function toArray($request): array
    {
        return [
            'amount' => $this->resource->getAmount(),
            'type' => $this->whenLoaded('type', function () {
                return new CurrencyTypeResource($this->resource->getTypeId());
            }),
            'icon_url' => $this->resource->getIconUrl(),
        ];
    }
}
