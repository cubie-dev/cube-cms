import { FC, PropsWithChildren } from 'react';
import { Head } from '@inertiajs/inertia-react';
import { Header } from '../layouts/header';
import { Container } from '../shared/container';
import { Footer } from '../layouts/footer';
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
