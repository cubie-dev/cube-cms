import {
    FC,
    HTMLAttributes,
    PropsWithChildren,
    ReactNode
} from 'react';
import { css } from '@emotion/react';
import { Theme } from '../../theme';
import { type Icon as IconType } from '../../theme/icons';
import { Icon } from '../icon';

export interface CardHeaderProps extends PropsWithChildren<Omit<HTMLAttributes<HTMLDivElement>, 'title'>> {
    title?: ReactNode;
    subTitle?: ReactNode;
    color?: string;
    icon?: IconType;
}

export const CardHeader: FC<CardHeaderProps> = ({
    children,
    color,
    icon,
    title,
    subTitle,
    ...rest
}) => (
    <div
        css={({ roundings }: Theme) => css`
            display: flex;
            flex-direction: column;
            border-top-left-radius: ${roundings.default};
            border-top-right-radius: ${roundings.default};
            border-bottom: solid 1px ${roundings.default};
            overflow: hidden;
        `}
        {...rest}
    >
        <div
            css={() => css`
                padding: 1.5rem;
                display: flex;
                align-items: center;
            `}
        >
            {icon && (
                <div
                    css={({ roundings }: Theme) => css`
                        width: 50px;
                        height: 50px;
                        display: flex;
                        align-items: center;
                        justify-content: center;
                        margin-right: 1rem;
                        border-radius: ${roundings.default};
                        ${color && css` background-color: ${color}; `}
                    `}
                >
                    <Icon name={icon} />
                </div>
            )}
            {title && (
                <div
                    css={() => css`
                        max-width: 100%;
                    `}
                >
                    <h2
                        css={({ colors }: Theme) => css`
                            font-weight: 600;
                            font-size: 1.1rem;
                            color: ${colors.grey[700]};
                        `}
                    >
                        { title }
                    </h2>
                    {subTitle && (
                        <p
                            css={({ colors }: Theme) => css`
                                color: ${colors.grey[500]};
                                margin-top: 0.5rem;
                            `}
                        >
                            { subTitle }
                        </p>
                    )}
                </div>
            )}
        </div>
        <div
            css={css`
              margin-left: auto;
            `}
        >
            {children}
        </div>
    </div>
);
