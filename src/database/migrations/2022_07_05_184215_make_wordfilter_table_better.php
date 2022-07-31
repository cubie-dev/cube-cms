<?php

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
        Schema::table('wordfilter', function (Blueprint $table) {
            if (!Schema::hasColumn('wordfilter', 'id')) {
                $table->id()->first();
            }

            $table->unsignedInteger('mute')->default(0)->change();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('wordfilter', function (Blueprint $table) {
            $table->integer('mute')->default(0)->change();
            $table->dropTimestamps();
        });
    }
};
