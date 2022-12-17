<?php

namespace App\Domains\Auth\Exceptions;

use App\Domains\Auth\Models\Ban;
use App\Exceptions\FlashableException;
use App\Exceptions\MessageTarget;

class BannedException extends FlashableException
{
    public function __construct(
        private readonly Ban $ban
    ) {
        parent::__construct($this->getReason());
    }

    /**
     * The reason why the user is banned
     *
     * @since 1.0
     */
    public function getReason(): string
    {
        return trans('auth.banned.reason', [
            'expires' => $this->ban->getExpiration()->format(
                trans('global.date_time_format')
            ),
            'reason' => $this->ban->getReason()
        ]);
    }

    /**
     * @inheritdoc
     */
    public function getAction(): string
    {
        return trans('auth.banned.action');
    }

    public function getTarget(): MessageTarget
    {
        return MessageTarget::Auth;
    }
}
