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
        Schema::create('child_sub_categories', function (Blueprint $table) {
            $table->id();
            $table->foreignId('sub_category_id')->constrained('sub_categories')->onDelete('cascade');
            $table->string('name');
            $table->string('slug')->unique();
            $table->boolean('is_hot')->default(false);
            $table->boolean('is_sale')->default(false);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('child_sub_categories');
    }
};
