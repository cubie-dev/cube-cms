import { FC, HTMLAttributes, PropsWithChildren } from 'react';
import clsx from 'clsx';

export const Card: FC<PropsWithChildren<HTMLAttributes<HTMLDivElement>>> = ({
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
            {children}
        </div>
    );
}
