<?php

declare(strict_types=1);

namespace App\Domains\Auth\Exceptions;

use App\Exceptions\FlashableException;
use App\Exceptions\MessageTarget;

class IncorrectCredentialsException extends FlashableException
{
    public function __construct()
    {
        parent::__construct(trans('auth.incorrect_credentials'));
    }

    public function getTarget(): MessageTarget
    {
        return MessageTarget::Auth;
    }
}
