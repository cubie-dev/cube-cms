<?php

namespace App\Domains\Community\Dtos;

use App\Domains\User\Models\User;
use Carbon\Carbon;
use Spatie\LaravelData\Data;

class ArticleData extends Data
{
    public function __construct(
        private readonly int $id,
        private readonly string $slug,
        private readonly string $title,
        private readonly string $description,
        private readonly string $content,
        private readonly string $image,
        private readonly string $imagePath,
        private readonly string $color,
        private readonly string $textColor,
        private readonly User $user,
        private readonly Carbon $createdAt,
        private readonly Carbon $updatedAt,
    ) {}

    public function getId(): int
    {
        return $this->id;
    }

    public function getSlug(): string
    {
        return $this->slug;
    }

    public function getTitle(): string
    {
        return $this->title;
    }

    public function getDescription(): string
    {
        return $this->description;
    }

    public function getContent(): string
    {
        return $this->content;
    }

    public function getImage(): string
    {
        return $this->image;
    }

    public function getImagePath(): string
    {
        return $this->imagePath;
    }

    public function getColor(): string
    {
        return $this->color;
    }

    public function getTextColor(): string
    {
        return $this->textColor;
    }

    public function getUser(): User
    {
        return $this->user;
    }

    public function getCreatedAt(): Carbon
    {
        return $this->createdAt;
    }

    public function getUpdatedAt(): Carbon
    {
        return $this->updatedAt;
    }
}
