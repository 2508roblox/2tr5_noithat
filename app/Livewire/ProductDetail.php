<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Product;
use App\Models\Category;
use App\Models\SubCategory;
use App\Models\ChildSubCategory;
use Illuminate\Support\Facades\Session;

class ProductDetail extends Component
{
    public $product;
    public $relatedProducts;
    public $quantity = 1;

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
    public function addToCart()
    {
        $cart = Session::get('cart', []);
    
        if (isset($cart[$this->product->id])) {
            $cart[$this->product->id]['quantity'] += $this->quantity;
        } else {
            $cart[$this->product->id] = [
                'id' => $this->product->id,
                'name' => $this->product->name,
                'price' => $this->product->discounted_price ?? $this->product->original_price,
                'image' => $this->product->image,
                'quantity' => $this->quantity,
            ];
        }
    
        Session::put('cart', $cart);
    
        session()->flash('success', 'Đã thêm vào giỏ hàng!');
        
        return redirect()->route('cart'); // Chuyển hướng đến trang giỏ hàng
    }
    
    public function render()
    {
        return view('livewire.product-detail', [
            'product' => $this->product,
            'relatedProducts' => $this->relatedProducts,
        ]);
    }
}
