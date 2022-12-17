<?php

namespace App\Domains\User\Http\Resources;

use App\Domains\User\Models\User;
use Illuminate\Http\Resources\Json\JsonResource;

/**
 * @property-read User $resource
 */
class UserResource extends JsonResource
{
    public function toArray($request): array
    {
        return [
            'id' => $this->resource->getId(),
            'username' => $this->resource->getUsername(),
            'motto' => $this->resource->getMotto()
        ];
    }
}
