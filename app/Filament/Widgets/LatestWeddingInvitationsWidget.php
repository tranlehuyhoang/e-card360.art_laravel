<?php

namespace App\Filament\Widgets;

use App\Models\WeddingInvitation;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Widgets\TableWidget as BaseWidget;
use Illuminate\Support\Carbon;

class LatestWeddingInvitationsWidget extends BaseWidget
{
    protected static ?int $sort = 3;

    protected int | string | array $columnSpan = 'full';

    protected static ?string $heading = 'Thiệp Cưới Gần Đây';

    public function table(Table $table): Table
    {
        return $table
            ->query(
                WeddingInvitation::query()->latest()->limit(5)
            )
            ->columns([
                Tables\Columns\TextColumn::make('id')
                    ->label('ID'),
                Tables\Columns\TextColumn::make('invitation_code')
                    ->label('Mã thiệp'),
                Tables\Columns\TextColumn::make('invitationTemplate.template_name')
                    ->label('Tên mẫu'),
                Tables\Columns\TextColumn::make('customer.email')
                    ->label('Email khách hàng'),
                    Tables\Columns\TextColumn::make('total_amount')
                    ->label('Tổng tiền')
                    ->money('VND', true), // Hiển thị số tiền với định dạng tiền tệ

                // Cột Gói
                Tables\Columns\TextColumn::make('package')
                    ->label('Gói')
                    ->sortable(),
                Tables\Columns\TextColumn::make('package')
                    ->label('Gói')
                    ->sortable(),
                    Tables\Columns\TextColumn::make('payment_status')
                    ->label('Trạng thái thanh toán')
                    ->formatStateUsing(fn ($state) => match($state) {
                        'completed' => 'Đã thanh toán',
                        'pending' => 'Chưa thanh toán',
                        default => 'Thất bại',
                    })
                    ->sortable(),
                Tables\Columns\TextColumn::make('event_date')
                    ->label('Ngày tổ chức')
                    ->date('d/m/Y'),
                Tables\Columns\TextColumn::make('created_at')
                    ->label('Ngày tạo')
                    ->dateTime('H:i d/m/Y')
                    ->formatStateUsing(fn (string $state): string => Carbon::parse($state)->setTimezone('Asia/Ho_Chi_Minh')->format('H:i d/m/Y')),
            ])
            ->actions([
                Tables\Actions\Action::make('view')
                    ->label('Xem')
                    ->url(fn (WeddingInvitation $record): string => route('filament.admin.resources.wedding-invitations.edit', $record))
                    ->icon('heroicon-m-eye'),
            ]);
    }
}
