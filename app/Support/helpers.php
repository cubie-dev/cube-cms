<?php

use App\Exceptions\MessageTarget;

if (!function_exists('translations')) {
    function translations(string $locale): array {
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
