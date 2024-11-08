<?php

namespace App\Livewire;

use App\Jobs\CheckPayment;
use Livewire\Component;
use App\Models\WeddingCard;

class TrangChu extends Component
{
    public $weddingCards;

    public function mount()
    {
        // Lấy 8 WeddingCard từ database
        $this->weddingCards = WeddingCard::inRandomOrder()->take(10)->get();
        CheckPayment::dispatch();

    }

    public function render()
    {
        return view('livewire.trang-chu', [
            'weddingCards' => $this->weddingCards,
        ]);
    }
}