<?php

declare(strict_types=1);

namespace App\Domains\User\Http\Resources;

use App\Domains\Auth\Http\Resources\RoleResource;
use App\Domains\User\Models\User;
use Illuminate\Http\Resources\Json\JsonResource;

/**
 * @property-read User $resource
 */
class UserResource extends JsonResource
{
    /**
     * @param $request
     * @return array<string, mixed>
     */
    public function toArray($request): array
    {
        return [
            'id' => $this->resource->getId(),
            'username' => $this->resource->getUsername(),
            'motto' => $this->resource->getMotto(),
            'role' => $this->whenLoaded('role', fn () => new RoleResource($this->resource->role)),
            'active_badges' => $this->whenLoaded(
                'activeBadges',
                fn () => BadgeResource::collection($this->resource->activeBadges)
            )
        ];
    }
}
