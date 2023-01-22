<?php  // phpcs:disable PSR1.Files.SideEffects

namespace App\Domains\Community\Dtos;

use App\Domains\User\Models\User;

readonly class CreateCommentData
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
