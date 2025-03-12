<?php

namespace App\Filament\Resources;

use App\Filament\Resources\BannerResource\Pages;
use App\Filament\Resources\BannerResource\RelationManagers;
use App\Models\Banner;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\{TextInput, FileUpload, Section};
use Filament\Tables\Columns\{TextColumn, ImageColumn};
use Filament\Tables\Filters\Filter;
class BannerResource extends Resource
{
    protected static ?string $model = Banner::class;

    protected static ?string $navigationGroup = 'Quản lý Banner';
    protected static ?string $navigationIcon = 'heroicon-o-photo';
    protected static ?string $label = 'Banner';
    protected static ?string $pluralLabel = 'Banner';
    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make('Thông tin Banner')
                ->schema([
                    FileUpload::make('image')
                        ->label('Hình ảnh Banner')
                        ->image()
                        ->directory('banners')
                        ->required(),

                    TextInput::make('link')
                        ->label('Liên kết (URL)')
                        ->url()
                        ->placeholder('Nhập URL điều hướng khi click vào banner')
                        ->nullable(),
                ])
                ->columns(2),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table->columns([
            ImageColumn::make('image')->label('Hình ảnh')->circular(),
            TextColumn::make('link')->label('Liên kết')->searchable()->limit(50),
        ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
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
            'index' => Pages\ListBanners::route('/'),
            'create' => Pages\CreateBanner::route('/create'),
            'edit' => Pages\EditBanner::route('/{record}/edit'),
        ];
    }
}
