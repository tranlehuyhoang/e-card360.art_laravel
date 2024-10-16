<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateWeddingInvitationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('wedding_invitations', function (Blueprint $table) {
            $table->id();

            // Thông tin khách hàng
            $table->unsignedBigInteger('customer_id'); // ID khách hàng

            // Thông tin tổ chức
            $table->dateTime('event_time')->nullable(); // Giờ tổ chức
            $table->date('event_date')->nullable(); // Ngày tổ chức
            $table->string('event_location')->nullable(); // Địa điểm tổ chức
            $table->string('event_address')->nullable(); // Địa chỉ tổ chức
            $table->string('event_map_link')->nullable(); // Link map tổ chức
            $table->string('event_phone')->nullable(); // Số điện thoại tổ chức
            $table->string('event_album')->nullable(); // Album ảnh tổ chức
            $table->string('event_payment_qr')->nullable(); // QR nhận tiền
            $table->string('event_day_of_week')->nullable(); // Thứ ngày tổ chức
            $table->string('event_zodiac_sign')->nullable(); // Tên con giáp của năm

            // Thông tin chú rể
            $table->string('groom_name')->nullable(); // Tên chú rể
            $table->date('groom_birth_date')->nullable(); // Ngày sinh chú rể
            $table->text('groom_description')->nullable(); // Mô tả chú rể
            $table->string('groom_image')->nullable(); // Ảnh chú rể

            // Thông tin cô dâu
            $table->string('bride_name')->nullable(); // Tên cô dâu
            $table->date('bride_birth_date')->nullable(); // Ngày sinh cô dâu
            $table->text('bride_description')->nullable(); // Mô tả cô dâu

            // Ngày và ảnh các sự kiện
            $table->date('first_meeting_date')->nullable(); // Ngày lần đầu gặp mặt
            $table->string('first_meeting_image')->nullable(); // Ảnh lần đầu gặp mặt
            $table->date('dating_date')->nullable(); // Ngày hẹn hò
            $table->string('dating_image')->nullable(); // Ảnh hẹn hò
            $table->date('engagement_date')->nullable(); // Ngày đính hôn
            $table->string('engagement_image')->nullable(); // Ảnh đính hôn
            $table->date('wedding_date')->nullable(); // Ngày thành hôn
            $table->string('wedding_image')->nullable(); // Ảnh thành hôn

            // Album ảnh
            $table->string('album')->nullable(); // Album ảnh

            // Thông tin nhà trai
            $table->string('groom_family_address')->nullable(); // Địa chỉ nhà trai
            $table->string('groom_family_phone')->nullable(); // Số điện thoại nhà trai
            $table->string('groom_family_map_link')->nullable(); // Link map nhà trai
            $table->string('groom_family_gift_qr')->nullable(); // QR quà nhà trai
            $table->string('groom_family_image')->nullable(); // Ảnh nhà trai

            // Thông tin nhà gái
            $table->string('bride_family_address')->nullable(); // Địa chỉ nhà gái
            $table->string('bride_family_phone')->nullable(); // Số điện thoại nhà gái
            $table->string('bride_family_map_link')->nullable(); // Link map nhà gái
            $table->string('bride_family_gift_qr')->nullable(); // QR quà nhà gái
            $table->string('bride_family_image')->nullable(); // Ảnh nhà gái

            $table->timestamps();

            // Khóa ngoại
            $table->foreign('customer_id')->references('id')->on('users')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('wedding_invitations');
    }
}