<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::table('model_has_roles', function (Blueprint $table) {
            $table->unsignedBigInteger('unit_id')->nullable()->after('model_id');
            $table->foreign('unit_id')->references('id')->on('teams')->onDelete('cascade');
            $table->unique(['role_id', 'model_id', 'model_type', 'unit_id'], 'model_has_roles_unique');
        });

        Schema::table('model_has_permissions', function (Blueprint $table) {
            $table->unsignedBigInteger('unit_id')->nullable()->after('model_id');
            $table->foreign('unit_id')->references('id')->on('teams')->onDelete('cascade');
            $table->unique(['permission_id', 'model_id', 'model_type', 'unit_id'], 'model_has_permissions_unique');
        });
    }

    public function down()
    {
        Schema::table('model_has_roles', function (Blueprint $table) {
            $table->dropForeign(['unit_id']);
            $table->dropColumn('unit_id');
        });

        Schema::table('model_has_permissions', function (Blueprint $table) {
            $table->dropForeign(['unit_id']);
            $table->dropColumn('unit_id');
        });
    }
};
