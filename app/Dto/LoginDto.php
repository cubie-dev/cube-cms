<?php

namespace App\Dto;

class LoginDto
{
    public function __construct(
        private readonly string $username,
        private readonly string $password,
        private readonly string $ip,
        private readonly ?string $userAgent = null
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
