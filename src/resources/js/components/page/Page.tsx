import { FC, PropsWithChildren } from 'react';
import { Header } from '../layouts/header';
import { Container } from '../shared/container';
import { Footer } from '../layouts/footer';
import { Head } from '@inertiajs/inertia-react';
import { useTitle } from '../../hooks/useTitle';

export interface PageProps {
    title?: string;
}

export const Page: FC<PropsWithChildren<PageProps>> = ({
    children,
    title
}) => {
    return (
        <>
            {title && <Head title={useTitle(title)}></Head>}
            <Header />
            <div className="page">
                <div className="bottom-bar"></div>
                <Container>
                    {children}
                </Container>
                <Footer />
            </div>
        </>

    );
}
