<?php

namespace App\Filament\User\Resources\WeddingInvitationResource\Pages;

use App\Filament\User\Resources\WeddingInvitationResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditWeddingInvitation extends EditRecord
{
    protected static string $resource = WeddingInvitationResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
