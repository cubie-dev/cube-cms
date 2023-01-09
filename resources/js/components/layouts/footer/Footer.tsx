import { FC } from 'react';
import { FormattedMessage } from 'react-intl';
import { Card, CardContent } from '../../shared/card';
import { Container } from '../../shared/container';
import { Logo } from '../../shared/logo';

export const Footer: FC = () => (
    <Container className="footer-container">
        <Card className="clouds-background">
            <CardContent className="flex flex-col items-center">
                <div className="footer-content w-3/4">
                    <Logo variant="winter" />
                    <p className="footer-text">
                        <FormattedMessage
                            id="footer_copyright"
                            values={{
                                // @TODO
                                // eslint-disable-next-line react/no-unstable-nested-components
                                strong: (children) => <strong>{children}</strong>,
                            }}
                        />
                    </p>
                    <p className="footer-text">
                        <FormattedMessage
                            id="footer_powered"
                            values={{
                                // @TODO
                                // eslint-disable-next-line react/no-unstable-nested-components
                                strong: (children) => <strong>{children}</strong>,
                            }}
                        />
                    </p>
                </div>
            </CardContent>
        </Card>
    </Container>
);
