import { FC } from 'react';
import { SidePanel } from '../../shared/panel/SidePanel';
import { NavigationContext } from './NavigationContext';
import { useRoutes } from '../../../config/useRoutes';
import { NavigationItem } from './NavigationItem';

export const MobileNavigation: FC = () => {
    const routes = useRoutes();

    return (
        <NavigationContext.Consumer>
            {({ mobileNavigationOpen, setMobileNavigationOpen }) => (
                <SidePanel
                    open={mobileNavigationOpen}
                    position="left"
                    onPanelClosed={() => setMobileNavigationOpen(false)}
                >
                    <div className="mobile-nav">
                        <ul className="nav__list">
                            {routes.map((route) => (
                                <NavigationItem
                                    key={route.path + route.text}
                                    route={route}
                                    showChildrenOnClick
                                />
                            ))}
                        </ul>
                    </div>
                </SidePanel>
            )}
        </NavigationContext.Consumer>
    );
};
