<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>{{ $title ?? 'Page Title' }}</title>
    </head>
    <body>
        @livewire('header')
        @livewire('sidebar')

        {{ $slot }}
        @livewire('footer')
        <style>
              @font-face {
                font-weight: normal;
                font-style: normal;
                font-family: "woodmart-font";
                src: url("/assets/wp-content/themes/woodmart/fonts/woodmart-font-2-400.woff2?v=8.0.6") format("woff2");
            }
            .browser-Safari .hide-larger-price .price, 
.browser-Safari .hide-larger-price .wd-sticky-btn-cart .price {
    white-space: nowrap;
}

@media (max-width: 768px) { /* Khi màn hình nhỏ hơn hoặc bằng 768px (mobile) */
    .browser-Safari .hide-larger-price .price, 
    .browser-Safari .hide-larger-price .wd-sticky-btn-cart .price {
        white-space: normal;
    }
}

        </style>
    </body>
</html>
