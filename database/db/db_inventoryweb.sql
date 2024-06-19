-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 17, 2024 at 04:10 PM
-- Server version: 8.0.30
-- PHP Version: 8.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_inventoryweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_08_19_000000_create_failed_jobs_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2022_10_31_061811_create_menu_table', 1),
(4, '2022_11_01_041110_create_table_role', 1),
(5, '2022_11_01_083314_create_table_user', 1),
(6, '2022_11_03_023905_create_table_submenu', 1),
(7, '2022_11_03_064417_create_tbl_akses', 1),
(8, '2022_11_08_024215_create_tbl_web', 1),
(9, '2022_11_15_131148_create_tbl_jenisbarang', 2),
(10, '2022_11_15_173700_create_tbl_satuan', 3),
(11, '2022_11_15_180434_create_tbl_merk', 4),
(12, '2022_11_16_120018_create_tbl_appreance', 5),
(13, '2022_11_25_141731_create_tbl_barang', 6),
(14, '2022_11_26_011349_create_tbl_customer', 7),
(16, '2022_11_28_151108_create_tbl_barangmasuk', 8),
(17, '2022_11_30_115904_create_tbl_barangkeluar', 9),
(18, '2024_06_14_154339_create_tbl_ruang', 10),
(19, '2024_06_15_011811_create_tbl_penanggungjawab', 11),
(20, '2024_06_15_061532_create_tbl_penanggungjawab', 12),
(21, '2024_06_15_115945_create_tbl_ruang', 13),
(35, '2024_06_15_135154_create_tbl_barangdipinjam', 14),
(44, '2024_06_17_062445_create_tbl_barangkembali', 15);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_akses`
--

CREATE TABLE `tbl_akses` (
  `akses_id` int UNSIGNED NOT NULL,
  `menu_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submenu_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `othermenu_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `akses_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_akses`
--

INSERT INTO `tbl_akses` (`akses_id`, `menu_id`, `submenu_id`, `othermenu_id`, `role_id`, `akses_type`, `created_at`, `updated_at`) VALUES
(368, '1667444041', NULL, NULL, '3', 'view', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(369, '1667444041', NULL, NULL, '3', 'create', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(370, '1667444041', NULL, NULL, '3', 'update', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(371, '1667444041', NULL, NULL, '3', 'delete', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(372, '1668509889', NULL, NULL, '3', 'view', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(373, '1668509889', NULL, NULL, '3', 'create', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(374, '1668509889', NULL, NULL, '3', 'update', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(375, '1668509889', NULL, NULL, '3', 'delete', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(376, '1668510437', NULL, NULL, '3', 'view', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(377, '1668510437', NULL, NULL, '3', 'create', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(378, '1668510437', NULL, NULL, '3', 'update', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(379, '1668510437', NULL, NULL, '3', 'delete', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(381, '1668510568', NULL, NULL, '3', 'create', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(382, '1668510568', NULL, NULL, '3', 'update', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(383, '1668510568', NULL, NULL, '3', 'delete', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(384, NULL, '9', NULL, '3', 'view', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(385, NULL, '9', NULL, '3', 'create', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(386, NULL, '9', NULL, '3', 'update', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(387, NULL, '9', NULL, '3', 'delete', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(396, NULL, '10', NULL, '3', 'view', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(397, NULL, '10', NULL, '3', 'create', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(398, NULL, '10', NULL, '3', 'update', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(399, NULL, '10', NULL, '3', 'delete', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(417, NULL, NULL, '2', '3', 'view', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(418, NULL, NULL, '3', '3', 'view', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(419, NULL, NULL, '4', '3', 'view', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(420, NULL, NULL, '5', '3', 'view', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(421, NULL, NULL, '6', '3', 'view', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(422, NULL, NULL, '1', '3', 'create', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(423, NULL, NULL, '2', '3', 'create', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(424, NULL, NULL, '3', '3', 'create', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(425, NULL, NULL, '4', '3', 'create', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(426, NULL, NULL, '5', '3', 'create', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(427, NULL, NULL, '6', '3', 'create', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(428, NULL, NULL, '1', '3', 'update', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(429, NULL, NULL, '2', '3', 'update', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(430, NULL, NULL, '3', '3', 'update', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(431, NULL, NULL, '4', '3', 'update', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(432, NULL, NULL, '5', '3', 'update', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(433, NULL, NULL, '6', '3', 'update', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(434, NULL, NULL, '1', '3', 'delete', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(435, NULL, NULL, '2', '3', 'delete', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(436, NULL, NULL, '3', '3', 'delete', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(437, NULL, NULL, '4', '3', 'delete', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(438, NULL, NULL, '5', '3', 'delete', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(439, NULL, NULL, '6', '3', 'delete', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(448, '1669390641', NULL, NULL, '3', 'view', '2022-11-25 07:38:49', '2022-11-25 07:38:49'),
(449, '1669390641', NULL, NULL, '3', 'create', '2022-11-25 07:38:55', '2022-11-25 07:38:55'),
(450, '1669390641', NULL, NULL, '3', 'update', '2022-11-25 07:38:55', '2022-11-25 07:38:55'),
(451, '1669390641', NULL, NULL, '3', 'delete', '2022-11-25 07:38:57', '2022-11-25 07:38:57'),
(476, NULL, '21', NULL, '3', 'view', '2022-11-30 04:59:47', '2022-11-30 04:59:47'),
(477, NULL, '22', NULL, '3', 'view', '2022-11-30 04:59:48', '2022-11-30 04:59:48'),
(478, NULL, '23', NULL, '3', 'view', '2022-11-30 04:59:48', '2022-11-30 04:59:48'),
(479, NULL, '21', NULL, '3', 'create', '2022-11-30 05:00:24', '2022-11-30 05:00:24'),
(480, NULL, '21', NULL, '3', 'update', '2022-11-30 05:00:25', '2022-11-30 05:00:25'),
(481, NULL, '21', NULL, '3', 'delete', '2022-11-30 05:00:26', '2022-11-30 05:00:26'),
(482, NULL, '22', NULL, '3', 'delete', '2022-11-30 05:00:27', '2022-11-30 05:00:27'),
(483, NULL, '22', NULL, '3', 'update', '2022-11-30 05:00:28', '2022-11-30 05:00:28'),
(484, NULL, '22', NULL, '3', 'create', '2022-11-30 05:00:29', '2022-11-30 05:00:29'),
(485, NULL, '23', NULL, '3', 'create', '2022-11-30 05:00:30', '2022-11-30 05:00:30'),
(486, NULL, '23', NULL, '3', 'update', '2022-11-30 05:00:30', '2022-11-30 05:00:30'),
(487, NULL, '23', NULL, '3', 'delete', '2022-11-30 05:00:31', '2022-11-30 05:00:31'),
(488, '1667444041', NULL, NULL, '4', 'view', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(489, '1667444041', NULL, NULL, '4', 'create', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(490, '1667444041', NULL, NULL, '4', 'update', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(491, '1667444041', NULL, NULL, '4', 'delete', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(493, '1668509889', NULL, NULL, '4', 'create', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(494, '1668509889', NULL, NULL, '4', 'update', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(495, '1668509889', NULL, NULL, '4', 'delete', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(497, '1669390641', NULL, NULL, '4', 'create', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(498, '1669390641', NULL, NULL, '4', 'update', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(499, '1669390641', NULL, NULL, '4', 'delete', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(501, '1668510437', NULL, NULL, '4', 'create', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(502, '1668510437', NULL, NULL, '4', 'update', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(503, '1668510437', NULL, NULL, '4', 'delete', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(504, '1668510568', NULL, NULL, '4', 'view', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(505, '1668510568', NULL, NULL, '4', 'create', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(506, '1668510568', NULL, NULL, '4', 'update', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(507, '1668510568', NULL, NULL, '4', 'delete', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(508, NULL, '9', NULL, '4', 'view', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(509, NULL, '9', NULL, '4', 'create', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(510, NULL, '9', NULL, '4', 'update', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(511, NULL, '9', NULL, '4', 'delete', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(516, NULL, '21', NULL, '4', 'view', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(517, NULL, '21', NULL, '4', 'create', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(518, NULL, '21', NULL, '4', 'update', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(519, NULL, '21', NULL, '4', 'delete', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(520, NULL, '10', NULL, '4', 'view', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(521, NULL, '10', NULL, '4', 'create', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(522, NULL, '10', NULL, '4', 'update', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(523, NULL, '10', NULL, '4', 'delete', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(528, NULL, '22', NULL, '4', 'view', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(529, NULL, '22', NULL, '4', 'create', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(530, NULL, '22', NULL, '4', 'update', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(531, NULL, '22', NULL, '4', 'delete', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(536, NULL, '23', NULL, '4', 'view', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(537, NULL, '23', NULL, '4', 'create', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(538, NULL, '23', NULL, '4', 'update', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(539, NULL, '23', NULL, '4', 'delete', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(545, NULL, NULL, '2', '4', 'view', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(546, NULL, NULL, '3', '4', 'view', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(547, NULL, NULL, '4', '4', 'view', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(548, NULL, NULL, '5', '4', 'view', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(549, NULL, NULL, '6', '4', 'view', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(550, NULL, NULL, '1', '4', 'create', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(551, NULL, NULL, '2', '4', 'create', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(552, NULL, NULL, '3', '4', 'create', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(553, NULL, NULL, '4', '4', 'create', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(554, NULL, NULL, '5', '4', 'create', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(555, NULL, NULL, '6', '4', 'create', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(556, NULL, NULL, '1', '4', 'update', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(557, NULL, NULL, '2', '4', 'update', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(558, NULL, NULL, '3', '4', 'update', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(559, NULL, NULL, '4', '4', 'update', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(560, NULL, NULL, '5', '4', 'update', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(561, NULL, NULL, '6', '4', 'update', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(562, NULL, NULL, '1', '4', 'delete', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(563, NULL, NULL, '2', '4', 'delete', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(564, NULL, NULL, '3', '4', 'delete', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(565, NULL, NULL, '4', '4', 'delete', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(566, NULL, NULL, '5', '4', 'delete', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(567, NULL, NULL, '6', '4', 'delete', '2022-12-06 01:34:31', '2022-12-06 01:34:31'),
(837, '1667444041', NULL, NULL, '2', 'view', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(838, '1667444041', NULL, NULL, '2', 'create', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(839, '1667444041', NULL, NULL, '2', 'update', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(840, '1667444041', NULL, NULL, '2', 'delete', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(841, '1668509889', NULL, NULL, '2', 'view', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(842, '1668509889', NULL, NULL, '2', 'create', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(843, '1668509889', NULL, NULL, '2', 'update', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(844, '1668509889', NULL, NULL, '2', 'delete', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(845, '1669390641', NULL, NULL, '2', 'view', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(846, '1669390641', NULL, NULL, '2', 'create', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(847, '1669390641', NULL, NULL, '2', 'update', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(848, '1669390641', NULL, NULL, '2', 'delete', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(849, '1668510437', NULL, NULL, '2', 'view', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(850, '1668510437', NULL, NULL, '2', 'create', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(851, '1668510437', NULL, NULL, '2', 'update', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(852, '1668510437', NULL, NULL, '2', 'delete', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(853, '1668510568', NULL, NULL, '2', 'view', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(854, '1668510568', NULL, NULL, '2', 'create', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(855, '1668510568', NULL, NULL, '2', 'update', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(856, '1668510568', NULL, NULL, '2', 'delete', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(857, NULL, '9', NULL, '2', 'view', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(858, NULL, '9', NULL, '2', 'create', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(859, NULL, '9', NULL, '2', 'update', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(860, NULL, '9', NULL, '2', 'delete', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(865, NULL, '21', NULL, '2', 'view', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(866, NULL, '21', NULL, '2', 'create', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(867, NULL, '21', NULL, '2', 'update', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(868, NULL, '21', NULL, '2', 'delete', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(873, NULL, '10', NULL, '2', 'view', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(874, NULL, '10', NULL, '2', 'create', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(875, NULL, '10', NULL, '2', 'update', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(876, NULL, '10', NULL, '2', 'delete', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(881, NULL, '22', NULL, '2', 'view', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(882, NULL, '22', NULL, '2', 'create', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(883, NULL, '22', NULL, '2', 'update', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(884, NULL, '22', NULL, '2', 'delete', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(893, NULL, '23', NULL, '2', 'view', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(894, NULL, '23', NULL, '2', 'create', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(895, NULL, '23', NULL, '2', 'update', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(896, NULL, '23', NULL, '2', 'delete', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(901, NULL, NULL, '1', '2', 'view', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(902, NULL, NULL, '2', '2', 'view', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(903, NULL, NULL, '3', '2', 'view', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(904, NULL, NULL, '4', '2', 'view', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(906, NULL, NULL, '6', '2', 'view', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(907, NULL, NULL, '1', '2', 'create', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(908, NULL, NULL, '2', '2', 'create', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(909, NULL, NULL, '3', '2', 'create', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(910, NULL, NULL, '4', '2', 'create', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(911, NULL, NULL, '5', '2', 'create', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(912, NULL, NULL, '6', '2', 'create', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(913, NULL, NULL, '1', '2', 'update', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(914, NULL, NULL, '2', '2', 'update', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(915, NULL, NULL, '3', '2', 'update', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(916, NULL, NULL, '4', '2', 'update', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(917, NULL, NULL, '5', '2', 'update', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(918, NULL, NULL, '6', '2', 'update', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(919, NULL, NULL, '1', '2', 'delete', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(920, NULL, NULL, '2', '2', 'delete', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(921, NULL, NULL, '3', '2', 'delete', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(922, NULL, NULL, '4', '2', 'delete', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(923, NULL, NULL, '5', '2', 'delete', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(924, NULL, NULL, '6', '2', 'delete', '2024-06-09 22:25:20', '2024-06-09 22:25:20'),
(1021, '1667444041', NULL, NULL, '1', 'view', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1022, '1667444041', NULL, NULL, '1', 'create', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1023, '1667444041', NULL, NULL, '1', 'update', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1024, '1667444041', NULL, NULL, '1', 'delete', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1025, '1668509889', NULL, NULL, '1', 'view', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1026, '1668509889', NULL, NULL, '1', 'create', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1027, '1668509889', NULL, NULL, '1', 'update', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1028, '1668509889', NULL, NULL, '1', 'delete', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1029, '1669390641', NULL, NULL, '1', 'view', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1030, '1669390641', NULL, NULL, '1', 'create', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1031, '1669390641', NULL, NULL, '1', 'update', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1032, '1669390641', NULL, NULL, '1', 'delete', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1033, '1668510437', NULL, NULL, '1', 'view', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1034, '1668510437', NULL, NULL, '1', 'create', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1035, '1668510437', NULL, NULL, '1', 'update', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1036, '1668510437', NULL, NULL, '1', 'delete', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1037, '1668510568', NULL, NULL, '1', 'view', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1038, '1668510568', NULL, NULL, '1', 'create', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1039, '1668510568', NULL, NULL, '1', 'update', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1040, '1668510568', NULL, NULL, '1', 'delete', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1041, NULL, '9', NULL, '1', 'view', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1042, NULL, '9', NULL, '1', 'create', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1043, NULL, '9', NULL, '1', 'update', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1044, NULL, '9', NULL, '1', 'delete', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1045, NULL, '21', NULL, '1', 'view', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1046, NULL, '21', NULL, '1', 'create', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1047, NULL, '21', NULL, '1', 'update', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1048, NULL, '21', NULL, '1', 'delete', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1049, NULL, '35', NULL, '1', 'view', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1050, NULL, '35', NULL, '1', 'create', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1051, NULL, '35', NULL, '1', 'update', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1052, NULL, '35', NULL, '1', 'delete', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1053, NULL, '41', NULL, '1', 'view', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1054, NULL, '41', NULL, '1', 'create', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1055, NULL, '41', NULL, '1', 'update', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1056, NULL, '41', NULL, '1', 'delete', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1057, NULL, '10', NULL, '1', 'view', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1058, NULL, '10', NULL, '1', 'create', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1059, NULL, '10', NULL, '1', 'update', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1060, NULL, '10', NULL, '1', 'delete', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1061, NULL, '22', NULL, '1', 'view', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1062, NULL, '22', NULL, '1', 'create', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1063, NULL, '22', NULL, '1', 'update', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1064, NULL, '22', NULL, '1', 'delete', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1065, NULL, '36', NULL, '1', 'view', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1066, NULL, '36', NULL, '1', 'create', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1067, NULL, '36', NULL, '1', 'update', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1068, NULL, '36', NULL, '1', 'delete', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1069, NULL, '42', NULL, '1', 'view', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1070, NULL, '42', NULL, '1', 'create', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1071, NULL, '42', NULL, '1', 'update', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1072, NULL, '42', NULL, '1', 'delete', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1073, NULL, '23', NULL, '1', 'view', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1074, NULL, '23', NULL, '1', 'create', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1075, NULL, '23', NULL, '1', 'update', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1076, NULL, '23', NULL, '1', 'delete', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1077, NULL, '37', NULL, '1', 'view', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1078, NULL, '37', NULL, '1', 'create', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1079, NULL, '37', NULL, '1', 'update', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1080, NULL, '37', NULL, '1', 'delete', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1081, NULL, '38', NULL, '1', 'view', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1082, NULL, '38', NULL, '1', 'create', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1083, NULL, '38', NULL, '1', 'update', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1084, NULL, '38', NULL, '1', 'delete', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1085, NULL, '39', NULL, '1', 'view', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1086, NULL, '39', NULL, '1', 'create', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1087, NULL, '39', NULL, '1', 'update', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1088, NULL, '39', NULL, '1', 'delete', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1089, NULL, '40', NULL, '1', 'view', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1090, NULL, '40', NULL, '1', 'create', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1091, NULL, '40', NULL, '1', 'update', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1092, NULL, '40', NULL, '1', 'delete', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1093, NULL, NULL, '1', '1', 'view', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1094, NULL, NULL, '2', '1', 'view', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1095, NULL, NULL, '3', '1', 'view', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1096, NULL, NULL, '4', '1', 'view', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1097, NULL, NULL, '5', '1', 'view', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1098, NULL, NULL, '6', '1', 'view', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1099, NULL, NULL, '1', '1', 'create', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1100, NULL, NULL, '2', '1', 'create', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1101, NULL, NULL, '3', '1', 'create', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1102, NULL, NULL, '4', '1', 'create', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1103, NULL, NULL, '5', '1', 'create', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1104, NULL, NULL, '6', '1', 'create', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1105, NULL, NULL, '1', '1', 'update', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1106, NULL, NULL, '2', '1', 'update', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1107, NULL, NULL, '3', '1', 'update', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1108, NULL, NULL, '4', '1', 'update', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1109, NULL, NULL, '5', '1', 'update', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1110, NULL, NULL, '6', '1', 'update', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1111, NULL, NULL, '1', '1', 'delete', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1112, NULL, NULL, '2', '1', 'delete', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1113, NULL, NULL, '3', '1', 'delete', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1114, NULL, NULL, '4', '1', 'delete', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1115, NULL, NULL, '5', '1', 'delete', '2024-06-11 17:29:55', '2024-06-11 17:29:55'),
(1116, NULL, NULL, '6', '1', 'delete', '2024-06-11 17:29:55', '2024-06-11 17:29:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appreance`
--

