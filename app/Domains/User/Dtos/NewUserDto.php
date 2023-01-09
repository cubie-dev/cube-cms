<?php // phpcs:disable PSR1.Files.SideEffects

declare(strict_types=1);

namespace App\Domains\User\Dtos;

readonly class NewUserDto
{
    public function __construct(
        private string $username,
        private string $email,
        private string $password,
        private string $ip,
        private string $userAgent,
    ) {
    }

    public function getUsername(): string
    {
        return $this->username;
    }

    public function getEmail(): string
    {
        return $this->email;
    }

    public function getPassword(): string
    {
        return $this->password;
    }

    public function getIp(): string
    {
        return $this->ip;
    }

    public function getUserAgent(): string
    {
        return $this->userAgent;
    }
}
