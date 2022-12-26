import { ButtonHTMLAttributes, createElement, FC, PropsWithChildren, ReactNode } from 'react';
import { Variant } from '../../../interfaces/Variant';
import clsx from 'clsx';
import { Link } from '@inertiajs/inertia-react';

export interface ButtonProps extends PropsWithChildren<ButtonHTMLAttributes<HTMLButtonElement>> {
    variant?: Variant;
    loading?: boolean;
    fw?: boolean;
    small?: boolean;
    huge?: boolean;
    iconLeft?: ReactNode;
    href?: string;
}

export const Button: FC<ButtonProps> = ({
    children,
    loading,
    variant = 'primary',
    huge,
    small,
    fw,
    className,
    iconLeft,
    href,
    onClick
}) => {

    return createElement(href ? Link : 'button',
        {
            className: clsx(
                'btn',
                `btn-${variant}`,
                loading && 'btn-loading',
                huge && 'btn-huge',
                small && 'btn-small',
                fw && 'btn-fw',
                className
            ),
            href: href || '',
            onClick: (onClick as any)
        },
        <>
            {!!iconLeft && (
                <div className="icon-container-left">
                    {iconLeft}
                </div>
            )}
            {children}
        </>
    );
}
