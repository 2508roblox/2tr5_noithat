<?php

use Illuminate\Support\Facades\Route;
use App\Livewire\Home;
use App\Livewire\Products;
use App\Livewire\Cart;
use App\Livewire\ProductDetail;
use App\Livewire\Category;
Route::get('/', Home::class)->name('home');
Route::get('/san-pham', Products::class)->name('products');
Route::get('/gio-hang', Cart::class)->name('cart');
Route::get('/san-pham/{slug}', ProductDetail::class)->name('product.detail');
Route::get('/danh-muc/{slug}', Category::class)->name('category');