import { CSSProperties, FC, HTMLAttributes, PropsWithChildren, useMemo } from 'react';
import clsx from 'clsx';

export interface CardImageProps extends PropsWithChildren<HTMLAttributes<HTMLDivElement>> {
    top?: boolean;
    url?: string;
    backgroundColor?: string | null;
    textColor?: string;
}

const CardImage: FC<CardImageProps> = ({
    children,
    top = true,
    url,
    backgroundColor,
    textColor,
    className
}) => {
    const dynamicStyles = useMemo<Partial<CSSProperties>>(() => {
        const styles: Partial<CSSProperties> = {};

        if (url) {
            styles.backgroundImage = `url(${url})`;
        }

        if (backgroundColor) {
            styles.backgroundColor = backgroundColor;
        }

        if (textColor) {
            styles.color = textColor;
        }

        return styles;
    }, [url, backgroundColor, textColor]);

    return (
        <div
            className={clsx(
                'card-image',
                top && 'card-image-top',
                className
            )}
            style={dynamicStyles}
        >
            {children}
        </div>
    );
}

export {
    CardImage
}
