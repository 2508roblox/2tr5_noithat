<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderItem extends Model
{
    use HasFactory;

    protected $fillable = [
        'contact_id',
        'product_id',
        'quantity',
    ];

    // Quan hệ với Contact
    public function contact()
    {
        return $this->belongsTo(Contact::class);
    }

    // Quan hệ với Product (giả sử bạn có model Product)
    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
