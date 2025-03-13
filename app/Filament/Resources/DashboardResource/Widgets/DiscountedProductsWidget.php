<?php

namespace App\Filament\Resources\DashboardResource\Widgets;

use App\Models\Product;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Card;

class DiscountedProductsWidget extends BaseWidget
{
    protected function getCards(): array
    {
        return [
            $this->createCard('Sản phẩm giảm giá', Product::whereNotNull('discounted_price'), 'heroicon-o-tag', 'success'),
        ];
    }

    private function createCard($title, $query, $icon, $color)
    {
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
