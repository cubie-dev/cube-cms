import { usePage } from '@inertiajs/react';
import type { Page } from '@inertiajs/core';
import { SharedProps } from '../SharedProps';

export const useFlashMessages = (target: string|undefined = undefined) => {
    const { props: { flash: { messages } } } = usePage() as Page<SharedProps>;

    if (!target) {
        return messages;
    }

    return messages.filter((message) => message.target === target);
};
