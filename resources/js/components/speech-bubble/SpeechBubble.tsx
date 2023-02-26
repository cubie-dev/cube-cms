import { FC, HTMLAttributes, PropsWithChildren } from 'react';
import { css } from '@emotion/react';
import { Position } from '../../interfaces/Position';
import { type Theme } from '../../theme';

export interface SpeechBubbleProps extends HTMLAttributes<HTMLElement> {
    arrowPosition: Position;
    shadow?: number;
}

const arrowLeftCss = css`
    &:before {
        content: '';
        border: 10px solid transparent;
        border-right-color: #fff;
        border-left: 0;
        position: absolute;
        margin-left: -10px;
        top: 50%;
        left: 0;
        transform: translateY(-50%);
    }
`;

const arrowRightCss = css`
    &:after {
        content: '';
        border: 10px solid transparent;
        border-left-color: #fff;
        border-right: 0;
        position: absolute;
        margin-right: -10px;
        top: 50%;
        right: 0;
        transform: translateY(-50%);
    }
`;

export const SpeechBubble: FC<PropsWithChildren<SpeechBubbleProps>> = ({
    children,
    arrowPosition,
    shadow,
    ...rest
}) => (
    <div
        css={({ roundings, colors, boxShadows }: Theme) => css`
            padding: 1rem;
            background: ${colors.white};
            border-radius: ${roundings.default};
            position: relative;
            ${arrowPosition === 'left' && arrowLeftCss}
            ${arrowPosition === 'right' && arrowRightCss}
            ${boxShadows[shadow || 1]}
        `}
        {...rest}
    >
        {children}
    </div>
);
