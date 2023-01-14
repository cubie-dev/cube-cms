import { FC } from 'react';
import clsx from 'clsx';
import { IRole } from '../../../interfaces/auth/IRole';

export interface RoleBadgeProps {
    role: IRole;
}
export const RoleBadge: FC<RoleBadgeProps> = ({
    role
}) => (
    <div
        className={clsx(
            'role-badge'
        )}
    >
        {role.name}
    </div>
);
