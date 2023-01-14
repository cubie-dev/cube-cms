<?php

namespace App\Domains\Auth\Http\Resources;

use App\Domains\Auth\Models\Role;
use Illuminate\Http\Resources\Json\JsonResource;

/**
 * @property-read Role $resource
 */
class RoleResource extends JsonResource
{
    public function toArray($request): array
    {
        return [
            'id' => $this->resource->getId(),
            'name' => $this->resource->getName(),
            'badge' => $this->resource->getBadge(),
        ];
    }
}
