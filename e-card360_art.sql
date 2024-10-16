-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3309
-- Generation Time: Oct 16, 2024 at 04:30 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-card360.art`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1729087935),
('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1729087935;', 1729087935),
('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1729088811),
('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1729088811;', 1729088811),
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:25:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:12:\"restore_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:16:\"restore_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:14:\"replicate_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:12:\"reorder_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:17:\"force_delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:21:\"force_delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:18:\"view_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:22:\"view_any_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:20:\"create_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:20:\"update_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:21:\"restore_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:25:\"restore_any_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:23:\"replicate_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:21:\"reorder_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:20:\"delete_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:24:\"delete_any_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:26:\"force_delete_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:30:\"force_delete_any_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:11:\"page_Themes\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:1:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:3:\"web\";}}}', 1729170469),
('theme', 's:6:\"sunset\";', 2044443836);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_10_16_125100_create_wedding_cards_table', 2),
(5, '2024_10_16_130233_add_themes_settings_to_users_table', 3),
(6, '2024_10_16_130623_create_permission_tables', 4),
(7, '2024_10_16_132952_create_wedding_invitations_table', 5),
(8, 's2024_10_16_132952_create_wedding_invitations_table', 6),
(9, '2024_10_16_140626_add_columns_to_wedding_invitations_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_user', 'web', '2024-10-16 06:06:32', '2024-10-16 06:06:32'),
(2, 'view_any_user', 'web', '2024-10-16 06:06:32', '2024-10-16 06:06:32'),
(3, 'create_user', 'web', '2024-10-16 06:06:32', '2024-10-16 06:06:32'),
(4, 'update_user', 'web', '2024-10-16 06:06:32', '2024-10-16 06:06:32'),
(5, 'restore_user', 'web', '2024-10-16 06:06:32', '2024-10-16 06:06:32'),
(6, 'restore_any_user', 'web', '2024-10-16 06:06:32', '2024-10-16 06:06:32'),
(7, 'replicate_user', 'web', '2024-10-16 06:06:32', '2024-10-16 06:06:32'),
(8, 'reorder_user', 'web', '2024-10-16 06:06:32', '2024-10-16 06:06:32'),
(9, 'delete_user', 'web', '2024-10-16 06:06:32', '2024-10-16 06:06:32'),
(10, 'delete_any_user', 'web', '2024-10-16 06:06:32', '2024-10-16 06:06:32'),
(11, 'force_delete_user', 'web', '2024-10-16 06:06:32', '2024-10-16 06:06:32'),
(12, 'force_delete_any_user', 'web', '2024-10-16 06:06:32', '2024-10-16 06:06:32'),
(13, 'view_wedding::card', 'web', '2024-10-16 06:06:32', '2024-10-16 06:06:32'),
(14, 'view_any_wedding::card', 'web', '2024-10-16 06:06:32', '2024-10-16 06:06:32'),
(15, 'create_wedding::card', 'web', '2024-10-16 06:06:32', '2024-10-16 06:06:32'),
(16, 'update_wedding::card', 'web', '2024-10-16 06:06:32', '2024-10-16 06:06:32'),
(17, 'restore_wedding::card', 'web', '2024-10-16 06:06:32', '2024-10-16 06:06:32'),
(18, 'restore_any_wedding::card', 'web', '2024-10-16 06:06:32', '2024-10-16 06:06:32'),
(19, 'replicate_wedding::card', 'web', '2024-10-16 06:06:32', '2024-10-16 06:06:32'),
(20, 'reorder_wedding::card', 'web', '2024-10-16 06:06:32', '2024-10-16 06:06:32'),
(21, 'delete_wedding::card', 'web', '2024-10-16 06:06:32', '2024-10-16 06:06:32'),
(22, 'delete_any_wedding::card', 'web', '2024-10-16 06:06:32', '2024-10-16 06:06:32'),
(23, 'force_delete_wedding::card', 'web', '2024-10-16 06:06:32', '2024-10-16 06:06:32'),
(24, 'force_delete_any_wedding::card', 'web', '2024-10-16 06:06:32', '2024-10-16 06:06:32'),
(25, 'page_Themes', 'web', '2024-10-16 06:06:32', '2024-10-16 06:06:32');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'web', '2024-10-16 06:06:32', '2024-10-16 06:06:32'),
(2, 'panel_user', 'web', '2024-10-16 06:07:50', '2024-10-16 06:07:50');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('5kSbvfOe3806pPqeSANRpn0EJB7z8WsZ0TqAgSx5', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 OPR/113.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoid2U0Z1FxRk5qd2F5eGFTS0RFUnRNdmdSc2c4SFg0Q3pDOGdTMlY2NCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi93ZWRkaW5nLWludml0YXRpb25zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJE0xTEt3L3RyTFhDTGFQR0hSeVhiNy5WYzlwa0RnczFOYU45RGE5bTZUT1hnRzU0QTNzL1dHIjtzOjg6ImZpbGFtZW50IjthOjA6e319', 1729088992),
('O7HHXeflsIM33smloplzYzN676qa8b5HYmPqaxDn', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 OPR/113.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiMU5YRGVTaFE0NXJ3SzdkUE1wSWIxb2RiQ3NNQmptNDkyWk5VQUdJSiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMzOiJodHRwOi8vbG9jYWxob3N0OjgwMDAvYWRtaW4vbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkTTFMS3cvdHJMWENMYVBHSFJ5WGI3LlZjOXBrRGdzMU5hTjlEYTltNlRPWGdHNTRBM3MvV0ciO30=', 1729088813),
('qNoGhiLsYP4S9gRUSl2vyspHhLbTeXql83LblDa8', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 OPR/113.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiczVnZFJtMmN4VTdJRHloc2NTS2g0dU1rNktXclgxa2tDYWVSUUtuVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729088813);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `theme` varchar(255) DEFAULT 'default',
  `theme_color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `theme`, `theme_color`) VALUES
