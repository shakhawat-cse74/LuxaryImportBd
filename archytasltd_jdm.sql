-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 22, 2025 at 09:29 PM
-- Server version: 11.4.5-MariaDB
-- PHP Version: 8.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `archytasltd_jdm`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_loan_quotations`
--

CREATE TABLE `bank_loan_quotations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `branch_id` int(11) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `validity` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `chassis` varchar(255) NOT NULL,
  `engine` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `seat_capacity` varchar(255) NOT NULL,
  `engine_capacity` varchar(255) NOT NULL,
  `features` longtext NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_loan_quotations`
--

INSERT INTO `bank_loan_quotations` (`id`, `date`, `branch_id`, `bank_name`, `account`, `validity`, `brand`, `year`, `chassis`, `engine`, `color`, `seat_capacity`, `engine_capacity`, `features`, `qty`, `price`, `amount`, `total`, `created_at`, `updated_at`) VALUES
(28, '2025-06-20', 2, 'MUTUAL TRUST BANK PLC', 'MD. TASLIM ABIR', '6', 'TOYOTA COROLLA CROSS', 2022, 'ZVG11-', 'NOT APPLICABLE', 'BLUE', '05', '1800 CC HYBRID', '[\"5 SEAT\",\"5D\",\"AT\",\"AAC\",\"PS\",\"PW AIR BAG\",\"ABS\",\"NAVI\",\"BACK CAMERA\",\"AUDIO STEERING\",\"PRECRASH SAFETY SYSTEM\",\"BACK POWER S DOOR\",\"WINKER MIRROR\",\"HUD\",\"360 DEGREE CAMERA\",\"ADVANCE PARKING SYSTEM NICKEL HANDLE\",\"IDLING STOP\",\"ALLOY WHEEL\",\"EXTRA: REAR SPOILER 1 PICS SMART KEY\"]', 1, 5000000, 5000000, 5000000, '2025-06-19 15:16:49', '2025-06-19 15:16:49');

-- --------------------------------------------------------

--
-- Table structure for table `billings`
--

CREATE TABLE `billings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `branch_id` int(11) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `classic` varchar(255) NOT NULL,
  `engine` varchar(255) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billings`
--

INSERT INTO `billings` (`id`, `date`, `branch_id`, `customer_id`, `address`, `phone`, `vehicle`, `classic`, `engine`, `year`, `capacity`, `color`, `total`, `created_at`, `updated_at`) VALUES
(18, '2025-05-31', 2, 'MR.RATUL', 'BASHUNDHARA', '0172345667', 'TOYOTA NOAH', 'ZWR90', 'NOT APPLICABLE', 2022, '1800', 'PEARL', 4800000, '2025-05-31 04:24:26', '2025-05-31 04:24:26'),
(19, '2025-05-31', 2, 'MR.RATUL', 'BASHUNDHARA', '0172345667', 'TOYOTA NOAH', 'ZWR90', 'NOT APPLICABLE', 2022, '1800', 'PEARL', 4800000, '2025-05-31 04:24:26', '2025-05-31 04:24:26'),
(20, '2025-06-03', 2, 'MD. TASLIM ABIR JISHAN', 'HOUSE 22 , ROAD 03, SECTOR 12 , UTTARA , DHAKA -1230', '01681555666', 'TOYOTA HARRIER 2020', 'MXUA80', 'NOT APPLICABLE', 2020, '2000', 'PEARL', 8000000, '2025-06-03 08:44:18', '2025-06-03 08:44:18'),
(21, '2025-06-15', 2, 'MD. TASLIM ABIR JISHAN', 'HOUSE 22 , ROAD 03, SECTOR 12 , UTTARA , DHAKA -1230', '01681555666', 'TOYOTA VOXY 2023', 'MXUA80', 'NOT APPLICABLE', 2023, '2000', 'BLACK', 4900000, '2025-06-15 02:42:10', '2025-06-15 02:42:10'),
(22, '2023-06-07', 1, '11', 'Provident dolores s', '+1 (785) 869-2597', 'Shaine Buck', 'Zachary Sutton', 'Howard Haney', 1975, 'Dolore dolorum eius', 'Consequat Molestias', 38710, '2025-06-16 04:45:56', '2025-06-16 04:45:56');

-- --------------------------------------------------------

--
-- Table structure for table `billing_details`
--

CREATE TABLE `billing_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `billing_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billing_details`
--

