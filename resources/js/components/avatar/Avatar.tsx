import { FC, PropsWithChildren, useCallback } from 'react';
import clsx from 'clsx';

export interface AvatarProps extends PropsWithChildren {
    figure: string;
    action?: 'sit';
    direction?: 1 | 2 | 3 | 4 | 5 | 6;
    headDirection?: 1 | 2 | 3 | 4 | 5 | 6;
    imgFormat?: 'png';
    headOnly?: boolean;
    size?: 's' | 'm' | 'l';
    gesture?: 'sml';
    outline?: 'white';
    className?: string;
}

export const Avatar: FC<AvatarProps> = ({
    figure,
    action = 'std',
    direction = 3,
    headDirection = 3,
    imgFormat = 'png',
    headOnly = false,
    size = 'm',
    gesture = 'sml',
    outline,
    className,
}) => {
    // @TODO avatar url from backend
    const makeUrl = useCallback(
        () => `https://www.habbo.nl/habbo-imaging/avatarimage?figure=${figure}&action=${action}&direction=${direction}&head_direction=${headDirection}&img_format=${imgFormat}&gesture=${gesture}&headonly=${headOnly ? 1 : 0}&size=${size})`,
        [figure]
    );

    return (
        <img
            className={clsx(
                'avatar',
                outline && `avatar--outline-${outline}`,
                className
            )}
            src={makeUrl()}
            alt="Avatar"
        />
    );
};
