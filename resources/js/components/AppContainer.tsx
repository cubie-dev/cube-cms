import { FC, Fragment, ReactElement } from 'react';
import { IntlProvider } from 'react-intl';
import type { SetupOptions } from '@inertiajs/react/types/createInertiaApp';
import { ThemeProvider } from '@emotion/react';
import { SharedProps } from '../SharedProps';
import { theme } from '../theme';

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
        <ThemeProvider theme={theme}>
            {appElement}
        </ThemeProvider>
    </IntlProvider>
);
