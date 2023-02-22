import { FC } from 'react';
import { css } from '@emotion/react';
import { useAuth } from '../../hooks/useAuth';
import { UserInfoPlatform } from './UserInfoPlatform';
import { Avatar } from '../avatar';
import { Wallet } from '../wallet';

export const UserInfo: FC = () => {
    const { user } = useAuth();

    return (
        <div
            css={() => css`
                flex: 1;
                display: flex;
                justify-content: right;
            `}
        >
            {user && (
                <Wallet
                    credits={user.data.credits}
                    currencies={user.data.active_currencies}
                />
            )}
            <UserInfoPlatform>
                <Avatar
                    css={css`
                        margin-top: -44px;
                        margin-left: 6px;
                    `}
                    figure={user ? user.data.look : 'hr-831-36.sh-3275-1328.lg-3058-82.ch-3185-110.he-3274-94.hd-190-2'}
                    action="sit"
                    direction={4}
                    headDirection={3}
                />
            </UserInfoPlatform>
        </div>
    );
};
