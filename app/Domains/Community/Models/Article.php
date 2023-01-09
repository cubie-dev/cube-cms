<?php

declare(strict_types=1);

namespace App\Domains\Community\Models;

use App\Domains\User\Models\User;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

/**
 * @property-read int $id
 * @property-read string $title
 * @property-read string $slug
 * @property-read string $description
 * @property-read string $content
 * @property-read string $image
 * @property-read string $color
 * @property-read string $text_color
 * @property-read User $user
 * @property-read Carbon $updated_at
 * @property-read Carbon $created_at
 */
class Article extends Model
{
    protected $table = 'news';
    protected $fillable = [
        'title',
        'slug',
        'description',
        'content',
        'image',
        'color',
        'text_color'
    ];

    /**
     * @return BelongsTo<User, Article>
     */
    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class, 'author_id', 'id');
    }

    public function getId(): int
    {
        return $this->id;
    }

    public function getTitle(): string
    {
        return $this->title;
    }

    public function getSlug(): string
    {
        return $this->slug;
    }

    public function getDescription(): string
    {
        return $this->description;
    }

    public function getContent(): string
    {
        return $this->content;
    }

    public function getImage(): string
    {
        return $this->image;
    }

    public function getColor(): ?string
    {
        return $this->color;
    }

    public function getTextColor(): ?string
    {
        return $this->text_color;
    }

    public function getUpdatedAt(): Carbon
    {
        return $this->updated_at;
    }

    public function getCreatedAt(): Carbon
    {
        return $this->created_at;
    }
}
