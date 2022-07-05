import { FC, HTMLAttributes, PropsWithChildren } from 'react';
import clsx from 'clsx';

export interface CardContentProps extends PropsWithChildren<HTMLAttributes<HTMLDivElement>> {
    spacing?: boolean;
}

export const CardContent: FC<CardContentProps> = ({
    children,
    className,
    spacing = true
}) => {
    return (
        <div
            className={clsx(
                'card-content',
                !spacing && 'no-spacing',
                className
            )}
        >
            {children}
        </div>
    );
}
