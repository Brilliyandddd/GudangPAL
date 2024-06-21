-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 21, 2024 at 12:52 PM
-- Server version: 8.0.30
-- PHP Version: 8.2.20

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
(17, '2022_11_30_115904_create_tbl_barangkeluar', 9),
(18, '2024_06_14_154339_create_tbl_ruang', 10),
(19, '2024_06_15_011811_create_tbl_penanggungjawab', 11),
(20, '2024_06_15_061532_create_tbl_penanggungjawab', 12),
(21, '2024_06_15_115945_create_tbl_ruang', 13),
(35, '2024_06_15_135154_create_tbl_barangdipinjam', 14),
(44, '2024_06_17_062445_create_tbl_barangkembali', 15),
(46, '2024_06_20_011554_create_tbl_barangmasuk', 16);

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
(1222, '1667444041', NULL, NULL, '1', 'view', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1223, '1667444041', NULL, NULL, '1', 'create', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1224, '1667444041', NULL, NULL, '1', 'update', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1225, '1667444041', NULL, NULL, '1', 'delete', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1226, '1668509889', NULL, NULL, '1', 'view', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1227, '1668509889', NULL, NULL, '1', 'create', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1228, '1668509889', NULL, NULL, '1', 'update', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1229, '1668509889', NULL, NULL, '1', 'delete', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1230, '1669390641', NULL, NULL, '1', 'view', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1231, '1669390641', NULL, NULL, '1', 'create', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1232, '1669390641', NULL, NULL, '1', 'update', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1233, '1669390641', NULL, NULL, '1', 'delete', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1234, '1668510437', NULL, NULL, '1', 'view', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1235, '1668510437', NULL, NULL, '1', 'create', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1236, '1668510437', NULL, NULL, '1', 'update', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1237, '1668510437', NULL, NULL, '1', 'delete', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1238, '1668510568', NULL, NULL, '1', 'view', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1239, '1668510568', NULL, NULL, '1', 'create', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1240, '1668510568', NULL, NULL, '1', 'update', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1241, '1668510568', NULL, NULL, '1', 'delete', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1242, NULL, '9', NULL, '1', 'view', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1243, NULL, '9', NULL, '1', 'create', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1244, NULL, '9', NULL, '1', 'update', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1245, NULL, '9', NULL, '1', 'delete', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1246, NULL, '21', NULL, '1', 'view', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1247, NULL, '21', NULL, '1', 'create', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1248, NULL, '21', NULL, '1', 'update', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1249, NULL, '21', NULL, '1', 'delete', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1250, NULL, '41', NULL, '1', 'view', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1251, NULL, '41', NULL, '1', 'create', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1252, NULL, '41', NULL, '1', 'update', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1253, NULL, '41', NULL, '1', 'delete', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1254, NULL, '43', NULL, '1', 'view', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1255, NULL, '43', NULL, '1', 'create', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1256, NULL, '43', NULL, '1', 'update', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1257, NULL, '43', NULL, '1', 'delete', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1258, NULL, '10', NULL, '1', 'view', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1259, NULL, '10', NULL, '1', 'create', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1260, NULL, '10', NULL, '1', 'update', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1261, NULL, '10', NULL, '1', 'delete', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1262, NULL, '22', NULL, '1', 'view', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1263, NULL, '22', NULL, '1', 'create', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1264, NULL, '22', NULL, '1', 'update', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1265, NULL, '22', NULL, '1', 'delete', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1266, NULL, '42', NULL, '1', 'view', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1267, NULL, '42', NULL, '1', 'create', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1268, NULL, '42', NULL, '1', 'update', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1269, NULL, '42', NULL, '1', 'delete', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1270, NULL, '44', NULL, '1', 'view', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1271, NULL, '44', NULL, '1', 'create', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1272, NULL, '44', NULL, '1', 'update', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1273, NULL, '44', NULL, '1', 'delete', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1274, NULL, '23', NULL, '1', 'view', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1275, NULL, '23', NULL, '1', 'create', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1276, NULL, '23', NULL, '1', 'update', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1277, NULL, '23', NULL, '1', 'delete', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1278, NULL, '45', NULL, '1', 'view', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1279, NULL, '45', NULL, '1', 'create', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1280, NULL, '45', NULL, '1', 'update', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1281, NULL, '45', NULL, '1', 'delete', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1282, NULL, '46', NULL, '1', 'view', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1283, NULL, '46', NULL, '1', 'create', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1284, NULL, '46', NULL, '1', 'update', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1285, NULL, '46', NULL, '1', 'delete', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1286, NULL, '47', NULL, '1', 'view', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1287, NULL, '47', NULL, '1', 'create', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1288, NULL, '47', NULL, '1', 'update', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1289, NULL, '47', NULL, '1', 'delete', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1290, NULL, '48', NULL, '1', 'view', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1291, NULL, '48', NULL, '1', 'create', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1292, NULL, '48', NULL, '1', 'update', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1293, NULL, '48', NULL, '1', 'delete', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1294, NULL, '49', NULL, '1', 'view', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1295, NULL, '49', NULL, '1', 'create', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1296, NULL, '49', NULL, '1', 'update', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1297, NULL, '49', NULL, '1', 'delete', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1298, NULL, NULL, '1', '1', 'view', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1299, NULL, NULL, '2', '1', 'view', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1300, NULL, NULL, '3', '1', 'view', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1301, NULL, NULL, '4', '1', 'view', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1302, NULL, NULL, '5', '1', 'view', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1303, NULL, NULL, '6', '1', 'view', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1304, NULL, NULL, '1', '1', 'create', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1305, NULL, NULL, '2', '1', 'create', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1306, NULL, NULL, '3', '1', 'create', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1307, NULL, NULL, '4', '1', 'create', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1308, NULL, NULL, '5', '1', 'create', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1309, NULL, NULL, '6', '1', 'create', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1310, NULL, NULL, '1', '1', 'update', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1311, NULL, NULL, '2', '1', 'update', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1312, NULL, NULL, '3', '1', 'update', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1313, NULL, NULL, '4', '1', 'update', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1314, NULL, NULL, '5', '1', 'update', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1315, NULL, NULL, '6', '1', 'update', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1316, NULL, NULL, '1', '1', 'delete', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1317, NULL, NULL, '2', '1', 'delete', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1318, NULL, NULL, '3', '1', 'delete', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1319, NULL, NULL, '4', '1', 'delete', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1320, NULL, NULL, '5', '1', 'delete', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1321, NULL, NULL, '6', '1', 'delete', '2024-06-21 04:38:36', '2024-06-21 04:38:36'),
(1322, '1667444041', NULL, NULL, '2', 'view', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1323, '1667444041', NULL, NULL, '2', 'create', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1324, '1667444041', NULL, NULL, '2', 'update', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1325, '1667444041', NULL, NULL, '2', 'delete', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1326, '1668509889', NULL, NULL, '2', 'view', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1327, '1668509889', NULL, NULL, '2', 'create', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1328, '1668509889', NULL, NULL, '2', 'update', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1329, '1668509889', NULL, NULL, '2', 'delete', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1330, '1669390641', NULL, NULL, '2', 'view', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1331, '1669390641', NULL, NULL, '2', 'create', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1332, '1669390641', NULL, NULL, '2', 'update', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1333, '1669390641', NULL, NULL, '2', 'delete', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1334, '1668510437', NULL, NULL, '2', 'view', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1335, '1668510437', NULL, NULL, '2', 'create', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1336, '1668510437', NULL, NULL, '2', 'update', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1337, '1668510437', NULL, NULL, '2', 'delete', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1338, '1668510568', NULL, NULL, '2', 'view', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1339, '1668510568', NULL, NULL, '2', 'create', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1340, '1668510568', NULL, NULL, '2', 'update', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1341, '1668510568', NULL, NULL, '2', 'delete', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1342, NULL, '9', NULL, '2', 'view', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1343, NULL, '9', NULL, '2', 'create', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1344, NULL, '9', NULL, '2', 'update', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1345, NULL, '9', NULL, '2', 'delete', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1346, NULL, '21', NULL, '2', 'view', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1347, NULL, '21', NULL, '2', 'create', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1348, NULL, '21', NULL, '2', 'update', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1349, NULL, '21', NULL, '2', 'delete', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1350, NULL, '41', NULL, '2', 'view', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1351, NULL, '41', NULL, '2', 'create', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1352, NULL, '41', NULL, '2', 'update', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1353, NULL, '41', NULL, '2', 'delete', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1354, NULL, '43', NULL, '2', 'view', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1355, NULL, '43', NULL, '2', 'create', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1356, NULL, '43', NULL, '2', 'update', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1357, NULL, '43', NULL, '2', 'delete', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1358, NULL, '10', NULL, '2', 'view', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1359, NULL, '10', NULL, '2', 'create', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1360, NULL, '10', NULL, '2', 'update', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1361, NULL, '10', NULL, '2', 'delete', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1362, NULL, '22', NULL, '2', 'view', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1363, NULL, '22', NULL, '2', 'create', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1364, NULL, '22', NULL, '2', 'update', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1365, NULL, '22', NULL, '2', 'delete', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1366, NULL, '42', NULL, '2', 'view', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1367, NULL, '42', NULL, '2', 'create', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1368, NULL, '42', NULL, '2', 'update', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1369, NULL, '42', NULL, '2', 'delete', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1370, NULL, '44', NULL, '2', 'view', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1371, NULL, '44', NULL, '2', 'create', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1372, NULL, '44', NULL, '2', 'update', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1373, NULL, '44', NULL, '2', 'delete', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1374, NULL, '23', NULL, '2', 'view', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1375, NULL, '23', NULL, '2', 'create', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1376, NULL, '23', NULL, '2', 'update', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1377, NULL, '23', NULL, '2', 'delete', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1378, NULL, '45', NULL, '2', 'view', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1379, NULL, '45', NULL, '2', 'create', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1380, NULL, '45', NULL, '2', 'update', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1381, NULL, '45', NULL, '2', 'delete', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1382, NULL, '46', NULL, '2', 'view', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1383, NULL, '46', NULL, '2', 'create', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1384, NULL, '46', NULL, '2', 'update', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1385, NULL, '46', NULL, '2', 'delete', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1386, NULL, '47', NULL, '2', 'view', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1387, NULL, '47', NULL, '2', 'create', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1388, NULL, '47', NULL, '2', 'update', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1389, NULL, '47', NULL, '2', 'delete', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1390, NULL, '48', NULL, '2', 'view', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1391, NULL, '48', NULL, '2', 'create', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1392, NULL, '48', NULL, '2', 'update', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1393, NULL, '48', NULL, '2', 'delete', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1394, NULL, '49', NULL, '2', 'view', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1395, NULL, '49', NULL, '2', 'create', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1396, NULL, '49', NULL, '2', 'update', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1397, NULL, '49', NULL, '2', 'delete', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1398, NULL, NULL, '1', '2', 'view', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1399, NULL, NULL, '2', '2', 'view', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1400, NULL, NULL, '3', '2', 'view', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1401, NULL, NULL, '4', '2', 'view', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1402, NULL, NULL, '5', '2', 'view', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1403, NULL, NULL, '6', '2', 'view', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1404, NULL, NULL, '1', '2', 'create', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1405, NULL, NULL, '2', '2', 'create', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1406, NULL, NULL, '3', '2', 'create', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1407, NULL, NULL, '4', '2', 'create', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1408, NULL, NULL, '5', '2', 'create', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1409, NULL, NULL, '6', '2', 'create', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1410, NULL, NULL, '1', '2', 'update', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1411, NULL, NULL, '2', '2', 'update', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1412, NULL, NULL, '3', '2', 'update', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1413, NULL, NULL, '4', '2', 'update', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1414, NULL, NULL, '5', '2', 'update', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1415, NULL, NULL, '6', '2', 'update', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1416, NULL, NULL, '1', '2', 'delete', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1417, NULL, NULL, '2', '2', 'delete', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1418, NULL, NULL, '3', '2', 'delete', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1419, NULL, NULL, '4', '2', 'delete', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1420, NULL, NULL, '5', '2', 'delete', '2024-06-21 04:51:54', '2024-06-21 04:51:54'),
(1421, NULL, NULL, '6', '2', 'delete', '2024-06-21 04:51:54', '2024-06-21 04:51:54');

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
(7, '12', '5', '2', 'BRG-1718374041161', 'RAM', 'ram', '500000', '13', 'image.png', '2024-06-14 06:07:53', '2024-06-20 04:16:29'),
(8, '12', '5', '1', 'BRG-1718679906760', 'VGA', 'vga', '1500000', '15', 'image.png', '2024-06-17 19:05:44', '2024-06-17 23:44:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barangdipinjam`
--

CREATE TABLE `tbl_barangdipinjam` (
  `barangdipinjam_id` int UNSIGNED NOT NULL,
  `barangdipinjam_kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruang_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `penanggungjawab_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `barangdipinjam_tanggal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `barangdipinjam_jumlah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `barangdipinjam_lama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_barangdipinjam`
--

INSERT INTO `tbl_barangdipinjam` (`barangdipinjam_id`, `barangdipinjam_kode`, `barang_kode`, `customer_id`, `ruang_id`, `penanggungjawab_id`, `barangdipinjam_tanggal`, `barangdipinjam_jumlah`, `barangdipinjam_lama`, `created_at`, `updated_at`) VALUES
(19, 'BDP-1718693521894', 'BRG-1718374041161', '2', '1', '13', '2024-06-01', '2', '2024-06-25', '2024-06-17 22:52:45', '2024-06-17 22:52:45'),
(20, 'BDP-1718693797984', 'BRG-1718374041161', '5', '2', '11', '2024-06-10', '3', '2024-06-20', '2024-06-17 22:57:07', '2024-06-17 22:57:07'),
(21, 'BDP-1718696339386', 'BRG-1718374041161', '4', '1', '13', '2024-06-05', '2', '2024-06-10', '2024-06-17 23:39:24', '2024-06-17 23:42:52');

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
  `barangkembali_kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruang_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `barangdipinjam_tanggal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `barangdipinjam_jumlah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `barangkembali_tanggal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `barangkembali_jumlah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `barangrusak_jumlah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barang_keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barangkembali_keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_barangkembali`
--

INSERT INTO `tbl_barangkembali` (`barangkembali_id`, `barangkembali_kode`, `barang_kode`, `customer_id`, `ruang_id`, `barangdipinjam_tanggal`, `barangdipinjam_jumlah`, `barangkembali_tanggal`, `barangkembali_jumlah`, `barangrusak_jumlah`, `barang_keterangan`, `barangkembali_keterangan`, `created_at`, `updated_at`) VALUES
(7, 'BKM-1718693876244', 'BRG-1718374041161', '5', '2', '2024-06-10', '3', '2024-06-20', '3', '1', 'Sebagian Hilang', 'Tidak telat', '2024-06-17 22:58:38', '2024-06-17 22:58:38'),
(11, 'BKM-1718885758381', 'BRG-1718374041161', '5', '2', '2024-06-20', '3', '2024-06-17', '3', '2', 'Sebagian Hilang', 'Telat', '2024-06-20 04:16:29', '2024-06-20 04:16:29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barangmasuk`
--

CREATE TABLE `tbl_barangmasuk` (
  `bm_id` int UNSIGNED NOT NULL,
  `bm_kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `penanggungjawab_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bm_tanggal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bm_jumlah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_barangmasuk`
--

INSERT INTO `tbl_barangmasuk` (`bm_id`, `bm_kode`, `barang_kode`, `penanggungjawab_id`, `bm_tanggal`, `bm_jumlah`, `created_at`, `updated_at`) VALUES
(3, 'BM-1718848576148', 'BRG-1718374041161', '11', '2024-05-31', '11', '2024-06-19 17:56:53', '2024-06-19 17:59:59');

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
(41, '1669390641', 'Barang Dipinjam', 'barang-dipinjam', '/barang-dipinjam', '1', '2024-06-11 17:28:43', '2024-06-11 17:28:43'),
(42, '1669390641', 'Barang Kembali', 'barang-kembali', '/barang-kembali', '2', '2024-06-11 17:28:43', '2024-06-11 17:28:43'),
(43, '1668509889', 'Jenis', 'jenis', '/jenisbarang', '1', '2024-06-21 03:03:56', '2024-06-21 03:03:56'),
(44, '1668509889', 'Satuan', 'satuan', '/satuan', '2', '2024-06-21 03:03:56', '2024-06-21 03:03:56'),
(45, '1668509889', 'Merk', 'merk', '/merk', '3', '2024-06-21 03:03:56', '2024-06-21 03:03:56'),
(46, '1668509889', 'Barang', 'barang', '/barang', '4', '2024-06-21 03:03:56', '2024-06-21 03:03:56'),
(47, '1668509889', 'Ruang', 'ruang', '/ruang', '5', '2024-06-21 03:03:56', '2024-06-21 03:03:56'),
(48, '1668509889', 'Penanggung Jawab', 'penanggung-jawab', '/penanggungjawab', '6', '2024-06-21 03:03:56', '2024-06-21 03:03:56'),
(49, '1668509889', 'Peminjam', 'customer', '/customer', '7', '2024-06-21 03:03:56', '2024-06-21 03:03:56');

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_akses`
--
ALTER TABLE `tbl_akses`
  MODIFY `akses_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1422;

--
-- AUTO_INCREMENT for table `tbl_appreance`
--
ALTER TABLE `tbl_appreance`
  MODIFY `appreance_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `barang_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_barangdipinjam`
--
ALTER TABLE `tbl_barangdipinjam`
  MODIFY `barangdipinjam_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_barangkeluar`
--
ALTER TABLE `tbl_barangkeluar`
  MODIFY `bk_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_barangkembali`
--
ALTER TABLE `tbl_barangkembali`
  MODIFY `barangkembali_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_barangmasuk`
--
ALTER TABLE `tbl_barangmasuk`
  MODIFY `bm_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `submenu_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

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
