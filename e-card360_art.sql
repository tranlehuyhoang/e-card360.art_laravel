-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3309
-- Generation Time: Oct 22, 2024 at 04:07 PM
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
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `wedding_invitation_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `number_of_guests` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `wedding_invitation_id`, `name`, `status`, `location`, `number_of_guests`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, '123', 'Xin Lỗi tôi không tham dự được !', 'TƯ GIA NHÀ TRAI', 2, '123', '2024-10-22 03:31:15', '2024-10-22 03:31:15'),
(2, 1, '123', 'Có tôi sẽ đến', 'TƯ GIA NHÀ GÁI', 1, NULL, '2024-10-22 03:35:11', '2024-10-22 03:35:11');

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
('356a192b7913b04c54574d18c28d46e6395428ab', 'i:2;', 1729572261),
('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1729572261;', 1729572261),
('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1729594811),
('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1729594811;', 1729594811),
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:25:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:12:\"restore_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:16:\"restore_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:14:\"replicate_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:12:\"reorder_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:17:\"force_delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:21:\"force_delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:18:\"view_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:22:\"view_any_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:20:\"create_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:20:\"update_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:21:\"restore_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:25:\"restore_any_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:23:\"replicate_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:21:\"reorder_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:20:\"delete_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:24:\"delete_any_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:26:\"force_delete_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:30:\"force_delete_any_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:11:\"page_Themes\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:1:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:3:\"web\";}}}', 1729649548),
('theme', 's:7:\"dracula\";', 2044924725);

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
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `wedding_invitation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `created_at`, `updated_at`, `wedding_invitation_id`, `name`, `message`) VALUES
(1, '2024-10-22 03:10:43', '2024-10-22 03:10:43', 1, NULL, NULL),
(2, '2024-10-22 03:11:52', '2024-10-22 03:11:52', 1, NULL, NULL),
(3, '2024-10-22 03:14:16', '2024-10-22 03:14:16', 1, '123123', '123123'),
(4, '2024-10-22 03:38:46', '2024-10-22 03:38:46', 1, '1212 g313213123', '21312312312312'),
(5, '2024-10-22 03:39:58', '2024-10-22 03:39:58', 1, '123123', '123123');

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
(9, '2024_10_16_140626_add_columns_to_wedding_invitations_table', 7),
(10, '2024_10_17_102034_add_fields_to_wedding_invitations_table', 8),
(11, '2024_10_22_092608_add_price_to_wedding_cards_table', 9),
(12, '2024_10_22_095254_create_messages_table', 10),
(13, '2024_10_22_095255_create_attendances_table', 10),
(14, 'xxxx_xx_xx_xxxxxx_create_attendances_table', 11),
(15, 'xxxx_xx_xx_xxxxxx_create_messages_table', 11),
(16, 'yyyy_mm_dd_hhmmss_add_fields_to_messages_table', 12),
(17, 'yyyy_mm_dd_hhmmss_create_attendances_table', 13);

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
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

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
('uMSGETv2Uh8EqC0hYWdFCkgBY60viPAXOiorGg6g', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 OPR/114.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVGdLTlM2Nnlxc1FhTDZmNGkxdDVJQzAzMHVNUDZKYkpPaGU2ZmdTVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9tYXUtMTUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729605037),
('XvOgDEJDneJEMX7fU95BVnZk1kaIQUyxvhuF527I', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 OPR/114.0.0.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiaE96S0lBTGJrcDJhRnRYREpVYnhOWmExWmxHbXlyWlJHUE9RbGljYiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiRNMUxLdy90ckxYQ0xhUEdIUnlYYjcuVmM5cGtEZ3MxTmFOOURhOW02VE9YZ0c1NEEzcy9XRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9tYXUtMzkiO31zOjg6ImZpbGFtZW50IjthOjA6e319', 1729606006);

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
(1, 'admin@gmail.com', 'admin@gmail.com', NULL, '$2y$12$M1LKw/trLXCLaPGHRyXb7.Vc9pkDgs1NaN9Da9m6TOXgG54A3s/WG', NULL, '2024-10-16 05:23:51', '2024-10-16 05:23:51', 'default', NULL),
(2, '2509roblox@gmail.com', '2509roblox@gmail.com', NULL, '$2y$12$Kq0irGeEMg90XuOWbhsETeeyxFoEVbONmzL1y32qmmdItH18f5RZu', NULL, '2024-10-16 18:33:12', '2024-10-16 18:33:19', 'default', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wedding_cards`
--

CREATE TABLE `wedding_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `template_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `demo_link` varchar(255) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wedding_cards`
--

INSERT INTO `wedding_cards` (`id`, `template_name`, `image`, `demo_link`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Mẫu Thiệp Hiện Đại 2', 'wedding_cards/01JAAPHAJCMX9BQC7Z5SC6PS93.png', '/mau-1', 600000.00, '2024-10-16 05:56:37', '2024-10-22 02:27:25'),
(2, 'Mẫu Thiệp Vàng Gold', 'wedding_cards/01JAAPGDB19406RGNVC7ZRXSZ7.png', '/mau-2', 1000000.00, '2024-10-16 05:58:07', '2024-10-22 04:01:50'),
(3, 'Mẫu thiệp cưới korea ', 'wedding_cards/01JAS70NHB2Y2M3G9Y3EHZH9T9.png', '/mau-3', 2000000.00, '2024-10-22 04:15:59', '2024-10-22 04:15:59'),
(4, 'Mẫu Thiệp Sang Trọng ', 'wedding_cards/01JAS72BG21M7TRN77AA20VADZ.png', '/mau-4', 2000000.00, '2024-10-22 04:16:54', '2024-10-22 04:16:54'),
(5, 'Mẫu Thiệp Quý Phái ', 'wedding_cards/01JAS87TYDPTA7QK64J9C2Q9FF.png', '/mau-5', 100000.00, '2024-10-22 04:17:33', '2024-10-22 04:37:23'),
(6, 'Mẫu Thiệp Nhẹ Nhàng', 'wedding_cards/01JAS8966R7Y59VJH4E71N7MSY.png', '/mau-6', 1.00, '2024-10-22 04:38:07', '2024-10-22 04:38:07'),
(7, 'Mẫu Thiệp Hiện Đại ', 'wedding_cards/01JAS8CYVJWPBE86HKSA99C8BJ.png', '/mau-7', 1.00, '2024-10-22 04:40:10', '2024-10-22 04:40:10'),
(8, 'Mẫu Thiệp Cổ Điển', 'wedding_cards/01JAS8DPSDWVN53W25HWFXVAAR.png', '/mau-8', 1.00, '2024-10-22 04:40:35', '2024-10-22 04:40:35'),
(9, 'Mẫu Thiệp Lãng Mạn ', 'wedding_cards/01JAS8EWYD6BC3T8Z9T25EJNVS.png', '/mau-9', 1.00, '2024-10-22 04:41:14', '2024-10-22 04:41:14'),
(10, 'Mẫu Thiệp Biển ', 'wedding_cards/01JAS8FZZH7MKQD6KM44MRY73B.png', '/mau-10', 1.00, '2024-10-22 04:41:50', '2024-10-22 04:41:50'),
(11, 'Mẫu Thiệp China ', 'wedding_cards/01JAS8GY988DCCMHERWR5ZW21Z.png', '/mau-11', 1.00, '2024-10-22 04:42:21', '2024-10-22 04:42:21'),
(12, 'Mẫu Thiệp Cô Ba Sài Gòn  ', 'wedding_cards/01JAS8J499BPPFXB17P0951V3S.png', '/mau-12', 1.00, '2024-10-22 04:43:00', '2024-10-22 04:43:00'),
(13, 'Mẫu Thiệp Xanh Luxury  ', 'wedding_cards/01JAS8JZ4X8MJZX0F3CGJ91Q1A.png', '/mau-13', 1.00, '2024-10-22 04:43:27', '2024-10-22 04:43:27'),
(14, 'Mẫu Thiệp Xanh Lá  ', 'wedding_cards/01JAS8KXHHXXZR8SGAXR1B0T20.png', '/mau-14', 1.00, '2024-10-22 04:43:58', '2024-10-22 04:43:58');

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
  `invitation_code` varchar(255) DEFAULT NULL,
  `banner1` varchar(255) DEFAULT NULL,
  `banner2` varchar(255) DEFAULT NULL,
  `banner3` varchar(255) DEFAULT NULL,
  `banner4` varchar(255) DEFAULT NULL,
  `banner5` varchar(255) DEFAULT NULL,
  `bride_family_description` text DEFAULT NULL,
  `groom_family_description` text DEFAULT NULL,
  `bride_family_time` varchar(255) DEFAULT NULL,
  `groom_family_time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wedding_invitations`
--

INSERT INTO `wedding_invitations` (`id`, `customer_id`, `event_time`, `event_date`, `event_location`, `event_address`, `event_map_link`, `event_phone`, `event_album`, `event_payment_qr`, `event_day_of_week`, `event_zodiac_sign`, `groom_name`, `groom_birth_date`, `groom_description`, `groom_image`, `bride_name`, `bride_birth_date`, `bride_description`, `first_meeting_date`, `first_meeting_image`, `dating_date`, `dating_image`, `engagement_date`, `engagement_image`, `wedding_date`, `wedding_image`, `album`, `groom_family_address`, `groom_family_phone`, `groom_family_map_link`, `groom_family_gift_qr`, `groom_family_image`, `bride_family_address`, `bride_family_phone`, `bride_family_map_link`, `bride_family_gift_qr`, `bride_family_image`, `created_at`, `updated_at`, `bride_image`, `invitation_template_id`, `invitation_code`, `banner1`, `banner2`, `banner3`, `banner4`, `banner5`, `bride_family_description`, `groom_family_description`, `bride_family_time`, `groom_family_time`) VALUES
(1, 1, '2024-10-18 20:49:30', '2024-10-24', 'Luxury Palace 1', '171 Nguyễn Thái Sơn, P8, Gò Vấp 1', 'http://localhost:8000/mau-141', '099999999 1', '[\"image_2024-10-16_210133935.png\"]', '01JAAT4TR9SAVTSKEYN5GT2BR4.png', 'CHỦ NHẬT 1', 'CANH THÌN 1', 'Công Thành 1', '2024-10-23', 'Chú rể là người cởi mở, thân thiện, giao tiếp tốt và thuộc tuýp người hướng ngoại. 1', '01JAAT5PPE2G1891TSANN4S285.png', 'Phương Ánh 1', '2024-10-25', 'Cô dâu thuộc tuýp người hướng nội . Sở thích nấu nướng và đi du lịch cùng gia đình. 1', '2024-10-29', '01JAAT7V0CC209GJ912GQAEE9Z.png', '2024-10-11', '01JAAT7V0GQ04WKVPYHR0GFBZW.png', '2024-10-18', '01JAAT7V0NAY1S5C8KXEF53YQ9.png', '2024-10-10', '01JAAT7V0S104EX14M9XT1DMX2.png', '[\"image_2024-10-16_210329334.png\",\"image_2024-10-16_210332386.png\",\"image_2024-10-16_210336323.png\",\"image_2024-10-16_210349684.png\",\"image_2024-10-16_210357391.png\",\"image_2024-10-16_210403597.png\"]', 'ẤP TÂN PHÚ A, XÃ TÂN BÌNH, HUYỆN THANH BÌNH, TỈNH ĐỒNG THÁP 1', '11111111111111', 'http://localhost:8000/mau-14#gift', '123', '01JAAT68MY528YXD0M7HXKV6V3.png', 'ẤP TÂN PHÚ A, XÃ TÂN BÌNH, HUYỆN THANH BÌNH, TỈNH ĐỒNG THÁP', '123 1', '123 1', '123 1', '01JAAT7V08DJQYBKW4SVC81DG4.png', '2024-10-16 07:01:06', '2024-10-22 11:12:07', '01JAATPC3P6MDTGV3MZSZ9JBMC.png', 1, '123123', 'image_2024-10-17_102644558.png', 'image_2024-10-17_102708458.png', 'image_2024-10-17_102733606.png', 'image_2024-10-17_102748538.png', NULL, 'Nhằm ngày 24 tháng 12 năm Quý Mão', 'Nhằm ngày 24 tháng 12 năm Quý Mão', NULL, NULL),
(11, 1, '2024-10-18 20:49:30', '2024-10-24', 'Luxury Palace 1', '171 Nguyễn Thái Sơn, P8, Gò Vấp 1', 'http://localhost:8000/mau-141', '099999999 1', '[\"image_2024-10-16_210133935.png\"]', '01JAAT4TR9SAVTSKEYN5GT2BR4.png', 'CHỦ NHẬT 1', 'CANH THÌN 1', 'Công Thành 1', '2024-10-23', 'Chú rể là người cởi mở, thân thiện, giao tiếp tốt và thuộc tuýp người hướng ngoại. 1', '01JAAT5PPE2G1891TSANN4S285.png', 'Phương Ánh 1', '2024-10-25', 'Cô dâu thuộc tuýp người hướng nội . Sở thích nấu nướng và đi du lịch cùng gia đình. 1', '2024-10-29', '01JAAT7V0CC209GJ912GQAEE9Z.png', '2024-10-11', '01JAAT7V0GQ04WKVPYHR0GFBZW.png', '2024-10-18', '01JAAT7V0NAY1S5C8KXEF53YQ9.png', '2024-10-10', '01JAAT7V0S104EX14M9XT1DMX2.png', '[\"image_2024-10-16_210329334.png\",\"image_2024-10-16_210332386.png\",\"image_2024-10-16_210336323.png\",\"image_2024-10-16_210349684.png\",\"image_2024-10-16_210357391.png\",\"image_2024-10-16_210403597.png\"]', 'ẤP TÂN PHÚ A, XÃ TÂN BÌNH, HUYỆN THANH BÌNH, TỈNH ĐỒNG THÁP 1', '11111111111111', 'http://localhost:8000/mau-14#gift', '123', '01JAAT68MY528YXD0M7HXKV6V3.png', 'ẤP TÂN PHÚ A, XÃ TÂN BÌNH, HUYỆN THANH BÌNH, TỈNH ĐỒNG THÁP', '123 1', '123 1', '123 1', '01JAAT7V08DJQYBKW4SVC81DG4.png', '2024-09-04 07:01:06', '2024-10-17 03:27:53', '01JAATPC3P6MDTGV3MZSZ9JBMC.png', 2, '123123123', 'image_2024-10-17_102644558.png', 'image_2024-10-17_102708458.png', 'image_2024-10-17_102733606.png', 'image_2024-10-17_102748538.png', NULL, 'Nhằm ngày 24 tháng 12 năm Quý Mão', 'Nhằm ngày 24 tháng 12 năm Quý Mão', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_wedding_invitation_id_foreign` (`wedding_invitation_id`);

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
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_wedding_invitation_id_foreign` (`wedding_invitation_id`);

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
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wedding_cards`
--
ALTER TABLE `wedding_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wedding_invitations`
--
ALTER TABLE `wedding_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_wedding_invitation_id_foreign` FOREIGN KEY (`wedding_invitation_id`) REFERENCES `wedding_invitations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_wedding_invitation_id_foreign` FOREIGN KEY (`wedding_invitation_id`) REFERENCES `wedding_invitations` (`id`) ON DELETE CASCADE;

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
