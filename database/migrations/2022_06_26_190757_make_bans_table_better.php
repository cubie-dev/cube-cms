<?php

declare(strict_types=1);

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
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
        Schema::table('bans', function (Blueprint $table) {
            $table->id()->change();
            $table->unsignedBigInteger('user_id')->change();
            $table->string('ip', 45)->nullable()->change();
            $table->string('machine_id')->nullable()->change();
            $table->unsignedBigInteger('user_staff_id')->change();
            $table->unsignedInteger('timestamp')->change();
            $table->unsignedInteger('ban_expire')->change();

            $table->foreign('user_id')->references('id')->on('users');
            $table->foreign('user_staff_id')->references('id')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('bans', function (Blueprint $table) {
            $table->dropForeign(['user_id']);
            $table->dropForeign(['user_staff_id']);
        });

        Schema::table('bans', function (Blueprint $table) {
            $table->id()->change();
            $table->integer('user_id')->change();
            $table->string('ip', 50)->nullable(false)->change();
            $table->string('machine_id')->nullable(false)->change();
            $table->integer('user_staff_id')->change();
            $table->integer('timestamp')->change();
            $table->integer('ban_expire')->change();
        });
    }
};
