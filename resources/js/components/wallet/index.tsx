import { FC, HTMLAttributes, PropsWithChildren } from 'react';
import { css } from '@emotion/react';
import { ICurrency } from '../../interfaces/ICurrency';
import { Currency } from './Currency';

export interface WalletProps extends HTMLAttributes<HTMLElement> {
    credits?: number;
    currencies: ICurrency[];
}

export const Wallet: FC<PropsWithChildren<WalletProps>> = ({
    credits,
    currencies,
    ...rest
}) => (
    <div
        css={() => css`
            display: flex;
            align-items: center;
        `}
        {...rest}
    >
        {credits && (
            <Currency
                type="credits"
                amount={credits}
                css={css`
                    margin-right: 0.5rem;
                `}
            />
        )}
        {currencies.map((currency: ICurrency) => (
            <Currency
                key={currency.type.name}
                type={currency.type.name}
                amount={currency.amount}
                iconUrl={currency.icon_url}
                css={css`
                    margin-right: 0.5rem;
                `}
            />
        ))}
    </div>
);
