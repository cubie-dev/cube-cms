import React, { useEffect, useState } from 'react';
import axios, { AxiosResponse } from 'axios';
import { useIntl } from 'react-intl';
import Skeleton from 'react-loading-skeleton';
import { IArticle } from '../../interfaces/community/IArticle';
import { IResponse } from '../../interfaces/IResponse';
import { localeFormat } from '../../support/localeFormat';
import {
    Card,
    CardContent,
    CardHeader,
    CardImage
} from '../../components/shared/card';
import { Grid } from '../../components/shared/grid';

export const RecentNews = () => {
    const [processing, setProcessing] = useState(true);
    const [articles, setArticles] = useState<IArticle[] | null>(null);

    const intl = useIntl();

    useEffect(() => {
        axios
            .get('/community/news/recent/2')
            .then((response: AxiosResponse<IResponse<IArticle[]>>) => {
                setArticles(response.data.data);
            })
            .finally(() => {
                setProcessing(false);
            });
    }, []);

    const renderSkeleton = () => (
        [1, 2].map((i) => (
            <Card key={i}>
                <Skeleton height={100} />
                <CardContent>
                    <Skeleton width="50%" />
                    <Skeleton />
                </CardContent>
            </Card>
        ))
    );

    return (
        <Grid cols={1} gap={8} smCols={2}>
            {processing ? renderSkeleton() : (
                articles?.map((article: IArticle) => (
                    <a
                        key={article.id}
                        className="card-link"
                        href={`community/news/${article.slug}`}
                    >
                        <Card
                            className="article-card"
                            badge={localeFormat(article.created_at, intl.formatMessage({
                                id: 'global.short_date_format'
                            }))}
                        >
                            <CardImage
                                backgroundColor={article.color}
                                url={article.image_path}
                            />
                            <CardHeader
                                title={article.title}
                                subTitle={article.description}
                            />
                        </Card>
                    </a>
                ))
            )}
        </Grid>
    );
};
