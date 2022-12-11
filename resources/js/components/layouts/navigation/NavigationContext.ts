import { createContext, Dispatch, SetStateAction } from 'react';

export interface NavigationContextProps {
    mobileNavigationOpen: boolean;
    setMobileNavigationOpen: Dispatch<SetStateAction<boolean>>;
}

export const NavigationContext = createContext<NavigationContextProps>({
    mobileNavigationOpen: false,
    setMobileNavigationOpen: () => undefined
});
