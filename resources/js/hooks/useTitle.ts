import { useIntl } from 'react-intl';
import { useMemo } from 'react';

export const useTitle = (titleKey?: string) => {
    const intl = useIntl();

    return useMemo<string>(
        () => `${intl.formatMessage({ id: 'global.hotel_name' })}: ${intl.formatMessage({ id: titleKey })}`,
        [titleKey]
    );
};
