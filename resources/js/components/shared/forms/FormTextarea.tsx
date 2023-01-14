import {
    ChangeEvent,
    FC,
    TextareaHTMLAttributes,
    useId,
    useRef,
    useState
} from 'react';
import clsx from 'clsx';

export interface FormTextareaProps extends Omit<TextareaHTMLAttributes<HTMLTextAreaElement>, 'onChange'> {
    onChange: (value: string) => void;
    expandsWithText?: boolean;
    rows?: number;
}

export const FormTextarea: FC<FormTextareaProps> = ({
    id,
    onChange: onChangeProp,
    expandsWithText,
    rows = 2,
    ...rest
}) => {
    const [focus, setFocus] = useState(false);
    const ref = useRef<HTMLTextAreaElement>(null);
    const idAttr = id || useId();

    const onChange = (value: string) => {
        if (expandsWithText && ref.current) {
            const textRows = value.split('\n').length;
            ref.current.rows = textRows > rows ? textRows : rows;
        }

        onChangeProp(value);
    };

    return (
        <label
            className={clsx(
                'form-control-container',
                focus && 'has-focus'
            )}
            htmlFor={idAttr}
        >
            <textarea
                ref={ref}
                className="form-control"
                onFocus={() => setFocus(true)}
                onBlur={() => setFocus(false)}
                rows={rows}
                id={idAttr}
                onChange={(event: ChangeEvent<HTMLTextAreaElement>) => onChange(event.target.value)}
                {...rest}
            />
        </label>
    );
};
