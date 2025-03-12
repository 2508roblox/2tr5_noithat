<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class ChildSubCategory extends Model
{
    use HasFactory;

    protected $fillable = ['sub_category_id', 'name', 'slug', 'is_hot', 'is_sale'];

    public function subCategory(): BelongsTo
    {
        return $this->belongsTo(SubCategory::class);
    }
}
