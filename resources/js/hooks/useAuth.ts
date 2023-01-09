import { usePage } from '@inertiajs/inertia-react';
import { Page } from '@inertiajs/inertia';
import { SharedProps } from '../SharedProps';

export interface IAuth {
    user?: SharedProps['user'];
    loggedIn: boolean;
}

export const useAuth = (): IAuth => {
    const page = usePage<Page<SharedProps>>();

    return {
        user: page.props.user,
        loggedIn: !!page.props.user
    };
};
