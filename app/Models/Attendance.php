<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Attendance extends Model
{
    use HasFactory;

    protected $fillable = [
        'wedding_invitation_id',
        'name',
        'status',
        'location',
        'number_of_guests',
        'note',
    ];

    public function weddingInvitation()
    {
        return $this->belongsTo(WeddingInvitation::class);
    }
}
