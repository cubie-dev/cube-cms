<?php

declare(strict_types=1);

use App\Domains\Core\Services\TranslationService;

if (!function_exists('translations')) {
    /**
     * @return array<string, string>
     */
    function translations(string $locale): array
    {
        return app(TranslationService::class)->getTranslationsForLocale($locale);
    }

    function web_trans(string $locale, string $key): string
    {
        return translations($locale)[$key] ?? $key;
    }
}
