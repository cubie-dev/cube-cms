<?php

use App\Domains\Core\Models\Setting;
use Illuminate\Database\Migrations\Migration;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Setting::query()->create([
            'key' => 'register.starting_credits',
            'value' => 5000
        ]);

        Setting::query()->create([
            'key' => 'register.starting_pixels',
            'value' => 5000
        ]);

        Setting::query()->create([
            'key' => 'register.starting_points',
            'value' => 5000
        ]);

        Setting::query()->create([
            'key' => 'register.starting_rank',
            'value' => 1
        ]);

        Setting::query()->create([
            'key' => 'register.starting_motto',
            'value' => 'Hello, I am a new user!'
        ]);

        Setting::query()->create([
            'key' => 'register.max_accounts_per_ip',
            'value' => '3'
        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
};
