<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ChildSubCategoryResource\Pages;
use App\Filament\Resources\ChildSubCategoryResource\RelationManagers;
use App\Models\ChildSubCategory;
use Filament\Forms;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Select;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\ToggleColumn;
use Filament\Forms\Form;
use Filament\Forms\Components\Grid;
use Filament\Forms\Components\Section;

use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\Toggle;

class ChildSubCategoryResource extends Resource
{
    protected static ?string $model = ChildSubCategory::class;
    protected static ?string $navigationGroup = 'Quản lý sản phẩm';

    protected static ?string $navigationIcon = 'heroicon-o-tag';
    protected static ?string $navigationLabel = 'Danh mục con cấp 2';
    protected static ?string $pluralLabel = 'Danh mục con cấp 2';
    protected static ?string $label = 'Danh mục con cấp 2';
    protected static ?string $slug = 'child-sub-categories';
    public static function form(Form $form): Form
    {
        return $form
        ->schema([
            Section::make('Thông tin danh mục')
                ->description('Nhập thông tin danh mục con cấp 2')
                ->schema([
                    Grid::make(2) // Chia cột thành 2 phần bằng nhau
                        ->schema([
                            Select::make('sub_category_id')
                                ->label('Danh mục con cấp 1')
                                ->relationship('subCategory', 'name')
                                ->required()
                                ->columnSpanFull(),

                            TextInput::make('name')
                                ->label('Tên danh mục con cấp 2')
                                ->required()
                                ->live(debounce: 1000)
                                ->afterStateUpdated(fn($state, callable $set) => 
                                    $set('slug', str()->slug($state))
                                ),
                                TextInput::make('slug')
                                ->label('Slug')
                                ->required()
                                ->unique(table: ChildSubCategory::class, column: 'slug', ignoreRecord: true)
                            
                        ]),
                ])
                ->collapsible(),

            Section::make('Cài đặt hiển thị')
                ->description('Cấu hình hiển thị danh mục con cấp 2')
                ->schema([
                    Grid::make(2)
                        ->schema([
                            Toggle::make('is_hot')->label('Nổi bật'),
                            Toggle::make('is_sale')->label('Giảm giá'),
                        ]),
                ])
                ->collapsible(),
        ]);
    }

    public static function table(Table $table): Table
    {
        return $table
        ->columns([
            TextColumn::make('subCategory.name')->label('Danh mục con cấp 1')->sortable(),
            TextColumn::make('name')->label('Tên danh mục con cấp 2')->sortable()->searchable(),
            TextColumn::make('slug')->label('Slug')->sortable()->searchable(),
            ToggleColumn::make('is_hot')->label('Nổi bật'),
            ToggleColumn::make('is_sale')->label('Giảm giá'),
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
            'index' => Pages\ListChildSubCategories::route('/'),
            'create' => Pages\CreateChildSubCategory::route('/create'),
            'edit' => Pages\EditChildSubCategory::route('/{record}/edit'),
        ];
    }
}
