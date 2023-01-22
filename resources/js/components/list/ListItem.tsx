import { FC, HTMLAttributes, PropsWithChildren } from 'react';
import clsx from 'clsx';

export type ListItemProps = PropsWithChildren<HTMLAttributes<HTMLDivElement>>;

export const ListItem: FC<ListItemProps> = ({
    children,
    className,
}) => (
    <li
        className={clsx(
            'list-item',
            className
        )}
    >
        {children}
    </li>
);
