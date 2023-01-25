import clsx from 'clsx';
import { FC } from 'react';
import { useIntl } from 'react-intl';
import { ICurrency } from '../../interfaces/ICurrency';

export interface CurrencyProps {
    type: ICurrency['type']['name'];
    iconUrl?: ICurrency['icon_url'];
    className?: string;
    amount: number;
}

export const Currency: FC<CurrencyProps> = ({
    type,
    iconUrl,
    className,
    amount
}) => {
    const intl = useIntl();

    return (
        <div
            className={clsx(
                'currency',
                className
            )}
        >
            {iconUrl ? (
                <img
                    alt={type}
                    src={iconUrl}
                    className="user__wallet-item-icon mr-2"
                />
            ) : (
                <i
                    className={clsx(
                        `icon-${type}`,
                        'mr-2'
                    )}
                />
            )}
            {intl.formatNumber(amount, { notation: 'compact' })}
        </div>
    );
};
