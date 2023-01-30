<?php // phpcs:disable PSR1.Files.SideEffects

declare(strict_types=1);

namespace App\Domains\Core\Repositories;

use Spatie\QueryBuilder\QueryBuilder;

readonly class QueryBuilderOptions
{
    public function __construct(
        private QueryBuilder $builder
    ) {
    }

    public function withAllowedIncludes(array $allowedIncludes): self
    {
        $this->builder->allowedIncludes($allowedIncludes);

        return $this;
    }

    public function withAllowedFilters(array $allowedFilters): self
    {
        $this->builder->allowedFilters($allowedFilters);

        return $this;
    }

    public function withAllowedSorts(array $allowedSorts): self
    {
        $this->builder->allowedSorts($allowedSorts);

        return $this;
    }

    public function withDefaultSorts(array $defaultSorts): self
    {
        $this->builder->defaultSorts($defaultSorts);

        return $this;
    }

    public function withRelations(array|string $relations): self
    {
        $this->builder->with($relations);

        return $this;
    }
}
