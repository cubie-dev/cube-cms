import { FC, PropsWithChildren } from 'react';

export const List: FC<PropsWithChildren> = ({ children }) => {
    return (
        <ul className="list">
            {children}
        </ul>
    );
}
