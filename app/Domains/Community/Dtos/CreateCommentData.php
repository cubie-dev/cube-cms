<?php

namespace App\Domains\Community\Dtos;

use App\Domains\User\Models\User;
use Spatie\LaravelData\Data;

class CreateCommentData extends Data
{
    public function __construct(
        private string $content,
        private User $user
    ) {
    }

    public function getContent(): string
    {
        return $this->content;
    }

    public function getUser(): User
    {
        return $this->user;
    }
}
