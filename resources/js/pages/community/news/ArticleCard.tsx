import { forwardRef } from 'react';
import { Card, CardProps } from '../../../components/card';

const ArticleCard = forwardRef<HTMLDivElement, CardProps>(({
    children
}, ref) => (
    <Card
        ref={ref}
    >
        {children}
    </Card>
));

ArticleCard.displayName = 'ArticleCard';

export {
    ArticleCard
};
