import { FC, PropsWithChildren } from 'react';
import { Position } from '../../../interfaces/Position';
import clsx from 'clsx';

export interface SpeechBubbleProps {
    arrowPosition: Position;
    shadow?: string | number;
}

export const SpeechBubble: FC<PropsWithChildren<SpeechBubbleProps>> = ({
    children,
    arrowPosition,
    shadow
}) => {
    return (
        <div className={clsx(
            'speech-bubble',
            `arrow-${arrowPosition}`,
            shadow && `shadow-${shadow}`
        )}>
            {children}
        </div>
    )
}
