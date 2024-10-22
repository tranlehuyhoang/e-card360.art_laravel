<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WeddingInvitation extends Model
{
    use HasFactory;

    // Nếu bạn có các trường cần khai báo có thể thêm vào đây
    protected $fillable = [
        'customer_id',
        'event_time',
        'event_date',
        'event_location',
        'event_address',
        'event_map_link',
        'event_phone',
        'event_album',
        'event_payment_qr',
        'event_day_of_week',
        'event_zodiac_sign',
        'groom_name',
        'groom_birth_date',
        'groom_description',
        'groom_image',
        'bride_name',
        'bride_birth_date',
        'bride_description',
        'bride_image',
        'first_meeting_date',
        'first_meeting_image',
        'dating_date',
        'dating_image',
        'engagement_date',
        'engagement_image',
        'wedding_date',
        'wedding_image',
        'album',
        'groom_family_address',
        'groom_family_phone',
        'groom_family_map_link',
        'groom_family_gift_qr',
        'groom_family_image',
        'bride_family_address',
        'bride_family_phone',
        'bride_family_map_link',
        'bride_family_gift_qr',
        'bride_family_image',
        'invitation_template_id',
        'invitation_code',
        'banner1',
        'banner2',
        'banner3',
        'banner4',
        'banner5',
        'bride_family_description',
        'groom_family_description',
        'bride_family_time',
        'groom_family_time',
    ];
    protected $casts = [
        'event_album' => 'array', // Chuyển đổi sang mảng
        'album' => 'array',       // Chuyển đổi sang mảng
    ];

    // Nếu có mối quan hệ với model khác, bạn có thể định nghĩa ở đây
    public function customer()
    {
        return $this->belongsTo(User::class, 'customer_id');
    }
    public function invitationTemplate()
{
    return $this->belongsTo(WeddingCard::class, 'invitation_template_id');
}
}