<?php

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
        if (Schema::hasTable('users')) {
            return;
        }

        $path = database_path('migrations/arcturus.sql');
        $sql = file_get_contents($path);

        DB::unprepared($sql);

        $tables = array_map(function ($table) {
            return $table->{'Tables_in_' . env('DB_DATABASE')};
        }, Schema::getAllTables());

        foreach ($tables as $table) {
            DB::statement('ALTER TABLE ' . $table . ' ROW_FORMAT = DEFAULT');
            DB::statement('ALTER TABLE ' . $table . ' ENGINE = InnoDB');
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropAllTables();
    }
};
