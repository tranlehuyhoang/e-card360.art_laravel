<?php

namespace App\Filament\Resources;

use App\Filament\Resources\WeddingCardResource\Pages;
use App\Filament\Resources\WeddingCardResource\RelationManagers;
use App\Models\WeddingCard;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class WeddingCardResource extends Resource
{
    protected static ?string $model = WeddingCard::class;

    protected static ?string $navigationIcon = 'heroicon-o-document-text'; // Thay đổi sang icon khác

    protected static ?string $navigationLabel = 'Danh Sách Thiệp Cưới';

    protected static ?string $navigationGroup = 'Quản Lý';

    public static function form(Forms\Form $form): Forms\Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('template_name')
                    ->required()
                    ->label('Tên Mẫu'),
                Forms\Components\FileUpload::make('image')
                ->required()
                ->label('Ảnh')
                ->disk('public') // Chỉ định disk nếu cần
                ->directory('wedding_cards'), // Thư mục lưu trữ
                Forms\Components\TextInput::make('demo_link')
                    ->required()
                    ->label('Link Demo'),
            ]);
    }

    public static function table(Tables\Table $table): Tables\Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('id')->label('ID'),
                Tables\Columns\TextColumn::make('template_name')->label('Tên Mẫu'),
                Tables\Columns\ImageColumn::make('image')->label('Ảnh'),
                Tables\Columns\TextColumn::make('demo_link')->label('Link Demo'),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\DeleteBulkAction::make(),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListWeddingCards::route('/'),
            'create' => Pages\CreateWeddingCard::route('/create'),
            'edit' => Pages\EditWeddingCard::route('/{record}/edit'),
        ];
    }
}
