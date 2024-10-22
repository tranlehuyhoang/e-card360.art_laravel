<?php

namespace App\Filament\Widgets;

use App\Models\User;
use Filament\Widgets\ChartWidget;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class NewUsersChart extends ChartWidget
{
    protected static ?string $heading = 'Người dùng mới 12 tháng gần nhất';

    protected function getData(): array
    {
        $endDate = Carbon::now()->endOfMonth();
        $startDate = $endDate->copy()->subMonths(11)->startOfMonth();

        $data = User::select(
            DB::raw('COUNT(*) as count'),
            DB::raw("DATE_FORMAT(created_at, '%Y-%m') as month")
        )
        ->whereBetween('created_at', [$startDate, $endDate])
        ->groupBy('month')
        ->orderBy('month')
        ->get();

        $months = [];
        $userCounts = [];

        // Mảng ánh xạ tên tháng tiếng Anh sang tiếng Việt
        $vietnameseMonths = [
            'Jan' => 'Tháng 1', 'Feb' => 'Tháng 2', 'Mar' => 'Tháng 3',
            'Apr' => 'Tháng 4', 'May' => 'Tháng 5', 'Jun' => 'Tháng 6',
            'Jul' => 'Tháng 7', 'Aug' => 'Tháng 8', 'Sep' => 'Tháng 9',
            'Oct' => 'Tháng 10', 'Nov' => 'Tháng 11', 'Dec' => 'Tháng 12'
        ];

        // Generate all months in the range
        $currentDate = $startDate->copy();
        while ($currentDate <= $endDate) {
            $monthKey = $currentDate->format('Y-m');
            $englishMonth = $currentDate->format('M');
            $vietnameseMonth = $vietnameseMonths[$englishMonth];
            $months[] = $vietnameseMonth . ' ' . $currentDate->format('Y');
            $monthData = $data->firstWhere('month', $monthKey);
            $userCounts[] = $monthData ? $monthData->count : 0;
            $currentDate->addMonth();
        }

        return [
            'datasets' => [
                [
                    'label' => 'Số người dùng mới',
                    'data' => $userCounts,
                    'borderColor' => '#4CAF50',
                    'backgroundColor' => 'rgba(76, 175, 80, 0.2)',
                ],
            ],
            'labels' => $months,
        ];
    }

    protected function getType(): string
    {
        return 'bar';
    }

    protected function getOptions(): array
    {
        return [
            'scales' => [
                'y' => [
                    'beginAtZero' => true,
                    'title' => [
                        'display' => true,
                        'text' => 'Số người dùng mới',
                    ],
                ],
            ],
        ];
    }
}
