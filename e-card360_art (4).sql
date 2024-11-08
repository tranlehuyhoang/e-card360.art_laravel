-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3309
-- Generation Time: Nov 08, 2024 at 12:16 PM
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
(10, 20, '123', 'Có tôi sẽ đến', 'TƯ GIA NHÀ GÁI', 3, '123', '2024-11-08 04:48:53', '2024-11-08 04:48:53');

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
('356a192b7913b04c54574d18c28d46e6395428ab', 'i:10;', 1731040116),
('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1731040116;', 1731040116),
('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1731063295),
('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1731063295;', 1731063295),
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:46:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:12:\"restore_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:16:\"restore_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:14:\"replicate_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:12:\"reorder_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:17:\"force_delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:21:\"force_delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:18:\"view_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:22:\"view_any_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:20:\"create_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:20:\"update_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:21:\"restore_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:25:\"restore_any_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:23:\"replicate_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:21:\"reorder_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:20:\"delete_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:24:\"delete_any_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:26:\"force_delete_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:30:\"force_delete_any_wedding::card\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:11:\"page_Themes\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:9:\"view_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:13:\"view_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:11:\"create_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:11:\"update_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:15:\"delete_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:24:\"view_wedding::invitation\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:28:\"view_any_wedding::invitation\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:26:\"create_wedding::invitation\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:26:\"update_wedding::invitation\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:27:\"restore_wedding::invitation\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:31:\"restore_any_wedding::invitation\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:29:\"replicate_wedding::invitation\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:27:\"reorder_wedding::invitation\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:26:\"delete_wedding::invitation\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:40;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:30:\"delete_any_wedding::invitation\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:32:\"force_delete_wedding::invitation\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:42;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:36:\"force_delete_any_wedding::invitation\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:20:\"widget_NewUsersChart\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:44;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:29:\"widget_WeddingInvitationChart\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:45;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:37:\"widget_LatestWeddingInvitationsWidget\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:2:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:4:\"user\";s:1:\"c\";s:3:\"web\";}}}', 1731124363),
('theme', 's:6:\"sunset\";', 2045914816),
('theme_color', 's:4:\"lime\";', 2045914826);

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

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(257, 'default', '{\"uuid\":\"68d27410-ec75-4fd2-b746-3fd29aab13a3\",\"displayName\":\"App\\\\Jobs\\\\CheckPayment\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":30,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":\"60\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\CheckPayment\",\"command\":\"O:21:\\\"App\\\\Jobs\\\\CheckPayment\\\":0:{}\"}}', 1, 1731064507, 1731064505, 1731064505),
(317, 'default', '{\"uuid\":\"76a63766-66ea-4658-bcfc-2dc5db1cc57b\",\"displayName\":\"App\\\\Jobs\\\\CheckPayment\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":30,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":\"60\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\CheckPayment\",\"command\":\"O:21:\\\"App\\\\Jobs\\\\CheckPayment\\\":1:{s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-11-08 18:16:21.852386\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:16:\\\"Asia\\/Ho_Chi_Minh\\\";}}\"}}', 1, 1731064585, 1731064581, 1731064580),
(318, 'default', '{\"uuid\":\"3aa07f01-1f0e-4fd5-a1c2-f0d53217026a\",\"displayName\":\"App\\\\Jobs\\\\CheckPayment\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":30,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":\"60\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\CheckPayment\",\"command\":\"O:21:\\\"App\\\\Jobs\\\\CheckPayment\\\":1:{s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-11-08 18:16:22.900577\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:16:\\\"Asia\\/Ho_Chi_Minh\\\";}}\"}}', 0, NULL, 1731064582, 1731064581),
(319, 'default', '{\"uuid\":\"7ef4a237-96b1-45ab-aa9c-ab5af6021355\",\"displayName\":\"App\\\\Jobs\\\\CheckPayment\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":30,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":\"60\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\CheckPayment\",\"command\":\"O:21:\\\"App\\\\Jobs\\\\CheckPayment\\\":1:{s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-11-08 18:16:23.929659\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:16:\\\"Asia\\/Ho_Chi_Minh\\\";}}\"}}', 0, NULL, 1731064583, 1731064582),
(320, 'default', '{\"uuid\":\"3ec97528-5117-4e1d-95d4-e864af4f66d7\",\"displayName\":\"App\\\\Jobs\\\\CheckPayment\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":30,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":\"60\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\CheckPayment\",\"command\":\"O:21:\\\"App\\\\Jobs\\\\CheckPayment\\\":1:{s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-11-08 18:16:24.975200\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:16:\\\"Asia\\/Ho_Chi_Minh\\\";}}\"}}', 0, NULL, 1731064584, 1731064583),
(321, 'default', '{\"uuid\":\"22357239-8569-4a0c-9090-98e7a593eb02\",\"displayName\":\"App\\\\Jobs\\\\CheckPayment\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":30,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":\"60\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\CheckPayment\",\"command\":\"O:21:\\\"App\\\\Jobs\\\\CheckPayment\\\":1:{s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-11-08 18:16:26.028660\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:16:\\\"Asia\\/Ho_Chi_Minh\\\";}}\"}}', 0, NULL, 1731064586, 1731064585);

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
(23, '2024-11-08 04:05:12', '2024-11-08 04:05:12', 20, '123', '123'),
(24, '2024-11-08 04:49:09', '2024-11-08 04:49:09', 20, '123123', '123123');

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
(17, 'yyyy_mm_dd_hhmmss_create_attendances_table', 13),
(18, '2024_11_01_190643_add_seo_fields_to_wedding_invitations_table', 14),
(19, '2024_11_05_143400_add_total_amount_and_payment_status_to_wedding_invitations_table', 15),
(20, '2024_11_05_143609_add_package_to_wedding_invitations_table', 16);

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
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 4);

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
(25, 'page_Themes', 'web', '2024-10-16 06:06:32', '2024-10-16 06:06:32'),
(26, 'view_role', 'web', '2024-10-26 02:17:21', '2024-10-26 02:17:21'),
(27, 'view_any_role', 'web', '2024-10-26 02:17:21', '2024-10-26 02:17:21'),
(28, 'create_role', 'web', '2024-10-26 02:17:21', '2024-10-26 02:17:21'),
(29, 'update_role', 'web', '2024-10-26 02:17:21', '2024-10-26 02:17:21'),
(30, 'delete_role', 'web', '2024-10-26 02:17:21', '2024-10-26 02:17:21'),
(31, 'delete_any_role', 'web', '2024-10-26 02:17:21', '2024-10-26 02:17:21'),
(32, 'view_wedding::invitation', 'web', '2024-10-26 02:17:21', '2024-10-26 02:17:21'),
(33, 'view_any_wedding::invitation', 'web', '2024-10-26 02:17:21', '2024-10-26 02:17:21'),
(34, 'create_wedding::invitation', 'web', '2024-10-26 02:17:21', '2024-10-26 02:17:21'),
(35, 'update_wedding::invitation', 'web', '2024-10-26 02:17:21', '2024-10-26 02:17:21'),
(36, 'restore_wedding::invitation', 'web', '2024-10-26 02:17:21', '2024-10-26 02:17:21'),
(37, 'restore_any_wedding::invitation', 'web', '2024-10-26 02:17:21', '2024-10-26 02:17:21'),
(38, 'replicate_wedding::invitation', 'web', '2024-10-26 02:17:21', '2024-10-26 02:17:21'),
(39, 'reorder_wedding::invitation', 'web', '2024-10-26 02:17:21', '2024-10-26 02:17:21'),
(40, 'delete_wedding::invitation', 'web', '2024-10-26 02:17:21', '2024-10-26 02:17:21'),
(41, 'delete_any_wedding::invitation', 'web', '2024-10-26 02:17:21', '2024-10-26 02:17:21'),
(42, 'force_delete_wedding::invitation', 'web', '2024-10-26 02:17:21', '2024-10-26 02:17:21'),
(43, 'force_delete_any_wedding::invitation', 'web', '2024-10-26 02:17:21', '2024-10-26 02:17:21'),
(44, 'widget_NewUsersChart', 'web', '2024-10-26 02:17:21', '2024-10-26 02:17:21'),
(45, 'widget_WeddingInvitationChart', 'web', '2024-10-26 02:17:21', '2024-10-26 02:17:21'),
(46, 'widget_LatestWeddingInvitationsWidget', 'web', '2024-10-26 02:17:21', '2024-10-26 02:17:21');

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
(2, 'user', 'web', '2024-10-16 06:07:50', '2024-10-26 02:17:04'),
(3, 'panel_user', 'web', '2024-10-26 02:17:05', '2024-10-26 02:17:05');

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
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(45, 1),
(46, 1);

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
('mJrTHUam38bne4l9xI05S8ZdLFztrHSrqhl7FuoR', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 OPR/114.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoicUFOemRCeW5TcHVsWHZNcWNjNnZoa1hLR0FTS1pMZ05pQmZCeDNvQyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC8xNC9KREMzMjAwMTc3Ijt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJEtxMGlyR2VFTWc5MFh1T1diaHNFVGVleXhGb0VWYk9ObXpMMXkzMnFtbWRJdEgxOGY1Ulp1Ijt9', 1731064563);

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
  `theme_color` varchar(255) DEFAULT NULL,
  `balance` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `theme`, `theme_color`, `balance`) VALUES
