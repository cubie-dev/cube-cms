<?php

namespace App\Exceptions\Traits;

use App\Exceptions\MessageTarget;
use App\Exceptions\MessageType;

trait Flashable
{
    /**
     * The severity of the message
     *
     * @since 1.0
     */
    abstract public function getType(): MessageType;

    /**
     * The optional action the user must complete in order to solve the error
     *
     * @since 1.0
     */
    public function getAction(): ?string
    {
        return null;
    }

    /**
     * Returns the target for which the message is
     *
     * @since 1.0
     */
    public function getTarget(): MessageTarget
    {
        return MessageTarget::Global;
    }

    public function flash(): void
    {
        flash_message($this);
    }
}
