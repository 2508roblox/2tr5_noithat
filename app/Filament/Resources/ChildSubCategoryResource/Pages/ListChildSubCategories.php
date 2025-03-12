<?php

namespace App\Filament\Resources\ChildSubCategoryResource\Pages;

use App\Filament\Resources\ChildSubCategoryResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListChildSubCategories extends ListRecords
{
    protected static string $resource = ChildSubCategoryResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
