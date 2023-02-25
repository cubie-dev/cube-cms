import { FC, HTMLAttributes } from 'react';
import { useIntl } from 'react-intl';
import { css } from '@emotion/react';
import { ICurrency } from '../../interfaces/ICurrency';
import { Icon } from '../icon';
import { type Icons } from '../../theme/icons';

export interface CurrencyProps extends HTMLAttributes<HTMLElement> {
    type: ICurrency['type']['name'];
    iconUrl?: ICurrency['icon_url'];
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
            css={({ colors }) => css`
                display: inline-flex;
                align-items: center;
                font-weight: 500;

                ${type === 'credits' && css` color: ${colors.yellow[900]}; `}
                ${type === 'diamonds' && css` color: ${colors.lightBlue[800]}; `}
                ${type === 'duckets' && css` color: ${colors.purple[500]}; `}
            `}
            {...rest}
        >
            {iconUrl ? (
                <img
                    alt={type}
                    src={iconUrl}
                    css={css`
                        margin-right: 0.5rem;
                        image-rendering: pixelated;
                        object-fit: none;
                        margin-right: 0.5rem;
                    `}
                />
            ) : (
                <Icon
                    css={css`
                        margin-right: 0.5rem;
                    `}
                    name={(type as keyof Icons)}
                />
            )}
            {intl.formatNumber(amount, { notation: 'compact' })}
        </div>
    );
};
