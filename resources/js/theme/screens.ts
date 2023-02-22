export type Screen = 'sm' | 'md' | 'lg' | 'xl';

export type Screens = Record<Screen, string>;

export const screens: Screens = {
    sm: '',
    md: '720px',
    lg: '960px',
    xl: '1140px'
};

export const screen = (s: keyof Screens): string => {
    return `@media (min-width: ${screens[s]})`;
};
