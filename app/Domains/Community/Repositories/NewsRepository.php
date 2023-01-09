<?php

declare(strict_types=1);

namespace App\Domains\Community\Repositories;

use App\Domains\Community\Models\Article;
use App\Domains\Core\Repositories\Repository;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Collection;

/**
 * @extends Repository<Article>
 */
class NewsRepository extends Repository
{
    public function getModel(): Article|Builder
    {
        return Article::query();
    }

    public function getArticleBySlug(string $slug): ?Article
    {
        return $this->getModel()
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
        return $this->getModel()
            ->orderBy('created_at', 'desc')
            ->limit($limit)
            ->with($relations)
            ->get();
    }
}
