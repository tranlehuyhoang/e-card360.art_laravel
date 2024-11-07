<?php

namespace App\Filament\User\Widgets;

use App\Models\Attendance;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Widgets\TableWidget as BaseWidget;
use Illuminate\Support\Facades\Auth;

class LatestAttendancesWidget extends BaseWidget
{
    protected static ?string $heading = 'Các Lượt Tham Dự Mới Nhất';

    // Đặt columnSpan là full để widget chiếm toàn bộ chiều rộng
    protected int | string | array $columnSpan = 'full';

    public function table(Table $table): Table
    {
        return $table
            ->query(
                Attendance::query()
                    ->whereHas('weddingInvitation', function ($query) {
                        // Lọc các thiệp cưới của người dùng đăng nhập
                        $query->where('customer_id', Auth::id());
                    })
                    ->latest()
            )
            ->columns([
                Tables\Columns\TextColumn::make('name')
                    ->label('Tên khách mời')
                    ->sortable(),
                Tables\Columns\TextColumn::make('status')
                    ->label('Trạng thái')
                    ->sortable(),
                Tables\Columns\TextColumn::make('number_of_guests')
                    ->label('Số lượng khách')
                    ->sortable(),
                Tables\Columns\TextColumn::make('weddingInvitation.invitation_code')
                    ->label('Mã thiệp')
                    ->sortable(),
                Tables\Columns\TextColumn::make('created_at')
                    ->label('Ngày tham dự')
                    ->dateTime('d/m/Y H:i')
                    ->sortable(),
            ])
            ->actions([
                Tables\Actions\ViewAction::make('view')
            ])
            ->filters([]) ;// Thêm các bộ lọc nếu cần thiết
    }
}
