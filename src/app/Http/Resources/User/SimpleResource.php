<?php

namespace App\Http\Resources\User;

use App\Models\User;
use Illuminate\Http\Resources\Json\JsonResource;

/**
 * @property User $resource
 */
class SimpleResource extends JsonResource
{
    public function toArray($request): array
    {
        return [
            'id' => $this->resource->getId(),
            'username' => $this->resource->getUsername(),
            'motto' => $this->resource->getMotto(),
            'look' => $this->resource->getLook(),
            'online' => $this->resource->isOnline()
        ];
    }
}
