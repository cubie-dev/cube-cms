<?php declare(strict_types=1);

namespace App\Domains\Community\Http\Controllers;

use App\Domains\Community\Http\Resources\News\ArticleResource;
use App\Domains\Community\Repositories\NewsRepository;
use App\Http\Controllers\Controller;
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
