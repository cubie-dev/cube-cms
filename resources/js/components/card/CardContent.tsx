import { FC, HTMLAttributes, PropsWithChildren } from 'react';
import { css } from '@emotion/react';

export interface CardContentProps extends PropsWithChildren<HTMLAttributes<HTMLDivElement>> {
    spacing?: boolean;
}

export const CardContent: FC<CardContentProps> = ({
    children,
    spacing = true,
    ...rest
}) => (
    <div
        css={() => css`
            ${spacing && css` padding: 1.5rem; `}
        `}
        {...rest}
    >
        {children}
    </div>
);
