import { FC, useState } from 'react';
import clsx from 'clsx';
import { AnimatePresence, motion } from 'framer-motion';
import { Route } from '../../../config/Route';

export interface NavigationItemProps {
    route: Route;
    showChildrenOnClick?: boolean;
}

export const NavigationItem: FC<NavigationItemProps> = ({
    route,
    showChildrenOnClick = false
}) => {
    const [open, setOpen] = useState(false);

    return (
        <li
            className={clsx(
                'nav__list-item',
                route.color && `nav__list-item--${route.color}`,
                route.icon && `nav__list-item-icon nav__list-item-icon--${route.icon}`
            )}
        >
            <button
                type="button"
                className="nav__list-item-link"
                onClick={showChildrenOnClick
                    ? () => setOpen((prevState: boolean) => !prevState)
                    : undefined}
            >
                {route.text}
            </button>
            <AnimatePresence>
                {(!showChildrenOnClick || open) && route.children?.length && (
                    <motion.ul
                        className={clsx(
                            'nav__dropdown',
                            open && showChildrenOnClick && 'nav__dropdown--open'
                        )}
                        initial={showChildrenOnClick ? { height: 0 } : undefined}
                        animate={showChildrenOnClick ? { height: open ? 'auto' : 0 } : undefined}
                        exit={showChildrenOnClick ? { height: 0 } : undefined}
                    >
                        {route.children?.map((childRoute: Route) => (
                            <li
                                key={childRoute.path + childRoute.text}
                                className="nav__dropdown-item"
                            >
                                <a href={childRoute.path} className="nav__dropdown-link">
                                    {childRoute.text}
                                </a>
                            </li>
                        ))}
                    </motion.ul>
                )}
            </AnimatePresence>
        </li>
    );
};
