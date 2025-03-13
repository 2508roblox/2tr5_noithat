<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\Product;
use App\Models\Category;
use Illuminate\Http\Request;

class Products extends Component
{
    use WithPagination;

    public $categories;
    public $minPrice;
    public $maxPrice;
    public $category;
    public $sortBy = 'date'; // Mặc định là sắp xếp theo ngày mới nhất

    public function mount(  Request $request)
    {
        $this->categories = Category::all();
        $this->products = $this->getProducts();
        $this->minPrice = $request->query('min_price');
        $this->maxPrice = $request->query('max_price');

         
    }
    public function filterProducts()
    {
        if ($this->category) {
            $query = Product::where(function ($query) {
                $query->where('category_id', $this->category->id)
                    ->orWhere('sub_category_id', $this->category->id)
                    ->orWhere('child_sub_category_id', $this->category->id);
            });

            // Lọc theo giá nếu có giá trị
            if ($this->minPrice !== null) {
                $query->where('discounted_price', '>=', $this->minPrice);
            }
            if ($this->maxPrice !== null) {
                $query->where('discounted_price', '<=', $this->maxPrice);
            }
            switch ($this->sortBy) {
                case 'popularity':
                    $query->orderBy('views', 'desc'); // Giả sử có cột 'views' để đo độ phổ biến
                    break;
                case 'rating':
                    $query->orderBy('rating', 'desc'); // Giả sử có cột 'rating'
                    break;
                case 'date':
                    $query->orderBy('created_at', 'desc'); // Mới nhất
                    break;
                case 'price':
                    $query->orderBy('discounted_price', 'asc'); // Giá thấp đến cao
                    break;
                case 'price-desc':
                    $query->orderBy('discounted_price', 'desc'); // Giá cao đến thấp
                    break;
            }


            $this->products = $query->paginate(12);
        }
    }
  
    public function getProducts()
    {
        $query = Product::query();

        // Lọc theo khoảng giá
        if ($this->minPrice !== null) {
            $query->where('discounted_price', '>=', $this->minPrice);
        }
        if ($this->maxPrice !== null) {
            $query->where('discounted_price', '<=', $this->maxPrice);
        }

        // Sắp xếp theo tiêu chí
        switch ($this->sortBy) {
            case 'popularity':
                $query->orderBy('view_count', 'desc');
                break;
            case 'price-asc':
                $query->orderBy('discounted_price', 'asc');
                break;
            case 'price-desc':
                $query->orderBy('discounted_price', 'desc');
                break;
            case 'date':
            default:
                $query->orderBy('created_at', 'desc');
                break;
        }

        return $query->paginate(12);
    }

    public function updated($property)
    {
        if ($property === 'minPrice' || $property === 'maxPrice') {
            $this->filterProducts();
        }
    }
    public function getPromotionalProducts()
{
    return Product::where('discounted_price', '>', 0)
        ->orderBy('created_at', 'desc')
        ->take(4)
        ->get();
}

    public function render()
    {
        return view('livewire.products', [
            'products' => $this->getProducts(),
            'categories' => $this->categories,
            'promotionalProducts' => $this->getPromotionalProducts(),
        ]);
    }
}
