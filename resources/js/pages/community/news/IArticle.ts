import { IUser } from '../../../interfaces/IUser';

export interface IArticle {
    id: number;
    slug: string;
    title: string;
    image: string;
    image_path: string;
    description: string;
    content: string;
    color: string | null;
    text_color: string | null;
    user: IUser;
    updated_at: string;
    created_at: string;
}
