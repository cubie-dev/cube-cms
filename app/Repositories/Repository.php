<?php

namespace App\Repositories;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;

abstract class Repository
{
    abstract public function getModel(): Model|Builder;

    public function push(Model $model): bool
    {
        $pushed = $model->push();

        if ($pushed) {
            $model->refresh();
        }

        return $pushed;
    }

    public function update(Model $model, array $data): bool
    {
        return $this->push(
            $model->fill($data)
        );
    }
}
