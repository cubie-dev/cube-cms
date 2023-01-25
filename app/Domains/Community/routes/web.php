<?php

declare(strict_types=1);

/** @var RouteRegistrar|Router $router */

use App\Domains\Community\Http\Controllers\NewsController;
use App\Domains\Community\Http\Controllers\StatsController;
use Illuminate\Routing\Router;
use Illuminate\Routing\RouteRegistrar;

$router = app(Router::class);

$router->middleware(['web', 'auth'])->prefix('community')->group(function (RouteRegistrar | Router $community) {
    $community->get('news/recent/{limit?}', [NewsController::class, 'getRecentArticles'])
        ->name('community.news.recent');
    $community->get('news/{slug}', [NewsController::class, 'showArticle'])
        ->name('community.news.article');
    $community->get('news/{slug}/comments', [NewsController::class, 'getComments'])
        ->name('community.news.article.comments');
    $community->post('news/{slug}/comments', [NewsController::class, 'createComment'])
        ->name('community.news.article.comments.post');

    // stats
    $community->get('stats', [StatsController::class, 'showStats'])
        ->name('community.stats');
});
