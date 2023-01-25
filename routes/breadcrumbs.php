<?php

declare(strict_types=1);

use App\Domains\Community\Models\Article;
use Diglactic\Breadcrumbs\Breadcrumbs;
use Diglactic\Breadcrumbs\Generator as BreadcrumbTrail;

Breadcrumbs::for('home', static function (BreadcrumbTrail $trail) {
    $trail->push(
        'Home',
        auth()->user() ? route('user.me') : route('auth.login'),
        ['home' => true]
    );
});

Breadcrumbs::for('auth.login', static function (BreadcrumbTrail $trail) {
    $trail->parent('home');
    $trail->push(web_trans(app()->getLocale(), 'login.title'), route('auth.login'));
});

Breadcrumbs::for('auth.register', static function (BreadcrumbTrail $trail) {
    $trail->parent('home');
    $trail->push(web_trans(app()->getLocale(), 'register.title'), '#');
});

Breadcrumbs::for('errors.404', static function (BreadcrumbTrail $trail) {
    $trail->parent('home');
    $trail->push('Not found', '#');
});

Breadcrumbs::for('community', static function (BreadcrumbTrail $trail) {
    $trail->parent('home');
    $trail->push(web_trans(app()->getLocale(), 'community.title'), '#');
});

Breadcrumbs::for('community.news', static function (BreadcrumbTrail $trail) {
    $trail->parent('community');
    // @TODO news overview related breadcrumbs
});

Breadcrumbs::for('community.news.article', static function (BreadcrumbTrail $trail, Article $article) {
    $trail->parent('community.news');
    $trail->push($article->getSlug(), route('community.news.article', $article->getSlug()));
});

Breadcrumbs::for('community.stats', static function (BreadcrumbTrail $trail) {
    $trail->parent('community');
    $trail->push(web_trans(app()->getLocale(), 'community.stats.title'), route('community.stats'));
});

Breadcrumbs::for('user.me', static function (BreadcrumbTrail $trail) {
    $trail->parent('home');
    $trail->push(auth()->user()?->getUsername() ?? '', route('user.me'));
});
