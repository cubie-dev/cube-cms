<?php

namespace App\Repositories;

use App\Models\Setting;
use App\Support\Settings;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

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

    public function getSettings(array $settings): Settings
    {
        return new Settings(
            $this->getModel()
                ->whereIn('key', $settings)
                ->get()
        );
    }
}
