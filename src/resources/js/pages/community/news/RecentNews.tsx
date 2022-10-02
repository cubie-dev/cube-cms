import { useEffect, useState } from 'react';
import { IArticle } from './IArticle';
import axios, { AxiosResponse } from 'axios';
import { IResponse } from '../../../interfaces/IResponse';
import { List, ListItem } from '../../../components/shared/list';
import { useIntl } from 'react-intl';
import { localeFormat } from '../../../support/localeFormat';

export const RecentNews = () => {
    // null is not loaded yet
    const [processing, setProcessing] = useState(true);
    const [articles, setArticles] = useState<IArticle[] | null>(null);

    const intl = useIntl();

    useEffect(() => {
        axios
            .get('/community/news/recent')
            .then((response: AxiosResponse<IResponse<IArticle[]>>) => {
                setArticles(response.data.data);
            })
            .finally(() => {
                setProcessing(false);
            });
        }, []);

    return (
        <>
            {processing ? 'Loading...' : (
                <List>
                    {!processing && articles?.map((article: IArticle) => (
                        <ListItem>
                            <a
                                className="list-item-link"
                                href={route('community.news.article', [article.slug])}
                            >
                                <span className="list-item-link__timestamp">
                                    {localeFormat(new Date(article.created_at), intl.formatMessage({
                                        id: 'global.short_date_format'
                                    }))}
                                </span>
                                <span className="list-item-link__text text--primary">{article.title}</span>
                            </a>
                        </ListItem>
                    ))}
                </List>
            )}
        </>
    );
}
