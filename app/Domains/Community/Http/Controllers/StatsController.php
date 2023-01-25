<?php

namespace App\Domains\Community\Http\Controllers;

use App\Domains\Community\Http\Resources\Stats\StatsResource;
use App\Domains\Community\Services\StatsService;
use App\Http\Controllers\Controller;
use Diglactic\Breadcrumbs\Breadcrumbs;
use Inertia\Response;

class StatsController extends Controller
{
    public function __construct(
        private readonly StatsService $statsService,
    ) {
    }

    public function showStats(): Response
    {
        return inertia()
            ->render(
                component: 'community/stats/Stats',
                props: [
                    'stats' => new StatsResource($this->statsService->getStats()),
                    'breadcrumbs' => Breadcrumbs::generate('community.stats'),
                ],
            );
    }
}
