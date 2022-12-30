<?php

namespace App\Domains\Community\Http\Resources\News;

use App\Domains\Community\Dtos\ArticleData;
use Illuminate\Http\Resources\Json\JsonResource;

/**
 * @property ArticleData $resource
 */
class ArticleResource extends JsonResource
{
    public function toArray($request): array
    {
        return [
            'id' => $this->resource->getId(),
            'slug' => $this->resource->getSlug(),
            'title' => $this->resource->getTitle(),
            'description' => $this->resource->getDescription(),
            'content' => $this->resource->getContent(),
            'image' => $this->resource->getImage(),
            'image_path' => $this->resource->getImagePath(),
            'color' => $this->resource->getColor(),
            'text_color' => $this->resource->getTextColor(),
            'user' => new AuthorResource($this->resource->getUser()),
            'updated_at' => $this->resource->getUpdatedAt()->toIso8601String(),
            'created_at' => $this->resource->getCreatedAt()->toIso8601String(),
        ];
    }
}
