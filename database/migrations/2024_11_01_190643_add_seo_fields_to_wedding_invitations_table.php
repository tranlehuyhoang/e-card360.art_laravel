<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddSeoFieldsToWeddingInvitationsTable extends Migration
{
    public function up()
    {
        Schema::table('wedding_invitations', function (Blueprint $table) {
            // Adding new fields for SEO
            $table->string('seo_title')->nullable();
            $table->text('seo_description')->nullable();
            $table->string('seo_image')->nullable();
            $table->string('background_music')->nullable();
        });
    }

    public function down()
    {
        Schema::table('wedding_invitations', function (Blueprint $table) {
            // Dropping the fields if the migration is rolled back
            $table->dropColumn(['seo_title', 'seo_description', 'seo_image', 'background_music']);
        });
    }
}