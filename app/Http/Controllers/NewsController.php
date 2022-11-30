<?php declare(strict_types=1);

namespace App\Http\Controllers;

use App\Http\Resources\Community\News\ArticleResource;
use App\Repositories\NewsRepository;
use Diglactic\Breadcrumbs\Breadcrumbs;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Http\Resources\Json\AnonymousResourceCollection;

class NewsController extends Controller
{
    public function __construct(
        private readonly NewsRepository $newsRepository
    ) {
    }

    public function showArticle(string $slug)
    {
        if ($article = $this->newsRepository->getArticleBySlug($slug)) {
            return inertia(
                component: 'community/news/Article',
                props: [
                    'breadcrumbs' => fn () => Breadcrumbs::generate('community.news.article', $article),
                    'article' => new ArticleResource($article)
                ]
            );
        }

        throw new ModelNotFoundException();
    }

    public function getRecentArticles(int $limit = 5): AnonymousResourceCollection
    {
        return ArticleResource::collection(
            $this->newsRepository->getRecentArticles($limit)
        );
    }
}
