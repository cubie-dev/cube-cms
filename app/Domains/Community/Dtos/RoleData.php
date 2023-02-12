<?php // phpcs:disable PSR1.Files.SideEffects

declare(strict_types=1);

namespace App\Domains\Community\Dtos;

use App\Domains\User\Models\User;
use Illuminate\Support\Collection;

readonly class RoleData
{
    /**
     * @param int $id
     * @param string $name
     * @param Collection<int, User> $users
     */
    public function __construct(
        private int $id,
        private string $name,
        private Collection $users
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
     * @return Collection<User>
     */
    public function getUsers(): Collection
    {
        return $this->users;
    }
}
