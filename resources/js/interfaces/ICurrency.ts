export interface ICurrency {
    amount: number;
    type: { // @TODO interface
        id: number;
        name: string;
        active: boolean;
    };
    icon_url?: string;
}
