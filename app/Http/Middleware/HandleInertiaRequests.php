<?php

declare(strict_types=1);

namespace App\Http\Middleware;

use App\Domains\User\Http\Resources\LoggedInUserResource;
use App\Domains\User\Models\User;
use App\Domains\User\Repositories\UserRepository;
use App\Exceptions\MessageTarget;
use App\Exceptions\MessageType;
use Illuminate\Http\Request;
use Inertia\Middleware;
use Symfony\Component\HttpFoundation\Response;

class HandleInertiaRequests extends Middleware
{
    public function __construct(
        private readonly UserRepository $userRepository
    ) {
    }

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

    /**
     * @param Request $request
     * @return array<int, array{content: string, type: MessageType, action: string|null, target: MessageTarget}>
     */
    private function getSharedMessages(Request $request): array
    {
        return $request->session()->get('messages', []);
    }

    private function getUser(Request $request): ?LoggedInUserResource
    {
        /** @var User $user */
        return ($user = $request->user())
            ? new LoggedInUserResource($this->userRepository->loadRelationsForAuth($user))
            : null;
    }

    /**
     * Defines the props that are shared by default.
     *
     * @see https://inertiajs.com/shared-data
     * @param  \Illuminate\Http\Request  $request
     * @return array<int, array{
     *     locale: string,
     *     localeMessages: array<string, string>,
     *     flashMessages: array<int, mixed>,
     *     user: LoggedInUserResource|null
     * }>
     */
    public function share(Request $request): array
    {
        $locale = app()->getLocale();

        return array_merge(parent::share($request), [
            'locale' => fn () => $locale,
            'localeMessages' => fn () => translations(locale: $locale),
            'flash' => [
                'messages' => fn () => $this->getSharedMessages(request: $request),
            ],
            'user' => fn () => $this->getUser(request: $request),
        ]);
    }

    public function onEmptyResponse(Request $request, Response $response): Response
    {
        return $response;
    }
}
