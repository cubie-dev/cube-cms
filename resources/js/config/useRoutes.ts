import { useMemo } from 'react';
import { useIntl } from 'react-intl';
import { Route } from './Route';
import { useAuth } from '../hooks/useAuth';

export const useRoutes = (): Route[] => {
    const { user } = useAuth();
    const intl = useIntl();

    return useMemo<Route[]>(() => [{
        path: '/me',
        text: user?.data.username || '',
        icon: 'duck',
        color: 'blue',
        children: [{
            path: '/logout',
            text: intl.formatMessage({ id: 'navigation.logout' })
        }]
    }], [user?.data.username]);
};
