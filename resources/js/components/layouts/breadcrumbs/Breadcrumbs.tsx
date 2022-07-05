import { FC, useMemo } from 'react';
import { IBreadcrumbs } from '../../../interfaces/IBreadcrumbs';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faHome } from '@fortawesome/pro-regular-svg-icons';
import clsx from 'clsx';

export interface BreadcrumbsProps {
    breadcrumbs: IBreadcrumbs;
}

export const Breadcrumbs: FC<BreadcrumbsProps> = ({
    breadcrumbs
}) => {
    const items = useMemo(() => {
        return breadcrumbs.map((item, index) => {
            return (
                <a
                    href={item.url}
                    key={index}
                    className={clsx(
                        'breadcrumb',
                        item.home && 'home'
                    )}
                >
                    {item.home ? <FontAwesomeIcon icon={faHome} /> : item.title}
                </a>
            );
        });
    }, [JSON.stringify(breadcrumbs)]);

    return (
        <div className="breadcrumbs">
            {items}
        </div>
    )
};
