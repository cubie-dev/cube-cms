<?php

namespace App\Domains\Community\Http\Resources\News;

use App\Domains\Community\Models\Article;
use HTMLPurifier;
use Illuminate\Http\Resources\Json\JsonResource;

/**
 * @property Article $resource
 */
class ArticleResource extends JsonResource
{
    private HTMLPurifier $purifier;

    public function __construct($resource)
    {
        parent::__construct($resource);

        $this->purifier = app('html.purifier');
    }

    public function toArray($request): array
    {
        return [
            'id' => $this->resource->getId(),
            'slug' => $this->resource->getSlug(),
            'title' => $this->resource->getTitle(),
            'description' => $this->resource->getDescription(),
            'content' => $this->purifier->purify($this->resource->getContent()),
            'image' => $this->resource->getImage(),
            'image_path' => sprintf('/assets/community/promos/%s', $this->resource->getImage()),
            'color' => $this->resource->getColor(),
            'text_color' => $this->resource->getTextColor(),
            'user' => new AuthorResource($this->resource->user),
            'updated_at' => $this->resource->getUpdatedAt(),
            'created_at' => $this->resource->getCreatedAt(),
        ];
    }
}
