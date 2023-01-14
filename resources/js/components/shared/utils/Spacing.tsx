import { FC, PropsWithChildren } from 'react';

export const Spacing: FC<PropsWithChildren> = ({
    children
}) => (
    <div className="spacer">
        {children}
    </div>
);
