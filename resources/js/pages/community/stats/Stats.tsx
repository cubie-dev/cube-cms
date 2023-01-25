import { FC } from 'react';
import type { Page as PageInterface } from '@inertiajs/core';
import { usePage } from '@inertiajs/react';
import { useIntl } from 'react-intl';
import { Page } from '../../../components/page';
import { IStatUser } from '../../../interfaces/community/stats/IStatUser';
import { IDataObject } from '../../../interfaces/IDataObject';
import {
    Card,
    CardContent,
    CardHeader,
    CardImage
} from '../../../components/card';
import { Grid } from '../../../components/grid';
import { List, ListItem } from '../../../components/list';
import { SharedProps } from '../../../SharedProps';
import { Avatar } from '../../../components/avatar';
import { Currency } from '../../../components/currency/Currency';

export interface StatsPageProps {
    stats: IDataObject<Record<string, IStatUser[]>>; // @TODO
}

const Stats: FC = () => {
    const { props: { stats } } = usePage() as PageInterface<SharedProps & StatsPageProps>;
    const intl = useIntl();

    return (
        <Page title="Stats">
            <Grid cols={1} smCols={2} mdCols={3} gap={8}>
                {Object.keys(stats.data).map((type: string) => (
                    <Card key={type}>
                        <CardImage className="card-image__top-users">
                            <div className="olympus" />
                            <div className="podium">
                                {stats.data[type].length > 0 && (
                                    <Avatar
                                        className="stats-avatar--first"
                                        figure={stats.data[type][0].look}
                                        direction={3}
                                        headDirection={3}
                                    />
                                )}
                                {stats.data[type].length > 1 && (
                                    <Avatar
                                        className="stats-avatar--second"
                                        figure={stats.data[type][1].look}
                                    />
                                )}
                                {stats.data[type].length > 2 && (
                                    <Avatar
                                        className="stats-avatar--third"
                                        figure={stats.data[type][2].look}
                                        direction={2}
                                        headDirection={2}
                                    />
                                )}
                            </div>
                            <div className="trophy" />
                        </CardImage>
                        <CardHeader
                            title={intl.formatMessage({ id: `community.stats.${type}.title` })}
                            subTitle={intl.formatMessage({ id: `community.stats.${type}.subtitle` })}
                        />
                        <CardContent spacing={false}>
                            <List rowed>
                                {stats.data[type].map((statUser: IStatUser) => (
                                    <ListItem className="list-item--user" key={statUser.id}>
                                        <Avatar
                                            figure={statUser.look}
                                            direction={2}
                                        />
                                        <strong>{statUser.username}</strong>
                                        <Currency
                                            type={type}
                                            amount={statUser.amount}
                                            className="ml-auto"
                                        />
                                    </ListItem>
                                ))}
                            </List>
                        </CardContent>
                    </Card>
                ))}
            </Grid>
        </Page>
    );
};

export default Stats;
