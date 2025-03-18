<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    protected $fillable = ['icon_image', 'image', 'name', 'slug'];

    public function subCategories()
    {
        return $this->hasMany(SubCategory::class, 'category_id');
    }
    
    public function products()
    {
        return $this->hasMany(Product::class, 'category_id');
    }

    public static function getProductsBySlug($slug)
    {
        $category = self::where('slug', $slug)->first();
        
        if ($category) {
            return $category->products;
        }

        $subCategory = SubCategory::where('slug', $slug)->first();
        if ($subCategory) {
            return $subCategory->products;
        }

        $childSubCategory = ChildSubCategory::where('slug', $slug)->first();
        if ($childSubCategory) {
            return Product::where('child_sub_category_id', $childSubCategory->id)->get();
        }

        return collect([]);
    }
}
