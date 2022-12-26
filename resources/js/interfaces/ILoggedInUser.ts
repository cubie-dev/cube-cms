import { ICurrency } from './ICurrency';

export interface ILoggedInUser {
    id: number;
    username: string;
    look: string;
    motto: string;
    credits: number;
    pixels: number;
    duckets: number;
    active_currencies: ICurrency[];
}
