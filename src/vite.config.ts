import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';
import laravel from 'laravel-vite-plugin';
import path from 'path';

export default defineConfig({
    plugins: [
        react(),
        laravel([
            'resources/js/app.tsx',
        ]),
    ],
    build: {
        target: 'es2019'
    },
    resolve: {
        alias: {
            'ziggy-js' : path.resolve(__dirname, 'vendor/tightenco/ziggy/src/js/index.js'),
        },
    }
})
