import { IArticle } from './IArticle';
import { usePage } from '@inertiajs/inertia-react';
import { Page as InertiaPage } from '@inertiajs/inertia';
import { SharedProps } from '../../../SharedProps';
import { Page } from '../../../components/page';
import { Card, CardContent, CardHeader, CardImage } from '../../../components/shared/card';
import { IDataObject } from '../../../interfaces/IDataObject';
import { FormattedMessage, useIntl } from 'react-intl';
import { format } from 'date-fns';
import { RecentNews } from './RecentNews';

export interface ArticleProps {
    article: IDataObject<IArticle>;
}

export default function Article() {
    const { props: { article } } = usePage<InertiaPage<SharedProps & ArticleProps>>();
    const intl = useIntl();

    return (
        <Page title="community.news.title">
            <div className="grid grid-cols-1 md:grid-cols-4 gap-8">
                <Card className="col-span-3">
                    <CardImage
                        className="discussion-image"
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
                            <i className="icon-clock"></i>
                            <span className="ml-2 card-created_at">
                            <FormattedMessage
                                id="community.news.written_on"
                                values={{
                                    date: format(new Date(article.data.created_at), intl.formatMessage({
                                        id: 'global.date_time_format'
                                    }))
                                }}
                            />
                        </span>
                        </div>
                    </CardContent>
                    <CardContent className="border-top ck-content">
                        {article.data.content}
                    </CardContent>
                </Card>
                <Card>
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
}