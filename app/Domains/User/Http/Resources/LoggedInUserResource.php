<?php

declare(strict_types=1);

namespace App\Domains\User\Http\Resources;

use App\Domains\Auth\Http\Resources\RoleResource;
use App\Domains\Hotel\Http\Resources\CurrencyResource;
use App\Domains\User\Models\User;
use Illuminate\Http\Resources\Json\JsonResource;

/**
 * @property User $resource
 */
class LoggedInUserResource extends JsonResource
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
            'look' => $this->resource->getLook(),
            'online' => $this->resource->isOnline(),
            'credits' => $this->resource->getCredits(),
            'role' => $this->whenLoaded('role', fn () => new RoleResource($this->resource->role)),
            'active_currencies' => $this->whenLoaded('activeCurrencies', function () {
                return CurrencyResource::collection($this->resource->activeCurrencies);
            }),
        ];
    }
}
