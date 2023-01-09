<?php

declare(strict_types=1);

namespace App\Exceptions;

enum MessageTarget: string
{
    case Auth = 'auth';
    case Global = 'global';
}
