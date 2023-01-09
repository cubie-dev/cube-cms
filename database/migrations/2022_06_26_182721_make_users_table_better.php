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
        Schema::table('users', function (Blueprint $table) {
            $table->id()->change();
            $table->unsignedInteger('account_created')->change();
            $table->dropColumn('account_day_of_birth');
            $table->unsignedInteger('last_login')->nullable()->change();
            $table->unsignedInteger('last_online')->nullable()->change();
            $table->string('motto', 127)->nullable()->change();
            $table->unsignedInteger('credits')->change();
            $table->unsignedInteger('pixels')->change();
            $table->unsignedInteger('points')->change();
            $table->string('auth_ticket')->nullable()->change();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->integer('id')->change();
            $table->unique('id', 'id_2');
            $table->unique('id', 'id_3');
            $table->integer('account_day_of_birth')->default(0);
            $table->integer('account_created')->change();
            $table->integer('last_login')->nullable(false)->change();
            $table->integer('last_online')->nullable(false)->change();
            $table->string('motto', 127)->nullable(false)->change();
            $table->integer('credits')->change();
            $table->integer('pixels')->change();
            $table->integer('points')->change();
            $table->string('auth_ticket', 255)->nullable(false)->change();
            $table->dropTimestamps();
            $table->dropSoftDeletes();
        });
    }
};
