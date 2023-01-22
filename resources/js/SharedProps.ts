import { ResolvedIntlConfig } from 'react-intl';
import { IBreadcrumbs } from './interfaces/IBreadcrumbs';
import { MessageProps } from './components/message/Message';
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
