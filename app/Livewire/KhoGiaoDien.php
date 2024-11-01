<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\WeddingCard;

class KhoGiaoDien extends Component
{
    public $weddingCards;

    public function mount()
    {
        // Lấy 8 WeddingCard từ database
        $this->weddingCards = WeddingCard::all();
    }

    public function render()
    {
        return view('livewire.kho-giao-dien', [
            'weddingCards' => $this->weddingCards,
        ]);
    }
}