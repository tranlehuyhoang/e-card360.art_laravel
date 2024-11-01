<?php

namespace App\Filament\Resources;

use App\Filament\Resources\WeddingInvitationResource\Pages;
use App\Filament\Resources\WeddingInvitationResource\RelationManagers;
use App\Models\User;
use App\Models\WeddingCard;
use App\Models\WeddingInvitation;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Str;
use Illuminate\Support\Carbon;

class WeddingInvitationResource extends Resource
{
    protected static ?string $model = WeddingInvitation::class;

    protected static ?string $navigationIcon = 'heroicon-o-document-text';
    protected static ?string $navigationLabel = 'Danh Sách Thiệp Cưới';

    protected static ?string $navigationGroup = 'Quản Lý';
    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Tabs::make('Thông Tin Thiệp Cưới')
                    ->tabs([
                        Forms\Components\Tabs\Tab::make('Thông Tin Chung')
                            ->schema([
                                // Section for Customer Information
                                Forms\Components\Section::make('Thông Tin Khách Hàng')
                                    ->schema([
                                        Forms\Components\Select::make('customer_id')
                                            ->required()
                                            ->options(User::all()->pluck('email', 'id')) // Lấy danh sách người dùng
                                            ->label('ID Khách Hàng'),
                                    ]),
                                Forms\Components\Section::make('Chi Tiết Thiệp Mời')
                                    ->schema([
                                        Forms\Components\Select::make('invitation_template_id')
                                            ->label('ID Mẫu Thiệp')
                                            ->options(WeddingCard::all()->pluck('template_name', 'id')) // Assuming 'name' is the display value
                                            ->nullable()

                                            ->required(),
                                        Forms\Components\TextInput::make('invitation_code')
                                            ->label('Mã Thiệp')
                                            ->required()
                                            ->disabled()
                                            ->dehydrated(true)
                                            ->unique(WeddingInvitation::class, 'invitation_code', ignoreRecord: true)
                                            ->afterStateHydrated(function (callable $get, callable $set) {
                                                // Chỉ tạo mã nếu invitation_code đang rỗng.
                                                if (!$get('invitation_code')) {
                                                    $characters = 'abcdefghijklmnopqrstuvwxyz0123456789';
                                                    $randomString = '';

                                                    // Lặp để đảm bảo mã không trùng.
                                                    do {
                                                        $randomString = '';
                                                        for ($i = 0; $i < 60; $i++) {
                                                            $randomString .= $characters[random_int(0, strlen($characters) - 1)];
                                                        }

                                                        // Kiểm tra xem mã đã tồn tại chưa, trừ mã hiện tại (nếu có).
                                                        $exists = WeddingInvitation::where('invitation_code', $randomString)
                                                            ->whereKeyNot($get('id')) // Bỏ qua chính bản ghi hiện tại.
                                                            ->exists();
                                                    } while ($exists);

                                                    // Gán mã không trùng vào field.
                                                    $set('invitation_code', $randomString);
                                                }
                                            }),
                                    ]),
                                // Section for Event Information
                                Forms\Components\Section::make('Thông Tin Tổ Chức')
                                    ->schema([
                                        Forms\Components\DateTimePicker::make('event_time')
                                            ->label('Giờ Tổ Chức'),
                                        Forms\Components\DatePicker::make('event_date')
                                            ->label('Ngày Tổ Chức'),
                                        Forms\Components\TextInput::make('event_location')
                                            ->label('Địa Điểm Tổ Chức'),
                                        Forms\Components\TextInput::make('event_address')
                                            ->label('Địa Chỉ Tổ Chức'),
                                        Forms\Components\TextInput::make('event_map_link')
                                            ->label('Link Map Tổ Chức'),
                                        Forms\Components\TextInput::make('event_phone')
                                            ->label('Số Điện Thoại Tổ Chức'),
                                        Forms\Components\FileUpload::make('event_album')
                                            ->label('Album Ảnh Tổ Chức')
                                            ->multiple() // Cho phép tải nhiều ảnh
                                            ->preserveFilenames(),
                                        Forms\Components\FileUpload::make('event_payment_qr')
                                            ->label('QR Nhận Tiền'),
                                        Forms\Components\TextInput::make('event_day_of_week')
                                            ->label('Thứ Ngày Tổ Chức'),
                                        Forms\Components\TextInput::make('event_zodiac_sign')
                                            ->label('Tên Con Giáp của Năm'),
                                    ]),



                            ]),
                        Forms\Components\Tabs\Tab::make('Cô Dâu')
                            ->schema([
                                Forms\Components\TextInput::make('bride_name')
                                    ->label('Tên Cô Dâu'),
                                Forms\Components\DatePicker::make('bride_birth_date')
                                    ->label('Ngày Sinh Cô Dâu'),
                                Forms\Components\Textarea::make('bride_description')
                                    ->label('Mô Tả Cô Dâu'),
                                Forms\Components\FileUpload::make('bride_image')
                                    ->label('Ảnh Cô Dâu'),
                            ]),
                        Forms\Components\Tabs\Tab::make('Chú Rể')
                            ->schema([
                                Forms\Components\TextInput::make('groom_name')
                                    ->label('Tên Chú Rể'),
                                Forms\Components\DatePicker::make('groom_birth_date')
                                    ->label('Ngày Sinh Chú Rể'),
                                Forms\Components\Textarea::make('groom_description')
                                    ->label('Mô Tả Chú Rể'),
                                Forms\Components\FileUpload::make('groom_image')
                                    ->label('Ảnh Chú Rể'),
                            ]),
                            Forms\Components\Tabs\Tab::make('Nhà Trai')
                            ->schema([
                                Forms\Components\TextInput::make('groom_family_address')
                                    ->label('Địa Chỉ Nhà Trai'),
                                Forms\Components\TextInput::make('groom_family_phone')
                                    ->label('Số Điện Thoại Nhà Trai'),
                                Forms\Components\TextInput::make('groom_family_map_link')
                                    ->label('Link Map Nhà Trai'),
                                Forms\Components\TextInput::make('groom_family_gift_qr')
                                    ->label('QR Quà Nhà Trai'),
                                Forms\Components\FileUpload::make('groom_family_image')
                                    ->label('Ảnh Nhà Trai'),
                                Forms\Components\TextInput::make('groom_family_description')
                                    ->label('Mô Tả Nhà Trai'),
                                Forms\Components\DateTimePicker::make('groom_family_time')
                                    ->label('Thời Gian Nhà Trai'),
                            ]),

                        Forms\Components\Tabs\Tab::make('Nhà Gái')
                            ->schema([
                                Forms\Components\TextInput::make('bride_family_address')
                                    ->label('Địa Chỉ Nhà Gái'),
                                Forms\Components\TextInput::make('bride_family_phone')
                                    ->label('Số Điện Thoại Nhà Gái'),
                                Forms\Components\TextInput::make('bride_family_map_link')
                                    ->label('Link Map Nhà Gái'),
                                Forms\Components\TextInput::make('bride_family_gift_qr')
                                    ->label('QR Quà Nhà Gái'),
                                Forms\Components\FileUpload::make('bride_family_image')
                                    ->label('Ảnh Nhà Gái'),
                                Forms\Components\TextInput::make('bride_family_description')
                                    ->label('Mô Tả Nhà Gái'),
                                Forms\Components\DateTimePicker::make('bride_family_time')
                                    ->label('Thời Gian Nhà Gái'),
                            ]),

                        Forms\Components\Tabs\Tab::make('Love Story')
                            ->schema([
                                Forms\Components\DatePicker::make('first_meeting_date')
                                    ->label('Ngày Lần Đầu Gặp Mặt'),
                                Forms\Components\FileUpload::make('first_meeting_image')
                                    ->label('Ảnh Lần Đầu Gặp Mặt'),
                                Forms\Components\DatePicker::make('dating_date')
                                    ->label('Ngày Hẹn Hò'),
                                Forms\Components\FileUpload::make('dating_image')
                                    ->label('Ảnh Hẹn Hò'),
                                Forms\Components\DatePicker::make('engagement_date')
                                    ->label('Ngày Đính Hôn'),
                                Forms\Components\FileUpload::make('engagement_image')
                                    ->label('Ảnh Đính Hôn'),
                                Forms\Components\DatePicker::make('wedding_date')
                                    ->label('Ngày Thành Hôn'),
                                Forms\Components\FileUpload::make('wedding_image')
                                    ->label('Ảnh Thành Hôn'),
                            ]),
                        Forms\Components\Tabs\Tab::make('Album Ảnh')
                            ->schema([
                                Forms\Components\FileUpload::make('album')
                                    ->label('Album Ảnh')
                                    ->multiple() // Cho phép tải nhiều ảnh
                                    ->preserveFilenames(),
                            ]),
                        Forms\Components\Tabs\Tab::make('Banner')
                            ->schema([
                                Forms\Components\FileUpload::make('banner1')
                                    ->label('Banner 1')
                                    ->preserveFilenames(),

                                Forms\Components\FileUpload::make('banner2')
                                    ->label('Banner 2')
                                    ->preserveFilenames(),

                                Forms\Components\FileUpload::make('banner3')
                                    ->label('Banner 3')
                                    ->preserveFilenames(),

                                Forms\Components\FileUpload::make('banner4')
                                    ->label('Banner 4')
                                    ->preserveFilenames(),

                                Forms\Components\FileUpload::make('banner5')
                                    ->label('Banner 5')
                                    ->preserveFilenames(),
                            ]),
                            Forms\Components\Tabs\Tab::make('SEO Settings')->schema([
                                Forms\Components\TextInput::make('seo_title')
                                    ->label('Tiêu đề')
                                    ->required()
                                    ->maxLength(255),
                        
                                Forms\Components\Textarea::make('seo_description')
                                    ->label('Mô tả website')
                                    ->required()
                                    ->maxLength(500),
                        
                                Forms\Components\FileUpload::make('seo_image')
                                    ->label('Ảnh website'),
                                  
                                  
                        
                                Forms\Components\TextInput::make('background_music')
                                    ->label('Link nhạc'),
                            ]),

                    ])->columnSpanFull(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('id')
                    ->label('ID')
                    ->searchable(),
                Tables\Columns\TextColumn::make('invitation_code')
                    ->label('Mã thiệp')
                    ->searchable(),
                Tables\Columns\TextColumn::make('invitationTemplate.template_name')
                    ->label('Tên mẫu thiệp')
                    ->searchable(),
                Tables\Columns\TextColumn::make('customer.email')
                    ->label('Email khách hàng')
                    ->searchable(),
                Tables\Columns\TextColumn::make('created_at')
                    ->label('Ngày tạo')
                    ->dateTime()
                    ->formatStateUsing(fn (Carbon $state) => $state->format('H:i:s d/m/Y'))
                    ->sortable(),
                Tables\Columns\TextColumn::make('invitationTemplate.demo_link')
                    ->label('Xem thiệp')
                    ->url(fn ($record) => '/' . $record->invitationTemplate->stt . '/' . $record->invitation_code)
                    ->openUrlInNewTab(),
            ])
            ->filters([
                Tables\Filters\SelectFilter::make('invitationTemplate')
                    ->relationship('invitationTemplate', 'template_name')
                    ->label('Lọc theo mẫu thiệp'),
                Tables\Filters\Filter::make('created_at')
                    ->form([
                        Forms\Components\DatePicker::make('created_from')
                            ->label('Từ ngày'),
                        Forms\Components\DatePicker::make('created_until')
                            ->label('Đến ngày'),
                    ])
                    ->query(function (Builder $query, array $data): Builder {
                        return $query
                            ->when(
                                $data['created_from'],
                                fn (Builder $query, $date): Builder => $query->whereDate('created_at', '>=', $date),
                            )
                            ->when(
                                $data['created_until'],
                                fn (Builder $query, $date): Builder => $query->whereDate('created_at', '<=', $date),
                            );
                    })
            ])
            ->actions([
                Tables\Actions\ActionGroup::make([
                    Tables\Actions\ViewAction::make()
                        ->label('Xem'),
                    Tables\Actions\EditAction::make()
                        ->label('Chỉnh sửa'),
                    Tables\Actions\DeleteAction::make()
                        ->label('Xóa'),
                    Tables\Actions\RestoreAction::make()
                        ->label('Khôi phục'),
                ])
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make()
                        ->label('Xóa nhiều'),
                ]),
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
            'index' => Pages\ListWeddingInvitations::route('/'),
            'create' => Pages\CreateWeddingInvitation::route('/create'),
            'edit' => Pages\EditWeddingInvitation::route('/{record}/edit'),
        ];
    }

    public static function getNavigationBadge(): ?string
    {
        return static::getModel()::count();
    }
}
