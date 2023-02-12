<?php

declare(strict_types=1);

namespace App\Domains\User\Http\Resources;

use App\Domains\User\Models\Badge;
use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Facades\Storage;

/**
 * @property-read Badge $resource
 */
class BadgeResource extends JsonResource
{
    public function toArray($request): array
    {
        return [
            'id' => $this->resource->getId(),
            'slot_id' => $this->resource->getSlotId(),
            'badge_code' => $this->resource->getBadgeCode(),
            'badge_url' => Storage::disk('badges')->url()
        ];
    }
}
