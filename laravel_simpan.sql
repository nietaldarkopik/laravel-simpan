-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 12 Jun 2024 pada 01.44
-- Versi server: 10.6.5-MariaDB
-- Versi PHP: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_simpan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `contents`
--

CREATE TABLE `contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_content_type` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `content_types`
--

CREATE TABLE `content_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `code` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_groups`
--

CREATE TABLE `menu_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(25, '2014_10_12_000000_create_users_table', 2),
(26, '2014_10_12_100000_create_password_reset_tokens_table', 2),
(27, '2014_10_12_100000_create_password_resets_table', 2),
(28, '2019_08_19_000000_create_failed_jobs_table', 2),
(29, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(30, '2023_10_19_170758_create_settings_table', 2),
(31, '2024_05_06_095357_create_tbl_content_types', 2),
(32, '2024_05_06_095358_create_tbl_contents', 2),
(33, '2024_05_06_095359_create_tbl_menu_groups', 2),
(12, '2024_05_06_095401_create_tbl_pengembang', 1),
(13, '2024_05_06_095401_create_tbl_perumahan', 1),
(14, '2024_05_06_095401_create_tbl_perumahan_units', 1),
(15, '2024_05_06_095402_create_tbl_jenis_psu', 1),
(16, '2024_05_06_095402_create_tbl_pemukiman', 1),
(17, '2024_05_06_095405_create_tbl_psu_perumahan', 1),
(34, '2024_05_06_095359_create_tbl_menus', 2),
(20, '2024_05_23_048402_create_tbl_kategori_psu', 1),
(21, '2024_05_23_049730_alter_table_jenis_psu', 1),
(35, '2024_05_06_095400_create_tbl_pages', 2),
(36, '2024_05_21_095358_alter_tbl_contents', 2),
(37, '2024_05_21_097858_alter_tbl_pages', 2),
(38, '2024_06_10_130421_create_permission_tables', 2),
(39, '2024_06_11_161412_add_teams_fields', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`, `team_id`) VALUES
(1, 'App\\Models\\User', 1, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajuan`
--

CREATE TABLE `pengajuan` (
  `id` int(11) NOT NULL,
  `id_sop` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_unit` int(11) NOT NULL,
  `judul` char(250) NOT NULL,
  `tgl_pengajuan` date NOT NULL,
  `keterangan` text DEFAULT NULL,
  `status` char(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajuan_dokumen`
--

CREATE TABLE `pengajuan_dokumen` (
  `id` int(11) NOT NULL,
  `id_pengajuan` int(11) NOT NULL,
  `nama` char(150) NOT NULL,
  `file` char(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajuan_progress`
--

CREATE TABLE `pengajuan_progress` (
  `id` int(11) NOT NULL,
  `id_pengajuan` int(11) NOT NULL,
  `id_sop` int(11) NOT NULL,
  `id_sop_step` int(11) NOT NULL,
  `id_unit` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status` char(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `tanggal_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(405, 'adminlte.darkmode.toggle', 'web', '2024-06-11 09:33:40', '2024-06-11 09:33:40'),
(406, 'sanctum.csrf-cookie', 'web', '2024-06-11 09:33:40', '2024-06-11 09:33:40'),
(407, 'livewire.update', 'web', '2024-06-11 09:33:41', '2024-06-11 09:33:41'),
(408, 'livewire.upload-file', 'web', '2024-06-11 09:33:41', '2024-06-11 09:33:41'),
(409, 'livewire.preview-file', 'web', '2024-06-11 09:33:41', '2024-06-11 09:33:41'),
(410, 'ignition.healthCheck', 'web', '2024-06-11 09:33:41', '2024-06-11 09:33:41'),
(411, 'ignition.executeSolution', 'web', '2024-06-11 09:33:41', '2024-06-11 09:33:41'),
(412, 'ignition.updateConfig', 'web', '2024-06-11 09:33:41', '2024-06-11 09:33:41'),
(413, 'login', 'web', '2024-06-11 09:33:41', '2024-06-11 09:33:41'),
(414, 'logout', 'web', '2024-06-11 09:33:41', '2024-06-11 09:33:41'),
(415, 'register', 'web', '2024-06-11 09:33:41', '2024-06-11 09:33:41'),
(416, 'password.request', 'web', '2024-06-11 09:33:41', '2024-06-11 09:33:41'),
(417, 'password.email', 'web', '2024-06-11 09:33:41', '2024-06-11 09:33:41'),
(418, 'password.reset', 'web', '2024-06-11 09:33:41', '2024-06-11 09:33:41'),
(419, 'password.update', 'web', '2024-06-11 09:33:41', '2024-06-11 09:33:41'),
(420, 'password.confirm', 'web', '2024-06-11 09:33:41', '2024-06-11 09:33:41'),
(421, 'admin.halaman.index', 'web', '2024-06-11 09:33:41', '2024-06-11 09:33:41'),
(422, 'admin.halaman.create', 'web', '2024-06-11 09:33:41', '2024-06-11 09:33:41'),
(423, 'admin.halaman.store', 'web', '2024-06-11 09:33:41', '2024-06-11 09:33:41'),
(424, 'admin.halaman.show', 'web', '2024-06-11 09:33:41', '2024-06-11 09:33:41'),
(425, 'admin.halaman.edit', 'web', '2024-06-11 09:33:41', '2024-06-11 09:33:41'),
(426, 'admin.halaman.update', 'web', '2024-06-11 09:33:41', '2024-06-11 09:33:41'),
(427, 'admin.halaman.destroy', 'web', '2024-06-11 09:33:41', '2024-06-11 09:33:41'),
(428, 'admin.menu.index', 'web', '2024-06-11 09:33:42', '2024-06-11 09:33:42'),
(429, 'admin.menu.create', 'web', '2024-06-11 09:33:42', '2024-06-11 09:33:42'),
(430, 'admin.menu.store', 'web', '2024-06-11 09:33:42', '2024-06-11 09:33:42'),
(431, 'admin.menu.show', 'web', '2024-06-11 09:33:42', '2024-06-11 09:33:42'),
(432, 'admin.menu.edit', 'web', '2024-06-11 09:33:42', '2024-06-11 09:33:42'),
(433, 'admin.menu.update', 'web', '2024-06-11 09:33:42', '2024-06-11 09:33:42'),
(434, 'admin.menu.destroy', 'web', '2024-06-11 09:33:42', '2024-06-11 09:33:42'),
(435, 'admin.faq.index', 'web', '2024-06-11 09:33:42', '2024-06-11 09:33:42'),
(436, 'admin.faq.create', 'web', '2024-06-11 09:33:42', '2024-06-11 09:33:42'),
(437, 'admin.faq.store', 'web', '2024-06-11 09:33:42', '2024-06-11 09:33:42'),
(438, 'admin.faq.show', 'web', '2024-06-11 09:33:42', '2024-06-11 09:33:42'),
(439, 'admin.faq.edit', 'web', '2024-06-11 09:33:42', '2024-06-11 09:33:42'),
(440, 'admin.faq.update', 'web', '2024-06-11 09:33:42', '2024-06-11 09:33:42'),
(441, 'admin.faq.destroy', 'web', '2024-06-11 09:33:42', '2024-06-11 09:33:42'),
(442, 'admin.pengajuan.index', 'web', '2024-06-11 09:33:42', '2024-06-11 09:33:42'),
(443, 'admin.pengajuan.create', 'web', '2024-06-11 09:33:42', '2024-06-11 09:33:42'),
(444, 'admin.pengajuan.store', 'web', '2024-06-11 09:33:42', '2024-06-11 09:33:42'),
(445, 'admin.pengajuan.show', 'web', '2024-06-11 09:33:42', '2024-06-11 09:33:42'),
(446, 'admin.pengajuan.edit', 'web', '2024-06-11 09:33:42', '2024-06-11 09:33:42'),
(447, 'admin.pengajuan.update', 'web', '2024-06-11 09:33:42', '2024-06-11 09:33:42'),
(448, 'admin.pengajuan.destroy', 'web', '2024-06-11 09:33:43', '2024-06-11 09:33:43'),
(449, 'admin.laporan.index', 'web', '2024-06-11 09:33:43', '2024-06-11 09:33:43'),
(450, 'admin.laporan.create', 'web', '2024-06-11 09:33:43', '2024-06-11 09:33:43'),
(451, 'admin.laporan.store', 'web', '2024-06-11 09:33:43', '2024-06-11 09:33:43'),
(452, 'admin.laporan.show', 'web', '2024-06-11 09:33:43', '2024-06-11 09:33:43'),
(453, 'admin.laporan.edit', 'web', '2024-06-11 09:33:43', '2024-06-11 09:33:43'),
(454, 'admin.laporan.update', 'web', '2024-06-11 09:33:43', '2024-06-11 09:33:43'),
(455, 'admin.laporan.destroy', 'web', '2024-06-11 09:33:43', '2024-06-11 09:33:43'),
(456, 'admin.sop.index', 'web', '2024-06-11 09:33:43', '2024-06-11 09:33:43'),
(457, 'admin.sop.create', 'web', '2024-06-11 09:33:43', '2024-06-11 09:33:43'),
(458, 'admin.sop.store', 'web', '2024-06-11 09:33:43', '2024-06-11 09:33:43'),
(459, 'admin.sop.show', 'web', '2024-06-11 09:33:43', '2024-06-11 09:33:43'),
(460, 'admin.sop.edit', 'web', '2024-06-11 09:33:43', '2024-06-11 09:33:43'),
(461, 'admin.sop.update', 'web', '2024-06-11 09:33:43', '2024-06-11 09:33:43'),
(462, 'admin.sop.destroy', 'web', '2024-06-11 09:33:43', '2024-06-11 09:33:43'),
(463, 'admin.unit.index', 'web', '2024-06-11 09:33:43', '2024-06-11 09:33:43'),
(464, 'admin.unit.create', 'web', '2024-06-11 09:33:43', '2024-06-11 09:33:43'),
(465, 'admin.unit.store', 'web', '2024-06-11 09:33:43', '2024-06-11 09:33:43'),
(466, 'admin.unit.show', 'web', '2024-06-11 09:33:43', '2024-06-11 09:33:43'),
(467, 'admin.unit.edit', 'web', '2024-06-11 09:33:44', '2024-06-11 09:33:44'),
(468, 'admin.unit.update', 'web', '2024-06-11 09:33:44', '2024-06-11 09:33:44'),
(469, 'admin.unit.destroy', 'web', '2024-06-11 09:33:44', '2024-06-11 09:33:44'),
(470, 'admin.riwayat.index', 'web', '2024-06-11 09:33:44', '2024-06-11 09:33:44'),
(471, 'admin.riwayat.create', 'web', '2024-06-11 09:33:44', '2024-06-11 09:33:44'),
(472, 'admin.riwayat.store', 'web', '2024-06-11 09:33:44', '2024-06-11 09:33:44'),
(473, 'admin.riwayat.show', 'web', '2024-06-11 09:33:44', '2024-06-11 09:33:44'),
(474, 'admin.riwayat.edit', 'web', '2024-06-11 09:33:44', '2024-06-11 09:33:44'),
(475, 'admin.riwayat.update', 'web', '2024-06-11 09:33:44', '2024-06-11 09:33:44'),
(476, 'admin.riwayat.destroy', 'web', '2024-06-11 09:33:44', '2024-06-11 09:33:44'),
(477, 'admin.pengajuan.document', 'web', '2024-06-11 09:33:44', '2024-06-11 09:33:44'),
(478, 'admin.pengajuan.step', 'web', '2024-06-11 09:33:44', '2024-06-11 09:33:44'),
(479, 'admin.pengajuan.print', 'web', '2024-06-11 09:33:44', '2024-06-11 09:33:44'),
(480, 'admin.pengajuan.pdf', 'web', '2024-06-11 09:33:44', '2024-06-11 09:33:44'),
(481, 'admin.pengajuan.stepDetail', 'web', '2024-06-11 09:33:44', '2024-06-11 09:33:44'),
(482, 'admin.pengajuan.formUploadDokumen', 'web', '2024-06-11 09:33:44', '2024-06-11 09:33:44'),
(483, 'admin.pengajuan.uploadDokumen', 'web', '2024-06-11 09:33:44', '2024-06-11 09:33:44'),
(484, 'admin.roles.index', 'web', '2024-06-11 09:33:44', '2024-06-11 09:33:44'),
(485, 'admin.roles.create', 'web', '2024-06-11 09:33:44', '2024-06-11 09:33:44'),
(486, 'admin.roles.store', 'web', '2024-06-11 09:33:44', '2024-06-11 09:33:44'),
(487, 'admin.roles.show', 'web', '2024-06-11 09:33:44', '2024-06-11 09:33:44'),
(488, 'admin.roles.edit', 'web', '2024-06-11 09:33:44', '2024-06-11 09:33:44'),
(489, 'admin.roles.update', 'web', '2024-06-11 09:33:44', '2024-06-11 09:33:44'),
(490, 'admin.roles.destroy', 'web', '2024-06-11 09:33:44', '2024-06-11 09:33:44'),
(491, 'admin.users.index', 'web', '2024-06-11 09:33:44', '2024-06-11 09:33:44'),
(492, 'admin.users.create', 'web', '2024-06-11 09:33:45', '2024-06-11 09:33:45'),
(493, 'admin.users.store', 'web', '2024-06-11 09:33:45', '2024-06-11 09:33:45'),
(494, 'admin.users.show', 'web', '2024-06-11 09:33:45', '2024-06-11 09:33:45'),
(495, 'admin.users.edit', 'web', '2024-06-11 09:33:45', '2024-06-11 09:33:45'),
(496, 'admin.users.update', 'web', '2024-06-11 09:33:45', '2024-06-11 09:33:45'),
(497, 'admin.users.destroy', 'web', '2024-06-11 09:33:45', '2024-06-11 09:33:45'),
(498, 'admin.ubah-password.index', 'web', '2024-06-11 09:33:45', '2024-06-11 09:33:45'),
(499, 'admin.ubah-password.create', 'web', '2024-06-11 09:33:45', '2024-06-11 09:33:45'),
(500, 'admin.ubah-password.store', 'web', '2024-06-11 09:33:45', '2024-06-11 09:33:45'),
(501, 'admin.ubah-password.show', 'web', '2024-06-11 09:33:45', '2024-06-11 09:33:45'),
(502, 'admin.ubah-password.edit', 'web', '2024-06-11 09:33:45', '2024-06-11 09:33:45'),
(503, 'admin.ubah-password.update', 'web', '2024-06-11 09:33:45', '2024-06-11 09:33:45'),
(504, 'admin.ubah-password.destroy', 'web', '2024-06-11 09:33:45', '2024-06-11 09:33:45'),
(505, 'home', 'web', '2024-06-11 09:33:45', '2024-06-11 09:33:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `team_id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Admin', 'web', '2024-06-11 09:21:47', '2024-06-11 09:21:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(405, 1),
(406, 1),
(407, 1),
(408, 1),
(409, 1),
(410, 1),
(411, 1),
(412, 1),
(413, 1),
(414, 1),
(415, 1),
(416, 1),
(417, 1),
(418, 1),
(419, 1),
(420, 1),
(421, 1),
(422, 1),
(423, 1),
(424, 1),
(425, 1),
(426, 1),
(427, 1),
(428, 1),
(429, 1),
(430, 1),
(431, 1),
(432, 1),
(433, 1),
(434, 1),
(435, 1),
(436, 1),
(437, 1),
(438, 1),
(439, 1),
(440, 1),
(441, 1),
(442, 1),
(443, 1),
(444, 1),
(445, 1),
(446, 1),
(447, 1),
(448, 1),
(449, 1),
(450, 1),
(451, 1),
(452, 1),
(453, 1),
(454, 1),
(455, 1),
(456, 1),
(457, 1),
(458, 1),
(459, 1),
(460, 1),
(461, 1),
(462, 1),
(463, 1),
(464, 1),
(465, 1),
(466, 1),
(467, 1),
(468, 1),
(469, 1),
(470, 1),
(471, 1),
(472, 1),
(473, 1),
(474, 1),
(475, 1),
(476, 1),
(477, 1),
(478, 1),
(479, 1),
(480, 1),
(481, 1),
(482, 1),
(483, 1),
(484, 1),
(485, 1),
(486, 1),
(487, 1),
(488, 1),
(489, 1),
(490, 1),
(491, 1),
(492, 1),
(493, 1),
(494, 1),
(495, 1),
(496, 1),
(497, 1),
(498, 1),
(499, 1),
(500, 1),
(501, 1),
(502, 1),
(503, 1),
(504, 1),
(505, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sops`
--

CREATE TABLE `sops` (
  `id` int(1) NOT NULL,
  `sop` varchar(56) DEFAULT NULL,
  `prosedur` varchar(433) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `sops`
--

INSERT INTO `sops` (`id`, `sop`, `prosedur`, `deleted_at`) VALUES
(1, 'SOP Penerimaan Mahasiswa Baru', 'Calon mahasiswa mengisi formulir pendaftaran.\nFormulir dan berkas pendukung diserahkan ke bagian penerimaan mahasiswa baru.\nSeleksi administratif dan akademik dilakukan.\nPengumuman hasil seleksi disampaikan kepada calon mahasiswa.\nMahasiswa yang diterima melakukan registrasi dan pembayaran administrasi.', NULL),
(2, 'SOP Peminjaman Barang/Alat', 'Pemohon mengisi formulir peminjaman barang/alat.\nFormulir diserahkan ke bagian administrasi atau pihak yang berwenang.\nPihak berwenang memeriksa dan menyetujui permohonan.\nPeminjam mengambil barang dengan menunjukkan tanda bukti persetujuan.\nBarang dikembalikan sesuai jadwal, dan kondisi barang diperiksa oleh petugas inventaris.', NULL),
(3, 'SOP Pengajuan Beasiswa', 'Mahasiswa mengisi formulir pengajuan beasiswa.\nFormulir diserahkan ke bagian beasiswa atau kemahasiswaan.\nBerkas pengajuan diperiksa dan diverifikasi.\nJika diperlukan, wawancara dilakukan dengan pemohon.\nKeputusan akhir diumumkan kepada pemohon melalui surat resmi atau email.', NULL),
(4, 'SOP Pengajuan Cuti Akademik', 'Mahasiswa mengisi formulir pengajuan cuti akademik.\nFormulir diserahkan ke bagian akademik atau dekanat.\nPermohonan diperiksa dan diverifikasi.\nKeputusan persetujuan atau penolakan diberikan kepada mahasiswa.\nDokumentasi cuti akademik dicatat dan disimpan dalam arsip mahasiswa.', NULL),
(5, 'SOP Pengajuan Penelitian', 'Dosen/mahasiswa mengisi formulir pengajuan penelitian.\nFormulir diserahkan ke bagian penelitian atau lembaga penelitian universitas.\nPengajuan diperiksa dan dievaluasi oleh tim penilai.\nJika diperlukan, revisi proposal diminta kepada pemohon.\nKeputusan akhir diberikan, dan penelitian dapat dimulai sesuai ketentuan yang berlaku.', NULL),
(6, 'SOP Penggunaan Ruang Kelas/Laboratorium', 'Pihak yang membutuhkan mengisi formulir pemesanan ruang.\nFormulir diserahkan ke bagian administrasi atau pengelola fasilitas.\nPemeriksaan ketersediaan ruang dilakukan.\nPersetujuan pemakaian ruang diberikan, dan jadwal pemakaian dicatat.\nSetelah penggunaan, ruang diperiksa kembali untuk memastikan kebersihan dan kelengkapannya.', NULL),
(7, 'SOP Pengajuan Surat Keterangan', 'Mahasiswa/dosen mengisi formulir pengajuan surat keterangan.\nFormulir diserahkan ke bagian administrasi atau akademik.\nVerifikasi data dilakukan oleh pihak berwenang.\nSurat keterangan dibuat dan ditandatangani oleh pejabat berwenang.\nSurat keterangan diserahkan kepada pemohon.', NULL),
(8, 'SOP Pelayanan Administrasi Akademik', 'Mahasiswa mengisi formulir permohonan administrasi akademik (misalnya, transkrip, ijazah).\nFormulir diserahkan ke bagian administrasi akademik.\nPermohonan diproses dan diverifikasi.\nDokumen akademik yang diminta dibuat dan ditandatangani.\nDokumen diserahkan kepada pemohon.', NULL),
(9, 'SOP Pelaporan Kerusakan Fasilitas', 'Pihak yang mengetahui kerusakan mengisi formulir pelaporan kerusakan.\nFormulir diserahkan ke bagian pengelolaan fasilitas.\nPemeriksaan kerusakan dilakukan oleh teknisi.\nPerbaikan dilakukan sesuai dengan tingkat kerusakan.\nDokumentasi perbaikan dicatat untuk keperluan pemeliharaan.', NULL),
(10, 'SOP Kegiatan Mahasiswa', 'Mahasiswa mengisi formulir pengajuan kegiatan.\nFormulir diserahkan ke bagian kemahasiswaan.\nPermohonan diperiksa dan diverifikasi.\nJika disetujui, surat izin kegiatan dikeluarkan.\nKegiatan dilaksanakan sesuai dengan rencana, dan laporan kegiatan diserahkan setelah selesai.', NULL),
(11, 'SOP Penyelenggaraan Ujian', 'Pengumuman jadwal ujian diberikan kepada mahasiswa.\nMahasiswa mendaftar untuk mengikuti ujian sesuai jadwal.\nSoal ujian disiapkan oleh dosen pengajar.\nPelaksanaan ujian dilakukan sesuai dengan jadwal dan prosedur yang ditetapkan.\nPengumpulan hasil ujian dan penilaian dilakukan oleh dosen.', NULL),
(12, 'SOP Penerbitan Ijazah dan Transkrip Nilai', 'Mahasiswa mengajukan permohonan penerbitan ijazah dan transkrip nilai.\nVerifikasi kelulusan dan administrasi akademik dilakukan.\nIjazah dan transkrip nilai disiapkan dan ditandatangani oleh pejabat berwenang.\nDokumen diserahkan kepada mahasiswa yang telah menyelesaikan semua persyaratan.', NULL),
(13, 'SOP Perpustakaan', 'Mahasiswa dan staf mendaftar sebagai anggota perpustakaan.\nBuku atau materi perpustakaan dipinjam dengan menunjukkan kartu anggota.\nPengembalian buku dilakukan sesuai dengan tenggat waktu yang ditentukan.\nDenda dikenakan untuk keterlambatan pengembalian buku.\nInventarisasi dan pemeliharaan koleksi perpustakaan dilakukan secara berkala.', NULL),
(14, 'SOP Kegiatan Penelitian dan Pengabdian Masyarakat', 'Dosen mengajukan proposal kegiatan penelitian atau pengabdian masyarakat.\nProposal diperiksa dan dievaluasi oleh komite penelitian.\nPersetujuan dan pendanaan diberikan jika proposal memenuhi syarat.\nPelaksanaan kegiatan dilakukan sesuai dengan rencana yang telah disetujui.\nLaporan akhir diserahkan kepada komite penelitian untuk evaluasi.', NULL),
(15, 'SOP Penerimaan Dosen dan Staf', 'Pengumuman lowongan pekerjaan disebarkan melalui media resmi.\nCalon dosen dan staf mengirimkan lamaran pekerjaan.\nSeleksi administratif dan wawancara dilakukan.\nKeputusan penerimaan diberikan kepada calon yang memenuhi syarat.\nDosen dan staf baru melakukan orientasi dan registrasi.', NULL),
(16, 'SOP Penggunaan Laboratorium', 'Mahasiswa dan dosen mengajukan permohonan penggunaan laboratorium.\nPermohonan disetujui oleh kepala laboratorium.\nPenggunaan laboratorium dilakukan sesuai dengan jadwal dan aturan yang berlaku.\nPeralatan laboratorium diperiksa sebelum dan setelah penggunaan.\nLaporan penggunaan laboratorium diserahkan kepada kepala laboratorium.', NULL),
(17, 'SOP Penyelenggaraan Seminar dan Workshop', 'Panitia mengajukan proposal penyelenggaraan seminar atau workshop.\nProposal diperiksa dan disetujui oleh pihak berwenang.\nPersiapan logistik dan materi dilakukan oleh panitia.\nPelaksanaan seminar atau workshop sesuai dengan jadwal yang telah ditetapkan.\nLaporan kegiatan diserahkan kepada pihak berwenang setelah acara selesai.', NULL),
(18, 'SOP Penerimaan dan Pengelolaan Dana Hibah', 'Proposal dana hibah diajukan oleh dosen atau mahasiswa.\nProposal diperiksa dan dievaluasi oleh komite hibah.\nPersetujuan dan pencairan dana hibah dilakukan jika proposal memenuhi syarat.\nPengelolaan dana hibah dilakukan sesuai dengan rencana anggaran yang diajukan.\nLaporan penggunaan dana hibah diserahkan kepada komite hibah.', NULL),
(19, 'SOP Penyelenggaraan Program Studi', 'Kurikulum program studi disusun oleh tim kurikulum.\nKurikulum disetujui oleh senat universitas.\nPelaksanaan program studi dilakukan sesuai dengan kurikulum yang telah disetujui.\nEvaluasi program studi dilakukan secara berkala.\nLaporan hasil evaluasi diserahkan kepada senat universitas untuk perbaikan kurikulum.', NULL),
(20, 'SOP Pelaporan dan Penanganan Pelanggaran Akademik', 'Laporan pelanggaran akademik diajukan oleh pihak yang mengetahui pelanggaran.\nLaporan diperiksa oleh komite disiplin akademik.\nInvestigasi dan verifikasi dilakukan terhadap laporan pelanggaran.\nKeputusan sanksi diberikan jika pelanggaran terbukti.\nDokumentasi pelanggaran dan sanksi disimpan untuk keperluan administrasi.\n', NULL),
(21, 'SOP Pengajuan Pembimbing Skripsi/Tesis/Disertasi', 'Mahasiswa mengisi formulir pengajuan pembimbing skripsi/tesis/disertasi.\nFormulir diserahkan ke bagian akademik atau program studi.\nPermohonan diproses dan pembimbing ditetapkan sesuai dengan keahlian dan ketersediaan.\nSurat keputusan pembimbing diserahkan kepada mahasiswa.\nMahasiswa mulai konsultasi dengan pembimbing yang telah ditetapkan.', NULL),
(22, 'SOP Pengajuan Pembatalan Mata Kuliah', 'Mahasiswa mengisi formulir pembatalan mata kuliah.\nFormulir diserahkan ke bagian akademik atau program studi.\nVerifikasi dan persetujuan dilakukan oleh pihak berwenang.\nPembatalan mata kuliah dicatat dalam sistem administrasi akademik.\nMahasiswa diberitahukan tentang status pembatalan.', NULL),
(23, 'SOP Pendaftaran Wisuda', 'Mahasiswa mengisi formulir pendaftaran wisuda.\nFormulir dan berkas pendukung diserahkan ke bagian akademik atau registrasi.\nVerifikasi kelulusan dan administrasi dilakukan.\nPembayaran biaya wisuda dilakukan sesuai ketentuan.\nMahasiswa menerima informasi mengenai jadwal dan tata cara pelaksanaan wisuda.', NULL),
(24, 'SOP Pengelolaan Jurnal Ilmiah', 'Penulis mengirimkan naskah ke redaksi jurnal ilmiah.\nNaskah diperiksa oleh editor untuk memastikan kesesuaian dengan pedoman jurnal.\nNaskah dikirim ke reviewer untuk proses peer review.\nHasil review dikirim kembali ke penulis untuk revisi jika diperlukan.\nNaskah yang telah direvisi dan disetujui diterbitkan dalam jurnal ilmiah.', NULL),
(25, 'SOP Kegiatan Alumni', 'Alumni mengisi formulir pendaftaran kegiatan alumni.\nFormulir diserahkan ke bagian alumni atau kemahasiswaan.\nVerifikasi data alumni dilakukan.\nPersiapan logistik dan agenda kegiatan dilakukan.\nPelaksanaan kegiatan alumni dan dokumentasi hasil kegiatan.', NULL),
(26, 'SOP Pemeliharaan Infrastruktur Kampus', 'Identifikasi kebutuhan pemeliharaan dilakukan oleh tim fasilitas.\nRencana pemeliharaan disusun dan disetujui oleh pihak berwenang.\nPelaksanaan pemeliharaan sesuai dengan jadwal yang ditetapkan.\nMonitoring dan evaluasi hasil pemeliharaan dilakukan.\nLaporan pemeliharaan disimpan untuk keperluan audit dan perencanaan.', NULL),
(27, 'SOP Pengelolaan Dana Penelitian', 'Peneliti mengajukan proposal dana penelitian.\nProposal diperiksa dan dievaluasi oleh komite penelitian.\nPersetujuan dan pencairan dana dilakukan sesuai dengan prosedur yang berlaku.\nPengelolaan dana dilakukan sesuai dengan rencana anggaran yang diajukan.\nLaporan penggunaan dana diserahkan kepada komite penelitian.', NULL),
(28, 'SOP Pengelolaan Kegiatan Ekstrakurikuler', 'Mahasiswa mengajukan proposal kegiatan ekstrakurikuler.\nProposal diperiksa dan disetujui oleh bagian kemahasiswaan.\nPersiapan kegiatan dilakukan sesuai dengan rencana yang telah disetujui.\nPelaksanaan kegiatan ekstrakurikuler dan monitoring oleh pihak berwenang.\nLaporan kegiatan diserahkan kepada bagian kemahasiswaan.', NULL),
(29, 'SOP Pengelolaan Kegiatan Pertukaran Mahasiswa', 'Mahasiswa mengisi formulir pendaftaran program pertukaran.\nFormulir diserahkan ke bagian internasional atau kemahasiswaan.\nSeleksi dilakukan berdasarkan kriteria yang telah ditetapkan.\nMahasiswa yang terpilih mendapatkan informasi mengenai persiapan dan keberangkatan.\nLaporan hasil program pertukaran diserahkan setelah selesai.', NULL),
(30, 'SOP Pengelolaan Kegiatan Pengabdian Masyarakat', 'Dosen atau mahasiswa mengajukan proposal kegiatan pengabdian masyarakat.\nProposal diperiksa dan dievaluasi oleh komite pengabdian masyarakat.\nPersetujuan dan pendanaan diberikan jika proposal memenuhi syarat.\nPelaksanaan kegiatan sesuai dengan rencana yang telah disetujui.\nLaporan akhir diserahkan kepada komite pengabdian masyarakat untuk evaluasi.', NULL),
(31, 'SOP Penanganan Keluhan Mahasiswa', 'Mahasiswa mengisi formulir keluhan yang disediakan.\nFormulir keluhan diserahkan ke bagian layanan mahasiswa atau bagian terkait.\nVerifikasi dan penyelidikan dilakukan terhadap keluhan yang diajukan.\nTindakan perbaikan atau solusi diberikan kepada mahasiswa.\nDokumentasi keluhan dan penyelesaiannya disimpan untuk evaluasi lebih lanjut.', NULL),
(32, 'SOP Penerimaan Mahasiswa Internasional', 'Calon mahasiswa internasional mengisi formulir pendaftaran.\nFormulir dan berkas pendukung diserahkan ke bagian internasional atau penerimaan mahasiswa.\nSeleksi administratif dan akademik dilakukan.\nPengumuman hasil seleksi disampaikan kepada calon mahasiswa internasional.\nMahasiswa internasional yang diterima melakukan registrasi dan orientasi.', NULL),
(33, 'SOP Penggunaan Sistem Informasi Akademik', 'Mahasiswa dan staf diberikan akses ke sistem informasi akademik.\nPelatihan penggunaan sistem dilakukan untuk pengguna baru.\nPenggunaan sistem dilakukan sesuai dengan pedoman yang telah ditetapkan.\nMonitoring dan pemeliharaan sistem dilakukan secara berkala.\nLaporan dan analisis penggunaan sistem diserahkan kepada pihak berwenang.', NULL),
(34, 'SOP Pengelolaan Dana Kemahasiswaan', 'Organisasi mahasiswa mengajukan proposal dana kegiatan.\nProposal diperiksa dan dievaluasi oleh bagian kemahasiswaan.\nPersetujuan dan pencairan dana dilakukan jika proposal memenuhi syarat.\nPengelolaan dana dilakukan sesuai dengan rencana anggaran yang diajukan.\nLaporan penggunaan dana diserahkan kepada bagian kemahasiswaan.', NULL),
(35, 'SOP Penanganan Keadaan Darurat di Kampus', 'Identifikasi keadaan darurat dilakukan oleh tim keamanan kampus.\nProtokol evakuasi dan penanganan darurat diaktifkan.\nInformasi keadaan darurat disampaikan kepada seluruh civitas akademika.\nKoordinasi dengan pihak terkait (misalnya, pemadam kebakaran, polisi) dilakukan.\nEvaluasi dan laporan keadaan darurat disusun setelah situasi terkendali.', NULL),
(36, 'SOP Penyelenggaraan Kegiatan Akademik Daring', 'Dosen merancang dan menyusun materi perkuliahan daring.\nJadwal dan platform perkuliahan daring diinformasikan kepada mahasiswa.\nPelaksanaan perkuliahan daring sesuai dengan jadwal yang ditetapkan.\nEvaluasi dan umpan balik dari mahasiswa dikumpulkan.\nPerbaikan dan penyesuaian materi perkuliahan dilakukan berdasarkan umpan balik.', NULL),
(37, 'SOP Pengelolaan Asrama Mahasiswa', 'Mahasiswa mengajukan permohonan tinggal di asrama.\nPermohonan diserahkan ke bagian pengelolaan asrama.\nVerifikasi data dan penempatan kamar dilakukan.\nMahasiswa menerima informasi mengenai peraturan dan fasilitas asrama.\nMonitoring dan pemeliharaan fasilitas asrama dilakukan secara berkala.', NULL),
(38, 'SOP Pengelolaan Data Mahasiswa', 'Data mahasiswa dikumpulkan dan dimasukkan ke dalam sistem informasi akademik.\nVerifikasi dan validasi data dilakukan secara berkala.\nAkses dan penggunaan data dilakukan sesuai dengan kebijakan privasi.\nPembaruan data dilakukan oleh mahasiswa atau pihak berwenang jika ada perubahan.\nLaporan dan analisis data mahasiswa disusun untuk keperluan administrasi dan akademik.', NULL),
(39, 'SOP Penyelenggaraan Pameran dan Expo', 'Panitia mengajukan proposal penyelenggaraan pameran atau expo.\nProposal diperiksa dan disetujui oleh pihak berwenang.\nPersiapan logistik dan materi dilakukan oleh panitia.\nPelaksanaan pameran atau expo sesuai dengan jadwal yang telah ditetapkan.\nLaporan kegiatan diserahkan kepada pihak berwenang setelah acara selesai.', NULL),
(40, 'SOP Pengelolaan Kegiatan Pembangunan dan Renovasi Kampus', 'Identifikasi kebutuhan pembangunan atau renovasi dilakukan oleh tim fasilitas.\nProposal pembangunan atau renovasi disusun dan disetujui oleh pihak berwenang.\nPelaksanaan pembangunan atau renovasi dilakukan sesuai dengan rencana yang telah disetujui.\nMonitoring dan evaluasi hasil pembangunan atau renovasi dilakukan.\nLaporan pembangunan atau renovasi disusun dan disimpan untuk keperluan dokumentasi.\n', NULL),
(41, 'SOP Pengelolaan Dana Kesejahteraan Mahasiswa', 'Mahasiswa mengajukan permohonan dana kesejahteraan dengan mengisi formulir yang disediakan.\nFormulir dan berkas pendukung diserahkan ke bagian kesejahteraan mahasiswa.\nVerifikasi dan evaluasi permohonan dilakukan.\nKeputusan persetujuan atau penolakan permohonan diberitahukan kepada mahasiswa.\nDana disalurkan kepada mahasiswa yang memenuhi syarat, dan penggunaan dana dimonitor.', NULL),
(42, 'SOP Penanganan Kasus Kekerasan di Kampus', 'Laporan kekerasan diterima oleh bagian keamanan kampus atau pihak berwenang lainnya.\nPenyelidikan dan verifikasi dilakukan terhadap laporan tersebut.\nLangkah-langkah perlindungan diambil untuk melindungi korban.\nPelaku dikenakan sanksi sesuai dengan peraturan yang berlaku.\nDokumentasi kasus dan penyelesaian disimpan untuk keperluan administrasi dan evaluasi.', NULL),
(43, 'SOP Pengelolaan Keamanan Data dan Informasi', 'Identifikasi data dan informasi yang perlu dilindungi dilakukan.\nImplementasi sistem keamanan informasi sesuai dengan standar yang berlaku.\nMonitoring dan pemeliharaan sistem keamanan dilakukan secara berkala.\nTindakan penanganan diambil jika terjadi pelanggaran atau kebocoran data.\nEvaluasi dan pembaruan sistem keamanan dilakukan untuk meningkatkan perlindungan.', NULL),
(44, 'SOP Pengelolaan Kerja Sama Internasional', 'Pengajuan kerja sama internasional dilakukan oleh fakultas atau program studi.\nProposal kerja sama diperiksa dan disetujui oleh bagian internasional.\nImplementasi kerja sama dilakukan sesuai dengan perjanjian yang telah disepakati.\nMonitoring dan evaluasi kerja sama dilakukan secara berkala.\nLaporan kerja sama diserahkan kepada pihak berwenang untuk dokumentasi dan perbaikan.', NULL),
(45, 'SOP Penyelenggaraan Kegiatan Kebudayaan', 'Pengajuan kegiatan kebudayaan dilakukan oleh mahasiswa atau staf.\nProposal kegiatan diperiksa dan disetujui oleh bagian kemahasiswaan atau kebudayaan.\nPersiapan logistik dan materi dilakukan oleh panitia.\nPelaksanaan kegiatan kebudayaan sesuai dengan jadwal yang telah ditetapkan.\nLaporan kegiatan diserahkan kepada pihak berwenang setelah acara selesai.', NULL),
(46, 'SOP Pengelolaan Praktikum', 'Mahasiswa mendaftar untuk mengikuti praktikum sesuai dengan mata kuliah yang diambil.\nJadwal praktikum dan instruksi diberikan kepada mahasiswa.\nPelaksanaan praktikum dilakukan di laboratorium atau lokasi yang telah ditentukan.\nEvaluasi hasil praktikum dilakukan oleh dosen pembimbing.\nNilai dan laporan praktikum diserahkan kepada mahasiswa dan bagian akademik.', NULL),
(47, 'SOP Pemberian Rekomendasi Akademik', 'Mahasiswa mengajukan permohonan rekomendasi akademik kepada dosen atau pihak berwenang.\nVerifikasi data dan prestasi akademik dilakukan.\nSurat rekomendasi akademik disusun dan ditandatangani oleh dosen atau pihak berwenang.\nSurat rekomendasi diserahkan kepada mahasiswa.\nDokumentasi rekomendasi disimpan untuk keperluan administrasi.', NULL),
(48, 'SOP Pengelolaan Dana Sumbangan dan Hibah', 'Penerimaan dana sumbangan atau hibah dicatat oleh bagian keuangan.\nVerifikasi dan pencatatan dilakukan sesuai dengan prosedur akuntansi yang berlaku.\nPengelolaan dana dilakukan sesuai dengan tujuan sumbangan atau hibah.\nMonitoring dan evaluasi penggunaan dana dilakukan secara berkala.\nLaporan penggunaan dana disusun dan diserahkan kepada pihak penyumbang atau pemberi hibah.', NULL),
(49, 'SOP Penyelenggaraan Kegiatan Olahraga', 'Pengajuan kegiatan olahraga dilakukan oleh mahasiswa atau staf.\nProposal kegiatan diperiksa dan disetujui oleh bagian kemahasiswaan atau olahraga.\nPersiapan logistik dan fasilitas dilakukan oleh panitia.\nPelaksanaan kegiatan olahraga sesuai dengan jadwal yang telah ditetapkan.\nLaporan kegiatan diserahkan kepada pihak berwenang setelah acara selesai.', NULL),
(50, 'SOP Penanganan Kesehatan dan Keselamatan Kerja (K3)', 'Identifikasi risiko kesehatan dan keselamatan dilakukan oleh tim K3.\nImplementasi program K3 sesuai dengan standar yang berlaku.\nPelatihan dan sosialisasi K3 dilakukan kepada seluruh civitas akademika.\nMonitoring dan evaluasi program K3 dilakukan secara berkala.\nTindakan penanganan diambil jika terjadi insiden atau pelanggaran K3.', NULL),
(51, 'SOP Pengelolaan Humas dan Komunikasi', 'Penyusunan strategi komunikasi dan humas dilakukan oleh tim humas.\nImplementasi program komunikasi dilakukan sesuai dengan rencana yang telah disusun.\nMonitoring dan evaluasi efektivitas komunikasi dilakukan.\nPengelolaan media sosial dan website universitas dilakukan secara aktif.\nLaporan kegiatan humas dan komunikasi disusun dan diserahkan kepada pihak berwenang.', NULL),
(52, 'SOP Penerbitan Buku dan Materi Ajar', 'Penulis mengajukan naskah buku atau materi ajar ke bagian penerbitan.\nNaskah diperiksa dan disetujui oleh editor.\nProses produksi dan percetakan dilakukan sesuai dengan standar penerbitan.\nDistribusi buku atau materi ajar dilakukan kepada mahasiswa atau pihak yang berkepentingan.\nEvaluasi dan revisi dilakukan berdasarkan umpan balik pengguna.', NULL),
(53, 'SOP Pengelolaan Dana Bantuan Mahasiswa', 'Mahasiswa mengajukan permohonan dana bantuan dengan mengisi formulir yang disediakan.\nFormulir dan berkas pendukung diserahkan ke bagian kesejahteraan mahasiswa.\nVerifikasi dan evaluasi permohonan dilakukan.\nKeputusan persetujuan atau penolakan permohonan diberitahukan kepada mahasiswa.\nDana disalurkan kepada mahasiswa yang memenuhi syarat, dan penggunaan dana dimonitor.', NULL),
(54, 'SOP Penanganan Kebutuhan Khusus Mahasiswa', 'Mahasiswa dengan kebutuhan khusus mengajukan permohonan fasilitas atau layanan khusus.\nVerifikasi kebutuhan dilakukan oleh bagian layanan mahasiswa atau pihak terkait.\nPenyediaan fasilitas atau layanan khusus dilakukan sesuai dengan kebutuhan yang telah diverifikasi.\nMonitoring dan evaluasi efektivitas fasilitas atau layanan khusus dilakukan.\nLaporan penggunaan fasilitas atau layanan disusun dan diserahkan kepada pihak berwenang.', NULL),
(55, 'SOP Pengelolaan Acara Dies Natalis', 'Pembentukan panitia dies natalis dilakukan oleh pihak berwenang.\nPenyusunan rencana kegiatan dan anggaran dilakukan oleh panitia.\nPersiapan logistik, materi, dan undangan dilakukan oleh panitia.\nPelaksanaan acara dies natalis sesuai dengan jadwal yang telah ditetapkan.\nLaporan kegiatan diserahkan kepada pihak berwenang setelah acara selesai.', NULL),
(56, 'SOP Pengelolaan Dana Bantuan Penelitian', 'Peneliti mengajukan proposal dana bantuan penelitian.\nProposal diperiksa dan dievaluasi oleh komite penelitian.\nPersetujuan dan pencairan dana dilakukan jika proposal memenuhi syarat.\nPengelolaan dana dilakukan sesuai dengan rencana anggaran yang diajukan.\nLaporan penggunaan dana diserahkan kepada komite penelitian.', NULL),
(57, 'SOP Penanganan Masalah Etika Penelitian', 'Laporan masalah etika penelitian diterima oleh komite etika penelitian.\nPenyelidikan dan verifikasi dilakukan terhadap laporan tersebut.\nTindakan penanganan diambil jika ditemukan pelanggaran etika.\nRekomendasi perbaikan diberikan kepada peneliti.\nDokumentasi kasus dan penyelesaian disimpan untuk keperluan administrasi dan evaluasi.', NULL),
(58, 'SOP Pengelolaan Kerja Sama Industri', 'Pengajuan kerja sama industri dilakukan oleh fakultas atau program studi.\nProposal kerja sama diperiksa dan disetujui oleh bagian kerja sama.\nImplementasi kerja sama dilakukan sesuai dengan perjanjian yang telah disepakati.\nMonitoring dan evaluasi kerja sama dilakukan secara berkala.\nLaporan kerja sama diserahkan kepada pihak berwenang untuk dokumentasi dan perbaikan.', NULL),
(59, 'SOP Pengelolaan Program Magang', 'Mahasiswa mendaftar untuk program magang melalui bagian kemahasiswaan atau program studi.\nPenempatan magang dilakukan sesuai dengan bidang studi dan ketersediaan tempat magang.\nPelaksanaan magang dilakukan sesuai dengan jadwal dan aturan yang berlaku.\nMonitoring dan evaluasi kinerja mahasiswa magang dilakukan oleh dosen pembimbing.\nLaporan magang diserahkan kepada mahasiswa dan bagian akademik.', NULL),
(60, 'SOP Penanganan Sengketa Akademik', 'Laporan sengketa akademik diterima oleh bagian akademik atau pihak berwenang.\nPenyelidikan dan mediasi dilakukan untuk menyelesaikan sengketa.\nKeputusan penyelesaian sengketa disampaikan kepada pihak yang bersengketa.\nTindakan perbaikan diambil jika diperlukan untuk mencegah sengketa serupa di masa depan.\nDokumentasi kasus dan penyelesaian disimpan untuk keperluan administrasi dan evaluasi.\n', NULL),
(61, 'SOP Pengelolaan Program Beasiswa', 'Pengumuman program beasiswa disampaikan kepada seluruh mahasiswa.\nMahasiswa mengajukan aplikasi beasiswa dengan mengisi formulir dan melampirkan berkas pendukung.\nEvaluasi dan seleksi aplikasi beasiswa dilakukan oleh komite beasiswa.\nPengumuman penerima beasiswa disampaikan kepada mahasiswa yang terpilih.\nPenyaluran dana beasiswa dilakukan dan penggunaan dana dipantau.', NULL),
(62, 'SOP Pengelolaan Surat Keterangan Mahasiswa Aktif', 'Mahasiswa mengajukan permohonan surat keterangan aktif ke bagian akademik.\nVerifikasi status keaktifan mahasiswa dilakukan.\nPenyusunan dan penandatanganan surat keterangan aktif dilakukan.\nSurat keterangan diserahkan kepada mahasiswa.\nDokumentasi surat keterangan disimpan untuk keperluan administrasi.', NULL),
(63, 'SOP Pengajuan Cuti Akademik', 'Mahasiswa mengisi formulir permohonan cuti akademik.\nFormulir dan berkas pendukung diserahkan ke bagian akademik atau program studi.\nVerifikasi dan persetujuan permohonan dilakukan oleh pihak berwenang.\nSurat keputusan cuti akademik diserahkan kepada mahasiswa.\nDokumentasi cuti akademik disimpan dalam sistem administrasi akademik.', NULL),
(64, 'SOP Pengelolaan Bimbingan Konseling Mahasiswa', 'Mahasiswa mengajukan permohonan bimbingan konseling ke bagian layanan mahasiswa.\nJadwal konseling ditetapkan dan disampaikan kepada mahasiswa.\nPelaksanaan sesi konseling dilakukan sesuai jadwal.\nEvaluasi hasil konseling dan tindak lanjut dilakukan oleh konselor.\nDokumentasi sesi konseling disimpan dengan menjaga kerahasiaan mahasiswa.', NULL),
(65, 'SOP Pengelolaan Surat Keterangan Lulus (SKL)', 'Mahasiswa yang telah menyelesaikan semua persyaratan akademik mengajukan permohonan SKL.\nVerifikasi data kelulusan dilakukan oleh bagian akademik.\nPenyusunan dan penandatanganan SKL dilakukan.\nSKL diserahkan kepada mahasiswa.\nDokumentasi SKL disimpan untuk keperluan administrasi.', NULL),
(66, 'SOP Pengelolaan Evaluasi Dosen oleh Mahasiswa', 'Penyebaran kuesioner evaluasi kepada mahasiswa dilakukan pada akhir semester.\nMahasiswa mengisi kuesioner evaluasi secara anonim.\nPengumpulan dan analisis data evaluasi dilakukan.\nHasil evaluasi disampaikan kepada dosen yang bersangkutan dan pihak berwenang.\nTindak lanjut dan perbaikan dilakukan berdasarkan hasil evaluasi.', NULL),
(67, 'SOP Pengelolaan Inventaris Kampus', 'Pencatatan semua inventaris kampus dilakukan oleh bagian inventarisasi.\nVerifikasi dan pembaruan data inventaris dilakukan secara berkala.\nPengelolaan pemakaian dan perawatan inventaris dilakukan sesuai prosedur.\nMonitoring kondisi dan kebutuhan inventaris dilakukan.\nLaporan inventaris disusun dan diserahkan kepada pihak berwenang.', NULL),
(68, 'SOP Pengelolaan Dana Bantuan Darurat Mahasiswa', 'Mahasiswa mengajukan permohonan dana bantuan darurat dengan melampirkan dokumen pendukung.\nVerifikasi dan evaluasi permohonan dilakukan oleh komite bantuan darurat.\nKeputusan persetujuan atau penolakan permohonan diberitahukan kepada mahasiswa.\nPenyaluran dana bantuan darurat dilakukan dan penggunaan dana dipantau.\nLaporan penggunaan dana disusun untuk keperluan administrasi.', NULL),
(69, 'SOP Pengelolaan Pelatihan dan Workshop', 'Penyusunan rencana pelatihan atau workshop dilakukan oleh panitia.\nPendaftaran peserta dilakukan melalui formulir yang disediakan.\nPelaksanaan pelatihan atau workshop sesuai dengan jadwal yang ditetapkan.\nEvaluasi dan umpan balik dari peserta dikumpulkan.\nLaporan kegiatan diserahkan kepada pihak berwenang untuk dokumentasi dan perbaikan.', NULL),
(70, 'SOP Pengelolaan Kunjungan Industri dan Study Tour', 'Penyusunan rencana kunjungan industri atau study tour dilakukan oleh program studi atau panitia.\nPendaftaran peserta dilakukan melalui formulir yang disediakan.\nPersiapan logistik dan koordinasi dengan industri atau lokasi kunjungan dilakukan.\nPelaksanaan kunjungan industri atau study tour sesuai dengan jadwal yang ditetapkan.\nLaporan kegiatan diserahkan kepada pihak berwenang setelah acara selesai.', NULL),
(71, 'SOP Pengelolaan Seminar dan Konferensi', 'Penyusunan rencana seminar atau konferensi dilakukan oleh panitia.\nPengumuman dan pendaftaran peserta dilakukan melalui platform yang disediakan.\nPersiapan logistik, materi, dan pembicara dilakukan oleh panitia.\nPelaksanaan seminar atau konferensi sesuai dengan jadwal yang ditetapkan.\nLaporan kegiatan diserahkan kepada pihak berwenang setelah acara selesai.', NULL),
(72, 'SOP Pengelolaan Program Pertukaran Dosen', 'Dosen mengajukan permohonan untuk mengikuti program pertukaran dosen.\nVerifikasi dan seleksi dilakukan oleh bagian internasional atau pihak berwenang.\nKoordinasi dengan institusi mitra dilakukan untuk persiapan dan pelaksanaan pertukaran.\nPelaksanaan program pertukaran dosen sesuai dengan jadwal yang telah disepakati.\nLaporan hasil program pertukaran diserahkan kepada pihak berwenang setelah selesai.', NULL),
(73, 'SOP Pengelolaan Program Mentoring Mahasiswa Baru', 'Rekrutmen dan pelatihan mentor dilakukan oleh bagian kemahasiswaan atau program studi.\nPendaftaran mahasiswa baru untuk program mentoring dilakukan.\nPenugasan mentor kepada mahasiswa baru dilakukan.\nPelaksanaan program mentoring sesuai dengan jadwal dan rencana yang ditetapkan.\nEvaluasi dan laporan hasil program mentoring disusun dan diserahkan kepada pihak berwenang.', NULL),
(74, 'SOP Pengelolaan Layanan Perpustakaan', 'Pendaftaran anggota perpustakaan dilakukan untuk mahasiswa, dosen, dan staf.\nPengelolaan koleksi perpustakaan dilakukan sesuai dengan standar yang berlaku.\nPenyediaan layanan sirkulasi, referensi, dan digital dilakukan.\nMonitoring penggunaan dan pemeliharaan koleksi perpustakaan dilakukan.\nLaporan kegiatan perpustakaan disusun untuk keperluan administrasi dan pengembangan.', NULL),
(75, 'SOP Pengelolaan Dana Kegiatan Mahasiswa', 'Organisasi mahasiswa mengajukan proposal dana kegiatan ke bagian kemahasiswaan.\nVerifikasi dan evaluasi proposal dilakukan.\nPersetujuan dan pencairan dana dilakukan jika proposal memenuhi syarat.\nPengelolaan dana kegiatan dilakukan sesuai dengan rencana anggaran yang diajukan.\nLaporan penggunaan dana diserahkan kepada bagian kemahasiswaan.', NULL),
(76, 'SOP Pengelolaan Kerja Sama dengan Alumni', 'Pengajuan program kerja sama dengan alumni dilakukan oleh fakultas atau program studi.\nVerifikasi dan persetujuan program dilakukan oleh bagian alumni.\nImplementasi program kerja sama dilakukan sesuai dengan rencana yang telah disusun.\nMonitoring dan evaluasi program kerja sama dilakukan secara berkala.\nLaporan kegiatan kerja sama disusun dan diserahkan kepada pihak berwenang.', NULL),
(77, 'SOP Pengelolaan Penelitian Mahasiswa', 'Mahasiswa mengajukan proposal penelitian ke bagian akademik atau penelitian.\nVerifikasi dan evaluasi proposal dilakukan oleh komite penelitian.\nPersetujuan dan pencairan dana penelitian dilakukan jika proposal memenuhi syarat.\nPelaksanaan penelitian dilakukan sesuai dengan rencana yang telah disusun.\nLaporan hasil penelitian diserahkan kepada komite penelitian.', NULL),
(78, 'SOP Pengelolaan Kegiatan Kewirausahaan Mahasiswa', 'Mahasiswa mengajukan proposal kegiatan kewirausahaan ke bagian kemahasiswaan atau kewirausahaan.\nVerifikasi dan evaluasi proposal dilakukan.\nPersetujuan dan pencairan dana dilakukan jika proposal memenuhi syarat.\nPelaksanaan kegiatan kewirausahaan dilakukan sesuai dengan rencana yang telah disusun.\nLaporan kegiatan kewirausahaan diserahkan kepada bagian kemahasiswaan atau kewirausahaan.', NULL),
(79, 'SOP Pengelolaan Aktivitas Relawan Mahasiswa', 'Rekrutmen dan pelatihan relawan dilakukan oleh bagian kemahasiswaan atau program studi.\nPendaftaran mahasiswa yang berminat menjadi relawan dilakukan.\nPenugasan relawan sesuai dengan kebutuhan kegiatan dilakukan.\nPelaksanaan aktivitas relawan dilakukan sesuai dengan rencana yang telah disusun.\nEvaluasi dan laporan hasil aktivitas relawan disusun dan diserahkan kepada pihak berwenang.', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sop_steps`
--

CREATE TABLE `sop_steps` (
  `id` int(11) NOT NULL,
  `sop_id` int(2) DEFAULT NULL,
  `unit_id` int(1) DEFAULT NULL,
  `sort_order` int(1) DEFAULT NULL,
  `keterangan` varchar(99) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `sop_steps`
--

INSERT INTO `sop_steps` (`id`, `sop_id`, `unit_id`, `sort_order`, `keterangan`) VALUES
(1, 1, 0, 0, 'Calon mahasiswa mengisi formulir pendaftaran.'),
(2, 1, 0, 1, 'Formulir dan berkas pendukung diserahkan ke bagian penerimaan mahasiswa baru.'),
(3, 1, 0, 2, 'Seleksi administratif dan akademik dilakukan.'),
(4, 1, 0, 3, 'Pengumuman hasil seleksi disampaikan kepada calon mahasiswa.'),
(5, 1, 0, 4, 'Mahasiswa yang diterima melakukan registrasi dan pembayaran administrasi.'),
(6, 2, 0, 0, 'Pemohon mengisi formulir peminjaman barang/alat.'),
(7, 2, 0, 1, 'Formulir diserahkan ke bagian administrasi atau pihak yang berwenang.'),
(8, 2, 0, 2, 'Pihak berwenang memeriksa dan menyetujui permohonan.'),
(9, 2, 0, 3, 'Peminjam mengambil barang dengan menunjukkan tanda bukti persetujuan.'),
(10, 2, 0, 4, 'Barang dikembalikan sesuai jadwal, dan kondisi barang diperiksa oleh petugas inventaris.'),
(11, 3, 0, 0, 'Mahasiswa mengisi formulir pengajuan beasiswa.'),
(12, 3, 0, 1, 'Formulir diserahkan ke bagian beasiswa atau kemahasiswaan.'),
(13, 3, 0, 2, 'Berkas pengajuan diperiksa dan diverifikasi.'),
(14, 3, 0, 3, 'Jika diperlukan, wawancara dilakukan dengan pemohon.'),
(15, 3, 0, 4, 'Keputusan akhir diumumkan kepada pemohon melalui surat resmi atau email.'),
(16, 4, 0, 0, 'Mahasiswa mengisi formulir pengajuan cuti akademik.'),
(17, 4, 0, 1, 'Formulir diserahkan ke bagian akademik atau dekanat.'),
(18, 4, 0, 2, 'Permohonan diperiksa dan diverifikasi.'),
(19, 4, 0, 3, 'Keputusan persetujuan atau penolakan diberikan kepada mahasiswa.'),
(20, 4, 0, 4, 'Dokumentasi cuti akademik dicatat dan disimpan dalam arsip mahasiswa.'),
(21, 5, 0, 0, 'Dosen/mahasiswa mengisi formulir pengajuan penelitian.'),
(22, 5, 0, 1, 'Formulir diserahkan ke bagian penelitian atau lembaga penelitian universitas.'),
(23, 5, 0, 2, 'Pengajuan diperiksa dan dievaluasi oleh tim penilai.'),
(24, 5, 0, 3, 'Jika diperlukan, revisi proposal diminta kepada pemohon.'),
(25, 5, 0, 4, 'Keputusan akhir diberikan, dan penelitian dapat dimulai sesuai ketentuan yang berlaku.'),
(26, 6, 0, 0, 'Pihak yang membutuhkan mengisi formulir pemesanan ruang.'),
(27, 6, 0, 1, 'Formulir diserahkan ke bagian administrasi atau pengelola fasilitas.'),
(28, 6, 0, 2, 'Pemeriksaan ketersediaan ruang dilakukan.'),
(29, 6, 0, 3, 'Persetujuan pemakaian ruang diberikan, dan jadwal pemakaian dicatat.'),
(30, 6, 0, 4, 'Setelah penggunaan, ruang diperiksa kembali untuk memastikan kebersihan dan kelengkapannya.'),
(31, 7, 0, 0, 'Mahasiswa/dosen mengisi formulir pengajuan surat keterangan.'),
(32, 7, 0, 1, 'Formulir diserahkan ke bagian administrasi atau akademik.'),
(33, 7, 0, 2, 'Verifikasi data dilakukan oleh pihak berwenang.'),
(34, 7, 0, 3, 'Surat keterangan dibuat dan ditandatangani oleh pejabat berwenang.'),
(35, 7, 0, 4, 'Surat keterangan diserahkan kepada pemohon.'),
(36, 8, 0, 0, 'Mahasiswa mengisi formulir permohonan administrasi akademik (misalnya, transkrip, ijazah).'),
(37, 8, 0, 1, 'Formulir diserahkan ke bagian administrasi akademik.'),
(38, 8, 0, 2, 'Permohonan diproses dan diverifikasi.'),
(39, 8, 0, 3, 'Dokumen akademik yang diminta dibuat dan ditandatangani.'),
(40, 8, 0, 4, 'Dokumen diserahkan kepada pemohon.'),
(41, 9, 0, 0, 'Pihak yang mengetahui kerusakan mengisi formulir pelaporan kerusakan.'),
(42, 9, 0, 1, 'Formulir diserahkan ke bagian pengelolaan fasilitas.'),
(43, 9, 0, 2, 'Pemeriksaan kerusakan dilakukan oleh teknisi.'),
(44, 9, 0, 3, 'Perbaikan dilakukan sesuai dengan tingkat kerusakan.'),
(45, 9, 0, 4, 'Dokumentasi perbaikan dicatat untuk keperluan pemeliharaan.'),
(46, 10, 0, 0, 'Mahasiswa mengisi formulir pengajuan kegiatan.'),
(47, 10, 0, 1, 'Formulir diserahkan ke bagian kemahasiswaan.'),
(48, 10, 0, 2, 'Permohonan diperiksa dan diverifikasi.'),
(49, 10, 0, 3, 'Jika disetujui, surat izin kegiatan dikeluarkan.'),
(50, 10, 0, 4, 'Kegiatan dilaksanakan sesuai dengan rencana, dan laporan kegiatan diserahkan setelah selesai.'),
(51, 11, 0, 0, 'Pengumuman jadwal ujian diberikan kepada mahasiswa.'),
(52, 11, 0, 1, 'Mahasiswa mendaftar untuk mengikuti ujian sesuai jadwal.'),
(53, 11, 0, 2, 'Soal ujian disiapkan oleh dosen pengajar.'),
(54, 11, 0, 3, 'Pelaksanaan ujian dilakukan sesuai dengan jadwal dan prosedur yang ditetapkan.'),
(55, 11, 0, 4, 'Pengumpulan hasil ujian dan penilaian dilakukan oleh dosen.'),
(56, 12, 0, 0, 'Mahasiswa mengajukan permohonan penerbitan ijazah dan transkrip nilai.'),
(57, 12, 0, 1, 'Verifikasi kelulusan dan administrasi akademik dilakukan.'),
(58, 12, 0, 2, 'Ijazah dan transkrip nilai disiapkan dan ditandatangani oleh pejabat berwenang.'),
(59, 12, 0, 3, 'Dokumen diserahkan kepada mahasiswa yang telah menyelesaikan semua persyaratan.'),
(60, 13, 0, 0, 'Mahasiswa dan staf mendaftar sebagai anggota perpustakaan.'),
(61, 13, 0, 1, 'Buku atau materi perpustakaan dipinjam dengan menunjukkan kartu anggota.'),
(62, 13, 0, 2, 'Pengembalian buku dilakukan sesuai dengan tenggat waktu yang ditentukan.'),
(63, 13, 0, 3, 'Denda dikenakan untuk keterlambatan pengembalian buku.'),
(64, 13, 0, 4, 'Inventarisasi dan pemeliharaan koleksi perpustakaan dilakukan secara berkala.'),
(65, 14, 0, 0, 'Dosen mengajukan proposal kegiatan penelitian atau pengabdian masyarakat.'),
(66, 14, 0, 1, 'Proposal diperiksa dan dievaluasi oleh komite penelitian.'),
(67, 14, 0, 2, 'Persetujuan dan pendanaan diberikan jika proposal memenuhi syarat.'),
(68, 14, 0, 3, 'Pelaksanaan kegiatan dilakukan sesuai dengan rencana yang telah disetujui.'),
(69, 14, 0, 4, 'Laporan akhir diserahkan kepada komite penelitian untuk evaluasi.'),
(70, 15, 0, 0, 'Pengumuman lowongan pekerjaan disebarkan melalui media resmi.'),
(71, 15, 0, 1, 'Calon dosen dan staf mengirimkan lamaran pekerjaan.'),
(72, 15, 0, 2, 'Seleksi administratif dan wawancara dilakukan.'),
(73, 15, 0, 3, 'Keputusan penerimaan diberikan kepada calon yang memenuhi syarat.'),
(74, 15, 0, 4, 'Dosen dan staf baru melakukan orientasi dan registrasi.'),
(75, 16, 0, 0, 'Mahasiswa dan dosen mengajukan permohonan penggunaan laboratorium.'),
(76, 16, 0, 1, 'Permohonan disetujui oleh kepala laboratorium.'),
(77, 16, 0, 2, 'Penggunaan laboratorium dilakukan sesuai dengan jadwal dan aturan yang berlaku.'),
(78, 16, 0, 3, 'Peralatan laboratorium diperiksa sebelum dan setelah penggunaan.'),
(79, 16, 0, 4, 'Laporan penggunaan laboratorium diserahkan kepada kepala laboratorium.'),
(80, 17, 0, 0, 'Panitia mengajukan proposal penyelenggaraan seminar atau workshop.'),
(81, 17, 0, 1, 'Proposal diperiksa dan disetujui oleh pihak berwenang.'),
(82, 17, 0, 2, 'Persiapan logistik dan materi dilakukan oleh panitia.'),
(83, 17, 0, 3, 'Pelaksanaan seminar atau workshop sesuai dengan jadwal yang telah ditetapkan.'),
(84, 17, 0, 4, 'Laporan kegiatan diserahkan kepada pihak berwenang setelah acara selesai.'),
(85, 18, 0, 0, 'Proposal dana hibah diajukan oleh dosen atau mahasiswa.'),
(86, 18, 0, 1, 'Proposal diperiksa dan dievaluasi oleh komite hibah.'),
(87, 18, 0, 2, 'Persetujuan dan pencairan dana hibah dilakukan jika proposal memenuhi syarat.'),
(88, 18, 0, 3, 'Pengelolaan dana hibah dilakukan sesuai dengan rencana anggaran yang diajukan.'),
(89, 18, 0, 4, 'Laporan penggunaan dana hibah diserahkan kepada komite hibah.'),
(90, 19, 0, 0, 'Kurikulum program studi disusun oleh tim kurikulum.'),
(91, 19, 0, 1, 'Kurikulum disetujui oleh senat universitas.'),
(92, 19, 0, 2, 'Pelaksanaan program studi dilakukan sesuai dengan kurikulum yang telah disetujui.'),
(93, 19, 0, 3, 'Evaluasi program studi dilakukan secara berkala.'),
(94, 19, 0, 4, 'Laporan hasil evaluasi diserahkan kepada senat universitas untuk perbaikan kurikulum.'),
(95, 20, 0, 0, 'Laporan pelanggaran akademik diajukan oleh pihak yang mengetahui pelanggaran.'),
(96, 20, 0, 1, 'Laporan diperiksa oleh komite disiplin akademik.'),
(97, 20, 0, 2, 'Investigasi dan verifikasi dilakukan terhadap laporan pelanggaran.'),
(98, 20, 0, 3, 'Keputusan sanksi diberikan jika pelanggaran terbukti.'),
(99, 20, 0, 4, 'Dokumentasi pelanggaran dan sanksi disimpan untuk keperluan administrasi.'),
(100, 21, 0, 0, 'Mahasiswa mengisi formulir pengajuan pembimbing skripsi/tesis/disertasi.'),
(101, 21, 0, 1, 'Formulir diserahkan ke bagian akademik atau program studi.'),
(102, 21, 0, 2, 'Permohonan diproses dan pembimbing ditetapkan sesuai dengan keahlian dan ketersediaan.'),
(103, 21, 0, 3, 'Surat keputusan pembimbing diserahkan kepada mahasiswa.'),
(104, 21, 0, 4, 'Mahasiswa mulai konsultasi dengan pembimbing yang telah ditetapkan.'),
(105, 22, 0, 0, 'Mahasiswa mengisi formulir pembatalan mata kuliah.'),
(106, 22, 0, 1, 'Formulir diserahkan ke bagian akademik atau program studi.'),
(107, 22, 0, 2, 'Verifikasi dan persetujuan dilakukan oleh pihak berwenang.'),
(108, 22, 0, 3, 'Pembatalan mata kuliah dicatat dalam sistem administrasi akademik.'),
(109, 22, 0, 4, 'Mahasiswa diberitahukan tentang status pembatalan.'),
(110, 23, 0, 0, 'Mahasiswa mengisi formulir pendaftaran wisuda.'),
(111, 23, 0, 1, 'Formulir dan berkas pendukung diserahkan ke bagian akademik atau registrasi.'),
(112, 23, 0, 2, 'Verifikasi kelulusan dan administrasi dilakukan.'),
(113, 23, 0, 3, 'Pembayaran biaya wisuda dilakukan sesuai ketentuan.'),
(114, 23, 0, 4, 'Mahasiswa menerima informasi mengenai jadwal dan tata cara pelaksanaan wisuda.'),
(115, 24, 0, 0, 'Penulis mengirimkan naskah ke redaksi jurnal ilmiah.'),
(116, 24, 0, 1, 'Naskah diperiksa oleh editor untuk memastikan kesesuaian dengan pedoman jurnal.'),
(117, 24, 0, 2, 'Naskah dikirim ke reviewer untuk proses peer review.'),
(118, 24, 0, 3, 'Hasil review dikirim kembali ke penulis untuk revisi jika diperlukan.'),
(119, 24, 0, 4, 'Naskah yang telah direvisi dan disetujui diterbitkan dalam jurnal ilmiah.'),
(120, 25, 0, 0, 'Alumni mengisi formulir pendaftaran kegiatan alumni.'),
(121, 25, 0, 1, 'Formulir diserahkan ke bagian alumni atau kemahasiswaan.'),
(122, 25, 0, 2, 'Verifikasi data alumni dilakukan.'),
(123, 25, 0, 3, 'Persiapan logistik dan agenda kegiatan dilakukan.'),
(124, 25, 0, 4, 'Pelaksanaan kegiatan alumni dan dokumentasi hasil kegiatan.'),
(125, 26, 0, 0, 'Identifikasi kebutuhan pemeliharaan dilakukan oleh tim fasilitas.'),
(126, 26, 0, 1, 'Rencana pemeliharaan disusun dan disetujui oleh pihak berwenang.'),
(127, 26, 0, 2, 'Pelaksanaan pemeliharaan sesuai dengan jadwal yang ditetapkan.'),
(128, 26, 0, 3, 'Monitoring dan evaluasi hasil pemeliharaan dilakukan.'),
(129, 26, 0, 4, 'Laporan pemeliharaan disimpan untuk keperluan audit dan perencanaan.'),
(130, 27, 0, 0, 'Peneliti mengajukan proposal dana penelitian.'),
(131, 27, 0, 1, 'Proposal diperiksa dan dievaluasi oleh komite penelitian.'),
(132, 27, 0, 2, 'Persetujuan dan pencairan dana dilakukan sesuai dengan prosedur yang berlaku.'),
(133, 27, 0, 3, 'Pengelolaan dana dilakukan sesuai dengan rencana anggaran yang diajukan.'),
(134, 27, 0, 4, 'Laporan penggunaan dana diserahkan kepada komite penelitian.'),
(135, 28, 0, 0, 'Mahasiswa mengajukan proposal kegiatan ekstrakurikuler.'),
(136, 28, 0, 1, 'Proposal diperiksa dan disetujui oleh bagian kemahasiswaan.'),
(137, 28, 0, 2, 'Persiapan kegiatan dilakukan sesuai dengan rencana yang telah disetujui.'),
(138, 28, 0, 3, 'Pelaksanaan kegiatan ekstrakurikuler dan monitoring oleh pihak berwenang.'),
(139, 28, 0, 4, 'Laporan kegiatan diserahkan kepada bagian kemahasiswaan.'),
(140, 29, 0, 0, 'Mahasiswa mengisi formulir pendaftaran program pertukaran.'),
(141, 29, 0, 1, 'Formulir diserahkan ke bagian internasional atau kemahasiswaan.'),
(142, 29, 0, 2, 'Seleksi dilakukan berdasarkan kriteria yang telah ditetapkan.'),
(143, 29, 0, 3, 'Mahasiswa yang terpilih mendapatkan informasi mengenai persiapan dan keberangkatan.'),
(144, 29, 0, 4, 'Laporan hasil program pertukaran diserahkan setelah selesai.'),
(145, 30, 0, 0, 'Dosen atau mahasiswa mengajukan proposal kegiatan pengabdian masyarakat.'),
(146, 30, 0, 1, 'Proposal diperiksa dan dievaluasi oleh komite pengabdian masyarakat.'),
(147, 30, 0, 2, 'Persetujuan dan pendanaan diberikan jika proposal memenuhi syarat.'),
(148, 30, 0, 3, 'Pelaksanaan kegiatan sesuai dengan rencana yang telah disetujui.'),
(149, 30, 0, 4, 'Laporan akhir diserahkan kepada komite pengabdian masyarakat untuk evaluasi.'),
(150, 31, 0, 0, 'Mahasiswa mengisi formulir keluhan yang disediakan.'),
(151, 31, 0, 1, 'Formulir keluhan diserahkan ke bagian layanan mahasiswa atau bagian terkait.'),
(152, 31, 0, 2, 'Verifikasi dan penyelidikan dilakukan terhadap keluhan yang diajukan.'),
(153, 31, 0, 3, 'Tindakan perbaikan atau solusi diberikan kepada mahasiswa.'),
(154, 31, 0, 4, 'Dokumentasi keluhan dan penyelesaiannya disimpan untuk evaluasi lebih lanjut.'),
(155, 32, 0, 0, 'Calon mahasiswa internasional mengisi formulir pendaftaran.'),
(156, 32, 0, 1, 'Formulir dan berkas pendukung diserahkan ke bagian internasional atau penerimaan mahasiswa.'),
(157, 32, 0, 2, 'Seleksi administratif dan akademik dilakukan.'),
(158, 32, 0, 3, 'Pengumuman hasil seleksi disampaikan kepada calon mahasiswa internasional.'),
(159, 32, 0, 4, 'Mahasiswa internasional yang diterima melakukan registrasi dan orientasi.'),
(160, 33, 0, 0, 'Mahasiswa dan staf diberikan akses ke sistem informasi akademik.'),
(161, 33, 0, 1, 'Pelatihan penggunaan sistem dilakukan untuk pengguna baru.'),
(162, 33, 0, 2, 'Penggunaan sistem dilakukan sesuai dengan pedoman yang telah ditetapkan.'),
(163, 33, 0, 3, 'Monitoring dan pemeliharaan sistem dilakukan secara berkala.'),
(164, 33, 0, 4, 'Laporan dan analisis penggunaan sistem diserahkan kepada pihak berwenang.'),
(165, 34, 0, 0, 'Organisasi mahasiswa mengajukan proposal dana kegiatan.'),
(166, 34, 0, 1, 'Proposal diperiksa dan dievaluasi oleh bagian kemahasiswaan.'),
(167, 34, 0, 2, 'Persetujuan dan pencairan dana dilakukan jika proposal memenuhi syarat.'),
(168, 34, 0, 3, 'Pengelolaan dana dilakukan sesuai dengan rencana anggaran yang diajukan.'),
(169, 34, 0, 4, 'Laporan penggunaan dana diserahkan kepada bagian kemahasiswaan.'),
(170, 35, 0, 0, 'Identifikasi keadaan darurat dilakukan oleh tim keamanan kampus.'),
(171, 35, 0, 1, 'Protokol evakuasi dan penanganan darurat diaktifkan.'),
(172, 35, 0, 2, 'Informasi keadaan darurat disampaikan kepada seluruh civitas akademika.'),
(173, 35, 0, 3, 'Koordinasi dengan pihak terkait (misalnya, pemadam kebakaran, polisi) dilakukan.'),
(174, 35, 0, 4, 'Evaluasi dan laporan keadaan darurat disusun setelah situasi terkendali.'),
(175, 36, 0, 0, 'Dosen merancang dan menyusun materi perkuliahan daring.'),
(176, 36, 0, 1, 'Jadwal dan platform perkuliahan daring diinformasikan kepada mahasiswa.'),
(177, 36, 0, 2, 'Pelaksanaan perkuliahan daring sesuai dengan jadwal yang ditetapkan.'),
(178, 36, 0, 3, 'Evaluasi dan umpan balik dari mahasiswa dikumpulkan.'),
(179, 36, 0, 4, 'Perbaikan dan penyesuaian materi perkuliahan dilakukan berdasarkan umpan balik.'),
(180, 37, 0, 0, 'Mahasiswa mengajukan permohonan tinggal di asrama.'),
(181, 37, 0, 1, 'Permohonan diserahkan ke bagian pengelolaan asrama.'),
(182, 37, 0, 2, 'Verifikasi data dan penempatan kamar dilakukan.'),
(183, 37, 0, 3, 'Mahasiswa menerima informasi mengenai peraturan dan fasilitas asrama.'),
(184, 37, 0, 4, 'Monitoring dan pemeliharaan fasilitas asrama dilakukan secara berkala.'),
(185, 38, 0, 0, 'Data mahasiswa dikumpulkan dan dimasukkan ke dalam sistem informasi akademik.'),
(186, 38, 0, 1, 'Verifikasi dan validasi data dilakukan secara berkala.'),
(187, 38, 0, 2, 'Akses dan penggunaan data dilakukan sesuai dengan kebijakan privasi.'),
(188, 38, 0, 3, 'Pembaruan data dilakukan oleh mahasiswa atau pihak berwenang jika ada perubahan.'),
(189, 38, 0, 4, 'Laporan dan analisis data mahasiswa disusun untuk keperluan administrasi dan akademik.'),
(190, 39, 0, 0, 'Panitia mengajukan proposal penyelenggaraan pameran atau expo.'),
(191, 39, 0, 1, 'Proposal diperiksa dan disetujui oleh pihak berwenang.'),
(192, 39, 0, 2, 'Persiapan logistik dan materi dilakukan oleh panitia.'),
(193, 39, 0, 3, 'Pelaksanaan pameran atau expo sesuai dengan jadwal yang telah ditetapkan.'),
(194, 39, 0, 4, 'Laporan kegiatan diserahkan kepada pihak berwenang setelah acara selesai.'),
(195, 40, 0, 0, 'Identifikasi kebutuhan pembangunan atau renovasi dilakukan oleh tim fasilitas.'),
(196, 40, 0, 1, 'Proposal pembangunan atau renovasi disusun dan disetujui oleh pihak berwenang.'),
(197, 40, 0, 2, 'Pelaksanaan pembangunan atau renovasi dilakukan sesuai dengan rencana yang telah disetujui.'),
(198, 40, 0, 3, 'Monitoring dan evaluasi hasil pembangunan atau renovasi dilakukan.'),
(199, 40, 0, 4, 'Laporan pembangunan atau renovasi disusun dan disimpan untuk keperluan dokumentasi.'),
(200, 41, 0, 0, 'Mahasiswa mengajukan permohonan dana kesejahteraan dengan mengisi formulir yang disediakan.'),
(201, 41, 0, 1, 'Formulir dan berkas pendukung diserahkan ke bagian kesejahteraan mahasiswa.'),
(202, 41, 0, 2, 'Verifikasi dan evaluasi permohonan dilakukan.'),
(203, 41, 0, 3, 'Keputusan persetujuan atau penolakan permohonan diberitahukan kepada mahasiswa.'),
(204, 41, 0, 4, 'Dana disalurkan kepada mahasiswa yang memenuhi syarat, dan penggunaan dana dimonitor.'),
(205, 42, 0, 0, 'Laporan kekerasan diterima oleh bagian keamanan kampus atau pihak berwenang lainnya.'),
(206, 42, 0, 1, 'Penyelidikan dan verifikasi dilakukan terhadap laporan tersebut.'),
(207, 42, 0, 2, 'Langkah-langkah perlindungan diambil untuk melindungi korban.'),
(208, 42, 0, 3, 'Pelaku dikenakan sanksi sesuai dengan peraturan yang berlaku.'),
(209, 42, 0, 4, 'Dokumentasi kasus dan penyelesaian disimpan untuk keperluan administrasi dan evaluasi.'),
(210, 43, 0, 0, 'Identifikasi data dan informasi yang perlu dilindungi dilakukan.'),
(211, 43, 0, 1, 'Implementasi sistem keamanan informasi sesuai dengan standar yang berlaku.'),
(212, 43, 0, 2, 'Monitoring dan pemeliharaan sistem keamanan dilakukan secara berkala.'),
(213, 43, 0, 3, 'Tindakan penanganan diambil jika terjadi pelanggaran atau kebocoran data.'),
(214, 43, 0, 4, 'Evaluasi dan pembaruan sistem keamanan dilakukan untuk meningkatkan perlindungan.'),
(215, 44, 0, 0, 'Pengajuan kerja sama internasional dilakukan oleh fakultas atau program studi.'),
(216, 44, 0, 1, 'Proposal kerja sama diperiksa dan disetujui oleh bagian internasional.'),
(217, 44, 0, 2, 'Implementasi kerja sama dilakukan sesuai dengan perjanjian yang telah disepakati.'),
(218, 44, 0, 3, 'Monitoring dan evaluasi kerja sama dilakukan secara berkala.'),
(219, 44, 0, 4, 'Laporan kerja sama diserahkan kepada pihak berwenang untuk dokumentasi dan perbaikan.'),
(220, 45, 0, 0, 'Pengajuan kegiatan kebudayaan dilakukan oleh mahasiswa atau staf.'),
(221, 45, 0, 1, 'Proposal kegiatan diperiksa dan disetujui oleh bagian kemahasiswaan atau kebudayaan.'),
(222, 45, 0, 2, 'Persiapan logistik dan materi dilakukan oleh panitia.'),
(223, 45, 0, 3, 'Pelaksanaan kegiatan kebudayaan sesuai dengan jadwal yang telah ditetapkan.'),
(224, 45, 0, 4, 'Laporan kegiatan diserahkan kepada pihak berwenang setelah acara selesai.'),
(225, 46, 0, 0, 'Mahasiswa mendaftar untuk mengikuti praktikum sesuai dengan mata kuliah yang diambil.'),
(226, 46, 0, 1, 'Jadwal praktikum dan instruksi diberikan kepada mahasiswa.'),
(227, 46, 0, 2, 'Pelaksanaan praktikum dilakukan di laboratorium atau lokasi yang telah ditentukan.'),
(228, 46, 0, 3, 'Evaluasi hasil praktikum dilakukan oleh dosen pembimbing.'),
(229, 46, 0, 4, 'Nilai dan laporan praktikum diserahkan kepada mahasiswa dan bagian akademik.'),
(230, 47, 0, 0, 'Mahasiswa mengajukan permohonan rekomendasi akademik kepada dosen atau pihak berwenang.'),
(231, 47, 0, 1, 'Verifikasi data dan prestasi akademik dilakukan.'),
(232, 47, 0, 2, 'Surat rekomendasi akademik disusun dan ditandatangani oleh dosen atau pihak berwenang.'),
(233, 47, 0, 3, 'Surat rekomendasi diserahkan kepada mahasiswa.'),
(234, 47, 0, 4, 'Dokumentasi rekomendasi disimpan untuk keperluan administrasi.'),
(235, 48, 0, 0, 'Penerimaan dana sumbangan atau hibah dicatat oleh bagian keuangan.'),
(236, 48, 0, 1, 'Verifikasi dan pencatatan dilakukan sesuai dengan prosedur akuntansi yang berlaku.'),
(237, 48, 0, 2, 'Pengelolaan dana dilakukan sesuai dengan tujuan sumbangan atau hibah.'),
(238, 48, 0, 3, 'Monitoring dan evaluasi penggunaan dana dilakukan secara berkala.'),
(239, 48, 0, 4, 'Laporan penggunaan dana disusun dan diserahkan kepada pihak penyumbang atau pemberi hibah.'),
(240, 49, 0, 0, 'Pengajuan kegiatan olahraga dilakukan oleh mahasiswa atau staf.'),
(241, 49, 0, 1, 'Proposal kegiatan diperiksa dan disetujui oleh bagian kemahasiswaan atau olahraga.'),
(242, 49, 0, 2, 'Persiapan logistik dan fasilitas dilakukan oleh panitia.'),
(243, 49, 0, 3, 'Pelaksanaan kegiatan olahraga sesuai dengan jadwal yang telah ditetapkan.'),
(244, 49, 0, 4, 'Laporan kegiatan diserahkan kepada pihak berwenang setelah acara selesai.'),
(245, 50, 0, 0, 'Identifikasi risiko kesehatan dan keselamatan dilakukan oleh tim K3.'),
(246, 50, 0, 1, 'Implementasi program K3 sesuai dengan standar yang berlaku.'),
(247, 50, 0, 2, 'Pelatihan dan sosialisasi K3 dilakukan kepada seluruh civitas akademika.'),
(248, 50, 0, 3, 'Monitoring dan evaluasi program K3 dilakukan secara berkala.'),
(249, 50, 0, 4, 'Tindakan penanganan diambil jika terjadi insiden atau pelanggaran K3.'),
(250, 51, 0, 0, 'Penyusunan strategi komunikasi dan humas dilakukan oleh tim humas.'),
(251, 51, 0, 1, 'Implementasi program komunikasi dilakukan sesuai dengan rencana yang telah disusun.'),
(252, 51, 0, 2, 'Monitoring dan evaluasi efektivitas komunikasi dilakukan.'),
(253, 51, 0, 3, 'Pengelolaan media sosial dan website universitas dilakukan secara aktif.'),
(254, 51, 0, 4, 'Laporan kegiatan humas dan komunikasi disusun dan diserahkan kepada pihak berwenang.'),
(255, 52, 0, 0, 'Penulis mengajukan naskah buku atau materi ajar ke bagian penerbitan.'),
(256, 52, 0, 1, 'Naskah diperiksa dan disetujui oleh editor.'),
(257, 52, 0, 2, 'Proses produksi dan percetakan dilakukan sesuai dengan standar penerbitan.'),
(258, 52, 0, 3, 'Distribusi buku atau materi ajar dilakukan kepada mahasiswa atau pihak yang berkepentingan.'),
(259, 52, 0, 4, 'Evaluasi dan revisi dilakukan berdasarkan umpan balik pengguna.'),
(260, 53, 0, 0, 'Mahasiswa mengajukan permohonan dana bantuan dengan mengisi formulir yang disediakan.'),
(261, 53, 0, 1, 'Formulir dan berkas pendukung diserahkan ke bagian kesejahteraan mahasiswa.'),
(262, 53, 0, 2, 'Verifikasi dan evaluasi permohonan dilakukan.'),
(263, 53, 0, 3, 'Keputusan persetujuan atau penolakan permohonan diberitahukan kepada mahasiswa.'),
(264, 53, 0, 4, 'Dana disalurkan kepada mahasiswa yang memenuhi syarat, dan penggunaan dana dimonitor.'),
(265, 54, 0, 0, 'Mahasiswa dengan kebutuhan khusus mengajukan permohonan fasilitas atau layanan khusus.'),
(266, 54, 0, 1, 'Verifikasi kebutuhan dilakukan oleh bagian layanan mahasiswa atau pihak terkait.'),
(267, 54, 0, 2, 'Penyediaan fasilitas atau layanan khusus dilakukan sesuai dengan kebutuhan yang telah diverifikasi.'),
(268, 54, 0, 3, 'Monitoring dan evaluasi efektivitas fasilitas atau layanan khusus dilakukan.'),
(269, 54, 0, 4, 'Laporan penggunaan fasilitas atau layanan disusun dan diserahkan kepada pihak berwenang.'),
(270, 55, 0, 0, 'Pembentukan panitia dies natalis dilakukan oleh pihak berwenang.'),
(271, 55, 0, 1, 'Penyusunan rencana kegiatan dan anggaran dilakukan oleh panitia.'),
(272, 55, 0, 2, 'Persiapan logistik, materi, dan undangan dilakukan oleh panitia.'),
(273, 55, 0, 3, 'Pelaksanaan acara dies natalis sesuai dengan jadwal yang telah ditetapkan.'),
(274, 55, 0, 4, 'Laporan kegiatan diserahkan kepada pihak berwenang setelah acara selesai.'),
(275, 56, 0, 0, 'Peneliti mengajukan proposal dana bantuan penelitian.'),
(276, 56, 0, 1, 'Proposal diperiksa dan dievaluasi oleh komite penelitian.'),
(277, 56, 0, 2, 'Persetujuan dan pencairan dana dilakukan jika proposal memenuhi syarat.'),
(278, 56, 0, 3, 'Pengelolaan dana dilakukan sesuai dengan rencana anggaran yang diajukan.'),
(279, 56, 0, 4, 'Laporan penggunaan dana diserahkan kepada komite penelitian.'),
(280, 57, 0, 0, 'Laporan masalah etika penelitian diterima oleh komite etika penelitian.'),
(281, 57, 0, 1, 'Penyelidikan dan verifikasi dilakukan terhadap laporan tersebut.'),
(282, 57, 0, 2, 'Tindakan penanganan diambil jika ditemukan pelanggaran etika.'),
(283, 57, 0, 3, 'Rekomendasi perbaikan diberikan kepada peneliti.'),
(284, 57, 0, 4, 'Dokumentasi kasus dan penyelesaian disimpan untuk keperluan administrasi dan evaluasi.'),
(285, 58, 0, 0, 'Pengajuan kerja sama industri dilakukan oleh fakultas atau program studi.'),
(286, 58, 0, 1, 'Proposal kerja sama diperiksa dan disetujui oleh bagian kerja sama.'),
(287, 58, 0, 2, 'Implementasi kerja sama dilakukan sesuai dengan perjanjian yang telah disepakati.'),
(288, 58, 0, 3, 'Monitoring dan evaluasi kerja sama dilakukan secara berkala.'),
(289, 58, 0, 4, 'Laporan kerja sama diserahkan kepada pihak berwenang untuk dokumentasi dan perbaikan.'),
(290, 59, 0, 0, 'Mahasiswa mendaftar untuk program magang melalui bagian kemahasiswaan atau program studi.'),
(291, 59, 0, 1, 'Penempatan magang dilakukan sesuai dengan bidang studi dan ketersediaan tempat magang.'),
(292, 59, 0, 2, 'Pelaksanaan magang dilakukan sesuai dengan jadwal dan aturan yang berlaku.'),
(293, 59, 0, 3, 'Monitoring dan evaluasi kinerja mahasiswa magang dilakukan oleh dosen pembimbing.'),
(294, 59, 0, 4, 'Laporan magang diserahkan kepada mahasiswa dan bagian akademik.'),
(295, 60, 0, 0, 'Laporan sengketa akademik diterima oleh bagian akademik atau pihak berwenang.'),
(296, 60, 0, 1, 'Penyelidikan dan mediasi dilakukan untuk menyelesaikan sengketa.'),
(297, 60, 0, 2, 'Keputusan penyelesaian sengketa disampaikan kepada pihak yang bersengketa.'),
(298, 60, 0, 3, 'Tindakan perbaikan diambil jika diperlukan untuk mencegah sengketa serupa di masa depan.'),
(299, 60, 0, 4, 'Dokumentasi kasus dan penyelesaian disimpan untuk keperluan administrasi dan evaluasi.'),
(300, 61, 0, 0, 'Pengumuman program beasiswa disampaikan kepada seluruh mahasiswa.'),
(301, 61, 0, 1, 'Mahasiswa mengajukan aplikasi beasiswa dengan mengisi formulir dan melampirkan berkas pendukung.'),
(302, 61, 0, 2, 'Evaluasi dan seleksi aplikasi beasiswa dilakukan oleh komite beasiswa.'),
(303, 61, 0, 3, 'Pengumuman penerima beasiswa disampaikan kepada mahasiswa yang terpilih.'),
(304, 61, 0, 4, 'Penyaluran dana beasiswa dilakukan dan penggunaan dana dipantau.'),
(305, 62, 0, 0, 'Mahasiswa mengajukan permohonan surat keterangan aktif ke bagian akademik.'),
(306, 62, 0, 1, 'Verifikasi status keaktifan mahasiswa dilakukan.'),
(307, 62, 0, 2, 'Penyusunan dan penandatanganan surat keterangan aktif dilakukan.'),
(308, 62, 0, 3, 'Surat keterangan diserahkan kepada mahasiswa.'),
(309, 62, 0, 4, 'Dokumentasi surat keterangan disimpan untuk keperluan administrasi.'),
(310, 63, 0, 0, 'Mahasiswa mengisi formulir permohonan cuti akademik.'),
(311, 63, 0, 1, 'Formulir dan berkas pendukung diserahkan ke bagian akademik atau program studi.'),
(312, 63, 0, 2, 'Verifikasi dan persetujuan permohonan dilakukan oleh pihak berwenang.'),
(313, 63, 0, 3, 'Surat keputusan cuti akademik diserahkan kepada mahasiswa.'),
(314, 63, 0, 4, 'Dokumentasi cuti akademik disimpan dalam sistem administrasi akademik.'),
(315, 64, 0, 0, 'Mahasiswa mengajukan permohonan bimbingan konseling ke bagian layanan mahasiswa.'),
(316, 64, 0, 1, 'Jadwal konseling ditetapkan dan disampaikan kepada mahasiswa.'),
(317, 64, 0, 2, 'Pelaksanaan sesi konseling dilakukan sesuai jadwal.'),
(318, 64, 0, 3, 'Evaluasi hasil konseling dan tindak lanjut dilakukan oleh konselor.'),
(319, 64, 0, 4, 'Dokumentasi sesi konseling disimpan dengan menjaga kerahasiaan mahasiswa.'),
(320, 65, 0, 0, 'Mahasiswa yang telah menyelesaikan semua persyaratan akademik mengajukan permohonan SKL.'),
(321, 65, 0, 1, 'Verifikasi data kelulusan dilakukan oleh bagian akademik.'),
(322, 65, 0, 2, 'Penyusunan dan penandatanganan SKL dilakukan.'),
(323, 65, 0, 3, 'SKL diserahkan kepada mahasiswa.'),
(324, 65, 0, 4, 'Dokumentasi SKL disimpan untuk keperluan administrasi.'),
(325, 66, 0, 0, 'Penyebaran kuesioner evaluasi kepada mahasiswa dilakukan pada akhir semester.'),
(326, 66, 0, 1, 'Mahasiswa mengisi kuesioner evaluasi secara anonim.'),
(327, 66, 0, 2, 'Pengumpulan dan analisis data evaluasi dilakukan.'),
(328, 66, 0, 3, 'Hasil evaluasi disampaikan kepada dosen yang bersangkutan dan pihak berwenang.'),
(329, 66, 0, 4, 'Tindak lanjut dan perbaikan dilakukan berdasarkan hasil evaluasi.'),
(330, 67, 0, 0, 'Pencatatan semua inventaris kampus dilakukan oleh bagian inventarisasi.'),
(331, 67, 0, 1, 'Verifikasi dan pembaruan data inventaris dilakukan secara berkala.'),
(332, 67, 0, 2, 'Pengelolaan pemakaian dan perawatan inventaris dilakukan sesuai prosedur.'),
(333, 67, 0, 3, 'Monitoring kondisi dan kebutuhan inventaris dilakukan.'),
(334, 67, 0, 4, 'Laporan inventaris disusun dan diserahkan kepada pihak berwenang.'),
(335, 68, 0, 0, 'Mahasiswa mengajukan permohonan dana bantuan darurat dengan melampirkan dokumen pendukung.'),
(336, 68, 0, 1, 'Verifikasi dan evaluasi permohonan dilakukan oleh komite bantuan darurat.'),
(337, 68, 0, 2, 'Keputusan persetujuan atau penolakan permohonan diberitahukan kepada mahasiswa.'),
(338, 68, 0, 3, 'Penyaluran dana bantuan darurat dilakukan dan penggunaan dana dipantau.'),
(339, 68, 0, 4, 'Laporan penggunaan dana disusun untuk keperluan administrasi.'),
(340, 69, 0, 0, 'Penyusunan rencana pelatihan atau workshop dilakukan oleh panitia.'),
(341, 69, 0, 1, 'Pendaftaran peserta dilakukan melalui formulir yang disediakan.'),
(342, 69, 0, 2, 'Pelaksanaan pelatihan atau workshop sesuai dengan jadwal yang ditetapkan.'),
(343, 69, 0, 3, 'Evaluasi dan umpan balik dari peserta dikumpulkan.'),
(344, 69, 0, 4, 'Laporan kegiatan diserahkan kepada pihak berwenang untuk dokumentasi dan perbaikan.'),
(345, 70, 0, 0, 'Penyusunan rencana kunjungan industri atau study tour dilakukan oleh program studi atau panitia.'),
(346, 70, 0, 1, 'Pendaftaran peserta dilakukan melalui formulir yang disediakan.'),
(347, 70, 0, 2, 'Persiapan logistik dan koordinasi dengan industri atau lokasi kunjungan dilakukan.'),
(348, 70, 0, 3, 'Pelaksanaan kunjungan industri atau study tour sesuai dengan jadwal yang ditetapkan.'),
(349, 70, 0, 4, 'Laporan kegiatan diserahkan kepada pihak berwenang setelah acara selesai.'),
(350, 71, 0, 0, 'Penyusunan rencana seminar atau konferensi dilakukan oleh panitia.'),
(351, 71, 0, 1, 'Pengumuman dan pendaftaran peserta dilakukan melalui platform yang disediakan.'),
(352, 71, 0, 2, 'Persiapan logistik, materi, dan pembicara dilakukan oleh panitia.'),
(353, 71, 0, 3, 'Pelaksanaan seminar atau konferensi sesuai dengan jadwal yang ditetapkan.'),
(354, 71, 0, 4, 'Laporan kegiatan diserahkan kepada pihak berwenang setelah acara selesai.'),
(355, 72, 0, 0, 'Dosen mengajukan permohonan untuk mengikuti program pertukaran dosen.'),
(356, 72, 0, 1, 'Verifikasi dan seleksi dilakukan oleh bagian internasional atau pihak berwenang.'),
(357, 72, 0, 2, 'Koordinasi dengan institusi mitra dilakukan untuk persiapan dan pelaksanaan pertukaran.'),
(358, 72, 0, 3, 'Pelaksanaan program pertukaran dosen sesuai dengan jadwal yang telah disepakati.'),
(359, 72, 0, 4, 'Laporan hasil program pertukaran diserahkan kepada pihak berwenang setelah selesai.'),
(360, 73, 0, 0, 'Rekrutmen dan pelatihan mentor dilakukan oleh bagian kemahasiswaan atau program studi.'),
(361, 73, 0, 1, 'Pendaftaran mahasiswa baru untuk program mentoring dilakukan.'),
(362, 73, 0, 2, 'Penugasan mentor kepada mahasiswa baru dilakukan.'),
(363, 73, 0, 3, 'Pelaksanaan program mentoring sesuai dengan jadwal dan rencana yang ditetapkan.'),
(364, 73, 0, 4, 'Evaluasi dan laporan hasil program mentoring disusun dan diserahkan kepada pihak berwenang.'),
(365, 74, 0, 0, 'Pendaftaran anggota perpustakaan dilakukan untuk mahasiswa, dosen, dan staf.'),
(366, 74, 0, 1, 'Pengelolaan koleksi perpustakaan dilakukan sesuai dengan standar yang berlaku.'),
(367, 74, 0, 2, 'Penyediaan layanan sirkulasi, referensi, dan digital dilakukan.'),
(368, 74, 0, 3, 'Monitoring penggunaan dan pemeliharaan koleksi perpustakaan dilakukan.'),
(369, 74, 0, 4, 'Laporan kegiatan perpustakaan disusun untuk keperluan administrasi dan pengembangan.'),
(370, 75, 0, 0, 'Organisasi mahasiswa mengajukan proposal dana kegiatan ke bagian kemahasiswaan.'),
(371, 75, 0, 1, 'Verifikasi dan evaluasi proposal dilakukan.'),
(372, 75, 0, 2, 'Persetujuan dan pencairan dana dilakukan jika proposal memenuhi syarat.'),
(373, 75, 0, 3, 'Pengelolaan dana kegiatan dilakukan sesuai dengan rencana anggaran yang diajukan.'),
(374, 75, 0, 4, 'Laporan penggunaan dana diserahkan kepada bagian kemahasiswaan.'),
(375, 76, 0, 0, 'Pengajuan program kerja sama dengan alumni dilakukan oleh fakultas atau program studi.'),
(376, 76, 0, 1, 'Verifikasi dan persetujuan program dilakukan oleh bagian alumni.'),
(377, 76, 0, 2, 'Implementasi program kerja sama dilakukan sesuai dengan rencana yang telah disusun.'),
(378, 76, 0, 3, 'Monitoring dan evaluasi program kerja sama dilakukan secara berkala.'),
(379, 76, 0, 4, 'Laporan kegiatan kerja sama disusun dan diserahkan kepada pihak berwenang.'),
(380, 77, 0, 0, 'Mahasiswa mengajukan proposal penelitian ke bagian akademik atau penelitian.'),
(381, 77, 0, 1, 'Verifikasi dan evaluasi proposal dilakukan oleh komite penelitian.'),
(382, 77, 0, 2, 'Persetujuan dan pencairan dana penelitian dilakukan jika proposal memenuhi syarat.'),
(383, 77, 0, 3, 'Pelaksanaan penelitian dilakukan sesuai dengan rencana yang telah disusun.'),
(384, 77, 0, 4, 'Laporan hasil penelitian diserahkan kepada komite penelitian.'),
(385, 78, 0, 0, 'Mahasiswa mengajukan proposal kegiatan kewirausahaan ke bagian kemahasiswaan atau kewirausahaan.'),
(386, 78, 0, 1, 'Verifikasi dan evaluasi proposal dilakukan.'),
(387, 78, 0, 2, 'Persetujuan dan pencairan dana dilakukan jika proposal memenuhi syarat.'),
(388, 78, 0, 3, 'Pelaksanaan kegiatan kewirausahaan dilakukan sesuai dengan rencana yang telah disusun.'),
(389, 78, 0, 4, 'Laporan kegiatan kewirausahaan diserahkan kepada bagian kemahasiswaan atau kewirausahaan.'),
(390, 79, 0, 0, 'Rekrutmen dan pelatihan relawan dilakukan oleh bagian kemahasiswaan atau program studi.'),
(391, 79, 0, 1, 'Pendaftaran mahasiswa yang berminat menjadi relawan dilakukan.'),
(392, 79, 0, 2, 'Penugasan relawan sesuai dengan kebutuhan kegiatan dilakukan.'),
(393, 79, 0, 3, 'Pelaksanaan aktivitas relawan dilakukan sesuai dengan rencana yang telah disusun.'),
(394, 79, 0, 4, 'Evaluasi dan laporan hasil aktivitas relawan disusun dan diserahkan kepada pihak berwenang.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `units`
--

CREATE TABLE `units` (
  `id` int(11) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `parent_code` varchar(20) DEFAULT NULL,
  `nama` varchar(51) DEFAULT NULL,
  `keterangan` varchar(36) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `units`
--

INSERT INTO `units` (`id`, `code`, `parent_code`, `nama`, `keterangan`) VALUES
(1, '0100', '0', 'Yayasan', NULL),
(2, '0101', '0100', 'Dewan Pembina', NULL),
(3, '0102', '0101', 'Dewan Pengawas', NULL),
(4, '0103', '0102', 'Dewan Pengurus', NULL),
(5, '0200', '0', 'Rektorat', NULL),
(6, '0201', '0200', 'Rektor', NULL),
(7, '0202', '0201', 'Wakil Rektor I', 'Akademik'),
(8, '0203', '0202', 'Wakil Rektor II', 'Administrasi dan Keuangan'),
(9, '0204', '0203', 'Wakil Rektor III', 'Kemahasiswaan dan Alumni'),
(10, '0205', '0204', 'Wakil Rektor IV', 'Penelitian dan Pengabdian Masyarakat'),
(11, '0300', '0', 'General Affairs', NULL),
(12, '0301', '0300', 'General Affairs Office', NULL),
(13, '0302', '0301', 'Campus Cleaning Team', NULL),
(14, '0303', '0302', 'Pemeliharaan Bangunan', NULL),
(15, '0304', '0303', 'Kebersihan Lingkungan', NULL),
(16, '0305', '0304', 'Keamanan Lingkungan', NULL),
(17, '0400', '0', 'Fakultas', NULL),
(18, '0401', '0400', 'Dekan', NULL),
(19, '0402', '0401', 'Wakil Dekan I', 'Akademik'),
(20, '0403', '0402', 'Wakil Dekan II', 'Administrasi dan Keuangan'),
(21, '0404', '0403', 'Wakil Dekan III', 'Kemahasiswaan dan Alumni'),
(22, '0500', '0', 'Program Studi', NULL),
(23, '0501', '0500', 'Ketua Program Studi', NULL),
(24, '0502', '0501', 'Sekretaris Departemen', NULL),
(25, '0503', '0502', 'Mahasiswa', NULL),
(26, '0600', '0', 'Lembaga dan Pusat', NULL),
(27, '0601', '0600', 'Lembaga Penelitian dan Pengabdian Masyarakat (LPPM)', NULL),
(28, '0602', '0601', 'Ketua', NULL),
(29, '0603', '0602', 'Sekretaris', NULL),
(30, '0604', '0603', 'Pusat Pengembangan Karir', NULL),
(31, '0605', '0604', 'Pusat Teknologi Informasi', NULL),
(32, '0606', '0605', 'Pusat Studi Gender', NULL),
(33, '0607', '0606', 'Pusat Inovasi dan Inkubator Bisnis', NULL),
(34, '0700', '0', 'Biro/Unit Administrasi', NULL),
(35, '0701', '0700', 'Biro Akademik', NULL),
(36, '0702', '0701', 'Biro Keuangan', NULL),
(37, '0703', '0702', 'Biro Sumber Daya Manusia', NULL),
(38, '0704', '0703', 'Biro Humas dan Kerjasama', NULL),
(39, '0705', '0704', 'Biro Perlengkapan dan Aset', NULL),
(40, '0800', '0', 'Unit Pelaksana Teknis (UPT)', NULL),
(41, '0801', '0800', 'Perpustakaan', NULL),
(42, '0802', '0801', 'Laboratorium', NULL),
(43, '0803', '0802', 'Unit Bahasa', NULL),
(44, '0804', '0803', 'Unit Kesehatan', NULL),
(45, '0805', '0804', 'Unit Layanan Konseling', NULL),
(46, '0900', '0', 'Bagian Kemahasiswaan', NULL),
(47, '0901', '0900', 'Unit Kegiatan Mahasiswa (UKM)', NULL),
(48, '0902', '0901', 'Unit Beasiswa', NULL),
(49, '0903', '0902', 'Unit Asrama Mahasiswa', NULL),
(50, '0904', '0903', 'Unit Bimbingan dan Konseling', NULL),
(51, '0905', '0904', 'Orang Tua Mahasiswa', NULL),
(55, 'test1111', '6', 'test2222', 'fasd fda fds fsd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin istrator', 'nietaldarkopik@gmail.com', NULL, '$2y$12$itG81kZR7ueYsn1esoqAFu29bCpit8pdNdfy1gexnYVoSfZfdylxK', NULL, '2024-06-11 09:21:47', '2024-06-11 09:21:47');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contents_id_content_type_foreign` (`id_content_type`);

--
-- Indeks untuk tabel `content_types`
--
ALTER TABLE `content_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `content_types_code_unique` (`code`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_code_unique` (`code`),
  ADD KEY `menus_menu_group_id_foreign` (`menu_group_id`),
  ADD KEY `menus_parent_id_foreign` (`parent_id`);

--
-- Indeks untuk tabel `menu_groups`
--
ALTER TABLE `menu_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_groups_code_unique` (`code`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`) USING BTREE,
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`) USING BTREE,
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_code_unique` (`code`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengajuan_dokumen`
--
ALTER TABLE `pengajuan_dokumen`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengajuan_progress`
--
ALTER TABLE `pengajuan_progress`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_team_id_name_guard_name_unique` (`team_id`,`name`,`guard_name`),
  ADD KEY `roles_team_foreign_key_index` (`team_id`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sops`
--
ALTER TABLE `sops`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sop_steps`
--
ALTER TABLE `sop_steps`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `contents`
--
ALTER TABLE `contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `content_types`
--
ALTER TABLE `content_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `menu_groups`
--
ALTER TABLE `menu_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pengajuan`
--
ALTER TABLE `pengajuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pengajuan_dokumen`
--
ALTER TABLE `pengajuan_dokumen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pengajuan_progress`
--
ALTER TABLE `pengajuan_progress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=506;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sops`
--
ALTER TABLE `sops`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT untuk tabel `sop_steps`
--
ALTER TABLE `sop_steps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=395;

--
-- AUTO_INCREMENT untuk tabel `units`
--
ALTER TABLE `units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `contents`
--
ALTER TABLE `contents`
  ADD CONSTRAINT `contents_id_content_type_foreign` FOREIGN KEY (`id_content_type`) REFERENCES `content_types` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_menu_group_id_foreign` FOREIGN KEY (`menu_group_id`) REFERENCES `menu_groups` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `menus_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menus` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
