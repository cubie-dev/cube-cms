import {
    ForwardedRef,
    forwardRef,
    HTMLAttributes,
    PropsWithChildren
} from 'react';
import { css } from '@emotion/react';
import { type Theme } from '../../theme';

export interface CardProps extends PropsWithChildren<HTMLAttributes<HTMLDivElement>> {
    badge?: string;
}

const Card = forwardRef<HTMLDivElement, CardProps>(({
    badge,
    children,
    ...rest
}, ref: ForwardedRef<HTMLDivElement>) => (
    <div
        css={({ roundings }: Theme) => css`
            background: #fff;
            border-radius: ${roundings.default};
            position: relative;
        `}
        ref={ref}
        {...rest}
    >
        {badge && (
            <div
                css={({ roundings }: Theme) => css`
                    position: absolute;
                    right: 1rem;
                    top: 1rem;
                    background: rgba(0, 0, 0, .8);
                    padding: 0.2rem 0.3rem;
                    color: #fff;
                    border-radius: ${roundings.default};
                `}
            >
                {badge}
            </div>
        )}
        {children}
    </div>
));

Card.displayName = 'Card';

export {
    Card
};
