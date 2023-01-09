<?php

declare(strict_types=1);

namespace App\Domains\Core\Repositories;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;

/**
 * @template TEntity of Model
 */
abstract class Repository
{
    /**
     * @return TEntity|Builder<TEntity>
     */
    abstract public function getModel(): Model|Builder;

    /**
     * @param TEntity $model
     */
    public function push(Model $model): bool
    {
        $pushed = $model->push();

        if ($pushed) {
            $model->refresh();
        }

        return $pushed;
    }
}