CREATE TABLE `tbl_appreance` (
  `appreance_id` int UNSIGNED NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `appreance_layout` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appreance_theme` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appreance_menu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appreance_header` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appreance_sidestyle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_appreance`
--

INSERT INTO `tbl_appreance` (`appreance_id`, `user_id`, `appreance_layout`, `appreance_theme`, `appreance_menu`, `appreance_header`, `appreance_sidestyle`, `created_at`, `updated_at`) VALUES
(2, '1', 'sidebar-mini', 'light-mode', 'light-menu', 'header-light', 'default-menu', '2022-11-22 01:45:47', '2022-11-24 05:00:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `barang_id` int NOT NULL,
  `jenisbarang_id` varchar(255) DEFAULT NULL,
  `satuan_id` varchar(255) DEFAULT NULL,
  `merk_id` varchar(255) DEFAULT NULL,
  `barang_kode` varchar(255) NOT NULL,
  `barang_nama` varchar(255) NOT NULL,
  `barang_slug` varchar(255) DEFAULT NULL,
  `barang_harga` varchar(255) NOT NULL,
  `barang_stok` varchar(255) NOT NULL,
  `barang_gambar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`barang_id`, `jenisbarang_id`, `satuan_id`, `merk_id`, `barang_kode`, `barang_nama`, `barang_slug`, `barang_harga`, `barang_stok`, `barang_gambar`, `created_at`, `updated_at`) VALUES
