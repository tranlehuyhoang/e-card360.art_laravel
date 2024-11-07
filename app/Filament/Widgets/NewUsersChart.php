<?php

namespace App\Filament\Widgets;

use App\Models\User;
use App\Models\WeddingInvitation;
use Filament\Widgets\ChartWidget;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class NewUsersChart extends ChartWidget
{
    protected static ?string $heading = 'Người dùng mới và Thiệp cưới 12 tháng gần nhất';

    protected function getData(): array
    {
        $endDate = Carbon::now()->endOfMonth();
        $startDate = $endDate->copy()->subMonths(11)->startOfMonth();

        // Fetch new user data
        $userData = User::select(
            DB::raw('COUNT(*) as count'),
            DB::raw("DATE_FORMAT(created_at, '%Y-%m') as month")
        )
        ->whereBetween('created_at', [$startDate, $endDate])
        ->groupBy('month')
        ->orderBy('month')
        ->get();

        // Fetch wedding invitations data
        $invitationData = WeddingInvitation::select(
            DB::raw('COUNT(*) as count'),
            DB::raw("DATE_FORMAT(created_at, '%Y-%m') as month")
        )
        ->whereBetween('created_at', [$startDate, $endDate])
        ->groupBy('month')
        ->orderBy('month')
        ->get();

        $months = [];
        $userCounts = [];
        $invitationCounts = [];

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

            // Get the counts for each month
            $userMonthData = $userData->firstWhere('month', $monthKey);
            $invitationMonthData = $invitationData->firstWhere('month', $monthKey);

            $userCounts[] = $userMonthData ? $userMonthData->count : 0;
            $invitationCounts[] = $invitationMonthData ? $invitationMonthData->count : 0;

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
                [
                    'label' => 'Số lượng thiệp cưới',
                    'data' => $invitationCounts,
                    'borderColor' => '#FF6384',
                    'backgroundColor' => 'rgba(255, 99, 132, 0.2)',
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
                        'text' => 'Số lượng',
                    ],
                ],
            ],
        ];
    }
}
