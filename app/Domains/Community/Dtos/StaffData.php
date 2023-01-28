<?php // phpcs:disable PSR1.Files.SideEffects

declare(strict_types=1);

namespace App\Domains\Community\Dtos;

use App\Domains\User\Models\User;

readonly class StaffData
{
    /**
     * @param User[] $users
     */
    public function __construct(
        private int $id,
        private string $name,
        private array $users
    ) {
    }

    public function getId(): int
    {
        return $this->id;
    }

    public function getName(): string
    {
        return $this->name;
    }

    /**
     * @return User[]
     */
    public function getUser(): array
    {
        return $this->users;
    }
}
