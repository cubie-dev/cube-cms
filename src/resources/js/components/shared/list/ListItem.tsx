import { FC, HTMLAttributes, PropsWithChildren } from 'react';
import clsx from 'clsx';

export interface ListItemProps extends PropsWithChildren<HTMLAttributes<HTMLDivElement>> {
    spacing?: boolean;
}

export const ListItem: FC<ListItemProps> = ({
    children,
    className,
    spacing = true
}) => {
    return (
        <li
            className={clsx(
                'list-item',
                !spacing && 'no-padding',
                className
            )}
        >
            {children}
        </li>
    );
}
