<?php

declare(strict_types=1);

namespace App\Domains\Core\Repositories;

use App\Domains\Core\Models\Setting;
use App\Domains\Core\Support\Settings;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Spatie\QueryBuilder\QueryBuilder;

/**
 * @extends Repository<Setting>
 */
class SettingsRepository extends Repository
{
    public function makeQueryBuilder(): QueryBuilder
    {
        return QueryBuilder::for(Setting::class);
    }

    public function getSetting(string $key): ?Setting
    {
        return $this->getQueryBuilder()
            ->where('key', $key)
            ->first();
    }

    /**
     * @param array<string> $settings
     */
    public function getSettings(array $settings): Settings
    {
        return new Settings(
            $this->getQueryBuilder()
                ->whereIn('key', $settings)
                ->get()
        );
    }
}
