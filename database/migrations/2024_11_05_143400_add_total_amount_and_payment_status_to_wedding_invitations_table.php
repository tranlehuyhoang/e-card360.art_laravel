<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddTotalAmountAndPaymentStatusToWeddingInvitationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('wedding_invitations', function (Blueprint $table) {
            $table->decimal('total_amount', 10, 2)->nullable(); // Cột tổng tiền
            $table->enum('payment_status', ['pending', 'completed', 'failed'])->default('pending'); // Cột trạng thái thanh toán
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
            $table->dropColumn('total_amount'); // Xóa cột tổng tiền
            $table->dropColumn('payment_status'); // Xóa cột trạng thái thanh toán
        });
    }
}