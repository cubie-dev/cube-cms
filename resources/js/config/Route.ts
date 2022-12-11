export interface Route {
    path: string;
    text: string;
    icon?: 'duck' | 'newspaper' | 'info' | 'box' | 'coins' | 'what';
    children?: Omit<Route, 'color' | 'icon'>[];
    color?: 'blue' | 'green' | 'yellow' | 'red' | 'purple' | 'orange';
}
