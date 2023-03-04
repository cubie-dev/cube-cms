import headerBackground from '../../images/header/background.png';
import headerHotel from '../../images/header/hotel.png';
import breadcrumbsDivider from '../../images/header/breadcrumbs-divider.png';
import platform from '../../images/header/platform.png';

import winterLogo from '../../images/logos/winter-logo.png';

import moving from '../../images/global/moving.png';
import background from '../../images/global/background.png';

export type Images = Record<string, Record<string, any>>;

export const images: Images = {
    header: {
        background: headerBackground,
        hotel: headerHotel,
        breadcrumbsDivider,
        platform
    },
    logos: {
        winter: winterLogo
    },
    global: {
        moving,
        background
    }
};
