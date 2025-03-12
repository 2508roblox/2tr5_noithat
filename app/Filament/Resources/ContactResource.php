<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ContactResource\Pages;
use App\Filament\Resources\ContactResource\RelationManagers;
use App\Models\Contact;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class ContactResource extends Resource
{
    protected static ?string $model = Contact::class;


    protected static ?string $navigationIcon = 'heroicon-o-user-group';
    protected static ?string $navigationLabel = 'Liên hệ';
    protected static ?string $pluralLabel = 'Liên hệ';
    public static function form(Form $form): Form
    {
        return $form
            ->schema([
               
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
        ->columns([
            Tables\Columns\TextColumn::make('id')->sortable()->label('ID'),
            Tables\Columns\TextColumn::make('name')->label('Tên'),
            Tables\Columns\TextColumn::make('email')->label('Email'),
            Tables\Columns\TextColumn::make('phone')->label('SĐT'),
            Tables\Columns\TextColumn::make('address')->label('Địa chỉ'),
            Tables\Columns\TextColumn::make('created_at')->dateTime()->label('Ngày tạo'),
        ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\ViewAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
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
            'index' => Pages\ListContacts::route('/'),
            'create' => Pages\CreateContact::route('/create'),
            'edit' => Pages\EditContact::route('/{record}/edit'),
            'view' => Pages\ViewContact::route('/{record}'),

        ];
    }
}
