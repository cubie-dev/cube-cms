import { IUser } from './interfaces/IUser';
import { IBreadcrumbs } from './interfaces/IBreadcrumbs';
import { ResolvedIntlConfig } from 'react-intl';
import { MessageProps } from './components/shared/message/Message';
import { IDataObject } from './interfaces/IDataObject';

export interface SharedProps {
    user?: IDataObject<IUser>;
    breadcrumbs: IBreadcrumbs;
    locale: string;
    localeMessages: ResolvedIntlConfig['messages'];
    flash: {
        messages: Array<MessageProps & { target: string }>;
    }
    [key: string]: unknown;
}
