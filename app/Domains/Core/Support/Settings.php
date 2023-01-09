<?php // phpcs:disable PSR1.Files.SideEffects

declare(strict_types=1);

namespace App\Domains\Core\Support;

use App\Domains\Core\Models\Setting;
use Illuminate\Database\Eloquent\Collection;

readonly class Settings
{
    /**
     * @param Collection<Setting> $settingsModels
     */
    public function __construct(
        private Collection $settingsModels
    ) {
    }

    public function get(string $key): ?Setting
    {
        return $this->settingsModels->first(
            fn (Setting $setting) => $setting->getAttribute('key') === $key
        );
    }
}
