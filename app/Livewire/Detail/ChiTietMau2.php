<?php

namespace App\Livewire\Detail;

use App\Models\WeddingInvitation;
use Livewire\Component;

class ChiTietMau2 extends Component
{
    public $invitation;

    // Nhận slug từ URL và tìm WeddingInvitation tương ứng.
    public function mount($code)
    {
        $this->invitation = WeddingInvitation::where('invitation_code', $code)->firstOrFail();
    }

    public function render()
    {
        // dd($this->invitation);
        return view('livewire.detail.chi-tiet-mau2', [
            'invitation' => $this->invitation,
        ]);
    }
}