INSERT INTO `billing_details` (`id`, `billing_id`, `description`, `qty`, `price`, `amount`, `created_at`, `updated_at`) VALUES
(31, 18, 'TOYOTA NOAH 2022 HYBRID', 1, 4800000, 4800000, '2025-05-31 04:24:26', '2025-05-31 04:24:26'),
(32, 19, 'TOYOTA NOAH 2022 HYBRID', 1, 4800000, 4800000, '2025-05-31 04:24:26', '2025-05-31 04:24:26'),
(33, 20, 'TOYOTA HARRIER 2020 NON HYBRID', 1, 8000000, 8000000, '2025-06-03 08:44:18', '2025-06-03 08:44:18'),
(34, 21, 'TOYOTA VOXY 2023', 1, 4900000, 4900000, '2025-06-15 02:42:10', '2025-06-15 02:42:10'),
(35, 22, 'Vero possimus ipsum', 490, 79, 38710, '2025-06-16 04:45:56', '2025-06-16 04:45:56');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `manager_name` varchar(255) NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `email` text NOT NULL,
  `phone` int(11) NOT NULL,
  `address` text NOT NULL,
  `city` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `manager_name`, `branch_name`, `email`, `phone`, `address`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Arafat', 'Uttara', 'admin@gmail.com', 1959976941, 'Dhaka', 'Dhaka', '2025-04-22 13:24:54', '2025-04-22 13:24:54'),
