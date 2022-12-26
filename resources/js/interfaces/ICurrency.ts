export interface ICurrency {
    amount: number;
    type: {
        id: number;
        name: string;
        active: boolean;
    };
    icon_url?: string;
}
