<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnsToWeddingInvitationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('wedding_invitations', function (Blueprint $table) {
            $table->string('bride_image')->nullable(); // Ảnh cô dâu
            $table->unsignedBigInteger('invitation_template_id')->nullable(); // ID mẫu thiệp
            $table->string('invitation_code')->nullable(); // Mã thiệp

            // Optional: Add foreign key constraint for invitation_template_id if there's a related table
            $table->foreign('invitation_template_id')->references('id')->on('wedding_cards')->onDelete('set null');
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
            $table->dropColumn('bride_image');
            $table->dropColumn('invitation_template_id');
            $table->dropColumn('invitation_code');
        });
    }
}