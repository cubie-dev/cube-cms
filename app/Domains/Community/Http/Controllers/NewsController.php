<?php

declare(strict_types=1);

namespace App\Domains\Community\Http\Controllers;

use App\Domains\Community\Dtos\CreateCommentData;
use App\Domains\Community\Http\Requests\News\CreateCommentRequest;
use App\Domains\Community\Http\Resources\News\ArticleResource;
use App\Domains\Community\Http\Resources\News\CommentResource;
use App\Domains\Community\Repositories\NewsRepository;
use App\Domains\Community\Services\ArticleService;
use App\Http\Controllers\Controller;
use Diglactic\Breadcrumbs\Breadcrumbs;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Http\Resources\Json\AnonymousResourceCollection;
use Inertia\Response;
use Inertia\ResponseFactory;

class NewsController extends Controller
{
    public function __construct(
        private readonly NewsRepository $newsRepository,
        private readonly ArticleService $articleService
    ) {
    }

    /**
     * @throws ModelNotFoundException
     */
    public function showArticle(string $slug): Response
    {
        if ($article = $this->newsRepository->getArticleBySlug($slug)) {
            return inertia()->render(
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

    public function getComments(string $slug): AnonymousResourceCollection
    {
        if ($article = $this->newsRepository->getArticleBySlug($slug)) {
            return CommentResource::collection(
                $this->articleService->getComments($article)
            );
        }

        throw new ModelNotFoundException();
    }

    public function createComment(string $slug, CreateCommentRequest $request): CommentResource
    {
        if ($article = $this->newsRepository->getArticleBySlug($slug)) {
            $comment = $this->articleService->createComment($article, new CreateCommentData(
                content: $request->input('content'),
                user: $request->user()
            ));

            return new CommentResource($comment);
        }

        throw new ModelNotFoundException();
    }
}
