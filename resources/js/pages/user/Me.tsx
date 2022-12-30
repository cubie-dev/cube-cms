import { Page } from '../../components/page';
import React from 'react';
import { Grid } from '../../components/shared/grid';
import { RecentNews } from './RecentNews';

export default function Me() {
    return (
        <Page title="Me">
            <Grid cols={1} smCols={6} gap={8}>
                <div className="col-span-5">
                    <RecentNews />
                </div>
            </Grid>
        </Page>
    );
}
