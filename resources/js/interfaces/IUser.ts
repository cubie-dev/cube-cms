import { IRole } from './auth/IRole';

export interface IUser {
    id: number;
    username: string;
    look: string;
    motto: string;
    role?: IRole;
    active_badges?:
}
