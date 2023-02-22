import { FC, PropsWithChildren } from 'react';
import { Head } from '@inertiajs/react';
import { Header } from '../header';
import { Container } from '../container';
import { Footer } from '../footer';
import { useTitle } from '../../hooks/useTitle';
import { css } from '@emotion/react';
import { Theme } from '../../theme';

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
        <div>
            <div
                css={({ colors }) => css`
                    background-color: ${colors.grey[200]};
                    box-shadow: 0 3px ${colors.grey[50]}, inset 0 4px rgb(0 0 0 / 5%);
                    height: 5rem;
                    margin-bottom: -2.5rem;
                `}
            />
            <Container>
                {children}
            </Container>
            <Footer />
        </div>
    </>
);
