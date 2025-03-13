<?php

namespace App\Filament\Resources\DashboardResource\Widgets;

use App\Models\Contact;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Card;

class TotalContactsWidget extends BaseWidget
{
    protected function getCards(): array
    {
        return [
            $this->createCard('Tổng số liên hệ', Contact::class, 'heroicon-o-phone', 'info'),
        ];
    }

    private function createCard($title, $model, $icon, $color)
    {
        $totalCount = $model::count();
        $currentMonthCount = $model::whereMonth('created_at', now()->month)->count();
        $previousMonthCount = $model::whereMonth('created_at', now()->subMonth()->month)->count();
        $percentageChange = $this->calculatePercentageChange($currentMonthCount, $previousMonthCount);

        return Card::make($title, $totalCount)
            ->icon($icon)
            ->color($color)
            ->description("Tháng này: {$currentMonthCount} ({$percentageChange})")
            ->descriptionIcon($percentageChange > 0 ? 'heroicon-o-arrow-trending-up' : 'heroicon-o-arrow-trending-down')
            ->chart($this->generateChartData($model));
    }

    private function calculatePercentageChange($current, $previous)
    {
        if ($previous == 0) {
            return $current > 0 ? "+100%" : "0%";
        }
        $change = (($current - $previous) / $previous) * 100;
        return ($change >= 0 ? "+" : "") . round($change, 2) . "%";
    }

    private function generateChartData($model)
    {
        return collect(range(5, 0))->map(function ($i) use ($model) {
            return $model::whereMonth('created_at', now()->subMonths($i)->month)->count();
        })->toArray();
    }
}