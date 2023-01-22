import { FC } from 'react';
import { Page } from '../../components/page';
import { Grid } from '../../components/grid';
import { RecentNews } from './RecentNews';

const Me: FC = () => (
    <Page title="Me">
        <Grid cols={1} smCols={6} gap={8}>
            <div className="col-span-5">
                <RecentNews />
            </div>
        </Grid>
    </Page>
);

export default Me;
