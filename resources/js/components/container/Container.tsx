import { FC, HTMLAttributes, PropsWithChildren } from 'react';
import { css } from '@emotion/react';
import { Theme, screen } from '../../theme';

export const Container: FC<PropsWithChildren<HTMLAttributes<HTMLElement>>> = ({
    children,
    ...rest
}) => (
    <div
        css={({ screens }: Theme) => css`
            width: 100%;
            margin: 0 auto;
            ${screen('md')} {
                max-width: ${screens.md};
            }
            ${screen('lg')} {
                max-width: ${screens.lg};
            }
            ${screen('xl')} {
                max-width: ${screens.xl};
            }
        `}
        {...rest}
    >
        {children}
    </div>
);
