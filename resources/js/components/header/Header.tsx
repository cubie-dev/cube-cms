import {
    FC,
    useCallback,
    useEffect, useMemo,
    useState
} from 'react';
import { Link, usePage } from '@inertiajs/react';
import type { Page } from '@inertiajs/core';
import { FormattedMessage } from 'react-intl';
import { Bars3Icon } from '@heroicons/react/24/outline';
import { css } from '@emotion/react';
import { Container } from '../container';
import { Logo } from '../logo';
import { Breadcrumbs } from '../breadcrumbs';
import { useAuth } from '../../hooks/useAuth';
import { Toolbar } from '../toolbar/Toolbar';
import { SharedProps } from '../../SharedProps';
import { SpeechBubble } from '../speech-bubble/SpeechBubble';
import { NavigationContext } from '../navigation/NavigationContext';
import { Navigation } from '../navigation/Navigation';
import { MobileNavigation } from '../navigation/MobileNavigation';
import { Button } from '../button';
import { UserInfo } from './UserInfo';
import { screen, type Theme } from '../../theme';

const Header: FC = () => {
    const { user } = useAuth();
    const { props: { breadcrumbs } } = usePage() as Page<SharedProps>;

    const shouldShowNavigation = useCallback<() => boolean>(() => !!user, [!!user]);

    const [mobileNavigationOpen, setMobileNavigationOpen] = useState(false);

    const closeMobileMenuOnResize = useCallback(() => {
        if (window.innerWidth >= import.meta.env.VITE_MD_WIDTH) {
            setMobileNavigationOpen(false);
        }
    }, [setMobileNavigationOpen]);

    useEffect(() => {
        if (mobileNavigationOpen) {
            window.addEventListener('resize', closeMobileMenuOnResize);
        } else {
            window.removeEventListener('resize', closeMobileMenuOnResize);
        }
    }, [mobileNavigationOpen]);

    const navigationContextValue = useMemo(() => ({
        mobileNavigationOpen,
        setMobileNavigationOpen
    }), [mobileNavigationOpen, setMobileNavigationOpen]);

    return (
        <NavigationContext.Provider value={navigationContextValue}>
            {shouldShowNavigation() && (
                <>
                    <div
                        css={() => css`
                            display: none;
                            ${screen('sm')} {
                                display: block;
                            }
                        `}
                    >
                        <Navigation />
                    </div>
                    <div
                        css={() => css`
                            display: block;
                            ${screen('sm')} {
                                display: none;
                            }
                        `}
                    >
                        <MobileNavigation />
                    </div>
                </>
            )}
            <header
                css={({ images }: Theme) => css`
                    height: 175px;
                    background-image: url(${images.header.background});
                    background-size: auto, cover, auto;
                    image-rendering: pixelated;
                    display: flex;
                    align-items: center;

                    ${screen('md')} {
                        background: url(${images.header.hotel}) calc(50% + 150px) bottom, url(${images.header.background}) 0;
                    }
                `}
            >
                <Container>
                    <div
                        css={() => css`
                            display: flex;
                            flex-direction: column;
                            align-items: center;

                            ${screen('md')} {
                                justify-content: space-between;
                                align-items: center;
                                flex-direction: row;
                            }
                        `}
                    >
                        <div
                            css={() => css`
                                display: flex;
                                align-items: center;
                            `}
                        >
                            <Logo variant="winter" />
                            <SpeechBubble
                                arrowPosition="left"
                            >
                                <strong>0</strong>
                                {' '}
                                <FormattedMessage id="global.header_online" />
                            </SpeechBubble>
                        </div>
                        {!user && window.location.pathname.endsWith('login') && (
                            <div className="register-button-container">
                                <Link href="/register" className="btn btn-register">
                                    <FormattedMessage id="login.register_now_button" />
                                </Link>
                            </div>
                        )}
                    </div>
                </Container>
            </header>
            <Toolbar>
                <div className="breadcrumbs-container hidden sm:flex">
                    <Breadcrumbs breadcrumbs={breadcrumbs} />
                </div>
                <div className="sm:hidden">
                    <Button variant="light" onClick={() => setMobileNavigationOpen(true)}>
                        <Bars3Icon />
                    </Button>
                </div>
                <UserInfo />
            </Toolbar>
        </NavigationContext.Provider>
    );
};

export {
    Header
};
