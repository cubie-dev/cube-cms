import { FC } from 'react';
import { usePage } from '@inertiajs/react';
import { Page as PageInterface } from '@inertiajs/core';
import { SharedProps } from '../../../SharedProps';
import { Grid } from '../../../components/grid';

export interface StaffProps {
    roles: any; // @TODO
}

const Staff: FC = () => {
    const { props: { roles } } = usePage() as PageInterface<SharedProps & StaffProps>;

    return (
        <Grid cols={1} mdCols={3}>
            <div className="col-span-2">
                <Grid cols={1} mdCols={2}>
                    {roles.map((role: any) => role.users.map((user: any) => ())}
                </Grid>
            </div>
        </Grid>
    );
};

export default Staff;
