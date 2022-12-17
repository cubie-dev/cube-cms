<?php

namespace App\Exceptions;

use RuntimeException;

class FlashableException extends RuntimeException
{
    /**
     * The severity of the message
     *
     * @since 1.0
     */
    public function getType(): MessageType
    {
        return MessageType::Danger;
    }

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
        if (session()->has('messages')) {
            $messages = session()->get('messages');
        } else {
            $messages = [];
        }

        $messages[] = [
            'content' => $this->getMessage(),
            'type' => $this->getType(),
            'action' => $this->getAction(),
            'target' => $this->getTarget(),
        ];

        session()->flash('messages', $messages);
    }
}
