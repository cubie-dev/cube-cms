import { FC, HTMLAttributes, PropsWithChildren } from 'react';
import clsx from 'clsx';

const Container: FC<PropsWithChildren<HTMLAttributes<HTMLElement>>> = ({
    children,
    className
}) => {
    return (
        <div
            className={clsx('container mx-auto md:mx-auto', className)}
        >
            {children}
        </div>
    );
}

export {
    Container
}
