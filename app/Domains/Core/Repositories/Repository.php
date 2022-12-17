<?php

namespace App\Domains\Core\Repositories;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;

/**
 * @template TModel
 */
abstract class Repository
{
    /**
     * @return TModel|Builder<TModel>
     */
    abstract public function getModel(): Model|Builder;

    /**
     * @param TModel $model
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
