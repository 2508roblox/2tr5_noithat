<?php

namespace App\Filament\Resources\ContactResource\Pages;

use App\Filament\Resources\ContactResource;
use Filament\Resources\Pages\ViewRecord;
use Filament\Tables;
use App\Models\OrderItem;

class ViewContact extends ViewRecord
{
    protected static string $resource = ContactResource::class;

    protected function getTableSchema(): array
    {
        return [
            Tables\Columns\TextColumn::make('id')->label('ID'),
            Tables\Columns\TextColumn::make('name')->label('Tên'),
            Tables\Columns\TextColumn::make('email')->label('Email'),
            Tables\Columns\TextColumn::make('phone')->label('SĐT'),
            Tables\Columns\TextColumn::make('address')->label('Địa chỉ'),
            Tables\Columns\TextColumn::make('note')->label('Ghi chú'),
            Tables\Columns\TextColumn::make('created_at')->dateTime()->label('Ngày tạo'),
        ];
    }

    protected function getOrderItemsTableSchema(): array
    {
        return [
            Tables\Columns\TextColumn::make('product.name')->label('Sản phẩm'),
            Tables\Columns\TextColumn::make('quantity')->label('Số lượng'),
            Tables\Columns\TextColumn::make('created_at')->dateTime()->label('Ngày tạo'),
        ];
    }

    protected function getOrderItemsTable(): Tables\Table
    {
        return Tables\Table::make()
            ->columns($this->getOrderItemsTableSchema())
            ->data(fn () => OrderItem::where('contact_id', $this->record->id)->get());
    }

    protected function getContent(): array
    {
        return [
            $this->getTableSchema(), // Hiển thị thông tin liên hệ
            $this->getOrderItemsTable(), // Hiển thị danh sách Order Items
        ];
    }

    public function getView(): string
    {
        return 'filament.pages.view-contact'; // Đường dẫn đến view (nếu có)
    }
}