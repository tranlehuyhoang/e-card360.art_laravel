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

    protected static ?string $navigationIcon = 'heroicon-o-document-text';

    protected static ?string $navigationLabel = 'Mẫu Thiệp Cưới';

    protected static ?string $navigationGroup = 'Quản Lý';

    public static function form(Forms\Form $form): Forms\Form
    {
        return $form
            ->schema([
                Forms\Components\Section::make('Thông tin mẫu thiệp')
                    ->description('Nhập thông tin chi tiết về mẫu thiệp cưới.')
                    ->schema([
                        Forms\Components\TextInput::make('template_name')
                            ->required()
                            ->label('Tên Mẫu')
                            ->helperText('Nhập tên mẫu thiệp cưới'),
                        Forms\Components\FileUpload::make('image')
                            ->required()
                            ->label('Ảnh')
                            ->disk('public')
                            ->directory('wedding_cards')
                            ->helperText('Tải lên ảnh mẫu thiệp cưới'),
                    ])
                    ->collapsible(),

                Forms\Components\Section::make('Thông tin bổ sung')
                    ->description('Nhập thông tin bổ sung về mẫu thiệp.')
                    ->schema([
                        Forms\Components\TextInput::make('demo_link')
                            ->required()
                            ->label('Link Demo')
                            ->helperText('Nhập link demo của mẫu thiệp'),
                        Forms\Components\TextInput::make('price')
                            ->required()
                            ->numeric()
                            ->label('Giá')
                            ->prefix('VND')
                            ->helperText('Nhập giá của mẫu thiệp'),
                    ])
                    ->collapsible(),
            ]);
    }

    public static function table(Tables\Table $table): Tables\Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('id')->label('ID')->searchable(),
                Tables\Columns\TextColumn::make('template_name')->label('Tên Mẫu')->searchable(),
                Tables\Columns\ImageColumn::make('image')->label('Ảnh'),
                Tables\Columns\TextColumn::make('demo_link')->label('Link Demo')->searchable(),
                Tables\Columns\TextColumn::make('price')->label('Giá')->money('VND')->searchable(),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\ViewAction::make(),
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
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

    public static function getNavigationBadge(): ?string
    {
        return static::getModel()::count();
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
