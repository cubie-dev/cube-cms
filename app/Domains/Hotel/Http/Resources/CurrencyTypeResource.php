<?php

declare(strict_types=1);

namespace App\Domains\Hotel\Http\Resources;

use App\Domains\Hotel\Models\CurrencyType;
use Illuminate\Http\Resources\Json\JsonResource;

/**
 * @property CurrencyType $resource
 */
class CurrencyTypeResource extends JsonResource
{
    /**
     * @param $request
     * @return array<string, mixed>
     */
    public function toArray($request): array
    {
        return [
            'id' => $this->resource->getId(),
            'name' => $this->resource->getName(),
            'active' => $this->resource->isActive(),
        ];
    }
}
