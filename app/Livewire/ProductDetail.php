<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Product;
use App\Models\Category;
use App\Models\SubCategory;
use App\Models\ChildSubCategory;

class ProductDetail extends Component
{
    public $product;
    public $relatedProducts;

    public function mount($slug)
    {
        // Lấy sản phẩm theo slug
        $this->product = Product::where('slug', $slug)
            ->with(['category', 'subCategory', 'childSubCategory'])
            ->firstOrFail();

        // Lấy 6 sản phẩm cùng danh mục (nếu có)
        $this->relatedProducts = Product::where('category_id', $this->product->category_id)
            ->where('id', '!=', $this->product->id) // Loại trừ sản phẩm hiện tại
            ->inRandomOrder()
            ->take(6)
            ->get();
    }

    public function render()
    {
        return view('livewire.product-detail', [
            'product' => $this->product,
            'relatedProducts' => $this->relatedProducts,
        ]);
    }
}
