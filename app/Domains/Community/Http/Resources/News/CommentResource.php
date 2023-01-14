<?php

namespace App\Domains\Community\Http\Resources\News;

use App\Domains\Community\Dtos\CommentData;
use App\Domains\User\Http\Resources\UserResource;
use Illuminate\Http\Resources\Json\JsonResource;

/**
 * @property CommentData $resource
 */
class CommentResource extends JsonResource
{
    public function toArray($request): array
    {
        return [
            'id' => $this->resource->getId(),
            'content' => $this->resource->getContent(),
            'user' => new UserResource($this->resource->getUser()),
            'created_at' => $this->resource->getCreatedAt(),
            'updated_at' => $this->resource->getUpdatedAt(),
        ];
    }
}
