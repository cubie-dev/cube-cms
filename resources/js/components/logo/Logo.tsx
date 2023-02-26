import { FC } from 'react';
import { Link } from '@inertiajs/react';
import { css } from '@emotion/react';
import { type Theme } from '../../theme';
import { images } from '../../theme/images';

export interface LogoProps {
    variant: keyof Theme['images']['logos']
}

export const Logo: FC<LogoProps> = ({ variant }) => (
    <Link href="/">
        <img
            alt="Logo"
            src={images.logos[variant]}
            css={() => css`
                image-rendering: pixelated;
            `}
        />
    </Link>
);
