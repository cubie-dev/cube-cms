<?php

namespace App\Services;

use App\Dto\LoginDto;
use App\Dto\NewUserDto;
use App\Exceptions\Auth\BannedException;
use App\Exceptions\Auth\CanNotLoginException;
use App\Exceptions\Auth\IncorrectCredentialsException;
use App\Exceptions\Auth\TooMuchAccountsOnIpException;
use App\Models\User;
use App\Repositories\SettingsRepository;
use App\Repositories\UserRepository;
use Illuminate\Support\Facades\Auth;

class AuthService
{
    public function __construct(
        private readonly SettingsRepository $settingsRepository,
        private readonly UserRepository $userRepository
    ) {
    }

    private function isEligibleForLogin(LoginDto $loginDto): bool
    {
        return (bool)$loginDto->getUserAgent();
    }

    public function login(LoginDto $loginDto): bool
    {
        if (!$this->isEligibleForLogin(loginDto: $loginDto)) {
            (new CanNotLoginException())->flash();

            return false;
        }

        if (
            auth()->once([
                'username' => $loginDto->getUsername(),
                'password' => $loginDto->getPassword()
            ])
        ) {
            /** @var User $user */
            $user = auth()->user();

            if ($user->isBanned()) {
                (new BannedException(ban: $user->ban))->flash();
            }

            auth()->login($user);

            $user->setLastLogin(now()->timestamp)
                ->setUserAgentCurrent($loginDto->getUserAgent())
                ->setIpCurrent($loginDto->getIp());

            $this->userRepository->push($user);

            return true;
        }

        (new IncorrectCredentialsException())->flash();

        return false;
    }

    public function register(NewUserDto $newUser): User|bool
    {
        if (!$this->canRegisterMoreAccountsOnIp($newUser->getIp())) {
            (new TooMuchAccountsOnIpException())->flash();

            return false;
        }

        $user = $this->createFreshUser(newUserDto: $newUser);

        $this->afterRegistration(user: $user);

        return $user;
    }

    private function createFreshUser(NewUserDto $newUserDto): User
    {
        $settings = $this->settingsRepository->getSettings([
            'register.starting_credits',
            'register.starting_pixels',
            'register.starting_points',
            'register.starting_rank',
            'register.starting_motto'
        ]);

        $user = new User([
            'username' => $newUserDto->getUsername(),
            'mail' => $newUserDto->getEmail(),
            'password' => bcrypt($newUserDto->getPassword()),
            'ip_register' => $newUserDto->getIp(),
            'ip_current' => $newUserDto->getIp(),
            'account_created' => now()->timestamp,
            'user_agent_register' => $newUserDto->getUserAgent(),
            'user_agent_current' => $newUserDto->getUserAgent(),
            'credits' => $settings->get('register.starting_credits')->getIntValue(),
            'pixels' => $settings->get('register.starting_pixels')->getIntValue(),
            'points' => $settings->get('register.starting_points')->getIntValue(),
            'rank' => $settings->get('register.starting_rank')->getValue(),
            'motto' => $settings->get('register.starting_motto')->getValue()
        ]);

        $this->userRepository->push($user);

        return $user;
    }

    private function afterRegistration(User $user): void
    {
        auth()->login($user);
    }

    public function canRegisterMoreAccountsOnIp(string $ip): bool
    {
        $setting = $this->settingsRepository->getSetting(key: 'max_accounts_per_ip');

        if ($setting === null) {
            return true;
        }

        $userCount = $this->userRepository->getUsersRegisteredOnIp($ip)->count();

        return $userCount < $setting->getIntValue();
    }
}
