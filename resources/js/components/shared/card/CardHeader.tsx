import { FC, HTMLAttributes, PropsWithChildren, ReactNode } from 'react';
import clsx from 'clsx';

export interface CardHeaderProps extends PropsWithChildren<Omit<HTMLAttributes<HTMLDivElement>, 'title'>> {
    title?: ReactNode;
    subTitle?: ReactNode;
    color?: any; //@todo
    iconClass?: string;
}

export const CardHeader: FC<CardHeaderProps> = ({
    children,
    className,
    color,
    iconClass,
    title,
    subTitle
}) => {
    return (
        <div
            className={clsx(
                'card-header',
                className
            )}
        >
            <div className="card-header-title-container">
                {iconClass && (
                    <div
                        className={clsx(
                            'card-header-icon-container',
                            color && `bg-${color}`
                        )}
                    >
                        <div className={clsx(
                            'header-icon',
                            iconClass
                        )}></div>
                    </div>
                )}
                {title && (
                    <div className="card-header-titles">
                        <h2 className="card-header-title">{ title }</h2>
                        {subTitle && (
                            <p className="card-header-subtitle">{ subTitle }</p>
                        )}
                    </div>
                )}
            </div>
            <div className="card-header-actions">
                {children}
            </div>
        </div>
    );
}
