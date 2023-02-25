import clsx from 'clsx';
import { FC, HTMLAttributes } from 'react';
import { useIntl } from 'react-intl';
import { ICurrency } from '../../interfaces/ICurrency';

export interface CurrencyProps extends HTMLAttributes<HTMLElement> {
    type: ICurrency['type']['name'];
    iconUrl?: ICurrency['icon_url'];
    className?: string;
    amount: number;
}

export const Currency: FC<CurrencyProps> = ({
    type,
    iconUrl,
    amount,
    ...rest
}) => {
    const intl = useIntl();

    return (
        <div
            {...rest}
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
