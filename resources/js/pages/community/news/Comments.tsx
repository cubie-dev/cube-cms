import {
    FC,
    FormEvent,
    useEffect, useRef,
    useState
} from 'react';
import axios, { AxiosResponse } from 'axios';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faPencil } from '@fortawesome/pro-regular-svg-icons';
import { FormattedMessage, useIntl } from 'react-intl';
import { IArticle } from '../../../interfaces/community/IArticle';
import { Card, CardContent, CardHeader } from '../../../components/shared/card';
import {
    FormGroup,
    FormMessage,
    FormSelect,
    FormTextarea
} from '../../../components/shared/forms';
import { Spacing } from '../../../components/shared/utils';
import { useAxiosForm } from '../../../support/useAxiosForm';
import { Button } from '../../../components/shared/button';
import { Flex } from '../../../components/shared/utils/Flex';
import { IComment } from '../../../interfaces/community/IComment';
import { IDataObject } from '../../../interfaces/IDataObject';
import { Comment, CommentSkeleton } from './Comment';

export interface CommentsProps {
    article: IArticle;
}

export const Comments: FC<CommentsProps> = ({
    article,
}) => {
    const intl = useIntl();
    const [processing, setProcessing] = useState(true);
    const [comments, setComments] = useState<IComment[]>([]);
    const [sort, setSort] = useState('created_at');
    const {
        data,
        post,
        clearErrors,
        setData,
        errors,
        reset
    } = useAxiosForm({
        content: ''
    });
    const commentCardRef = useRef<HTMLDivElement>(null);

    const fetchComments = () => {
        axios.get(`/community/news/${article.slug}/comments`, {
            params: {
                sort
            }
        })
            .then((response: AxiosResponse<IDataObject<IComment[]>>) => {
                setComments(response.data.data);
            })
            .finally(() => {
                setProcessing(false);
            });
    };

    useEffect(() => {
        fetchComments();
    }, [sort]);

    const addComment = (comment: IComment) => {
        if (sort === 'created_at') {
            setComments([comment, ...comments]);
        } else {
            setComments([...comments, comment]);
        }
    };

    const onCommentSubmit = (event: FormEvent) => {
        event.preventDefault();

        clearErrors();

        post<IDataObject<IComment>>(`/community/news/${article.slug}/comments`, {
            onSuccess(successData: IDataObject<IComment>) {
                addComment(successData.data);
                reset('content');
            }
        });
    };

    return (
        <>
            <Flex justify="between">
                <Button
                    type="button"
                    variant="light"
                    onClick={() => {
                        commentCardRef.current?.scrollIntoView({
                            behavior: 'smooth'
                        });
                    }}
                    iconLeft={<FontAwesomeIcon icon={faPencil} />}
                >
                    <FormattedMessage id="community.news.write_comment_button" />
                </Button>
                <FormSelect
                    value={sort}
                    onChange={setSort}
                >
                    <option value="created_at">
                        <FormattedMessage id="community.news.oldest_comment_first_label" />
                    </option>
                    <option value="-created_at">
                        <FormattedMessage id="community.news.newest_comment_first_label" />
                    </option>
                </FormSelect>
            </Flex>
            <div className="article-comments--container">
                {processing
                    ? [1, 2, 3].map((i) => (<CommentSkeleton key={i} />))
                    : comments.map((comment: IComment) => (
                        <Comment key={comment.id} comment={comment} />
                    ))}
            </div>
            <Card ref={commentCardRef}>
                <CardHeader
                    title={intl.formatMessage({ id: 'community.news.comment_card_title' })}
                    iconClass="icon-pencil"
                    color="green-600"
                />
                <CardContent spacing={false}>
                    <form onSubmit={onCommentSubmit}>
                        <FormGroup invalid={!!errors.content}>
                            <FormTextarea
                                value={data.content}
                                onChange={(value: string) => setData('content', value)}
                                placeholder={intl.formatMessage({
                                    id: 'community.news.comment_placeholder'
                                })}
                                maxLength={1000}
                                expandsWithText
                            />
                            {errors.content && (
                                <FormMessage invalid>{errors.content}</FormMessage>
                            )}
                            <Spacing>
                                <Flex justify="between" align="center">
                                    <Button
                                        type="submit"
                                        variant="primary"
                                    >
                                        <FormattedMessage id="community.news.send_comment_button" />
                                    </Button>
                                    <FormMessage invalid={false} position="right">
                                        {data.content.length}
                                        /1000
                                    </FormMessage>
                                </Flex>
                            </Spacing>
                        </FormGroup>
                    </form>
                </CardContent>
            </Card>
        </>
    );
};
