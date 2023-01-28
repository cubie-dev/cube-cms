<?php

declare(strict_types=1);

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

Breadcrumbs::for('user.me', static function (BreadcrumbTrail $trail) {
    $trail->parent('home');
    $trail->push(auth()->user()?->getUsername() ?? '', route('user.me'));
});
