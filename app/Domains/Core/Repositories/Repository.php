<?php

declare(strict_types=1);

namespace App\Domains\Core\Repositories;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Spatie\QueryBuilder\QueryBuilder;

/**
 * @template TEntity of Model
 */
abstract class Repository
{
    /**
     * @param int $id
     * @param \Closure<QueryBuilderOptions> $builderOptions
     */
    public function find(int $id, \Closure $builderOptions)
    {
        return $this
            ->getQueryBuilder($builderOptions)
            ->find($id);
    }

    /**
     * @param \Closure|null $builderOptions
     * @return QueryBuilder<TEntity>|TEntity
     */
    protected function getQueryBuilder(?\Closure $builderOptions = null): QueryBuilder
    {
        $builder = clone $this->makeQueryBuilder();

        if ($builderOptions !== null) {
            $builderOptions(new QueryBuilderOptions($builder));
        }

        return $builder;
    }

    /**
     * @return QueryBuilder<TEntity>
     */
    abstract protected function makeQueryBuilder(): QueryBuilder;

    public function push(Model $model): bool
    {
        $pushed = $model->push();

        if ($pushed) {
            $model->refresh();
        }

        return $pushed;
    }
}
