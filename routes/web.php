<?php

use Illuminate\Routing\Router;
use Illuminate\Routing\RouteRegistrar;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/** @var RouteRegistrar|Router $router */
$router = app(Router::class);

if (!auth()->user()) {
    $router->redirect('/', '/login');
} else {
    $router->redirect('/', '/me');
}

$router->middleware('guest')->group(function (RouteRegistrar | Router $guestRouter) {
    $guestRouter->get('login', [\App\Http\Controllers\AuthController::class, 'showLogin'])->name('auth.login');
    $guestRouter->put('login', [\App\Http\Controllers\AuthController::class, 'postLogin']);
    $guestRouter->get('register', [\App\Http\Controllers\AuthController::class, 'showRegister'])->name('auth.register');
    $guestRouter->post('register', [\App\Http\Controllers\AuthController::class, 'postRegister'])->name('auth.register');
});

$router->middleware('auth:web')->group(function (RouteRegistrar | Router $router) {
    $router->get('me', [\App\Http\Controllers\UserController::class, 'showMe'])->name('user.me');

    $router->prefix('community')->group(function (RouteRegistrar | Router $community) {
        $community->get('news/recent/{limit?}', [\App\Http\Controllers\NewsController::class, 'getRecentArticles'])->name('community.news.recent');
        $community->get('news/{slug}', [\App\Http\Controllers\NewsController::class, 'showArticle'])->name('community.news.article');
    });
});