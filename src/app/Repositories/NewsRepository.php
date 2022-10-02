<?php

namespace App\Repositories;

use App\Models\Article;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Collection;

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

    public function getRecentArticles(int $limit): ?Collection
    {
        return $this->getModel()
            ->orderBy('created_at', 'desc')
            ->limit($limit)
            ->get();
    }
}
