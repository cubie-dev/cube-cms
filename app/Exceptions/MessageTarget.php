<?php

namespace App\Exceptions;

enum MessageTarget: string
{
    case Auth = 'auth';
    case Global = 'global';
}
