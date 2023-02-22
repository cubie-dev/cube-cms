import { FC, HTMLAttributes, PropsWithChildren } from 'react';
import { useIntl } from 'react-intl';
import { css } from '@emotion/react';
import { ICurrency } from '../../interfaces/ICurrency';
import { WalletItem } from './WalletItem';
import { Currency } from './Currency';

export interface WalletProps extends HTMLAttributes<HTMLElement> {
    credits?: number;
    currencies: ICurrency[];
}

export const Wallet: FC<PropsWithChildren<WalletProps>> = ({
    credits,
    currencies,
    ...rest
}) => {
    return (
        <div
            css={() => css`
                display: flex;
                align-items: center;
            `}
            {...rest}
        >
            {credits && (
                <Currency type="credits" amount={credits} className="" />
            )}
            {currencies.map((currency: ICurrency) => (
                <Currency
                    key={currency.type.name}
                    type={currency.type.name}
                    amount={currency.amount}
                    iconUrl={currency.icon_url}
                />
            ))}
        </div>
    );
};
