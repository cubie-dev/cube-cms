<?php

namespace App\Domains\Core\Repositories;

use App\Domains\Core\Models\Setting;
use App\Domains\Core\Support\Settings;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;

/**
 * @extends Repository<Setting>
 */
class SettingsRepository extends Repository
{
    public function getModel(): Model|Builder
    {
        return Setting::query();
    }

    public function getSetting(string $key): ?Setting
    {
        return $this->getModel()
            ->where('key', $key)
            ->first();
    }

    /**
     * @param array<string> $settings
     */
    public function getSettings(array $settings): Settings
    {
        return new Settings(
            $this->getModel()
                ->whereIn('key', $settings)
                ->get()
        );
    }
}
