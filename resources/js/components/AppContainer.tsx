import { FC, Fragment, ReactElement } from 'react';
import { IntlProvider } from 'react-intl';
import type { SetupOptions } from '@inertiajs/react/types/createInertiaApp';
import { SharedProps } from '../SharedProps';

export interface AppContainerProps {
    appElement: ReactElement;
    appProps: SetupOptions<HTMLElement, SharedProps>['props'];
}

export const AppContainer: FC<AppContainerProps> = ({
    appElement,
    appProps
}) => (
    <IntlProvider
        locale={appProps.initialPage.props.locale}
        messages={appProps.initialPage.props.localeMessages}
        textComponent={Fragment}
    >
        {appElement}
    </IntlProvider>
);
