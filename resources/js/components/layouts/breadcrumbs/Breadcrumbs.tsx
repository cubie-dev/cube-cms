import { FC, useMemo } from 'react';
import { IBreadcrumbs } from '../../../interfaces/IBreadcrumbs';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faHome } from '@fortawesome/pro-regular-svg-icons';
import clsx from 'clsx';
import { Link } from '@inertiajs/inertia-react';

export interface BreadcrumbsProps {
    breadcrumbs: IBreadcrumbs;
}

export const Breadcrumbs: FC<BreadcrumbsProps> = ({
    breadcrumbs
}) => {
    const items = useMemo(() => {
        return breadcrumbs.map((item, index) => {
            return (
                <Link
                    href={item.url}
                    key={index}
                    className={clsx(
                        'breadcrumb',
                        item.home && 'home'
                    )}
                >
                    {item.home ? <FontAwesomeIcon icon={faHome} /> : item.title}
                </Link>
            );
        });
    }, [JSON.stringify(breadcrumbs)]);

    return (
        <div className="breadcrumbs">
            {items}
        </div>
    )
};
