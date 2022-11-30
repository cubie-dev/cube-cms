import { FC, HTMLAttributes, PropsWithChildren } from 'react';
import clsx from 'clsx';

export interface ListProps extends PropsWithChildren<HTMLAttributes<HTMLDivElement>> {
    rowed?: boolean;
}

export const List: FC<ListProps> = ({
    children,
    className,
    rowed = false
}) => {
    return (
        <ul className={clsx(
            'list',
            rowed && 'list--rowed',
            className
        )}>
            {children}
        </ul>
    );
}
