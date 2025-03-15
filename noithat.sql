-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 15, 2025 at 01:43 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `noithat`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image`, `link`, `created_at`, `updated_at`) VALUES
(1, 'banners/01JP5E0R1CPGMNSBFZ15ZQ9E50.jpg', 'https://shop.phanhoanggia.com/san-pham/may-rua-chen-bat-hafele-hdw-fi60ab/', '2025-03-12 08:01:55', '2025-03-12 08:01:55'),
(2, 'banners/01JP5E14651R44W3H45BAS3RA1.jpg', 'https://shop.phanhoanggia.com/san-pham/may-rua-chen-bat-hafele-hdw-fi60ab/', '2025-03-12 08:02:07', '2025-03-12 08:02:07'),
(3, 'banners/01JP5E1PB9FEZXGGEK38AFBMNG.jpg', 'https://shop.phanhoanggia.com/san-pham/may-rua-chen-bat-hafele-hdw-fi60ab/', '2025-03-12 08:02:26', '2025-03-12 08:02:26'),
(4, 'banners/01JP5E1WCMVHH9BV65Q1730QV7.jpg', 'https://shop.phanhoanggia.com/san-pham/may-rua-chen-bat-hafele-hdw-fi60ab/', '2025-03-12 08:02:32', '2025-03-12 08:02:32');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('cghome_cache_356a192b7913b04c54574d18c28d46e6395428ab', 'i:2;', 1741959934),
('cghome_cache_356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1741959934;', 1741959934),
('cghome_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1741952574),
('cghome_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1741952574;', 1741952574),
('cghome_cache_theme', 's:6:\"sunset\";', 2057192147),
('laravel_cache_356a192b7913b04c54574d18c28d46e6395428ab', 'i:4;', 1741791773),
('laravel_cache_356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1741791773;', 1741791773),
('laravel_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1741828550),
('laravel_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1741828550;', 1741828550),
('laravel_cache_theme', 's:6:\"sunset\";', 2057148995),
('laravel_cache_theme_color', 's:4:\"blue\";', 2057188523);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `icon_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `icon_image`, `image`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'categories/icons/01JP59AK6ES02WYZWYF2FZSVWS.svg', 'categories/images/01JP59AK6JK4B4KNVFCFXPNNHV.webp', 'Thi công nội thất', 'thi-cong-noi-that', '2025-03-12 06:39:55', '2025-03-12 06:48:03'),
(2, 'categories/icons/01JP5AZ1X6EF38DMK0A18KV45F.svg', 'categories/images/01JPAECKHWYBFZBRJ9NY0BBHVJ.jpg', 'Cửa gỗ Composite', 'cua-go-composite', '2025-03-12 07:08:34', '2025-03-14 06:44:36'),
(3, 'categories/icons/01JP5AZGM2PXQGTEZ69D15MYC8.svg', 'categories/images/01JPAEDKBHJ45N9K88ZKVCMBSD.jpg', 'Khóa cửa', 'khoa-cua', '2025-03-12 07:08:49', '2025-03-14 06:45:08');

-- --------------------------------------------------------

--
-- Table structure for table `child_sub_categories`
--

CREATE TABLE `child_sub_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `sub_category_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_hot` tinyint(1) NOT NULL DEFAULT '0',
  `is_sale` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `child_sub_categories`
--

INSERT INTO `child_sub_categories` (`id`, `sub_category_id`, `name`, `slug`, `is_hot`, `is_sale`, `created_at`, `updated_at`) VALUES
(1, 1, 'Kệ TV', 'ke-tv', 0, 0, '2025-03-12 07:04:23', '2025-03-12 07:04:43'),
(2, 1, 'Sofa', 'sofa', 0, 0, '2025-03-12 07:04:35', '2025-03-12 07:04:35'),
(3, 1, 'Bàn ăn', 'ban-an', 0, 0, '2025-03-12 07:04:57', '2025-03-12 07:04:57'),
(4, 1, 'Vách ốp trần nhựa', 'vach-op-tran-nhua', 0, 0, '2025-03-12 07:05:17', '2025-03-12 07:05:17'),
(5, 3, 'Tủ bếp', 'tu-bep', 0, 0, '2025-03-12 07:05:30', '2025-03-12 07:05:30'),
(7, 3, 'Bàn ăn bếp', 'ban-an-bep', 0, 0, '2025-03-12 07:05:45', '2025-03-12 07:06:38'),
(8, 3, 'Phụ kiện bếp', 'phu-kien-bep', 0, 0, '2025-03-12 07:07:31', '2025-03-12 07:07:31'),
(9, 2, 'Giường', 'giuong', 0, 0, '2025-03-12 07:07:43', '2025-03-12 07:07:43'),
(10, 2, 'Tủ áo', 'tu-ao', 0, 0, '2025-03-12 07:07:56', '2025-03-12 07:07:56'),
(11, 2, 'Bàn trang điểm', 'ban-trang-diem', 0, 0, '2025-03-12 07:08:02', '2025-03-12 07:08:02'),
(12, 6, 'Composite', 'composite', 0, 0, '2025-03-14 06:17:09', '2025-03-14 06:17:09'),
(13, 4, 'Khóa nhôm', 'khoa-nhom', 0, 0, '2025-03-14 06:22:37', '2025-03-14 06:22:37');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `address`, `note`, `created_at`, `updated_at`) VALUES
(1, 'Giang Trần', 'trangiangzxc@gmail.com', '09456486823', 'HCM', 'Xin chào', NULL, NULL),
(3, 'giang ', 'trangiangzxc@gmail.com', '0589317493', 'HCM ckasdkfaf', '123123', '2025-03-14 05:33:54', '2025-03-14 05:33:54');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_12_132742_create_categories_table', 2),
(5, '2025_03_12_132759_create_sub_categories_table', 2),
(6, '2025_03_12_133640_create_child_sub_categories_table', 3),
(7, '2025_03_12_135526_create_contacts_table', 3),
(8, '2025_03_12_140931_create_products_table', 4),
(9, '2025_03_12_145529_create_order_items_table', 5),
(10, '2025_03_12_141451_add_themes_settings_to_users_table', 6),
(11, '2025_03_12_142251_create_banners_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint UNSIGNED NOT NULL,
  `contact_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `contact_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 9, NULL, NULL),
(2, 3, 2, 10, '2025-03-14 05:33:54', '2025-03-14 05:33:54');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_images` json DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `child_sub_category_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `sub_category_id` bigint UNSIGNED NOT NULL,
  `attributes` json DEFAULT NULL,
  `original_price` decimal(15,2) NOT NULL,
  `discounted_price` decimal(15,2) DEFAULT NULL,
  `view_count` int UNSIGNED NOT NULL DEFAULT '0',
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_hot` tinyint(1) NOT NULL DEFAULT '0',
  `is_new` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `additional_images`, `slug`, `child_sub_category_id`, `category_id`, `sub_category_id`, `attributes`, `original_price`, `discounted_price`, `view_count`, `product_code`, `product_info`, `is_hot`, `is_new`, `created_at`, `updated_at`) VALUES
