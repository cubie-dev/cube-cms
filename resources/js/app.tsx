import { createRoot } from 'react-dom/client';
import { ReactNode } from 'react';
import { createInertiaApp } from '@inertiajs/react';
import type { SetupOptions } from '@inertiajs/react/types/createInertiaApp';
import { resolvePageComponent } from 'laravel-vite-plugin/inertia-helpers';
import { AppContainer } from './components/AppContainer';

import '../style/app.scss';

createInertiaApp({
    resolve: (name: string) => resolvePageComponent(
        `./pages/${name}.tsx`,
        import.meta.glob<true, string, Promise<ReactNode>>('./pages/**/*.tsx')
    ),
    setup({ el, App, props }: SetupOptions<any, any>) {
        const root = createRoot(el);

        root.render(
            <AppContainer
                // eslint-disable-next-line react/jsx-props-no-spreading
                appElement={<App {...props} />}
                appProps={props}
            />
        );
    },
});
