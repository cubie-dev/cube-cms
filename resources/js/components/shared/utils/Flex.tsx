import clsx from 'clsx';
import { FC, PropsWithChildren } from 'react';

export interface FlexProps {
    justify?: 'start' | 'end' | 'center' | 'between' | 'space-around';
    align?: 'start' | 'end' | 'center' | 'stretch' | 'baseline';
}

export const Flex: FC<PropsWithChildren<FlexProps>> = ({
    justify,
    align,
    children
}) => (
    <div
        className={clsx(
            'flex',
            justify && `justify-${justify}`,
            align && `items-${align}`
        )}
    >
        {children}
    </div>
);
