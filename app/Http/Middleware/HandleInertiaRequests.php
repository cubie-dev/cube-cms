<?php

namespace App\Http\Middleware;

use App\Http\Resources\UserResource;
use Illuminate\Http\Request;
use Inertia\Middleware;
use Symfony\Component\HttpFoundation\Response;

class HandleInertiaRequests extends Middleware
{
    /**
     * The root template that's loaded on the first page visit.
     *
     * @see https://inertiajs.com/server-side-setup#root-template
     * @var string
     */
    protected $rootView = 'app';

    /**
     * Determines the current asset version.
     *
     * @see https://inertiajs.com/asset-versioning
     * @param  \Illuminate\Http\Request  $request
     * @return string|null
     */
    public function version(Request $request): ?string
    {
        return parent::version($request);
    }

    private function getSharedMessages(Request $request): array
    {
        return $request->session()->get('messages', []);
    }

    private function getUser(Request $request): ?UserResource
    {
        return ($user = $request->user()) ? new UserResource($user) : null;
    }

    /**
     * Defines the props that are shared by default.
     *
     * @see https://inertiajs.com/shared-data
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function share(Request $request): array
    {
        return array_merge(parent::share($request), [
            'locale' => fn () => app()->getLocale(),
            'localeMessages' => fn () => translations(locale: app()->getLocale()),
            'flash' => [
                'messages' => fn () => $this->getSharedMessages(request: $request),
            ],
            'user' => $this->getUser(request: $request),
        ]);
    }

    public function onEmptyResponse(Request $request, Response $response): Response
    {
        return $response;
    }
}
