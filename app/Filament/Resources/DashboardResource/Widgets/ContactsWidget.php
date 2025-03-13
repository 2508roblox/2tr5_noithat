<?php

namespace App\Filament\Resources\DashboardResource\Widgets;

use App\Models\Contact;
use Filament\Widgets\TableWidget as BaseWidget;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Illuminate\Database\Eloquent\Builder;

class ContactsWidget extends BaseWidget
{
    protected int|string|array $columnSpan = 'full';

    protected function getTableQuery(): Builder
    {
        return Contact::query()->latest()->take(10);
    }

    protected function getTableColumns(): array
    {
        return [
            TextColumn::make('name')->label('Tên liên hệ')->searchable(),
            TextColumn::make('email')->label('Email')->searchable(),
            TextColumn::make('phone')->label('Số điện thoại')->sortable(),
            TextColumn::make('created_at')->label('Ngày tạo')->date(),
        ];
    }
}