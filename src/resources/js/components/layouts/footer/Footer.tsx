import { FC } from 'react';
import { Card, CardContent } from '../../shared/card';
import { Container } from '../../shared/container';
import { Logo } from '../../shared/logo';
import { FormattedMessage, useIntl } from 'react-intl';

export const Footer: FC = () => {
    const intl = useIntl();

    return (
        <Container className="footer-container">
            <Card className="clouds-background">
                <CardContent className="flex flex-col items-center">
                    <div className="footer-content w-3/4">
                        <Logo variant="winter" />
                        <p className="footer-text">
                            <FormattedMessage id="footer_copyright" values={{
                                strong: children => <strong>{children}</strong>,
                            }} />
                        </p>
                        <p className="footer-text">
                            <FormattedMessage id="footer_powered" values={{
                                strong: children => <strong>{children}</strong>,
                            }} />
                        </p>
                    </div>
                </CardContent>
            </Card>
        </Container>
    );
}
