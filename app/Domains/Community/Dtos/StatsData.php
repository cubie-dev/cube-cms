<?php // phpcs:disable PSR1.Files.SideEffects

declare(strict_types=1);

namespace App\Domains\Community\Dtos;

readonly class StatsData
{
    /**
     * @param array<string, StatsTopUserData[]> $stats
     */
    public function __construct(
        private array $stats
    ) {
    }

    /**
     * @return array<string, StatsTopUserData[]>
     */
    public function getStats(): array
    {
        return $this->stats;
    }
}
