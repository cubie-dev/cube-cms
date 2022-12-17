<?php

namespace App\Domains\Auth\Http\Requests;

use App\Domains\Core\Rules\CompliantWithWordFilter;
use Illuminate\Foundation\Http\FormRequest;

class RegisterRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
        return [
            'username' => ['required', new CompliantWithWordFilter(), 'unique:users,username'],
            'email' => 'required|email:dns,rfc|unique:users,mail',
            'password' => 'required|min:6|confirmed',
            'password_confirmation' => 'required'
        ];
    }

    public function messages(): array
    {
        return [
            'username.unique' => trans('validation.username_exists'),
        ];
    }
}
