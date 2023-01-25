<?php // phpcs:disable PSR1.Files.SideEffects

namespace App\Domains\Community\Dtos;

use App\Domains\User\Models\User;

readonly class StatsTopUserData
{
    public function __construct(
        private User $user,
        private int $amount,
    ) {
    }

    public function getUser(): User
    {
        return $this->user;
    }

    public function getAmount(): int
    {
        return $this->amount;
    }
}
