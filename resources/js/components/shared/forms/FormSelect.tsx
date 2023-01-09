import {
    ChangeEvent,
    FC,
    SelectHTMLAttributes,
    useId,
    useState
} from 'react';
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

    const groupId = id || useId();

    return (
        <label
            className={clsx(
                'form-control-container',
                focus && 'has-focus'
            )}
            htmlFor={groupId}
        >
            <select
                className="form-control"
                onFocus={() => setFocus(true)}
                onBlur={() => setFocus(false)}
                id={groupId}
                onChange={(event: ChangeEvent<HTMLSelectElement>) => onChange(event.target.value)}
            >
                {children}
            </select>
        </label>
    );
};
