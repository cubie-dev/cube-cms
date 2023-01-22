import {
    ChangeEvent,
    FC,
    InputHTMLAttributes,
    useId,
    useState
} from 'react';
import clsx from 'clsx';

export interface FormInputProps extends Omit<InputHTMLAttributes<HTMLInputElement>, 'onChange'> {
    // @TODO
    // eslint-disable-next-line no-unused-vars
    onChange: (value: string) => void;
}

export const FormInput: FC<FormInputProps> = ({
    id,
    type,
    onChange
}) => {
    const [focus, setFocus] = useState(false);

    const idAttr = id || useId();

    return (
        <label
            className={clsx(
                'form-control-container',
                focus && 'has-focus'
            )}
            htmlFor={idAttr}
        >
            <input
                className="form-control"
                onFocus={() => setFocus(true)}
                onBlur={() => setFocus(false)}
                id={idAttr}
                type={type}
                onChange={(event: ChangeEvent<HTMLInputElement>) => onChange(event.target.value)}
            />
        </label>
    );
};
