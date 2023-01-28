<?php

declare(strict_types=1);

use App\Domains\Community\Models\Article;
use Diglactic\Breadcrumbs\Breadcrumbs;
use Diglactic\Breadcrumbs\Generator as BreadcrumbTrail;

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

Breadcrumbs::for('community.staff', static function (BreadcrumbTrail $trail) {
    $trail->parent('community');
    $trail->push(web_trans(app()->getLocale(), 'community.staff.title'), route('community.staff'));
});
