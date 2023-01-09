<?php

declare(strict_types=1);

/** @var RouteRegistrar|Router $router */

use App\Domains\Community\Http\Controllers\NewsController;
use Illuminate\Routing\Router;
use Illuminate\Routing\RouteRegistrar;

$router = app(Router::class);

$router->middleware('web')->prefix('community')->group(function (RouteRegistrar | Router $community) {
    $community->get('news/recent/{limit?}', [NewsController::class, 'getRecentArticles'])
        ->name('community.news.recent');
    $community->get('news/{slug}', [NewsController::class, 'showArticle'])
        ->name('community.news.article');
});