(1, 'admin@gmail.com', 'admin@gmail.com', NULL, '$2y$12$M1LKw/trLXCLaPGHRyXb7.Vc9pkDgs1NaN9Da9m6TOXgG54A3s/WG', NULL, '2024-10-16 05:23:51', '2024-10-16 05:23:51', 'default', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wedding_cards`
--

CREATE TABLE `wedding_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `template_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `demo_link` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wedding_cards`
--

INSERT INTO `wedding_cards` (`id`, `template_name`, `image`, `demo_link`, `created_at`, `updated_at`) VALUES
(1, 'Mẫu Thiệp Hiện Đại 2', 'wedding_cards/01JAAPHAJCMX9BQC7Z5SC6PS93.png', '/mau-1', '2024-10-16 05:56:37', '2024-10-16 05:58:37'),
(2, 'Mẫu Thiệp Vàng Gold', 'wedding_cards/01JAAPGDB19406RGNVC7ZRXSZ7.png', '/mau-2', '2024-10-16 05:58:07', '2024-10-16 05:58:07');

-- --------------------------------------------------------

--
-- Table structure for table `wedding_invitations`
--

CREATE TABLE `wedding_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `event_time` datetime DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `event_location` varchar(255) DEFAULT NULL,
  `event_address` varchar(255) DEFAULT NULL,
  `event_map_link` varchar(255) DEFAULT NULL,
  `event_phone` varchar(255) DEFAULT NULL,
  `event_album` varchar(255) DEFAULT NULL,
  `event_payment_qr` varchar(255) DEFAULT NULL,
  `event_day_of_week` varchar(255) DEFAULT NULL,
  `event_zodiac_sign` varchar(255) DEFAULT NULL,
  `groom_name` varchar(255) DEFAULT NULL,
  `groom_birth_date` date DEFAULT NULL,
  `groom_description` text DEFAULT NULL,
  `groom_image` varchar(255) DEFAULT NULL,
  `bride_name` varchar(255) DEFAULT NULL,
  `bride_birth_date` date DEFAULT NULL,
  `bride_description` text DEFAULT NULL,
  `first_meeting_date` date DEFAULT NULL,
  `first_meeting_image` varchar(255) DEFAULT NULL,
  `dating_date` date DEFAULT NULL,
  `dating_image` varchar(255) DEFAULT NULL,
  `engagement_date` date DEFAULT NULL,
  `engagement_image` varchar(255) DEFAULT NULL,
  `wedding_date` date DEFAULT NULL,
  `wedding_image` varchar(255) DEFAULT NULL,
  `album` varchar(255) DEFAULT NULL,
  `groom_family_address` varchar(255) DEFAULT NULL,
  `groom_family_phone` varchar(255) DEFAULT NULL,
  `groom_family_map_link` varchar(255) DEFAULT NULL,
  `groom_family_gift_qr` varchar(255) DEFAULT NULL,
  `groom_family_image` varchar(255) DEFAULT NULL,
  `bride_family_address` varchar(255) DEFAULT NULL,
  `bride_family_phone` varchar(255) DEFAULT NULL,
  `bride_family_map_link` varchar(255) DEFAULT NULL,
  `bride_family_gift_qr` varchar(255) DEFAULT NULL,
  `bride_family_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bride_image` varchar(255) DEFAULT NULL,
  `invitation_template_id` bigint(20) UNSIGNED DEFAULT NULL,
  `invitation_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wedding_invitations`
--

INSERT INTO `wedding_invitations` (`id`, `customer_id`, `event_time`, `event_date`, `event_location`, `event_address`, `event_map_link`, `event_phone`, `event_album`, `event_payment_qr`, `event_day_of_week`, `event_zodiac_sign`, `groom_name`, `groom_birth_date`, `groom_description`, `groom_image`, `bride_name`, `bride_birth_date`, `bride_description`, `first_meeting_date`, `first_meeting_image`, `dating_date`, `dating_image`, `engagement_date`, `engagement_image`, `wedding_date`, `wedding_image`, `album`, `groom_family_address`, `groom_family_phone`, `groom_family_map_link`, `groom_family_gift_qr`, `groom_family_image`, `bride_family_address`, `bride_family_phone`, `bride_family_map_link`, `bride_family_gift_qr`, `bride_family_image`, `created_at`, `updated_at`, `bride_image`, `invitation_template_id`, `invitation_code`) VALUES
(1, 1, '2024-10-16 20:49:30', '2024-10-24', 'Luxury Palace', '171 Nguyễn Thái Sơn, P8, Gò Vấp', 'http://localhost:8000/mau-14', '099999999', '[\"image_2024-10-16_210133935.png\"]', '01JAAT4TR9SAVTSKEYN5GT2BR4.png', '123', '12', 'Công Thành', '2024-10-23', 'Chú rể là người cởi mở, thân thiện, giao tiếp tốt và thuộc tuýp người hướng ngoại.', '01JAAT5PPE2G1891TSANN4S285.png', 'Phương Ánh', '2024-10-25', 'Cô dâu thuộc tuýp người hướng nội . Sở thích nấu nướng và đi du lịch cùng gia đình.', '2024-10-29', '01JAAT7V0CC209GJ912GQAEE9Z.png', '2024-10-11', '01JAAT7V0GQ04WKVPYHR0GFBZW.png', '2024-10-18', '01JAAT7V0NAY1S5C8KXEF53YQ9.png', '2024-10-10', '01JAAT7V0S104EX14M9XT1DMX2.png', '[\"image_2024-10-16_210329334.png\",\"image_2024-10-16_210332386.png\",\"image_2024-10-16_210336323.png\",\"image_2024-10-16_210349684.png\",\"image_2024-10-16_210357391.png\",\"image_2024-10-16_210403597.png\"]', 'ẤP TÂN PHÚ A, XÃ TÂN BÌNH, HUYỆN THANH BÌNH, TỈNH ĐỒNG THÁP', '091292921', 'http://localhost:8000/mau-14#gift', '123', '01JAAT68MY528YXD0M7HXKV6V3.png', '123', '123', '123', '123', '01JAAT7V08DJQYBKW4SVC81DG4.png', '2024-10-16 07:01:06', '2024-10-16 07:15:21', '01JAATPC3P6MDTGV3MZSZ9JBMC.png', 2, '123123'),
(2, 1, NULL, NULL, NULL, NULL, NULL, NULL, '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-16 07:29:37', '2024-10-16 07:29:37', NULL, 1, NULL);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wedding_cards`
--
ALTER TABLE `wedding_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wedding_invitations`
--
ALTER TABLE `wedding_invitations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wedding_invitations_customer_id_foreign` (`customer_id`),
  ADD KEY `wedding_invitations_invitation_template_id_foreign` (`invitation_template_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wedding_cards`
--
ALTER TABLE `wedding_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wedding_invitations`
--
ALTER TABLE `wedding_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wedding_invitations`
--
ALTER TABLE `wedding_invitations`
  ADD CONSTRAINT `wedding_invitations_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wedding_invitations_invitation_template_id_foreign` FOREIGN KEY (`invitation_template_id`) REFERENCES `wedding_cards` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
