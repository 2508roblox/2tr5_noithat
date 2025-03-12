<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'email',
        'phone',
        'address',
        'note',
    ];

    // Nếu có quan hệ với OrderItem
    public function orderItems()
    {
        return $this->hasMany(OrderItem::class);
    }
}
