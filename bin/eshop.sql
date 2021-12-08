-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 07, 2021 at 11:19 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
CREATE TABLE IF NOT EXISTS `carts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `prod_id`, `prod_qty`, `created_at`, `updated_at`) VALUES
(1, '1', '4', '1', '2021-12-01 12:20:49', '2021-12-01 12:20:49'),
(2, '1', '7', '1', '2021-12-01 12:23:28', '2021-12-01 12:23:28'),
(3, '1', '5', '1', '2021-12-01 12:25:15', '2021-12-01 12:25:15'),
(4, '1', '6', '2', '2021-12-01 12:31:26', '2021-12-01 12:31:26');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_descrip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_descrip`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', 'electrionics', 'afdasfd', 0, 1, '1636115736.jpg', 'afadss', 'fdasf sd', 'fasddasfd, fasdfsd, fasdfdfa', '2021-11-05 12:35:36', '2021-11-06 10:10:58'),
(2, 'Fashion', 'fashion', 'dfasaffadsaf', 0, 1, '1636115764.jpg', 'dfassdfsa', 'fadsfdsf', 'fdsadsfsdf, dfadsfsdfm, fdasadsf', '2021-11-05 12:36:04', '2021-11-06 10:11:11'),
(3, 'Games', 'games', 'adcsadsfadsf', 0, 1, '1636115811.jpg', 'afsdafd', 'adsafs', 'dsadsfsdf, fdasdasf, fdassfdsdsf', '2021-11-05 12:36:51', '2021-11-05 12:36:51'),
(5, 'Education', 'education', 'Lorem ipsum dolor sit amet.', 0, 1, '1636194125.jpg', 'afsaddsf', 'ulla in lectus tincidunt, accumsan leo sed, imperdiet velit. Vestibulum in sem sem. Etiam vitae tellus quis odio placerat sollicitudin.', 'sdfadssfd, fsaddsfadsfa', '2021-11-06 10:22:05', '2021-11-06 10:24:57');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(9, '2021_11_03_165545_create_categories_table', 2),
(11, '2021_11_04_172844_create_products_table', 3),
(12, '2021_12_01_162706_create_carts_table', 4),
(16, '2021_12_05_192321_create_orders_table', 5),
(17, '2021_12_05_193343_create_order_items_table', 5),
(18, '2021_12_07_122448_create_wishlists_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fname`, `lname`, `email`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `pincode`, `total_price`, `status`, `message`, `tracking_no`, `created_at`, `updated_at`) VALUES
(1, '2', 'tharaka', 'nadeeshan', 'tharaka270@gmail.com', '0713064432', 'mathara1', 'mathara2', 'mathara', 'mathara123', 'sri lanka', '3452345', '57999', 1, NULL, 'isuru2723', '2021-12-06 07:04:43', '2021-12-06 14:13:35'),
(2, '2', 'tharaka', 'nadeeshan', 'tharaka270@gmail.com', '0713064432', 'mathara1', 'mathara2', 'mathara', 'mathara123', 'sri lanka', '3452345', '57000', 0, NULL, 'isuru9193', '2021-12-06 08:52:12', '2021-12-06 08:52:12'),
(3, '2', 'tharaka', 'nadeeshan', 'tharaka270@gmail.com', '0713064432', 'mathara1', 'mathara2', 'mathara', 'mathara123', 'sri lanka', '3452345', '92998', 0, NULL, 'isuru1464', '2021-12-06 08:53:03', '2021-12-06 08:53:03'),
(4, '2', 'Tharaka', 'Nadeeshan', 'tharaka270@gmail.com', '0713064432', 'mathara1', 'mathara2', 'mathara', 'mathara123', 'sri lanka', '3452345', '151775', 0, NULL, 'isuru8367', '2021-12-07 10:13:18', '2021-12-07 10:13:18');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `prod_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, '1', '7', '1', '57999', '2021-12-06 07:04:43', '2021-12-06 07:04:43'),
(2, '2', '5', '1', '57000', '2021-12-06 08:52:12', '2021-12-06 08:52:12'),
(3, '3', '7', '1', '57999', '2021-12-06 08:53:03', '2021-12-06 08:53:03'),
(4, '3', '4', '1', '34999', '2021-12-06 08:53:03', '2021-12-06 08:53:03'),
(5, '4', '4', '2', '34999', '2021-12-07 10:13:19', '2021-12-07 10:13:19'),
(6, '4', '7', '1', '57999', '2021-12-07 10:13:19', '2021-12-07 10:13:19'),
(7, '4', '6', '2', '58777', '2021-12-07 10:13:19', '2021-12-07 10:13:19');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cate_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL,
  `meta_title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cate_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `tax`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'new electronics', 'phone1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis pulvinar turpis. Mauris rhoncus justo sed sem dictum, eu vestibulum nunc imperdiet. Praesent euismod, est at vehicula interdum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis pulvinar turpis. Mauris rhoncus justo sed sem dictum, eu vestibulum nunc imperdiet. Praesent euismod, est at vehicula interdum, purus diam euismod purus, sed auctor tellus dui a augue. In rutrum diam a massa scelerisque, id imperdiet orci facilisis. Cras cursus augue sodales vulputate lacinia. Praesent in quam lobortis, tempor sem viverra, fermentum lorem.', '45000', '50000', '1636116071.jpg', '0', '1000', 0, 0, 'adsaf', 'dsadadf, dasdfs, fdassfd', 'dfasafsdf', '2021-11-05 12:37:33', '2021-12-06 06:18:13'),
