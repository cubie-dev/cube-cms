import { FormattedMessage, useIntl } from 'react-intl';
import { usePage } from '@inertiajs/react';
import type { Page as InertiaPage } from '@inertiajs/core';
import { format } from 'date-fns';
import { FC } from 'react';
import { IArticle } from '../../../interfaces/community/IArticle';
import { SharedProps } from '../../../SharedProps';
import { Page } from '../../../components/page';
import {
    Card,
    CardContent,
    CardHeader,
    CardImage
} from '../../../components/card';
import { IDataObject } from '../../../interfaces/IDataObject';
import { RecentNews } from './RecentNews';
import { Comments } from './Comments';

export interface ArticleProps {
    article: IDataObject<IArticle>;
}

const Article: FC = () => {
    const { props: { article } } = usePage() as InertiaPage<SharedProps & ArticleProps>;
    const intl = useIntl();

    return (
        <Page title="community.news.title">
            <div className="grid grid-cols-1 md:grid-cols-4 gap-8">
                <div className="col-span-3">
                    <Card>
                        <CardImage
                            className="card-image--article"
                            url={article.data.image_path}
                            backgroundColor={article.data.color || undefined}
                            textColor={article.data.text_color || undefined}
                        >
                            <div>
                                <h2>{article.data.title}</h2>
                                <span>{article.data.description}</span>
                            </div>
                        </CardImage>
                        <CardContent spacing={false}>
                            <div className="flex items-center py-4 px-6">
                                <i className="icon-clock" />
                                <span className="ml-2 card-created_at">
                                    <FormattedMessage
                                        id="community.news.written_on"
                                        values={{
                                            date: format(
                                                new Date(article.data.created_at),
                                                intl.formatMessage({
                                                    id: 'global.date_time_format'
                                                })
                                            )
                                        }}
                                    />
                                </span>
                            </div>
                        </CardContent>
                        <CardContent className="border-top ck-content">
                            {article.data.content}
                        </CardContent>
                    </Card>
                    <section className="article-comments--section">
                        <Comments article={article.data} />
                    </section>
                </div>
                <Card className="self-baseline">
                    <CardHeader
                        title={<FormattedMessage id="community.news.recent_news_title" />}
                    />
                    <CardContent>
                        <RecentNews />
                    </CardContent>
                </Card>
            </div>
        </Page>
    );
};

export default Article;
