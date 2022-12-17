<?php

namespace App\Domains\Core\Support;

use App\Domains\Core\Models\Setting;
use Illuminate\Database\Eloquent\Collection;

class Settings
{
    public function __construct(
        private readonly Collection $settingsModels
    ) {
    }

    public function get(string $key): ?Setting
    {
        return $this->settingsModels->first(
            fn (Setting $setting) => $setting->getAttribute('key') === $key
        );
    }
}
