import { FC, PropsWithChildren } from 'react';
import { Container } from '../../shared/container';

export const Toolbar: FC<PropsWithChildren> = ({ children }) => {
    return (
        <div className="header-toolbar">
            <Container className="header-toolbar-inner">
                {children}
            </Container>
        </div>
    );
}
