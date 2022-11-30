import { FC } from 'react';
import { Link } from '@inertiajs/inertia-react';
import clsx from 'clsx';

export interface LogoProps {
    variant: string;
}

const Logo: FC<LogoProps> = ({ variant }) => {
    return (
        <Link href="/resources/js/pages">
            <div className={clsx('logo', `${variant}-logo`)} />
        </Link>
    );
}

export {
    Logo
}
