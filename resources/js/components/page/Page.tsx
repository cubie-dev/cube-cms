import { FC, PropsWithChildren } from 'react';
import { Head } from '@inertiajs/react';
import { Header } from '../header';
import { Container } from '../container';
import { Footer } from '../footer';
import { useTitle } from '../../hooks/useTitle';

export interface PageProps {
    title?: string;
}

export const Page: FC<PropsWithChildren<PageProps>> = ({
    children,
    title
}) => (
    <>
        {title && <Head title={useTitle(title)} />}
        <Header />
        <div className="page">
            <div className="bottom-bar" />
            <Container>
                {children}
            </Container>
            <Footer />
        </div>
    </>
);
