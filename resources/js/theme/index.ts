import { colors, type Colors } from './colors';
import { screens, type Screens } from './screens';
import { roundings, type Roundings } from './roundings';
import { boxShadows, BoxShadows } from './boxShadows';
import { icons, type Icons } from './icons';
import { images, type Images } from './images';

export interface Theme {
    colors: Colors;
    screens: Screens;
    roundings: Roundings;
    boxShadows: BoxShadows;
    icons: Icons;
    images: Images;
}

export const theme: Theme = {
    colors,
    screens,
    roundings,
    boxShadows,
    icons,
    images
};

export { screen } from './screens';
