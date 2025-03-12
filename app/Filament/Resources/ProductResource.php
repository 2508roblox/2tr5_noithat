<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ProductResource\Pages;
use App\Filament\Resources\ProductResource\RelationManagers;
use App\Models\Product;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Forms\Components\{TextInput, Select, FileUpload, Textarea, Grid, Section, Toggle, Repeater, Group, Richeditor, KeyValue};
use Filament\Tables\Columns\{TextColumn, ImageColumn, ToggleColumn};

use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class ProductResource extends Resource
{
    protected static ?string $model = Product::class;

    protected static ?string $navigationIcon = 'heroicon-o-shopping-bag'; // Icon giỏ hàng
    protected static ?string $pluralLabel = 'Quản lý sản phẩm';

    protected static ?string $navigationGroup = 'Quản lý sản phẩm'; // Nhóm riêng cho menu
    public static function form(Form $form): Form
    {
        return $form
        ->schema([
            Grid::make(2) // Chia làm 2 cột
                ->schema([
                    Section::make('Thông tin chung') // Nhóm 1: Thông tin sản phẩm
                        ->schema([
                            TextInput::make('name')
                                ->label('Tên sản phẩm')
                                ->required()
                                ->maxLength(255)
                                ->live(debounce: 1000)
                                ->afterStateUpdated(fn($state, callable $set) => 
                                    $set('slug', str()->slug($state))
                                ),

                            TextInput::make('slug')
                                ->label('Slug')
                                ->required()
                                ->unique(Product::class, 'slug', ignoreRecord: true),

                            TextInput::make('product_code')
                                ->label('Mã sản phẩm')
                                ->unique(Product::class, 'product_code', ignoreRecord: true)
                                ->required(),

                            Select::make('category_id')
                                ->label('Danh mục chính')
                                ->relationship('category', 'name')
                                ->required(),

                            Select::make('sub_category_id')
                                ->label('Danh mục con cấp 1')
                                ->relationship('subCategory', 'name')
                                ->required(),

                            Select::make('child_sub_category_id')
                                ->label('Danh mục con cấp 2')
                                ->relationship('childSubCategory', 'name')
                                ->required(),
                        ])
                        ->columnSpan(1),

                    Section::make('Hình ảnh sản phẩm') // Nhóm 2: Ảnh sản phẩm
                        ->schema([
                            FileUpload::make('image')
                                ->label('Ảnh chính')
                                ->image()
                                ->directory('products')
                                ->required(),

                                FileUpload::make('additional_images')
                                ->label('Ảnh phụ')
                                ->image()
                                ->multiple()
                                ->directory('products')
                             ,
                        ])
                        ->columnSpan(1),
                ]),

            Section::make('Chi tiết sản phẩm')
                ->schema([
                    Richeditor::make('product_info')
                        ->label('Mô tả sản phẩm')
                        
                        ->required(),
                ]),
                Section::make('Thuộc tính sản phẩm')
                ->schema([
                    KeyValue::make('attributes')
                    ->label('Thuộc tính sản phẩm')
                    ->required(),
                ]),
            Section::make('Giá và khuyến mãi')
                ->schema([
                    TextInput::make('original_price')
                        ->label('Giá gốc')
                        ->numeric()
                        ->required(),

                    TextInput::make('discounted_price')
                        ->label('Giá khuyến mãi')
                        ->numeric()
                        ->nullable(),
                ])
                ->columns(2),

            Section::make('Trạng thái & Cấu hình')
                ->schema([
                    Toggle::make('is_hot')->label('Sản phẩm nổi bật'),
                    Toggle::make('is_new')->label('Sản phẩm mới'),
                ])
                ->columns(2),
        ]);
    }

    public static function table(Table $table): Table
    {
        return $table
        ->columns([
            ImageColumn::make('image')->label('Ảnh')->size(50),
            TextColumn::make('name')->label('Tên sản phẩm')->sortable()->searchable(),
            TextColumn::make('product_code')->label('Mã sản phẩm')->sortable(),
            TextColumn::make('original_price')->label('Giá gốc')->money('VND')->sortable(),
            TextColumn::make('discounted_price')->label('Giá khuyến mãi')->money('VND')->sortable(),
            ToggleColumn::make('is_hot')->label('Nổi bật'),
            ToggleColumn::make('is_new')->label('Mới'),
        ])
        ->filters([
            Tables\Filters\Filter::make('is_hot')->label('Nổi bật')->query(fn($query) => $query->where('is_hot', true)),
            Tables\Filters\Filter::make('is_new')->label('Mới')->query(fn($query) => $query->where('is_new', true)),
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
            'index' => Pages\ListProducts::route('/'),
            'create' => Pages\CreateProduct::route('/create'),
            'edit' => Pages\EditProduct::route('/{record}/edit'),
        ];
    }
}
