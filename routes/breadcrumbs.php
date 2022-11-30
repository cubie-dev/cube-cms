<?php

use App\Models\Article;
use Diglactic\Breadcrumbs\Breadcrumbs;
use Diglactic\Breadcrumbs\Generator as BreadcrumbTrail;

Breadcrumbs::for('home', static function (BreadcrumbTrail $trail) {
    $trail->push(
        'Home',
        auth()->user() ? route('user.home') : route('auth.login'),
        ['home' => true]
    );
});

Breadcrumbs::for('auth.login', static function (BreadcrumbTrail $trail) {
    $trail->parent('home');
    $trail->push(trans('frontend.login.title'), route('auth.login'));
});

Breadcrumbs::for('auth.register', static function (BreadcrumbTrail $trail) {
    $trail->parent('home');
    $trail->push(trans('frontend.register.title'), '#');
});

Breadcrumbs::for('errors.404', static function (BreadcrumbTrail $trail) {
    $trail->parent('home');
    $trail->push('Not found', '#');
});

Breadcrumbs::for('community', static function (BreadcrumbTrail $trail) {
    $trail->parent('home');
    $trail->push(trans('frontend.community.title'), '#');
});

Breadcrumbs::for('community.news', static function (BreadcrumbTrail $trail) {
    $trail->parent('community');
    // @TODO news overview related breadcrumbs
});

Breadcrumbs::for('community.news.article', static function (BreadcrumbTrail $trail, Article $article) {
    $trail->parent('community.news');
    $trail->push($article->getSlug(), route('community.news.article', $article->getSlug()));
});
