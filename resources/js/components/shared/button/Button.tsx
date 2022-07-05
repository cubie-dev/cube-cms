import { ButtonHTMLAttributes, FC, PropsWithChildren } from 'react';
import { Variant } from '../../../interfaces/Variant';
import clsx from 'clsx';

export interface ButtonProps extends PropsWithChildren<ButtonHTMLAttributes<HTMLButtonElement>> {
    variant?: Variant;
    loading?: boolean;
    fw?: boolean;
    small?: boolean;
    huge?: boolean;
}

export const Button: FC<ButtonProps> = ({
  children,
    loading,
    variant = 'primary',
    huge,
    small,
    fw
}) => {
    return (
        <button
            className={clsx(
                'btn',
                `btn-${variant}`,
                loading && 'btn-loading',
                huge && 'btn-huge',
                small && 'btn-small',
                fw && 'btn-fw',
            )}
        >
            {children}
        </button>
    );
}
