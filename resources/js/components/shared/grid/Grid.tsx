import { FC, PropsWithChildren } from 'react';
import clsx from 'clsx';

export interface GridProps extends PropsWithChildren {
    cols: number;
    smCols?: number;
    gap?: number;
}

export const Grid: FC<GridProps> = ({
    children,
    cols,
    smCols,
    gap = 8
}) => {
    return (
        <div
            className={clsx(
                'grid',
                `grid-cols-${cols}`,
                smCols && `sm:grid-cols-${smCols}`,
                `gap-${gap}`
            )}
        >
            {children}
        </div>
    );
}
