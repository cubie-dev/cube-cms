import type { Page as PageInterface } from '@inertiajs/core';
import { FormattedMessage, useIntl } from 'react-intl';
import { useForm, usePage } from '@inertiajs/react';
import { FC, FormEvent, useCallback } from 'react';
import { Page } from '../../components/page';
import {
    Card,
    CardContent,
    CardHeader,
    CardImage
} from '../../components/card';
import { Grid } from '../../components/grid';
import {
    FormGroup,
    FormLabel,
    FormInput,
    FormMessage
} from '../../components/forms';
import { Button } from '../../components/button';
import { Message, MessageProps } from '../../components/message/Message';
import { useFlashMessages } from '../../hooks/useFlashMessages';
import { List, ListItem } from '../../components/list';
import { Avatar } from '../../components/avatar';
import '../../../style/layouts/_login.scss';
import { SharedProps } from '../../SharedProps';
import { IUser } from '../../interfaces/IUser';
import { IDataObject } from '../../interfaces/IDataObject';

export interface LoginPageProps {
    newestUsers: IDataObject<IUser[]>;
}

const Login: FC = () => {
    const intl = useIntl();
    const {
        data,
        setData,
        put,
        errors,
        clearErrors
    } = useForm({
        username: '',
        password: ''
    });

    const { props: { newestUsers } } = usePage() as PageInterface<SharedProps & LoginPageProps>;

    const onSubmit = useCallback((event: FormEvent) => {
        event.preventDefault();

        clearErrors();

        put('/login', {
            preserveScroll: true
        });
    }, [data.username, data.password]);

    const flashMessages = useFlashMessages('auth');

    return (
        <Page title="login.title">
            <div className="message-container">
                {flashMessages.map((message: MessageProps) => (
                    <Message
                        key={message.content}
                        content={message.content}
                        type={message.type}
                    />
                ))}
            </div>
            <Grid cols={1} gap={8} smCols={3}>
                <Card>
                    <CardHeader
                        title={intl.formatMessage({ id: 'login.form_card_header_title' })}
                        subTitle={intl.formatMessage({ id: 'login.form_card_header_subtitle' })}
                    />
                    <CardContent>
                        <form onSubmit={onSubmit}>
                            <FormGroup invalid={!!errors.username}>
                                <FormLabel htmlFor="username">
                                    <FormattedMessage id="login.username_label" />
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
                            <FormGroup invalid={!!errors.password}>
                                <FormLabel htmlFor="password">
                                    <FormattedMessage id="login.password_label" />
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
                            <div className="flex">
                                <Button variant="primary">
                                    <FormattedMessage id="login.submit_button" />
                                </Button>
                            </div>
                        </form>
                    </CardContent>
                </Card>
                <Card>
                    <CardImage
                        className="image-forum3"
                    />
                    <CardHeader
                        title={intl.formatMessage({ id: 'login.info_card_title' })}
                        subTitle={intl.formatMessage({ id: 'login.info_card_subtitle' })}
                    />
                    <CardContent>
                        <FormattedMessage id="login.info_card_content" />
                    </CardContent>
                </Card>
                <Card>
                    <CardHeader
                        title={intl.formatMessage({ id: 'login.new_users_card_title' })}
                        subTitle={intl.formatMessage({ id: 'login.new_users_card_subtitle' })}
                    />
                    <CardContent spacing={false}>
                        <List rowed>
                            {newestUsers.data.map((user: IUser) => (
                                <ListItem className="list-item--user" key={user.id}>
                                    <Avatar
                                        figure={user.look}
                                        direction={2}
                                    />
                                    <div>
                                        <div><strong>{user.username}</strong></div>
                                        <span className="helper-text">{user.motto}</span>
                                    </div>
                                </ListItem>
                            ))}
                        </List>
                    </CardContent>
                </Card>
            </Grid>
        </Page>
    );
};

export default Login;
