import { FC, PropsWithChildren } from 'react';
import clsx from 'clsx';

export interface GridProps extends PropsWithChildren {
    cols: number;
    smCols?: number;
    mdCols?: number;
    gap?: number;
}

export const Grid: FC<GridProps> = ({
    children,
    cols,
    smCols,
    mdCols,
    gap = 8
}) => (
    <div
        className={clsx(
            'grid',
            `grid-cols-${cols}`,
            smCols && `sm:grid-cols-${smCols}`,
            mdCols && `md:grid-cols-${mdCols}`,
            `gap-${gap}`
        )}
    >
        {children}
    </div>
);
