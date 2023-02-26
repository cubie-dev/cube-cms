import { FC } from 'react';
import { FormattedMessage } from 'react-intl';
import { Card, CardContent } from '../card';
import { Container } from '../container';
import { Logo } from '../logo';

export const Footer: FC = () => (
    <Container className="footer-container">
        <Card className="clouds-background">
            <CardContent className="flex flex-col items-center">
                <div className="footer-content w-3/4">
                    <Logo variant="winterLogo" />
                    <p className="footer-text">
                        <FormattedMessage
                            id="global.footer_copyright"
                            values={{
                                // @TODO
                                // eslint-disable-next-line react/no-unstable-nested-components
                                strong: (children) => <strong>{children}</strong>,
                            }}
                        />
                    </p>
                    <p className="footer-text">
                        <FormattedMessage
                            id="global.footer_powered"
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
