import { format as formatFn} from 'date-fns';
import { nl } from 'date-fns/locale';

export const localeFormat = (date: Date | string, format: string) => {
    date = typeof date === 'string' ? new Date(date) : date;

    return formatFn(date, format, { locale: nl });
}
