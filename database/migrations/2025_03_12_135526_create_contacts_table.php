<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('contacts', function (Blueprint $table) {
            $table->id();
            $table->string('name'); // Tên liên hệ
            $table->string('email')->unique(); // Email liên hệ
            $table->string('phone')->nullable(); // Số điện thoại
            $table->string('address')->nullable(); // Địa chỉ
            $table->text('note')->nullable(); // Ghi chú
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('contacts');
    }
};