(2, 'Tủ kệ tivi hiện đại cho gia đình Toutousai', 'products/01JP5DYGMR9XFXT0HTYRW70GPB.jpg', '[\"products/01JP5DZFQKFX1NBE3016F4Y95S.jpg\", \"products/01JP5DZFQPNYQ7RVFENTGSBST0.jpg\"]', 'tu-ke-tivi-hien-dai-cho-gia-dinh-toutousai', 1, 1, 1, '{\"Hotline\": \"0933 427 499\", \"Bảo hành\": \"3 năm\", \"Xuất xứ\": \"Thổ Nhĩ Kỳ\", \"Thương hiệu\": \"HAFELE\", \"Kích thước lắp đặt\": \"600R x 600S x 820-870C mm\", \"Kích thước sản phẩm\": \"598R x 570S x 820-875C mm\"}', '3494000.00', '2432000.00', 0, 'NOKAIW003', '<h2>1. Đặc tính sản phẩm của máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Sức chứa: 14 bộ đồ ăn Châu Âu</li><li>8 chương trình rửa: Rửa tự động, Rửa mạnh, Rửa thường, Rửa tiết kiệm, Rửa ly tách dễ vỡ, Rửa 90 phút, Rửa nhanh, Rửa ngâm</li><li>Chức năng đặc biệt: Tăng tốc độ rửa, làm khô tăng cường, rửa mạnh tăng cường, tiết kiệm năng lượng, tùy chọn rửa nửa tải trên hoặc dưới</li><li>Điều khiển nút nhấn, Màn hình hiển thị LED</li><li>Động cơ BLDC</li><li>Tự động mở cửa</li><li>Tiêu chuẩn tiết kiệm năng lượng A+++ (Châu Âu)</li><li>Chức năng báo mức muối và chất tẩy rửa</li></ul><h2>2. Thông số kỹ thuật máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Mã sản phẩm: Hafele HDW-HI60B</li><li>Model: 533.23.210</li><li>Xuất xứ: Made in Turkey</li><li>Kiểu dáng: Máy rửa bát bán phần</li><li>Loại sản phẩm: Máy rửa bát Hafele</li><li>Nhãn năng lượng: A++</li><li>Điều khiển: Cơ</li><li>Mức độ tiêu thụ nước (l): 09 lít/ 1 lần rửa</li><li>Công suất rửa: 15 bộ bát đĩa âu</li><li>Số chương trình rửa: 07</li><li>Hệ thống khóa trẻ em: Có</li><li>Đèn báo muối và chất tẩy rửa: Có</li><li>Màn hình hiển thị: LED</li><li>Chất liệu/màu sắc: Thép không gỉ, màu inox</li><li>Độ ồn (dB): 44dB</li><li>Mức tiêu thụ điện năng: 1.02 kwh/ 1 lần rửa</li><li>Điện áp: 220V-240V /~ 50Hz 10A</li><li>Kích thước sản phẩm: 598R x 570S x 820-875C mm</li><li>Kích thước hốc tủ: 600R x 600S x 820-870C mm</li></ul><p>Thông tin về máy rửa chén</p><h2>Máy rửa chén bát hoạt động như thế nào?</h2><p><a href=\"https://shop.phanhoanggia.com/danh-muc-san-pham/may-rua-chen-bat/\"><strong>Máy rửa chén bát</strong></a> hoạt động hiệu quả bằng cách sử dụng lực phun xoáy mạnh mẽ của nước để làm sạch bát, đĩa và đồ dùng nhà bếp. Đồng thời, nhờ vào khay rổ bên trong có khả năng xoay chuyển và thay đổi vị trí, các vết bẩn bám trên bát, đĩa, đồ dùng nhà bếp được loại bỏ hoàn toàn.</p><p>Sau quá trình làm sạch, bát, đĩa được sấy khô bằng không khí nóng. Máy còn được trang bị chức năng xác định thời gian cho một chu trình rửa và đi kèm với khả năng xả nước tẩy rửa, phun nước, và xả nước.</p><p>Ngoài ra, máy rửa chén bát tích hợp nhiều chương trình rửa đa dạng, mang lại sự tiện lợi cho người dùng, bao gồm chương trình rửa nhanh, rửa tiết kiệm, rửa mạnh, và rửa sâu.</p><p><br></p>', 1, 0, '2025-03-12 08:00:42', '2025-03-12 08:01:14'),
(4, 'Ghế sofa băng dài 2m4 BT64 Orren vải bố mềm', 'products/01JPAC5V753K909TAFC2E7NPNX.avif', '[\"products/01JP5DZFQKFX1NBE3016F4Y95S.jpg\", \"products/01JP5DZFQPNYQ7RVFENTGSBST0.jpg\"]', 'ghe-sofa-bang-dai-2m4-bt64-orren-vai-bo-mem', 2, 1, 1, '{\"Hotline\": \"0933 427 499\", \"Bảo hành\": \"3 năm\", \"Xuất xứ\": \"Thổ Nhĩ Kỳ\", \"Thương hiệu\": \"HAFELE\", \"Kích thước lắp đặt\": \"600R x 600S x 820-870C mm\", \"Kích thước sản phẩm\": \"598R x 570S x 820-875C mm\"}', '3494000.00', '2432000.00', 0, 'NOKAIW0033', '<h2>1. Đặc tính sản phẩm của máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Sức chứa: 14 bộ đồ ăn Châu Âu</li><li>8 chương trình rửa: Rửa tự động, Rửa mạnh, Rửa thường, Rửa tiết kiệm, Rửa ly tách dễ vỡ, Rửa 90 phút, Rửa nhanh, Rửa ngâm</li><li>Chức năng đặc biệt: Tăng tốc độ rửa, làm khô tăng cường, rửa mạnh tăng cường, tiết kiệm năng lượng, tùy chọn rửa nửa tải trên hoặc dưới</li><li>Điều khiển nút nhấn, Màn hình hiển thị LED</li><li>Động cơ BLDC</li><li>Tự động mở cửa</li><li>Tiêu chuẩn tiết kiệm năng lượng A+++ (Châu Âu)</li><li>Chức năng báo mức muối và chất tẩy rửa</li></ul><h2>2. Thông số kỹ thuật máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Mã sản phẩm: Hafele HDW-HI60B</li><li>Model: 533.23.210</li><li>Xuất xứ: Made in Turkey</li><li>Kiểu dáng: Máy rửa bát bán phần</li><li>Loại sản phẩm: Máy rửa bát Hafele</li><li>Nhãn năng lượng: A++</li><li>Điều khiển: Cơ</li><li>Mức độ tiêu thụ nước (l): 09 lít/ 1 lần rửa</li><li>Công suất rửa: 15 bộ bát đĩa âu</li><li>Số chương trình rửa: 07</li><li>Hệ thống khóa trẻ em: Có</li><li>Đèn báo muối và chất tẩy rửa: Có</li><li>Màn hình hiển thị: LED</li><li>Chất liệu/màu sắc: Thép không gỉ, màu inox</li><li>Độ ồn (dB): 44dB</li><li>Mức tiêu thụ điện năng: 1.02 kwh/ 1 lần rửa</li><li>Điện áp: 220V-240V /~ 50Hz 10A</li><li>Kích thước sản phẩm: 598R x 570S x 820-875C mm</li><li>Kích thước hốc tủ: 600R x 600S x 820-870C mm</li></ul><p>Thông tin về máy rửa chén</p><h2>Máy rửa chén bát hoạt động như thế nào?</h2><p><a href=\"https://shop.phanhoanggia.com/danh-muc-san-pham/may-rua-chen-bat/\"><strong>Máy rửa chén bát</strong></a> hoạt động hiệu quả bằng cách sử dụng lực phun xoáy mạnh mẽ của nước để làm sạch bát, đĩa và đồ dùng nhà bếp. Đồng thời, nhờ vào khay rổ bên trong có khả năng xoay chuyển và thay đổi vị trí, các vết bẩn bám trên bát, đĩa, đồ dùng nhà bếp được loại bỏ hoàn toàn.</p><p>Sau quá trình làm sạch, bát, đĩa được sấy khô bằng không khí nóng. Máy còn được trang bị chức năng xác định thời gian cho một chu trình rửa và đi kèm với khả năng xả nước tẩy rửa, phun nước, và xả nước.</p><p>Ngoài ra, máy rửa chén bát tích hợp nhiều chương trình rửa đa dạng, mang lại sự tiện lợi cho người dùng, bao gồm chương trình rửa nhanh, rửa tiết kiệm, rửa mạnh, và rửa sâu.</p><p><br></p>', 1, 0, '2025-03-12 08:00:42', '2025-03-14 06:06:10'),
(6, 'Thi Công Trần Nhựa Khổ Rộng 25 cm ', 'products/01JPACGKPGF62N5SHSDDCKMADQ.png', '[\"products/01JP5DZFQKFX1NBE3016F4Y95S.jpg\", \"products/01JP5DZFQPNYQ7RVFENTGSBST0.jpg\"]', 'thi-cong-tran-nhua-kho-rong-25-cm', 4, 1, 1, '{\"Hotline\": \"0933 427 499\", \"Bảo hành\": \"3 năm\", \"Xuất xứ\": \"Thổ Nhĩ Kỳ\", \"Thương hiệu\": \"HAFELE\", \"Kích thước lắp đặt\": \"600R x 600S x 820-870C mm\", \"Kích thước sản phẩm\": \"598R x 570S x 820-875C mm\"}', '3494000.00', '2432000.00', 0, 'NOKAIW00332', '<h2>1. Đặc tính sản phẩm của máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Sức chứa: 14 bộ đồ ăn Châu Âu</li><li>8 chương trình rửa: Rửa tự động, Rửa mạnh, Rửa thường, Rửa tiết kiệm, Rửa ly tách dễ vỡ, Rửa 90 phút, Rửa nhanh, Rửa ngâm</li><li>Chức năng đặc biệt: Tăng tốc độ rửa, làm khô tăng cường, rửa mạnh tăng cường, tiết kiệm năng lượng, tùy chọn rửa nửa tải trên hoặc dưới</li><li>Điều khiển nút nhấn, Màn hình hiển thị LED</li><li>Động cơ BLDC</li><li>Tự động mở cửa</li><li>Tiêu chuẩn tiết kiệm năng lượng A+++ (Châu Âu)</li><li>Chức năng báo mức muối và chất tẩy rửa</li></ul><h2>2. Thông số kỹ thuật máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Mã sản phẩm: Hafele HDW-HI60B</li><li>Model: 533.23.210</li><li>Xuất xứ: Made in Turkey</li><li>Kiểu dáng: Máy rửa bát bán phần</li><li>Loại sản phẩm: Máy rửa bát Hafele</li><li>Nhãn năng lượng: A++</li><li>Điều khiển: Cơ</li><li>Mức độ tiêu thụ nước (l): 09 lít/ 1 lần rửa</li><li>Công suất rửa: 15 bộ bát đĩa âu</li><li>Số chương trình rửa: 07</li><li>Hệ thống khóa trẻ em: Có</li><li>Đèn báo muối và chất tẩy rửa: Có</li><li>Màn hình hiển thị: LED</li><li>Chất liệu/màu sắc: Thép không gỉ, màu inox</li><li>Độ ồn (dB): 44dB</li><li>Mức tiêu thụ điện năng: 1.02 kwh/ 1 lần rửa</li><li>Điện áp: 220V-240V /~ 50Hz 10A</li><li>Kích thước sản phẩm: 598R x 570S x 820-875C mm</li><li>Kích thước hốc tủ: 600R x 600S x 820-870C mm</li></ul><p>Thông tin về máy rửa chén</p><h2>Máy rửa chén bát hoạt động như thế nào?</h2><p><a href=\"https://shop.phanhoanggia.com/danh-muc-san-pham/may-rua-chen-bat/\"><strong>Máy rửa chén bát</strong></a> hoạt động hiệu quả bằng cách sử dụng lực phun xoáy mạnh mẽ của nước để làm sạch bát, đĩa và đồ dùng nhà bếp. Đồng thời, nhờ vào khay rổ bên trong có khả năng xoay chuyển và thay đổi vị trí, các vết bẩn bám trên bát, đĩa, đồ dùng nhà bếp được loại bỏ hoàn toàn.</p><p>Sau quá trình làm sạch, bát, đĩa được sấy khô bằng không khí nóng. Máy còn được trang bị chức năng xác định thời gian cho một chu trình rửa và đi kèm với khả năng xả nước tẩy rửa, phun nước, và xả nước.</p><p>Ngoài ra, máy rửa chén bát tích hợp nhiều chương trình rửa đa dạng, mang lại sự tiện lợi cho người dùng, bao gồm chương trình rửa nhanh, rửa tiết kiệm, rửa mạnh, và rửa sâu.</p><p><br></p>', 1, 0, '2025-03-12 08:00:42', '2025-03-14 06:12:21'),
(7, 'Bộ bàn ăn gia đình 26-KH4-G2vs105 kèm ghế bench nhỏ', 'products/01JPACDRS1V9XN7BC063681K1Y.avif', '[\"products/01JP5DZFQKFX1NBE3016F4Y95S.jpg\", \"products/01JP5DZFQPNYQ7RVFENTGSBST0.jpg\"]', 'bo-ban-an-gia-dinh-26-kh4-g2vs105-kem-ghe-bench-nho1', 7, 1, 1, '{\"Hotline\": \"0933 427 499\", \"Bảo hành\": \"3 năm\", \"Xuất xứ\": \"Thổ Nhĩ Kỳ\", \"Thương hiệu\": \"HAFELE\", \"Kích thước lắp đặt\": \"600R x 600S x 820-870C mm\", \"Kích thước sản phẩm\": \"598R x 570S x 820-875C mm\"}', '3494000.00', '2432000.00', 0, 'NOKAIW041203', '<h2>1. Đặc tính sản phẩm của máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Sức chứa: 14 bộ đồ ăn Châu Âu</li><li>8 chương trình rửa: Rửa tự động, Rửa mạnh, Rửa thường, Rửa tiết kiệm, Rửa ly tách dễ vỡ, Rửa 90 phút, Rửa nhanh, Rửa ngâm</li><li>Chức năng đặc biệt: Tăng tốc độ rửa, làm khô tăng cường, rửa mạnh tăng cường, tiết kiệm năng lượng, tùy chọn rửa nửa tải trên hoặc dưới</li><li>Điều khiển nút nhấn, Màn hình hiển thị LED</li><li>Động cơ BLDC</li><li>Tự động mở cửa</li><li>Tiêu chuẩn tiết kiệm năng lượng A+++ (Châu Âu)</li><li>Chức năng báo mức muối và chất tẩy rửa</li></ul><h2>2. Thông số kỹ thuật máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Mã sản phẩm: Hafele HDW-HI60B</li><li>Model: 533.23.210</li><li>Xuất xứ: Made in Turkey</li><li>Kiểu dáng: Máy rửa bát bán phần</li><li>Loại sản phẩm: Máy rửa bát Hafele</li><li>Nhãn năng lượng: A++</li><li>Điều khiển: Cơ</li><li>Mức độ tiêu thụ nước (l): 09 lít/ 1 lần rửa</li><li>Công suất rửa: 15 bộ bát đĩa âu</li><li>Số chương trình rửa: 07</li><li>Hệ thống khóa trẻ em: Có</li><li>Đèn báo muối và chất tẩy rửa: Có</li><li>Màn hình hiển thị: LED</li><li>Chất liệu/màu sắc: Thép không gỉ, màu inox</li><li>Độ ồn (dB): 44dB</li><li>Mức tiêu thụ điện năng: 1.02 kwh/ 1 lần rửa</li><li>Điện áp: 220V-240V /~ 50Hz 10A</li><li>Kích thước sản phẩm: 598R x 570S x 820-875C mm</li><li>Kích thước hốc tủ: 600R x 600S x 820-870C mm</li></ul><p>Thông tin về máy rửa chén</p><h2>Máy rửa chén bát hoạt động như thế nào?</h2><p><a href=\"https://shop.phanhoanggia.com/danh-muc-san-pham/may-rua-chen-bat/\"><strong>Máy rửa chén bát</strong></a> hoạt động hiệu quả bằng cách sử dụng lực phun xoáy mạnh mẽ của nước để làm sạch bát, đĩa và đồ dùng nhà bếp. Đồng thời, nhờ vào khay rổ bên trong có khả năng xoay chuyển và thay đổi vị trí, các vết bẩn bám trên bát, đĩa, đồ dùng nhà bếp được loại bỏ hoàn toàn.</p><p>Sau quá trình làm sạch, bát, đĩa được sấy khô bằng không khí nóng. Máy còn được trang bị chức năng xác định thời gian cho một chu trình rửa và đi kèm với khả năng xả nước tẩy rửa, phun nước, và xả nước.</p><p>Ngoài ra, máy rửa chén bát tích hợp nhiều chương trình rửa đa dạng, mang lại sự tiện lợi cho người dùng, bao gồm chương trình rửa nhanh, rửa tiết kiệm, rửa mạnh, và rửa sâu.</p><p><br></p>', 1, 0, '2025-03-12 08:00:42', '2025-03-14 06:10:17'),
(8, 'Tủ kệ tivi hiện đại cho gia đình Toutousai', 'products/01JP5DYGMR9XFXT0HTYRW70GPB.jpg', '[\"products/01JP5DZFQKFX1NBE3016F4Y95S.jpg\", \"products/01JP5DZFQPNYQ7RVFENTGSBST0.jpg\"]', 'tu-ke-tivi-3123hi2en-dai-cho-gia-dinh-toutousai', 1, 1, 1, '{\"Hotline\": \"0933 427 499\", \"Bảo hành\": \"3 năm\", \"Xuất xứ\": \"Thổ Nhĩ Kỳ\", \"Thương hiệu\": \"HAFELE\", \"Kích thước lắp đặt\": \"600R x 600S x 820-870C mm\", \"Kích thước sản phẩm\": \"598R x 570S x 820-875C mm\"}', '3494000.00', '2432000.00', 0, 'NOKAIW045033', '<h2>1. Đặc tính sản phẩm của máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Sức chứa: 14 bộ đồ ăn Châu Âu</li><li>8 chương trình rửa: Rửa tự động, Rửa mạnh, Rửa thường, Rửa tiết kiệm, Rửa ly tách dễ vỡ, Rửa 90 phút, Rửa nhanh, Rửa ngâm</li><li>Chức năng đặc biệt: Tăng tốc độ rửa, làm khô tăng cường, rửa mạnh tăng cường, tiết kiệm năng lượng, tùy chọn rửa nửa tải trên hoặc dưới</li><li>Điều khiển nút nhấn, Màn hình hiển thị LED</li><li>Động cơ BLDC</li><li>Tự động mở cửa</li><li>Tiêu chuẩn tiết kiệm năng lượng A+++ (Châu Âu)</li><li>Chức năng báo mức muối và chất tẩy rửa</li></ul><h2>2. Thông số kỹ thuật máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Mã sản phẩm: Hafele HDW-HI60B</li><li>Model: 533.23.210</li><li>Xuất xứ: Made in Turkey</li><li>Kiểu dáng: Máy rửa bát bán phần</li><li>Loại sản phẩm: Máy rửa bát Hafele</li><li>Nhãn năng lượng: A++</li><li>Điều khiển: Cơ</li><li>Mức độ tiêu thụ nước (l): 09 lít/ 1 lần rửa</li><li>Công suất rửa: 15 bộ bát đĩa âu</li><li>Số chương trình rửa: 07</li><li>Hệ thống khóa trẻ em: Có</li><li>Đèn báo muối và chất tẩy rửa: Có</li><li>Màn hình hiển thị: LED</li><li>Chất liệu/màu sắc: Thép không gỉ, màu inox</li><li>Độ ồn (dB): 44dB</li><li>Mức tiêu thụ điện năng: 1.02 kwh/ 1 lần rửa</li><li>Điện áp: 220V-240V /~ 50Hz 10A</li><li>Kích thước sản phẩm: 598R x 570S x 820-875C mm</li><li>Kích thước hốc tủ: 600R x 600S x 820-870C mm</li></ul><p>Thông tin về máy rửa chén</p><h2>Máy rửa chén bát hoạt động như thế nào?</h2><p><a href=\"https://shop.phanhoanggia.com/danh-muc-san-pham/may-rua-chen-bat/\"><strong>Máy rửa chén bát</strong></a> hoạt động hiệu quả bằng cách sử dụng lực phun xoáy mạnh mẽ của nước để làm sạch bát, đĩa và đồ dùng nhà bếp. Đồng thời, nhờ vào khay rổ bên trong có khả năng xoay chuyển và thay đổi vị trí, các vết bẩn bám trên bát, đĩa, đồ dùng nhà bếp được loại bỏ hoàn toàn.</p><p>Sau quá trình làm sạch, bát, đĩa được sấy khô bằng không khí nóng. Máy còn được trang bị chức năng xác định thời gian cho một chu trình rửa và đi kèm với khả năng xả nước tẩy rửa, phun nước, và xả nước.</p><p>Ngoài ra, máy rửa chén bát tích hợp nhiều chương trình rửa đa dạng, mang lại sự tiện lợi cho người dùng, bao gồm chương trình rửa nhanh, rửa tiết kiệm, rửa mạnh, và rửa sâu.</p><p><br></p>', 1, 0, '2025-03-12 08:00:42', '2025-03-12 08:01:14'),
(9, 'Cửa Gỗ Nhựa Composite Ecosmart Mẫu ECO 113', 'products/01JPACXKJ3R801TCXTK9AZNB15.jpg', '[\"products/01JP5DZFQKFX1NBE3016F4Y95S.jpg\", \"products/01JP5DZFQPNYQ7RVFENTGSBST0.jpg\"]', 'cua-go-nhua-composite-ecosmart-mau-eco-113', 12, 2, 6, '{\"Hotline\": \"0933 427 499\", \"Bảo hành\": \"3 năm\", \"Xuất xứ\": \"Thổ Nhĩ Kỳ\", \"Thương hiệu\": \"HAFELE\", \"Kích thước lắp đặt\": \"600R x 600S x 820-870C mm\", \"Kích thước sản phẩm\": \"598R x 570S x 820-875C mm\"}', '3494000.00', '2432000.00', 0, 'NOKAIW0033122222', '<h2>1. Đặc tính sản phẩm của máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Sức chứa: 14 bộ đồ ăn Châu Âu</li><li>8 chương trình rửa: Rửa tự động, Rửa mạnh, Rửa thường, Rửa tiết kiệm, Rửa ly tách dễ vỡ, Rửa 90 phút, Rửa nhanh, Rửa ngâm</li><li>Chức năng đặc biệt: Tăng tốc độ rửa, làm khô tăng cường, rửa mạnh tăng cường, tiết kiệm năng lượng, tùy chọn rửa nửa tải trên hoặc dưới</li><li>Điều khiển nút nhấn, Màn hình hiển thị LED</li><li>Động cơ BLDC</li><li>Tự động mở cửa</li><li>Tiêu chuẩn tiết kiệm năng lượng A+++ (Châu Âu)</li><li>Chức năng báo mức muối và chất tẩy rửa</li></ul><h2>2. Thông số kỹ thuật máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Mã sản phẩm: Hafele HDW-HI60B</li><li>Model: 533.23.210</li><li>Xuất xứ: Made in Turkey</li><li>Kiểu dáng: Máy rửa bát bán phần</li><li>Loại sản phẩm: Máy rửa bát Hafele</li><li>Nhãn năng lượng: A++</li><li>Điều khiển: Cơ</li><li>Mức độ tiêu thụ nước (l): 09 lít/ 1 lần rửa</li><li>Công suất rửa: 15 bộ bát đĩa âu</li><li>Số chương trình rửa: 07</li><li>Hệ thống khóa trẻ em: Có</li><li>Đèn báo muối và chất tẩy rửa: Có</li><li>Màn hình hiển thị: LED</li><li>Chất liệu/màu sắc: Thép không gỉ, màu inox</li><li>Độ ồn (dB): 44dB</li><li>Mức tiêu thụ điện năng: 1.02 kwh/ 1 lần rửa</li><li>Điện áp: 220V-240V /~ 50Hz 10A</li><li>Kích thước sản phẩm: 598R x 570S x 820-875C mm</li><li>Kích thước hốc tủ: 600R x 600S x 820-870C mm</li></ul><p>Thông tin về máy rửa chén</p><h2>Máy rửa chén bát hoạt động như thế nào?</h2><p><a href=\"https://shop.phanhoanggia.com/danh-muc-san-pham/may-rua-chen-bat/\"><strong>Máy rửa chén bát</strong></a> hoạt động hiệu quả bằng cách sử dụng lực phun xoáy mạnh mẽ của nước để làm sạch bát, đĩa và đồ dùng nhà bếp. Đồng thời, nhờ vào khay rổ bên trong có khả năng xoay chuyển và thay đổi vị trí, các vết bẩn bám trên bát, đĩa, đồ dùng nhà bếp được loại bỏ hoàn toàn.</p><p>Sau quá trình làm sạch, bát, đĩa được sấy khô bằng không khí nóng. Máy còn được trang bị chức năng xác định thời gian cho một chu trình rửa và đi kèm với khả năng xả nước tẩy rửa, phun nước, và xả nước.</p><p>Ngoài ra, máy rửa chén bát tích hợp nhiều chương trình rửa đa dạng, mang lại sự tiện lợi cho người dùng, bao gồm chương trình rửa nhanh, rửa tiết kiệm, rửa mạnh, và rửa sâu.</p><p><br></p>', 1, 0, '2025-03-12 08:00:42', '2025-03-14 06:18:56'),
(10, 'Cửa Gỗ Nhựa Composite Ecosmart Mẫu ECO 112', 'products/01JPACZHFT1E61YMMP014C0JNX.jpg', '[\"products/01JP5DZFQKFX1NBE3016F4Y95S.jpg\", \"products/01JP5DZFQPNYQ7RVFENTGSBST0.jpg\"]', 'cua-go-nhua-composite-ecosmart-mau-eco-112', 12, 2, 6, '{\"Hotline\": \"0933 427 499\", \"Bảo hành\": \"3 năm\", \"Xuất xứ\": \"Thổ Nhĩ Kỳ\", \"Thương hiệu\": \"HAFELE\", \"Kích thước lắp đặt\": \"600R x 600S x 820-870C mm\", \"Kích thước sản phẩm\": \"598R x 570S x 820-875C mm\"}', '3494000.00', '2432000.00', 0, 'NOKAI12fwcW003', '<h2>1. Đặc tính sản phẩm của máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Sức chứa: 14 bộ đồ ăn Châu Âu</li><li>8 chương trình rửa: Rửa tự động, Rửa mạnh, Rửa thường, Rửa tiết kiệm, Rửa ly tách dễ vỡ, Rửa 90 phút, Rửa nhanh, Rửa ngâm</li><li>Chức năng đặc biệt: Tăng tốc độ rửa, làm khô tăng cường, rửa mạnh tăng cường, tiết kiệm năng lượng, tùy chọn rửa nửa tải trên hoặc dưới</li><li>Điều khiển nút nhấn, Màn hình hiển thị LED</li><li>Động cơ BLDC</li><li>Tự động mở cửa</li><li>Tiêu chuẩn tiết kiệm năng lượng A+++ (Châu Âu)</li><li>Chức năng báo mức muối và chất tẩy rửa</li></ul><h2>2. Thông số kỹ thuật máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Mã sản phẩm: Hafele HDW-HI60B</li><li>Model: 533.23.210</li><li>Xuất xứ: Made in Turkey</li><li>Kiểu dáng: Máy rửa bát bán phần</li><li>Loại sản phẩm: Máy rửa bát Hafele</li><li>Nhãn năng lượng: A++</li><li>Điều khiển: Cơ</li><li>Mức độ tiêu thụ nước (l): 09 lít/ 1 lần rửa</li><li>Công suất rửa: 15 bộ bát đĩa âu</li><li>Số chương trình rửa: 07</li><li>Hệ thống khóa trẻ em: Có</li><li>Đèn báo muối và chất tẩy rửa: Có</li><li>Màn hình hiển thị: LED</li><li>Chất liệu/màu sắc: Thép không gỉ, màu inox</li><li>Độ ồn (dB): 44dB</li><li>Mức tiêu thụ điện năng: 1.02 kwh/ 1 lần rửa</li><li>Điện áp: 220V-240V /~ 50Hz 10A</li><li>Kích thước sản phẩm: 598R x 570S x 820-875C mm</li><li>Kích thước hốc tủ: 600R x 600S x 820-870C mm</li></ul><p>Thông tin về máy rửa chén</p><h2>Máy rửa chén bát hoạt động như thế nào?</h2><p><a href=\"https://shop.phanhoanggia.com/danh-muc-san-pham/may-rua-chen-bat/\"><strong>Máy rửa chén bát</strong></a> hoạt động hiệu quả bằng cách sử dụng lực phun xoáy mạnh mẽ của nước để làm sạch bát, đĩa và đồ dùng nhà bếp. Đồng thời, nhờ vào khay rổ bên trong có khả năng xoay chuyển và thay đổi vị trí, các vết bẩn bám trên bát, đĩa, đồ dùng nhà bếp được loại bỏ hoàn toàn.</p><p>Sau quá trình làm sạch, bát, đĩa được sấy khô bằng không khí nóng. Máy còn được trang bị chức năng xác định thời gian cho một chu trình rửa và đi kèm với khả năng xả nước tẩy rửa, phun nước, và xả nước.</p><p>Ngoài ra, máy rửa chén bát tích hợp nhiều chương trình rửa đa dạng, mang lại sự tiện lợi cho người dùng, bao gồm chương trình rửa nhanh, rửa tiết kiệm, rửa mạnh, và rửa sâu.</p><p><br></p>', 1, 0, '2025-03-12 08:00:42', '2025-03-14 06:19:59'),
(11, 'Cửa Gỗ Nhựa Composite Ecosmart Mẫu ECO 110', 'products/01JPAD078TCX56BPRPCYVZ4ZZG.jpg', '[\"products/01JP5DZFQKFX1NBE3016F4Y95S.jpg\", \"products/01JP5DZFQPNYQ7RVFENTGSBST0.jpg\"]', 'cua-go-nhua-composite-ecosmart-mau-eco-110', 12, 2, 6, '{\"Hotline\": \"0933 427 499\", \"Bảo hành\": \"3 năm\", \"Xuất xứ\": \"Thổ Nhĩ Kỳ\", \"Thương hiệu\": \"HAFELE\", \"Kích thước lắp đặt\": \"600R x 600S x 820-870C mm\", \"Kích thước sản phẩm\": \"598R x 570S x 820-875C mm\"}', '3494000.00', '2432000.00', 0, 'NOKAIW0123033', '<h2>1. Đặc tính sản phẩm của máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Sức chứa: 14 bộ đồ ăn Châu Âu</li><li>8 chương trình rửa: Rửa tự động, Rửa mạnh, Rửa thường, Rửa tiết kiệm, Rửa ly tách dễ vỡ, Rửa 90 phút, Rửa nhanh, Rửa ngâm</li><li>Chức năng đặc biệt: Tăng tốc độ rửa, làm khô tăng cường, rửa mạnh tăng cường, tiết kiệm năng lượng, tùy chọn rửa nửa tải trên hoặc dưới</li><li>Điều khiển nút nhấn, Màn hình hiển thị LED</li><li>Động cơ BLDC</li><li>Tự động mở cửa</li><li>Tiêu chuẩn tiết kiệm năng lượng A+++ (Châu Âu)</li><li>Chức năng báo mức muối và chất tẩy rửa</li></ul><h2>2. Thông số kỹ thuật máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Mã sản phẩm: Hafele HDW-HI60B</li><li>Model: 533.23.210</li><li>Xuất xứ: Made in Turkey</li><li>Kiểu dáng: Máy rửa bát bán phần</li><li>Loại sản phẩm: Máy rửa bát Hafele</li><li>Nhãn năng lượng: A++</li><li>Điều khiển: Cơ</li><li>Mức độ tiêu thụ nước (l): 09 lít/ 1 lần rửa</li><li>Công suất rửa: 15 bộ bát đĩa âu</li><li>Số chương trình rửa: 07</li><li>Hệ thống khóa trẻ em: Có</li><li>Đèn báo muối và chất tẩy rửa: Có</li><li>Màn hình hiển thị: LED</li><li>Chất liệu/màu sắc: Thép không gỉ, màu inox</li><li>Độ ồn (dB): 44dB</li><li>Mức tiêu thụ điện năng: 1.02 kwh/ 1 lần rửa</li><li>Điện áp: 220V-240V /~ 50Hz 10A</li><li>Kích thước sản phẩm: 598R x 570S x 820-875C mm</li><li>Kích thước hốc tủ: 600R x 600S x 820-870C mm</li></ul><p>Thông tin về máy rửa chén</p><h2>Máy rửa chén bát hoạt động như thế nào?</h2><p><a href=\"https://shop.phanhoanggia.com/danh-muc-san-pham/may-rua-chen-bat/\"><strong>Máy rửa chén bát</strong></a> hoạt động hiệu quả bằng cách sử dụng lực phun xoáy mạnh mẽ của nước để làm sạch bát, đĩa và đồ dùng nhà bếp. Đồng thời, nhờ vào khay rổ bên trong có khả năng xoay chuyển và thay đổi vị trí, các vết bẩn bám trên bát, đĩa, đồ dùng nhà bếp được loại bỏ hoàn toàn.</p><p>Sau quá trình làm sạch, bát, đĩa được sấy khô bằng không khí nóng. Máy còn được trang bị chức năng xác định thời gian cho một chu trình rửa và đi kèm với khả năng xả nước tẩy rửa, phun nước, và xả nước.</p><p>Ngoài ra, máy rửa chén bát tích hợp nhiều chương trình rửa đa dạng, mang lại sự tiện lợi cho người dùng, bao gồm chương trình rửa nhanh, rửa tiết kiệm, rửa mạnh, và rửa sâu.</p><p><br></p>', 1, 0, '2025-03-12 08:00:42', '2025-03-14 06:21:14'),
(12, 'Khóa Cửa Nhôm NF-02 Face ID – Màu Đen', 'products/01JPAD695BQKTZSXK8F60HWFZJ.png', '[\"products/01JP5DZFQKFX1NBE3016F4Y95S.jpg\", \"products/01JP5DZFQPNYQ7RVFENTGSBST0.jpg\"]', 'khoa-cua-nhom-nf-02-face-id-mau-den', 13, 3, 4, '{\"Hotline\": \"0933 427 499\", \"Bảo hành\": \"3 năm\", \"Xuất xứ\": \"Thổ Nhĩ Kỳ\", \"Thương hiệu\": \"HAFELE\", \"Kích thước lắp đặt\": \"600R x 600S x 820-870C mm\", \"Kích thước sản phẩm\": \"598R x 570S x 820-875C mm\"}', '3494000.00', '2432000.00', 0, 'NOKAIW0033212cc', '<h2>1. Đặc tính sản phẩm của máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Sức chứa: 14 bộ đồ ăn Châu Âu</li><li>8 chương trình rửa: Rửa tự động, Rửa mạnh, Rửa thường, Rửa tiết kiệm, Rửa ly tách dễ vỡ, Rửa 90 phút, Rửa nhanh, Rửa ngâm</li><li>Chức năng đặc biệt: Tăng tốc độ rửa, làm khô tăng cường, rửa mạnh tăng cường, tiết kiệm năng lượng, tùy chọn rửa nửa tải trên hoặc dưới</li><li>Điều khiển nút nhấn, Màn hình hiển thị LED</li><li>Động cơ BLDC</li><li>Tự động mở cửa</li><li>Tiêu chuẩn tiết kiệm năng lượng A+++ (Châu Âu)</li><li>Chức năng báo mức muối và chất tẩy rửa</li></ul><h2>2. Thông số kỹ thuật máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Mã sản phẩm: Hafele HDW-HI60B</li><li>Model: 533.23.210</li><li>Xuất xứ: Made in Turkey</li><li>Kiểu dáng: Máy rửa bát bán phần</li><li>Loại sản phẩm: Máy rửa bát Hafele</li><li>Nhãn năng lượng: A++</li><li>Điều khiển: Cơ</li><li>Mức độ tiêu thụ nước (l): 09 lít/ 1 lần rửa</li><li>Công suất rửa: 15 bộ bát đĩa âu</li><li>Số chương trình rửa: 07</li><li>Hệ thống khóa trẻ em: Có</li><li>Đèn báo muối và chất tẩy rửa: Có</li><li>Màn hình hiển thị: LED</li><li>Chất liệu/màu sắc: Thép không gỉ, màu inox</li><li>Độ ồn (dB): 44dB</li><li>Mức tiêu thụ điện năng: 1.02 kwh/ 1 lần rửa</li><li>Điện áp: 220V-240V /~ 50Hz 10A</li><li>Kích thước sản phẩm: 598R x 570S x 820-875C mm</li><li>Kích thước hốc tủ: 600R x 600S x 820-870C mm</li></ul><p>Thông tin về máy rửa chén</p><h2>Máy rửa chén bát hoạt động như thế nào?</h2><p><a href=\"https://shop.phanhoanggia.com/danh-muc-san-pham/may-rua-chen-bat/\"><strong>Máy rửa chén bát</strong></a> hoạt động hiệu quả bằng cách sử dụng lực phun xoáy mạnh mẽ của nước để làm sạch bát, đĩa và đồ dùng nhà bếp. Đồng thời, nhờ vào khay rổ bên trong có khả năng xoay chuyển và thay đổi vị trí, các vết bẩn bám trên bát, đĩa, đồ dùng nhà bếp được loại bỏ hoàn toàn.</p><p>Sau quá trình làm sạch, bát, đĩa được sấy khô bằng không khí nóng. Máy còn được trang bị chức năng xác định thời gian cho một chu trình rửa và đi kèm với khả năng xả nước tẩy rửa, phun nước, và xả nước.</p><p>Ngoài ra, máy rửa chén bát tích hợp nhiều chương trình rửa đa dạng, mang lại sự tiện lợi cho người dùng, bao gồm chương trình rửa nhanh, rửa tiết kiệm, rửa mạnh, và rửa sâu.</p><p><br></p>', 1, 0, '2025-03-12 08:00:42', '2025-03-14 06:23:40'),
(13, 'Khóa Cửa Nhôm NF-02 Face ID – Màu Đen 1', 'products/01JPAD7C9ESX1Q22RF1QME8Y7X.png', '[\"products/01JP5DZFQKFX1NBE3016F4Y95S.jpg\", \"products/01JP5DZFQPNYQ7RVFENTGSBST0.jpg\"]', 'khoa-cua-nhom-nf-02-face-id-mau-den-1', 13, 3, 4, '{\"Hotline\": \"0933 427 499\", \"Bảo hành\": \"3 năm\", \"Xuất xứ\": \"Thổ Nhĩ Kỳ\", \"Thương hiệu\": \"HAFELE\", \"Kích thước lắp đặt\": \"600R x 600S x 820-870C mm\", \"Kích thước sản phẩm\": \"598R x 570S x 820-875C mm\"}', '3494000.00', '2432000.00', 0, 'NOKAIW0412333331203', '<h2>1. Đặc tính sản phẩm của máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Sức chứa: 14 bộ đồ ăn Châu Âu</li><li>8 chương trình rửa: Rửa tự động, Rửa mạnh, Rửa thường, Rửa tiết kiệm, Rửa ly tách dễ vỡ, Rửa 90 phút, Rửa nhanh, Rửa ngâm</li><li>Chức năng đặc biệt: Tăng tốc độ rửa, làm khô tăng cường, rửa mạnh tăng cường, tiết kiệm năng lượng, tùy chọn rửa nửa tải trên hoặc dưới</li><li>Điều khiển nút nhấn, Màn hình hiển thị LED</li><li>Động cơ BLDC</li><li>Tự động mở cửa</li><li>Tiêu chuẩn tiết kiệm năng lượng A+++ (Châu Âu)</li><li>Chức năng báo mức muối và chất tẩy rửa</li></ul><h2>2. Thông số kỹ thuật máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Mã sản phẩm: Hafele HDW-HI60B</li><li>Model: 533.23.210</li><li>Xuất xứ: Made in Turkey</li><li>Kiểu dáng: Máy rửa bát bán phần</li><li>Loại sản phẩm: Máy rửa bát Hafele</li><li>Nhãn năng lượng: A++</li><li>Điều khiển: Cơ</li><li>Mức độ tiêu thụ nước (l): 09 lít/ 1 lần rửa</li><li>Công suất rửa: 15 bộ bát đĩa âu</li><li>Số chương trình rửa: 07</li><li>Hệ thống khóa trẻ em: Có</li><li>Đèn báo muối và chất tẩy rửa: Có</li><li>Màn hình hiển thị: LED</li><li>Chất liệu/màu sắc: Thép không gỉ, màu inox</li><li>Độ ồn (dB): 44dB</li><li>Mức tiêu thụ điện năng: 1.02 kwh/ 1 lần rửa</li><li>Điện áp: 220V-240V /~ 50Hz 10A</li><li>Kích thước sản phẩm: 598R x 570S x 820-875C mm</li><li>Kích thước hốc tủ: 600R x 600S x 820-870C mm</li></ul><p>Thông tin về máy rửa chén</p><h2>Máy rửa chén bát hoạt động như thế nào?</h2><p><a href=\"https://shop.phanhoanggia.com/danh-muc-san-pham/may-rua-chen-bat/\"><strong>Máy rửa chén bát</strong></a> hoạt động hiệu quả bằng cách sử dụng lực phun xoáy mạnh mẽ của nước để làm sạch bát, đĩa và đồ dùng nhà bếp. Đồng thời, nhờ vào khay rổ bên trong có khả năng xoay chuyển và thay đổi vị trí, các vết bẩn bám trên bát, đĩa, đồ dùng nhà bếp được loại bỏ hoàn toàn.</p><p>Sau quá trình làm sạch, bát, đĩa được sấy khô bằng không khí nóng. Máy còn được trang bị chức năng xác định thời gian cho một chu trình rửa và đi kèm với khả năng xả nước tẩy rửa, phun nước, và xả nước.</p><p>Ngoài ra, máy rửa chén bát tích hợp nhiều chương trình rửa đa dạng, mang lại sự tiện lợi cho người dùng, bao gồm chương trình rửa nhanh, rửa tiết kiệm, rửa mạnh, và rửa sâu.</p><p><br></p>', 1, 0, '2025-03-12 08:00:42', '2025-03-14 06:24:16'),
(14, 'Hút mùi Fulco', 'products/01JPADHN8B73M0XBX6JYVK6Y2F.jpg', '[\"products/01JP5DZFQKFX1NBE3016F4Y95S.jpg\", \"products/01JP5DZFQPNYQ7RVFENTGSBST0.jpg\"]', 'hut-mui-fulco', 8, 1, 3, '{\"Hotline\": \"0933 427 499\", \"Bảo hành\": \"3 năm\", \"Xuất xứ\": \"Thổ Nhĩ Kỳ\", \"Thương hiệu\": \"HAFELE\", \"Kích thước lắp đặt\": \"600R x 600S x 820-870C mm\", \"Kích thước sản phẩm\": \"598R x 570S x 820-875C mm\"}', '3494000.00', '2432000.00', 0, 'NOKAIW012v12c45033', '<h2>1. Đặc tính sản phẩm của máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Sức chứa: 14 bộ đồ ăn Châu Âu</li><li>8 chương trình rửa: Rửa tự động, Rửa mạnh, Rửa thường, Rửa tiết kiệm, Rửa ly tách dễ vỡ, Rửa 90 phút, Rửa nhanh, Rửa ngâm</li><li>Chức năng đặc biệt: Tăng tốc độ rửa, làm khô tăng cường, rửa mạnh tăng cường, tiết kiệm năng lượng, tùy chọn rửa nửa tải trên hoặc dưới</li><li>Điều khiển nút nhấn, Màn hình hiển thị LED</li><li>Động cơ BLDC</li><li>Tự động mở cửa</li><li>Tiêu chuẩn tiết kiệm năng lượng A+++ (Châu Âu)</li><li>Chức năng báo mức muối và chất tẩy rửa</li></ul><h2>2. Thông số kỹ thuật máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Mã sản phẩm: Hafele HDW-HI60B</li><li>Model: 533.23.210</li><li>Xuất xứ: Made in Turkey</li><li>Kiểu dáng: Máy rửa bát bán phần</li><li>Loại sản phẩm: Máy rửa bát Hafele</li><li>Nhãn năng lượng: A++</li><li>Điều khiển: Cơ</li><li>Mức độ tiêu thụ nước (l): 09 lít/ 1 lần rửa</li><li>Công suất rửa: 15 bộ bát đĩa âu</li><li>Số chương trình rửa: 07</li><li>Hệ thống khóa trẻ em: Có</li><li>Đèn báo muối và chất tẩy rửa: Có</li><li>Màn hình hiển thị: LED</li><li>Chất liệu/màu sắc: Thép không gỉ, màu inox</li><li>Độ ồn (dB): 44dB</li><li>Mức tiêu thụ điện năng: 1.02 kwh/ 1 lần rửa</li><li>Điện áp: 220V-240V /~ 50Hz 10A</li><li>Kích thước sản phẩm: 598R x 570S x 820-875C mm</li><li>Kích thước hốc tủ: 600R x 600S x 820-870C mm</li></ul><p>Thông tin về máy rửa chén</p><h2>Máy rửa chén bát hoạt động như thế nào?</h2><p><a href=\"https://shop.phanhoanggia.com/danh-muc-san-pham/may-rua-chen-bat/\"><strong>Máy rửa chén bát</strong></a> hoạt động hiệu quả bằng cách sử dụng lực phun xoáy mạnh mẽ của nước để làm sạch bát, đĩa và đồ dùng nhà bếp. Đồng thời, nhờ vào khay rổ bên trong có khả năng xoay chuyển và thay đổi vị trí, các vết bẩn bám trên bát, đĩa, đồ dùng nhà bếp được loại bỏ hoàn toàn.</p><p>Sau quá trình làm sạch, bát, đĩa được sấy khô bằng không khí nóng. Máy còn được trang bị chức năng xác định thời gian cho một chu trình rửa và đi kèm với khả năng xả nước tẩy rửa, phun nước, và xả nước.</p><p>Ngoài ra, máy rửa chén bát tích hợp nhiều chương trình rửa đa dạng, mang lại sự tiện lợi cho người dùng, bao gồm chương trình rửa nhanh, rửa tiết kiệm, rửa mạnh, và rửa sâu.</p><p><br></p>', 1, 0, '2025-03-12 08:00:42', '2025-03-14 06:29:53'),
(15, 'Tủ kệ tivi hiện đại cho gia đình Toutousai', 'products/01JP5DYGMR9XFXT0HTYRW70GPB.jpg', '[\"products/01JP5DZFQKFX1NBE3016F4Y95S.jpg\", \"products/01JP5DZFQPNYQ7RVFENTGSBST0.jpg\"]', 'tu-ke-tx12civi-12412hi2en-dai-cho-gia-2dinh-toutousai', 1, 1, 1, '{\"Hotline\": \"0933 427 499\", \"Bảo hành\": \"3 năm\", \"Xuất xứ\": \"Thổ Nhĩ Kỳ\", \"Thương hiệu\": \"HAFELE\", \"Kích thước lắp đặt\": \"600R x 600S x 820-870C mm\", \"Kích thước sản phẩm\": \"598R x 570S x 820-875C mm\"}', '3494000.00', '2432000.00', 0, 'NOKcc12333AIW0033122222', '<h2>1. Đặc tính sản phẩm của máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Sức chứa: 14 bộ đồ ăn Châu Âu</li><li>8 chương trình rửa: Rửa tự động, Rửa mạnh, Rửa thường, Rửa tiết kiệm, Rửa ly tách dễ vỡ, Rửa 90 phút, Rửa nhanh, Rửa ngâm</li><li>Chức năng đặc biệt: Tăng tốc độ rửa, làm khô tăng cường, rửa mạnh tăng cường, tiết kiệm năng lượng, tùy chọn rửa nửa tải trên hoặc dưới</li><li>Điều khiển nút nhấn, Màn hình hiển thị LED</li><li>Động cơ BLDC</li><li>Tự động mở cửa</li><li>Tiêu chuẩn tiết kiệm năng lượng A+++ (Châu Âu)</li><li>Chức năng báo mức muối và chất tẩy rửa</li></ul><h2>2. Thông số kỹ thuật máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Mã sản phẩm: Hafele HDW-HI60B</li><li>Model: 533.23.210</li><li>Xuất xứ: Made in Turkey</li><li>Kiểu dáng: Máy rửa bát bán phần</li><li>Loại sản phẩm: Máy rửa bát Hafele</li><li>Nhãn năng lượng: A++</li><li>Điều khiển: Cơ</li><li>Mức độ tiêu thụ nước (l): 09 lít/ 1 lần rửa</li><li>Công suất rửa: 15 bộ bát đĩa âu</li><li>Số chương trình rửa: 07</li><li>Hệ thống khóa trẻ em: Có</li><li>Đèn báo muối và chất tẩy rửa: Có</li><li>Màn hình hiển thị: LED</li><li>Chất liệu/màu sắc: Thép không gỉ, màu inox</li><li>Độ ồn (dB): 44dB</li><li>Mức tiêu thụ điện năng: 1.02 kwh/ 1 lần rửa</li><li>Điện áp: 220V-240V /~ 50Hz 10A</li><li>Kích thước sản phẩm: 598R x 570S x 820-875C mm</li><li>Kích thước hốc tủ: 600R x 600S x 820-870C mm</li></ul><p>Thông tin về máy rửa chén</p><h2>Máy rửa chén bát hoạt động như thế nào?</h2><p><a href=\"https://shop.phanhoanggia.com/danh-muc-san-pham/may-rua-chen-bat/\"><strong>Máy rửa chén bát</strong></a> hoạt động hiệu quả bằng cách sử dụng lực phun xoáy mạnh mẽ của nước để làm sạch bát, đĩa và đồ dùng nhà bếp. Đồng thời, nhờ vào khay rổ bên trong có khả năng xoay chuyển và thay đổi vị trí, các vết bẩn bám trên bát, đĩa, đồ dùng nhà bếp được loại bỏ hoàn toàn.</p><p>Sau quá trình làm sạch, bát, đĩa được sấy khô bằng không khí nóng. Máy còn được trang bị chức năng xác định thời gian cho một chu trình rửa và đi kèm với khả năng xả nước tẩy rửa, phun nước, và xả nước.</p><p>Ngoài ra, máy rửa chén bát tích hợp nhiều chương trình rửa đa dạng, mang lại sự tiện lợi cho người dùng, bao gồm chương trình rửa nhanh, rửa tiết kiệm, rửa mạnh, và rửa sâu.</p><p><br></p>', 1, 0, '2025-03-12 08:00:42', '2025-03-12 08:01:14'),
(16, 'Khóa Cửa Nhôm NF-02 Face ID – Màu Đen 2', 'products/01JPAD7C9ESX1Q22RF1QME8Y7X.png', '[\"products/01JP5DZFQKFX1NBE3016F4Y95S.jpg\", \"products/01JP5DZFQPNYQ7RVFENTGSBST0.jpg\"]', 'khoa-cua-nhom-nf-02-face-id-mau-den-2', 13, 3, 4, '{\"Hotline\": \"0933 427 499\", \"Bảo hành\": \"3 năm\", \"Xuất xứ\": \"Thổ Nhĩ Kỳ\", \"Thương hiệu\": \"HAFELE\", \"Kích thước lắp đặt\": \"600R x 600S x 820-870C mm\", \"Kích thước sản phẩm\": \"598R x 570S x 820-875C mm\"}', '3494000.00', '2432000.00', 0, 'NOKAIW041233312331203', '<h2>1. Đặc tính sản phẩm của máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Sức chứa: 14 bộ đồ ăn Châu Âu</li><li>8 chương trình rửa: Rửa tự động, Rửa mạnh, Rửa thường, Rửa tiết kiệm, Rửa ly tách dễ vỡ, Rửa 90 phút, Rửa nhanh, Rửa ngâm</li><li>Chức năng đặc biệt: Tăng tốc độ rửa, làm khô tăng cường, rửa mạnh tăng cường, tiết kiệm năng lượng, tùy chọn rửa nửa tải trên hoặc dưới</li><li>Điều khiển nút nhấn, Màn hình hiển thị LED</li><li>Động cơ BLDC</li><li>Tự động mở cửa</li><li>Tiêu chuẩn tiết kiệm năng lượng A+++ (Châu Âu)</li><li>Chức năng báo mức muối và chất tẩy rửa</li></ul><h2>2. Thông số kỹ thuật máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Mã sản phẩm: Hafele HDW-HI60B</li><li>Model: 533.23.210</li><li>Xuất xứ: Made in Turkey</li><li>Kiểu dáng: Máy rửa bát bán phần</li><li>Loại sản phẩm: Máy rửa bát Hafele</li><li>Nhãn năng lượng: A++</li><li>Điều khiển: Cơ</li><li>Mức độ tiêu thụ nước (l): 09 lít/ 1 lần rửa</li><li>Công suất rửa: 15 bộ bát đĩa âu</li><li>Số chương trình rửa: 07</li><li>Hệ thống khóa trẻ em: Có</li><li>Đèn báo muối và chất tẩy rửa: Có</li><li>Màn hình hiển thị: LED</li><li>Chất liệu/màu sắc: Thép không gỉ, màu inox</li><li>Độ ồn (dB): 44dB</li><li>Mức tiêu thụ điện năng: 1.02 kwh/ 1 lần rửa</li><li>Điện áp: 220V-240V /~ 50Hz 10A</li><li>Kích thước sản phẩm: 598R x 570S x 820-875C mm</li><li>Kích thước hốc tủ: 600R x 600S x 820-870C mm</li></ul><p>Thông tin về máy rửa chén</p><h2>Máy rửa chén bát hoạt động như thế nào?</h2><p><a href=\"https://shop.phanhoanggia.com/danh-muc-san-pham/may-rua-chen-bat/\"><strong>Máy rửa chén bát</strong></a> hoạt động hiệu quả bằng cách sử dụng lực phun xoáy mạnh mẽ của nước để làm sạch bát, đĩa và đồ dùng nhà bếp. Đồng thời, nhờ vào khay rổ bên trong có khả năng xoay chuyển và thay đổi vị trí, các vết bẩn bám trên bát, đĩa, đồ dùng nhà bếp được loại bỏ hoàn toàn.</p><p>Sau quá trình làm sạch, bát, đĩa được sấy khô bằng không khí nóng. Máy còn được trang bị chức năng xác định thời gian cho một chu trình rửa và đi kèm với khả năng xả nước tẩy rửa, phun nước, và xả nước.</p><p>Ngoài ra, máy rửa chén bát tích hợp nhiều chương trình rửa đa dạng, mang lại sự tiện lợi cho người dùng, bao gồm chương trình rửa nhanh, rửa tiết kiệm, rửa mạnh, và rửa sâu.</p><p><br></p>', 1, 0, '2025-03-12 08:00:42', '2025-03-14 06:24:16'),
(17, 'Khóa Cửa Nhôm NF-02 Face ID – Màu Đen 3', 'products/01JPADC3DKN3F4W6AC7630NC27.png', '[\"products/01JP5DZFQKFX1NBE3016F4Y95S.jpg\", \"products/01JP5DZFQPNYQ7RVFENTGSBST0.jpg\"]', 'khoa-cua-nhom-nf-02-face-id-mau-den-3', 13, 3, 4, '{\"Hotline\": \"0933 427 499\", \"Bảo hành\": \"3 năm\", \"Xuất xứ\": \"Thổ Nhĩ Kỳ\", \"Thương hiệu\": \"HAFELE\", \"Kích thước lắp đặt\": \"600R x 600S x 820-870C mm\", \"Kích thước sản phẩm\": \"598R x 570S x 820-875C mm\"}', '3494000.00', '2432000.00', 0, 'VVAWRR2', '<h2>1. Đặc tính sản phẩm của máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Sức chứa: 14 bộ đồ ăn Châu Âu</li><li>8 chương trình rửa: Rửa tự động, Rửa mạnh, Rửa thường, Rửa tiết kiệm, Rửa ly tách dễ vỡ, Rửa 90 phút, Rửa nhanh, Rửa ngâm</li><li>Chức năng đặc biệt: Tăng tốc độ rửa, làm khô tăng cường, rửa mạnh tăng cường, tiết kiệm năng lượng, tùy chọn rửa nửa tải trên hoặc dưới</li><li>Điều khiển nút nhấn, Màn hình hiển thị LED</li><li>Động cơ BLDC</li><li>Tự động mở cửa</li><li>Tiêu chuẩn tiết kiệm năng lượng A+++ (Châu Âu)</li><li>Chức năng báo mức muối và chất tẩy rửa</li></ul><h2>2. Thông số kỹ thuật máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Mã sản phẩm: Hafele HDW-HI60B</li><li>Model: 533.23.210</li><li>Xuất xứ: Made in Turkey</li><li>Kiểu dáng: Máy rửa bát bán phần</li><li>Loại sản phẩm: Máy rửa bát Hafele</li><li>Nhãn năng lượng: A++</li><li>Điều khiển: Cơ</li><li>Mức độ tiêu thụ nước (l): 09 lít/ 1 lần rửa</li><li>Công suất rửa: 15 bộ bát đĩa âu</li><li>Số chương trình rửa: 07</li><li>Hệ thống khóa trẻ em: Có</li><li>Đèn báo muối và chất tẩy rửa: Có</li><li>Màn hình hiển thị: LED</li><li>Chất liệu/màu sắc: Thép không gỉ, màu inox</li><li>Độ ồn (dB): 44dB</li><li>Mức tiêu thụ điện năng: 1.02 kwh/ 1 lần rửa</li><li>Điện áp: 220V-240V /~ 50Hz 10A</li><li>Kích thước sản phẩm: 598R x 570S x 820-875C mm</li><li>Kích thước hốc tủ: 600R x 600S x 820-870C mm</li></ul><p>Thông tin về máy rửa chén</p><h2>Máy rửa chén bát hoạt động như thế nào?</h2><p><a href=\"https://shop.phanhoanggia.com/danh-muc-san-pham/may-rua-chen-bat/\"><strong>Máy rửa chén bát</strong></a> hoạt động hiệu quả bằng cách sử dụng lực phun xoáy mạnh mẽ của nước để làm sạch bát, đĩa và đồ dùng nhà bếp. Đồng thời, nhờ vào khay rổ bên trong có khả năng xoay chuyển và thay đổi vị trí, các vết bẩn bám trên bát, đĩa, đồ dùng nhà bếp được loại bỏ hoàn toàn.</p><p>Sau quá trình làm sạch, bát, đĩa được sấy khô bằng không khí nóng. Máy còn được trang bị chức năng xác định thời gian cho một chu trình rửa và đi kèm với khả năng xả nước tẩy rửa, phun nước, và xả nước.</p><p>Ngoài ra, máy rửa chén bát tích hợp nhiều chương trình rửa đa dạng, mang lại sự tiện lợi cho người dùng, bao gồm chương trình rửa nhanh, rửa tiết kiệm, rửa mạnh, và rửa sâu.</p><p><br></p>', 1, 0, '2025-03-12 08:00:42', '2025-03-14 06:26:51'),
(18, 'Khóa Cửa Nhôm NF-02 Face ID – Màu Đen 6', 'products/01JPADEEC9460PP16N6CYFRV5D.jpg', '[\"products/01JP5DZFQKFX1NBE3016F4Y95S.jpg\", \"products/01JP5DZFQPNYQ7RVFENTGSBST0.jpg\"]', 'khoa-cua-nhom-nf-02-face-id-mau-den-6', 13, 3, 4, '{\"Hotline\": \"0933 427 499\", \"Bảo hành\": \"3 năm\", \"Xuất xứ\": \"Thổ Nhĩ Kỳ\", \"Thương hiệu\": \"HAFELE\", \"Kích thước lắp đặt\": \"600R x 600S x 820-870C mm\", \"Kích thước sản phẩm\": \"598R x 570S x 820-875C mm\"}', '3494000.00', '2432000.00', 0, 'VVAWRR233', '<h2>1. Đặc tính sản phẩm của máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Sức chứa: 14 bộ đồ ăn Châu Âu</li><li>8 chương trình rửa: Rửa tự động, Rửa mạnh, Rửa thường, Rửa tiết kiệm, Rửa ly tách dễ vỡ, Rửa 90 phút, Rửa nhanh, Rửa ngâm</li><li>Chức năng đặc biệt: Tăng tốc độ rửa, làm khô tăng cường, rửa mạnh tăng cường, tiết kiệm năng lượng, tùy chọn rửa nửa tải trên hoặc dưới</li><li>Điều khiển nút nhấn, Màn hình hiển thị LED</li><li>Động cơ BLDC</li><li>Tự động mở cửa</li><li>Tiêu chuẩn tiết kiệm năng lượng A+++ (Châu Âu)</li><li>Chức năng báo mức muối và chất tẩy rửa</li></ul><h2>2. Thông số kỹ thuật máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Mã sản phẩm: Hafele HDW-HI60B</li><li>Model: 533.23.210</li><li>Xuất xứ: Made in Turkey</li><li>Kiểu dáng: Máy rửa bát bán phần</li><li>Loại sản phẩm: Máy rửa bát Hafele</li><li>Nhãn năng lượng: A++</li><li>Điều khiển: Cơ</li><li>Mức độ tiêu thụ nước (l): 09 lít/ 1 lần rửa</li><li>Công suất rửa: 15 bộ bát đĩa âu</li><li>Số chương trình rửa: 07</li><li>Hệ thống khóa trẻ em: Có</li><li>Đèn báo muối và chất tẩy rửa: Có</li><li>Màn hình hiển thị: LED</li><li>Chất liệu/màu sắc: Thép không gỉ, màu inox</li><li>Độ ồn (dB): 44dB</li><li>Mức tiêu thụ điện năng: 1.02 kwh/ 1 lần rửa</li><li>Điện áp: 220V-240V /~ 50Hz 10A</li><li>Kích thước sản phẩm: 598R x 570S x 820-875C mm</li><li>Kích thước hốc tủ: 600R x 600S x 820-870C mm</li></ul><p>Thông tin về máy rửa chén</p><h2>Máy rửa chén bát hoạt động như thế nào?</h2><p><a href=\"https://shop.phanhoanggia.com/danh-muc-san-pham/may-rua-chen-bat/\"><strong>Máy rửa chén bát</strong></a> hoạt động hiệu quả bằng cách sử dụng lực phun xoáy mạnh mẽ của nước để làm sạch bát, đĩa và đồ dùng nhà bếp. Đồng thời, nhờ vào khay rổ bên trong có khả năng xoay chuyển và thay đổi vị trí, các vết bẩn bám trên bát, đĩa, đồ dùng nhà bếp được loại bỏ hoàn toàn.</p><p>Sau quá trình làm sạch, bát, đĩa được sấy khô bằng không khí nóng. Máy còn được trang bị chức năng xác định thời gian cho một chu trình rửa và đi kèm với khả năng xả nước tẩy rửa, phun nước, và xả nước.</p><p>Ngoài ra, máy rửa chén bát tích hợp nhiều chương trình rửa đa dạng, mang lại sự tiện lợi cho người dùng, bao gồm chương trình rửa nhanh, rửa tiết kiệm, rửa mạnh, và rửa sâu.</p><p><br></p>', 1, 0, '2025-03-12 08:00:42', '2025-03-14 06:28:07'),
(19, 'GIÁ BÁT THÔNG MINH FULCO INOX FC304', 'products/01JPADN8DM7TJNGWN7N55XJ4WS.jpg', '[\"products/01JP5DZFQKFX1NBE3016F4Y95S.jpg\", \"products/01JP5DZFQPNYQ7RVFENTGSBST0.jpg\"]', 'hut-mui-fulco2', 8, 1, 3, '{\"Hotline\": \"0933 427 499\", \"Bảo hành\": \"3 năm\", \"Xuất xứ\": \"Thổ Nhĩ Kỳ\", \"Thương hiệu\": \"HAFELE\", \"Kích thước lắp đặt\": \"600R x 600S x 820-870C mm\", \"Kích thước sản phẩm\": \"598R x 570S x 820-875C mm\"}', '3494000.00', '2432000.00', 0, 'NOKAIW012v212c45033', '<h2>1. Đặc tính sản phẩm của máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Sức chứa: 14 bộ đồ ăn Châu Âu</li><li>8 chương trình rửa: Rửa tự động, Rửa mạnh, Rửa thường, Rửa tiết kiệm, Rửa ly tách dễ vỡ, Rửa 90 phút, Rửa nhanh, Rửa ngâm</li><li>Chức năng đặc biệt: Tăng tốc độ rửa, làm khô tăng cường, rửa mạnh tăng cường, tiết kiệm năng lượng, tùy chọn rửa nửa tải trên hoặc dưới</li><li>Điều khiển nút nhấn, Màn hình hiển thị LED</li><li>Động cơ BLDC</li><li>Tự động mở cửa</li><li>Tiêu chuẩn tiết kiệm năng lượng A+++ (Châu Âu)</li><li>Chức năng báo mức muối và chất tẩy rửa</li></ul><h2>2. Thông số kỹ thuật máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Mã sản phẩm: Hafele HDW-HI60B</li><li>Model: 533.23.210</li><li>Xuất xứ: Made in Turkey</li><li>Kiểu dáng: Máy rửa bát bán phần</li><li>Loại sản phẩm: Máy rửa bát Hafele</li><li>Nhãn năng lượng: A++</li><li>Điều khiển: Cơ</li><li>Mức độ tiêu thụ nước (l): 09 lít/ 1 lần rửa</li><li>Công suất rửa: 15 bộ bát đĩa âu</li><li>Số chương trình rửa: 07</li><li>Hệ thống khóa trẻ em: Có</li><li>Đèn báo muối và chất tẩy rửa: Có</li><li>Màn hình hiển thị: LED</li><li>Chất liệu/màu sắc: Thép không gỉ, màu inox</li><li>Độ ồn (dB): 44dB</li><li>Mức tiêu thụ điện năng: 1.02 kwh/ 1 lần rửa</li><li>Điện áp: 220V-240V /~ 50Hz 10A</li><li>Kích thước sản phẩm: 598R x 570S x 820-875C mm</li><li>Kích thước hốc tủ: 600R x 600S x 820-870C mm</li></ul><p>Thông tin về máy rửa chén</p><h2>Máy rửa chén bát hoạt động như thế nào?</h2><p><a href=\"https://shop.phanhoanggia.com/danh-muc-san-pham/may-rua-chen-bat/\"><strong>Máy rửa chén bát</strong></a> hoạt động hiệu quả bằng cách sử dụng lực phun xoáy mạnh mẽ của nước để làm sạch bát, đĩa và đồ dùng nhà bếp. Đồng thời, nhờ vào khay rổ bên trong có khả năng xoay chuyển và thay đổi vị trí, các vết bẩn bám trên bát, đĩa, đồ dùng nhà bếp được loại bỏ hoàn toàn.</p><p>Sau quá trình làm sạch, bát, đĩa được sấy khô bằng không khí nóng. Máy còn được trang bị chức năng xác định thời gian cho một chu trình rửa và đi kèm với khả năng xả nước tẩy rửa, phun nước, và xả nước.</p><p>Ngoài ra, máy rửa chén bát tích hợp nhiều chương trình rửa đa dạng, mang lại sự tiện lợi cho người dùng, bao gồm chương trình rửa nhanh, rửa tiết kiệm, rửa mạnh, và rửa sâu.</p><p><br></p>', 1, 0, '2025-03-12 08:00:42', '2025-03-14 06:32:16'),
(20, 'Tủ đồ khô Fulco 6 tầng inox FC05-02B', 'products/01JPADPCNKEKN0X4RF8VGW7KRA.jpg', '[\"products/01JP5DZFQKFX1NBE3016F4Y95S.jpg\", \"products/01JP5DZFQPNYQ7RVFENTGSBST0.jpg\"]', 'tu-do-kho-fulco-6-tang-inox-fc05-02b', 8, 1, 3, '{\"Hotline\": \"0933 427 499\", \"Bảo hành\": \"3 năm\", \"Xuất xứ\": \"Thổ Nhĩ Kỳ\", \"Thương hiệu\": \"HAFELE\", \"Kích thước lắp đặt\": \"600R x 600S x 820-870C mm\", \"Kích thước sản phẩm\": \"598R x 570S x 820-875C mm\"}', '3494000.00', '2432000.00', 0, 'NOKAIW012v212c45033123', '<h2>1. Đặc tính sản phẩm của máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Sức chứa: 14 bộ đồ ăn Châu Âu</li><li>8 chương trình rửa: Rửa tự động, Rửa mạnh, Rửa thường, Rửa tiết kiệm, Rửa ly tách dễ vỡ, Rửa 90 phút, Rửa nhanh, Rửa ngâm</li><li>Chức năng đặc biệt: Tăng tốc độ rửa, làm khô tăng cường, rửa mạnh tăng cường, tiết kiệm năng lượng, tùy chọn rửa nửa tải trên hoặc dưới</li><li>Điều khiển nút nhấn, Màn hình hiển thị LED</li><li>Động cơ BLDC</li><li>Tự động mở cửa</li><li>Tiêu chuẩn tiết kiệm năng lượng A+++ (Châu Âu)</li><li>Chức năng báo mức muối và chất tẩy rửa</li></ul><h2>2. Thông số kỹ thuật máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Mã sản phẩm: Hafele HDW-HI60B</li><li>Model: 533.23.210</li><li>Xuất xứ: Made in Turkey</li><li>Kiểu dáng: Máy rửa bát bán phần</li><li>Loại sản phẩm: Máy rửa bát Hafele</li><li>Nhãn năng lượng: A++</li><li>Điều khiển: Cơ</li><li>Mức độ tiêu thụ nước (l): 09 lít/ 1 lần rửa</li><li>Công suất rửa: 15 bộ bát đĩa âu</li><li>Số chương trình rửa: 07</li><li>Hệ thống khóa trẻ em: Có</li><li>Đèn báo muối và chất tẩy rửa: Có</li><li>Màn hình hiển thị: LED</li><li>Chất liệu/màu sắc: Thép không gỉ, màu inox</li><li>Độ ồn (dB): 44dB</li><li>Mức tiêu thụ điện năng: 1.02 kwh/ 1 lần rửa</li><li>Điện áp: 220V-240V /~ 50Hz 10A</li><li>Kích thước sản phẩm: 598R x 570S x 820-875C mm</li><li>Kích thước hốc tủ: 600R x 600S x 820-870C mm</li></ul><p>Thông tin về máy rửa chén</p><h2>Máy rửa chén bát hoạt động như thế nào?</h2><p><a href=\"https://shop.phanhoanggia.com/danh-muc-san-pham/may-rua-chen-bat/\"><strong>Máy rửa chén bát</strong></a> hoạt động hiệu quả bằng cách sử dụng lực phun xoáy mạnh mẽ của nước để làm sạch bát, đĩa và đồ dùng nhà bếp. Đồng thời, nhờ vào khay rổ bên trong có khả năng xoay chuyển và thay đổi vị trí, các vết bẩn bám trên bát, đĩa, đồ dùng nhà bếp được loại bỏ hoàn toàn.</p><p>Sau quá trình làm sạch, bát, đĩa được sấy khô bằng không khí nóng. Máy còn được trang bị chức năng xác định thời gian cho một chu trình rửa và đi kèm với khả năng xả nước tẩy rửa, phun nước, và xả nước.</p><p>Ngoài ra, máy rửa chén bát tích hợp nhiều chương trình rửa đa dạng, mang lại sự tiện lợi cho người dùng, bao gồm chương trình rửa nhanh, rửa tiết kiệm, rửa mạnh, và rửa sâu.</p><p><br></p>', 1, 0, '2025-03-12 08:00:42', '2025-03-14 06:32:28');
INSERT INTO `products` (`id`, `name`, `image`, `additional_images`, `slug`, `child_sub_category_id`, `category_id`, `sub_category_id`, `attributes`, `original_price`, `discounted_price`, `view_count`, `product_code`, `product_info`, `is_hot`, `is_new`, `created_at`, `updated_at`) VALUES
(21, 'Khóa tay gạt Mozlex DS01', 'products/01JPADTH9WBF4YC5HJBYADGK2X.jpg', '[\"products/01JP5DZFQKFX1NBE3016F4Y95S.jpg\", \"products/01JP5DZFQPNYQ7RVFENTGSBST0.jpg\"]', 'khoa-tay-gat-mozlex-ds01', 13, 3, 4, '{\"Hotline\": \"0933 427 499\", \"Bảo hành\": \"3 năm\", \"Xuất xứ\": \"Thổ Nhĩ Kỳ\", \"Thương hiệu\": \"HAFELE\", \"Kích thước lắp đặt\": \"600R x 600S x 820-870C mm\", \"Kích thước sản phẩm\": \"598R x 570S x 820-875C mm\"}', '3494000.00', '2432000.00', 0, 'NOKAIW0033212cc24', '<h2>1. Đặc tính sản phẩm của máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Sức chứa: 14 bộ đồ ăn Châu Âu</li><li>8 chương trình rửa: Rửa tự động, Rửa mạnh, Rửa thường, Rửa tiết kiệm, Rửa ly tách dễ vỡ, Rửa 90 phút, Rửa nhanh, Rửa ngâm</li><li>Chức năng đặc biệt: Tăng tốc độ rửa, làm khô tăng cường, rửa mạnh tăng cường, tiết kiệm năng lượng, tùy chọn rửa nửa tải trên hoặc dưới</li><li>Điều khiển nút nhấn, Màn hình hiển thị LED</li><li>Động cơ BLDC</li><li>Tự động mở cửa</li><li>Tiêu chuẩn tiết kiệm năng lượng A+++ (Châu Âu)</li><li>Chức năng báo mức muối và chất tẩy rửa</li></ul><h2>2. Thông số kỹ thuật máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Mã sản phẩm: Hafele HDW-HI60B</li><li>Model: 533.23.210</li><li>Xuất xứ: Made in Turkey</li><li>Kiểu dáng: Máy rửa bát bán phần</li><li>Loại sản phẩm: Máy rửa bát Hafele</li><li>Nhãn năng lượng: A++</li><li>Điều khiển: Cơ</li><li>Mức độ tiêu thụ nước (l): 09 lít/ 1 lần rửa</li><li>Công suất rửa: 15 bộ bát đĩa âu</li><li>Số chương trình rửa: 07</li><li>Hệ thống khóa trẻ em: Có</li><li>Đèn báo muối và chất tẩy rửa: Có</li><li>Màn hình hiển thị: LED</li><li>Chất liệu/màu sắc: Thép không gỉ, màu inox</li><li>Độ ồn (dB): 44dB</li><li>Mức tiêu thụ điện năng: 1.02 kwh/ 1 lần rửa</li><li>Điện áp: 220V-240V /~ 50Hz 10A</li><li>Kích thước sản phẩm: 598R x 570S x 820-875C mm</li><li>Kích thước hốc tủ: 600R x 600S x 820-870C mm</li></ul><p>Thông tin về máy rửa chén</p><h2>Máy rửa chén bát hoạt động như thế nào?</h2><p><a href=\"https://shop.phanhoanggia.com/danh-muc-san-pham/may-rua-chen-bat/\"><strong>Máy rửa chén bát</strong></a> hoạt động hiệu quả bằng cách sử dụng lực phun xoáy mạnh mẽ của nước để làm sạch bát, đĩa và đồ dùng nhà bếp. Đồng thời, nhờ vào khay rổ bên trong có khả năng xoay chuyển và thay đổi vị trí, các vết bẩn bám trên bát, đĩa, đồ dùng nhà bếp được loại bỏ hoàn toàn.</p><p>Sau quá trình làm sạch, bát, đĩa được sấy khô bằng không khí nóng. Máy còn được trang bị chức năng xác định thời gian cho một chu trình rửa và đi kèm với khả năng xả nước tẩy rửa, phun nước, và xả nước.</p><p>Ngoài ra, máy rửa chén bát tích hợp nhiều chương trình rửa đa dạng, mang lại sự tiện lợi cho người dùng, bao gồm chương trình rửa nhanh, rửa tiết kiệm, rửa mạnh, và rửa sâu.</p><p><br></p>', 1, 0, '2025-03-12 08:00:42', '2025-03-14 06:34:44'),
(22, 'Khóa tay gạt Mozlex KS01 – G', 'products/01JPADVS0E91WHEGJX71BBV42K.jpg', '[\"products/01JP5DZFQKFX1NBE3016F4Y95S.jpg\", \"products/01JP5DZFQPNYQ7RVFENTGSBST0.jpg\"]', 'khoa-tay-gat-mozlex-ks01-g', 13, 3, 4, '{\"Hotline\": \"0933 427 499\", \"Bảo hành\": \"3 năm\", \"Xuất xứ\": \"Thổ Nhĩ Kỳ\", \"Thương hiệu\": \"HAFELE\", \"Kích thước lắp đặt\": \"600R x 600S x 820-870C mm\", \"Kích thước sản phẩm\": \"598R x 570S x 820-875C mm\"}', '3494000.00', '2432000.00', 0, 'NOKAIW0033212cc244123', '<h2>1. Đặc tính sản phẩm của máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Sức chứa: 14 bộ đồ ăn Châu Âu</li><li>8 chương trình rửa: Rửa tự động, Rửa mạnh, Rửa thường, Rửa tiết kiệm, Rửa ly tách dễ vỡ, Rửa 90 phút, Rửa nhanh, Rửa ngâm</li><li>Chức năng đặc biệt: Tăng tốc độ rửa, làm khô tăng cường, rửa mạnh tăng cường, tiết kiệm năng lượng, tùy chọn rửa nửa tải trên hoặc dưới</li><li>Điều khiển nút nhấn, Màn hình hiển thị LED</li><li>Động cơ BLDC</li><li>Tự động mở cửa</li><li>Tiêu chuẩn tiết kiệm năng lượng A+++ (Châu Âu)</li><li>Chức năng báo mức muối và chất tẩy rửa</li></ul><h2>2. Thông số kỹ thuật máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Mã sản phẩm: Hafele HDW-HI60B</li><li>Model: 533.23.210</li><li>Xuất xứ: Made in Turkey</li><li>Kiểu dáng: Máy rửa bát bán phần</li><li>Loại sản phẩm: Máy rửa bát Hafele</li><li>Nhãn năng lượng: A++</li><li>Điều khiển: Cơ</li><li>Mức độ tiêu thụ nước (l): 09 lít/ 1 lần rửa</li><li>Công suất rửa: 15 bộ bát đĩa âu</li><li>Số chương trình rửa: 07</li><li>Hệ thống khóa trẻ em: Có</li><li>Đèn báo muối và chất tẩy rửa: Có</li><li>Màn hình hiển thị: LED</li><li>Chất liệu/màu sắc: Thép không gỉ, màu inox</li><li>Độ ồn (dB): 44dB</li><li>Mức tiêu thụ điện năng: 1.02 kwh/ 1 lần rửa</li><li>Điện áp: 220V-240V /~ 50Hz 10A</li><li>Kích thước sản phẩm: 598R x 570S x 820-875C mm</li><li>Kích thước hốc tủ: 600R x 600S x 820-870C mm</li></ul><p>Thông tin về máy rửa chén</p><h2>Máy rửa chén bát hoạt động như thế nào?</h2><p><a href=\"https://shop.phanhoanggia.com/danh-muc-san-pham/may-rua-chen-bat/\"><strong>Máy rửa chén bát</strong></a> hoạt động hiệu quả bằng cách sử dụng lực phun xoáy mạnh mẽ của nước để làm sạch bát, đĩa và đồ dùng nhà bếp. Đồng thời, nhờ vào khay rổ bên trong có khả năng xoay chuyển và thay đổi vị trí, các vết bẩn bám trên bát, đĩa, đồ dùng nhà bếp được loại bỏ hoàn toàn.</p><p>Sau quá trình làm sạch, bát, đĩa được sấy khô bằng không khí nóng. Máy còn được trang bị chức năng xác định thời gian cho một chu trình rửa và đi kèm với khả năng xả nước tẩy rửa, phun nước, và xả nước.</p><p>Ngoài ra, máy rửa chén bát tích hợp nhiều chương trình rửa đa dạng, mang lại sự tiện lợi cho người dùng, bao gồm chương trình rửa nhanh, rửa tiết kiệm, rửa mạnh, và rửa sâu.</p><p><br></p>', 1, 0, '2025-03-12 08:00:42', '2025-03-14 06:35:24'),
(23, 'Khóa tay gạt Mozlex KS01 – PVD', 'products/01JPADWZDKSKBHEXBHQ5SACR7N.jpg', '[\"products/01JP5DZFQKFX1NBE3016F4Y95S.jpg\", \"products/01JP5DZFQPNYQ7RVFENTGSBST0.jpg\"]', 'khoa-tay-gat-mozlex-ks01-pvd', 13, 3, 4, '{\"Hotline\": \"0933 427 499\", \"Bảo hành\": \"3 năm\", \"Xuất xứ\": \"Thổ Nhĩ Kỳ\", \"Thương hiệu\": \"HAFELE\", \"Kích thước lắp đặt\": \"600R x 600S x 820-870C mm\", \"Kích thước sản phẩm\": \"598R x 570S x 820-875C mm\"}', '3494000.00', '2432000.00', 0, 'NOKAIW0033212cc2441234', '<h2>1. Đặc tính sản phẩm của máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Sức chứa: 14 bộ đồ ăn Châu Âu</li><li>8 chương trình rửa: Rửa tự động, Rửa mạnh, Rửa thường, Rửa tiết kiệm, Rửa ly tách dễ vỡ, Rửa 90 phút, Rửa nhanh, Rửa ngâm</li><li>Chức năng đặc biệt: Tăng tốc độ rửa, làm khô tăng cường, rửa mạnh tăng cường, tiết kiệm năng lượng, tùy chọn rửa nửa tải trên hoặc dưới</li><li>Điều khiển nút nhấn, Màn hình hiển thị LED</li><li>Động cơ BLDC</li><li>Tự động mở cửa</li><li>Tiêu chuẩn tiết kiệm năng lượng A+++ (Châu Âu)</li><li>Chức năng báo mức muối và chất tẩy rửa</li></ul><h2>2. Thông số kỹ thuật máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Mã sản phẩm: Hafele HDW-HI60B</li><li>Model: 533.23.210</li><li>Xuất xứ: Made in Turkey</li><li>Kiểu dáng: Máy rửa bát bán phần</li><li>Loại sản phẩm: Máy rửa bát Hafele</li><li>Nhãn năng lượng: A++</li><li>Điều khiển: Cơ</li><li>Mức độ tiêu thụ nước (l): 09 lít/ 1 lần rửa</li><li>Công suất rửa: 15 bộ bát đĩa âu</li><li>Số chương trình rửa: 07</li><li>Hệ thống khóa trẻ em: Có</li><li>Đèn báo muối và chất tẩy rửa: Có</li><li>Màn hình hiển thị: LED</li><li>Chất liệu/màu sắc: Thép không gỉ, màu inox</li><li>Độ ồn (dB): 44dB</li><li>Mức tiêu thụ điện năng: 1.02 kwh/ 1 lần rửa</li><li>Điện áp: 220V-240V /~ 50Hz 10A</li><li>Kích thước sản phẩm: 598R x 570S x 820-875C mm</li><li>Kích thước hốc tủ: 600R x 600S x 820-870C mm</li></ul><p>Thông tin về máy rửa chén</p><h2>Máy rửa chén bát hoạt động như thế nào?</h2><p><a href=\"https://shop.phanhoanggia.com/danh-muc-san-pham/may-rua-chen-bat/\"><strong>Máy rửa chén bát</strong></a> hoạt động hiệu quả bằng cách sử dụng lực phun xoáy mạnh mẽ của nước để làm sạch bát, đĩa và đồ dùng nhà bếp. Đồng thời, nhờ vào khay rổ bên trong có khả năng xoay chuyển và thay đổi vị trí, các vết bẩn bám trên bát, đĩa, đồ dùng nhà bếp được loại bỏ hoàn toàn.</p><p>Sau quá trình làm sạch, bát, đĩa được sấy khô bằng không khí nóng. Máy còn được trang bị chức năng xác định thời gian cho một chu trình rửa và đi kèm với khả năng xả nước tẩy rửa, phun nước, và xả nước.</p><p>Ngoài ra, máy rửa chén bát tích hợp nhiều chương trình rửa đa dạng, mang lại sự tiện lợi cho người dùng, bao gồm chương trình rửa nhanh, rửa tiết kiệm, rửa mạnh, và rửa sâu.</p><p><br></p>', 1, 0, '2025-03-12 08:00:42', '2025-03-14 06:36:04'),
(24, 'Khóa tay gạt Mozlex KS05', 'products/01JPADXJ5DR27K8TXR7QNSK2WE.jpg', '[\"products/01JP5DZFQKFX1NBE3016F4Y95S.jpg\", \"products/01JP5DZFQPNYQ7RVFENTGSBST0.jpg\"]', 'khoa-tay-gat-mozlex-ks05', 13, 3, 4, '{\"Hotline\": \"0933 427 499\", \"Bảo hành\": \"3 năm\", \"Xuất xứ\": \"Thổ Nhĩ Kỳ\", \"Thương hiệu\": \"HAFELE\", \"Kích thước lắp đặt\": \"600R x 600S x 820-870C mm\", \"Kích thước sản phẩm\": \"598R x 570S x 820-875C mm\"}', '3494000.00', '2432000.00', 0, 'KASKKSK2', '<h2>1. Đặc tính sản phẩm của máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Sức chứa: 14 bộ đồ ăn Châu Âu</li><li>8 chương trình rửa: Rửa tự động, Rửa mạnh, Rửa thường, Rửa tiết kiệm, Rửa ly tách dễ vỡ, Rửa 90 phút, Rửa nhanh, Rửa ngâm</li><li>Chức năng đặc biệt: Tăng tốc độ rửa, làm khô tăng cường, rửa mạnh tăng cường, tiết kiệm năng lượng, tùy chọn rửa nửa tải trên hoặc dưới</li><li>Điều khiển nút nhấn, Màn hình hiển thị LED</li><li>Động cơ BLDC</li><li>Tự động mở cửa</li><li>Tiêu chuẩn tiết kiệm năng lượng A+++ (Châu Âu)</li><li>Chức năng báo mức muối và chất tẩy rửa</li></ul><h2>2. Thông số kỹ thuật máy rửa chén bát Hafele HDW-FI60AB</h2><ul><li>Mã sản phẩm: Hafele HDW-HI60B</li><li>Model: 533.23.210</li><li>Xuất xứ: Made in Turkey</li><li>Kiểu dáng: Máy rửa bát bán phần</li><li>Loại sản phẩm: Máy rửa bát Hafele</li><li>Nhãn năng lượng: A++</li><li>Điều khiển: Cơ</li><li>Mức độ tiêu thụ nước (l): 09 lít/ 1 lần rửa</li><li>Công suất rửa: 15 bộ bát đĩa âu</li><li>Số chương trình rửa: 07</li><li>Hệ thống khóa trẻ em: Có</li><li>Đèn báo muối và chất tẩy rửa: Có</li><li>Màn hình hiển thị: LED</li><li>Chất liệu/màu sắc: Thép không gỉ, màu inox</li><li>Độ ồn (dB): 44dB</li><li>Mức tiêu thụ điện năng: 1.02 kwh/ 1 lần rửa</li><li>Điện áp: 220V-240V /~ 50Hz 10A</li><li>Kích thước sản phẩm: 598R x 570S x 820-875C mm</li><li>Kích thước hốc tủ: 600R x 600S x 820-870C mm</li></ul><p>Thông tin về máy rửa chén</p><h2>Máy rửa chén bát hoạt động như thế nào?</h2><p><a href=\"https://shop.phanhoanggia.com/danh-muc-san-pham/may-rua-chen-bat/\"><strong>Máy rửa chén bát</strong></a> hoạt động hiệu quả bằng cách sử dụng lực phun xoáy mạnh mẽ của nước để làm sạch bát, đĩa và đồ dùng nhà bếp. Đồng thời, nhờ vào khay rổ bên trong có khả năng xoay chuyển và thay đổi vị trí, các vết bẩn bám trên bát, đĩa, đồ dùng nhà bếp được loại bỏ hoàn toàn.</p><p>Sau quá trình làm sạch, bát, đĩa được sấy khô bằng không khí nóng. Máy còn được trang bị chức năng xác định thời gian cho một chu trình rửa và đi kèm với khả năng xả nước tẩy rửa, phun nước, và xả nước.</p><p>Ngoài ra, máy rửa chén bát tích hợp nhiều chương trình rửa đa dạng, mang lại sự tiện lợi cho người dùng, bao gồm chương trình rửa nhanh, rửa tiết kiệm, rửa mạnh, và rửa sâu.</p><p><br></p>', 1, 0, '2025-03-12 08:00:42', '2025-03-14 06:36:23');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('KDGzmRWoyDWgqkQCrnC3vPIz2hWShIFAH5Qqm1Kr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0c0c010Y2ZOWVp4WmtIV3FSV29weDVGVUtkNVVpZ3hzeFZ5SnJrYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741960070),
('pmMNg2IFMaMDHUqccRijVxzDkvAqEMljDZWD6g5s', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo5OntzOjY6Il90b2tlbiI7czo0MDoiSFRRUERLMnZ0Q0RHS0VsaEQ5clpNSWdkVUZlODlxa2JqWmVlcHhZMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi9jYXRlZ29yaWVzLzMvZWRpdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkNDIyck52RVNtQy41T0hZcXFyYk5rdTNZbjBoRzVkSGRqL24xcmpoNVdpVlg0SVQ0bGppbDIiO3M6NDoiY2FydCI7YToxOntpOjI7YTo1OntzOjI6ImlkIjtpOjI7czo0OiJuYW1lIjtzOjUzOiJU4bunIGvhu4cgdGl2aSBoaeG7h24gxJHhuqFpIGNobyBnaWEgxJHDrG5oIFRvdXRvdXNhaSI7czo1OiJwcmljZSI7czoxMDoiMjQzMjAwMC4wMCI7czo1OiJpbWFnZSI7czozOToicHJvZHVjdHMvMDFKUDVEWUdNUjlYRlhUMEhUWVJXNzBHUEIuanBnIjtzOjg6InF1YW50aXR5IjtpOjY7fX1zOjY6InRhYmxlcyI7YToxOntzOjQxOiIwOTkxYjFkMjI4NjRlNzJjMGU4M2ViMGEyY2QwNzcyN19wZXJfcGFnZSI7czoxOiI1Ijt9czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1741959918),
('QwpTscWNfm1zboLV5F9m3WcN1khWNL3Gnkjh5L9p', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMHI0cm9iQlMyZDhuSnlOQWlKSWZvYlB5aU93OUxCejN6RWtwVFQyeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW4tcGhhbS90dS1rZS10aXZpLWhpZW4tZGFpLWNoby1naWEtZGluaC10b3V0b3VzYWkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741958251),
('UwpoTYqSGmm4giRmPD6FAwbOlwJenkrL5Xh7lFFW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMkxNMkZ1QklHaVRSQ0drMlFidXQ0ekhNZWRtM1l2UTA1clp3T2dIaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW4tcGhhbS90dS1rZS10aXZpLWhpMmVuLWRhaS1jaG8tZ2lhLWRpbmgtdG91dG91c2FpIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741958508),
('vByMSfcHxYkoBVZ4ryoP8x80p7REsntvTmn2UHj7', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibXZlNUJ6RVVzQkJpNnZuV1R1dUw4NlFCUFc5RnZ1YWRPc01YWE9xQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9naW8taGFuZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741958734),
('ZzbI8qwt7uajVO8br1wTOb6Cs6x3rEReho883tLi', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidFBVTlBTNWMwZE5CblhIUndRZjhESzVacVZKaUVjQkg5VUg3YndoaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW4tcGhhbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741959402);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_hot` tinyint(1) NOT NULL DEFAULT '0',
  `is_sale` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `slug`, `is_hot`, `is_sale`, `created_at`, `updated_at`) VALUES
(1, 1, 'Phòng khách', 'phong-khach', 0, 0, '2025-03-12 06:49:14', '2025-03-12 06:49:14'),
(2, 1, 'Phòng ngủ', 'phong-ngu', 0, 0, '2025-03-12 06:52:32', '2025-03-12 06:52:32'),
(3, 1, 'Phòng bếp', 'phong-bep', 0, 0, '2025-03-12 06:52:54', '2025-03-12 06:52:54'),
(4, 3, 'Khóa cơ', 'khoa-co', 0, 0, '2025-03-12 07:09:01', '2025-03-12 07:09:01'),
(5, 3, 'Khóa thông minh', 'khoa-thong-minh', 0, 0, '2025-03-12 07:09:09', '2025-03-12 07:09:09'),
(6, 2, 'Cửa gỗ Composite', 'cua-go-composite-con', 0, 0, '2025-03-14 06:16:46', '2025-03-14 06:16:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `theme`, `theme_color`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$12$422rNvESmC.5OHYqqrbNku3Yn0hG5dHdj/n1rjh5WiVX4IT4ljil2', NULL, '2025-03-12 06:22:08', '2025-03-12 06:22:08', 'default', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `child_sub_categories`
--
ALTER TABLE `child_sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `child_sub_categories_slug_unique` (`slug`),
  ADD KEY `child_sub_categories_sub_category_id_foreign` (`sub_category_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_contact_id_foreign` (`contact_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD UNIQUE KEY `products_product_code_unique` (`product_code`),
  ADD KEY `products_child_sub_category_id_foreign` (`child_sub_category_id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_sub_category_id_foreign` (`sub_category_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_categories_slug_unique` (`slug`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `child_sub_categories`
--
ALTER TABLE `child_sub_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `child_sub_categories`
--
ALTER TABLE `child_sub_categories`
  ADD CONSTRAINT `child_sub_categories_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`),
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_child_sub_category_id_foreign` FOREIGN KEY (`child_sub_category_id`) REFERENCES `child_sub_categories` (`id`),
  ADD CONSTRAINT `products_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`);

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
