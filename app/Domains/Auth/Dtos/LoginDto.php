<?php

namespace App\Domains\Auth\Dtos;

readonly class LoginDto
{
    public function __construct(
        private string $username,
        private string $password,
        private string $ip,
        private ?string $userAgent = null
    ) {
    }

    public function getUsername(): string
    {
        return $this->username;
    }

    public function getPassword(): string
    {
        return $this->password;
    }

    public function getIp(): string
    {
        return $this->ip;
    }

    public function getUserAgent(): ?string
    {
        return $this->userAgent;
    }
}