(2, 'Salim', 'Jamuna', 'info@xtreem.com', 1705667753, 'Dhaka', 'Dhaka', '2025-04-22 13:26:26', '2025-05-14 05:45:19');

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
('jd_cache_a6cf3449fbccdc26d9aeadb6f26b8c25', 'i:1;', 1747802723),
('jd_cache_a6cf3449fbccdc26d9aeadb6f26b8c25:timer', 'i:1747802723;', 1747802723),
('jd_cache_admin@admin.com|127.0.0.1', 'i:1;', 1747802724),
('jd_cache_admin@admin.com|127.0.0.1:timer', 'i:1747802724;', 1747802724),
('jd_cache_c525a5357e97fef8d3db25841c86da1a', 'i:1;', 1747802730),
('jd_cache_c525a5357e97fef8d3db25841c86da1a:timer', 'i:1747802730;', 1747802730),
('jdm_cache_1b71c0e197acc6e7370c2906f2c03974', 'i:1;', 1748292915),
('jdm_cache_1b71c0e197acc6e7370c2906f2c03974:timer', 'i:1748292915;', 1748292915),
('jdm_cache_1c69f9e4bf7e476c4c4801a866187361', 'i:1;', 1750366875),
('jdm_cache_1c69f9e4bf7e476c4c4801a866187361:timer', 'i:1750366875;', 1750366875),
('jdm_cache_4f3fe91097b7af80005fe7a19462f8df', 'i:1;', 1748359644),
('jdm_cache_4f3fe91097b7af80005fe7a19462f8df:timer', 'i:1748359644;', 1748359644),
('jdm_cache_669c616465543a78f2a53461814a5bdf', 'i:1;', 1750308346),
('jdm_cache_669c616465543a78f2a53461814a5bdf:timer', 'i:1750308346;', 1750308346),
('jdm_cache_7f73237b5b22975d92de5fdd97c81bcf', 'i:1;', 1749501727),
('jdm_cache_7f73237b5b22975d92de5fdd97c81bcf:timer', 'i:1749501727;', 1749501727),
('jdm_cache_9ab413c9497bbcc3ad4ceae9776e6e84', 'i:1;', 1750165157),
('jdm_cache_9ab413c9497bbcc3ad4ceae9776e6e84:timer', 'i:1750165157;', 1750165157),
('jdm_cache_9b40298e3bb69e15c754c0c6682d556d', 'i:1;', 1748426650),
('jdm_cache_9b40298e3bb69e15c754c0c6682d556d:timer', 'i:1748426650;', 1748426650),
('jdm_cache_c525a5357e97fef8d3db25841c86da1a', 'i:1;', 1750056896),
('jdm_cache_c525a5357e97fef8d3db25841c86da1a:timer', 'i:1750056896;', 1750056896),
('laravel_cache_c525a5357e97fef8d3db25841c86da1a', 'i:1;', 1746337099),
('laravel_cache_c525a5357e97fef8d3db25841c86da1a:timer', 'i:1746337099;', 1746337099);

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
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `email`, `address`, `created_at`, `updated_at`) VALUES
(14, 'JASHIM UDDIN KAYES', '01707071506', NULL, 'BASHUNDHARA , DHAKA', '2025-06-19 15:02:51', '2025-06-19 15:02:51'),
(15, 'MOHAMMAD TASLIM ABIR', '01681555666', 'mohammadtaslimabirjishan@gmail.com', 'UTTARA , DHAKA -1230', '2025-06-19 15:12:57', '2025-06-19 15:12:57');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_challans`
--

CREATE TABLE `delivery_challans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `vehicle_name` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `chassis` varchar(255) NOT NULL,
  `engine` varchar(255) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `reg_no` varchar(255) NOT NULL,
  `airbag` tinyint(4) NOT NULL DEFAULT 1,
  `floormat` tinyint(4) NOT NULL DEFAULT 1,
  `bettery` tinyint(4) NOT NULL DEFAULT 1,
  `monogram` tinyint(4) NOT NULL DEFAULT 1,
  `headlight` tinyint(4) NOT NULL DEFAULT 1,
  `jack` tinyint(4) NOT NULL DEFAULT 1,
  `backlight` tinyint(4) NOT NULL DEFAULT 1,
  `sparewheel` tinyint(4) NOT NULL DEFAULT 1,
  `keyunit` tinyint(4) NOT NULL DEFAULT 1,
  `alloytyre` tinyint(4) NOT NULL DEFAULT 1,
  `multimedia` tinyint(4) NOT NULL DEFAULT 1,
  `atmt` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_challans`
--

INSERT INTO `delivery_challans` (`id`, `date`, `branch_id`, `customer_id`, `address`, `phone`, `vehicle_name`, `year`, `chassis`, `engine`, `capacity`, `color`, `reg_no`, `airbag`, `floormat`, `bettery`, `monogram`, `headlight`, `jack`, `backlight`, `sparewheel`, `keyunit`, `alloytyre`, `multimedia`, `atmt`, `created_at`, `updated_at`) VALUES
(24, '2025-06-20', 2, '15', 'UTTARA , DHAKA', '01681555666', 'TOYOTA COROLLA CROSS', 2022, 'ZVG11-', 'NOT APPLICABLE', '1800', 'BLUE', 'NOT APPLICABLE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-06-19 15:14:26', '2025-06-19 15:14:26');

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
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `branch_id` int(11) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `classic` varchar(255) NOT NULL,
  `engine` varchar(255) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `date`, `branch_id`, `customer_id`, `vehicle`, `classic`, `engine`, `year`, `capacity`, `color`, `total`, `created_at`, `updated_at`) VALUES
(29, '2003-11-16', 1, '9', 'Kalia Ewing', 'Quinn Walters', 'Lacy Hood', 1996, 'Culpa itaque fugiat', 'Necessitatibus quas', 16426, '2025-06-16 04:51:27', '2025-06-16 04:51:27'),
(30, '2003-11-16', 1, '9', 'Kalia Ewing', 'Quinn Walters', 'Lacy Hood', 1996, 'Culpa itaque fugiat', 'Necessitatibus quas', 16426, '2025-06-16 04:51:27', '2025-06-16 04:51:27');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `invoice_id`, `description`, `qty`, `price`, `amount`, `created_at`, `updated_at`) VALUES
(14, 29, 'Non et veritatis acc', 86, 191, 16426, '2025-06-16 04:51:27', '2025-06-16 04:51:27'),
(15, 30, 'Non et veritatis acc', 86, 191, 16426, '2025-06-16 04:51:27', '2025-06-16 04:51:27');

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
(4, '2025_04_22_063859_add_two_factor_columns_to_users_table', 1),
(5, '2025_04_22_063953_create_personal_access_tokens_table', 1),
(6, '2025_04_22_120128_create_branches_table', 2),
(7, '2025_04_23_053743_create_customers_table', 3),
(8, '2025_04_24_071809_create_user_roles_table', 4),
(9, '2025_04_25_183152_create_user_alls_table', 5),
(10, '2025_04_26_054842_create_permissionfs_table', 6),
(11, '2025_04_26_111408_create_invoices_table', 7),
(12, '2025_04_27_064114_create_invoices_table', 8),
(13, '2025_04_27_064702_create_invoice_details_table', 8),
(14, '2025_05_07_100746_create_money_receipts_table', 9),
(15, '2025_05_08_092558_create_delivery_challans_table', 10),
(16, '2025_05_10_042923_create_billings_table', 11),
(17, '2025_05_10_044826_create_billing_details_table', 11),
(18, '2025_05_10_052016_create_billing_details_table', 12),
(19, '2025_05_10_063937_create_millages_table', 13),
(20, '2025_05_10_100213_create_millages_table', 14),
(21, '2025_05_12_102934_create_bank_loan_quotations_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `millages`
--

CREATE TABLE `millages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ref` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `branch_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `nid_number` int(11) NOT NULL,
  `car_name` varchar(255) NOT NULL,
  `car_year` int(11) NOT NULL,
  `car_company` varchar(255) NOT NULL,
  `current_millage` varchar(255) NOT NULL,
  `luxury` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `money_receipts`
