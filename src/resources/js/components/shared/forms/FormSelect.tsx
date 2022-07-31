import { ChangeEvent, FC, InputHTMLAttributes, SelectHTMLAttributes, useId, useState } from 'react';
import clsx from 'clsx';

export interface FormSelectProps extends Omit<SelectHTMLAttributes<HTMLSelectElement>, 'onChange'> {
    onChange: (value: string) => void;
}

export const FormSelect: FC<FormSelectProps> = ({
    id,
    onChange,
    children
}) => {
    const [focus, setFocus] = useState(false);

    id = id || useId();

    return (
        <label
            className={clsx(
                'form-control-container',
                focus && 'has-focus'
            )}
            htmlFor={id}
        >
            <select
                className="form-control"
                onFocus={() => setFocus(true)}
                onBlur={() => setFocus(false)}
                id={id}
                onChange={(event: ChangeEvent<HTMLSelectElement>) => onChange(event.target.value)}
            >
                {children}
            </select>
        </label>
    );
}
