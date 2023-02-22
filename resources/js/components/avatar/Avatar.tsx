import {
    FC,
    ImgHTMLAttributes,
    PropsWithChildren,
    useCallback
} from 'react';
import { css } from '@emotion/react';

export interface AvatarProps extends ImgHTMLAttributes<HTMLImageElement> {
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

export const Avatar: FC<PropsWithChildren<AvatarProps>> = ({
    figure,
    action = 'std',
    direction = 3,
    headDirection = 3,
    imgFormat = 'png',
    headOnly = false,
    size = 'm',
    gesture = 'sml',
    outline,
    alt,
    ...rest
}) => {
    // @TODO avatar url from backend
    const makeUrl = useCallback(
        () => `https://www.habbo.nl/habbo-imaging/avatarimage?figure=${figure}&action=${action}&direction=${direction}&head_direction=${headDirection}&img_format=${imgFormat}&gesture=${gesture}&headonly=${headOnly ? 1 : 0}&size=${size})`,
        [figure]
    );

    return (
        <img
            css={() => css`
                image-rendering: pixelated;

                ${outline === 'white' && css`
                    filter: drop-shadow(0 1px 0 #FFF) drop-shadow(0 -1px 0 #FFF) drop-shadow(1px 0 0 #FFF) drop-shadow(-1px 0 0 #FFF) drop-shadow(0 0 10px transparent);
                `}
            `}
            src={makeUrl()}
            alt={alt || 'Avatar'}
            {...rest}
        />
    );
};
