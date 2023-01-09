import { format as formatFn } from 'date-fns';
import { nl } from 'date-fns/locale';

export const localeFormat = (date: Date | string, format: string) => {
    const convertedDate = typeof date === 'string' ? new Date(date) : date;

    return formatFn(convertedDate, format, { locale: nl });
};
