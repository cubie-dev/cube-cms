<?php

namespace App\Dto;

class NewUserDto
{
    public function __construct(
        private readonly string $username,
        private readonly string $email,
        private readonly string $password,
        private readonly string $ip,
        private readonly string $userAgent,
    ) {}

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
