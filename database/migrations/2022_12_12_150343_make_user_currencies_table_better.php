<?php

declare(strict_types=1);

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users_currency', function (Blueprint $table) {
            $table->dropPrimary();
            $table->dropIndex('userdata');
        });

        Schema::table('users_currency', function (Blueprint $table) {
            $table->id()->first();

            $table->unique(['user_id', 'type']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users_currency', function (Blueprint $table) {
            $table->dropUnique(['user_id', 'type']);
            $table->index(['user_id', 'type'], 'userdata');
        });
        DB::statement('ALTER TABLE `users_currency` MODIFY `id` INT;');
        DB::statement('ALTER TABLE `users_currency` DROP PRIMARY KEY, ADD PRIMARY KEY (`user_id`, `type`);');
        Schema::table('users_currency', function (Blueprint $table) {
            $table->dropColumn('id');
        });
    }
};
