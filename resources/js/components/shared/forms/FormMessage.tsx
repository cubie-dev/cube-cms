import { FC, HTMLAttributes, PropsWithChildren } from 'react';
import clsx from 'clsx';

export interface FormMessageProps extends PropsWithChildren<HTMLAttributes<HTMLDivElement>> {
    invalid: boolean;
}

export const FormMessage: FC<FormMessageProps> = ({
    children,
    invalid
}) => {
    return (
        <div
            className={clsx(
                'form-message',
                invalid && 'form-message-invalid'
            )}
        >
            {children}
        </div>
    );
}
