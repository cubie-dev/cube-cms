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
    private ?QueryBuilder $queryBuilder;

    public function __construct()
    {
        $this->queryBuilder = $this->makeQueryBuilder();
    }

    protected function setQueryBuilder(QueryBuilder $queryBuilder): self
    {
        $this->queryBuilder = $queryBuilder;

        return $this;
    }

    /**
     * @param int $id
     * @param \Closure<QueryBuilderOptions> $builderOptions
     */
    public function find(int $id)
    {
        return $this
            ->getQueryBuilder()
            ->find($id);
    }

    public function withBuilderOptions(\Closure $builderOptions): static
    {
        $builder = clone $this->makeQueryBuilder();

        $builderOptions(new QueryBuilderOptions($builder));

        return (new static())->setQueryBuilder($builder);
    }

    /**
     * @return QueryBuilder<TEntity>|TEntity
     */
    protected function getQueryBuilder(): QueryBuilder
    {
        return clone $this->queryBuilder;
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
