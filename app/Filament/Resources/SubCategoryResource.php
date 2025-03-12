<?php

namespace App\Filament\Resources;

use App\Filament\Resources\SubCategoryResource\Pages;
use App\Filament\Resources\SubCategoryResource\RelationManagers;
use App\Models\Category;
use App\Models\SubCategory;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\Grid;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\FileUpload;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\BooleanColumn;
use Filament\Tables\Columns\ImageColumn;
use Filament\Forms\Components\Toggle;

class SubCategoryResource extends Resource
{
    protected static ?string $model = SubCategory::class;

    protected static ?string $navigationLabel = 'Danh mục con';
    protected static ?string $pluralModelLabel = 'Danh mục con';
    protected static ?string $modelLabel = 'Danh mục con';
    protected static ?string $navigationGroup = 'Quản lý danh mục';
    public static function form(Form $form): Form
    {
        return $form->schema([
            Section::make('Thông tin danh mục con')->schema([
                Grid::make(2)->schema([
                    Select::make('category_id')
                        ->label('Danh mục cha')
                        ->options(Category::pluck('name', 'id'))
                        ->required()
                        ->searchable(),

                    TextInput::make('name')
                        ->label('Tên danh mục con')
                        ->required()
                        ->live(debounce: 1000)
                        ->afterStateUpdated(fn($state, callable $set) => 
                            $set('slug', str()->slug($state))
                        ),

                        TextInput::make('slug')
                        ->label('Slug')
                        ->required()
                        ->unique(table: SubCategory::class, column: 'slug', ignoreRecord: true)
                ]),

                Grid::make(2)->schema([
                  

                        Toggle::make('is_hot')->label('Nổi bật'),
                        Toggle::make('is_sale')->label('Giảm giá'),
                ]),
            ])
        ]);
    }

    public static function table(Table $table): Table
    {
        return $table
        ->columns([
            TextColumn::make('category.name')->label('Danh mục cha')->sortable(),
            TextColumn::make('name')->label('Tên danh mục con')->sortable()->searchable(),
            TextColumn::make('slug')->label('Slug')->sortable()->searchable(),
            BooleanColumn::make('is_hot')->label('Nổi bật'),
            BooleanColumn::make('is_sale')->label('Giảm giá'),
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
            'index' => Pages\ListSubCategories::route('/'),
            'create' => Pages\CreateSubCategory::route('/create'),
            'edit' => Pages\EditSubCategory::route('/{record}/edit'),
        ];
    }
}
