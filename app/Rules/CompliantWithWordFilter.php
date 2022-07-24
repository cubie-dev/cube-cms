<?php

namespace App\Rules;

use App\Repositories\HotelWordFilterRepository;
use Illuminate\Contracts\Validation\Rule;

class CompliantWithWordFilter implements Rule
{
    private string $value;

    private function hasValidStart(string $word): bool
    {
        $invalidWords = config('wordfilter.cant_start_with');

        foreach ($invalidWords as $invalidWord) {
            if (str_starts_with($word, $invalidWord)) {
                return false;
            }
        }

        return true;
    }

    /**
     * @param string $attribute
     * @param string $value
     */
    public function passes($attribute, $value): bool
    {
        $this->value = $value;

        return !app(HotelWordFilterRepository::class)->containsForbiddenWord(word: $value)
            && $this->hasValidStart(word: $value);
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message(): string
    {
        return trans('validation.forbidden_word', ['word' => $this->value]);
    }
}
