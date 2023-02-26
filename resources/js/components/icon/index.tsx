import { FC, HTMLAttributes, PropsWithChildren } from 'react';
import { type Icons } from '../../theme/icons';
import { css } from '@emotion/react';
import { type Theme } from '../../theme';

export interface IconProps extends HTMLAttributes<HTMLElement> {
    name: keyof Icons;
}

export const Icon: FC<PropsWithChildren<IconProps>> = ({
    name,
    ...rest
}) => (
    <i
        css={({ icons }: Theme) => css`
            background: url(${icons[name].image}) no-repeat;
            width: ${icons[name].width};
            height: ${icons[name].height};
            display: inline-block;
            vertical-align: middle;
            image-rendering: pixelated;
        `}
        {...rest}
    />
);
