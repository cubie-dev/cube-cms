import { FC, useCallback, useEffect, useState } from 'react';
import { Container } from '../../shared/container';
import { Logo } from '../../shared/logo';
import { Breadcrumbs } from '../breadcrumbs';
import { useAuth } from '../../../hooks/useAuth';
import { Toolbar } from './Toolbar';
import { Link, usePage } from '@inertiajs/inertia-react';
import { Page } from '@inertiajs/inertia';
import { SharedProps } from '../../../SharedProps';
import { Avatar } from '../../shared/avatar';
import { SpeechBubble } from '../../shared/speech-bubble/SpeechBubble';
import { FormattedMessage } from 'react-intl';
import { NavigationContext } from '../navigation/NavigationContext';
import { Navigation } from '../navigation/Navigation';
import { MobileNavigation } from '../navigation/MobileNavigation';
import { Button } from '../../shared/button';
import { Wallet } from './Wallet';
import { Bars3Icon } from '@heroicons/react/24/outline'

const Header: FC = () => {
    const { user } = useAuth();
    const { props: { breadcrumbs } } = usePage<Page<SharedProps>>();

    const shouldShowNavigation = useCallback<() => boolean>(() => {
        return !!user;
    }, [!!user]);

    const [mobileNavigationOpen, setMobileNavigationOpen] = useState(false);

    const closeMobileMenuOnResize = useCallback(() => {
        if (window.innerWidth >= import.meta.env.VITE_MD_WIDTH) {
            setMobileNavigationOpen(false);
        }
    }, [setMobileNavigationOpen])

    useEffect(() => {
        if (mobileNavigationOpen) {
            window.addEventListener('resize', closeMobileMenuOnResize);
        } else {
            window.removeEventListener('resize', closeMobileMenuOnResize);
        }
    }, [mobileNavigationOpen]);

    return (
        <>
            <NavigationContext.Provider value={{
                mobileNavigationOpen,
                setMobileNavigationOpen
            }}>
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
                                <SpeechBubble arrowPosition="left">
                                    <strong>0</strong> <FormattedMessage id="header_online" />
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
                    <div className="user-info">
                        {user && (
                            <Wallet />
                        )}
                        <div className="platform">
                            <Avatar
                                figure={user ? user.data.look : 'hr-831-36.sh-3275-1328.lg-3058-82.ch-3185-110.he-3274-94.hd-190-2'}
                                action="sit"
                                direction={4}
                                headDirection={3}
                            />
                        </div>
                    </div>
                </Toolbar>
            </NavigationContext.Provider>
        </>
    );
}

export {
    Header
}
