import { colors, type Colors } from './colors';
import { screens, type Screens } from './screens';
import { roundings, type Roundings } from './roundings';
import { boxShadows, BoxShadows } from './boxShadows';

export interface Theme {
    colors: Colors;
    screens: Screens;
    roundings: Roundings;
    boxShadows: BoxShadows;
}

export const theme: Theme = {
    colors,
    screens,
    roundings,
    boxShadows
};

export { screen } from './screens';
