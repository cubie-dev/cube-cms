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
import { Container } from '../container';
import { Logo } from '../logo';
import { Breadcrumbs } from '../breadcrumbs';
import { useAuth } from '../../hooks/useAuth';
import { Toolbar } from '../toolbar/Toolbar';
import { SharedProps } from '../../SharedProps';
import { Avatar } from '../avatar';
import { SpeechBubble } from '../speech-bubble/SpeechBubble';
import { NavigationContext } from '../navigation/NavigationContext';
import { Navigation } from '../navigation/Navigation';
import { MobileNavigation } from '../navigation/MobileNavigation';
import { Button } from '../button';
import { Wallet } from './Wallet';
import { UserInfo } from './UserInfo';

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
                    <div className="hidden sm:block">
                        <Navigation />
                    </div>
                    <div className="sm:hidden">
                        <MobileNavigation />
                    </div>
                </>
            )}
            <header className="main-header">
                <Container>
                    <div className="header-inner">
                        <div className="logo-container">
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
