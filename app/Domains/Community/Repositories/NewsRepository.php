<?php

declare(strict_types=1);

namespace App\Domains\Community\Repositories;

use App\Domains\Community\Models\Article;
use App\Domains\Core\Repositories\Repository;
use Illuminate\Database\Eloquent\Collection;
use Spatie\QueryBuilder\QueryBuilder;

/**
 * @extends Repository<Article>
 */
class NewsRepository extends Repository
{
    protected function makeQueryBuilder(): QueryBuilder
    {
        return QueryBuilder::for(Article::class);
    }

    public function getArticleBySlug(string $slug): ?Article
    {
        return $this->getQueryBuilder()
            ->where('slug', $slug)
            ->first();
    }

    /**
     * @param int $limit
     * @param array<string> $relations
     * @return Collection<int, Article>
     */
    public function getRecentArticles(int $limit, array $relations = []): Collection
    {
        return $this->makeQueryBuilder()
            ->orderBy('created_at', 'desc')
            ->limit($limit)
            ->with($relations)
            ->get();
    }
}
