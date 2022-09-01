import { useIntl } from 'react-intl';
import { useMemo } from 'react';

export const useTitle = (titleKey?: string) => {
    const intl = useIntl();

    return useMemo<string>(() => {
        return `${intl.formatMessage({ id: 'hotel_name'})}: ${intl.formatMessage({ id: titleKey})}`;
    }, [titleKey]);
};
