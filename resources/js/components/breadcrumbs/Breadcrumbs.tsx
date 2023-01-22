import { FC, useMemo } from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faHome } from '@fortawesome/pro-regular-svg-icons';
import clsx from 'clsx';
import { Link } from '@inertiajs/react';
import { IBreadcrumb, IBreadcrumbs } from '../../interfaces/IBreadcrumbs';

export interface BreadcrumbsProps {
    breadcrumbs: IBreadcrumbs;
}

export const Breadcrumbs: FC<BreadcrumbsProps> = ({
    breadcrumbs
}) => {
    const items = useMemo(() => (
        breadcrumbs.map((item: IBreadcrumb, index) => (
            <>
                <Link
                    href={item.url}
                    // eslint-disable-next-line react/no-array-index-key
                    key={item.title + item.url}
                    className={clsx(
                        'breadcrumb',
                        item.home && 'home'
                    )}
                >
                    {item.home ? <FontAwesomeIcon icon={faHome} /> : item.title}
                </Link>
                {index !== 0
                    && index < breadcrumbs.length - 1
                    && <span className="breadcrumb-divider">{'>'}</span>}
            </>
        ))
    ), [JSON.stringify(breadcrumbs)]);

    return (
        <div className="breadcrumbs">
            {items}
        </div>
    );
};
