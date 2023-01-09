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
        Schema::create('currency_types', function (Blueprint $table) {
            $table->id();
            $table->string('name')->unique();
            $table->boolean('active')->default(true);
            $table->timestamps();
        });

        Schema::table('users_currency', function (Blueprint $table) {
            $table->unsignedBigInteger('type')->change();
            $table->unsignedBigInteger('user_id')->change();
            $table->foreign('type')->references('id')->on('currency_types');
            $table->foreign('user_id')->references('id')->on('users');
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
            $table->dropForeign(['type']);
            $table->dropForeign(['user_id']);
            $table->integer('user_id')->change();
        });

        Schema::dropIfExists('currency_types');
    }
};
