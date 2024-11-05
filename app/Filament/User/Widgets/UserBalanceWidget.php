<?php

namespace App\Filament\User\Widgets;

use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Card;
use Illuminate\Support\Facades\Auth;

class UserBalanceWidget extends BaseWidget
{
    protected function getCards(): array
    {
        // Lấy số dư từ model User
        $balance = Auth::user()->balance;

        return [
            Card::make('Số dư của bạn', number_format($balance, 0, ',', '.') . ' VNĐ')
                ->description('Dữ liệu số dư hiện tại của bạn')
                ->color('success'),

            // Card "Nạp tiền" with image and button inline
            Card::make('Nạp tiền', '')
                ->description('<div style="text-align: center;">
                    <img src="' . asset('images/nap-tien.png') . '" alt="Nạp tiền" style="width: 50px; height: 50px; margin-bottom: 8px;">
                    <br>
                    <button onclick="openNapTienModal()" style="padding: 8px 16px; background-color: #4CAF50; color: white; border: none; border-radius: 4px; cursor: pointer;">
                        Nạp tiền
                    </button>
                </div>')
                ->color('info')
        ];
    }
}
