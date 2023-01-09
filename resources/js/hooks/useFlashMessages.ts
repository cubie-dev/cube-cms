import { usePage } from '@inertiajs/inertia-react';
import { Page } from '@inertiajs/inertia';
import { SharedProps } from '../SharedProps';

export const useFlashMessages = (target: string|undefined = undefined) => {
    const { props: { flash: { messages } } } = usePage<Page<SharedProps>>();

    if (!target) {
        return messages;
    }

    return messages.filter((message) => message.target === target);
};
