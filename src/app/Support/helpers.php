<?php

use App\Exceptions\FlashableException;
use App\Exceptions\MessageTarget;
use App\Exceptions\Traits\Flashable;

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

if (!function_exists('flash_message')) {
    function flash_message(
        string|Exception $message,
        string $type = 'info'
    ): void {
        if (session()->has('messages')) {
            $messages = session()->get('messages');
        } else {
            $messages = [];
        }

        $messages[] = [
            'content' => method_exists($message, 'getMessage') ? $message->getMessage() : $message,
            'type' => method_exists($message, 'getType') ? $message->getType() : $type,
            'action' => method_exists($message, 'getAction') ? $message->getAction() : null,
            'target' => method_exists($message, 'getTarget') ? $message->getTarget() : MessageTarget::Global,
        ];

        session()->flash('messages', $messages);
    }
}
