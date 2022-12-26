import { IUser } from './interfaces/IUser';
import { IBreadcrumbs } from './interfaces/IBreadcrumbs';
import { ResolvedIntlConfig } from 'react-intl';
import { MessageProps } from './components/shared/message/Message';
import { IDataObject } from './interfaces/IDataObject';
import { ILoggedInUser } from './interfaces/ILoggedInUser';

export interface SharedProps {
    user?: IDataObject<ILoggedInUser>;
    breadcrumbs: IBreadcrumbs;
    locale: string;
    localeMessages: ResolvedIntlConfig['messages'];
    flash: {
        messages: Array<MessageProps & { target: string }>;
    }
    [key: string]: unknown;
}
