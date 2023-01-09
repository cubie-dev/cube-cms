<?php

declare(strict_types=1);

if (!function_exists('translations')) {
    /**
     * @return array<string, string>
     */
    function translations(string $locale): array
    {
        $path = implode(DIRECTORY_SEPARATOR, [
            app()->langPath(),
            $locale,
            'frontend.php'
        ]);


        if (file_exists($path)) {
            return include $path;
        }

        return [];
    }
}
