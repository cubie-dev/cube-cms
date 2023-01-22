import { FC, HTMLAttributes, PropsWithChildren } from 'react';
import clsx from 'clsx';

export interface FormMessageProps extends PropsWithChildren<HTMLAttributes<HTMLDivElement>> {
    invalid: boolean;
    position?: 'left' | 'right';
}

export const FormMessage: FC<FormMessageProps> = ({
    children,
    invalid,
    position = 'left'
}) => (
    <div
        className={clsx(
            'form-message',
            invalid && 'form-message-invalid',
            `form-message--${position}`
        )}
    >
        {children}
    </div>
);