(2, 3, 'phone2', 'phone2', 'Fusce ac congue diam. Quisque sit amet elit tempus, suscipit quam vel, feugiat libero. Ut interdum augue id eros laoreet consequat. Morbi at lorem erat.', 'Curabitur vitae sem a libero porta varius a ut lectus. Nullam congue sed sapien sed facilisis. Quisque ac dolor nulla. Mauris dignissim vel risus a aliquam. Suspendisse tristique quam malesuada libero ullamcorper, at commodo dolor semper. Duis dictum eu neque eu euismod. Vivamus efficitur ex eget metus volutpat molestie. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '67000', '68000', '1636116272.jpg', '6', '677', 0, 1, 'afdsadf', 'asdfssdf, adsdsdf, fdasdssfd', 'adsfadfads', '2021-11-05 12:38:25', '2021-12-01 09:48:03'),
(4, 2, 'New Phone', 'new phone', 'Nullam eget mi est. Fusce ultricies tellus at nunc pulvinar ullamcorper. In mauris dolor, consequat eget venenatis quis, tristique non quam. Quisque scelerisque sodales pharetra.', 'Nullam eget mi est. Fusce ultricies tellus at nunc pulvinar ullamcorper. In mauris dolor, consequat eget venenatis quis, tristique non quam. Quisque scelerisque sodales pharetra. Aenean ac justo metus. Vivamus ullamcorper et arcu quis facilisis. In luctus est eu quam vestibulum, vitae tempus mauris placerat. Mauris quis blandit lacus, ut iaculis enim.', '34000', '34999', '1636181808.jpg', '5', '200', 0, 1, 'adsafdsf', 'dsadasd, dfasdsf, dfassdf', 'dasassdf', '2021-11-06 06:56:48', '2021-12-07 10:13:19'),
(5, 3, 'Game new phone', 'Game new phone', 'Vestibulum posuere lacus velit, ut semper orci consequat ac. Proin gravida nisl dolor, eu pharetra erat molestie sed. Donec vehicula mauris sapien.', 'Vestibulum posuere lacus velit, ut semper orci consequat ac. Proin gravida nisl dolor, eu pharetra erat molestie sed. Donec vehicula mauris sapien, vitae feugiat quam tristique vel. Vivamus condimentum arcu eget massa blandit sollicitudin. Etiam eu consectetur elit, id gravida odio. Cras congue rhoncus tellus, in congue eros fringilla quis. Nunc malesuada felis quis leo suscipit ultrices. Nunc tristique gravida nisi sit amet interdum. Praesent tempus eu urna nec egestas. Vestibulum convallis nunc urna, laoreet aliquam nisi imperdiet eget.', '56000', '57000', '1636181878.jpg', '1', '500', 0, 1, 'afdassf', 'afadsfa, dasdsdsfa, fdasfadsf', 'dsafsddssdf dasf adf', '2021-11-06 06:57:58', '2021-12-06 08:52:12'),
(6, 1, 'New one electronics', 'New one electronics', 'Suspendisse vestibulum dolor tincidunt eros posuere commodo. Nulla tempus iaculis mattis. Proin sit amet lobortis est, non venenatis nulla.', 'Suspendisse vestibulum dolor tincidunt eros posuere commodo. Nulla tempus iaculis mattis. Proin sit amet lobortis est, non venenatis nulla. Vestibulum erat massa, eleifend nec iaculis id, aliquet at libero. Ut blandit fringilla velit ac efficitur. In porta dolor id est pretium bibendum. Pellentesque molestie eget enim eu commodo.', '56777', '58777', '1636181929.jpg', '0', '5666', 0, 1, 'afdsaf ssadf', 'fadddsads, fdsasadf, fadsfdsf', 'adsdsasfd', '2021-11-06 06:58:49', '2021-12-07 10:13:19'),
(7, 5, 'Education is compalsary', 'compalsary', 'Donec vulputate aliquet dui, vitae venenatis arcu lobortis id. In ultricies, diam vel pretium eleifend, nisi tellus convallis est, ac tristique nunc turpis nec ante. Nulla facilisi.', 'Vestibulum posuere lacus velit, ut semper orci consequat ac. Proin gravida nisl dolor, eu pharetra erat molestie sed. Donec vehicula mauris sapien, vitae feugiat quam tristique vel. Vivamus condimentum arcu eget massa blandit sollicitudin. Etiam eu consectetur elit, id gravida odio. Cras congue rhoncus tellus, in congue eros fringilla quis. Nunc malesuada felis quis leo suscipit ultrices. Nunc tristique gravida nisi sit amet interdum. Praesent tempus eu urna nec egestas. Vestibulum convallis nunc urna, laoreet aliquam nisi imperdiet eget.', '56999', '57999', '1636198271.jpg', '0', '499', 0, 1, 'afdsadsffdfs', 'afadsffs, dsadsfdsfadsf, dfassfsdaf', 'dsaadsfasddsfasfsdsas', '2021-11-06 11:31:11', '2021-12-07 10:13:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` int(191) NOT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `lname`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `pincode`, `role_as`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Isuru ', 'isuru.tharanga270@gmail.com', NULL, '$2y$10$FcGeK1qfht1AWNoWap/k6Ocpw6aljUz7undZ7oP2WvGeJC696ZoXC', 'Tharanga', '0775653458', 'add1', 'add2', 'tangalle', 'tanstate', 'sri lanka', 5694231, 1, NULL, '2021-11-03 05:55:40', '2021-11-03 05:55:40'),
(2, 'Tharaka', 'tharaka270@gmail.com', NULL, '$2y$10$kPNu2ur5A5c3j1JG5mxGZeNYtKjatfOffCkfIrjQaA20VChrPdUB.', 'Nadeeshan', '0713064432', 'mathara1', 'mathara2', 'mathara', 'mathara123', 'sri lanka', 3452345, 0, NULL, '2021-11-03 06:44:44', '2021-12-06 05:04:59');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
CREATE TABLE IF NOT EXISTS `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `prod_id`, `created_at`, `updated_at`) VALUES
(3, '2', '4', '2021-12-07 09:19:32', '2021-12-07 09:19:32');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
