import { FC, HTMLAttributes, PropsWithChildren } from 'react';
import clsx from 'clsx';

export interface CardProps extends PropsWithChildren<HTMLAttributes<HTMLDivElement>> {
    badge?: string;
}

export const Card: FC<CardProps> = ({
    badge,
    children,
    className
}) => {
    return (
        <div
            className={clsx(
                'card',
                className
            )}
        >
            {badge && (
                <div className="card-badge">
                    {badge}
                </div>
            )}
            {children}
        </div>
    );
}
