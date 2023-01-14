import { ICurrency } from './ICurrency';
import { IRole } from './auth/IRole';

export interface ILoggedInUser {
    id: number;
    username: string;
    look: string;
    motto: string;
    credits: number;
    active_currencies: ICurrency[];
    role: IRole;
}