--

CREATE TABLE `money_receipts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `branch_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_by` tinyint(4) NOT NULL DEFAULT 1,
  `payment_details` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `bank` varchar(255) NOT NULL,
  `one_unit` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `chassis` varchar(255) NOT NULL,
  `engine` int(11) DEFAULT NULL,
  `reg_no` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `received` int(11) NOT NULL,
  `paid_status` tinyint(4) NOT NULL DEFAULT 1,
  `payment_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `money_receipts`
--

INSERT INTO `money_receipts` (`id`, `customer_id`, `branch_id`, `address`, `amount`, `payment_by`, `payment_details`, `date`, `bank`, `one_unit`, `model`, `color`, `capacity`, `chassis`, `engine`, `reg_no`, `price`, `received`, `paid_status`, `payment_status`, `created_at`, `updated_at`) VALUES
(53, '14', 2, 'BASHUNDHARA', 100000, 1, 'ONE LAC TAKA ONLY', '2025-06-20', 'NOT APPLICABLE', 'TOYOTA COROLLA CROSS', 'TOYOTA COROLLA CROSS', 'PEARL', '1800', 'ZVG11-', NULL, NULL, 4700000, 500000, 0, '4200000', '2025-06-19 15:04:46', '2025-06-19 15:08:33');

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
-- Table structure for table `permissionfs`
--

CREATE TABLE `permissionfs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissionfs`
--

INSERT INTO `permissionfs` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'demo', '2025-04-26 00:34:02', '2025-04-26 00:34:02'),
(2, 'new Permission', '2025-04-26 01:03:45', '2025-04-26 01:18:48'),
(4, 'Branch', '2025-04-26 01:36:01', '2025-04-26 01:36:01'),
(5, 'Customer', '2025-04-26 01:36:11', '2025-04-26 01:36:11');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
('4kclFfXul9DqQ70nUGHwC3ULpoEJoGM0pX8ugIiB', NULL, '196.251.86.200', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZmk2N0VGMUxwVUtKckhpb2dnOElZWjA3dFI0M3JoeHNCTGZZT2xnNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9qZGwuYXJjaHl0YXNsdGQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1750543738),
('4rHCUjWu1XVGuWq3SN1ezypa28AwEl73igN5lYfI', NULL, '196.251.86.200', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWm1YcGxsUVJ3cFljRUxxQUo4b2JvMldXYmwxRTBETVA0MWFkdEk5diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly93d3cuamRsLmFyY2h5dGFzbHRkLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1750543738),
('9CuASWDt7n7AOs5EnfaYEWfG1acbi1CqupKLRtL8', NULL, '196.251.86.200', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTUREcTJGODhSbWpWQkNXeTdMU3RUcVhkY3NvQzV0aEhQMEpTR1hnZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly93d3cuamRsLmFyY2h5dGFzbHRkLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1750543738),
('ApsDhZ7o68Rq9HH1MoyzZuHL5NXRoLwWILHhhI3B', NULL, '196.251.86.200', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFp1RWdYTUJIelJHaW5PNWdNYUwxTkRuV2htNmxVWTBjZnptNW8ybiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly93d3cuamRsLmFyY2h5dGFzbHRkLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1750543738),
('KpKW53u3OD9hBXwVBqCeW067i8YF7oGexKcznUWp', NULL, '196.251.86.200', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUnhOandEbDR0Tm13MVhqS2lnYWJNeTY1S0ROaFVFN0ZaR3lWckZtdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9qZGwuYXJjaHl0YXNsdGQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1750543738),
('mhWFTne21F563FpWUKMzUslcP5y5I3fd05PUh2qR', NULL, '196.251.86.200', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQUZjanNlQllrMklYMmN6Mm9ZdWZaSnVBWUlSVHpSU3NBczZDcnlqOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly93d3cuamRsLmFyY2h5dGFzbHRkLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1750543738),
('pq8MXLAHIo3wCqjEsUXc0s3netu0wTdINySm6Yn0', NULL, '196.251.86.200', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaFpEWTk1RVpBYjh2MzFxUHJJNGQ4cmxsRFBpa0x1WDByeEh5aEFrSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9qZGwuYXJjaHl0YXNsdGQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1750543738),
('TSyJ63F87gSe1xmqYIn9LXt3rGtXHGj0Phf2Lyv9', NULL, '196.251.86.200', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZTJIZVpQckk5QXhYUnJwN2U4amJLM1RoMzhiak9vWjRYTG1SZlZMTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9qZGwuYXJjaHl0YXNsdGQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1750543738),
('UEzT2eYwVzDMQ0TBM9WCmiHnarybMH5tY35J5t27', NULL, '196.251.86.200', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZkE0TmVBRDlxZ09SRjhzd05yZDNQcXZTS0FqRHlEc1NjenRkOXd4VCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly93d3cuamRsLmFyY2h5dGFzbHRkLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1750543738),
('x7sA4jvfraQpV0aBIYFhUotPd8s3JQHnpo184DAI', NULL, '196.251.86.200', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM1EwSmN5ZEdtWkpKU3JrR1dvbTIydHBQOG11N1F4Z2JMSlF5cnE5TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9qZGwuYXJjaHl0YXNsdGQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1750543738);

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
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$kpku0NAzrYCsi9TOyScD1uRcjjYMwpN4am3SvQGYBUPpM6MGQUKq6', NULL, NULL, NULL, 'NakO15enGLykiZORgnFaE6UdScP7Wkw1w4QW3ch0j29h1WQejFYzrp6nswaK', NULL, NULL, '2025-04-22 00:42:25', '2025-04-22 00:42:25');

