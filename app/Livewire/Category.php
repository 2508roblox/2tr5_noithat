<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Category as MainCategory;
use App\Models\SubCategory;
use App\Models\ChildSubCategory;
use App\Models\Product;
use Illuminate\Http\Request;
use Livewire\WithPagination;

class Category extends Component
{
    use WithPagination;
   
    public $category;
    public $minPrice;
    public $maxPrice;
    public $sortBy = 'date'; // Giá trị mặc định: Mới nhất
    public $discountedProducts = []; // Lưu 2 sản phẩm đang khuyến mãi

    public function mount($slug , Request $request)
    {
        // Tìm slug trong 3 bảng
        $this->category = MainCategory::where('slug', $slug)->first()
            ?? SubCategory::where('slug', $slug)->first()
            ?? ChildSubCategory::where('slug', $slug)->first();

        // Nếu tìm thấy danh mục, lấy danh sách sản phẩm tương ứng
        if ($this->category) {
            $query = Product::query();
            
            if ($this->category instanceof MainCategory) {
                $query->where('category_id', $this->category->id);
            } elseif ($this->category instanceof SubCategory) {
                $query->where('sub_category_id', $this->category->id);
            } elseif ($this->category instanceof ChildSubCategory) {
                $query->where('child_sub_category_id', $this->category->id);
            }

            $this->products = $query->paginate(12);
        }

        // Lấy sản phẩm giảm giá
        if ($this->category) {
            $query = Product::query();
            
            if ($this->category instanceof MainCategory) {
                $query->where('category_id', $this->category->id);
            } elseif ($this->category instanceof SubCategory) {
                $query->where('sub_category_id', $this->category->id);
            } elseif ($this->category instanceof ChildSubCategory) {
                $query->where('child_sub_category_id', $this->category->id);
            }

            $this->discountedProducts = $query
                ->where('discounted_price', '>', 0)
                ->orderBy('discounted_price', 'asc')
                ->limit(2)
                ->get();
        }

        $this->minPrice = $request->query('min_price');
        $this->maxPrice = $request->query('max_price');

        $this->filterProducts();
    }
    public function getBreadcrumb()
    {
        $breadcrumbs = [];
        $category = $this->category;
    
        while ($category) {
            $breadcrumbs[] = [
                'name' => $category->name,
                'slug' => $category->slug
            ];
    
            // Tìm danh mục cha
            if ($category instanceof ChildSubCategory) {
                $category = SubCategory::find($category->sub_category_id);
            } elseif ($category instanceof SubCategory) {
                $category = MainCategory::find($category->category_id);
            } else {
                $category = null;
            }
        }
    
        return array_reverse($breadcrumbs); // Đảo ngược mảng để đúng thứ tự cha -> con
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
        if (!$this->category) {
            return Product::whereNull('id')->paginate(12);
        }

        $query = Product::query();

        // Xác định loại danh mục và chỉ lấy sản phẩm tương ứng
        if ($this->category instanceof MainCategory) {
            $query->where('category_id', $this->category->id);
        } elseif ($this->category instanceof SubCategory) {
            $query->where('sub_category_id', $this->category->id);
        } elseif ($this->category instanceof ChildSubCategory) {
            $query->where('child_sub_category_id', $this->category->id);
        }

        // Lọc theo giá nếu có giá trị
        if ($this->minPrice !== null) {
            $query->where('discounted_price', '>=', $this->minPrice);
        }
        if ($this->maxPrice !== null) {
            $query->where('discounted_price', '<=', $this->maxPrice);
        }

        switch ($this->sortBy) {
            case 'popularity':
                $query->orderBy('views', 'desc');
                break;
            case 'rating':
                $query->orderBy('rating', 'desc');
                break;
            case 'date':
                $query->orderBy('created_at', 'desc');
                break;
            case 'price':
                $query->orderBy('discounted_price', 'asc');
                break;
            case 'price-desc':
                $query->orderBy('discounted_price', 'desc');
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
    public function render()
    {
        return view('livewire.category', [
            'category' => $this->category,
            'products' => $this->getProducts(),
            'discountedProducts' => $this->discountedProducts, // Truyền danh sách sản phẩm giảm giá

        ]);
    }
}
