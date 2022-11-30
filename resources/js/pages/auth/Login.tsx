import { Page as IPage} from '@inertiajs/inertia';
import { Page } from '../../components/page';
import { Card, CardContent, CardHeader, CardImage } from '../../components/shared/card';
import { Grid } from '../../components/shared/grid';
import { FormGroup, FormLabel, FormInput, FormMessage } from '../../components/shared/forms';
import { FormattedMessage, useIntl } from 'react-intl';
import { useForm, usePage } from '@inertiajs/inertia-react';
import { FormEvent, useCallback } from 'react';
import { Button } from '../../components/shared/button';
import { Message, MessageProps } from '../../components/shared/message/Message';
import { useFlashMessages } from '../../hooks/useFlashMessages';
import { List, ListItem } from '../../components/shared/list';
import { Avatar } from '../../components/shared/avatar';
import '../../../style/layouts/_login.scss'
import { SharedProps } from '../../SharedProps';
import { IUser } from '../../interfaces/IUser';
import { IDataObject } from '../../interfaces/IDataObject';

export interface LoginPageProps {
    newestUsers: IDataObject<IUser[]>;
}

export default function Login() {
    const intl = useIntl();
    const { data, setData, put, errors, clearErrors } = useForm({
        username: '',
        password: ''
    });

    const { props: { newestUsers } } = usePage<IPage<SharedProps & LoginPageProps>>();

    const onSubmit = useCallback((event: FormEvent) => {
        event.preventDefault();

        clearErrors();

        put('/login', {
            preserveScroll: true
        });
    }, [data.username, data.password]);

    const flashMessages = useFlashMessages('auth')

    return (
        <Page title="login.title">
            <div className="message-container">
                {flashMessages.map((message: MessageProps, index) => (
                    <Message
                        key={index}
                        {...message}
                    />
                ))}
            </div>
            <Grid cols={1} gap={8} smCols={3}>
                <Card>
                    <CardHeader
                        title={intl.formatMessage({ id: 'login.form_card_header_title'})}
                        subTitle={intl.formatMessage({ id: 'login.form_card_header_subtitle'})}
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
                                    <FormMessage invalid={true}>{errors.username}</FormMessage>
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
                                    <FormMessage invalid={true}>{errors.password}</FormMessage>
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
                        title={intl.formatMessage({ id: 'login.info_card_title'})}
                        subTitle={intl.formatMessage({ id: 'login.info_card_subtitle'})}
                    >

                    </CardHeader>
                    <CardContent>
                        <FormattedMessage id="login.info_card_content" />
                    </CardContent>
                </Card>
                <Card className="newest-users-card">
                    <CardHeader
                        title={intl.formatMessage({ id: 'login.new_users_card_title'})}
                        subTitle={intl.formatMessage({ id: 'login.new_users_card_subtitle'})}
                    >

                    </CardHeader>
                    <CardContent spacing={false}>
                        <List rowed>
                            {newestUsers.data.map((user: IUser) => (
                                <ListItem key={user.id}>
                                    <div className="new-user-container">
                                        <div className="avatar">
                                            <Avatar
                                                figure={user.look}
                                                direction={2}
                                            />
                                        </div>
                                        <div>
                                            <div><strong>{user.username}</strong></div>
                                            <span className="helper-text">{user.motto}</span>
                                        </div>
                                    </div>
                                </ListItem>
                            ))}
                        </List>
                    </CardContent>
                </Card>
            </Grid>
        </Page>
    )
}
