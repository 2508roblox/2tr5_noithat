<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'image',
        'additional_images',
        'slug',
        'child_sub_category_id',
        'category_id',
        'sub_category_id',
        'attributes',
        'original_price',
        'discounted_price',
        'view_count',
        'product_code',
        'product_info',
        'is_hot',
        'is_new',
    ];

    // Nếu có quan hệ với các bảng khác:
    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function subCategory()
    {
        return $this->belongsTo(SubCategory::class);
    }

    public function childSubCategory()
    {
        return $this->belongsTo(ChildSubCategory::class);
    }
}
