<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Category;

class Header extends Component
{
    public $categories;

    public function mount()
    {
        $this->categories = Category::with([
            'subCategories' => function ($query) {
                $query->with('products');
            },
            'subCategories.childSubCategories',
            'products'
        ])->get();
    }

    public function render()
    {
        return view('livewire.header', [
            'categories' => $this->categories
        ]);
    }
}
