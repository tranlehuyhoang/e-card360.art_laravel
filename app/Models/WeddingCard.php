<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WeddingCard extends Model
{
    use HasFactory;

    // Nếu bạn có các trường cần khai báo có thể thêm vào đây
    protected $fillable = [
        'template_name',
        'image',
        'demo_link',
        'price',
    ];
}