(1, 'admin@gmail.com', 'admin@gmail.com', NULL, '$2y$12$M1LKw/trLXCLaPGHRyXb7.Vc9pkDgs1NaN9Da9m6TOXgG54A3s/WG', 'klzXj06TY67dPlqjKadyQL2tdKqOLckQTZpao1ysC1E9NcAqu5doIbsAOhIu', '2024-10-16 05:23:51', '2024-10-16 05:23:51', 'default', NULL, 0),
(2, '2509roblox@gmail.com', '2509roblox@gmail.com', NULL, '$2y$12$Kq0irGeEMg90XuOWbhsETeeyxFoEVbONmzL1y32qmmdItH18f5RZu', NULL, '2024-10-16 18:33:12', '2024-10-16 18:33:19', 'default', NULL, 0),
(4, '2509robloxx@gmail.com', '2509robloxx@gmail.com', NULL, '$2y$12$8X6zJ6xb0x002cg84ljrp.fFcfbRW8QX1NaJ0lceSW/X.bRRVP4wS', NULL, '2024-10-26 02:12:40', '2024-10-26 02:12:40', 'default', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wedding_cards`
--

CREATE TABLE `wedding_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `template_name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `demo_link` varchar(255) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stt` int(11) DEFAULT NULL,
  `description` varchar(255) NOT NULL DEFAULT 'Giao diện náo nhiệt nhộn nhịp, mang đến sự thích thú và hào hứng. Tạo ra những nét đặc sắc riêng vô cùng tinh tế, đáng yêu.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wedding_cards`
--

INSERT INTO `wedding_cards` (`id`, `template_name`, `image`, `demo_link`, `price`, `created_at`, `updated_at`, `stt`, `description`) VALUES
(75, 'Hiện Đại 2', 'wedding_cards/01JAAPHAJCMX9BQC7Z5SC6PS93.png', '/mau-1', 600000.00, '2024-10-16 05:56:37', '2024-11-02 03:18:04', 1, 'Mẫu Thiệp Hiện Đại 2'),
(76, 'Vàng Gold', 'wedding_cards/01JBNE3P72MTNS41GPP5M17YQ8.png', '/mau-2', 600000.00, '2024-10-16 05:56:37', '2024-11-02 03:18:42', 2, 'Mẫu Thiệp Vàng Gold'),
(77, 'Korea', 'wedding_cards/01JBNE51C0JJPZAWF2S5VAZW1S.png', '/mau-3', 600000.00, '2024-10-16 05:56:37', '2024-11-02 03:19:26', 3, 'Mẫu thiệp cưới korea'),
(78, 'Sang Trọng', 'wedding_cards/01JBNE63QCT91HRN3K9NXEYK60.png', '/mau-4', 600000.00, '2024-10-16 05:56:37', '2024-11-02 03:20:02', 4, 'Mẫu Thiệp Sang Trọng'),
(79, 'Quý Phái', 'wedding_cards/01JBNE76TKQ9917CY4E0H83N7S.png', '/mau-5', 600000.00, '2024-10-16 05:56:37', '2024-11-02 03:20:37', 5, 'Mẫu Thiệp Quý Phái'),
(80, 'Nhẹ Nhàng', 'wedding_cards/01JBNE8843CB69ZTPN1V06NKQE.png', '/mau-6', 600000.00, '2024-10-16 05:56:37', '2024-11-02 03:21:12', 6, 'Mẫu Thiệp Nhẹ Nhàng'),
(81, 'Hiện Đại', 'wedding_cards/01JBNEZ59GG5CW85CMF4H70R9J.png', '/mau-7', 600000.00, '2024-10-16 05:56:37', '2024-11-02 03:33:42', 7, 'Hiện Đại'),
(82, 'Cổ Điển', 'wedding_cards/01JBNEZPX15WB7B5A3QV1ZZ2G4.png', '/mau-8', 600000.00, '2024-10-16 05:56:37', '2024-11-02 03:34:00', 8, 'Cổ Điển'),
(83, 'Lãng Mạn', 'wedding_cards/01JBNF0APP0K060XN7JK27CFDQ.png', '/mau-9', 600000.00, '2024-10-16 05:56:37', '2024-11-02 03:34:21', 9, 'Lãng Mạn'),
(119, 'Mẫu Biển', 'wedding_cards/01JBNF0W7N9ZR3ZVVENV6QATZ7.png', '/mau-10', 600000.00, '2024-10-16 05:56:37', '2024-11-02 03:34:39', 10, 'Mẫu Biển'),
(120, 'Mẫu China', 'wedding_cards/01JBNF1DT8E7GC0S8GBGWP7AGT.png', '/mau-11', 600000.00, '2024-10-16 05:56:37', '2024-11-02 03:34:57', 11, 'Mẫu China'),
(121, 'Cô Ba Sài Gòn', 'wedding_cards/01JBNF1YW8HXD9YF5EAN40H9TF.png', '/mau-12', 600000.00, '2024-10-16 05:56:37', '2024-11-02 03:35:14', 12, 'Cô Ba Sài Gòn'),
(122, 'Xanh Luxury', 'wedding_cards/01JBNF2GWH9N5207JV92E9V2JM.png', '/mau-13', 600000.00, '2024-10-16 05:56:37', '2024-11-02 03:35:33', 13, 'Xanh Luxury'),
(123, 'Xanh Lá', 'wedding_cards/01JBNF346ZX9GWCXJ5ZSP3C809.png', '/mau-14', 600000.00, '2024-10-16 05:56:37', '2024-11-02 03:35:52', 14, 'Xanh Lá');

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
  `bride_family_time` datetime DEFAULT current_timestamp(),
  `groom_family_time` datetime DEFAULT current_timestamp(),
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_description` text DEFAULT NULL,
  `seo_image` varchar(255) DEFAULT NULL,
  `background_music` longtext DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `payment_status` enum('pending','completed','failed') NOT NULL DEFAULT 'pending',
  `package` enum('basic','standard','premium') NOT NULL DEFAULT 'basic'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wedding_invitations`
--

INSERT INTO `wedding_invitations` (`id`, `customer_id`, `event_time`, `event_date`, `event_location`, `event_address`, `event_map_link`, `event_phone`, `event_album`, `event_payment_qr`, `event_day_of_week`, `event_zodiac_sign`, `groom_name`, `groom_birth_date`, `groom_description`, `groom_image`, `bride_name`, `bride_birth_date`, `bride_description`, `first_meeting_date`, `first_meeting_image`, `dating_date`, `dating_image`, `engagement_date`, `engagement_image`, `wedding_date`, `wedding_image`, `album`, `groom_family_address`, `groom_family_phone`, `groom_family_map_link`, `groom_family_gift_qr`, `groom_family_image`, `bride_family_address`, `bride_family_phone`, `bride_family_map_link`, `bride_family_gift_qr`, `bride_family_image`, `created_at`, `updated_at`, `bride_image`, `invitation_template_id`, `invitation_code`, `banner1`, `banner2`, `banner3`, `banner4`, `banner5`, `bride_family_description`, `groom_family_description`, `bride_family_time`, `groom_family_time`, `seo_title`, `seo_description`, `seo_image`, `background_music`, `total_amount`, `payment_status`, `package`) VALUES
(20, 2, '0001-01-01 01:01:01', '0001-01-01', 'Địa Điểm Tổ Chức', 'Địa Chỉ Tổ Chức', 'Link Map Tổ Chức', 'Số Điện Thoại Tổ Chức', '[\"image_2024-11-08_112608020.png\"]', '01JC50D7942Q1FD54BN1BSX9WX.png', 'Thứ Ngày Tổ Chức', 'Tên Con Giáp của Năm', 'Tên Chú Rể', '0001-01-01', 'Mô Tả Chú Rể', '01JC50D79JD0W4V8DESG6SGNP9.png', 'Tên Cô Dâu', '0001-01-01', 'Mô Tả Cô Dâu', '0001-01-01', '01JC50D7A32KC4F9DD4W80XJ56.png', '0001-01-01', '01JC50D7A9CEY9BT8JD7F4E4KR.png', '0001-01-01', '01JC50D7AF0K0Y4Y3X0P5KJQ2W.png', '0001-01-01', '01JC50D7ANAMVKHWN1Z4NX8K6J.png', '[\"image_2024-11-08_112729522.png\",\"image_2024-11-08_112730794.png\",\"image_2024-11-08_112732026.png\",\"image_2024-11-08_112733362.png\"]', 'Địa Chỉ Nhà Trai', 'Số Điện Thoại Nhà Trai', 'Link Map Nhà Trai', 'QR Quà Nhà Trai', '01JC50D79SAKYZ5GD7NXW2WHTB.png', 'Địa Chỉ Nhà Gái', 'Số Điện Thoại Nhà Gái', 'Link Map Nhà Gái', 'QR Quà Nhà Gái', '01JC50D79X2NAYBFTXF537FPA5.png', '2024-11-08 03:53:40', '2024-11-08 11:16:02', '01JC50D79CB4PYAGYPJYCVFM26.png', 123, 'JDC3200177', 'image_2024-11-08_112742105.png', 'image_2024-11-08_112743730.png', 'image_2024-11-08_112745250.png', 'image_2024-11-08_112746737.png', 'image_2024-11-08_112748443.png', 'Mô Tả Nhà Gái', 'Mô Tả Nhà Trai', '0001-01-01 01:01:01', '0001-01-01 01:01:01', 'Tiêu đề', NULL, '01JC50EV0C0W79Y46PS6A22MYY.png', 'https://thiepdientu.com.vn/wp-content/uploads/2024/01/Shane-Filan-Beautiful-In-White-Official-Video-10.mp3', 10000.00, 'completed', 'standard');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wedding_cards`
--
ALTER TABLE `wedding_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `wedding_invitations`
--
ALTER TABLE `wedding_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
