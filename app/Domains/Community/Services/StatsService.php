<?php

namespace App\Domains\Community\Services;

use App\Domains\Community\Dtos\StatsData;
use App\Domains\Community\Dtos\StatsTopUserData;
use App\Domains\User\Models\User;
use App\Domains\User\Repositories\UserRepository;
use Carbon\CarbonInterval;

class StatsService
{
    public function __construct(
        private readonly UserRepository $userRepository
    ) {
    }

    public function getStats(): StatsData
    {
        $topDiamonds = $this->userRepository->getUsersWithMostDiamonds(limit: 5);
        $topDuckets = $this->userRepository->getUsersWithMostDuckets(limit: 5);
        $topCredits = $this->userRepository->getUsersWithMostCredits(limit: 5);
        $topRespect = $this->userRepository->getUsersWithMostRespectReceived(limit: 5);
        $topRooms = $this->userRepository->getUsersWithMostRooms(limit: 5);
        $topOnline = $this->userRepository->getUsersWithMostOnline(limit: 5);

        return new StatsData([
            'diamonds' => $topDiamonds->map(fn (User $user) => new StatsTopUserData(
                user: $user,
                amount: $user->getAttribute('amount')
            )),
            'duckets' => $topDuckets->map(fn (User $user) => new StatsTopUserData(
                user: $user,
                amount: $user->getAttribute('amount')
            )),
            'credits' => $topCredits->map(fn (User $user) => new StatsTopUserData(
                user: $user,
                amount: $user->getCredits()
            )),
            'respect_received' => $topRespect->map(fn (User $user) => new StatsTopUserData(
                user: $user,
                amount: $user->getAttribute('respects_received')
            )),
            'rooms' => $topRooms->map(fn (User $user) => new StatsTopUserData(
                user: $user,
                amount: $user->getAttribute('room_count')
            )),
            'online' => $topOnline->map(fn (User $user) => new StatsTopUserData(
                user: $user,
                amount: $this->parseTopOnlineTime($user->getAttribute('online_time'))
            )),
        ]);
    }

    private function parseTopOnlineTime(int $onlineSeconds): string
    {
        $interval = CarbonInterval::seconds($onlineSeconds)->cascade();

        return match (true) {
            $interval->years >= 1 => CarbonInterval::years($interval->years)->addMonths($interval->months)->forHumans(),
            $interval->months >= 1 => CarbonInterval::months($interval->months)->addDays($interval->days)->forHumans(),
            $interval->dayz >= 1 => CarbonInterval::days($interval->days)->addHours($interval->hours)->forHumans(),
            default => CarbonInterval::hours($interval->hours)->addMinutes($interval->minutes)->forHumans(),
        };
    }
}
