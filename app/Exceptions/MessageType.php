<?php

declare(strict_types=1);

namespace App\Exceptions;

enum MessageType: string
{
    case Danger = 'danger';
    case Info = 'info';
    case Success = 'success';
    case Warning = 'warning';
}
