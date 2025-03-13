<?php

namespace App\Livewire;

use App\Models\Banner;
use App\Models\Category;
use Livewire\Component;

class Home extends Component
{
    public $categories;
    public $banners;

    public function render()
    {
        $this->categories = Category::with([
            'subCategories' => function ($query) {
                $query->with('products');
            },
            'subCategories.childSubCategories',
            'products'
        ])->get();

        $this->banners = Banner::all(); // Lấy tất cả banner

        return view('livewire.home', [
            'categories' => $this->categories,
            'banners' => $this->banners
        ]);
    }
}
