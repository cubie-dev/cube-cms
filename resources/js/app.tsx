import React from 'react'
import { createRoot } from 'react-dom/client'
import { createInertiaApp, SetupOptions } from '@inertiajs/inertia-react'
import { SharedProps } from './SharedProps'
import { resolvePageComponent } from 'laravel-vite-plugin/inertia-helpers';
import '../style/app.scss';

createInertiaApp({
    resolve: name => resolvePageComponent(`./${name}.tsx`, import.meta.glob('./pages/**/*.tsx')),
    setup({ el, App, props }: SetupOptions<HTMLElement, SharedProps>) {
        const root = createRoot(el);

        root.render(<App {...props} />);
    },
});
