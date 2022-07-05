<?php

namespace App\Exceptions\Auth;

use App\Exceptions\MessageTarget;
use App\Exceptions\MessageType;
use App\Exceptions\Traits\Flashable;
use Symfony\Component\HttpKernel\Exception\UnprocessableEntityHttpException;

class IncorrectCredentialsException extends UnprocessableEntityHttpException
{
    use Flashable;

    public function __construct()
    {
        parent::__construct(trans('auth.incorrect_credentials'));
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
