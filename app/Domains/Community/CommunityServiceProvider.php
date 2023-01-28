<?php

declare(strict_types=1);

namespace App\Domains\Community;

use Diglactic\Breadcrumbs\Breadcrumbs;
use Diglactic\Breadcrumbs\Generator;
use Illuminate\Support\ServiceProvider;

class CommunityServiceProvider extends ServiceProvider
{
    public function boot(): void
    {
        $this->loadRoutesFrom(__DIR__ . '/routes/web.php');

        $this->loadBreadcrumbs();
    }

    private function loadBreadcrumbs(): void
    {
        $breadcrumbs = $this->app->get(Generator::class);

        require __DIR__ . '/routes/breadcrumbs.php';
    }
}
