<?php

namespace App\Domains\Community\Dtos;

use App\Domains\Community\Models\Article;
use App\Domains\User\Models\User;
use Carbon\Carbon;
use Spatie\LaravelData\Data;

class CommentData extends Data
{
    public function __construct(
        private int $id,
        private string $content,
        private User $user,
        private Article $article,
        private Carbon $createdAt,
        private Carbon $updatedAt
    ) {
    }

    public function getId(): int
    {
        return $this->id;
    }

    public function getContent(): string
    {
        return $this->content;
    }

    public function getUser(): User
    {
        return $this->user;
    }

    public function getArticle(): Article
    {
        return $this->article;
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
