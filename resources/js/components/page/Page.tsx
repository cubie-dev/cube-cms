import { FC, PropsWithChildren } from 'react';
import { Header } from '../layouts/header';
import { Container } from '../shared/container';

export const Page: FC<PropsWithChildren> = ({ children }) => {
    return (
        <>
            <Header />
            <div className="page">
                <div className="bottom-bar"></div>
                <Container>
                    {children}
                </Container>
            </div>
        </>

    );
}
