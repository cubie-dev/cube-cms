<?php

namespace App\Domains\Community\Services;

use App\Domains\Community\Dtos\ArticleData;
use App\Domains\Community\Models\Article;
use App\Domains\Community\Repositories\NewsRepository;
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
        private NewsRepository $newsRepository
    ) {
    }

    public function getCachedArticleContent(Article $article): string
    {
        return $this->cacheManager->remember(
            sprintf(self::ARTICLE_CONTENT_CACHE_KEY, $article->getId()),
            self::ARTICLE_CONTENT_CACHE_TTL,
            fn () => $this->purifier->purify($article->getContent())
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
            color: $article->getColor(),
            textColor: $article->getTextColor(),
            user: $article->user,
            createdAt: $article->getCreatedAt(),
            updatedAt: $article->getUpdatedAt(),
        );
    }

    public function getRecentArticles(int $limit = 5): Collection
    {
        return $this->newsRepository->getRecentArticles(limit: $limit, relations: ['user'])
            ->map(fn (Article $article) => $this->convertArticleToDto($article));
    }
}