-- --------------------------------------------------------

--
-- Table structure for table `user_alls`
--

CREATE TABLE `user_alls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `branch_id` varchar(255) NOT NULL,
  `role_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_alls`
--

INSERT INTO `user_alls` (`id`, `name`, `email`, `password`, `phone`, `branch_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'Shakhawat', 'shakhawat@gmail.com', '$2y$12$LUo47clrHN6v5YP4KwjRCuDc7PtEB7jcEYCKSFWXrXv4FXbGUs1K6', '01855006605', '1', '2', '2025-04-25 13:05:06', '2025-04-25 13:05:06'),
(2, 'arafat', 'arafat@gmail.com', '$2y$12$cPw7qZUNyjehNkxgTzAB..UAjjo42do0e2Omn4uubB0oYITpckKyS', '01705667753', '3', '1', '2025-04-25 14:09:58', '2025-04-25 14:09:58'),
(3, 'Sakib', 'sakib@gmail.com', '$2y$12$38M.uP4YY/7bGKtvbtD5Uu9g5R4YgYNNsenvtjsdLjgbquniCr0gu', '01705667750', '1', '1', '2025-04-25 14:10:25', '2025-04-25 14:16:10'),
(5, 'asd', 'admin@gmail.com', '$2y$12$tA0qG/xX0HARkSEmfk5Mvu2tMGKQFKSp3J3AaWClcArEZgVLz7jyq', '01959976941', '1', '4', '2025-04-26 01:40:43', '2025-04-26 01:40:43');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `role` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `name`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', '2025-04-24 01:32:58', '2025-04-24 01:32:58'),
(2, 'Super Admin', 'super admin', '2025-04-24 03:17:00', '2025-04-24 03:17:00'),
(4, 'admin', '[\"new Permission\",\"Branch\",\"Customer\"]', '2025-04-26 01:39:10', '2025-04-26 01:39:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_loan_quotations`
--
ALTER TABLE `bank_loan_quotations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billings`
--
ALTER TABLE `billings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing_details`
--
ALTER TABLE `billing_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `branches_branch_name_unique` (`branch_name`);

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
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_challans`
--
ALTER TABLE `delivery_challans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `millages`
--
ALTER TABLE `millages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `money_receipts`
--
ALTER TABLE `money_receipts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissionfs`
--
ALTER TABLE `permissionfs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- Indexes for table `user_alls`
--
ALTER TABLE `user_alls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_loan_quotations`
--
ALTER TABLE `bank_loan_quotations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `billings`
--
ALTER TABLE `billings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `billing_details`
--
ALTER TABLE `billing_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `delivery_challans`
--
ALTER TABLE `delivery_challans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `millages`
--
ALTER TABLE `millages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `money_receipts`
--
ALTER TABLE `money_receipts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `permissionfs`
--
ALTER TABLE `permissionfs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_alls`
--
ALTER TABLE `user_alls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
