<?php

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
