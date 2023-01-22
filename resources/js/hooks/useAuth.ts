import { usePage } from '@inertiajs/react';
import type { Page } from '@inertiajs/core';
import { SharedProps } from '../SharedProps';

export interface IAuth {
    user?: SharedProps['user'];
    loggedIn: boolean;
}

export const useAuth = (): IAuth => {
    const page = usePage() as Page<SharedProps>;

    return {
        user: page.props.user,
        loggedIn: !!page.props.user
    };
};
