import {
    forwardRef,
    HTMLAttributes,
    PropsWithChildren
} from 'react';
import clsx from 'clsx';

export interface CardProps extends PropsWithChildren<HTMLAttributes<HTMLDivElement>> {
    badge?: string;
}

const Card = forwardRef<HTMLDivElement, CardProps>(({
    badge,
    children,
    className
}, ref) => (
    <div
        ref={ref}
        className={clsx(
            'card',
            className
        )}
    >
        {badge && (
            <div className="card-badge">
                {badge}
            </div>
        )}
        {children}
    </div>
));

Card.displayName = 'Card';

export {
    Card
};
