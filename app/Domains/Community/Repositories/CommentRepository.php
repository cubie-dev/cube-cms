<?php

namespace App\Domains\Community\Repositories;

use App\Domains\Community\Models\Comment;
use App\Domains\Core\Repositories\Repository;
use Illuminate\Database\Eloquent\Collection;
use Spatie\QueryBuilder\QueryBuilder;

/**
 * @extends Repository<Comment>
 */
class CommentRepository extends Repository
{
    protected function makeQueryBuilder(): QueryBuilder
    {
        return QueryBuilder::for(Comment::class);
    }

    /**
     * @param int $articleId
     * @return Collection<int, Comment>
     */
    public function getCommentsByArticle(int $articleId): Collection
    {
        return $this->getQueryBuilder()
            ->where('article_id', $articleId)
            ->orderBy('created_at', 'desc')
            ->get();
    }
}
