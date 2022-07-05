import { FC, HTMLAttributes, PropsWithChildren } from 'react';
import clsx from 'clsx';

export interface FormGroupProps extends PropsWithChildren<HTMLAttributes<HTMLDivElement>> {
    invalid?: boolean;
}

export const FormGroup: FC<FormGroupProps> = ({
    children,
    className,
    invalid
}) => {
    return (
        <div
            className={clsx(
                'form-group',
                invalid && 'form-group-invalid',
                className
            )}
        >
            {children}
        </div>
    );
}
