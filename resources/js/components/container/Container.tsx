import { FC, HTMLAttributes, PropsWithChildren } from 'react';
import clsx from 'clsx';

export const Container: FC<PropsWithChildren<HTMLAttributes<HTMLElement>>> = ({
    children,
    className
}) => (
    <div
        className={clsx('container mx-auto md:mx-auto', className)}
    >
        {children}
    </div>
);
