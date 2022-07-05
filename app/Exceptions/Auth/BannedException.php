<?php

namespace App\Exceptions\Auth;

use App\Exceptions\MessageTarget;
use App\Exceptions\MessageType;
use App\Exceptions\Traits\Flashable;
use App\Models\Ban;
use Symfony\Component\HttpKernel\Exception\AccessDeniedHttpException;

final class BannedException extends AccessDeniedHttpException
{
    use Flashable;

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
    public function getType(): MessageType
    {
        return MessageType::Danger;
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
