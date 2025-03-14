<?php

namespace App\Livewire;

use Livewire\Component;
use Illuminate\Support\Facades\Session;
use App\Models\Category;

class Header extends Component
{
    public $categories;
    public $cartCount = 0;

    public function mount()
    {
        $this->categories = Category::with([
            'subCategories' => function ($query) {
                $query->with('products');
            },
            'subCategories.childSubCategories',
            'products'
        ])->get();

        $this->updateCartCount();
    }

    protected function updateCartCount()
    {
        $cart = Session::get('cart', []);
        $this->cartCount = array_sum(array_column($cart, 'quantity'));
    }

    public function render()
    {
        return view('livewire.header', [
            'categories' => $this->categories,
            'cartCount' => $this->cartCount
        ]);
    }
}
