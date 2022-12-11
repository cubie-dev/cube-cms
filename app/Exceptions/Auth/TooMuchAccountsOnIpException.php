<?php

namespace App\Exceptions\Auth;

use App\Exceptions\MessageTarget;
use App\Exceptions\MessageType;
use App\Exceptions\Traits\Flashable;
use Symfony\Component\HttpKernel\Exception\AccessDeniedHttpException;

class TooMuchAccountsOnIpException extends AccessDeniedHttpException
{
    use Flashable;

    public function __construct()
    {
        parent::__construct(trans('auth.too_many_accounts_on_ip'));
    }

    public function getType(): MessageType
    {
        return MessageType::Danger;
    }

    public function getTarget(): MessageTarget
    {
        return MessageTarget::Auth;
    }
}