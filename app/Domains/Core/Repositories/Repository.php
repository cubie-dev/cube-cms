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
    protected QueryBuilder|Model $queryBuilder;

    public function __construct()
    {
        $this->queryBuilder = $this->makeQueryBuilder();
    }

    /**
     * @return TEntity|QueryBuilder<TEntity>
     */
    protected function getQueryBuilder(): Model|QueryBuilder
    {
        return clone $this->queryBuilder;
    }

    /**
     * @return QueryBuilder<TEntity>
     */
    abstract protected function makeQueryBuilder(): QueryBuilder;

    public function withAllowedIncludes(array $allowedIncludes): Repository
    {
        $this->queryBuilder = $this->getQueryBuilder()->allowedIncludes($allowedIncludes);

        return $this;
    }

    public function withAllowedFilters(array $allowedFilters): Repository
    {
        $this->queryBuilder = $this->getQueryBuilder()->allowedFilters($allowedFilters);

        return $this;
    }

    public function withAllowedSorts(array $allowedSorts): Repository
    {
        $this->queryBuilder = $this->getQueryBuilder()->allowedSorts($allowedSorts);

        return $this;
    }

    public function withDefaultSorts(array $defaultSorts): Repository
    {
        $this->queryBuilder = $this->getQueryBuilder()->defaultSorts($defaultSorts);

        return $this;
    }

    public function push(Model $model): bool
    {
        $pushed = $model->push();

        if ($pushed) {
            $model->refresh();
        }

        return $pushed;
    }
}
