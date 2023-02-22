import { FC, PropsWithChildren } from 'react';
import { css } from '@emotion/react';
import { ToolbarInner } from './ToolbarInner';
import { Theme } from '../../theme';

export const Toolbar: FC<PropsWithChildren> = ({
    children,
    ...rest
}) => (
    <div
        css={({ colors }: Theme) => css`
            background-color: ${colors.grey[50]};
            background-image: linear-gradient(to bottom, #fff, ${colors.grey[50]});
            box-shadow: inset 0 -3px #0000000a, 0 1px #0000001f, 0 2px 10px #0000001a;
            height: 60px;
            display: flex;

            .header-toolbar__item:not(:last-child) {
                margin-right: 1rem;
            }
        `}
        {...rest}
    >
        <ToolbarInner>
            {children}
        </ToolbarInner>
    </div>
);
