import { FC, useMemo } from 'react';
import { Variant } from '../../../interfaces/Variant';
import clsx from 'clsx';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faCheckCircle, faXmarkCircle, faExclamationCircle, faInfoCircle } from '@fortawesome/pro-regular-svg-icons';

export interface MessageProps {
    content: string;
    type: Variant;
}

const Message: FC<MessageProps> = ({
    content,
    type
}) => {
    const icon = useMemo(() => {
        switch (type) {
            case 'success':
                return <FontAwesomeIcon icon={faCheckCircle} />;
            case 'danger':
                return <FontAwesomeIcon icon={faXmarkCircle} />;
            case 'warning':
                return <FontAwesomeIcon icon={faExclamationCircle} />;
            case 'info':
            default:
                return <FontAwesomeIcon icon={faInfoCircle} />
        }
    }, [type])

    return (
        <div
            className={clsx(
                'message',
                `message-${type}`
            )}
        >
            <div className="message-icon">
                {icon}
            </div>
            <div className="message-content">
                <div className="message-title">
                    {content}
                </div>
            </div>
        </div>
    );
}

export {
    Message
}
