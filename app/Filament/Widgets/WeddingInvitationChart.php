<?php
namespace App\Filament\Widgets;

use App\Models\WeddingInvitation;
use Filament\Widgets\ChartWidget;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class WeddingInvitationChart extends ChartWidget
{
    protected static ?string $heading = 'Thống kê thiệp cưới 12 tháng gần nhất';

    protected function getData(): array
    {
        $endDate = Carbon::now()->endOfMonth();
        $startDate = $endDate->copy()->subMonths(11)->startOfMonth();

        $data = WeddingInvitation::select(
            DB::raw('COUNT(*) as count'),
            DB::raw('SUM(wedding_invitations.total_amount) as total'), // Sửa thành wedding_invitations.total_amount
            DB::raw("DATE_FORMAT(wedding_invitations.created_at, '%Y-%m') as month")
        )
        ->whereBetween('wedding_invitations.created_at', [$startDate, $endDate])
        ->groupBy('month')
        ->orderBy('month')
        ->get();

        $months = [];
        $invitationCounts = [];
        $totalAmounts = [];

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
            $invitationCounts[] = $monthData ? $monthData->count : 0;
            $totalAmounts[] = $monthData ? $monthData->total : 0;
            $currentDate->addMonth();
        }

        return [
            'datasets' => [
                [
                    'label' => 'Số lượng thiệp',
                    'data' => $invitationCounts,
                    'borderColor' => '#36A2EB',
                    'backgroundColor' => 'rgba(54, 162, 235, 0.2)',
                ],
                [
                    'label' => 'Tổng tiền (VND)',
                    'data' => $totalAmounts,
                    'borderColor' => '#FF6384',
                    'backgroundColor' => 'rgba(255, 99, 132, 0.2)',
                    'yAxisID' => 'y-axis-2',
                ],
            ],
            'labels' => $months,
        ];
    }

    protected function getType(): string
    {
        return 'line';
    }

    protected function getOptions(): array
    {
        return [
            'scales' => [
                'y' => [
                    'beginAtZero' => true,
                    'title' => [
                        'display' => true,
                        'text' => 'Số lượng thiệp',
                    ],
                ],
                'y-axis-2' => [
                    'beginAtZero' => true,
                    'position' => 'right',
                    'title' => [
                        'display' => true,
                        'text' => 'Tổng tiền (VND)',
                    ],
                    'grid' => [
                        'drawOnChartArea' => false,
                    ],
                ],
            ],
        ];
    }
}
 