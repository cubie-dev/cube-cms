<?php // phpcs:disable PSR1.Files.SideEffects

declare(strict_types=1);

namespace App\Domains\Community\Services;

use App\Domains\Community\Dtos\ArticleData;
use App\Domains\Community\Dtos\CommentData;
use App\Domains\Community\Dtos\CreateCommentData;
use App\Domains\Community\Models\Article;
use App\Domains\Community\Models\Comment;
use App\Domains\Community\Repositories\CommentRepository;
use App\Domains\Community\Repositories\NewsRepository;
use App\Domains\Core\Repositories\QueryBuilderOptions;
use App\Domains\User\Repositories\UserRepository;
use HTMLPurifier;
use Illuminate\Cache\CacheManager;
use Illuminate\Support\Collection;

readonly class ArticleService
{
    private const ARTICLE_CONTENT_CACHE_KEY = 'community.article.content.%s';
    private const ARTICLE_CONTENT_CACHE_TTL = 60 * 60; // 1 hour

    public function __construct(
        private CacheManager $cacheManager,
        private HTMLPurifier $purifier,
        private NewsRepository $newsRepository,
        private CommentRepository $commentRepository,
        private UserRepository $userRepository
    ) {
    }

    public function getCachedArticleContent(Article $article): string
    {
        return $this->cacheManager->remember(
            sprintf(self::ARTICLE_CONTENT_CACHE_KEY, $article->getId()),
            self::ARTICLE_CONTENT_CACHE_TTL,
            fn() => $this->purifier->purify($article->getContent())
        );
    }

    private function getPromosPath(): string
    {
        return url('/assets/community/promos/');
    }

    public function convertArticleToDto(Article $article): ArticleData
    {
        return new ArticleData(
            id: $article->getId(),
            slug: $article->getSlug(),
            title: $article->getTitle(),
            description: $article->getDescription(),
            content: $this->getCachedArticleContent($article),
            image: $article->getImage(),
            imagePath: sprintf('%s/%s', $this->getPromosPath(), $article->getImage()),
            user: $article->user,
            createdAt: $article->getCreatedAt(),
            updatedAt: $article->getUpdatedAt(),
            color: $article->getColor(),
            textColor: $article->getTextColor(),
        );
    }

    /**
     * @param int $limit
     * @return Collection<int, ArticleData>
     */
    public function getRecentArticles(int $limit = 5): Collection
    {
        return $this->newsRepository->getRecentArticles(limit: $limit, relations: ['user'])
            ->map(fn(Article $article) => $this->convertArticleToDto($article));
    }

    public function createComment(Article $article, CreateCommentData $data): CommentData
    {
        $comment = (new Comment())
            ->setContent($data->getContent())
            ->setUser($data->getUser())
            ->setArticle($article);

        $this->commentRepository->push($comment);

        return new CommentData(
            id: $comment->getId(),
            content: $comment->getContent(),
            user: $this->userRepository->refreshRelations($data->getUser(), ['role']),
            article: $article,
            createdAt: $comment->getCreatedAt(),
            updatedAt: $comment->getUpdatedAt(),
        );
    }

    public function getComments(Article $article): Collection
    {
        return $this->commentRepository
            ->getCommentsByArticle($article->getId(), function (QueryBuilderOptions $options) {
                return $options
                    ->withRelations(['user.role'])
                    ->withAllowedSorts(['created_at'])
                    ->withDefaultSorts(['created_at']);
            })
            ->map(fn(Comment $comment) => new CommentData(
                id: $comment->getId(),
                content: $comment->getContent(),
                user: $comment->user,
                article: $article,
                createdAt: $comment->getCreatedAt(),
                updatedAt: $comment->getUpdatedAt(),
            ));
    }
}
