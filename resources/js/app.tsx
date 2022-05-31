import React from 'react'
import { createRoot } from 'react-dom/client'
import { createInertiaApp, SetupOptions } from '@inertiajs/inertia-react'
import { SharedProps } from './SharedProps'

createInertiaApp({
    resolve: name => import(`./pages/${name}`),
    setup({ el, App, props }: SetupOptions<HTMLElement, SharedProps>) {
        const root = createRoot(el);

        root.render(<App {...props} />);
    },
});
