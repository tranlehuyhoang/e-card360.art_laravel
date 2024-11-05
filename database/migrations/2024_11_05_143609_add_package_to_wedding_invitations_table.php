<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddPackageToWeddingInvitationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('wedding_invitations', function (Blueprint $table) {
            $table->enum('package', ['basic', 'standard', 'premium'])->default('basic'); // Cột gói
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('wedding_invitations', function (Blueprint $table) {
            $table->dropColumn('package'); // Xóa cột gói
        });
    }
}