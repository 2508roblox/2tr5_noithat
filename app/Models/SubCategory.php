<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SubCategory extends Model
{
    use HasFactory;

    protected $fillable = ['category_id', 'name', 'slug', 'is_hot', 'is_sale'];

    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id');
    }
    public function childSubCategories()
    {
        return $this->hasMany(ChildSubCategory::class, 'sub_category_id');
    }
    public function products()
    {
        return $this->hasMany(Product::class, 'sub_category_id');
    }
}
