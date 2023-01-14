import { FC } from 'react';
import { Link } from '@inertiajs/inertia-react';
import clsx from 'clsx';

export interface LogoProps {
    variant: string;
}

export const Logo: FC<LogoProps> = ({ variant }) => (
    <Link href="/">
        <div className={clsx('logo', `${variant}-logo`)} />
    </Link>
);
