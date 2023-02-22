import { css } from '@emotion/react';
import { FC, PropsWithChildren } from 'react';
import { Container } from '../container';

export const ToolbarInner: FC<PropsWithChildren> = ({ children }) => (
    <Container
        css={() => css`
            display: flex;
            justify-content: space-between;
            align-items: center;
        `}
    >
        {children}
    </Container>
);
