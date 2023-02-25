import { colors, type Colors } from './colors';
import { screens, type Screens } from './screens';
import { roundings, type Roundings } from './roundings';
import { boxShadows, BoxShadows } from './boxShadows';
import { icons, type Icons } from './icons';

export interface Theme {
    colors: Colors;
    screens: Screens;
    roundings: Roundings;
    boxShadows: BoxShadows;
    icons: Icons;
}

export const theme: Theme = {
    colors,
    screens,
    roundings,
    boxShadows,
    icons
};

export { screen } from './screens';
