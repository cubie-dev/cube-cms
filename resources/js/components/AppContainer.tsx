import { FC, ReactElement } from 'react';
import { IntlProvider } from 'react-intl';
import { SetupOptions } from '@inertiajs/inertia-react';
import { SharedProps } from '../SharedProps';

export interface AppContainerProps {
    appElement: ReactElement;
    appProps: SetupOptions<HTMLElement, SharedProps>['props']
}

export const AppContainer: FC<AppContainerProps> = ({
    appElement,
    appProps
}) => {
    return (
        <IntlProvider
            locale={appProps.initialPage.props.locale}
            messages={appProps.initialPage.props.localeMessages}
            textComponent="span"
        >
            {appElement}
        </IntlProvider>
    );
}
