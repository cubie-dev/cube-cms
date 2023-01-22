<?php  // phpcs:disable PSR1.Files.SideEffects

declare(strict_types=1);

namespace App\Domains\Community\Dtos;

use App\Domains\User\Models\User;
use Carbon\Carbon;

readonly class ArticleData
{
    public function __construct(
        private int $id,
        private string $slug,
        private string $title,
        private string $description,
        private string $content,
        private string $image,
        private string $imagePath,
        private User $user,
        private Carbon $createdAt,
        private Carbon $updatedAt,
        private ?string $color = null,
        private ?string $textColor = null
    ) {
    }

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

    public function getColor(): ?string
    {
        return $this->color;
    }

    public function getTextColor(): ?string
    {
        return $this->textColor;
    }
}
