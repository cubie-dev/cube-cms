<?php // phpcs:disable PSR1.Files.SideEffects

namespace App\Domains\Core\Services;

use Illuminate\Cache\CacheManager;
use Illuminate\Contracts\Config\Repository;
use Illuminate\Filesystem\Filesystem;
use Symfony\Component\Finder\SplFileInfo;

readonly class TranslationService
{
    public function __construct(
        private CacheManager $cacheManager,
        private Filesystem $filesystem,
        private Repository $config,
    ) {
    }

    private function getTranslationsPath(string $locale): string
    {
        return lang_path(
            $locale . DIRECTORY_SEPARATOR . config('translations.web_translations_namespace')
        );
    }

    private function getCacheKey(string $locale): string
    {
        return $this->config->get('translations.web_translations_namespace') . '-' . $locale;
    }

    public function getTranslationsForLocale(string $locale): array
    {
        if (app()->environment('production')) {
            return $this->cacheManager->rememberForever(
                $this->getCacheKey($locale),
                fn () => $this->loadTranslationsForLocale($locale)
            );
        }

        return $this->loadTranslationsForLocale($locale);
    }

    private function loadTranslationsForLocale(string $locale): array
    {
        return array_reduce(
            $this->filesystem->files($this->getTranslationsPath($locale)),
            static function (array $carry, SplFileInfo $file) {
                foreach (include $file->getPathname() as $key => $value) {
                    $carry[sprintf('%s.%s', $file->getFilenameWithoutExtension(), $key)] = $value;
                }

                return $carry;
            },
            []
        );
    }
}
