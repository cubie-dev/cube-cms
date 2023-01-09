import { FC, PropsWithChildren } from 'react';
import clsx from 'clsx';
import { Position } from '../../../interfaces/Position';

export interface SpeechBubbleProps {
    arrowPosition: Position;
    shadow?: string | number;
}

export const SpeechBubble: FC<PropsWithChildren<SpeechBubbleProps>> = ({
    children,
    arrowPosition,
    shadow
}) => (
    <div
        className={clsx(
            'speech-bubble',
            `arrow-${arrowPosition}`,
            shadow && `shadow-${shadow}`
        )}
    >
        {children}
    </div>
);