(5, '12', '7', '2', 'BRG-1669390175622', 'Motherboard', 'motherboard', '4000000', '0', 'image.png', '2022-11-25 07:30:12', '2022-11-25 07:30:12'),
(6, '13', '1', '7', 'BRG-1669390220236', 'Baut 24mm', 'baut-24mm', '1000000', '0', 'image.png', '2022-11-25 07:30:50', '2022-11-29 06:30:37'),
(7, '12', '5', '2', 'BRG-1718374041161', 'RAM', 'ram', '500000', '0', 'image.png', '2024-06-14 06:07:53', '2024-06-14 06:07:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barangdipinjam`
--

CREATE TABLE `tbl_barangdipinjam` (
  `barangdipinjam_id` int UNSIGNED NOT NULL,
  `barangdipinjam_kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruang_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penanggungjawab_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barangdipinjam_tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barangdipinjam_jumlah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barangdipinjam_lama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_barangdipinjam`
--

INSERT INTO `tbl_barangdipinjam` (`barangdipinjam_id`, `barangdipinjam_kode`, `barang_kode`, `customer_id`, `ruang_id`, `penanggungjawab_id`, `barangdipinjam_tanggal`, `barangdipinjam_jumlah`, `barangdipinjam_lama`, `created_at`, `updated_at`) VALUES
(9, 'BDP-1718616926551', 'BRG-1718374041161', '4', '1', '13', '2024-06-01', '12', '2024-06-24', '2024-06-17 01:35:43', '2024-06-17 01:35:43'),
(14, 'BDP-1718634868685', 'BRG-1669390175622', '5', '1', '13', '2024-05-30', '2', '2024-06-27', '2024-06-17 06:34:45', '2024-06-17 06:34:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barangkeluar`
--

CREATE TABLE `tbl_barangkeluar` (
  `bk_id` int UNSIGNED NOT NULL,
  `bk_kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bk_tanggal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bk_tujuan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bk_jumlah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_barangkeluar`
--

INSERT INTO `tbl_barangkeluar` (`bk_id`, `bk_kode`, `barang_kode`, `bk_tanggal`, `bk_tujuan`, `bk_jumlah`, `created_at`, `updated_at`) VALUES
(2, 'BK-1669811950758', 'BRG-1669390220236', '2022-11-01', 'Gudang Tasikmalaya', '20', '2022-11-30 04:39:22', '2022-11-30 04:47:14'),
(3, 'BK-1669812439198', 'BRG-1669390175622', '2022-11-02', 'Gudang Prindapan', '5', '2022-11-30 04:47:39', '2023-07-25 20:18:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barangkembali`
--

CREATE TABLE `tbl_barangkembali` (
  `barangkembali_id` int UNSIGNED NOT NULL,
  `barangkembali_kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruang_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barangdipinjam_tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barangdipinjam_jumlah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barangkembali_tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barangkembali_jumlah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barangrusak_jumlah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barang_keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barangkembali_keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_barangkembali`
--

INSERT INTO `tbl_barangkembali` (`barangkembali_id`, `barangkembali_kode`, `barang_kode`, `customer_id`, `ruang_id`, `barangdipinjam_tanggal`, `barangdipinjam_jumlah`, `barangkembali_tanggal`, `barangkembali_jumlah`, `barangrusak_jumlah`, `barang_keterangan`, `barangkembali_keterangan`, `created_at`, `updated_at`) VALUES
(3, 'BKM-1718640446952', 'BRG-1669390175622', '2', '1', '2024-06-01', '4', '2024-06-26', '4', '0', 'Aman', 'Tidak telat', '2024-06-17 08:09:19', '2024-06-17 08:09:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barangmasuk`
--

CREATE TABLE `tbl_barangmasuk` (
  `bm_id` int UNSIGNED NOT NULL,
  `bm_kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bm_tanggal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bm_jumlah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_barangmasuk`
--

INSERT INTO `tbl_barangmasuk` (`bm_id`, `bm_kode`, `barang_kode`, `customer_id`, `bm_tanggal`, `bm_jumlah`, `created_at`, `updated_at`) VALUES
(1, 'BM-1669730554623', 'BRG-1669390175622', '5', '2022-11-17', '10', '2022-11-29 06:02:43', '2024-06-16 01:33:51'),
(8, 'BM-1718499760635', 'BRG-1669390220236', '4', '2024-05-29', '6', '2024-06-15 17:02:55', '2024-06-15 17:16:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int UNSIGNED NOT NULL,
  `customer_nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `customer_notelp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_nama`, `customer_slug`, `customer_alamat`, `customer_notelp`, `created_at`, `updated_at`) VALUES
(2, 'Radhian Sobarna', 'radhian-sobarna', 'Sumedang', '087817379229', '2022-11-25 17:36:34', '2022-11-25 17:43:58'),
(4, 'Frimawan Griya', 'frimawan-griya', 'Yogyakarta', '083817379254', '2024-06-15 14:16:19', '2024-06-15 14:16:19'),
(5, 'Shalsa Tama', 'shalsa-tama', 'Bekasi', '083817389553', '2024-06-15 14:16:19', '2024-06-15 14:16:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenisbarang`
--

CREATE TABLE `tbl_jenisbarang` (
  `jenisbarang_id` int UNSIGNED NOT NULL,
  `jenisbarang_nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenisbarang_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenisbarang_ket` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_jenisbarang`
--

INSERT INTO `tbl_jenisbarang` (`jenisbarang_id`, `jenisbarang_nama`, `jenisbarang_slug`, `jenisbarang_ket`, `created_at`, `updated_at`) VALUES
(11, 'Elektronik', 'elektronik', NULL, '2022-11-25 07:24:18', '2022-11-25 07:25:39'),
(12, 'Perangkat Komputer', 'perangkat-komputer', NULL, '2022-11-25 07:26:15', '2022-11-25 07:27:16'),
(13, 'Besi', 'besi', NULL, '2022-11-25 07:27:33', '2022-11-25 07:27:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `menu_id` int UNSIGNED NOT NULL,
  `menu_judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_redirect` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_sort` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`menu_id`, `menu_judul`, `menu_slug`, `menu_icon`, `menu_redirect`, `menu_sort`, `menu_type`, `created_at`, `updated_at`) VALUES
(1667444041, 'Dashboard', 'dashboard', 'home', '/dashboard', '1', '1', '2022-11-15 02:51:04', '2022-11-15 02:51:04'),
(1668509889, 'Master Barang', 'master-barang', 'package', '-', '2', '2', '2022-11-15 02:58:09', '2022-11-15 03:03:15'),
(1668510437, 'Transaksi', 'transaksi', 'repeat', '-', '4', '2', '2022-11-15 03:07:17', '2022-11-25 07:37:36'),
(1668510568, 'Laporan', 'laporan', 'printer', '-', '5', '2', '2022-11-15 03:09:28', '2022-11-25 07:37:28'),
(1669390641, 'Peminjaman', 'peminjaman', 'user', '-', '3', '2', '2022-11-25 07:37:21', '2024-06-09 22:13:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_merk`
--

CREATE TABLE `tbl_merk` (
  `merk_id` int UNSIGNED NOT NULL,
  `merk_nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk_keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_merk`
--

INSERT INTO `tbl_merk` (`merk_id`, `merk_nama`, `merk_slug`, `merk_keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Huawei', 'huawei', NULL, '2022-11-15 10:14:09', '2022-11-15 10:14:09'),
(2, 'Lenovo', 'lenovo', NULL, '2022-11-15 10:14:33', '2022-11-15 10:14:45'),
(7, 'Steel', 'steel', NULL, '2022-11-25 07:29:27', '2022-11-25 07:29:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penanggungjawab`
--

CREATE TABLE `tbl_penanggungjawab` (
  `penanggungjawab_id` int UNSIGNED NOT NULL,
  `penanggungjawab_nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `penanggungjawab_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_penanggungjawab`
--

INSERT INTO `tbl_penanggungjawab` (`penanggungjawab_id`, `penanggungjawab_nama`, `penanggungjawab_slug`, `created_at`, `updated_at`) VALUES
(11, 'Kepala Gudang', 'kepala-gudang', '2024-06-15 03:54:48', '2024-06-15 03:56:35'),
(13, 'Kepala Produksi', 'kepala-produksi', '2024-06-15 03:57:21', '2024-06-15 03:57:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role`
--

CREATE TABLE `tbl_role` (
  `role_id` int UNSIGNED NOT NULL,
  `role_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_role`
--

INSERT INTO `tbl_role` (`role_id`, `role_title`, `role_slug`, `role_desc`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'super-admin', '-', '2022-11-15 02:51:04', '2022-11-15 02:51:04'),
(2, 'Admin', 'admin', '-', '2022-11-15 02:51:04', '2022-11-15 02:51:04'),
(3, 'Operator', 'operator', '-', '2022-11-15 02:51:04', '2022-11-15 02:51:04'),
(4, 'Manajer', 'manajer', NULL, '2022-12-06 01:33:27', '2022-12-06 01:33:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ruang`
--

CREATE TABLE `tbl_ruang` (
  `ruang_id` int UNSIGNED NOT NULL,
  `ruang_nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruang_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_ruang`
--

INSERT INTO `tbl_ruang` (`ruang_id`, `ruang_nama`, `ruang_slug`, `created_at`, `updated_at`) VALUES
(1, 'Ruang A1', 'ruang-a1', '2024-06-15 04:02:45', '2024-06-15 04:02:45'),
(2, 'Ruang A2', 'ruang-a2', '2024-06-15 04:02:45', '2024-06-15 04:02:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_satuan`
--

CREATE TABLE `tbl_satuan` (
  `satuan_id` int UNSIGNED NOT NULL,
  `satuan_nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan_keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_satuan`
--

INSERT INTO `tbl_satuan` (`satuan_id`, `satuan_nama`, `satuan_slug`, `satuan_keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Kg', 'kg', NULL, '2022-11-15 09:50:38', '2022-11-24 04:39:04'),
(5, 'Pcs', 'pcs', NULL, '2022-11-24 04:39:15', '2022-11-24 04:39:21'),
(7, 'Qty', 'qty', NULL, '2022-11-24 04:39:59', '2022-11-24 04:39:59');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_submenu`
--

CREATE TABLE `tbl_submenu` (
  `submenu_id` int UNSIGNED NOT NULL,
  `menu_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu_judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu_redirect` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu_sort` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_submenu`
--

INSERT INTO `tbl_submenu` (`submenu_id`, `menu_id`, `submenu_judul`, `submenu_slug`, `submenu_redirect`, `submenu_sort`, `created_at`, `updated_at`) VALUES
(9, '1668510437', 'Barang Masuk', 'barang-masuk', '/barang-masuk', '1', '2022-11-15 03:08:19', '2022-11-15 03:08:19'),
(10, '1668510437', 'Barang Keluar', 'barang-keluar', '/barang-keluar', '2', '2022-11-15 03:08:19', '2022-11-15 03:08:19'),
(21, '1668510568', 'Lap Barang Masuk', 'lap-barang-masuk', '/lap-barang-masuk', '1', '2022-11-30 04:56:24', '2022-11-30 04:56:24'),
(22, '1668510568', 'Lap Barang Keluar', 'lap-barang-keluar', '/lap-barang-keluar', '2', '2022-11-30 04:56:24', '2022-11-30 04:56:24'),
(23, '1668510568', 'Lap Stok Barang', 'lap-stok-barang', '/lap-stok-barang', '3', '2022-11-30 04:56:24', '2022-11-30 04:56:24'),
(35, '1668509889', 'Jenis', 'jenis', '/jenisbarang', '1', '2024-06-11 08:01:10', '2024-06-11 08:01:10'),
(36, '1668509889', 'Satuan', 'satuan', '/satuan', '2', '2024-06-11 08:01:10', '2024-06-11 08:01:10'),
(37, '1668509889', 'Merk', 'merk', '/merk', '3', '2024-06-11 08:01:10', '2024-06-11 08:01:10'),
(38, '1668509889', 'Barang', 'barang', '/barang', '4', '2024-06-11 08:01:10', '2024-06-11 08:01:10'),
(39, '1668509889', 'Ruang', 'ruang', '/ruang', '5', '2024-06-11 08:01:10', '2024-06-11 08:01:10'),
(40, '1668509889', 'Penanggung Jawab', 'penanggung-jawab', '/penanggungjawab', '6', '2024-06-11 08:01:10', '2024-06-11 08:01:10'),
(41, '1669390641', 'Barang Dipinjam', 'barang-dipinjam', '/barang-dipinjam', '1', '2024-06-11 17:28:43', '2024-06-11 17:28:43'),
(42, '1669390641', 'Barang Kembali', 'barang-kembali', '/barang-kembali', '2', '2024-06-11 17:28:43', '2024-06-11 17:28:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int UNSIGNED NOT NULL,
  `role_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_nmlengkap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `role_id`, `user_nmlengkap`, `user_nama`, `user_email`, `user_foto`, `user_password`, `created_at`, `updated_at`) VALUES
(1, '1', 'Super Administrator', 'superadmin', 'superadmin@gmail.com', 'undraw_profile.svg', '25d55ad283aa400af464c76d713c07ad', '2022-11-15 02:51:04', '2022-11-15 02:51:04'),
(2, '2', 'Administrator', 'admin', 'admin@gmail.com', 'undraw_profile.svg', '25d55ad283aa400af464c76d713c07ad', '2022-11-15 02:51:04', '2022-11-15 02:51:04'),
(3, '3', 'Operator', 'operator', 'operator@gmail.com', 'undraw_profile.svg', '25d55ad283aa400af464c76d713c07ad', '2022-11-15 02:51:04', '2022-11-15 02:51:04'),
(4, '4', 'Manajer', 'manajer', 'manajer@gmail.com', 'undraw_profile.svg', '25d55ad283aa400af464c76d713c07ad', '2022-12-06 01:33:54', '2022-12-06 01:33:54');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_web`
--

CREATE TABLE `tbl_web` (
  `web_id` int UNSIGNED NOT NULL,
  `web_nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_deskripsi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_web`
--

INSERT INTO `tbl_web` (`web_id`, `web_nama`, `web_logo`, `web_deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Inventoryweb', 'default.png', 'Mengelola Data Barang Masuk & Barang Keluar', '2022-11-15 02:51:04', '2022-11-22 01:41:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tbl_akses`
--
ALTER TABLE `tbl_akses`
  ADD PRIMARY KEY (`akses_id`);

--
-- Indexes for table `tbl_appreance`
--
ALTER TABLE `tbl_appreance`
  ADD PRIMARY KEY (`appreance_id`);

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`barang_id`,`barang_kode`,`barang_nama`,`barang_harga`,`barang_stok`);

--
-- Indexes for table `tbl_barangdipinjam`
--
ALTER TABLE `tbl_barangdipinjam`
  ADD PRIMARY KEY (`barangdipinjam_id`);

--
-- Indexes for table `tbl_barangkeluar`
--
ALTER TABLE `tbl_barangkeluar`
  ADD PRIMARY KEY (`bk_id`);

--
-- Indexes for table `tbl_barangkembali`
--
ALTER TABLE `tbl_barangkembali`
  ADD PRIMARY KEY (`barangkembali_id`);

--
-- Indexes for table `tbl_barangmasuk`
--
ALTER TABLE `tbl_barangmasuk`
  ADD PRIMARY KEY (`bm_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_jenisbarang`
--
ALTER TABLE `tbl_jenisbarang`
  ADD PRIMARY KEY (`jenisbarang_id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `tbl_merk`
--
ALTER TABLE `tbl_merk`
  ADD PRIMARY KEY (`merk_id`);

--
-- Indexes for table `tbl_penanggungjawab`
--
ALTER TABLE `tbl_penanggungjawab`
  ADD PRIMARY KEY (`penanggungjawab_id`);

--
-- Indexes for table `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `tbl_ruang`
--
ALTER TABLE `tbl_ruang`
  ADD PRIMARY KEY (`ruang_id`);

--
-- Indexes for table `tbl_satuan`
--
ALTER TABLE `tbl_satuan`
  ADD PRIMARY KEY (`satuan_id`);

--
-- Indexes for table `tbl_submenu`
--
ALTER TABLE `tbl_submenu`
  ADD PRIMARY KEY (`submenu_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_web`
--
ALTER TABLE `tbl_web`
  ADD PRIMARY KEY (`web_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_akses`
--
ALTER TABLE `tbl_akses`
  MODIFY `akses_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1117;

--
-- AUTO_INCREMENT for table `tbl_appreance`
--
ALTER TABLE `tbl_appreance`
  MODIFY `appreance_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `barang_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_barangdipinjam`
--
ALTER TABLE `tbl_barangdipinjam`
  MODIFY `barangdipinjam_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_barangkeluar`
--
ALTER TABLE `tbl_barangkeluar`
  MODIFY `bk_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_barangkembali`
--
ALTER TABLE `tbl_barangkembali`
  MODIFY `barangkembali_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_barangmasuk`
--
ALTER TABLE `tbl_barangmasuk`
  MODIFY `bm_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_jenisbarang`
--
ALTER TABLE `tbl_jenisbarang`
  MODIFY `jenisbarang_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `menu_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1717995576;

--
-- AUTO_INCREMENT for table `tbl_merk`
--
ALTER TABLE `tbl_merk`
  MODIFY `merk_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_penanggungjawab`
--
ALTER TABLE `tbl_penanggungjawab`
  MODIFY `penanggungjawab_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `role_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_ruang`
--
ALTER TABLE `tbl_ruang`
  MODIFY `ruang_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_satuan`
--
ALTER TABLE `tbl_satuan`
  MODIFY `satuan_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_submenu`
--
ALTER TABLE `tbl_submenu`
  MODIFY `submenu_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_web`
--
ALTER TABLE `tbl_web`
  MODIFY `web_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
