import { FC } from 'react';
import { FormattedMessage, useIntl } from 'react-intl';
import { format } from 'date-fns';
import Skeleton from 'react-loading-skeleton';
import { IComment } from '../../../interfaces/community/IComment';
import { Avatar } from '../../../components/avatar';
import { Card } from '../../../components/card';
import { RoleBadge } from '../../../components/role/RoleBadge';

export interface CommentProps {
    comment: IComment;
}

export const CommentSkeleton: FC = () => (
    <Card className="mb-4 comment-card">
        <div style={{ width: '25%' }}>
            <Skeleton height="165px" />
        </div>
        <div className="comment-card__content">
            <div className="comment-card__content-header">
                <Skeleton width="50%" />
            </div>
            <div className="comment-card__content-body">
                <Skeleton count={4} />
            </div>
        </div>
    </Card>
);

export const Comment: FC<CommentProps> = ({
    comment
}) => {
    const intl = useIntl();

    return (
        <Card className="mb-4 comment-card">
            <div className="comment-card__avatar">
                <Avatar
                    figure={comment.user.look}
                    headOnly
                    outline="white"
                />
                <h3>{comment.user.username}</h3>
                <RoleBadge role={comment.user.role!} />
            </div>
            <div className="comment-card__content">
                <div className="comment-card__content-header">
                    <FormattedMessage
                        id="community.news.written_on"
                        values={{
                            date: format(new Date(comment.created_at), intl.formatMessage({
                                id: 'global.date_time_format'
                            }))
                        }}
                    />
                </div>
                <div className="comment-card__content-body">
                    {comment.content}
                </div>
            </div>
        </Card>
    );
};
