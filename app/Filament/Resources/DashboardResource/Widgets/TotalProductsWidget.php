<?php

namespace App\Filament\Resources\DashboardResource\Widgets;

use App\Models\Product;
use App\Models\Contact;
use App\Models\Category;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Card;

class TotalProductsWidget extends BaseWidget
{
    protected function getCards(): array
    {
        return [
            $this->createCard('Tổng số sản phẩm', Product::class, 'heroicon-o-circle-stack', 'primary'),
            $this->createCard('Tổng số liên hệ', Contact::class, 'heroicon-o-phone', 'info'),
            $this->createCard('Tổng số danh mục', Category::class, 'heroicon-o-folder', 'warning'),
            $this->createCard('Sản phẩm giảm giá', Product::whereNotNull('discounted_price'), 'heroicon-o-tag', 'success'),
        ];
    }

    private function createCard($title, $query, $icon, $color)
    {
        if (is_string($query)) {
            $query = new $query;
        }

        $totalCount = $query->count();
        $currentMonthCount = $query->whereMonth('created_at', now()->month)->count();
        $previousMonthCount = $query->whereMonth('created_at', now()->subMonth()->month)->count();
        $percentageChange = $this->calculatePercentageChange($currentMonthCount, $previousMonthCount);

        return Card::make($title, $totalCount)
            ->icon($icon)
            ->color($color)
            ->description("Tháng này: {$currentMonthCount} ({$percentageChange})")
            ->descriptionIcon($percentageChange > 0 ? 'heroicon-o-arrow-trending-up' : 'heroicon-o-arrow-trending-down')
            ->chart($this->generateChartData($query));
    }

    private function calculatePercentageChange($current, $previous)
    {
        if ($previous == 0) {
            return $current > 0 ? "+100%" : "0%";
        }
        $change = (($current - $previous) / $previous) * 100;
        return ($change >= 0 ? "+" : "") . round($change, 2) . "%";
    }

    private function generateChartData($query)
    {
        return collect(range(5, 0))->map(function ($i) use ($query) {
            return $query->whereMonth('created_at', now()->subMonths($i)->month)->count();
        })->toArray();
    }
}
