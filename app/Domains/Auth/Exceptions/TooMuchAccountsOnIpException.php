<?php

namespace App\Domains\Auth\Exceptions;

use App\Exceptions\FlashableException;
use App\Exceptions\MessageTarget;

class TooMuchAccountsOnIpException extends FlashableException
{
    public function __construct()
    {
        parent::__construct(trans('auth.too_many_accounts_on_ip'));
    }

    public function getTarget(): MessageTarget
    {
        return MessageTarget::Auth;
    }
}
