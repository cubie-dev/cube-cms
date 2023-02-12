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
    }, {
        path: '/community',
        text: intl.formatMessage({ id: 'community.title' }),
        icon: 'newspaper',
        color: 'orange',
        children: [{
            path: '/community/stats',
            text: intl.formatMessage({ id: 'community.stats.title' })
        }, {
            path: '/community/staff',
            text: intl.formatMessage({ id: 'community.staff.title' })
        }]
    }], [user?.data.username]);
};
