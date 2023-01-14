import { IUser } from '../IUser';

export interface IComment {
    id: number;
    content: string;
    user: IUser
    created_at: string;
    updated_at: string;
}
