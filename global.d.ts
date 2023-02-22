/// <reference types="vite/client" />
import { Theme as ThemeInterface } from './resources/js/theme';

declare module '@emotion/react' {
    export interface Theme extends ThemeInterface {}
}
