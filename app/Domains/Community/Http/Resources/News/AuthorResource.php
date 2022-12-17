<?php

namespace App\Domains\Community\Http\Resources\News;

use App\Domains\User\Models\User;
use Illuminate\Http\Resources\Json\JsonResource;

/**
 * @property User $resource
 */
class AuthorResource extends JsonResource
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
