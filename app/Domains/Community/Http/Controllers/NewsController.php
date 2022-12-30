<?php declare(strict_types=1);

namespace App\Domains\Community\Http\Controllers;

use App\Domains\Community\Http\Resources\News\ArticleResource;
use App\Domains\Community\Repositories\NewsRepository;
use App\Domains\Community\Services\ArticleService;
use App\Http\Controllers\Controller;
use Diglactic\Breadcrumbs\Breadcrumbs;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Http\Resources\Json\AnonymousResourceCollection;

class NewsController extends Controller
{
    public function __construct(
        private readonly NewsRepository $newsRepository,
        private readonly ArticleService $articleService
    ) {
    }

    public function showArticle(string $slug)
    {
        if ($article = $this->newsRepository->getArticleBySlug($slug)) {
            return inertia(
                component: 'community/news/Article',
                props: [
                    'breadcrumbs' => fn () => Breadcrumbs::generate('community.news.article', $article),
                    'article' => new ArticleResource($this->articleService->convertArticleToDto($article))
                ]
            );
        }

        throw new ModelNotFoundException();
    }

    public function getRecentArticles(int $limit = 5): AnonymousResourceCollection
    {
        return ArticleResource::collection(
            $this->articleService->getRecentArticles($limit)
        );
    }
}
