import { FC, InputHTMLAttributes, useId, useState } from 'react';
import clsx from 'clsx';

export interface FormInputProps extends Omit<InputHTMLAttributes<HTMLInputElement>, 'onChange'> {
    onChange: (value: string) => void;
}

export const FormInput: FC<FormInputProps> = ({
    id,
    type,
    onChange
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
            <input
                className="form-control"
                onFocus={() => setFocus(true)}
                onBlur={() => setFocus(false)}
                id={id}
                type={type}
                onChange={(event: React.ChangeEvent<HTMLInputElement>) => onChange(event.target.value)}
            />
        </label>
    );
}

