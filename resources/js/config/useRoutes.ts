import { Route } from './Route';
import { useAuth } from '../hooks/useAuth';
import { useMemo } from 'react';
import { useIntl } from 'react-intl';

export const useRoutes = (): Route[] => {
    const { user } = useAuth();
    const intl = useIntl();

    return useMemo<Route[]>(() => {
        return [{
            path: '/me',
            text: user?.data.username || '',
            icon: 'duck',
            color: 'blue',
            children: [{
                path: '/logout',
                text: intl.formatMessage({ id: 'navigation.logout' })
            }]
        }];
    }, [user?.data.username])
}
