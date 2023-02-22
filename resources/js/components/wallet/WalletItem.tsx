import { css } from '@emotion/react';
import { FC, HTMLAttributes, PropsWithChildren } from 'react';

export interface WalletItemProps extends HTMLAttributes<HTMLElement> {
    type: 'credits' | 'diamonds' | 'duckets';
    icon: string;
}
export const WalletItem: FC<PropsWithChildren<WalletItemProps>> = ({
    children,
    type,
    icon,
    ...rest
}) => (
    <div
        css={({ colors }) => css`
            display: flex;
            margin-right: 1rem;
            font-weight: 500;
            ${type === 'credits' && css` color: ${colors.yellow[900]}; `}
            ${type === 'diamonds' && css` color: ${colors.lightBlue[800]}; `}
            ${type === 'duckets' && css` color: ${colors.purple[500]}; `}
        `}
        {...rest}
    >
        {icon && (
            <i
                css={css`
                    margin-right: 0.5rem;
                    image-rendering: pixelated;
                    object-fit: none;
                `}
                className={`icon-${icon}`}
            />
        )}
        {children}
    </div>
);
