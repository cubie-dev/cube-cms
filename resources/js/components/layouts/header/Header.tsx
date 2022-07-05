import { FC, PropsWithChildren } from 'react';
import { Container } from '../../shared/container';
import { Logo } from '../../shared/logo';
import { Breadcrumbs } from '../breadcrumbs';
import { useAuth } from '../../../hooks/useAuth';
import { Toolbar } from './Toolbar';
import { usePage } from '@inertiajs/inertia-react';
import { Page } from '@inertiajs/inertia';
import { SharedProps } from '../../../SharedProps';
import { Avatar } from '../../shared/avatar';
import { SpeechBubble } from '../../shared/speech-bubble/SpeechBubble';
import { FormattedMessage } from 'react-intl';

const Header: FC<PropsWithChildren> = ({
    children
}) => {
    const { user } = useAuth();
    const { props: { breadcrumbs } } = usePage<Page<SharedProps>>();

    return (
        <>
            <header className="main-header">
                <Container>
                    <div className="header-inner">
                        <div className="logo-container">
                            <Logo variant="winter" />
                            <SpeechBubble arrowPosition="left">
                                <strong>0</strong> <FormattedMessage id="header_online" />
                            </SpeechBubble>
                        </div>
                        {children}
                    </div>
                </Container>
            </header>
            <Toolbar>
                <div className="breadcrumbs-container">
                    <Breadcrumbs breadcrumbs={breadcrumbs} />
                </div>
                <div className="user-info">
                    <SpeechBubble arrowPosition="right" shadow={1}>
                        <FormattedMessage id="header_welcome_speech_bubble" />
                    </SpeechBubble>
                    <div className="platform">
                        <Avatar
                            figure={user ? user.look : 'hr-831-36.sh-3275-1328.lg-3058-82.ch-3185-110.he-3274-94.hd-190-2'}
                            action="sit"
                            direction={4}
                            headDirection={3}
                        />
                    </div>
                </div>
            </Toolbar>
        </>
    );
}

export {
    Header
}
