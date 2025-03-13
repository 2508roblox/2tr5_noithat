<?php

namespace App\Filament\Resources\DashboardResource\Widgets;

use App\Models\Product;
use Filament\Widgets\TableWidget as BaseWidget;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\ImageColumn;
use Illuminate\Database\Eloquent\Builder; // Nhớ import Builder

class NewProductsWidget extends BaseWidget
{
    protected int|string|array $columnSpan = 'full';

    protected function getTableQuery(): Builder
    {
        return Product::query()->latest()->take(10);
    }

    protected function getTableColumns(): array
    {
        return [
            ImageColumn::make('image')->label('Ảnh')->size(50),
            TextColumn::make('name')->label('Tên sản phẩm')->searchable(),
            TextColumn::make('original_price')->label('Giá gốc')->sortable(),
            TextColumn::make('discounted_price')->label('Giá khuyến mãi')->sortable(),
            TextColumn::make('created_at')->label('Ngày tạo')->date(),
        ];
    }
}