<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>{{ $title ?? 'Page Title' }}</title>
</head>

<body>
    <style>
        /* Lớp phủ loading */
        #loading-overlay {
          position: fixed;
          top: 0;
          left: 0;
          width: 100%;
          height: 100%;
          background: white;
          display: flex;
          align-items: center;
          justify-content: center;
          font-size: 20px;
          font-weight: bold;
          z-index: 9999;
          transition: opacity 0.5s ease-out;
        }
      </style>
      
      <!-- Lớp phủ loading -->
      <div id="loading-overlay">Loading...</div>
      
      <!-- Preload CSS -->
      <link rel="preload" as="style" href="/assets/wp-content/litespeed/css/6d10f4ab671deb913b5749b76e3b6df9.css?ver=d7d14" 
            onload="this.onload=null;this.rel='stylesheet'; document.getElementById('loading-overlay').style.opacity = '0'; 
            setTimeout(() => document.getElementById('loading-overlay').remove(), 500);">
      <noscript>
        <link rel="stylesheet" href="/assets/wp-content/litespeed/css/6d10f4ab671deb913b5749b76e3b6df9.css?ver=d7d14">
      </noscript>
      
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

        @media (max-width: 768px) {

            /* Khi màn hình nhỏ hơn hoặc bằng 768px (mobile) */
            .browser-Safari .hide-larger-price .price,
            .browser-Safari .hide-larger-price .wd-sticky-btn-cart .price {
                white-space: normal;
            }
        }

        body {
            margin-left: 0 !important;
        }


        @media (min-width: 1025px) {
            .wd-sticky-nav-enabled:not([class*="wrapper-boxed"]) .whb-header.whb-sticky-real.whb-sticked .whb-main-header {
                margin-left: 0 !important;
            }
        }
        #loading {
            position: fixed;
            width: 100%;
            height: 100%;
            background: rgb(255, 255, 255);
            z-index: 9999;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .spinner {
            width: 50px;
            height: 50px;
            border: 5px solid rgba(0, 0, 0, 0.1);
            border-top-color: #3498db;
            border-radius: 50%;
            animation: spin 1s linear infinite;
        }

        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
    </style>
   
</body>

</html>
