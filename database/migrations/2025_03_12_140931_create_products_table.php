<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('name'); // Tên sản phẩm
            $table->string('image'); // Ảnh chính
            $table->json('additional_images')->nullable(); // Danh sách ảnh phụ
            $table->string('slug')->unique(); // Slug
            $table->foreignId('child_sub_category_id')->constrained('child_sub_categories'); // ID child sub category
            $table->foreignId('category_id')->constrained('categories'); // ID category
            $table->foreignId('sub_category_id')->constrained('sub_categories'); // ID sub category
            $table->json('attributes')->nullable(); // Thuộc tính (object)
            $table->decimal('original_price', 15, 2); // Giá gốc
            $table->decimal('discounted_price', 15, 2)->nullable(); // Giá khuyến mãi
            $table->unsignedInteger('view_count')->default(0); // Số người đã xem
            $table->string('product_code')->unique(); // Mã sản phẩm
            $table->text('product_info'); // Thông tin sản phẩm
            $table->boolean('is_hot')->default(false); // Is hot
            $table->boolean('is_new')->default(false); // Is new
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
