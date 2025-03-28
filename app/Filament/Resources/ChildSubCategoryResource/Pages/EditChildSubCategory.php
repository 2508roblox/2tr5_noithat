<?php

namespace App\Filament\Resources\ChildSubCategoryResource\Pages;

use App\Filament\Resources\ChildSubCategoryResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditChildSubCategory extends EditRecord
{
    protected static string $resource = ChildSubCategoryResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
