<?php

namespace App\Domains\Auth\Exceptions;

use App\Exceptions\FlashableException;
use App\Exceptions\MessageTarget;

class CanNotLoginException extends FlashableException
{
    public function __construct()
    {
        parent::__construct(trans('auth.can_not_login'));
    }

    public function getTarget(): MessageTarget
    {
        return MessageTarget::Auth;
    }
}
