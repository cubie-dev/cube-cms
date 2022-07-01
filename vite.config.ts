import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';
import laravel from 'laravel-vite-plugin';

export default defineConfig({
    plugins: [
        react(),
        laravel([
            'resources/js/app.tsx',
        ]),
    ],
    build: {
        target: 'es2019'
    }
})
