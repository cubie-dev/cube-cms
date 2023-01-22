import { FC, PropsWithChildren } from 'react';
import { Container } from '../container';

export const Toolbar: FC<PropsWithChildren> = ({ children }) => (
    <div className="header-toolbar">
        <Container className="header-toolbar-inner">
            {children}
        </Container>
    </div>
);
