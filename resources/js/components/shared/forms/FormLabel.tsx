import clsx from 'clsx';
import { FC, LabelHTMLAttributes, PropsWithChildren } from 'react';

export const FormLabel: FC<PropsWithChildren<LabelHTMLAttributes<HTMLLabelElement>>> = ({
    children,
    className,
    htmlFor
}) => (
    <label
        className={clsx(
            'form-label',
            className
        )}
        htmlFor={htmlFor}
    >
        {children}
    </label>
);
