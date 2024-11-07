<?php

namespace App\Filament\User\Widgets;

use App\Models\Message;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Widgets\TableWidget as BaseWidget;
use Illuminate\Support\Facades\Auth;

class LatestMessagesWidget extends BaseWidget
{
    protected static ?string $heading = 'Tin nhắn mới nhất';
    protected int | string | array $columnSpan = 'full';

    public function table(Table $table): Table
    {
        return $table
            ->query(
                Message::query()
                    ->whereHas('weddingInvitation', function ($query) {
                        // Lọc các thiệp cưới của người dùng đăng nhập
                        $query->where('customer_id', Auth::id());
                    })
                    ->latest()
            )
            ->columns([
                Tables\Columns\TextColumn::make('name')
                    ->label('Tên người gửi')
                    ->sortable(),
                Tables\Columns\TextColumn::make('message')
                    ->label('Nội dung tin nhắn')
                    ->limit(50) // Giới hạn hiển thị 50 ký tự
                    ->tooltip(fn ($record) => $record->message), // Hiển thị đầy đủ khi di chuột
                Tables\Columns\TextColumn::make('weddingInvitation.invitation_code')
                    ->label('Mã thiệp')
                    ->sortable(),
                Tables\Columns\TextColumn::make('created_at')
                    ->label('Ngày gửi')
                    ->dateTime('d/m/Y H:i')
                    ->sortable(),
            ])
            ->actions([
                Tables\Actions\ViewAction::make('view')
            ])
            ->filters([]) ;// Thêm các bộ lọc nếu cần thiết
    }
}
