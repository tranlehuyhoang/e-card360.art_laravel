<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\WeddingCard;

class TrangChu extends Component
{
    public $weddingCards;

    public function mount()
    {
        // Lấy 8 WeddingCard từ database
        $this->weddingCards = WeddingCard::take(9)->get();
    }

    public function render()
    {
        return view('livewire.trang-chu', [
            'weddingCards' => $this->weddingCards,
        ]);
    }
}