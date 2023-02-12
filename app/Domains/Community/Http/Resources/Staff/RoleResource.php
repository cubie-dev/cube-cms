<?php

declare(strict_types=1);

namespace App\Domains\Community\Http\Resources\Staff;

use App\Domains\Auth\Models\Role;
use App\Domains\User\Http\Resources\UserResource;
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
            'users' => $this->whenLoaded(
                'users',
                fn () => UserResource::collection($this->resource->users)
            )
        ];
    }
}
