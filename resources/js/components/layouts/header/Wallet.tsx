import { FC } from 'react';
import { useIntl } from 'react-intl';
import clsx from 'clsx';
import { useAuth } from '../../../hooks/useAuth';
import { ICurrency } from '../../../interfaces/ICurrency';

export const Wallet: FC = () => {
    const { user } = useAuth();
    const intl = useIntl();

    return user ? (
        <div
            className="user__wallet header-toolbar__item"
        >
            <div className="user__wallet-item user__wallet-item--credits">
                <i className="icon-credits user__wallet-item-icon" />
                {intl.formatNumber(user.data.credits, { notation: 'compact' })}
            </div>
            {user.data.active_currencies.map((currency: ICurrency) => (
                <div
                    className={clsx(
                        'user__wallet-item',
                        `user__wallet-item--${currency.type.name}`
                    )}
                    key={currency.type.name}
                >
                    <img
                        alt={currency.type.name}
                        src={currency.icon_url}
                        className="user__wallet-item-icon"
                    />
                    {intl.formatNumber(currency.amount, { notation: 'compact' })}
                </div>
            ))}
        </div>
    ) : null;
};
