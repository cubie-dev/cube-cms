import { css } from '@emotion/react';
import { FC, PropsWithChildren } from 'react';
import platformImage from '../../../images/header/platform.png';

export const UserInfoPlatform: FC<PropsWithChildren> = ({
    children
}) => (
    <div
        css={() => css`
            background-image: url(${platformImage});
            background-repeat: no-repeat;
            background-position: bottom;
            height: 60px;
            width: 68px;
            image-rendering: pixelated;
            position: relative;
        `}
    >
        {children}
    </div>
);
