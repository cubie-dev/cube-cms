import { FormattedMessage, useIntl } from 'react-intl';
import { useForm } from '@inertiajs/react';
import {
    FC,
    FormEvent,
    useCallback,
} from 'react';
import { faChevronLeft } from '@fortawesome/pro-regular-svg-icons';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { css } from '@emotion/react';
import { Grid } from '../../components/grid';
import { Page } from '../../components/page';
import {
    Card,
    CardContent,
    CardHeader
} from '../../components/card';
import {
    FormGroup, FormInput, FormLabel, FormMessage, FormSelect
} from '../../components/forms';
import { Button } from '../../components/button';

import '../../../style/layouts/_register.scss';
import { useFlashMessages } from '../../hooks/useFlashMessages';
import { Message, MessageProps } from '../../components/message/Message';
import { screen, theme } from '../../theme';
import { images } from '../../theme/images';

const Register: FC = () => {
    const intl = useIntl();
    const {
        data, setData, post, errors, clearErrors
    } = useForm({
        username: '',
        email: '',
        password: '',
        password_confirmation: '',
        gender: 'M'
    });

    const flashMessages = useFlashMessages('auth');

    const onSubmit = useCallback((event: FormEvent) => {
        event.preventDefault();

        clearErrors();

        post('/register', {
            preserveScroll: true
        });
    }, [data.username, data.email, data.password, data.password_confirmation, data.gender]);

    return (
        <Page title="register.title">
            <div className="message-container">
                {flashMessages.map((message: MessageProps) => (
                    <Message
                        key={message.content}
                        content={message.content}
                        type={message.type}
                    />
                ))}
            </div>
            <Card
                css={css`
                    margin-bottom: 10rem;
                `}
            >
                <CardHeader
                    icon="newuser"
                    color={theme.colors.grey[200]}
                    title={intl.formatMessage({ id: 'register.title' })}
                    subTitle={intl.formatMessage({ id: 'register.subtitle' })}
                    css={css`
                        // @TODO make available to others?
                        background-position: center right;
                        background-repeat: no-repeat;
                        image-rendering: pixelated;

                        ${screen('sm')} {
                            background-image: url(${images.global.moving});
                        }
                    `}
                />
            </Card>
            <Button
                href="/login"
                variant="light"
                className="mb-4"
                iconLeft={<FontAwesomeIcon icon={faChevronLeft} />}
            >
                <FormattedMessage id="register.back_button" />
            </Button>
            <form onSubmit={onSubmit} method="post">
                <Grid cols={1} gap={8} smCols={3}>
                    <Card>
                        <CardHeader
                            icon="boxOne"
                            color={theme.colors.grey[200]}
                            title={<FormattedMessage id="register.step_one_card_title" />}
                            subTitle={<FormattedMessage id="register.step_one_card_subtitle" />}
                        />
                        <CardContent>
                            <FormGroup invalid={!!errors.username}>
                                <FormLabel htmlFor="username">
                                    <FormattedMessage id="register.username_label" />
                                </FormLabel>
                                <FormInput
                                    id="username"
                                    value={data.username}
                                    onChange={(value: string) => setData('username', value)}
                                />
                                {errors.username && (
                                    <FormMessage invalid>{errors.username}</FormMessage>
                                )}
                            </FormGroup>
                            <FormGroup invalid={!!errors.email}>
                                <FormLabel htmlFor="email">
                                    <FormattedMessage id="register.email_label" />
                                </FormLabel>
                                <FormInput
                                    id="email"
                                    value={data.email}
                                    onChange={(value: string) => setData('email', value)}
                                />
                                {errors.email && (
                                    <FormMessage invalid>{errors.email}</FormMessage>
                                )}
                            </FormGroup>
                        </CardContent>
                    </Card>
                    <Card>
                        <CardHeader
                            icon="boxTwo"
                            color={theme.colors.grey[200]}
                            title={<FormattedMessage id="register.step_two_card_title" />}
                            subTitle={<FormattedMessage id="register.step_two_card_subtitle" />}
                        />
                        <CardContent>
                            <FormGroup invalid={!!errors.password}>
                                <FormLabel htmlFor="password">
                                    <FormattedMessage id="register.password_label" />
                                </FormLabel>
                                <FormInput
                                    id="password"
                                    value={data.password}
                                    type="password"
                                    onChange={(value: string) => setData('password', value)}
                                />
                                {errors.password && (
                                    <FormMessage invalid>{errors.password}</FormMessage>
                                )}
                            </FormGroup>
                            <FormGroup invalid={!!errors.password_confirmation}>
                                <FormLabel htmlFor="password_confirmation">
                                    <FormattedMessage id="register.password_confirmation_label" />
                                </FormLabel>
                                <FormInput
                                    id="password_confirmation"
                                    type="password"
                                    value={data.password_confirmation}
                                    onChange={(value: string) => setData('password_confirmation', value)}
                                />
                                {errors.password_confirmation && (
                                    <FormMessage invalid>
                                        {errors.password_confirmation}
                                    </FormMessage>
                                )}
                            </FormGroup>
                        </CardContent>
                    </Card>
                    <Card>
                        <CardHeader
                            icon="boxThree"
                            color={theme.colors.grey[200]}
                            title={<FormattedMessage id="register.step_three_card_title" />}
                            subTitle={<FormattedMessage id="register.step_three_card_subtitle" />}
                        />
                        <CardContent>
                            <FormGroup>
                                <FormLabel><FormattedMessage id="register.gender_label" /></FormLabel>
                                <FormSelect
                                    onChange={(value: string) => setData('gender', value)}
                                >
                                    <option value="M">
                                        <FormattedMessage id="register.gender_m_label" />
                                    </option>
                                    <option value="F">
                                        <FormattedMessage id="register.gender_f_label" />
                                    </option>
                                </FormSelect>
                            </FormGroup>
                            <Button type="submit" fw>
                                <FormattedMessage id="register.submit_button" />
                            </Button>
                        </CardContent>
                    </Card>
                </Grid>
            </form>
        </Page>
    );
};

export default Register;
