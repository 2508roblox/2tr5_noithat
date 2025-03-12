<?php

namespace App\Filament\Resources;

use App\Filament\Resources\CategoryResource\Pages;
use App\Filament\Resources\CategoryResource\RelationManagers;
use App\Models\Category;
use Filament\Forms;
use Filament\Forms\Components\Grid;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\BooleanColumn;
use Filament\Tables\Columns\ImageColumn;

class CategoryResource extends Resource
{
    protected static ?string $model = Category::class;

    protected static ?string $navigationLabel = 'Danh mục sản phẩm';
    protected static ?string $pluralModelLabel = 'Danh mục sản phẩm';
    protected static ?string $modelLabel = 'Danh mục';
    protected static ?string $navigationGroup = 'Quản lý sản phẩm';


    public static function form(Form $form): Form
    {
        return $form->schema([
            Section::make('Thông tin danh mục')->schema([
                Grid::make(2)->schema([
                    FileUpload::make('icon_image')
                        ->label('Ảnh biểu tượng')
                        ->image()
                        ->directory('categories/icons')
                        ->columnSpan(1),

                    FileUpload::make('image')
                        ->label('Ảnh danh mục')
                        ->image()
                        ->directory('categories/images')
                        ->columnSpan(1),
                ]),

                TextInput::make('name')
                    ->label('Tên danh mục')
                    ->required()
                    ->live(debounce: 1000)
                    ->afterStateUpdated(fn($state, callable $set) => 
                        $set('slug', str()->slug($state))
                    ),

                    TextInput::make('slug')
                    ->label('Slug')
                    ->required()
                    ->unique(table: Category::class, column: 'slug', ignoreRecord: true)
            ])
        ]);
    }

    public static function table(Table $table): Table
    {
        return $table
        ->columns([
            ImageColumn::make('icon_image')->label('Icon')->size(50),
            ImageColumn::make('image')->label('Ảnh danh mục')->size(80),
            TextColumn::make('name')->label('Tên danh mục')->sortable()->searchable(),
            TextColumn::make('slug')->label('Slug')->sortable()->searchable(),
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
            'index' => Pages\ListCategories::route('/'),
            'create' => Pages\CreateCategory::route('/create'),
            'edit' => Pages\EditCategory::route('/{record}/edit'),
        ];
    }
}
