<?php

namespace App\Domains\Community\Models;

use App\Domains\User\Models\User;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

/**
 * @property-read User $user
 */
class Comment extends Model
{
    protected $table = 'news_comments';
    protected $fillable = [
        'content',
        'user_id',
        'article_id'
    ];

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }

    public function getId(): int
    {
        return $this->id;
    }

    public function getContent(): string
    {
        return $this->content;
    }

    public function setContent(string $content): self
    {
        $this->content = $content;

        return $this;
    }

    public function setUser(User $user): self
    {
        $this->user_id = $user->getId();

        return $this;
    }

    public function setArticle(Article $article): self
    {
        $this->article_id = $article->getId();

        return $this;
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
