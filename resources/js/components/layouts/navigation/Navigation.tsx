import { FC } from 'react';
import clsx from 'clsx';
import { useRoutes } from '../../../config/useRoutes';
import { NavigationItem } from './NavigationItem';
import { Container } from '../../shared/container';

export const Navigation: FC = () => {
    const routes = useRoutes();

    return (
        <nav
            className={clsx(
                'nav',
            )}
        >
            <Container>
                <ul className="nav__list">
                    {routes.map((route) => (
                        <NavigationItem
                            route={route}
                            key={route.path + route.text}
                        />
                    ))}
                </ul>
            </Container>
        </nav>
    );
};
