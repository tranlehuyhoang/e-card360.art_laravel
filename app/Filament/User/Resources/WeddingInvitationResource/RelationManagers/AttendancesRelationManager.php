<?php

namespace App\Filament\User\Resources\WeddingInvitationResource\RelationManagers;

use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class AttendancesRelationManager extends RelationManager
{
    protected static string $relationship = 'attendances';

    protected static ?string $title = 'Danh sách tham dự';

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('name')
                    ->label('Tên')
                    ->required()
                    ->maxLength(255),
                Forms\Components\Select::make('status')
                    ->label('Trạng thái')
                    ->options([
                        'attending' => 'Tham dự',
                        'not_attending' => 'Không tham dự',
                        'undecided' => 'Chưa quyết định',
                    ])
                    ->required(),
                Forms\Components\TextInput::make('location')
                    ->label('Địa điểm')
                    ->maxLength(255),
                Forms\Components\TextInput::make('number_of_guests')
                    ->label('Số lượng khách')
                    ->numeric()
                    ->minValue(1)
                    ->maxValue(10),
                Forms\Components\Textarea::make('note')
                    ->label('Ghi chú')
                    ->maxLength(65535)
                    ->columnSpanFull(),
            ]);
    }

    public function table(Table $table): Table
    {
        return $table
            ->recordTitleAttribute('name')
            ->columns([
                Tables\Columns\TextColumn::make('name')
                    ->label('Tên'),
                Tables\Columns\TextColumn::make('status')
                    ->label('Trạng thái'),
                Tables\Columns\TextColumn::make('number_of_guests')
                    ->label('Số lượng khách'),
                Tables\Columns\TextColumn::make('created_at')
                    ->label('Ngày tạo')
                    ->dateTime(),
            ])
            ->filters([
                //
            ])
            ->headerActions([
                Tables\Actions\CreateAction::make()
                    ->label('Thêm mới'),
            ])
            ->actions([
                Tables\Actions\EditAction::make()
                    ->label('Sửa'),
                Tables\Actions\DeleteAction::make()
                    ->label('Xóa'),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make()
                        ->label('Xóa đã chọn'),
                ]),
            ]);
    }
}
