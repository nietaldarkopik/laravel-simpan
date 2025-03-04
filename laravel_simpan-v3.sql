-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 28 Jun 2024 pada 03.10
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
  `route` char(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` char(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int(2) NOT NULL,
  `icon` char(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id`, `menu_group_id`, `parent_id`, `route`, `url`, `title`, `sort_order`, `icon`) VALUES
(4, 1, 0, '', 'home', 'Dashboard', 0, 'nav-icon fas fa-tachometer-alt'),
(7, 1, 0, '', '#', 'Konten Manajemen', 1, 'nav-icon fas fa-copy'),
(8, 1, 7, 'admin.halaman.index', '#', 'Halaman', 1, 'far fa-circle nav-icon'),
(9, 1, 7, 'admin.menu.index', '#', 'Menu', 1, 'far fa-circle nav-icon'),
(10, 1, 7, 'admin.faq.index', '#', 'FAQ', 1, 'far fa-circle nav-icon'),
(11, 1, 0, '', '#', 'Data Pengajuan', 2, 'nav-icon fas fa-edit'),
(12, 1, 11, 'admin.pengajuan.create', '#', 'Buat Pengajuan', 2, 'far fa-circle nav-icon'),
(13, 1, 11, 'admin.pengajuan.index', '#', 'Tracking Pengajuan', 2, 'far fa-circle nav-icon'),
(14, 1, 11, 'admin.riwayat.index', '#', 'Riwayat Pengajuan', 2, 'far fa-circle nav-icon'),
(15, 1, 11, 'admin.laporan.index', '#', 'Laporan', 2, 'far fa-circle nav-icon'),
(16, 1, 0, '', '#', 'Data Master', 3, 'nav-icon fas fa-edit'),
(17, 1, 16, 'admin.unit.index', '#', 'Unit', 3, 'far fa-circle nav-icon'),
(18, 1, 16, 'admin.sop.index', '#', 'Jenis Pengajuan', 3, 'far fa-circle nav-icon'),
(19, 1, 0, '', '#', 'Pengguna', 4, 'nav-icon fas fa-edit'),
(20, 1, 19, 'admin.roles.index', '#', 'Hak Akses', 4, 'far fa-circle nav-icon'),
(21, 1, 19, 'admin.users.index', '#', 'Pengguna', 4, 'far fa-circle nav-icon'),
(22, 1, 19, 'admin.ubah-password.index', '#', 'Ubah Password', 4, 'far fa-circle nav-icon'),
(23, 2, 0, '', '/home', 'Dashboard', 0, 'fa fa-home'),
(24, 2, 0, 'admin.pengajuan.create', '/admin/pengajuan/create', 'Buat Pengajuan', 0, 'nav-icon fas fa-file-signature'),
(25, 1, 0, '', '/', 'Dashboard', 0, 'nav-icon fas fa-tachometer-alt'),
(26, 1, 0, '', '#', 'Konten Manajemen', 1, 'nav-icon fas fa-copy'),
(27, 1, 26, 'admin.halaman.index', '#', 'Halaman', 1, 'far fa-circle nav-icon'),
(28, 1, 1, 'admin.menu.index', '#', 'Menu', 1, 'far fa-circle nav-icon'),
(29, 1, 1, 'admin.faq.index', '#', 'FAQ', 1, 'far fa-circle nav-icon'),
(30, 1, 0, '', '#', 'Data Pengajuan', 2, 'nav-icon fas fa-edit'),
(31, 1, 30, 'admin.pengajuan.create', '#', 'Buat Pengajuan', 2, 'far fa-circle nav-icon'),
(32, 1, 1, 'admin.pengajuan.index', '#', 'Tracking Pengajuan', 2, 'far fa-circle nav-icon'),
(33, 1, 1, 'admin.riwayat.index', '#', 'Riwayat Pengajuan', 2, 'far fa-circle nav-icon'),
(34, 1, 1, 'admin.laporan.index', '#', 'Laporan', 2, 'far fa-circle nav-icon'),
(35, 1, 0, '', '#', 'Data Master', 3, 'nav-icon fas fa-edit'),
(36, 1, 35, 'admin.unit.index', '#', 'Unit', 3, 'far fa-circle nav-icon'),
(37, 1, 1, 'admin.sop.index', '#', 'Jenis Pengajuan', 3, 'far fa-circle nav-icon'),
(38, 1, 0, '', '#', 'Pengguna', 4, 'nav-icon fas fa-edit'),
(39, 1, 38, 'admin.roles.index', '#', 'Hak Akses', 4, 'far fa-circle nav-icon'),
(40, 1, 1, 'admin.users.index', '#', 'Pengguna', 4, 'far fa-circle nav-icon'),
(41, 1, 1, 'admin.ubah-password.index', '#', 'Ubah Password', 4, 'far fa-circle nav-icon'),
(42, 2, 0, 'admin.pengajuan.index', '/admin/pengajuan', 'Tracking', 0, 'nav-icon fas fa-tasks'),
(44, 2, 0, 'admin.riwayat.index', '/admin/tindakan', 'Tindakan', 0, 'nav-icon far fa-handshake'),
(45, 2, 0, 'admin.sop.index', '/admin/sop', 'Jenis Pengajuan', 0, 'nav-icon fas fa-list-ol'),
(50, 3, 0, 'admin.laporan.index', '/admin/laporan', 'Laporan', 0, 'nav-icon fas fa-list-ol');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_groups`
--

CREATE TABLE `menu_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `menu_groups`
--

INSERT INTO `menu_groups` (`id`, `role`, `title`) VALUES
(1, 'Admin', 'Admin'),
(2, 'Pengguna', 'Pengguna'),
(3, 'Pimpinan', 'Pimpinan');

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
  `unit_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `unit_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`, `unit_id`) VALUES
(1, 'App\\Models\\User', 1, NULL),
(2, 'App\\Models\\User', 2, NULL),
(2, 'App\\Models\\User', 3, NULL),
(2, 'App\\Models\\User', 4, NULL),
(2, 'App\\Models\\User', 5, NULL),
(2, 'App\\Models\\User', 6, NULL),
(2, 'App\\Models\\User', 7, NULL),
(2, 'App\\Models\\User', 8, NULL),
(2, 'App\\Models\\User', 9, NULL),
(2, 'App\\Models\\User', 10, NULL),
(2, 'App\\Models\\User', 11, NULL),
(2, 'App\\Models\\User', 12, NULL),
(2, 'App\\Models\\User', 13, NULL),
(2, 'App\\Models\\User', 14, NULL),
(2, 'App\\Models\\User', 15, NULL),
(2, 'App\\Models\\User', 16, NULL),
(2, 'App\\Models\\User', 17, NULL),
(2, 'App\\Models\\User', 18, NULL),
(2, 'App\\Models\\User', 19, NULL),
(2, 'App\\Models\\User', 20, NULL),
(2, 'App\\Models\\User', 21, NULL),
(2, 'App\\Models\\User', 22, NULL),
(2, 'App\\Models\\User', 23, NULL),
(2, 'App\\Models\\User', 24, NULL),
(2, 'App\\Models\\User', 25, NULL),
(2, 'App\\Models\\User', 26, NULL),
(2, 'App\\Models\\User', 27, NULL),
(2, 'App\\Models\\User', 28, NULL),
(2, 'App\\Models\\User', 29, NULL),
(2, 'App\\Models\\User', 30, NULL),
(2, 'App\\Models\\User', 31, NULL),
(2, 'App\\Models\\User', 32, NULL),
(2, 'App\\Models\\User', 33, NULL),
(2, 'App\\Models\\User', 34, NULL),
(2, 'App\\Models\\User', 35, NULL),
(2, 'App\\Models\\User', 36, NULL),
(2, 'App\\Models\\User', 37, NULL),
(2, 'App\\Models\\User', 38, NULL),
(2, 'App\\Models\\User', 39, NULL),
(2, 'App\\Models\\User', 40, NULL),
(2, 'App\\Models\\User', 41, NULL),
(2, 'App\\Models\\User', 42, NULL),
(2, 'App\\Models\\User', 43, NULL),
(2, 'App\\Models\\User', 44, NULL),
(2, 'App\\Models\\User', 45, NULL),
(2, 'App\\Models\\User', 46, NULL),
(2, 'App\\Models\\User', 47, NULL),
(2, 'App\\Models\\User', 48, NULL),
(2, 'App\\Models\\User', 49, NULL),
(2, 'App\\Models\\User', 50, NULL),
(2, 'App\\Models\\User', 51, NULL),
(2, 'App\\Models\\User', 52, NULL),
(2, 'App\\Models\\User', 53, NULL),
(2, 'App\\Models\\User', 54, NULL),
(2, 'App\\Models\\User', 55, NULL),
(2, 'App\\Models\\User', 56, NULL),
(2, 'App\\Models\\User', 57, NULL),
(2, 'App\\Models\\User', 58, NULL),
(2, 'App\\Models\\User', 59, NULL),
(2, 'App\\Models\\User', 60, NULL),
(2, 'App\\Models\\User', 61, NULL),
(2, 'App\\Models\\User', 62, NULL),
(2, 'App\\Models\\User', 63, NULL),
(2, 'App\\Models\\User', 64, NULL),
(2, 'App\\Models\\User', 65, NULL),
(2, 'App\\Models\\User', 66, NULL),
(2, 'App\\Models\\User', 67, NULL),
(2, 'App\\Models\\User', 68, NULL),
(2, 'App\\Models\\User', 69, NULL),
(2, 'App\\Models\\User', 70, NULL),
(2, 'App\\Models\\User', 71, NULL),
(2, 'App\\Models\\User', 72, NULL),
(2, 'App\\Models\\User', 73, NULL),
(2, 'App\\Models\\User', 74, NULL),
(2, 'App\\Models\\User', 75, NULL),
(2, 'App\\Models\\User', 76, NULL),
(2, 'App\\Models\\User', 77, NULL),
(2, 'App\\Models\\User', 78, NULL),
(2, 'App\\Models\\User', 79, NULL),
(2, 'App\\Models\\User', 80, NULL),
(2, 'App\\Models\\User', 81, NULL),
(2, 'App\\Models\\User', 82, NULL),
(2, 'App\\Models\\User', 83, NULL),
(2, 'App\\Models\\User', 84, NULL),
(2, 'App\\Models\\User', 85, NULL),
(2, 'App\\Models\\User', 86, NULL),
(2, 'App\\Models\\User', 87, NULL),
(2, 'App\\Models\\User', 88, NULL),
(2, 'App\\Models\\User', 89, NULL),
(2, 'App\\Models\\User', 90, NULL),
(2, 'App\\Models\\User', 91, NULL),
(2, 'App\\Models\\User', 92, NULL),
(2, 'App\\Models\\User', 93, NULL),
(2, 'App\\Models\\User', 94, NULL),
(2, 'App\\Models\\User', 95, NULL),
(2, 'App\\Models\\User', 96, NULL),
(2, 'App\\Models\\User', 97, NULL),
(2, 'App\\Models\\User', 98, NULL),
(2, 'App\\Models\\User', 99, NULL),
(2, 'App\\Models\\User', 100, NULL),
(2, 'App\\Models\\User', 101, NULL),
(2, 'App\\Models\\User', 102, NULL),
(2, 'App\\Models\\User', 103, NULL),
(2, 'App\\Models\\User', 104, NULL),
(2, 'App\\Models\\User', 105, NULL),
(2, 'App\\Models\\User', 106, NULL),
(2, 'App\\Models\\User', 107, NULL),
(2, 'App\\Models\\User', 108, NULL),
(2, 'App\\Models\\User', 109, NULL),
(2, 'App\\Models\\User', 110, NULL),
(2, 'App\\Models\\User', 111, NULL),
(2, 'App\\Models\\User', 112, NULL),
(2, 'App\\Models\\User', 113, NULL),
(2, 'App\\Models\\User', 114, NULL),
(2, 'App\\Models\\User', 115, NULL),
(2, 'App\\Models\\User', 116, NULL),
(2, 'App\\Models\\User', 117, NULL),
(2, 'App\\Models\\User', 118, NULL),
(2, 'App\\Models\\User', 119, NULL),
(2, 'App\\Models\\User', 120, NULL),
(2, 'App\\Models\\User', 121, NULL),
(2, 'App\\Models\\User', 122, NULL),
(2, 'App\\Models\\User', 123, NULL),
(2, 'App\\Models\\User', 124, NULL),
(2, 'App\\Models\\User', 125, NULL),
(2, 'App\\Models\\User', 126, NULL),
(2, 'App\\Models\\User', 127, NULL),
(2, 'App\\Models\\User', 128, NULL),
(2, 'App\\Models\\User', 129, NULL),
(2, 'App\\Models\\User', 130, NULL),
(2, 'App\\Models\\User', 131, NULL),
(2, 'App\\Models\\User', 132, NULL),
(2, 'App\\Models\\User', 133, NULL),
(2, 'App\\Models\\User', 134, NULL),
(2, 'App\\Models\\User', 135, NULL),
(2, 'App\\Models\\User', 136, NULL),
(2, 'App\\Models\\User', 137, NULL),
(2, 'App\\Models\\User', 138, NULL),
(2, 'App\\Models\\User', 139, NULL),
(2, 'App\\Models\\User', 140, NULL),
(2, 'App\\Models\\User', 141, NULL),
(2, 'App\\Models\\User', 142, NULL),
(2, 'App\\Models\\User', 143, NULL),
(2, 'App\\Models\\User', 144, NULL),
(2, 'App\\Models\\User', 145, NULL),
(2, 'App\\Models\\User', 146, NULL),
(2, 'App\\Models\\User', 147, NULL),
(2, 'App\\Models\\User', 148, NULL),
(2, 'App\\Models\\User', 149, NULL),
(2, 'App\\Models\\User', 150, NULL),
(2, 'App\\Models\\User', 151, NULL),
(2, 'App\\Models\\User', 152, NULL),
(2, 'App\\Models\\User', 153, NULL),
(2, 'App\\Models\\User', 154, NULL),
(2, 'App\\Models\\User', 155, NULL),
(2, 'App\\Models\\User', 156, NULL),
(2, 'App\\Models\\User', 157, NULL),
(2, 'App\\Models\\User', 158, NULL),
(2, 'App\\Models\\User', 159, NULL),
(2, 'App\\Models\\User', 161, NULL),
(2, 'App\\Models\\User', 162, NULL),
(2, 'App\\Models\\User', 165, NULL),
(2, 'App\\Models\\User', 166, NULL),
(2, 'App\\Models\\User', 167, NULL),
(2, 'App\\Models\\User', 169, NULL),
(2, 'App\\Models\\User', 172, NULL),
(2, 'App\\Models\\User', 173, NULL),
(2, 'App\\Models\\User', 174, NULL),
(2, 'App\\Models\\User', 175, NULL),
(2, 'App\\Models\\User', 176, NULL),
(2, 'App\\Models\\User', 177, NULL),
(2, 'App\\Models\\User', 178, NULL),
(2, 'App\\Models\\User', 179, NULL),
(2, 'App\\Models\\User', 180, NULL),
(2, 'App\\Models\\User', 181, NULL),
(2, 'App\\Models\\User', 182, NULL),
(2, 'App\\Models\\User', 183, NULL),
(2, 'App\\Models\\User', 184, NULL),
(2, 'App\\Models\\User', 185, NULL),
(2, 'App\\Models\\User', 186, NULL),
(2, 'App\\Models\\User', 187, NULL),
(2, 'App\\Models\\User', 188, NULL),
(2, 'App\\Models\\User', 189, NULL),
(2, 'App\\Models\\User', 190, NULL),
(2, 'App\\Models\\User', 191, NULL),
(2, 'App\\Models\\User', 192, NULL),
(2, 'App\\Models\\User', 193, NULL),
(2, 'App\\Models\\User', 194, NULL),
(2, 'App\\Models\\User', 195, NULL),
(2, 'App\\Models\\User', 196, NULL),
(2, 'App\\Models\\User', 197, NULL),
(2, 'App\\Models\\User', 198, NULL),
(2, 'App\\Models\\User', 199, NULL),
(2, 'App\\Models\\User', 200, NULL),
(2, 'App\\Models\\User', 201, NULL),
(2, 'App\\Models\\User', 202, NULL),
(2, 'App\\Models\\User', 203, NULL),
(2, 'App\\Models\\User', 204, NULL),
(2, 'App\\Models\\User', 205, NULL),
(2, 'App\\Models\\User', 206, NULL),
(2, 'App\\Models\\User', 207, NULL),
(2, 'App\\Models\\User', 208, NULL),
(2, 'App\\Models\\User', 209, NULL),
(2, 'App\\Models\\User', 210, NULL),
(2, 'App\\Models\\User', 211, NULL),
(2, 'App\\Models\\User', 212, NULL),
(2, 'App\\Models\\User', 213, NULL),
(3, 'App\\Models\\User', 161, NULL),
(3, 'App\\Models\\User', 162, NULL),
(3, 'App\\Models\\User', 165, NULL),
(3, 'App\\Models\\User', 166, NULL),
(3, 'App\\Models\\User', 167, NULL),
(3, 'App\\Models\\User', 169, NULL),
(3, 'App\\Models\\User', 173, NULL);

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
  `id_parent` int(11) NOT NULL DEFAULT 0,
  `id_sop` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_unit` int(11) NOT NULL,
  `judul` char(250) NOT NULL,
  `nominal` bigint(16) NOT NULL DEFAULT 0,
  `tgl_pengajuan` date NOT NULL,
  `keterangan` text DEFAULT NULL,
  `status` char(30) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengajuan`
--

INSERT INTO `pengajuan` (`id`, `id_parent`, `id_sop`, `id_user`, `id_unit`, `judul`, `nominal`, `tgl_pengajuan`, `keterangan`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 80, 1, 2, 'ds dfs dsf gdfg', 234234, '2024-06-20', 'fasdfdasf das', 'diajukan', 1, NULL, NULL, '2024-06-19 22:27:17', '2024-06-20 16:35:12', NULL),
(2, 0, 80, 1, 2, 'asdf asdfas fdas df', 234234, '2024-06-20', 'as das asd fas df', 'diajukan', 1, NULL, NULL, '2024-06-19 22:44:53', '2024-06-20 16:35:12', NULL),
(3, 0, 80, 1, 2, 'asd fasd fasf as f', 23423424, '2024-06-20', 'asd fas df', 'draft', 1, 1, NULL, '2024-06-19 22:48:48', '2024-06-20 10:26:24', '2024-06-20 03:26:24'),
(4, 0, 80, 1, 2, 'sd fas f', 23424, '2024-06-20', 'ads fasf', 'diajukan', 1, NULL, NULL, '2024-06-19 22:49:28', '2024-06-20 16:35:12', NULL),
(5, 0, 80, 1, 2, 'sd fas f', 23424, '2024-06-20', 'ads fasf', 'diajukan', 1, NULL, NULL, '2024-06-19 22:52:21', '2024-06-20 16:35:12', NULL),
(6, 0, 80, 1, 2, 'sd fas f', 23424, '2024-06-20', 'ads fasf', 'diajukan', 1, NULL, NULL, '2024-06-19 22:52:31', '2024-06-20 16:35:12', NULL),
(7, 0, 80, 1, 1, '23424', 23424, '2024-06-20', NULL, 'diajukan', 1, NULL, NULL, '2024-06-19 22:56:25', '2024-06-20 16:35:12', NULL),
(8, 0, 80, 1, 2, 'sf asdfas fas df', 234234, '2024-06-20', 'dsf asf asdf', 'diajukan', 1, NULL, NULL, '2024-06-19 23:00:36', '2024-06-20 16:35:12', NULL),
(9, 0, 80, 1, 2, 'saf asd fasd fasdf as df', 31313123, '2024-06-20', 'ds fasd sadf', 'diajukan', 1, NULL, NULL, '2024-06-19 23:03:09', '2024-06-20 16:35:12', NULL),
(10, 0, 80, 1, 2, 'asdfasdfasdf', 32323, '2024-06-20', 'sdafsdf', 'draft', 1, NULL, NULL, '2024-06-20 00:13:12', '2024-06-20 09:44:59', '2024-06-20 02:44:59'),
(11, 0, 80, 1, 4, 'asdfasdfasdf', 2324, '2024-06-20', 'dsasd fasd f', 'diajukan', 1, NULL, NULL, '2024-06-20 00:15:20', '2024-06-20 16:35:12', NULL),
(12, 0, 80, 1, 1, 'asdfasfa', 2424, '2024-06-20', 'sad fa fsd f', 'diajukan', 1, NULL, NULL, '2024-06-20 01:02:18', '2024-06-20 16:35:12', NULL),
(13, 0, 80, 1, 1, 'asd fasd fasf as f 222', 22222, '2024-06-20', 'asd fas df22222', 'draft', 1, NULL, NULL, '2024-06-20 03:03:12', '2024-06-20 10:27:50', '2024-06-20 03:27:50'),
(14, 0, 80, 1, 1, 'asd fasd fasf as f 222', 22222, '2024-06-20', 'asd fas df22222', 'draft', 1, NULL, NULL, '2024-06-20 03:03:16', '2024-06-20 10:26:13', '2024-06-20 03:26:13'),
(15, 0, 80, 1, 1, 'asd fasd fasf as f 222', 22222, '2024-06-20', 'asd fas df22222', 'draft', 1, NULL, NULL, '2024-06-20 03:03:16', '2024-06-20 10:27:57', '2024-06-20 03:27:57'),
(16, 0, 80, 1, 1, 'asd fasd fasf as f 222', 22222, '2024-06-20', 'asd fas df22222', 'draft', 1, NULL, NULL, '2024-06-20 03:03:17', '2024-06-20 10:27:54', '2024-06-20 03:27:54'),
(17, 0, 80, 1, 1, 'asd fasd fasf as f 222555111', 2222255511, '2024-06-20', 'asd fas df22222555111', 'draft', 1, 1, NULL, '2024-06-20 03:03:17', '2024-06-20 10:28:23', NULL),
(18, 0, 80, 1, 1, 'asd fasd fasf as f 222', 22222, '2024-06-20', 'asd fas df22222', 'draft', 1, NULL, NULL, '2024-06-20 03:03:17', '2024-06-20 10:26:49', '2024-06-20 03:26:49'),
(19, 0, 80, 1, 1, 'asd fasd fasf as f 222', 22222, '2024-06-20', 'asd fas df22222', 'draft', 1, NULL, NULL, '2024-06-20 03:04:09', '2024-06-20 10:26:45', '2024-06-20 03:26:45'),
(20, 0, 80, 1, 1, 'asd fasd fasf as f 222', 22222, '2024-06-20', 'asd fas df22222', 'draft', 1, NULL, NULL, '2024-06-20 03:04:09', '2024-06-20 10:26:42', '2024-06-20 03:26:42'),
(21, 0, 80, 1, 1, 'asd fasd fasf as f 222', 22222, '2024-06-20', 'asd fas df22222', 'draft', 1, NULL, NULL, '2024-06-20 03:04:15', '2024-06-20 10:25:53', '2024-06-20 03:25:53'),
(22, 0, 80, 1, 1, 'asd fasd fasf as f 222', 22222, '2024-06-20', 'asd fas df22222', 'draft', 1, NULL, NULL, '2024-06-20 03:04:19', '2024-06-20 10:26:38', '2024-06-20 03:26:38'),
(23, 0, 80, 1, 1, 'asd fasd fasf as f 222', 22222, '2024-06-20', 'asd fas df22222', 'draft', 1, NULL, NULL, '2024-06-20 03:04:19', '2024-06-20 10:26:35', '2024-06-20 03:26:35'),
(24, 0, 80, 1, 1, 'asd fasd fasf as f 222', 22222, '2024-06-20', 'asd fas df22222', 'draft', 1, NULL, NULL, '2024-06-20 03:04:19', '2024-06-20 10:26:08', '2024-06-20 03:26:08'),
(25, 0, 80, 1, 1, 'asd fasd fasf as f 222', 22222, '2024-06-20', 'asd fas df22222', 'draft', 1, NULL, NULL, '2024-06-20 03:04:19', '2024-06-20 10:26:05', '2024-06-20 03:26:05'),
(26, 0, 80, 1, 1, 'asd fasd fasf as f 222', 22222, '2024-06-20', 'asd fas df22222', 'draft', 1, NULL, NULL, '2024-06-20 03:05:23', '2024-06-20 10:26:02', '2024-06-20 03:26:02'),
(27, 0, 80, 1, 1, 'asd fasd fasf as f 222', 22222, '2024-06-20', 'asd fas df22222', 'draft', 1, NULL, NULL, '2024-06-20 03:05:23', '2024-06-20 10:26:00', '2024-06-20 03:26:00'),
(28, 0, 80, 1, 1, 'asd fasd fasf as f 222', 22222, '2024-06-20', 'asd fas df22222', 'draft', 1, NULL, NULL, '2024-06-20 03:05:23', '2024-06-20 10:25:56', '2024-06-20 03:25:56'),
(29, 0, 80, 1, 1, 'asd fasd fasf as f 222', 22222, '2024-06-20', 'asd fas df22222', 'draft', 1, NULL, NULL, '2024-06-20 03:05:24', '2024-06-20 10:25:46', '2024-06-20 03:25:46'),
(30, 0, 80, 1, 2, 'asd fasd fasf as f 2222', 232222, '2024-06-20', 'asd fas df 2222', 'draft', 1, NULL, NULL, '2024-06-20 03:07:05', '2024-06-20 10:25:43', '2024-06-20 03:25:43'),
(31, 0, 80, 1, 2, 'asd fasd fasf as f 3333', 2322223333, '2024-06-20', 'asd fas df 22223333', 'draft', 1, NULL, NULL, '2024-06-20 03:09:34', '2024-06-20 10:25:41', '2024-06-20 03:25:41'),
(32, 0, 80, 1, 2, 'asd fasd fasf as f 3333', 2322223333, '2024-06-20', 'asd fas df 22223333', 'draft', 1, NULL, NULL, '2024-06-20 03:09:44', '2024-06-20 10:25:38', '2024-06-20 03:25:38'),
(33, 0, 80, 1, 2, 'asd fasd fasf as f 3333', 2322223333, '2024-06-20', 'asd fas df 22223333', 'draft', 1, NULL, NULL, '2024-06-20 03:09:46', '2024-06-20 10:25:11', '2024-06-20 03:25:11'),
(34, 0, 80, 1, 2, 'asd fasd fasf as f 3333', 2322223333, '2024-06-20', 'asd fas df 22223333', 'draft', 1, NULL, NULL, '2024-06-20 03:09:47', '2024-06-20 10:25:35', '2024-06-20 03:25:35'),
(35, 0, 80, 1, 2, 'asd fasd fasf as f 3333', 2322223333, '2024-06-20', 'asd fas df 22223333', 'draft', 1, NULL, NULL, '2024-06-20 03:09:47', '2024-06-20 10:25:32', '2024-06-20 03:25:32'),
(36, 0, 80, 1, 2, 'asd fasd fasf as f 3333', 2322223333, '2024-06-20', 'asd fas df 22223333', 'draft', 1, NULL, NULL, '2024-06-20 03:09:47', '2024-06-20 10:25:30', '2024-06-20 03:25:30'),
(37, 0, 80, 1, 2, 'asd fasd fasf as f 3333', 2322223333, '2024-06-20', 'asd fas df 22223333', 'draft', 1, NULL, NULL, '2024-06-20 03:10:03', '2024-06-20 10:25:27', '2024-06-20 03:25:27'),
(38, 0, 80, 1, 2, 'asd fasd fasf as f 2222', 232222, '2024-06-20', 'asd fas df 2222', 'draft', 1, NULL, NULL, '2024-06-20 03:17:49', '2024-06-20 10:25:24', '2024-06-20 03:25:24'),
(39, 0, 80, 1, 2, 'asd fasd fasf as f 2222', 232222, '2024-06-20', 'asd fas df 2222', 'draft', 1, NULL, NULL, '2024-06-20 03:17:52', '2024-06-20 10:25:21', '2024-06-20 03:25:21'),
(40, 0, 80, 1, 2, 'asd fasd fasf as f 2222', 232222, '2024-06-20', 'asd fas df 2222', 'draft', 1, NULL, NULL, '2024-06-20 03:17:52', '2024-06-20 10:25:18', '2024-06-20 03:25:18'),
(41, 0, 80, 1, 2, 'asd fasd fasf as f 2222', 232222, '2024-06-20', 'asd fas df 2222', 'draft', 1, NULL, NULL, '2024-06-20 03:17:53', '2024-06-20 10:25:15', '2024-06-20 03:25:15'),
(42, 0, 80, 1, 2, 'asd fasd fasf as f 222255', 23222255, '2024-06-20', 'asd fas df 2222555', 'draft', 1, 1, NULL, '2024-06-20 03:18:06', '2024-06-20 10:26:31', '2024-06-20 03:26:31'),
(43, 0, 25, 209, 1, 'sd fas fsd f', 23232, '2024-06-23', 'sasd fasd f', 'diajukan', 209, NULL, NULL, '2024-06-23 02:50:53', '2024-06-23 09:50:53', NULL),
(44, 0, 81, 209, 279, 'Mohon Ijin Untuk Melakukan Percobaan', 10000, '2024-06-21', 'as dfasd fsad f', 'diajukan', 209, NULL, NULL, '2024-06-23 04:41:17', '2024-06-23 11:41:17', NULL),
(45, 0, 81, 209, 279, 'adsfasfdsadf', 234242, '2024-06-21', 'sd fa f', 'diajukan', 209, NULL, NULL, '2024-06-23 07:08:24', '2024-06-23 14:08:24', NULL),
(46, 0, 81, 209, 279, 'adsfasfdsadf', 234242, '2024-06-21', 'sd fa f', 'diajukan', 209, NULL, NULL, '2024-06-23 07:08:43', '2024-06-23 14:08:43', NULL),
(47, 0, 81, 209, 279, 'adsfasfdsadf', 234242, '2024-06-21', 'sd fa f', 'diajukan', 209, NULL, NULL, '2024-06-23 07:08:53', '2024-06-23 14:08:53', NULL),
(48, 0, 81, 209, 279, 'adsfasfdsadf', 234242, '2024-06-21', 'sd fa f', 'diajukan', 209, NULL, NULL, '2024-06-23 07:09:25', '2024-06-23 14:09:25', NULL),
(49, 0, 81, 209, 279, 'adsfasfdsadf', 234242, '2024-06-21', 'sd fa f', 'diajukan', 209, NULL, NULL, '2024-06-23 07:10:01', '2024-06-23 14:10:01', NULL),
(50, 0, 81, 209, 279, 'adsfasfdsadf', 234242, '2024-06-21', 'sd fa f', 'diajukan', 209, NULL, NULL, '2024-06-23 07:10:42', '2024-06-23 14:10:42', NULL),
(51, 0, 81, 209, 279, 'Mohon Ijin Untuk Melakukan Percobaan', 23234, '2024-06-21', 'sdf asdf', 'draft', 209, NULL, NULL, '2024-06-23 08:04:32', '2024-06-23 15:04:32', NULL),
(52, 0, 81, 209, 279, 'asdfasdfdsf', 234234234, '2024-06-21', 'asd fdas f', 'diajukan', 209, NULL, NULL, '2024-06-23 08:27:32', '2024-06-23 15:27:32', NULL),
(53, 0, 81, 209, 279, 'Ijin Untuk Percobaan', 1000000, '2024-06-07', NULL, 'diajukan', 209, 209, NULL, '2024-06-23 08:40:51', '2024-06-23 16:08:42', NULL);

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
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengajuan_dokumen`
--

INSERT INTO `pengajuan_dokumen` (`id`, `id_pengajuan`, `nama`, `file`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`) VALUES
(1, 7, 'ZB0NIhEjnijsMNW5UgqXUjsV7o5WGaibREXopMiU.pdf', 'uploads/pengajuan/dokumen/7/ZB0NIhEjnijsMNW5UgqXUjsV7o5WGaibREXopMiU.pdf', '2024-06-19 22:56:25', '2024-06-20 05:56:25', 1, NULL, NULL, NULL),
(2, 7, 'LNWfT6K48dQulY6MopGM4lgCuBOcuJNmcalRjaWy.pdf', 'uploads/pengajuan/dokumen/7/LNWfT6K48dQulY6MopGM4lgCuBOcuJNmcalRjaWy.pdf', '2024-06-19 22:56:25', '2024-06-20 05:56:25', 1, NULL, NULL, NULL),
(3, 8, '8iYrZstj5LUkiPTPtCUc2lzT8HObTosb6AcA5Iod.pdf', 'uploads/pengajuan/dokumen/8/8iYrZstj5LUkiPTPtCUc2lzT8HObTosb6AcA5Iod.pdf', '2024-06-19 23:00:36', '2024-06-20 06:00:36', 1, NULL, NULL, NULL),
(4, 8, '7fYE8RqtAYXbz8aa7kQ6Nr49izJA5Cenl1guCVof.pdf', 'uploads/pengajuan/dokumen/8/7fYE8RqtAYXbz8aa7kQ6Nr49izJA5Cenl1guCVof.pdf', '2024-06-19 23:00:36', '2024-06-20 06:00:36', 1, NULL, NULL, NULL),
(5, 9, 'TmS6ISW1m6sNAci9ljhthGUsJihrNTqMyqhKwzIp.pdf', 'uploads/pengajuan/dokumen/9/TmS6ISW1m6sNAci9ljhthGUsJihrNTqMyqhKwzIp.pdf', '2024-06-19 23:03:09', '2024-06-20 06:03:09', 1, NULL, NULL, NULL),
(6, 9, 'SwFIoN9RGytXIunecyJr6O3mQskxZ1DHUzuPr5iF.pdf', 'uploads/pengajuan/dokumen/9/SwFIoN9RGytXIunecyJr6O3mQskxZ1DHUzuPr5iF.pdf', '2024-06-19 23:03:09', '2024-06-20 06:03:09', 1, NULL, NULL, NULL),
(7, 10, 'ycKBh27fDb8p6IBYqDz0hCol7Hc4snQQjraTVhak.pdf', 'uploads/pengajuan/dokumen/10/ycKBh27fDb8p6IBYqDz0hCol7Hc4snQQjraTVhak.pdf', '2024-06-20 00:13:12', '2024-06-20 07:13:12', 1, NULL, NULL, NULL),
(8, 10, 'cVxQFyDpwkZaE3X3dxxmYPnqFavnU4UR8L4KmsiS.pdf', 'uploads/pengajuan/dokumen/10/cVxQFyDpwkZaE3X3dxxmYPnqFavnU4UR8L4KmsiS.pdf', '2024-06-20 00:13:12', '2024-06-20 07:13:12', 1, NULL, NULL, NULL),
(9, 11, 'iGbgTdPDHDnEkDNBvZ7U1EUiBaC7ljNcNUT2npID.pdf', 'uploads/pengajuan/dokumen/11/iGbgTdPDHDnEkDNBvZ7U1EUiBaC7ljNcNUT2npID.pdf', '2024-06-20 00:15:20', '2024-06-20 07:15:20', 1, NULL, NULL, NULL),
(10, 12, 'R08etfLrRfsAXqcmgOFXpnYmoZu8DJyEBfb2kaJr.pdf', 'uploads/pengajuan/dokumen/12/R08etfLrRfsAXqcmgOFXpnYmoZu8DJyEBfb2kaJr.pdf', '2024-06-20 01:02:18', '2024-06-20 08:02:18', 1, NULL, NULL, NULL),
(11, 37, 'UYeWrgftQS8X4313CcPUN9cafKKD6gq5qLjxVg3J.pdf', 'uploads/pengajuan/dokumen/37/UYeWrgftQS8X4313CcPUN9cafKKD6gq5qLjxVg3J.pdf', '2024-06-20 03:10:03', '2024-06-20 10:10:03', 1, NULL, NULL, NULL),
(12, 43, 'wD9VJTXZxp2ORCdOgRnf6xYU6kEfWuUtElMioXTD.pdf', 'uploads/pengajuan/dokumen/43/wD9VJTXZxp2ORCdOgRnf6xYU6kEfWuUtElMioXTD.pdf', '2024-06-23 02:50:54', '2024-06-23 09:50:54', 209, NULL, NULL, NULL),
(13, 44, 'yPH4Kj0cV79QVrVWeGi6MQzXoZ5WPdNJ11z2M774.pdf', 'uploads/pengajuan/dokumen/44/yPH4Kj0cV79QVrVWeGi6MQzXoZ5WPdNJ11z2M774.pdf', '2024-06-23 04:41:18', '2024-06-23 11:41:18', 209, NULL, NULL, NULL),
(14, 44, 'Td6XEeT2HnhZeCMgbY53eVGj718vRh68xTm3ZFIG.pdf', 'uploads/pengajuan/dokumen/44/Td6XEeT2HnhZeCMgbY53eVGj718vRh68xTm3ZFIG.pdf', '2024-06-23 04:41:18', '2024-06-23 11:41:18', 209, NULL, NULL, NULL),
(15, 50, 'y3gNUWsoN8VIDvEXqOSAlyzFhRA3roqjuKVCZ24I.pdf', 'uploads/pengajuan/dokumen/50/y3gNUWsoN8VIDvEXqOSAlyzFhRA3roqjuKVCZ24I.pdf', '2024-06-23 07:10:42', '2024-06-23 14:10:42', 209, NULL, NULL, NULL),
(16, 51, 'hTW5JmXZWklVblVENCJMmcREWfd3OxGPg7hpQlDp.docx', 'uploads/pengajuan/dokumen/51/hTW5JmXZWklVblVENCJMmcREWfd3OxGPg7hpQlDp.docx', '2024-06-23 08:04:32', '2024-06-23 15:04:32', 209, NULL, NULL, NULL),
(17, 52, 'QcLHcK8MJWYXeOhJTZoFR6ONX8SwVPTHR3GQep8W.pdf', 'uploads/pengajuan/dokumen/52/QcLHcK8MJWYXeOhJTZoFR6ONX8SwVPTHR3GQep8W.pdf', '2024-06-23 08:27:32', '2024-06-23 15:27:32', 209, NULL, NULL, NULL),
(18, 52, '71FTMrYtNQYDOJG0CJHzGEMeZIh59LVy7tzdt0c7.docx', 'uploads/pengajuan/dokumen/52/71FTMrYtNQYDOJG0CJHzGEMeZIh59LVy7tzdt0c7.docx', '2024-06-23 08:27:32', '2024-06-23 15:27:32', 209, NULL, NULL, NULL),
(19, 52, '4q3KBoH5sSbt9glHvTdmYVJzj6vKbyaBr7cQARQ8.pdf', 'uploads/pengajuan/dokumen/52/4q3KBoH5sSbt9glHvTdmYVJzj6vKbyaBr7cQARQ8.pdf', '2024-06-23 08:27:32', '2024-06-23 15:27:32', 209, NULL, NULL, NULL),
(20, 53, 'MEJlDvW3bVfGkMOKsTgZesp7sXMnVkUKAQYX5ri7.pdf', 'uploads/pengajuan/dokumen/53/MEJlDvW3bVfGkMOKsTgZesp7sXMnVkUKAQYX5ri7.pdf', '2024-06-23 08:40:51', '2024-06-23 15:40:51', 209, NULL, NULL, NULL);

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
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `tanggal_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengajuan_progress`
--

INSERT INTO `pengajuan_progress` (`id`, `id_pengajuan`, `id_sop`, `id_sop_step`, `id_unit`, `id_user`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `tanggal_update`) VALUES
(1, 49, 81, 406, 0, 0, 'Menunggu Persetujuan', '2024-06-23 07:10:01', '2024-06-23 14:10:01', 0, 0, NULL),
(2, 50, 81, 406, 0, 0, 'Menunggu Persetujuan', '2024-06-23 07:10:42', '2024-06-23 14:10:42', 0, 0, NULL),
(3, 50, 81, 407, 203, 197, 'Menunggu Persetujuan', '2024-06-23 07:10:42', '2024-06-23 14:10:42', 0, 0, NULL),
(4, 50, 81, 408, 183, 178, 'Menunggu Persetujuan', '2024-06-23 07:10:42', '2024-06-23 14:10:42', 0, 0, NULL),
(5, 50, 81, 409, 177, 173, 'Menunggu Persetujuan', '2024-06-23 07:10:42', '2024-06-23 14:10:42', 0, 0, NULL),
(6, 50, 81, 410, 174, 165, 'Menunggu Persetujuan', '2024-06-23 07:10:42', '2024-06-23 14:10:42', 0, 0, NULL),
(7, 50, 81, 411, 6, 169, 'Menunggu Persetujuan', '2024-06-23 07:10:42', '2024-06-23 14:10:42', 0, 0, NULL),
(8, 51, 81, 406, 0, 0, 'Menunggu Persetujuan', '2024-06-23 08:04:32', '2024-06-23 15:04:32', 0, 0, NULL),
(9, 51, 81, 407, 203, 197, 'Menunggu Persetujuan', '2024-06-23 08:04:32', '2024-06-23 15:04:32', 0, 0, NULL),
(10, 51, 81, 408, 183, 178, 'Menunggu Persetujuan', '2024-06-23 08:04:32', '2024-06-23 15:04:32', 0, 0, NULL),
(11, 51, 81, 409, 177, 173, 'Menunggu Persetujuan', '2024-06-23 08:04:32', '2024-06-23 15:04:32', 0, 0, NULL),
(12, 51, 81, 410, 174, 165, 'Menunggu Persetujuan', '2024-06-23 08:04:32', '2024-06-23 15:04:32', 0, 0, NULL),
(13, 51, 81, 411, 6, 169, 'Menunggu Persetujuan', '2024-06-23 08:04:32', '2024-06-23 15:04:32', 0, 0, NULL),
(14, 52, 81, 406, 0, 0, '2', '2024-06-23 08:27:32', '2024-06-23 15:27:32', 0, 0, NULL),
(15, 52, 81, 407, 203, 197, '9', '2024-06-23 08:27:32', '2024-06-23 15:27:32', 0, 0, NULL),
(16, 52, 81, 408, 183, 178, '9', '2024-06-23 08:27:32', '2024-06-23 15:27:32', 0, 0, NULL),
(17, 52, 81, 409, 177, 173, '9', '2024-06-23 08:27:32', '2024-06-23 15:27:32', 0, 0, NULL),
(18, 52, 81, 410, 174, 165, '9', '2024-06-23 08:27:32', '2024-06-23 15:27:32', 0, 0, NULL),
(19, 52, 81, 411, 6, 169, '9', '2024-06-23 08:27:32', '2024-06-23 15:27:32', 0, 0, NULL),
(20, 53, 81, 406, 279, 209, 'diajukan', '2024-06-23 09:08:16', '2024-06-23 16:08:16', 0, 0, NULL),
(21, 53, 81, 407, 203, 197, 'disetujui', '2024-06-23 09:08:42', '2024-06-23 21:24:39', 0, 197, NULL),
(22, 53, 81, 408, 183, 178, 'menunggu persetujuan', '2024-06-23 09:08:42', '2024-06-23 16:08:42', 0, 0, NULL),
(23, 53, 81, 409, 177, 173, 'menunggu persetujuan', '2024-06-23 09:08:42', '2024-06-23 16:08:42', 0, 0, NULL),
(24, 53, 81, 410, 174, 165, 'menunggu persetujuan', '2024-06-23 09:08:42', '2024-06-23 16:08:42', 0, 0, NULL),
(25, 53, 81, 411, 6, 169, 'menunggu persetujuan', '2024-06-23 09:08:42', '2024-06-23 16:08:42', 0, 0, NULL);

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
(506, 'adminlte.darkmode.toggle', 'web', '2024-06-24 05:01:11', '2024-06-24 05:01:11'),
(507, 'sanctum.csrf-cookie', 'web', '2024-06-24 05:01:11', '2024-06-24 05:01:11'),
(508, 'livewire.update', 'web', '2024-06-24 05:01:11', '2024-06-24 05:01:11'),
(509, 'livewire.upload-file', 'web', '2024-06-24 05:01:11', '2024-06-24 05:01:11'),
(510, 'livewire.preview-file', 'web', '2024-06-24 05:01:11', '2024-06-24 05:01:11'),
(511, 'ignition.healthCheck', 'web', '2024-06-24 05:01:12', '2024-06-24 05:01:12'),
(512, 'ignition.executeSolution', 'web', '2024-06-24 05:01:12', '2024-06-24 05:01:12'),
(513, 'ignition.updateConfig', 'web', '2024-06-24 05:01:12', '2024-06-24 05:01:12'),
(514, 'login', 'web', '2024-06-24 05:01:12', '2024-06-24 05:01:12'),
(515, 'logout', 'web', '2024-06-24 05:01:12', '2024-06-24 05:01:12'),
(516, 'register', 'web', '2024-06-24 05:01:12', '2024-06-24 05:01:12'),
(517, 'password.request', 'web', '2024-06-24 05:01:13', '2024-06-24 05:01:13'),
(518, 'password.email', 'web', '2024-06-24 05:01:13', '2024-06-24 05:01:13'),
(519, 'password.reset', 'web', '2024-06-24 05:01:13', '2024-06-24 05:01:13'),
(520, 'password.update', 'web', '2024-06-24 05:01:13', '2024-06-24 05:01:13'),
(521, 'password.confirm', 'web', '2024-06-24 05:01:13', '2024-06-24 05:01:13'),
(522, 'admin.halaman.index', 'web', '2024-06-24 05:01:13', '2024-06-24 05:01:13'),
(523, 'admin.halaman.create', 'web', '2024-06-24 05:01:13', '2024-06-24 05:01:13'),
(524, 'admin.halaman.store', 'web', '2024-06-24 05:01:13', '2024-06-24 05:01:13'),
(525, 'admin.halaman.show', 'web', '2024-06-24 05:01:13', '2024-06-24 05:01:13'),
(526, 'admin.halaman.edit', 'web', '2024-06-24 05:01:13', '2024-06-24 05:01:13'),
(527, 'admin.halaman.update', 'web', '2024-06-24 05:01:13', '2024-06-24 05:01:13'),
(528, 'admin.halaman.destroy', 'web', '2024-06-24 05:01:14', '2024-06-24 05:01:14'),
(529, 'admin.menu.index', 'web', '2024-06-24 05:01:14', '2024-06-24 05:01:14'),
(530, 'admin.menu.create', 'web', '2024-06-24 05:01:14', '2024-06-24 05:01:14'),
(531, 'admin.menu.store', 'web', '2024-06-24 05:01:14', '2024-06-24 05:01:14'),
(532, 'admin.menu.show', 'web', '2024-06-24 05:01:14', '2024-06-24 05:01:14'),
(533, 'admin.menu.edit', 'web', '2024-06-24 05:01:14', '2024-06-24 05:01:14'),
(534, 'admin.menu.update', 'web', '2024-06-24 05:01:14', '2024-06-24 05:01:14'),
(535, 'admin.menu.destroy', 'web', '2024-06-24 05:01:14', '2024-06-24 05:01:14'),
(536, 'admin.faq.index', 'web', '2024-06-24 05:01:14', '2024-06-24 05:01:14'),
(537, 'admin.faq.create', 'web', '2024-06-24 05:01:14', '2024-06-24 05:01:14'),
(538, 'admin.faq.store', 'web', '2024-06-24 05:01:14', '2024-06-24 05:01:14'),
(539, 'admin.faq.show', 'web', '2024-06-24 05:01:14', '2024-06-24 05:01:14'),
(540, 'admin.faq.edit', 'web', '2024-06-24 05:01:14', '2024-06-24 05:01:14'),
(541, 'admin.faq.update', 'web', '2024-06-24 05:01:14', '2024-06-24 05:01:14'),
(542, 'admin.faq.destroy', 'web', '2024-06-24 05:01:14', '2024-06-24 05:01:14'),
(543, 'admin.pengajuan.index', 'web', '2024-06-24 05:01:14', '2024-06-24 05:01:14'),
(544, 'admin.pengajuan.create', 'web', '2024-06-24 05:01:14', '2024-06-24 05:01:14'),
(545, 'admin.pengajuan.store', 'web', '2024-06-24 05:01:14', '2024-06-24 05:01:14'),
(546, 'admin.pengajuan.show', 'web', '2024-06-24 05:01:14', '2024-06-24 05:01:14'),
(547, 'admin.pengajuan.edit', 'web', '2024-06-24 05:01:15', '2024-06-24 05:01:15'),
(548, 'admin.pengajuan.update', 'web', '2024-06-24 05:01:15', '2024-06-24 05:01:15'),
(549, 'admin.pengajuan.destroy', 'web', '2024-06-24 05:01:15', '2024-06-24 05:01:15'),
(550, 'admin.tindakan.index', 'web', '2024-06-24 05:01:15', '2024-06-24 05:01:15'),
(551, 'admin.tindakan.create', 'web', '2024-06-24 05:01:15', '2024-06-24 05:01:15'),
(552, 'admin.tindakan.store', 'web', '2024-06-24 05:01:15', '2024-06-24 05:01:15'),
(553, 'admin.tindakan.show', 'web', '2024-06-24 05:01:15', '2024-06-24 05:01:15'),
(554, 'admin.tindakan.edit', 'web', '2024-06-24 05:01:15', '2024-06-24 05:01:15'),
(555, 'admin.tindakan.update', 'web', '2024-06-24 05:01:15', '2024-06-24 05:01:15'),
(556, 'admin.tindakan.destroy', 'web', '2024-06-24 05:01:15', '2024-06-24 05:01:15'),
(557, 'admin.laporan.index', 'web', '2024-06-24 05:01:15', '2024-06-24 05:01:15'),
(558, 'admin.laporan.create', 'web', '2024-06-24 05:01:15', '2024-06-24 05:01:15'),
(559, 'admin.laporan.store', 'web', '2024-06-24 05:01:15', '2024-06-24 05:01:15'),
(560, 'admin.laporan.show', 'web', '2024-06-24 05:01:16', '2024-06-24 05:01:16'),
(561, 'admin.laporan.edit', 'web', '2024-06-24 05:01:16', '2024-06-24 05:01:16'),
(562, 'admin.laporan.update', 'web', '2024-06-24 05:01:16', '2024-06-24 05:01:16'),
(563, 'admin.laporan.destroy', 'web', '2024-06-24 05:01:16', '2024-06-24 05:01:16'),
(564, 'admin.sop.index', 'web', '2024-06-24 05:01:16', '2024-06-24 05:01:16'),
(565, 'admin.sop.create', 'web', '2024-06-24 05:01:16', '2024-06-24 05:01:16'),
(566, 'admin.sop.store', 'web', '2024-06-24 05:01:16', '2024-06-24 05:01:16'),
(567, 'admin.sop.show', 'web', '2024-06-24 05:01:17', '2024-06-24 05:01:17'),
(568, 'admin.sop.edit', 'web', '2024-06-24 05:01:17', '2024-06-24 05:01:17'),
(569, 'admin.sop.update', 'web', '2024-06-24 05:01:17', '2024-06-24 05:01:17'),
(570, 'admin.sop.destroy', 'web', '2024-06-24 05:01:17', '2024-06-24 05:01:17'),
(571, 'admin.unit.index', 'web', '2024-06-24 05:01:17', '2024-06-24 05:01:17'),
(572, 'admin.unit.create', 'web', '2024-06-24 05:01:17', '2024-06-24 05:01:17'),
(573, 'admin.unit.store', 'web', '2024-06-24 05:01:17', '2024-06-24 05:01:17'),
(574, 'admin.unit.show', 'web', '2024-06-24 05:01:17', '2024-06-24 05:01:17'),
(575, 'admin.unit.edit', 'web', '2024-06-24 05:01:17', '2024-06-24 05:01:17'),
(576, 'admin.unit.update', 'web', '2024-06-24 05:01:18', '2024-06-24 05:01:18'),
(577, 'admin.unit.destroy', 'web', '2024-06-24 05:01:18', '2024-06-24 05:01:18'),
(578, 'admin.unit.generateCode', 'web', '2024-06-24 05:01:18', '2024-06-24 05:01:18'),
(579, 'admin.unit.updateSort', 'web', '2024-06-24 05:01:18', '2024-06-24 05:01:18'),
(580, 'admin.riwayat.index', 'web', '2024-06-24 05:01:18', '2024-06-24 05:01:18'),
(581, 'admin.riwayat.create', 'web', '2024-06-24 05:01:18', '2024-06-24 05:01:18'),
(582, 'admin.riwayat.store', 'web', '2024-06-24 05:01:19', '2024-06-24 05:01:19'),
(583, 'admin.riwayat.show', 'web', '2024-06-24 05:01:19', '2024-06-24 05:01:19'),
(584, 'admin.riwayat.edit', 'web', '2024-06-24 05:01:19', '2024-06-24 05:01:19'),
(585, 'admin.riwayat.update', 'web', '2024-06-24 05:01:19', '2024-06-24 05:01:19'),
(586, 'admin.riwayat.destroy', 'web', '2024-06-24 05:01:19', '2024-06-24 05:01:19'),
(587, 'admin.roles.index', 'web', '2024-06-24 05:01:19', '2024-06-24 05:01:19'),
(588, 'admin.roles.create', 'web', '2024-06-24 05:01:19', '2024-06-24 05:01:19'),
(589, 'admin.roles.store', 'web', '2024-06-24 05:01:19', '2024-06-24 05:01:19'),
(590, 'admin.roles.show', 'web', '2024-06-24 05:01:19', '2024-06-24 05:01:19'),
(591, 'admin.roles.edit', 'web', '2024-06-24 05:01:19', '2024-06-24 05:01:19'),
(592, 'admin.roles.update', 'web', '2024-06-24 05:01:19', '2024-06-24 05:01:19'),
(593, 'admin.roles.destroy', 'web', '2024-06-24 05:01:19', '2024-06-24 05:01:19'),
(594, 'admin.users.index', 'web', '2024-06-24 05:01:20', '2024-06-24 05:01:20'),
(595, 'admin.users.create', 'web', '2024-06-24 05:01:20', '2024-06-24 05:01:20'),
(596, 'admin.users.store', 'web', '2024-06-24 05:01:20', '2024-06-24 05:01:20'),
(597, 'admin.users.show', 'web', '2024-06-24 05:01:20', '2024-06-24 05:01:20'),
(598, 'admin.users.edit', 'web', '2024-06-24 05:01:20', '2024-06-24 05:01:20'),
(599, 'admin.users.update', 'web', '2024-06-24 05:01:20', '2024-06-24 05:01:20'),
(600, 'admin.users.destroy', 'web', '2024-06-24 05:01:21', '2024-06-24 05:01:21'),
(601, 'admin.ubah-password.index', 'web', '2024-06-24 05:01:21', '2024-06-24 05:01:21'),
(602, 'admin.ubah-password.create', 'web', '2024-06-24 05:01:21', '2024-06-24 05:01:21'),
(603, 'admin.ubah-password.store', 'web', '2024-06-24 05:01:21', '2024-06-24 05:01:21'),
(604, 'admin.ubah-password.show', 'web', '2024-06-24 05:01:21', '2024-06-24 05:01:21'),
(605, 'admin.ubah-password.edit', 'web', '2024-06-24 05:01:21', '2024-06-24 05:01:21'),
(606, 'admin.ubah-password.update', 'web', '2024-06-24 05:01:21', '2024-06-24 05:01:21'),
(607, 'admin.ubah-password.destroy', 'web', '2024-06-24 05:01:22', '2024-06-24 05:01:22'),
(608, 'admin.pengajuan.document', 'web', '2024-06-24 05:01:22', '2024-06-24 05:01:22'),
(609, 'admin.pengajuan.step', 'web', '2024-06-24 05:01:22', '2024-06-24 05:01:22'),
(610, 'admin.pengajuan.print', 'web', '2024-06-24 05:01:22', '2024-06-24 05:01:22'),
(611, 'admin.pengajuan.pdf', 'web', '2024-06-24 05:01:22', '2024-06-24 05:01:22'),
(612, 'admin.pengajuan.formUploadDokumen', 'web', '2024-06-24 05:01:23', '2024-06-24 05:01:23'),
(613, 'admin.pengajuan.uploadDokumen', 'web', '2024-06-24 05:01:23', '2024-06-24 05:01:23'),
(614, 'admin.pengajuan.stepDetail', 'web', '2024-06-24 05:01:23', '2024-06-24 05:01:23'),
(615, 'admin.pengajuan.formMessage', 'web', '2024-06-24 05:01:23', '2024-06-24 05:01:23'),
(616, 'admin.pengajuan.postMessage', 'web', '2024-06-24 05:01:23', '2024-06-24 05:01:23'),
(617, 'admin.pengajuan.getStepSop', 'web', '2024-06-24 05:01:23', '2024-06-24 05:01:23'),
(618, 'admin.tindakan.stepDetail', 'web', '2024-06-24 05:01:23', '2024-06-24 05:01:23'),
(619, 'admin.tindakan.formMessage', 'web', '2024-06-24 05:01:24', '2024-06-24 05:01:24'),
(620, 'admin.tindakan.postMessage', 'web', '2024-06-24 05:01:24', '2024-06-24 05:01:24'),
(621, 'admin.tindakan.getStepSop', 'web', '2024-06-24 05:01:24', '2024-06-24 05:01:24'),
(622, 'admin.tindakan.updateStatus', 'web', '2024-06-24 05:01:24', '2024-06-24 05:01:24'),
(623, 'admin.sop.formUploadDokumen', 'web', '2024-06-24 05:01:24', '2024-06-24 05:01:24'),
(624, 'admin.sop.uploadDokumen', 'web', '2024-06-24 05:01:24', '2024-06-24 05:01:24'),
(625, 'admin.sop.checkKode', 'web', '2024-06-24 05:01:24', '2024-06-24 05:01:24'),
(626, 'admin.sop.editFlowStep', 'web', '2024-06-24 05:01:24', '2024-06-24 05:01:24'),
(627, 'admin.sop.flowStep', 'web', '2024-06-24 05:01:24', '2024-06-24 05:01:24'),
(628, 'admin.sop.updateStep', 'web', '2024-06-24 05:01:25', '2024-06-24 05:01:25'),
(629, 'home', 'web', '2024-06-24 05:01:25', '2024-06-24 05:01:25');

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
  `unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `unit_id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Admin', 'web', '2024-06-11 09:21:47', '2024-06-11 09:21:47'),
(2, NULL, 'Pengguna', 'web', '2024-06-20 04:09:05', '2024-06-20 04:09:05'),
(3, NULL, 'Pimpinan', 'web', '2024-06-21 21:35:09', '2024-06-21 21:35:09');

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
(506, 1),
(507, 1),
(508, 1),
(509, 1),
(510, 1),
(511, 1),
(512, 1),
(513, 1),
(514, 1),
(515, 1),
(516, 1),
(517, 1),
(518, 1),
(519, 1),
(520, 1),
(521, 1),
(522, 1),
(523, 1),
(524, 1),
(525, 1),
(526, 1),
(527, 1),
(528, 1),
(529, 1),
(530, 1),
(531, 1),
(532, 1),
(533, 1),
(534, 1),
(535, 1),
(536, 1),
(537, 1),
(538, 1),
(539, 1),
(540, 1),
(541, 1),
(542, 1),
(543, 1),
(544, 1),
(545, 1),
(546, 1),
(547, 1),
(548, 1),
(549, 1),
(550, 1),
(551, 1),
(552, 1),
(553, 1),
(554, 1),
(555, 1),
(556, 1),
(557, 1),
(558, 1),
(559, 1),
(560, 1),
(561, 1),
(562, 1),
(563, 1),
(564, 1),
(565, 1),
(566, 1),
(567, 1),
(568, 1),
(569, 1),
(570, 1),
(571, 1),
(572, 1),
(573, 1),
(574, 1),
(575, 1),
(576, 1),
(577, 1),
(578, 1),
(579, 1),
(580, 1),
(581, 1),
(582, 1),
(583, 1),
(584, 1),
(585, 1),
(586, 1),
(587, 1),
(588, 1),
(589, 1),
(590, 1),
(591, 1),
(592, 1),
(593, 1),
(594, 1),
(595, 1),
(596, 1),
(597, 1),
(598, 1),
(599, 1),
(600, 1),
(601, 1),
(602, 1),
(603, 1),
(604, 1),
(605, 1),
(606, 1),
(607, 1),
(608, 1),
(609, 1),
(610, 1),
(611, 1),
(612, 1),
(613, 1),
(614, 1),
(615, 1),
(616, 1),
(617, 1),
(618, 1),
(619, 1),
(620, 1),
(621, 1),
(622, 1),
(623, 1),
(624, 1),
(625, 1),
(626, 1),
(627, 1),
(628, 1),
(629, 1);

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
  `kode` char(20) DEFAULT NULL,
  `sop` varchar(56) DEFAULT NULL,
  `prosedur` varchar(433) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `updated_by` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `sops`
--

INSERT INTO `sops` (`id`, `kode`, `sop`, `prosedur`, `created_by`, `created_at`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 'SOP0001', 'SOP Penerimaan Mahasiswa Baru', 'Calon mahasiswa mengisi formulir pendaftaran.\nFormulir dan berkas pendukung diserahkan ke bagian penerimaan mahasiswa baru.\nSeleksi administratif dan akademik dilakukan.\nPengumuman hasil seleksi disampaikan kepada calon mahasiswa.\nMahasiswa yang diterima melakukan registrasi dan pembayaran administrasi.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(2, 'SOP0002', 'SOP Peminjaman Barang/Alat', 'Pemohon mengisi formulir peminjaman barang/alat.\nFormulir diserahkan ke bagian administrasi atau pihak yang berwenang.\nPihak berwenang memeriksa dan menyetujui permohonan.\nPeminjam mengambil barang dengan menunjukkan tanda bukti persetujuan.\nBarang dikembalikan sesuai jadwal, dan kondisi barang diperiksa oleh petugas inventaris.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(3, 'SOP0003', 'SOP Pengajuan Beasiswa', 'Mahasiswa mengisi formulir pengajuan beasiswa.\nFormulir diserahkan ke bagian beasiswa atau kemahasiswaan.\nBerkas pengajuan diperiksa dan diverifikasi.\nJika diperlukan, wawancara dilakukan dengan pemohon.\nKeputusan akhir diumumkan kepada pemohon melalui surat resmi atau email.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(4, 'SOP0004', 'SOP Pengajuan Cuti Akademik', 'Mahasiswa mengisi formulir pengajuan cuti akademik.\nFormulir diserahkan ke bagian akademik atau dekanat.\nPermohonan diperiksa dan diverifikasi.\nKeputusan persetujuan atau penolakan diberikan kepada mahasiswa.\nDokumentasi cuti akademik dicatat dan disimpan dalam arsip mahasiswa.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(5, 'SOP0005', 'SOP Pengajuan Penelitian', 'Dosen/mahasiswa mengisi formulir pengajuan penelitian.\nFormulir diserahkan ke bagian penelitian atau lembaga penelitian universitas.\nPengajuan diperiksa dan dievaluasi oleh tim penilai.\nJika diperlukan, revisi proposal diminta kepada pemohon.\nKeputusan akhir diberikan, dan penelitian dapat dimulai sesuai ketentuan yang berlaku.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(6, 'SOP0006', 'SOP Penggunaan Ruang Kelas/Laboratorium', 'Pihak yang membutuhkan mengisi formulir pemesanan ruang.\nFormulir diserahkan ke bagian administrasi atau pengelola fasilitas.\nPemeriksaan ketersediaan ruang dilakukan.\nPersetujuan pemakaian ruang diberikan, dan jadwal pemakaian dicatat.\nSetelah penggunaan, ruang diperiksa kembali untuk memastikan kebersihan dan kelengkapannya.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(7, 'SOP0007', 'SOP Pengajuan Surat Keterangan', 'Mahasiswa/dosen mengisi formulir pengajuan surat keterangan.\nFormulir diserahkan ke bagian administrasi atau akademik.\nVerifikasi data dilakukan oleh pihak berwenang.\nSurat keterangan dibuat dan ditandatangani oleh pejabat berwenang.\nSurat keterangan diserahkan kepada pemohon.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(8, 'SOP0008', 'SOP Pelayanan Administrasi Akademik', 'Mahasiswa mengisi formulir permohonan administrasi akademik (misalnya, transkrip, ijazah).\nFormulir diserahkan ke bagian administrasi akademik.\nPermohonan diproses dan diverifikasi.\nDokumen akademik yang diminta dibuat dan ditandatangani.\nDokumen diserahkan kepada pemohon.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(9, 'SOP0009', 'SOP Pelaporan Kerusakan Fasilitas', 'Pihak yang mengetahui kerusakan mengisi formulir pelaporan kerusakan.\nFormulir diserahkan ke bagian pengelolaan fasilitas.\nPemeriksaan kerusakan dilakukan oleh teknisi.\nPerbaikan dilakukan sesuai dengan tingkat kerusakan.\nDokumentasi perbaikan dicatat untuk keperluan pemeliharaan.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(10, 'SOP0010', 'SOP Kegiatan Mahasiswa', 'Mahasiswa mengisi formulir pengajuan kegiatan.\nFormulir diserahkan ke bagian kemahasiswaan.\nPermohonan diperiksa dan diverifikasi.\nJika disetujui, surat izin kegiatan dikeluarkan.\nKegiatan dilaksanakan sesuai dengan rencana, dan laporan kegiatan diserahkan setelah selesai.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(11, 'SOP0011', 'SOP Penyelenggaraan Ujian', 'Pengumuman jadwal ujian diberikan kepada mahasiswa.\nMahasiswa mendaftar untuk mengikuti ujian sesuai jadwal.\nSoal ujian disiapkan oleh dosen pengajar.\nPelaksanaan ujian dilakukan sesuai dengan jadwal dan prosedur yang ditetapkan.\nPengumpulan hasil ujian dan penilaian dilakukan oleh dosen.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(12, 'SOP0012', 'SOP Penerbitan Ijazah dan Transkrip Nilai', 'Mahasiswa mengajukan permohonan penerbitan ijazah dan transkrip nilai.\nVerifikasi kelulusan dan administrasi akademik dilakukan.\nIjazah dan transkrip nilai disiapkan dan ditandatangani oleh pejabat berwenang.\nDokumen diserahkan kepada mahasiswa yang telah menyelesaikan semua persyaratan.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(13, 'SOP0013', 'SOP Perpustakaan', 'Mahasiswa dan staf mendaftar sebagai anggota perpustakaan.\nBuku atau materi perpustakaan dipinjam dengan menunjukkan kartu anggota.\nPengembalian buku dilakukan sesuai dengan tenggat waktu yang ditentukan.\nDenda dikenakan untuk keterlambatan pengembalian buku.\nInventarisasi dan pemeliharaan koleksi perpustakaan dilakukan secara berkala.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(14, 'SOP0014', 'SOP Kegiatan Penelitian dan Pengabdian Masyarakat', 'Dosen mengajukan proposal kegiatan penelitian atau pengabdian masyarakat.\nProposal diperiksa dan dievaluasi oleh komite penelitian.\nPersetujuan dan pendanaan diberikan jika proposal memenuhi syarat.\nPelaksanaan kegiatan dilakukan sesuai dengan rencana yang telah disetujui.\nLaporan akhir diserahkan kepada komite penelitian untuk evaluasi.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(15, 'SOP0015', 'SOP Penerimaan Dosen dan Staf', 'Pengumuman lowongan pekerjaan disebarkan melalui media resmi.\nCalon dosen dan staf mengirimkan lamaran pekerjaan.\nSeleksi administratif dan wawancara dilakukan.\nKeputusan penerimaan diberikan kepada calon yang memenuhi syarat.\nDosen dan staf baru melakukan orientasi dan registrasi.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(16, 'SOP0016', 'SOP Penggunaan Laboratorium', 'Mahasiswa dan dosen mengajukan permohonan penggunaan laboratorium.\nPermohonan disetujui oleh kepala laboratorium.\nPenggunaan laboratorium dilakukan sesuai dengan jadwal dan aturan yang berlaku.\nPeralatan laboratorium diperiksa sebelum dan setelah penggunaan.\nLaporan penggunaan laboratorium diserahkan kepada kepala laboratorium.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(17, 'SOP0017', 'SOP Penyelenggaraan Seminar dan Workshop', 'Panitia mengajukan proposal penyelenggaraan seminar atau workshop.\nProposal diperiksa dan disetujui oleh pihak berwenang.\nPersiapan logistik dan materi dilakukan oleh panitia.\nPelaksanaan seminar atau workshop sesuai dengan jadwal yang telah ditetapkan.\nLaporan kegiatan diserahkan kepada pihak berwenang setelah acara selesai.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(18, 'SOP0018', 'SOP Penerimaan dan Pengelolaan Dana Hibah', 'Proposal dana hibah diajukan oleh dosen atau mahasiswa.\nProposal diperiksa dan dievaluasi oleh komite hibah.\nPersetujuan dan pencairan dana hibah dilakukan jika proposal memenuhi syarat.\nPengelolaan dana hibah dilakukan sesuai dengan rencana anggaran yang diajukan.\nLaporan penggunaan dana hibah diserahkan kepada komite hibah.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(19, 'SOP0019', 'SOP Penyelenggaraan Program Studi', 'Kurikulum program studi disusun oleh tim kurikulum.\nKurikulum disetujui oleh senat universitas.\nPelaksanaan program studi dilakukan sesuai dengan kurikulum yang telah disetujui.\nEvaluasi program studi dilakukan secara berkala.\nLaporan hasil evaluasi diserahkan kepada senat universitas untuk perbaikan kurikulum.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(20, 'SOP0020', 'SOP Pelaporan dan Penanganan Pelanggaran Akademik', 'Laporan pelanggaran akademik diajukan oleh pihak yang mengetahui pelanggaran.\nLaporan diperiksa oleh komite disiplin akademik.\nInvestigasi dan verifikasi dilakukan terhadap laporan pelanggaran.\nKeputusan sanksi diberikan jika pelanggaran terbukti.\nDokumentasi pelanggaran dan sanksi disimpan untuk keperluan administrasi.\n', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(21, 'SOP0021', 'SOP Pengajuan Pembimbing Skripsi/Tesis/Disertasi', 'Mahasiswa mengisi formulir pengajuan pembimbing skripsi/tesis/disertasi.\nFormulir diserahkan ke bagian akademik atau program studi.\nPermohonan diproses dan pembimbing ditetapkan sesuai dengan keahlian dan ketersediaan.\nSurat keputusan pembimbing diserahkan kepada mahasiswa.\nMahasiswa mulai konsultasi dengan pembimbing yang telah ditetapkan.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(22, 'SOP0022', 'SOP Pengajuan Pembatalan Mata Kuliah', 'Mahasiswa mengisi formulir pembatalan mata kuliah.\nFormulir diserahkan ke bagian akademik atau program studi.\nVerifikasi dan persetujuan dilakukan oleh pihak berwenang.\nPembatalan mata kuliah dicatat dalam sistem administrasi akademik.\nMahasiswa diberitahukan tentang status pembatalan.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(23, 'SOP0023', 'SOP Pendaftaran Wisuda', 'Mahasiswa mengisi formulir pendaftaran wisuda.\nFormulir dan berkas pendukung diserahkan ke bagian akademik atau registrasi.\nVerifikasi kelulusan dan administrasi dilakukan.\nPembayaran biaya wisuda dilakukan sesuai ketentuan.\nMahasiswa menerima informasi mengenai jadwal dan tata cara pelaksanaan wisuda.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(24, 'SOP0024', 'SOP Pengelolaan Jurnal Ilmiah', 'Penulis mengirimkan naskah ke redaksi jurnal ilmiah.\nNaskah diperiksa oleh editor untuk memastikan kesesuaian dengan pedoman jurnal.\nNaskah dikirim ke reviewer untuk proses peer review.\nHasil review dikirim kembali ke penulis untuk revisi jika diperlukan.\nNaskah yang telah direvisi dan disetujui diterbitkan dalam jurnal ilmiah.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(25, 'SOP0025', 'SOP Kegiatan Alumni', 'Alumni mengisi formulir pendaftaran kegiatan alumni.\nFormulir diserahkan ke bagian alumni atau kemahasiswaan.\nVerifikasi data alumni dilakukan.\nPersiapan logistik dan agenda kegiatan dilakukan.\nPelaksanaan kegiatan alumni dan dokumentasi hasil kegiatan.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(26, 'SOP0026', 'SOP Pemeliharaan Infrastruktur Kampus', 'Identifikasi kebutuhan pemeliharaan dilakukan oleh tim fasilitas.\nRencana pemeliharaan disusun dan disetujui oleh pihak berwenang.\nPelaksanaan pemeliharaan sesuai dengan jadwal yang ditetapkan.\nMonitoring dan evaluasi hasil pemeliharaan dilakukan.\nLaporan pemeliharaan disimpan untuk keperluan audit dan perencanaan.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(27, 'SOP0027', 'SOP Pengelolaan Dana Penelitian', 'Peneliti mengajukan proposal dana penelitian.\nProposal diperiksa dan dievaluasi oleh komite penelitian.\nPersetujuan dan pencairan dana dilakukan sesuai dengan prosedur yang berlaku.\nPengelolaan dana dilakukan sesuai dengan rencana anggaran yang diajukan.\nLaporan penggunaan dana diserahkan kepada komite penelitian.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(28, 'SOP0028', 'SOP Pengelolaan Kegiatan Ekstrakurikuler', 'Mahasiswa mengajukan proposal kegiatan ekstrakurikuler.\nProposal diperiksa dan disetujui oleh bagian kemahasiswaan.\nPersiapan kegiatan dilakukan sesuai dengan rencana yang telah disetujui.\nPelaksanaan kegiatan ekstrakurikuler dan monitoring oleh pihak berwenang.\nLaporan kegiatan diserahkan kepada bagian kemahasiswaan.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(29, 'SOP0029', 'SOP Pengelolaan Kegiatan Pertukaran Mahasiswa', 'Mahasiswa mengisi formulir pendaftaran program pertukaran.\nFormulir diserahkan ke bagian internasional atau kemahasiswaan.\nSeleksi dilakukan berdasarkan kriteria yang telah ditetapkan.\nMahasiswa yang terpilih mendapatkan informasi mengenai persiapan dan keberangkatan.\nLaporan hasil program pertukaran diserahkan setelah selesai.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(30, 'SOP0030', 'SOP Pengelolaan Kegiatan Pengabdian Masyarakat', 'Dosen atau mahasiswa mengajukan proposal kegiatan pengabdian masyarakat.\nProposal diperiksa dan dievaluasi oleh komite pengabdian masyarakat.\nPersetujuan dan pendanaan diberikan jika proposal memenuhi syarat.\nPelaksanaan kegiatan sesuai dengan rencana yang telah disetujui.\nLaporan akhir diserahkan kepada komite pengabdian masyarakat untuk evaluasi.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(31, 'SOP0031', 'SOP Penanganan Keluhan Mahasiswa', 'Mahasiswa mengisi formulir keluhan yang disediakan.\nFormulir keluhan diserahkan ke bagian layanan mahasiswa atau bagian terkait.\nVerifikasi dan penyelidikan dilakukan terhadap keluhan yang diajukan.\nTindakan perbaikan atau solusi diberikan kepada mahasiswa.\nDokumentasi keluhan dan penyelesaiannya disimpan untuk evaluasi lebih lanjut.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(32, 'SOP0032', 'SOP Penerimaan Mahasiswa Internasional', 'Calon mahasiswa internasional mengisi formulir pendaftaran.\nFormulir dan berkas pendukung diserahkan ke bagian internasional atau penerimaan mahasiswa.\nSeleksi administratif dan akademik dilakukan.\nPengumuman hasil seleksi disampaikan kepada calon mahasiswa internasional.\nMahasiswa internasional yang diterima melakukan registrasi dan orientasi.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(33, 'SOP0033', 'SOP Penggunaan Sistem Informasi Akademik', 'Mahasiswa dan staf diberikan akses ke sistem informasi akademik.\nPelatihan penggunaan sistem dilakukan untuk pengguna baru.\nPenggunaan sistem dilakukan sesuai dengan pedoman yang telah ditetapkan.\nMonitoring dan pemeliharaan sistem dilakukan secara berkala.\nLaporan dan analisis penggunaan sistem diserahkan kepada pihak berwenang.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(34, 'SOP0034', 'SOP Pengelolaan Dana Kemahasiswaan', 'Organisasi mahasiswa mengajukan proposal dana kegiatan.\nProposal diperiksa dan dievaluasi oleh bagian kemahasiswaan.\nPersetujuan dan pencairan dana dilakukan jika proposal memenuhi syarat.\nPengelolaan dana dilakukan sesuai dengan rencana anggaran yang diajukan.\nLaporan penggunaan dana diserahkan kepada bagian kemahasiswaan.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(35, 'SOP0035', 'SOP Penanganan Keadaan Darurat di Kampus', 'Identifikasi keadaan darurat dilakukan oleh tim keamanan kampus.\nProtokol evakuasi dan penanganan darurat diaktifkan.\nInformasi keadaan darurat disampaikan kepada seluruh civitas akademika.\nKoordinasi dengan pihak terkait (misalnya, pemadam kebakaran, polisi) dilakukan.\nEvaluasi dan laporan keadaan darurat disusun setelah situasi terkendali.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(36, 'SOP0036', 'SOP Penyelenggaraan Kegiatan Akademik Daring', 'Dosen merancang dan menyusun materi perkuliahan daring.\nJadwal dan platform perkuliahan daring diinformasikan kepada mahasiswa.\nPelaksanaan perkuliahan daring sesuai dengan jadwal yang ditetapkan.\nEvaluasi dan umpan balik dari mahasiswa dikumpulkan.\nPerbaikan dan penyesuaian materi perkuliahan dilakukan berdasarkan umpan balik.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(37, 'SOP0037', 'SOP Pengelolaan Asrama Mahasiswa', 'Mahasiswa mengajukan permohonan tinggal di asrama.\nPermohonan diserahkan ke bagian pengelolaan asrama.\nVerifikasi data dan penempatan kamar dilakukan.\nMahasiswa menerima informasi mengenai peraturan dan fasilitas asrama.\nMonitoring dan pemeliharaan fasilitas asrama dilakukan secara berkala.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(38, 'SOP0038', 'SOP Pengelolaan Data Mahasiswa', 'Data mahasiswa dikumpulkan dan dimasukkan ke dalam sistem informasi akademik.\nVerifikasi dan validasi data dilakukan secara berkala.\nAkses dan penggunaan data dilakukan sesuai dengan kebijakan privasi.\nPembaruan data dilakukan oleh mahasiswa atau pihak berwenang jika ada perubahan.\nLaporan dan analisis data mahasiswa disusun untuk keperluan administrasi dan akademik.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(39, 'SOP0039', 'SOP Penyelenggaraan Pameran dan Expo', 'Panitia mengajukan proposal penyelenggaraan pameran atau expo.\nProposal diperiksa dan disetujui oleh pihak berwenang.\nPersiapan logistik dan materi dilakukan oleh panitia.\nPelaksanaan pameran atau expo sesuai dengan jadwal yang telah ditetapkan.\nLaporan kegiatan diserahkan kepada pihak berwenang setelah acara selesai.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(40, 'SOP0040', 'SOP Pengelolaan Kegiatan Pembangunan dan Renovasi Kampus', 'Identifikasi kebutuhan pembangunan atau renovasi dilakukan oleh tim fasilitas.\nProposal pembangunan atau renovasi disusun dan disetujui oleh pihak berwenang.\nPelaksanaan pembangunan atau renovasi dilakukan sesuai dengan rencana yang telah disetujui.\nMonitoring dan evaluasi hasil pembangunan atau renovasi dilakukan.\nLaporan pembangunan atau renovasi disusun dan disimpan untuk keperluan dokumentasi.\n', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(41, 'SOP0041', 'SOP Pengelolaan Dana Kesejahteraan Mahasiswa', 'Mahasiswa mengajukan permohonan dana kesejahteraan dengan mengisi formulir yang disediakan.\nFormulir dan berkas pendukung diserahkan ke bagian kesejahteraan mahasiswa.\nVerifikasi dan evaluasi permohonan dilakukan.\nKeputusan persetujuan atau penolakan permohonan diberitahukan kepada mahasiswa.\nDana disalurkan kepada mahasiswa yang memenuhi syarat, dan penggunaan dana dimonitor.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(42, 'SOP0042', 'SOP Penanganan Kasus Kekerasan di Kampus', 'Laporan kekerasan diterima oleh bagian keamanan kampus atau pihak berwenang lainnya.\nPenyelidikan dan verifikasi dilakukan terhadap laporan tersebut.\nLangkah-langkah perlindungan diambil untuk melindungi korban.\nPelaku dikenakan sanksi sesuai dengan peraturan yang berlaku.\nDokumentasi kasus dan penyelesaian disimpan untuk keperluan administrasi dan evaluasi.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(43, 'SOP0043', 'SOP Pengelolaan Keamanan Data dan Informasi', 'Identifikasi data dan informasi yang perlu dilindungi dilakukan.\nImplementasi sistem keamanan informasi sesuai dengan standar yang berlaku.\nMonitoring dan pemeliharaan sistem keamanan dilakukan secara berkala.\nTindakan penanganan diambil jika terjadi pelanggaran atau kebocoran data.\nEvaluasi dan pembaruan sistem keamanan dilakukan untuk meningkatkan perlindungan.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(44, 'SOP0044', 'SOP Pengelolaan Kerja Sama Internasional', 'Pengajuan kerja sama internasional dilakukan oleh fakultas atau program studi.\nProposal kerja sama diperiksa dan disetujui oleh bagian internasional.\nImplementasi kerja sama dilakukan sesuai dengan perjanjian yang telah disepakati.\nMonitoring dan evaluasi kerja sama dilakukan secara berkala.\nLaporan kerja sama diserahkan kepada pihak berwenang untuk dokumentasi dan perbaikan.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(45, 'SOP0045', 'SOP Penyelenggaraan Kegiatan Kebudayaan', 'Pengajuan kegiatan kebudayaan dilakukan oleh mahasiswa atau staf.\nProposal kegiatan diperiksa dan disetujui oleh bagian kemahasiswaan atau kebudayaan.\nPersiapan logistik dan materi dilakukan oleh panitia.\nPelaksanaan kegiatan kebudayaan sesuai dengan jadwal yang telah ditetapkan.\nLaporan kegiatan diserahkan kepada pihak berwenang setelah acara selesai.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(46, 'SOP0046', 'SOP Pengelolaan Praktikum', 'Mahasiswa mendaftar untuk mengikuti praktikum sesuai dengan mata kuliah yang diambil.\nJadwal praktikum dan instruksi diberikan kepada mahasiswa.\nPelaksanaan praktikum dilakukan di laboratorium atau lokasi yang telah ditentukan.\nEvaluasi hasil praktikum dilakukan oleh dosen pembimbing.\nNilai dan laporan praktikum diserahkan kepada mahasiswa dan bagian akademik.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(47, 'SOP0047', 'SOP Pemberian Rekomendasi Akademik', 'Mahasiswa mengajukan permohonan rekomendasi akademik kepada dosen atau pihak berwenang.\nVerifikasi data dan prestasi akademik dilakukan.\nSurat rekomendasi akademik disusun dan ditandatangani oleh dosen atau pihak berwenang.\nSurat rekomendasi diserahkan kepada mahasiswa.\nDokumentasi rekomendasi disimpan untuk keperluan administrasi.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(48, 'SOP0048', 'SOP Pengelolaan Dana Sumbangan dan Hibah', 'Penerimaan dana sumbangan atau hibah dicatat oleh bagian keuangan.\nVerifikasi dan pencatatan dilakukan sesuai dengan prosedur akuntansi yang berlaku.\nPengelolaan dana dilakukan sesuai dengan tujuan sumbangan atau hibah.\nMonitoring dan evaluasi penggunaan dana dilakukan secara berkala.\nLaporan penggunaan dana disusun dan diserahkan kepada pihak penyumbang atau pemberi hibah.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(49, 'SOP0049', 'SOP Penyelenggaraan Kegiatan Olahraga', 'Pengajuan kegiatan olahraga dilakukan oleh mahasiswa atau staf.\nProposal kegiatan diperiksa dan disetujui oleh bagian kemahasiswaan atau olahraga.\nPersiapan logistik dan fasilitas dilakukan oleh panitia.\nPelaksanaan kegiatan olahraga sesuai dengan jadwal yang telah ditetapkan.\nLaporan kegiatan diserahkan kepada pihak berwenang setelah acara selesai.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(50, 'SOP0050', 'SOP Penanganan Kesehatan dan Keselamatan Kerja (K3)', 'Identifikasi risiko kesehatan dan keselamatan dilakukan oleh tim K3.\nImplementasi program K3 sesuai dengan standar yang berlaku.\nPelatihan dan sosialisasi K3 dilakukan kepada seluruh civitas akademika.\nMonitoring dan evaluasi program K3 dilakukan secara berkala.\nTindakan penanganan diambil jika terjadi insiden atau pelanggaran K3.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(51, 'SOP0051', 'SOP Pengelolaan Humas dan Komunikasi', 'Penyusunan strategi komunikasi dan humas dilakukan oleh tim humas.\nImplementasi program komunikasi dilakukan sesuai dengan rencana yang telah disusun.\nMonitoring dan evaluasi efektivitas komunikasi dilakukan.\nPengelolaan media sosial dan website universitas dilakukan secara aktif.\nLaporan kegiatan humas dan komunikasi disusun dan diserahkan kepada pihak berwenang.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(52, 'SOP0052', 'SOP Penerbitan Buku dan Materi Ajar', 'Penulis mengajukan naskah buku atau materi ajar ke bagian penerbitan.\nNaskah diperiksa dan disetujui oleh editor.\nProses produksi dan percetakan dilakukan sesuai dengan standar penerbitan.\nDistribusi buku atau materi ajar dilakukan kepada mahasiswa atau pihak yang berkepentingan.\nEvaluasi dan revisi dilakukan berdasarkan umpan balik pengguna.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(53, 'SOP0053', 'SOP Pengelolaan Dana Bantuan Mahasiswa', 'Mahasiswa mengajukan permohonan dana bantuan dengan mengisi formulir yang disediakan.\nFormulir dan berkas pendukung diserahkan ke bagian kesejahteraan mahasiswa.\nVerifikasi dan evaluasi permohonan dilakukan.\nKeputusan persetujuan atau penolakan permohonan diberitahukan kepada mahasiswa.\nDana disalurkan kepada mahasiswa yang memenuhi syarat, dan penggunaan dana dimonitor.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(54, 'SOP0054', 'SOP Penanganan Kebutuhan Khusus Mahasiswa', 'Mahasiswa dengan kebutuhan khusus mengajukan permohonan fasilitas atau layanan khusus.\nVerifikasi kebutuhan dilakukan oleh bagian layanan mahasiswa atau pihak terkait.\nPenyediaan fasilitas atau layanan khusus dilakukan sesuai dengan kebutuhan yang telah diverifikasi.\nMonitoring dan evaluasi efektivitas fasilitas atau layanan khusus dilakukan.\nLaporan penggunaan fasilitas atau layanan disusun dan diserahkan kepada pihak berwenang.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(55, 'SOP0055', 'SOP Pengelolaan Acara Dies Natalis', 'Pembentukan panitia dies natalis dilakukan oleh pihak berwenang.\nPenyusunan rencana kegiatan dan anggaran dilakukan oleh panitia.\nPersiapan logistik, materi, dan undangan dilakukan oleh panitia.\nPelaksanaan acara dies natalis sesuai dengan jadwal yang telah ditetapkan.\nLaporan kegiatan diserahkan kepada pihak berwenang setelah acara selesai.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(56, 'SOP0056', 'SOP Pengelolaan Dana Bantuan Penelitian', 'Peneliti mengajukan proposal dana bantuan penelitian.\nProposal diperiksa dan dievaluasi oleh komite penelitian.\nPersetujuan dan pencairan dana dilakukan jika proposal memenuhi syarat.\nPengelolaan dana dilakukan sesuai dengan rencana anggaran yang diajukan.\nLaporan penggunaan dana diserahkan kepada komite penelitian.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(57, 'SOP0057', 'SOP Penanganan Masalah Etika Penelitian', 'Laporan masalah etika penelitian diterima oleh komite etika penelitian.\nPenyelidikan dan verifikasi dilakukan terhadap laporan tersebut.\nTindakan penanganan diambil jika ditemukan pelanggaran etika.\nRekomendasi perbaikan diberikan kepada peneliti.\nDokumentasi kasus dan penyelesaian disimpan untuk keperluan administrasi dan evaluasi.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(58, 'SOP0058', 'SOP Pengelolaan Kerja Sama Industri', 'Pengajuan kerja sama industri dilakukan oleh fakultas atau program studi.\nProposal kerja sama diperiksa dan disetujui oleh bagian kerja sama.\nImplementasi kerja sama dilakukan sesuai dengan perjanjian yang telah disepakati.\nMonitoring dan evaluasi kerja sama dilakukan secara berkala.\nLaporan kerja sama diserahkan kepada pihak berwenang untuk dokumentasi dan perbaikan.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(59, 'SOP0059', 'SOP Pengelolaan Program Magang', 'Mahasiswa mendaftar untuk program magang melalui bagian kemahasiswaan atau program studi.\nPenempatan magang dilakukan sesuai dengan bidang studi dan ketersediaan tempat magang.\nPelaksanaan magang dilakukan sesuai dengan jadwal dan aturan yang berlaku.\nMonitoring dan evaluasi kinerja mahasiswa magang dilakukan oleh dosen pembimbing.\nLaporan magang diserahkan kepada mahasiswa dan bagian akademik.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(60, 'SOP0060', 'SOP Penanganan Sengketa Akademik', 'Laporan sengketa akademik diterima oleh bagian akademik atau pihak berwenang.\nPenyelidikan dan mediasi dilakukan untuk menyelesaikan sengketa.\nKeputusan penyelesaian sengketa disampaikan kepada pihak yang bersengketa.\nTindakan perbaikan diambil jika diperlukan untuk mencegah sengketa serupa di masa depan.\nDokumentasi kasus dan penyelesaian disimpan untuk keperluan administrasi dan evaluasi.\n', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(61, 'SOP0061', 'SOP Pengelolaan Program Beasiswa', 'Pengumuman program beasiswa disampaikan kepada seluruh mahasiswa.\nMahasiswa mengajukan aplikasi beasiswa dengan mengisi formulir dan melampirkan berkas pendukung.\nEvaluasi dan seleksi aplikasi beasiswa dilakukan oleh komite beasiswa.\nPengumuman penerima beasiswa disampaikan kepada mahasiswa yang terpilih.\nPenyaluran dana beasiswa dilakukan dan penggunaan dana dipantau.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(62, 'SOP0062', 'SOP Pengelolaan Surat Keterangan Mahasiswa Aktif', 'Mahasiswa mengajukan permohonan surat keterangan aktif ke bagian akademik.\nVerifikasi status keaktifan mahasiswa dilakukan.\nPenyusunan dan penandatanganan surat keterangan aktif dilakukan.\nSurat keterangan diserahkan kepada mahasiswa.\nDokumentasi surat keterangan disimpan untuk keperluan administrasi.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(63, 'SOP0063', 'SOP Pengajuan Cuti Akademik', 'Mahasiswa mengisi formulir permohonan cuti akademik.\nFormulir dan berkas pendukung diserahkan ke bagian akademik atau program studi.\nVerifikasi dan persetujuan permohonan dilakukan oleh pihak berwenang.\nSurat keputusan cuti akademik diserahkan kepada mahasiswa.\nDokumentasi cuti akademik disimpan dalam sistem administrasi akademik.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(64, 'SOP0064', 'SOP Pengelolaan Bimbingan Konseling Mahasiswa', 'Mahasiswa mengajukan permohonan bimbingan konseling ke bagian layanan mahasiswa.\nJadwal konseling ditetapkan dan disampaikan kepada mahasiswa.\nPelaksanaan sesi konseling dilakukan sesuai jadwal.\nEvaluasi hasil konseling dan tindak lanjut dilakukan oleh konselor.\nDokumentasi sesi konseling disimpan dengan menjaga kerahasiaan mahasiswa.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(65, 'SOP0065', 'SOP Pengelolaan Surat Keterangan Lulus (SKL)', 'Mahasiswa yang telah menyelesaikan semua persyaratan akademik mengajukan permohonan SKL.\nVerifikasi data kelulusan dilakukan oleh bagian akademik.\nPenyusunan dan penandatanganan SKL dilakukan.\nSKL diserahkan kepada mahasiswa.\nDokumentasi SKL disimpan untuk keperluan administrasi.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(66, 'SOP0066', 'SOP Pengelolaan Evaluasi Dosen oleh Mahasiswa', 'Penyebaran kuesioner evaluasi kepada mahasiswa dilakukan pada akhir semester.\nMahasiswa mengisi kuesioner evaluasi secara anonim.\nPengumpulan dan analisis data evaluasi dilakukan.\nHasil evaluasi disampaikan kepada dosen yang bersangkutan dan pihak berwenang.\nTindak lanjut dan perbaikan dilakukan berdasarkan hasil evaluasi.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(67, 'SOP0067', 'SOP Pengelolaan Inventaris Kampus', 'Pencatatan semua inventaris kampus dilakukan oleh bagian inventarisasi.\nVerifikasi dan pembaruan data inventaris dilakukan secara berkala.\nPengelolaan pemakaian dan perawatan inventaris dilakukan sesuai prosedur.\nMonitoring kondisi dan kebutuhan inventaris dilakukan.\nLaporan inventaris disusun dan diserahkan kepada pihak berwenang.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(68, 'SOP0068', 'SOP Pengelolaan Dana Bantuan Darurat Mahasiswa', 'Mahasiswa mengajukan permohonan dana bantuan darurat dengan melampirkan dokumen pendukung.\nVerifikasi dan evaluasi permohonan dilakukan oleh komite bantuan darurat.\nKeputusan persetujuan atau penolakan permohonan diberitahukan kepada mahasiswa.\nPenyaluran dana bantuan darurat dilakukan dan penggunaan dana dipantau.\nLaporan penggunaan dana disusun untuk keperluan administrasi.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(69, 'SOP0069', 'SOP Pengelolaan Pelatihan dan Workshop', 'Penyusunan rencana pelatihan atau workshop dilakukan oleh panitia.\nPendaftaran peserta dilakukan melalui formulir yang disediakan.\nPelaksanaan pelatihan atau workshop sesuai dengan jadwal yang ditetapkan.\nEvaluasi dan umpan balik dari peserta dikumpulkan.\nLaporan kegiatan diserahkan kepada pihak berwenang untuk dokumentasi dan perbaikan.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(70, 'SOP0070', 'SOP Pengelolaan Kunjungan Industri dan Study Tour', 'Penyusunan rencana kunjungan industri atau study tour dilakukan oleh program studi atau panitia.\nPendaftaran peserta dilakukan melalui formulir yang disediakan.\nPersiapan logistik dan koordinasi dengan industri atau lokasi kunjungan dilakukan.\nPelaksanaan kunjungan industri atau study tour sesuai dengan jadwal yang ditetapkan.\nLaporan kegiatan diserahkan kepada pihak berwenang setelah acara selesai.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(71, 'SOP0071', 'SOP Pengelolaan Seminar dan Konferensi', 'Penyusunan rencana seminar atau konferensi dilakukan oleh panitia.\nPengumuman dan pendaftaran peserta dilakukan melalui platform yang disediakan.\nPersiapan logistik, materi, dan pembicara dilakukan oleh panitia.\nPelaksanaan seminar atau konferensi sesuai dengan jadwal yang ditetapkan.\nLaporan kegiatan diserahkan kepada pihak berwenang setelah acara selesai.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(72, 'SOP0072', 'SOP Pengelolaan Program Pertukaran Dosen', 'Dosen mengajukan permohonan untuk mengikuti program pertukaran dosen.\nVerifikasi dan seleksi dilakukan oleh bagian internasional atau pihak berwenang.\nKoordinasi dengan institusi mitra dilakukan untuk persiapan dan pelaksanaan pertukaran.\nPelaksanaan program pertukaran dosen sesuai dengan jadwal yang telah disepakati.\nLaporan hasil program pertukaran diserahkan kepada pihak berwenang setelah selesai.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(73, 'SOP0073', 'SOP Pengelolaan Program Mentoring Mahasiswa Baru', 'Rekrutmen dan pelatihan mentor dilakukan oleh bagian kemahasiswaan atau program studi.\nPendaftaran mahasiswa baru untuk program mentoring dilakukan.\nPenugasan mentor kepada mahasiswa baru dilakukan.\nPelaksanaan program mentoring sesuai dengan jadwal dan rencana yang ditetapkan.\nEvaluasi dan laporan hasil program mentoring disusun dan diserahkan kepada pihak berwenang.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(74, 'SOP0074', 'SOP Pengelolaan Layanan Perpustakaan', 'Pendaftaran anggota perpustakaan dilakukan untuk mahasiswa, dosen, dan staf.\nPengelolaan koleksi perpustakaan dilakukan sesuai dengan standar yang berlaku.\nPenyediaan layanan sirkulasi, referensi, dan digital dilakukan.\nMonitoring penggunaan dan pemeliharaan koleksi perpustakaan dilakukan.\nLaporan kegiatan perpustakaan disusun untuk keperluan administrasi dan pengembangan.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(75, 'SOP0075', 'SOP Pengelolaan Dana Kegiatan Mahasiswa', 'Organisasi mahasiswa mengajukan proposal dana kegiatan ke bagian kemahasiswaan.\nVerifikasi dan evaluasi proposal dilakukan.\nPersetujuan dan pencairan dana dilakukan jika proposal memenuhi syarat.\nPengelolaan dana kegiatan dilakukan sesuai dengan rencana anggaran yang diajukan.\nLaporan penggunaan dana diserahkan kepada bagian kemahasiswaan.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(76, 'SOP0076', 'SOP Pengelolaan Kerja Sama dengan Alumni', 'Pengajuan program kerja sama dengan alumni dilakukan oleh fakultas atau program studi.\nVerifikasi dan persetujuan program dilakukan oleh bagian alumni.\nImplementasi program kerja sama dilakukan sesuai dengan rencana yang telah disusun.\nMonitoring dan evaluasi program kerja sama dilakukan secara berkala.\nLaporan kegiatan kerja sama disusun dan diserahkan kepada pihak berwenang.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(77, 'SOP0077', 'SOP Pengelolaan Penelitian Mahasiswa', 'Mahasiswa mengajukan proposal penelitian ke bagian akademik atau penelitian.\nVerifikasi dan evaluasi proposal dilakukan oleh komite penelitian.\nPersetujuan dan pencairan dana penelitian dilakukan jika proposal memenuhi syarat.\nPelaksanaan penelitian dilakukan sesuai dengan rencana yang telah disusun.\nLaporan hasil penelitian diserahkan kepada komite penelitian.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(78, 'SOP0078', 'SOP Pengelolaan Kegiatan Kewirausahaan Mahasiswa', 'Mahasiswa mengajukan proposal kegiatan kewirausahaan ke bagian kemahasiswaan atau kewirausahaan.\nVerifikasi dan evaluasi proposal dilakukan.\nPersetujuan dan pencairan dana dilakukan jika proposal memenuhi syarat.\nPelaksanaan kegiatan kewirausahaan dilakukan sesuai dengan rencana yang telah disusun.\nLaporan kegiatan kewirausahaan diserahkan kepada bagian kemahasiswaan atau kewirausahaan.', 0, '2024-06-17 11:09:36', '2024-06-17 18:37:43', 0, NULL),
(79, 'SOP0079', 'SOP Pengelolaan Aktivitas Relawan Mahasiswa', 'Rekrutmen dan pelatihan relawan dilakukan oleh bagian kemahasiswaan atau program studi.\r\nPendaftaran mahasiswa yang berminat menjadi relawan dilakukan.\r\nPenugasan relawan sesuai dengan kebutuhan kegiatan dilakukan.\r\nPelaksanaan aktivitas relawan dilakukan sesuai dengan rencana yang telah disusun.\r\nEvaluasi dan laporan hasil aktivitas relawan disusun dan diserahkan kepada pihak berwenang.', 0, '2024-06-17 11:09:36', '2024-06-27 03:25:44', 1, NULL),
(80, '22222', '222222222222222222 2 2 2', 'd fsadfasd fsad fasf s fs fas dfas dfsa df 22222222222222  s s', 1, '2024-06-17 05:39:07', '2024-06-23 11:27:39', 1, '2024-06-22 21:27:39'),
(81, 'SOP23423', 'Percobaan', 'Percobaan', 205, '2024-06-23 03:51:57', '2024-06-23 10:51:57', 205, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sop_dokumens`
--

CREATE TABLE `sop_dokumens` (
  `id` int(11) NOT NULL,
  `id_sop` bigint(11) DEFAULT NULL,
  `judul` char(250) NOT NULL,
  `file` char(250) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `updated_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sop_dokumens`
--

INSERT INTO `sop_dokumens` (`id`, `id_sop`, `judul`, `file`, `created_by`, `created_at`, `updated_at`, `updated_by`) VALUES
(1, 80, 'SOP0001-s-o-p-penerimaan-mahasiswa-baru-20240618145742.xls', 'SOP0001-s-o-p-penerimaan-mahasiswa-baru-20240618145742.xls', 1, '2024-06-18 07:57:42', '2024-06-18 14:57:42', 1),
(2, 80, 'SOP0001-s-o-p-penerimaan-mahasiswa-baru-20240618145742.xls', 'SOP0001-s-o-p-penerimaan-mahasiswa-baru-20240618145742.xls', 1, '2024-06-18 07:57:42', '2024-06-18 14:57:42', 1),
(3, 79, 'SOP0001-s-o-p-penerimaan-mahasiswa-baru-20240618145808.xlsx', 'SOP0001-s-o-p-penerimaan-mahasiswa-baru-20240618145808.xlsx', 1, '2024-06-18 07:58:08', '2024-06-18 14:58:08', 1),
(4, 79, 'SOP0001-s-o-p-penerimaan-mahasiswa-baru-20240618145811.pptx', 'SOP0001-s-o-p-penerimaan-mahasiswa-baru-20240618145811.pptx', 1, '2024-06-18 07:58:11', '2024-06-18 14:58:11', 1),
(5, 81, 'SOP0001-s-o-p-penerimaan-mahasiswa-baru-20240623110046.docx', 'SOP0001-s-o-p-penerimaan-mahasiswa-baru-20240623110046.docx', 205, '2024-06-23 04:00:46', '2024-06-23 11:00:46', 205),
(6, 81, 'SOP0001-s-o-p-penerimaan-mahasiswa-baru-20240623110046.pdf', 'SOP0001-s-o-p-penerimaan-mahasiswa-baru-20240623110046.pdf', 205, '2024-06-23 04:00:46', '2024-06-23 11:00:46', 205),
(7, 81, 'SOP0001-s-o-p-penerimaan-mahasiswa-baru-20240623110046.pdf', 'SOP0001-s-o-p-penerimaan-mahasiswa-baru-20240623110046.pdf', 205, '2024-06-23 04:00:46', '2024-06-23 11:00:46', 205),
(8, 81, 'SOP0001-s-o-p-penerimaan-mahasiswa-baru-20240627032244.png', 'SOP0001-s-o-p-penerimaan-mahasiswa-baru-20240627032244.png', 1, '2024-06-26 20:22:44', '2024-06-27 03:22:44', 1),
(9, 81, 'SOP0001-s-o-p-penerimaan-mahasiswa-baru-20240627032354.png', 'SOP0001-s-o-p-penerimaan-mahasiswa-baru-20240627032354.png', 1, '2024-06-26 20:23:54', '2024-06-27 03:23:54', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sop_steps`
--

CREATE TABLE `sop_steps` (
  `id` int(11) NOT NULL,
  `sop_id` int(2) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `unit_id` int(1) DEFAULT NULL,
  `sort_order` int(1) DEFAULT NULL,
  `keterangan` tinytext DEFAULT NULL,
  `status` enum('mengetahui','menyetujui','tembusan','pemohon') NOT NULL DEFAULT 'menyetujui'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `sop_steps`
--

INSERT INTO `sop_steps` (`id`, `sop_id`, `parent_id`, `unit_id`, `sort_order`, `keterangan`, `status`) VALUES
(1, 1, 0, 0, 0, 'Calon mahasiswa mengisi formulir pendaftaran.', 'menyetujui'),
(2, 1, 0, 0, 1, 'Formulir dan berkas pendukung diserahkan ke bagian penerimaan mahasiswa baru.', 'menyetujui'),
(3, 1, 0, 0, 2, 'Seleksi administratif dan akademik dilakukan.', 'menyetujui'),
(4, 1, 0, 0, 3, 'Pengumuman hasil seleksi disampaikan kepada calon mahasiswa.', 'menyetujui'),
(5, 1, 0, 0, 4, 'Mahasiswa yang diterima melakukan registrasi dan pembayaran administrasi.', 'menyetujui'),
(6, 2, 0, 0, 0, 'Pemohon mengisi formulir peminjaman barang/alat.', 'menyetujui'),
(7, 2, 0, 0, 1, 'Formulir diserahkan ke bagian administrasi atau pihak yang berwenang.', 'menyetujui'),
(8, 2, 0, 0, 2, 'Pihak berwenang memeriksa dan menyetujui permohonan.', 'menyetujui'),
(9, 2, 0, 0, 3, 'Peminjam mengambil barang dengan menunjukkan tanda bukti persetujuan.', 'menyetujui'),
(10, 2, 0, 0, 4, 'Barang dikembalikan sesuai jadwal, dan kondisi barang diperiksa oleh petugas inventaris.', 'menyetujui'),
(11, 3, 0, 0, 0, 'Mahasiswa mengisi formulir pengajuan beasiswa.', 'menyetujui'),
(12, 3, 0, 0, 1, 'Formulir diserahkan ke bagian beasiswa atau kemahasiswaan.', 'menyetujui'),
(13, 3, 0, 0, 2, 'Berkas pengajuan diperiksa dan diverifikasi.', 'menyetujui'),
(14, 3, 0, 0, 3, 'Jika diperlukan, wawancara dilakukan dengan pemohon.', 'menyetujui'),
(15, 3, 0, 0, 4, 'Keputusan akhir diumumkan kepada pemohon melalui surat resmi atau email.', 'menyetujui'),
(16, 4, 0, 0, 0, 'Mahasiswa mengisi formulir pengajuan cuti akademik.', 'menyetujui'),
(17, 4, 0, 0, 1, 'Formulir diserahkan ke bagian akademik atau dekanat.', 'menyetujui'),
(18, 4, 0, 0, 2, 'Permohonan diperiksa dan diverifikasi.', 'menyetujui'),
(19, 4, 0, 0, 3, 'Keputusan persetujuan atau penolakan diberikan kepada mahasiswa.', 'menyetujui'),
(20, 4, 0, 0, 4, 'Dokumentasi cuti akademik dicatat dan disimpan dalam arsip mahasiswa.', 'menyetujui'),
(21, 5, 0, 0, 0, 'Dosen/mahasiswa mengisi formulir pengajuan penelitian.', 'menyetujui'),
(22, 5, 0, 0, 1, 'Formulir diserahkan ke bagian penelitian atau lembaga penelitian universitas.', 'menyetujui'),
(23, 5, 0, 0, 2, 'Pengajuan diperiksa dan dievaluasi oleh tim penilai.', 'menyetujui'),
(24, 5, 0, 0, 3, 'Jika diperlukan, revisi proposal diminta kepada pemohon.', 'menyetujui'),
(25, 5, 0, 0, 4, 'Keputusan akhir diberikan, dan penelitian dapat dimulai sesuai ketentuan yang berlaku.', 'menyetujui'),
(26, 6, 0, 0, 0, 'Pihak yang membutuhkan mengisi formulir pemesanan ruang.', 'menyetujui'),
(27, 6, 0, 0, 1, 'Formulir diserahkan ke bagian administrasi atau pengelola fasilitas.', 'menyetujui'),
(28, 6, 0, 0, 2, 'Pemeriksaan ketersediaan ruang dilakukan.', 'menyetujui'),
(29, 6, 0, 0, 3, 'Persetujuan pemakaian ruang diberikan, dan jadwal pemakaian dicatat.', 'menyetujui'),
(30, 6, 0, 0, 4, 'Setelah penggunaan, ruang diperiksa kembali untuk memastikan kebersihan dan kelengkapannya.', 'menyetujui'),
(31, 7, 0, 0, 0, 'Mahasiswa/dosen mengisi formulir pengajuan surat keterangan.', 'menyetujui'),
(32, 7, 0, 0, 1, 'Formulir diserahkan ke bagian administrasi atau akademik.', 'menyetujui'),
(33, 7, 0, 0, 2, 'Verifikasi data dilakukan oleh pihak berwenang.', 'menyetujui'),
(34, 7, 0, 0, 3, 'Surat keterangan dibuat dan ditandatangani oleh pejabat berwenang.', 'menyetujui'),
(35, 7, 0, 0, 4, 'Surat keterangan diserahkan kepada pemohon.', 'menyetujui'),
(36, 8, 0, 0, 0, 'Mahasiswa mengisi formulir permohonan administrasi akademik (misalnya, transkrip, ijazah).', 'menyetujui'),
(37, 8, 0, 0, 1, 'Formulir diserahkan ke bagian administrasi akademik.', 'menyetujui'),
(38, 8, 0, 0, 2, 'Permohonan diproses dan diverifikasi.', 'menyetujui'),
(39, 8, 0, 0, 3, 'Dokumen akademik yang diminta dibuat dan ditandatangani.', 'menyetujui'),
(40, 8, 0, 0, 4, 'Dokumen diserahkan kepada pemohon.', 'menyetujui'),
(41, 9, 0, 0, 0, 'Pihak yang mengetahui kerusakan mengisi formulir pelaporan kerusakan.', 'menyetujui'),
(42, 9, 0, 0, 1, 'Formulir diserahkan ke bagian pengelolaan fasilitas.', 'menyetujui'),
(43, 9, 0, 0, 2, 'Pemeriksaan kerusakan dilakukan oleh teknisi.', 'menyetujui'),
(44, 9, 0, 0, 3, 'Perbaikan dilakukan sesuai dengan tingkat kerusakan.', 'menyetujui'),
(45, 9, 0, 0, 4, 'Dokumentasi perbaikan dicatat untuk keperluan pemeliharaan.', 'menyetujui'),
(46, 10, 0, 0, 0, 'Mahasiswa mengisi formulir pengajuan kegiatan.', 'menyetujui'),
(47, 10, 0, 0, 1, 'Formulir diserahkan ke bagian kemahasiswaan.', 'menyetujui'),
(48, 10, 0, 0, 2, 'Permohonan diperiksa dan diverifikasi.', 'menyetujui'),
(49, 10, 0, 0, 3, 'Jika disetujui, surat izin kegiatan dikeluarkan.', 'menyetujui'),
(50, 10, 0, 0, 4, 'Kegiatan dilaksanakan sesuai dengan rencana, dan laporan kegiatan diserahkan setelah selesai.', 'menyetujui'),
(51, 11, 0, 0, 0, 'Pengumuman jadwal ujian diberikan kepada mahasiswa.', 'menyetujui'),
(52, 11, 0, 0, 1, 'Mahasiswa mendaftar untuk mengikuti ujian sesuai jadwal.', 'menyetujui'),
(53, 11, 0, 0, 2, 'Soal ujian disiapkan oleh dosen pengajar.', 'menyetujui'),
(54, 11, 0, 0, 3, 'Pelaksanaan ujian dilakukan sesuai dengan jadwal dan prosedur yang ditetapkan.', 'menyetujui'),
(55, 11, 0, 0, 4, 'Pengumpulan hasil ujian dan penilaian dilakukan oleh dosen.', 'menyetujui'),
(56, 12, 0, 0, 0, 'Mahasiswa mengajukan permohonan penerbitan ijazah dan transkrip nilai.', 'menyetujui'),
(57, 12, 0, 0, 1, 'Verifikasi kelulusan dan administrasi akademik dilakukan.', 'menyetujui'),
(58, 12, 0, 0, 2, 'Ijazah dan transkrip nilai disiapkan dan ditandatangani oleh pejabat berwenang.', 'menyetujui'),
(59, 12, 0, 0, 3, 'Dokumen diserahkan kepada mahasiswa yang telah menyelesaikan semua persyaratan.', 'menyetujui'),
(60, 13, 0, 0, 0, 'Mahasiswa dan staf mendaftar sebagai anggota perpustakaan.', 'menyetujui'),
(61, 13, 0, 0, 1, 'Buku atau materi perpustakaan dipinjam dengan menunjukkan kartu anggota.', 'menyetujui'),
(62, 13, 0, 0, 2, 'Pengembalian buku dilakukan sesuai dengan tenggat waktu yang ditentukan.', 'menyetujui'),
(63, 13, 0, 0, 3, 'Denda dikenakan untuk keterlambatan pengembalian buku.', 'menyetujui'),
(64, 13, 0, 0, 4, 'Inventarisasi dan pemeliharaan koleksi perpustakaan dilakukan secara berkala.', 'menyetujui'),
(65, 14, 0, 0, 0, 'Dosen mengajukan proposal kegiatan penelitian atau pengabdian masyarakat.', 'menyetujui'),
(66, 14, 0, 0, 1, 'Proposal diperiksa dan dievaluasi oleh komite penelitian.', 'menyetujui'),
(67, 14, 0, 0, 2, 'Persetujuan dan pendanaan diberikan jika proposal memenuhi syarat.', 'menyetujui'),
(68, 14, 0, 0, 3, 'Pelaksanaan kegiatan dilakukan sesuai dengan rencana yang telah disetujui.', 'menyetujui'),
(69, 14, 0, 0, 4, 'Laporan akhir diserahkan kepada komite penelitian untuk evaluasi.', 'menyetujui'),
(70, 15, 0, 0, 0, 'Pengumuman lowongan pekerjaan disebarkan melalui media resmi.', 'menyetujui'),
(71, 15, 0, 0, 1, 'Calon dosen dan staf mengirimkan lamaran pekerjaan.', 'menyetujui'),
(72, 15, 0, 0, 2, 'Seleksi administratif dan wawancara dilakukan.', 'menyetujui'),
(73, 15, 0, 0, 3, 'Keputusan penerimaan diberikan kepada calon yang memenuhi syarat.', 'menyetujui'),
(74, 15, 0, 0, 4, 'Dosen dan staf baru melakukan orientasi dan registrasi.', 'menyetujui'),
(75, 16, 0, 0, 0, 'Mahasiswa dan dosen mengajukan permohonan penggunaan laboratorium.', 'menyetujui'),
(76, 16, 0, 0, 1, 'Permohonan disetujui oleh kepala laboratorium.', 'menyetujui'),
(77, 16, 0, 0, 2, 'Penggunaan laboratorium dilakukan sesuai dengan jadwal dan aturan yang berlaku.', 'menyetujui'),
(78, 16, 0, 0, 3, 'Peralatan laboratorium diperiksa sebelum dan setelah penggunaan.', 'menyetujui'),
(79, 16, 0, 0, 4, 'Laporan penggunaan laboratorium diserahkan kepada kepala laboratorium.', 'menyetujui'),
(80, 17, 0, 0, 0, 'Panitia mengajukan proposal penyelenggaraan seminar atau workshop.', 'menyetujui'),
(81, 17, 0, 0, 1, 'Proposal diperiksa dan disetujui oleh pihak berwenang.', 'menyetujui'),
(82, 17, 0, 0, 2, 'Persiapan logistik dan materi dilakukan oleh panitia.', 'menyetujui'),
(83, 17, 0, 0, 3, 'Pelaksanaan seminar atau workshop sesuai dengan jadwal yang telah ditetapkan.', 'menyetujui'),
(84, 17, 0, 0, 4, 'Laporan kegiatan diserahkan kepada pihak berwenang setelah acara selesai.', 'menyetujui'),
(85, 18, 0, 0, 0, 'Proposal dana hibah diajukan oleh dosen atau mahasiswa.', 'menyetujui'),
(86, 18, 0, 0, 1, 'Proposal diperiksa dan dievaluasi oleh komite hibah.', 'menyetujui'),
(87, 18, 0, 0, 2, 'Persetujuan dan pencairan dana hibah dilakukan jika proposal memenuhi syarat.', 'menyetujui'),
(88, 18, 0, 0, 3, 'Pengelolaan dana hibah dilakukan sesuai dengan rencana anggaran yang diajukan.', 'menyetujui'),
(89, 18, 0, 0, 4, 'Laporan penggunaan dana hibah diserahkan kepada komite hibah.', 'menyetujui'),
(90, 19, 0, 0, 0, 'Kurikulum program studi disusun oleh tim kurikulum.', 'menyetujui'),
(91, 19, 0, 0, 1, 'Kurikulum disetujui oleh senat universitas.', 'menyetujui'),
(92, 19, 0, 0, 2, 'Pelaksanaan program studi dilakukan sesuai dengan kurikulum yang telah disetujui.', 'menyetujui'),
(93, 19, 0, 0, 3, 'Evaluasi program studi dilakukan secara berkala.', 'menyetujui'),
(94, 19, 0, 0, 4, 'Laporan hasil evaluasi diserahkan kepada senat universitas untuk perbaikan kurikulum.', 'menyetujui'),
(95, 20, 0, 0, 0, 'Laporan pelanggaran akademik diajukan oleh pihak yang mengetahui pelanggaran.', 'menyetujui'),
(96, 20, 0, 0, 1, 'Laporan diperiksa oleh komite disiplin akademik.', 'menyetujui'),
(97, 20, 0, 0, 2, 'Investigasi dan verifikasi dilakukan terhadap laporan pelanggaran.', 'menyetujui'),
(98, 20, 0, 0, 3, 'Keputusan sanksi diberikan jika pelanggaran terbukti.', 'menyetujui'),
(99, 20, 0, 0, 4, 'Dokumentasi pelanggaran dan sanksi disimpan untuk keperluan administrasi.', 'menyetujui'),
(100, 21, 0, 0, 0, 'Mahasiswa mengisi formulir pengajuan pembimbing skripsi/tesis/disertasi.', 'menyetujui'),
(101, 21, 0, 0, 1, 'Formulir diserahkan ke bagian akademik atau program studi.', 'menyetujui'),
(102, 21, 0, 0, 2, 'Permohonan diproses dan pembimbing ditetapkan sesuai dengan keahlian dan ketersediaan.', 'menyetujui'),
(103, 21, 0, 0, 3, 'Surat keputusan pembimbing diserahkan kepada mahasiswa.', 'menyetujui'),
(104, 21, 0, 0, 4, 'Mahasiswa mulai konsultasi dengan pembimbing yang telah ditetapkan.', 'menyetujui'),
(105, 22, 0, 0, 0, 'Mahasiswa mengisi formulir pembatalan mata kuliah.', 'menyetujui'),
(106, 22, 0, 0, 1, 'Formulir diserahkan ke bagian akademik atau program studi.', 'menyetujui'),
(107, 22, 0, 0, 2, 'Verifikasi dan persetujuan dilakukan oleh pihak berwenang.', 'menyetujui'),
(108, 22, 0, 0, 3, 'Pembatalan mata kuliah dicatat dalam sistem administrasi akademik.', 'menyetujui'),
(109, 22, 0, 0, 4, 'Mahasiswa diberitahukan tentang status pembatalan.', 'menyetujui'),
(110, 23, 0, 0, 0, 'Mahasiswa mengisi formulir pendaftaran wisuda.', 'menyetujui'),
(111, 23, 0, 0, 1, 'Formulir dan berkas pendukung diserahkan ke bagian akademik atau registrasi.', 'menyetujui'),
(112, 23, 0, 0, 2, 'Verifikasi kelulusan dan administrasi dilakukan.', 'menyetujui'),
(113, 23, 0, 0, 3, 'Pembayaran biaya wisuda dilakukan sesuai ketentuan.', 'menyetujui'),
(114, 23, 0, 0, 4, 'Mahasiswa menerima informasi mengenai jadwal dan tata cara pelaksanaan wisuda.', 'menyetujui'),
(115, 24, 0, 0, 0, 'Penulis mengirimkan naskah ke redaksi jurnal ilmiah.', 'menyetujui'),
(116, 24, 0, 0, 1, 'Naskah diperiksa oleh editor untuk memastikan kesesuaian dengan pedoman jurnal.', 'menyetujui'),
(117, 24, 0, 0, 2, 'Naskah dikirim ke reviewer untuk proses peer review.', 'menyetujui'),
(118, 24, 0, 0, 3, 'Hasil review dikirim kembali ke penulis untuk revisi jika diperlukan.', 'menyetujui'),
(119, 24, 0, 0, 4, 'Naskah yang telah direvisi dan disetujui diterbitkan dalam jurnal ilmiah.', 'menyetujui'),
(120, 25, 0, 0, 0, 'Alumni mengisi formulir pendaftaran kegiatan alumni.', 'menyetujui'),
(121, 25, 0, 0, 1, 'Formulir diserahkan ke bagian alumni atau kemahasiswaan.', 'menyetujui'),
(122, 25, 0, 0, 2, 'Verifikasi data alumni dilakukan.', 'menyetujui'),
(123, 25, 0, 0, 3, 'Persiapan logistik dan agenda kegiatan dilakukan.', 'menyetujui'),
(124, 25, 0, 0, 4, 'Pelaksanaan kegiatan alumni dan dokumentasi hasil kegiatan.', 'menyetujui'),
(125, 26, 0, 0, 0, 'Identifikasi kebutuhan pemeliharaan dilakukan oleh tim fasilitas.', 'menyetujui'),
(126, 26, 0, 0, 1, 'Rencana pemeliharaan disusun dan disetujui oleh pihak berwenang.', 'menyetujui'),
(127, 26, 0, 0, 2, 'Pelaksanaan pemeliharaan sesuai dengan jadwal yang ditetapkan.', 'menyetujui'),
(128, 26, 0, 0, 3, 'Monitoring dan evaluasi hasil pemeliharaan dilakukan.', 'menyetujui'),
(129, 26, 0, 0, 4, 'Laporan pemeliharaan disimpan untuk keperluan audit dan perencanaan.', 'menyetujui'),
(130, 27, 0, 0, 0, 'Peneliti mengajukan proposal dana penelitian.', 'menyetujui'),
(131, 27, 0, 0, 1, 'Proposal diperiksa dan dievaluasi oleh komite penelitian.', 'menyetujui'),
(132, 27, 0, 0, 2, 'Persetujuan dan pencairan dana dilakukan sesuai dengan prosedur yang berlaku.', 'menyetujui'),
(133, 27, 0, 0, 3, 'Pengelolaan dana dilakukan sesuai dengan rencana anggaran yang diajukan.', 'menyetujui'),
(134, 27, 0, 0, 4, 'Laporan penggunaan dana diserahkan kepada komite penelitian.', 'menyetujui'),
(135, 28, 0, 0, 0, 'Mahasiswa mengajukan proposal kegiatan ekstrakurikuler.', 'menyetujui'),
(136, 28, 0, 0, 1, 'Proposal diperiksa dan disetujui oleh bagian kemahasiswaan.', 'menyetujui'),
(137, 28, 0, 0, 2, 'Persiapan kegiatan dilakukan sesuai dengan rencana yang telah disetujui.', 'menyetujui'),
(138, 28, 0, 0, 3, 'Pelaksanaan kegiatan ekstrakurikuler dan monitoring oleh pihak berwenang.', 'menyetujui'),
(139, 28, 0, 0, 4, 'Laporan kegiatan diserahkan kepada bagian kemahasiswaan.', 'menyetujui'),
(140, 29, 0, 0, 0, 'Mahasiswa mengisi formulir pendaftaran program pertukaran.', 'menyetujui'),
(141, 29, 0, 0, 1, 'Formulir diserahkan ke bagian internasional atau kemahasiswaan.', 'menyetujui'),
(142, 29, 0, 0, 2, 'Seleksi dilakukan berdasarkan kriteria yang telah ditetapkan.', 'menyetujui'),
(143, 29, 0, 0, 3, 'Mahasiswa yang terpilih mendapatkan informasi mengenai persiapan dan keberangkatan.', 'menyetujui'),
(144, 29, 0, 0, 4, 'Laporan hasil program pertukaran diserahkan setelah selesai.', 'menyetujui'),
(145, 30, 0, 0, 0, 'Dosen atau mahasiswa mengajukan proposal kegiatan pengabdian masyarakat.', 'menyetujui'),
(146, 30, 0, 0, 1, 'Proposal diperiksa dan dievaluasi oleh komite pengabdian masyarakat.', 'menyetujui'),
(147, 30, 0, 0, 2, 'Persetujuan dan pendanaan diberikan jika proposal memenuhi syarat.', 'menyetujui'),
(148, 30, 0, 0, 3, 'Pelaksanaan kegiatan sesuai dengan rencana yang telah disetujui.', 'menyetujui'),
(149, 30, 0, 0, 4, 'Laporan akhir diserahkan kepada komite pengabdian masyarakat untuk evaluasi.', 'menyetujui'),
(150, 31, 0, 0, 0, 'Mahasiswa mengisi formulir keluhan yang disediakan.', 'menyetujui'),
(151, 31, 0, 0, 1, 'Formulir keluhan diserahkan ke bagian layanan mahasiswa atau bagian terkait.', 'menyetujui'),
(152, 31, 0, 0, 2, 'Verifikasi dan penyelidikan dilakukan terhadap keluhan yang diajukan.', 'menyetujui'),
(153, 31, 0, 0, 3, 'Tindakan perbaikan atau solusi diberikan kepada mahasiswa.', 'menyetujui'),
(154, 31, 0, 0, 4, 'Dokumentasi keluhan dan penyelesaiannya disimpan untuk evaluasi lebih lanjut.', 'menyetujui'),
(155, 32, 0, 0, 0, 'Calon mahasiswa internasional mengisi formulir pendaftaran.', 'menyetujui'),
(156, 32, 0, 0, 1, 'Formulir dan berkas pendukung diserahkan ke bagian internasional atau penerimaan mahasiswa.', 'menyetujui'),
(157, 32, 0, 0, 2, 'Seleksi administratif dan akademik dilakukan.', 'menyetujui'),
(158, 32, 0, 0, 3, 'Pengumuman hasil seleksi disampaikan kepada calon mahasiswa internasional.', 'menyetujui'),
(159, 32, 0, 0, 4, 'Mahasiswa internasional yang diterima melakukan registrasi dan orientasi.', 'menyetujui'),
(160, 33, 0, 0, 0, 'Mahasiswa dan staf diberikan akses ke sistem informasi akademik.', 'menyetujui'),
(161, 33, 0, 0, 1, 'Pelatihan penggunaan sistem dilakukan untuk pengguna baru.', 'menyetujui'),
(162, 33, 0, 0, 2, 'Penggunaan sistem dilakukan sesuai dengan pedoman yang telah ditetapkan.', 'menyetujui'),
(163, 33, 0, 0, 3, 'Monitoring dan pemeliharaan sistem dilakukan secara berkala.', 'menyetujui'),
(164, 33, 0, 0, 4, 'Laporan dan analisis penggunaan sistem diserahkan kepada pihak berwenang.', 'menyetujui'),
(165, 34, 0, 0, 0, 'Organisasi mahasiswa mengajukan proposal dana kegiatan.', 'menyetujui'),
(166, 34, 0, 0, 1, 'Proposal diperiksa dan dievaluasi oleh bagian kemahasiswaan.', 'menyetujui'),
(167, 34, 0, 0, 2, 'Persetujuan dan pencairan dana dilakukan jika proposal memenuhi syarat.', 'menyetujui'),
(168, 34, 0, 0, 3, 'Pengelolaan dana dilakukan sesuai dengan rencana anggaran yang diajukan.', 'menyetujui'),
(169, 34, 0, 0, 4, 'Laporan penggunaan dana diserahkan kepada bagian kemahasiswaan.', 'menyetujui'),
(170, 35, 0, 0, 0, 'Identifikasi keadaan darurat dilakukan oleh tim keamanan kampus.', 'menyetujui'),
(171, 35, 0, 0, 1, 'Protokol evakuasi dan penanganan darurat diaktifkan.', 'menyetujui'),
(172, 35, 0, 0, 2, 'Informasi keadaan darurat disampaikan kepada seluruh civitas akademika.', 'menyetujui'),
(173, 35, 0, 0, 3, 'Koordinasi dengan pihak terkait (misalnya, pemadam kebakaran, polisi) dilakukan.', 'menyetujui'),
(174, 35, 0, 0, 4, 'Evaluasi dan laporan keadaan darurat disusun setelah situasi terkendali.', 'menyetujui'),
(175, 36, 0, 0, 0, 'Dosen merancang dan menyusun materi perkuliahan daring.', 'menyetujui'),
(176, 36, 0, 0, 1, 'Jadwal dan platform perkuliahan daring diinformasikan kepada mahasiswa.', 'menyetujui'),
(177, 36, 0, 0, 2, 'Pelaksanaan perkuliahan daring sesuai dengan jadwal yang ditetapkan.', 'menyetujui'),
(178, 36, 0, 0, 3, 'Evaluasi dan umpan balik dari mahasiswa dikumpulkan.', 'menyetujui'),
(179, 36, 0, 0, 4, 'Perbaikan dan penyesuaian materi perkuliahan dilakukan berdasarkan umpan balik.', 'menyetujui'),
(180, 37, 0, 0, 0, 'Mahasiswa mengajukan permohonan tinggal di asrama.', 'menyetujui'),
(181, 37, 0, 0, 1, 'Permohonan diserahkan ke bagian pengelolaan asrama.', 'menyetujui'),
(182, 37, 0, 0, 2, 'Verifikasi data dan penempatan kamar dilakukan.', 'menyetujui'),
(183, 37, 0, 0, 3, 'Mahasiswa menerima informasi mengenai peraturan dan fasilitas asrama.', 'menyetujui'),
(184, 37, 0, 0, 4, 'Monitoring dan pemeliharaan fasilitas asrama dilakukan secara berkala.', 'menyetujui'),
(185, 38, 0, 0, 0, 'Data mahasiswa dikumpulkan dan dimasukkan ke dalam sistem informasi akademik.', 'menyetujui'),
(186, 38, 0, 0, 1, 'Verifikasi dan validasi data dilakukan secara berkala.', 'menyetujui'),
(187, 38, 0, 0, 2, 'Akses dan penggunaan data dilakukan sesuai dengan kebijakan privasi.', 'menyetujui'),
(188, 38, 0, 0, 3, 'Pembaruan data dilakukan oleh mahasiswa atau pihak berwenang jika ada perubahan.', 'menyetujui'),
(189, 38, 0, 0, 4, 'Laporan dan analisis data mahasiswa disusun untuk keperluan administrasi dan akademik.', 'menyetujui'),
(190, 39, 0, 0, 0, 'Panitia mengajukan proposal penyelenggaraan pameran atau expo.', 'menyetujui'),
(191, 39, 0, 0, 1, 'Proposal diperiksa dan disetujui oleh pihak berwenang.', 'menyetujui'),
(192, 39, 0, 0, 2, 'Persiapan logistik dan materi dilakukan oleh panitia.', 'menyetujui'),
(193, 39, 0, 0, 3, 'Pelaksanaan pameran atau expo sesuai dengan jadwal yang telah ditetapkan.', 'menyetujui'),
(194, 39, 0, 0, 4, 'Laporan kegiatan diserahkan kepada pihak berwenang setelah acara selesai.', 'menyetujui'),
(195, 40, 0, 0, 0, 'Identifikasi kebutuhan pembangunan atau renovasi dilakukan oleh tim fasilitas.', 'menyetujui'),
(196, 40, 0, 0, 1, 'Proposal pembangunan atau renovasi disusun dan disetujui oleh pihak berwenang.', 'menyetujui'),
(197, 40, 0, 0, 2, 'Pelaksanaan pembangunan atau renovasi dilakukan sesuai dengan rencana yang telah disetujui.', 'menyetujui'),
(198, 40, 0, 0, 3, 'Monitoring dan evaluasi hasil pembangunan atau renovasi dilakukan.', 'menyetujui'),
(199, 40, 0, 0, 4, 'Laporan pembangunan atau renovasi disusun dan disimpan untuk keperluan dokumentasi.', 'menyetujui'),
(200, 41, 0, 0, 0, 'Mahasiswa mengajukan permohonan dana kesejahteraan dengan mengisi formulir yang disediakan.', 'menyetujui'),
(201, 41, 0, 0, 1, 'Formulir dan berkas pendukung diserahkan ke bagian kesejahteraan mahasiswa.', 'menyetujui'),
(202, 41, 0, 0, 2, 'Verifikasi dan evaluasi permohonan dilakukan.', 'menyetujui'),
(203, 41, 0, 0, 3, 'Keputusan persetujuan atau penolakan permohonan diberitahukan kepada mahasiswa.', 'menyetujui'),
(204, 41, 0, 0, 4, 'Dana disalurkan kepada mahasiswa yang memenuhi syarat, dan penggunaan dana dimonitor.', 'menyetujui'),
(205, 42, 0, 0, 0, 'Laporan kekerasan diterima oleh bagian keamanan kampus atau pihak berwenang lainnya.', 'menyetujui'),
(206, 42, 0, 0, 1, 'Penyelidikan dan verifikasi dilakukan terhadap laporan tersebut.', 'menyetujui'),
(207, 42, 0, 0, 2, 'Langkah-langkah perlindungan diambil untuk melindungi korban.', 'menyetujui'),
(208, 42, 0, 0, 3, 'Pelaku dikenakan sanksi sesuai dengan peraturan yang berlaku.', 'menyetujui'),
(209, 42, 0, 0, 4, 'Dokumentasi kasus dan penyelesaian disimpan untuk keperluan administrasi dan evaluasi.', 'menyetujui'),
(210, 43, 0, 0, 0, 'Identifikasi data dan informasi yang perlu dilindungi dilakukan.', 'menyetujui'),
(211, 43, 0, 0, 1, 'Implementasi sistem keamanan informasi sesuai dengan standar yang berlaku.', 'menyetujui'),
(212, 43, 0, 0, 2, 'Monitoring dan pemeliharaan sistem keamanan dilakukan secara berkala.', 'menyetujui'),
(213, 43, 0, 0, 3, 'Tindakan penanganan diambil jika terjadi pelanggaran atau kebocoran data.', 'menyetujui'),
(214, 43, 0, 0, 4, 'Evaluasi dan pembaruan sistem keamanan dilakukan untuk meningkatkan perlindungan.', 'menyetujui'),
(215, 44, 0, 0, 0, 'Pengajuan kerja sama internasional dilakukan oleh fakultas atau program studi.', 'menyetujui'),
(216, 44, 0, 0, 1, 'Proposal kerja sama diperiksa dan disetujui oleh bagian internasional.', 'menyetujui'),
(217, 44, 0, 0, 2, 'Implementasi kerja sama dilakukan sesuai dengan perjanjian yang telah disepakati.', 'menyetujui'),
(218, 44, 0, 0, 3, 'Monitoring dan evaluasi kerja sama dilakukan secara berkala.', 'menyetujui'),
(219, 44, 0, 0, 4, 'Laporan kerja sama diserahkan kepada pihak berwenang untuk dokumentasi dan perbaikan.', 'menyetujui'),
(220, 45, 0, 0, 0, 'Pengajuan kegiatan kebudayaan dilakukan oleh mahasiswa atau staf.', 'menyetujui'),
(221, 45, 0, 0, 1, 'Proposal kegiatan diperiksa dan disetujui oleh bagian kemahasiswaan atau kebudayaan.', 'menyetujui'),
(222, 45, 0, 0, 2, 'Persiapan logistik dan materi dilakukan oleh panitia.', 'menyetujui'),
(223, 45, 0, 0, 3, 'Pelaksanaan kegiatan kebudayaan sesuai dengan jadwal yang telah ditetapkan.', 'menyetujui'),
(224, 45, 0, 0, 4, 'Laporan kegiatan diserahkan kepada pihak berwenang setelah acara selesai.', 'menyetujui'),
(225, 46, 0, 0, 0, 'Mahasiswa mendaftar untuk mengikuti praktikum sesuai dengan mata kuliah yang diambil.', 'menyetujui'),
(226, 46, 0, 0, 1, 'Jadwal praktikum dan instruksi diberikan kepada mahasiswa.', 'menyetujui'),
(227, 46, 0, 0, 2, 'Pelaksanaan praktikum dilakukan di laboratorium atau lokasi yang telah ditentukan.', 'menyetujui'),
(228, 46, 0, 0, 3, 'Evaluasi hasil praktikum dilakukan oleh dosen pembimbing.', 'menyetujui'),
(229, 46, 0, 0, 4, 'Nilai dan laporan praktikum diserahkan kepada mahasiswa dan bagian akademik.', 'menyetujui'),
(230, 47, 0, 0, 0, 'Mahasiswa mengajukan permohonan rekomendasi akademik kepada dosen atau pihak berwenang.', 'menyetujui'),
(231, 47, 0, 0, 1, 'Verifikasi data dan prestasi akademik dilakukan.', 'menyetujui'),
(232, 47, 0, 0, 2, 'Surat rekomendasi akademik disusun dan ditandatangani oleh dosen atau pihak berwenang.', 'menyetujui'),
(233, 47, 0, 0, 3, 'Surat rekomendasi diserahkan kepada mahasiswa.', 'menyetujui'),
(234, 47, 0, 0, 4, 'Dokumentasi rekomendasi disimpan untuk keperluan administrasi.', 'menyetujui'),
(235, 48, 0, 0, 0, 'Penerimaan dana sumbangan atau hibah dicatat oleh bagian keuangan.', 'menyetujui'),
(236, 48, 0, 0, 1, 'Verifikasi dan pencatatan dilakukan sesuai dengan prosedur akuntansi yang berlaku.', 'menyetujui'),
(237, 48, 0, 0, 2, 'Pengelolaan dana dilakukan sesuai dengan tujuan sumbangan atau hibah.', 'menyetujui'),
(238, 48, 0, 0, 3, 'Monitoring dan evaluasi penggunaan dana dilakukan secara berkala.', 'menyetujui'),
(239, 48, 0, 0, 4, 'Laporan penggunaan dana disusun dan diserahkan kepada pihak penyumbang atau pemberi hibah.', 'menyetujui'),
(240, 49, 0, 0, 0, 'Pengajuan kegiatan olahraga dilakukan oleh mahasiswa atau staf.', 'menyetujui'),
(241, 49, 0, 0, 1, 'Proposal kegiatan diperiksa dan disetujui oleh bagian kemahasiswaan atau olahraga.', 'menyetujui'),
(242, 49, 0, 0, 2, 'Persiapan logistik dan fasilitas dilakukan oleh panitia.', 'menyetujui'),
(243, 49, 0, 0, 3, 'Pelaksanaan kegiatan olahraga sesuai dengan jadwal yang telah ditetapkan.', 'menyetujui'),
(244, 49, 0, 0, 4, 'Laporan kegiatan diserahkan kepada pihak berwenang setelah acara selesai.', 'menyetujui'),
(245, 50, 0, 0, 0, 'Identifikasi risiko kesehatan dan keselamatan dilakukan oleh tim K3.', 'menyetujui'),
(246, 50, 0, 0, 1, 'Implementasi program K3 sesuai dengan standar yang berlaku.', 'menyetujui'),
(247, 50, 0, 0, 2, 'Pelatihan dan sosialisasi K3 dilakukan kepada seluruh civitas akademika.', 'menyetujui'),
(248, 50, 0, 0, 3, 'Monitoring dan evaluasi program K3 dilakukan secara berkala.', 'menyetujui'),
(249, 50, 0, 0, 4, 'Tindakan penanganan diambil jika terjadi insiden atau pelanggaran K3.', 'menyetujui'),
(250, 51, 0, 0, 0, 'Penyusunan strategi komunikasi dan humas dilakukan oleh tim humas.', 'menyetujui'),
(251, 51, 0, 0, 1, 'Implementasi program komunikasi dilakukan sesuai dengan rencana yang telah disusun.', 'menyetujui'),
(252, 51, 0, 0, 2, 'Monitoring dan evaluasi efektivitas komunikasi dilakukan.', 'menyetujui'),
(253, 51, 0, 0, 3, 'Pengelolaan media sosial dan website universitas dilakukan secara aktif.', 'menyetujui'),
(254, 51, 0, 0, 4, 'Laporan kegiatan humas dan komunikasi disusun dan diserahkan kepada pihak berwenang.', 'menyetujui'),
(255, 52, 0, 0, 0, 'Penulis mengajukan naskah buku atau materi ajar ke bagian penerbitan.', 'menyetujui'),
(256, 52, 0, 0, 1, 'Naskah diperiksa dan disetujui oleh editor.', 'menyetujui'),
(257, 52, 0, 0, 2, 'Proses produksi dan percetakan dilakukan sesuai dengan standar penerbitan.', 'menyetujui'),
(258, 52, 0, 0, 3, 'Distribusi buku atau materi ajar dilakukan kepada mahasiswa atau pihak yang berkepentingan.', 'menyetujui'),
(259, 52, 0, 0, 4, 'Evaluasi dan revisi dilakukan berdasarkan umpan balik pengguna.', 'menyetujui'),
(260, 53, 0, 0, 0, 'Mahasiswa mengajukan permohonan dana bantuan dengan mengisi formulir yang disediakan.', 'menyetujui'),
(261, 53, 0, 0, 1, 'Formulir dan berkas pendukung diserahkan ke bagian kesejahteraan mahasiswa.', 'menyetujui'),
(262, 53, 0, 0, 2, 'Verifikasi dan evaluasi permohonan dilakukan.', 'menyetujui'),
(263, 53, 0, 0, 3, 'Keputusan persetujuan atau penolakan permohonan diberitahukan kepada mahasiswa.', 'menyetujui'),
(264, 53, 0, 0, 4, 'Dana disalurkan kepada mahasiswa yang memenuhi syarat, dan penggunaan dana dimonitor.', 'menyetujui'),
(265, 54, 0, 0, 0, 'Mahasiswa dengan kebutuhan khusus mengajukan permohonan fasilitas atau layanan khusus.', 'menyetujui'),
(266, 54, 0, 0, 1, 'Verifikasi kebutuhan dilakukan oleh bagian layanan mahasiswa atau pihak terkait.', 'menyetujui'),
(267, 54, 0, 0, 2, 'Penyediaan fasilitas atau layanan khusus dilakukan sesuai dengan kebutuhan yang telah diverifikasi.', 'menyetujui'),
(268, 54, 0, 0, 3, 'Monitoring dan evaluasi efektivitas fasilitas atau layanan khusus dilakukan.', 'menyetujui'),
(269, 54, 0, 0, 4, 'Laporan penggunaan fasilitas atau layanan disusun dan diserahkan kepada pihak berwenang.', 'menyetujui'),
(270, 55, 0, 0, 0, 'Pembentukan panitia dies natalis dilakukan oleh pihak berwenang.', 'menyetujui'),
(271, 55, 0, 0, 1, 'Penyusunan rencana kegiatan dan anggaran dilakukan oleh panitia.', 'menyetujui'),
(272, 55, 0, 0, 2, 'Persiapan logistik, materi, dan undangan dilakukan oleh panitia.', 'menyetujui'),
(273, 55, 0, 0, 3, 'Pelaksanaan acara dies natalis sesuai dengan jadwal yang telah ditetapkan.', 'menyetujui'),
(274, 55, 0, 0, 4, 'Laporan kegiatan diserahkan kepada pihak berwenang setelah acara selesai.', 'menyetujui'),
(275, 56, 0, 0, 0, 'Peneliti mengajukan proposal dana bantuan penelitian.', 'menyetujui'),
(276, 56, 0, 0, 1, 'Proposal diperiksa dan dievaluasi oleh komite penelitian.', 'menyetujui'),
(277, 56, 0, 0, 2, 'Persetujuan dan pencairan dana dilakukan jika proposal memenuhi syarat.', 'menyetujui'),
(278, 56, 0, 0, 3, 'Pengelolaan dana dilakukan sesuai dengan rencana anggaran yang diajukan.', 'menyetujui'),
(279, 56, 0, 0, 4, 'Laporan penggunaan dana diserahkan kepada komite penelitian.', 'menyetujui'),
(280, 57, 0, 0, 0, 'Laporan masalah etika penelitian diterima oleh komite etika penelitian.', 'menyetujui'),
(281, 57, 0, 0, 1, 'Penyelidikan dan verifikasi dilakukan terhadap laporan tersebut.', 'menyetujui'),
(282, 57, 0, 0, 2, 'Tindakan penanganan diambil jika ditemukan pelanggaran etika.', 'menyetujui'),
(283, 57, 0, 0, 3, 'Rekomendasi perbaikan diberikan kepada peneliti.', 'menyetujui'),
(284, 57, 0, 0, 4, 'Dokumentasi kasus dan penyelesaian disimpan untuk keperluan administrasi dan evaluasi.', 'menyetujui'),
(285, 58, 0, 0, 0, 'Pengajuan kerja sama industri dilakukan oleh fakultas atau program studi.', 'menyetujui'),
(286, 58, 0, 0, 1, 'Proposal kerja sama diperiksa dan disetujui oleh bagian kerja sama.', 'menyetujui'),
(287, 58, 0, 0, 2, 'Implementasi kerja sama dilakukan sesuai dengan perjanjian yang telah disepakati.', 'menyetujui'),
(288, 58, 0, 0, 3, 'Monitoring dan evaluasi kerja sama dilakukan secara berkala.', 'menyetujui'),
(289, 58, 0, 0, 4, 'Laporan kerja sama diserahkan kepada pihak berwenang untuk dokumentasi dan perbaikan.', 'menyetujui'),
(290, 59, 0, 0, 0, 'Mahasiswa mendaftar untuk program magang melalui bagian kemahasiswaan atau program studi.', 'menyetujui'),
(291, 59, 0, 0, 1, 'Penempatan magang dilakukan sesuai dengan bidang studi dan ketersediaan tempat magang.', 'menyetujui'),
(292, 59, 0, 0, 2, 'Pelaksanaan magang dilakukan sesuai dengan jadwal dan aturan yang berlaku.', 'menyetujui'),
(293, 59, 0, 0, 3, 'Monitoring dan evaluasi kinerja mahasiswa magang dilakukan oleh dosen pembimbing.', 'menyetujui'),
(294, 59, 0, 0, 4, 'Laporan magang diserahkan kepada mahasiswa dan bagian akademik.', 'menyetujui'),
(295, 60, 0, 0, 0, 'Laporan sengketa akademik diterima oleh bagian akademik atau pihak berwenang.', 'menyetujui'),
(296, 60, 0, 0, 1, 'Penyelidikan dan mediasi dilakukan untuk menyelesaikan sengketa.', 'menyetujui'),
(297, 60, 0, 0, 2, 'Keputusan penyelesaian sengketa disampaikan kepada pihak yang bersengketa.', 'menyetujui'),
(298, 60, 0, 0, 3, 'Tindakan perbaikan diambil jika diperlukan untuk mencegah sengketa serupa di masa depan.', 'menyetujui'),
(299, 60, 0, 0, 4, 'Dokumentasi kasus dan penyelesaian disimpan untuk keperluan administrasi dan evaluasi.', 'menyetujui'),
(300, 61, 0, 0, 0, 'Pengumuman program beasiswa disampaikan kepada seluruh mahasiswa.', 'menyetujui'),
(301, 61, 0, 0, 1, 'Mahasiswa mengajukan aplikasi beasiswa dengan mengisi formulir dan melampirkan berkas pendukung.', 'menyetujui'),
(302, 61, 0, 0, 2, 'Evaluasi dan seleksi aplikasi beasiswa dilakukan oleh komite beasiswa.', 'menyetujui'),
(303, 61, 0, 0, 3, 'Pengumuman penerima beasiswa disampaikan kepada mahasiswa yang terpilih.', 'menyetujui'),
(304, 61, 0, 0, 4, 'Penyaluran dana beasiswa dilakukan dan penggunaan dana dipantau.', 'menyetujui'),
(305, 62, 0, 0, 0, 'Mahasiswa mengajukan permohonan surat keterangan aktif ke bagian akademik.', 'menyetujui'),
(306, 62, 0, 0, 1, 'Verifikasi status keaktifan mahasiswa dilakukan.', 'menyetujui'),
(307, 62, 0, 0, 2, 'Penyusunan dan penandatanganan surat keterangan aktif dilakukan.', 'menyetujui'),
(308, 62, 0, 0, 3, 'Surat keterangan diserahkan kepada mahasiswa.', 'menyetujui'),
(309, 62, 0, 0, 4, 'Dokumentasi surat keterangan disimpan untuk keperluan administrasi.', 'menyetujui'),
(310, 63, 0, 0, 0, 'Mahasiswa mengisi formulir permohonan cuti akademik.', 'menyetujui'),
(311, 63, 0, 0, 1, 'Formulir dan berkas pendukung diserahkan ke bagian akademik atau program studi.', 'menyetujui'),
(312, 63, 0, 0, 2, 'Verifikasi dan persetujuan permohonan dilakukan oleh pihak berwenang.', 'menyetujui'),
(313, 63, 0, 0, 3, 'Surat keputusan cuti akademik diserahkan kepada mahasiswa.', 'menyetujui'),
(314, 63, 0, 0, 4, 'Dokumentasi cuti akademik disimpan dalam sistem administrasi akademik.', 'menyetujui'),
(315, 64, 0, 0, 0, 'Mahasiswa mengajukan permohonan bimbingan konseling ke bagian layanan mahasiswa.', 'menyetujui'),
(316, 64, 0, 0, 1, 'Jadwal konseling ditetapkan dan disampaikan kepada mahasiswa.', 'menyetujui'),
(317, 64, 0, 0, 2, 'Pelaksanaan sesi konseling dilakukan sesuai jadwal.', 'menyetujui'),
(318, 64, 0, 0, 3, 'Evaluasi hasil konseling dan tindak lanjut dilakukan oleh konselor.', 'menyetujui'),
(319, 64, 0, 0, 4, 'Dokumentasi sesi konseling disimpan dengan menjaga kerahasiaan mahasiswa.', 'menyetujui'),
(320, 65, 0, 0, 0, 'Mahasiswa yang telah menyelesaikan semua persyaratan akademik mengajukan permohonan SKL.', 'menyetujui'),
(321, 65, 0, 0, 1, 'Verifikasi data kelulusan dilakukan oleh bagian akademik.', 'menyetujui'),
(322, 65, 0, 0, 2, 'Penyusunan dan penandatanganan SKL dilakukan.', 'menyetujui'),
(323, 65, 0, 0, 3, 'SKL diserahkan kepada mahasiswa.', 'menyetujui'),
(324, 65, 0, 0, 4, 'Dokumentasi SKL disimpan untuk keperluan administrasi.', 'menyetujui'),
(325, 66, 0, 0, 0, 'Penyebaran kuesioner evaluasi kepada mahasiswa dilakukan pada akhir semester.', 'menyetujui'),
(326, 66, 0, 0, 1, 'Mahasiswa mengisi kuesioner evaluasi secara anonim.', 'menyetujui'),
(327, 66, 0, 0, 2, 'Pengumpulan dan analisis data evaluasi dilakukan.', 'menyetujui'),
(328, 66, 0, 0, 3, 'Hasil evaluasi disampaikan kepada dosen yang bersangkutan dan pihak berwenang.', 'menyetujui'),
(329, 66, 0, 0, 4, 'Tindak lanjut dan perbaikan dilakukan berdasarkan hasil evaluasi.', 'menyetujui'),
(330, 67, 0, 0, 0, 'Pencatatan semua inventaris kampus dilakukan oleh bagian inventarisasi.', 'menyetujui'),
(331, 67, 0, 0, 1, 'Verifikasi dan pembaruan data inventaris dilakukan secara berkala.', 'menyetujui'),
(332, 67, 0, 0, 2, 'Pengelolaan pemakaian dan perawatan inventaris dilakukan sesuai prosedur.', 'menyetujui'),
(333, 67, 0, 0, 3, 'Monitoring kondisi dan kebutuhan inventaris dilakukan.', 'menyetujui'),
(334, 67, 0, 0, 4, 'Laporan inventaris disusun dan diserahkan kepada pihak berwenang.', 'menyetujui'),
(335, 68, 0, 0, 0, 'Mahasiswa mengajukan permohonan dana bantuan darurat dengan melampirkan dokumen pendukung.', 'menyetujui'),
(336, 68, 0, 0, 1, 'Verifikasi dan evaluasi permohonan dilakukan oleh komite bantuan darurat.', 'menyetujui'),
(337, 68, 0, 0, 2, 'Keputusan persetujuan atau penolakan permohonan diberitahukan kepada mahasiswa.', 'menyetujui'),
(338, 68, 0, 0, 3, 'Penyaluran dana bantuan darurat dilakukan dan penggunaan dana dipantau.', 'menyetujui'),
(339, 68, 0, 0, 4, 'Laporan penggunaan dana disusun untuk keperluan administrasi.', 'menyetujui'),
(340, 69, 0, 0, 0, 'Penyusunan rencana pelatihan atau workshop dilakukan oleh panitia.', 'menyetujui'),
(341, 69, 0, 0, 1, 'Pendaftaran peserta dilakukan melalui formulir yang disediakan.', 'menyetujui'),
(342, 69, 0, 0, 2, 'Pelaksanaan pelatihan atau workshop sesuai dengan jadwal yang ditetapkan.', 'menyetujui'),
(343, 69, 0, 0, 3, 'Evaluasi dan umpan balik dari peserta dikumpulkan.', 'menyetujui'),
(344, 69, 0, 0, 4, 'Laporan kegiatan diserahkan kepada pihak berwenang untuk dokumentasi dan perbaikan.', 'menyetujui'),
(345, 70, 0, 0, 0, 'Penyusunan rencana kunjungan industri atau study tour dilakukan oleh program studi atau panitia.', 'menyetujui'),
(346, 70, 0, 0, 1, 'Pendaftaran peserta dilakukan melalui formulir yang disediakan.', 'menyetujui'),
(347, 70, 0, 0, 2, 'Persiapan logistik dan koordinasi dengan industri atau lokasi kunjungan dilakukan.', 'menyetujui'),
(348, 70, 0, 0, 3, 'Pelaksanaan kunjungan industri atau study tour sesuai dengan jadwal yang ditetapkan.', 'menyetujui'),
(349, 70, 0, 0, 4, 'Laporan kegiatan diserahkan kepada pihak berwenang setelah acara selesai.', 'menyetujui'),
(350, 71, 0, 0, 0, 'Penyusunan rencana seminar atau konferensi dilakukan oleh panitia.', 'menyetujui'),
(351, 71, 0, 0, 1, 'Pengumuman dan pendaftaran peserta dilakukan melalui platform yang disediakan.', 'menyetujui'),
(352, 71, 0, 0, 2, 'Persiapan logistik, materi, dan pembicara dilakukan oleh panitia.', 'menyetujui'),
(353, 71, 0, 0, 3, 'Pelaksanaan seminar atau konferensi sesuai dengan jadwal yang ditetapkan.', 'menyetujui'),
(354, 71, 0, 0, 4, 'Laporan kegiatan diserahkan kepada pihak berwenang setelah acara selesai.', 'menyetujui'),
(355, 72, 0, 0, 0, 'Dosen mengajukan permohonan untuk mengikuti program pertukaran dosen.', 'menyetujui'),
(356, 72, 0, 0, 1, 'Verifikasi dan seleksi dilakukan oleh bagian internasional atau pihak berwenang.', 'menyetujui'),
(357, 72, 0, 0, 2, 'Koordinasi dengan institusi mitra dilakukan untuk persiapan dan pelaksanaan pertukaran.', 'menyetujui'),
(358, 72, 0, 0, 3, 'Pelaksanaan program pertukaran dosen sesuai dengan jadwal yang telah disepakati.', 'menyetujui'),
(359, 72, 0, 0, 4, 'Laporan hasil program pertukaran diserahkan kepada pihak berwenang setelah selesai.', 'menyetujui'),
(360, 73, 0, 0, 0, 'Rekrutmen dan pelatihan mentor dilakukan oleh bagian kemahasiswaan atau program studi.', 'menyetujui'),
(361, 73, 0, 0, 1, 'Pendaftaran mahasiswa baru untuk program mentoring dilakukan.', 'menyetujui'),
(362, 73, 0, 0, 2, 'Penugasan mentor kepada mahasiswa baru dilakukan.', 'menyetujui'),
(363, 73, 0, 0, 3, 'Pelaksanaan program mentoring sesuai dengan jadwal dan rencana yang ditetapkan.', 'menyetujui'),
(364, 73, 0, 0, 4, 'Evaluasi dan laporan hasil program mentoring disusun dan diserahkan kepada pihak berwenang.', 'menyetujui'),
(365, 74, 0, 0, 0, 'Pendaftaran anggota perpustakaan dilakukan untuk mahasiswa, dosen, dan staf.', 'menyetujui'),
(366, 74, 0, 0, 1, 'Pengelolaan koleksi perpustakaan dilakukan sesuai dengan standar yang berlaku.', 'menyetujui'),
(367, 74, 0, 0, 2, 'Penyediaan layanan sirkulasi, referensi, dan digital dilakukan.', 'menyetujui'),
(368, 74, 0, 0, 3, 'Monitoring penggunaan dan pemeliharaan koleksi perpustakaan dilakukan.', 'menyetujui'),
(369, 74, 0, 0, 4, 'Laporan kegiatan perpustakaan disusun untuk keperluan administrasi dan pengembangan.', 'menyetujui'),
(370, 75, 0, 0, 0, 'Organisasi mahasiswa mengajukan proposal dana kegiatan ke bagian kemahasiswaan.', 'menyetujui'),
(371, 75, 0, 0, 1, 'Verifikasi dan evaluasi proposal dilakukan.', 'menyetujui'),
(372, 75, 0, 0, 2, 'Persetujuan dan pencairan dana dilakukan jika proposal memenuhi syarat.', 'menyetujui'),
(373, 75, 0, 0, 3, 'Pengelolaan dana kegiatan dilakukan sesuai dengan rencana anggaran yang diajukan.', 'menyetujui'),
(374, 75, 0, 0, 4, 'Laporan penggunaan dana diserahkan kepada bagian kemahasiswaan.', 'menyetujui'),
(375, 76, 0, 0, 0, 'Pengajuan program kerja sama dengan alumni dilakukan oleh fakultas atau program studi.', 'menyetujui'),
(376, 76, 0, 0, 1, 'Verifikasi dan persetujuan program dilakukan oleh bagian alumni.', 'menyetujui'),
(377, 76, 0, 0, 2, 'Implementasi program kerja sama dilakukan sesuai dengan rencana yang telah disusun.', 'menyetujui'),
(378, 76, 0, 0, 3, 'Monitoring dan evaluasi program kerja sama dilakukan secara berkala.', 'menyetujui'),
(379, 76, 0, 0, 4, 'Laporan kegiatan kerja sama disusun dan diserahkan kepada pihak berwenang.', 'menyetujui'),
(380, 77, 0, 0, 0, 'Mahasiswa mengajukan proposal penelitian ke bagian akademik atau penelitian.', 'menyetujui'),
(381, 77, 0, 0, 1, 'Verifikasi dan evaluasi proposal dilakukan oleh komite penelitian.', 'menyetujui'),
(382, 77, 0, 0, 2, 'Persetujuan dan pencairan dana penelitian dilakukan jika proposal memenuhi syarat.', 'menyetujui'),
(383, 77, 0, 0, 3, 'Pelaksanaan penelitian dilakukan sesuai dengan rencana yang telah disusun.', 'menyetujui'),
(384, 77, 0, 0, 4, 'Laporan hasil penelitian diserahkan kepada komite penelitian.', 'menyetujui'),
(385, 78, 0, 0, 0, 'Mahasiswa mengajukan proposal kegiatan kewirausahaan ke bagian kemahasiswaan atau kewirausahaan.', 'menyetujui'),
(386, 78, 0, 0, 1, 'Verifikasi dan evaluasi proposal dilakukan.', 'menyetujui'),
(387, 78, 0, 0, 2, 'Persetujuan dan pencairan dana dilakukan jika proposal memenuhi syarat.', 'menyetujui'),
(388, 78, 0, 0, 3, 'Pelaksanaan kegiatan kewirausahaan dilakukan sesuai dengan rencana yang telah disusun.', 'menyetujui'),
(389, 78, 0, 0, 4, 'Laporan kegiatan kewirausahaan diserahkan kepada bagian kemahasiswaan atau kewirausahaan.', 'menyetujui'),
(390, 79, 0, 0, 0, 'Rekrutmen dan pelatihan relawan dilakukan oleh bagian kemahasiswaan atau program studi.', 'menyetujui'),
(391, 79, 0, 0, 1, 'Pendaftaran mahasiswa yang berminat menjadi relawan dilakukan.', 'menyetujui'),
(392, 79, 0, 0, 2, 'Penugasan relawan sesuai dengan kebutuhan kegiatan dilakukan.', 'menyetujui'),
(393, 79, 0, 0, 3, 'Pelaksanaan aktivitas relawan dilakukan sesuai dengan rencana yang telah disusun.', 'menyetujui'),
(394, 79, 0, 0, 4, 'Evaluasi dan laporan hasil aktivitas relawan disusun dan diserahkan kepada pihak berwenang.', 'menyetujui'),
(406, 81, 0, 273, 0, 'Dosen Mengajukan permohonan untuk mencoba sistem', 'menyetujui'),
(404, 80, 0, 40, 1, 'asd fasd fasdf dsf 33333', 'menyetujui'),
(405, 80, 0, 18, 2, 'as das asdf', 'menyetujui'),
(402, 80, 0, 51, 0, '1111111111', 'menyetujui'),
(401, 1, 0, 3, 0, 'sdf asdf dasf', 'menyetujui'),
(407, 81, 0, 203, 1, 'Kaprodi menganalisi apakah disetujui atau tidak, jika di setujui perlu tindakan dari wakil dekan', 'menyetujui'),
(408, 81, 0, 183, 2, 'Wakil dekan menganalisa apakah disetujui atau tidak, jika di setujui perlu tindakan dari dekan', 'menyetujui'),
(409, 81, 0, 177, 3, 'Dekan menganalisa apakah disetujui atau tidak, jika di setujui perlu tindakan dari Wakil Rektor 2', 'menyetujui'),
(410, 81, 0, 174, 4, 'Warek2 menganalisa apakah disetujui atau tidak, jika di setujui perlu tindakan dari Rektor', 'menyetujui'),
(411, 81, 0, 6, 5, 'Rektor Menganalisa apakah disetujui atau tidak, jika setuju maka percobaan bisa dilaksanakan', 'menyetujui');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sop_step_units`
--

CREATE TABLE `sop_step_units` (
  `id` bigint(11) NOT NULL,
  `id_sop` bigint(11) NOT NULL,
  `id_sop_step` bigint(11) NOT NULL,
  `id_parent_step` int(11) NOT NULL,
  `id_unit` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_pengajuan`
--

CREATE TABLE `status_pengajuan` (
  `id` int(11) NOT NULL,
  `kode` char(20) NOT NULL,
  `judul` char(150) NOT NULL,
  `warna_bg` char(20) NOT NULL,
  `warna_text` char(20) NOT NULL,
  `grup` int(2) NOT NULL,
  `grup_form` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `status_pengajuan`
--

INSERT INTO `status_pengajuan` (`id`, `kode`, `judul`, `warna_bg`, `warna_text`, `grup`, `grup_form`) VALUES
(1, 'draft', 'Draft', '#ccc', '#000', 1, 1),
(2, 'diajukan', 'Diajukan', '#008157', '#fff', 2, 1),
(3, 'batal', 'Batal', '#e60000', '#fff', 1, 1),
(4, 'disetujui', 'Disetujui', '#008157', '#fff', 3, 2),
(5, 'tidak_disetujui', 'Tidak Disetujui', '#e60000', '#fff', 4, 2),
(7, 'selesai', 'Selesai', '#008157', '#fff', 5, 3),
(8, 'perbaikan', 'Perlu Perbaikan', '#e60000', '#fff', 4, 2),
(9, 'menunggu persetujuan', 'Menunggu Persetujuan', 'orange', '#fff', 4, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `units`
--

CREATE TABLE `units` (
  `id` int(11) NOT NULL,
  `code` char(20) DEFAULT NULL,
  `parent_code` char(20) DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `sort_order` int(4) NOT NULL DEFAULT 0,
  `keterangan` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `units`
--

INSERT INTO `units` (`id`, `code`, `parent_code`, `nama`, `sort_order`, `keterangan`) VALUES
(1, '01', NULL, 'Yayasan', 1, NULL),
(2, '0101', '01', 'Dewan Pembina', 1, NULL),
(3, '0102', '01', 'Dewan Pengawas', 2, NULL),
(4, '0103', '01', 'Dewan Pengurus', 3, NULL),
(5, '02', NULL, 'Rektorat', 2, NULL),
(6, '0201', '02', 'Rektor', 1, NULL),
(11, '07', NULL, 'General Affairs', 7, NULL),
(12, '0701', '07', 'General Affairs Office', 1, NULL),
(13, '070101', '0701', 'Campus Cleaning Team', 1, NULL),
(14, '070103', '0701', 'Pemeliharaan Bangunan', 3, NULL),
(15, '070104', '0701', 'Kebersihan Lingkungan', 4, NULL),
(16, '070102', '0701', 'Keamanan Lingkungan', 2, NULL),
(17, '05', NULL, 'Fakultas', 5, NULL),
(18, '03040201', '030402', 'Dekan', 1, NULL),
(26, '04', NULL, 'Lembaga dan Pusat', 4, NULL),
(27, '0402', '04', 'Lembaga Penelitian dan Pengabdian Masyarakat (LPPM)', 2, NULL),
(28, '030102', '0301', 'Ketua', 2, NULL),
(29, '030103', '0301', 'Sekretaris', 3, NULL),
(30, '0403', '04', 'Pusat Pengembangan Karir', 3, NULL),
(31, '0404', '04', 'Pusat Teknologi Informasi', 4, NULL),
(32, '0401', '04', 'Satuan Penjamin Mutu Internal (SPMI)', 1, NULL),
(33, '0405', '04', 'Pusat Inovasi dan Inkubator Bisnis', 5, NULL),
(34, '03', NULL, 'Biro/Unit Administrasi', 3, NULL),
(35, '0301', '03', 'Biro Akademik', 1, NULL),
(36, '0302', '03', 'Biro Keuangan', 2, NULL),
(37, '0303', '03', 'Biro Sumber Daya Manusia', 3, NULL),
(38, '0304', '03', 'Biro Humas dan Kerjasama', 4, NULL),
(39, '0305', '03', 'Biro Perlengkapan dan Aset', 5, NULL),
(40, '06', NULL, 'Unit Pelaksana Teknis (UPT)', 6, NULL),
(41, '0602', '06', 'Perpustakaan', 2, NULL),
(42, '0603', '06', 'Laboratorium', 3, NULL),
(43, '0606', '06', 'Unit Bahasa', 6, NULL),
(44, '0604', '06', 'Unit Kesehatan', 4, NULL),
(45, '0605', '06', 'Unit Layanan Konseling', 5, NULL),
(47, '0607', '06', 'Unit Kegiatan Mahasiswa (UKM)', 7, NULL),
(48, '0608', '06', 'Unit Beasiswa', 8, NULL),
(49, '0609', '06', 'Unit Asrama Mahasiswa', 9, NULL),
(50, '0610', '06', 'Unit Bimbingan dan Konseling', 10, NULL),
(173, '020101', '0201', 'Wakil Rektor 1', 1, NULL),
(174, '020102', '0201', 'Wakil Rektor 2', 2, NULL),
(175, '020103', '0201', 'Wakil Rektor 3', 3, NULL),
(176, '050101', '0501', 'Dekan Fakultas Pertanian', 1, NULL),
(177, '050301', '0503', 'Dekan Fakultas Teknik, Perencanaan & Arsitektur', 1, NULL),
(178, '050401', '0504', 'Dekan Fakultas Kehutanan', 1, NULL),
(179, '050201', '0502', 'Dekan Fakultas Ekonomi dan Bisnis', 1, NULL),
(180, '040101', '0401', 'Ketua SPMI', 1, NULL),
(181, '040201', '0402', 'Ketua LPPM', 1, NULL),
(182, '05010101', '050101', 'Wakil Dekan Fakultas Pertanian', 1, NULL),
(183, '05030101', '050301', 'Wakil Dekan Teknik, Perencanaan &Arsitektur', 1, NULL),
(184, '05040101', '050401', 'Wakil Dekan Fakultas Kehutanan', 1, NULL),
(185, '05020101', '050201', 'Wakil Dekan Fakultas Ekonomi dan Bisnis', 1, NULL),
(186, '030101', '0301', 'Kepala Biro Kemahasiswaan', 1, NULL),
(187, '030402', '0304', 'Kepala Biro Kerjasama', 2, NULL),
(188, '030301', '0303', 'Kepala Biro Umum dan Kepegawaian', 1, NULL),
(189, '030201', '0302', 'Kepala Biro Keuangan', 1, NULL),
(190, '020104', '0201', 'Sekretaris Rektor', 4, NULL),
(191, '04020101', '040201', 'Sekretaris LPPM', 1, NULL),
(192, '04010101', '040101', 'Sekretaris SPMI', 1, NULL),
(193, '040401', '0404', 'Kepala Divisi PMB & IT', 1, NULL),
(194, '030401', '0304', 'Kepala Divisi Humas &Protokoler', 1, NULL),
(195, '0501010106', '05010101', 'Kaprodi Magister Agribisnis (S2)', 6, NULL),
(196, '0501010105', '05010101', 'Kaprodi Magister Agroteknologi (S2)', 5, NULL),
(197, '0501010104', '05010101', 'Kaprodi Agribisnis (S1)', 4, NULL),
(198, '0501010103', '05010101', 'Kaprodi Agroteknologi (S1)', 3, NULL),
(199, '0503010107', '05030101', 'Kaprodi Teknik Sipil', 7, NULL),
(200, '0503010106', '05030101', 'Kaprodi Teknik Arsitektur', 6, NULL),
(201, '0503010105', '05030101', 'Kaprodi Teknik Geodesi', 5, NULL),
(202, '0503010104', '05030101', 'Kaprodi Teknik Perencanaan Wilayah & Kota', 4, NULL),
(203, '0503010103', '05030101', 'Kaprodi Teknik Lingkungan', 3, NULL),
(204, '0504010103', '05040101', 'Kaprodi Ilmu Kehutanan', 3, NULL),
(205, '0502010104', '05020101', 'Kaprodi Magister Manajemen (S2)', 4, NULL),
(206, '0502010105', '05020101', 'Kaprodi Manajemen (S1)', 5, NULL),
(207, '0502010103', '05020101', 'Kaprodi Akuntansi (S1)', 3, NULL),
(208, '0501010102', '05010101', 'Kepala Bagian Akademik Fakultas Pertanian', 2, NULL),
(209, '0501010101', '05010101', 'Kepala Bagian Non Akademik Fakultas Pertanian', 1, NULL),
(210, '0503010101', '05030101', 'Kepala Bagian Akademik Fakultas Teknik, Perencanaan & Arsitektur', 1, NULL),
(211, '0503010102', '05030101', 'Kepala Bagian Non Akademik Fakultas Teknik, Perencanaan & Arsitektur', 2, NULL),
(212, '0504010102', '05040101', 'Kepala Bagian Akademik Fakultas Kehutanan', 2, NULL),
(213, '0504010101', '05040101', 'Kepala Bagian Non Akademik Fakultas Kehutanan', 1, NULL),
(214, '0502010102', '05020101', 'Kepala Bagian Akademik Fakultas Ekonomi dan Bisnis', 2, NULL),
(215, '0502010101', '05020101', 'Kepala Bagian Non Akademik Fakultas Ekonomi dan Bisnis', 1, NULL),
(216, '0601', '06', 'Kepala UPT Kebun Produksi', 1, NULL),
(218, '050201010201', '0502010102', 'Staf Akademik Fakultas Ekonomi dan Bisnis', 1, NULL),
(219, '0501', '05', 'Fakultas Pertanian', 1, NULL),
(220, '0503', '05', 'Fakultas Teknik, Perencanaan & Arsitektur', 3, NULL),
(221, '0504', '05', 'Fakultas Kehutanan', 4, NULL),
(222, '0502', '05', 'Fakultas Ekonomi dan Bisnis', 2, NULL),
(223, '050101010602', '0501010106', 'Dosen Tidak Tetap', 2, NULL),
(224, '050101010503', '0501010105', 'Dosen LB', 3, NULL),
(225, '050101010301', '0501010103', 'Dosen Tetap', 1, NULL),
(226, '050101010502', '0501010105', 'Dosen Tidak Tetap', 2, NULL),
(227, '050201010303', '0502010103', 'Dosen LB', 3, NULL),
(228, '050201010304', '0502010103', 'Mahasiswa', 4, NULL),
(231, '050201010401', '0502010104', 'Dosen Tetap', 1, NULL),
(232, '050201010402', '0502010104', 'Dosen Tidak Tetap', 2, NULL),
(233, '050201010503', '0502010105', 'Dosen LB', 3, NULL),
(234, '050201010404', '0502010104', 'Mahasiswa', 4, NULL),
(237, '050201010501', '0502010105', 'Dosen Tetap', 1, NULL),
(238, '050201010502', '0502010105', 'Dosen Tidak Tetap', 2, NULL),
(239, '050201010403', '0502010104', 'Dosen LB', 3, NULL),
(240, '050101010304', '0501010103', 'Mahasiswa', 4, NULL),
(243, '050101010601', '0501010106', 'Dosen Tetap', 1, NULL),
(244, '050201010302', '0502010103', 'Dosen Tidak Tetap', 2, NULL),
(245, '050101010603', '0501010106', 'Dosen LB', 3, NULL),
(246, '050101010604', '0501010106', 'Mahasiswa', 4, NULL),
(249, '050101010501', '0501010105', 'Dosen Tetap', 1, NULL),
(250, '050101010402', '0501010104', 'Dosen Tidak Tetap', 2, NULL),
(251, '050101010303', '0501010103', 'Dosen LB', 3, NULL),
(252, '050101010404', '0501010104', 'Mahasiswa', 4, NULL),
(255, '050101010401', '0501010104', 'Dosen Tetap', 1, NULL),
(256, '050101010302', '0501010103', 'Dosen Tidak Tetap', 2, NULL),
(257, '050101010403', '0501010104', 'Dosen LB', 3, NULL),
(258, '050101010504', '0501010105', 'Mahasiswa', 4, NULL),
(261, '050301010501', '0503010105', 'Dosen Tetap', 1, NULL),
(262, '050301010502', '0503010105', 'Dosen Tidak Tetap', 2, NULL),
(263, '050401010303', '0504010103', 'Dosen LB', 3, NULL),
(264, '050301010304', '0503010103', 'Mahasiswa', 4, NULL),
(267, '050301010701', '0503010107', 'Dosen Tetap', 1, NULL),
(269, '050301010303', '0503010103', 'Dosen LB', 3, NULL),
(270, '050301010404', '0503010104', 'Mahasiswa', 4, NULL),
(273, '050301010301', '0503010103', 'Dosen Tetap', 1, NULL),
(274, '050301010402', '0503010104', 'Dosen Tidak Tetap', 2, NULL),
(275, '050301010403', '0503010104', 'Dosen LB', 3, NULL),
(276, '050301010504', '0503010105', 'Mahasiswa', 4, NULL),
(279, '050301010401', '0503010104', 'Dosen Tetap', 1, NULL),
(280, '050301010302', '0503010103', 'Dosen Tidak Tetap', 2, NULL),
(282, '050401010304', '0504010103', 'Mahasiswa', 4, NULL),
(285, '050401010301', '0504010103', 'Dosen Tetap', 1, NULL),
(286, '050401010302', '0504010103', 'Dosen Tidak Tetap', 2, NULL),
(287, '050301010703', '0503010107', 'Dosen LB', 3, NULL),
(288, '050201010504', '0502010105', 'Mahasiswa', 4, NULL),
(291, '050301010601', '0503010106', 'Dosen Tetap', 1, NULL),
(292, '050301010602', '0503010106', 'Dosen Tidak Tetap', 2, NULL),
(293, '050301010503', '0503010105', 'Dosen LB', 3, NULL),
(294, '050301010604', '0503010106', 'Mahasiswa', 4, NULL),
(297, '050201010301', '0502010103', 'Dosen Tetap', 1, NULL),
(298, '050301010702', '0503010107', 'Dosen Tidak Tetap', 2, NULL),
(299, '050301010603', '0503010106', 'Dosen LB', 3, NULL),
(300, '050301010704', '0503010107', 'Mahasiswa', 4, NULL);

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
(1, 'Admin istrator', 'nietaldarkopik@gmail.com', NULL, '$2y$12$itG81kZR7ueYsn1esoqAFu29bCpit8pdNdfy1gexnYVoSfZfdylxK', NULL, '2024-06-11 09:21:47', '2024-06-11 09:21:47'),
(2, 'Deni Irawan, S.T.', 'pengguna0@gmail.com', NULL, '$2y$12$lBFOLfokfIPpgDUXdVPPeOx1rEvbxKCggOCDzZ74/bZfEd7GYOjrO', NULL, '2024-06-20 04:39:00', '2024-06-20 04:39:00'),
(3, 'Ade Mulyana', 'pengguna1@gmail.com', NULL, '$2y$12$QSU2JfiwZI51ZJMBd2LQx.mkx0bVCybVmAbVuB6lVZaRopbVjP48S', NULL, '2024-06-20 04:40:29', '2024-06-20 04:40:29'),
(4, 'Aep Saefulloh', 'pengguna2@gmail.com', NULL, '$2y$12$t9Y7V4FRujqbSDlim5fOVeqMsT2//h2N7OgWSsklzKeZPNItO1kfO', NULL, '2024-06-20 04:40:29', '2024-06-20 04:40:29'),
(5, 'Agung Darmawan', 'pengguna3@gmail.com', NULL, '$2y$12$WVgKtqiW/jRGQpTN5no2Fe0qbKySnVmK0nK5XXqIbS2aanteCWc/2', NULL, '2024-06-20 04:40:29', '2024-06-20 04:40:29'),
(6, 'Ahmad Fauzani Muslim', 'pengguna4@gmail.com', NULL, '$2y$12$fsmRlVbFekoGRbeaESmGueyl.DzCzja4N4q6qiSPfWI5yDlfr9bLC', NULL, '2024-06-20 04:40:30', '2024-06-20 04:40:30'),
(7, 'Alica Gina Rachmalia Sutanto, S.I.Kom', 'pengguna5@gmail.com', NULL, '$2y$12$Sc66CxXwBb1jwPy3gkSAqOLUt6vQ0yuqmMvB00jN21piSkwI56w8y', NULL, '2024-06-20 04:40:30', '2024-06-20 04:40:30'),
(8, 'Anang Suryana, S.P', 'pengguna6@gmail.com', NULL, '$2y$12$hrXF93SdeAiDfb4zeOJCuuA0b42/XfVOK3t980tIv0OpMMA01Lcuy', NULL, '2024-06-20 04:40:30', '2024-06-20 04:40:30'),
(9, 'Andri Firmansyah', 'pengguna7@gmail.com', NULL, '$2y$12$9Ug4t/zOLe247oLXA911uOgPN1b7pD59ohGUSuoIwnAvKCUeFYt52', NULL, '2024-06-20 04:40:31', '2024-06-20 04:40:31'),
(10, 'Ani Hanipah, SP.', 'pengguna8@gmail.com', NULL, '$2y$12$h1Lp2MVrzdIiDV.mUTnfXObLD1sWSIRk/o56i1MOgSj2HCoxdvcha', NULL, '2024-06-20 04:40:31', '2024-06-20 04:40:31'),
(11, 'Ari Ramdani', 'pengguna9@gmail.com', NULL, '$2y$12$yU4dj5V1cw18hwHWo7V6CuQBvOHaUKDjc52LtUfAuXO4aHRKxjpXG', NULL, '2024-06-20 04:40:31', '2024-06-20 04:40:31'),
(12, 'Bayu Sukmawan', 'pengguna10@gmail.com', NULL, '$2y$12$yCX4Ub9PtEjM7EUC1kwG4ep7YElg8kbPfJtJqQccaAQAeygfPclUC', NULL, '2024-06-20 04:40:32', '2024-06-20 04:40:32'),
(13, 'Caca Priatna', 'pengguna11@gmail.com', NULL, '$2y$12$xB2jTAjc/sg3av3zlMlZLeVSxJtYPolQXyWnEt3fYWuwfeoaNsF6C', NULL, '2024-06-20 04:40:32', '2024-06-20 04:40:32'),
(14, 'Deni Priatna, SH', 'pengguna12@gmail.com', NULL, '$2y$12$.xvQc7C03OXGWqEzk4bw1.Pb.QhR9PhfKATDdLlOLI3d9oxqKx5b6', NULL, '2024-06-20 04:40:32', '2024-06-20 04:40:32'),
(15, 'Dera Apriliana', 'pengguna13@gmail.com', NULL, '$2y$12$yU0JzDaIm6zOeI5Cm0qugeIdJtoSmTtFLjY50iiN3bARBxPAwFNDK', NULL, '2024-06-20 04:40:33', '2024-06-20 04:40:33'),
(16, 'Destiana Andhini, S.E.', 'pengguna14@gmail.com', NULL, '$2y$12$cQun2QXnhwBklJV9HVtx0OQMudwuqar91mNZfRzZmyZdj9ZSCAkMK', NULL, '2024-06-20 04:40:33', '2024-06-20 04:40:33'),
(17, 'Doni Irawan', 'pengguna15@gmail.com', NULL, '$2y$12$HUgJhbC5yAnZlig/VGc75eVovOPx.BEwjD/zH6FE.DGOXmyxuozhe', NULL, '2024-06-20 04:40:33', '2024-06-20 04:40:33'),
(18, 'E. Ernawati, S.Pd', 'pengguna16@gmail.com', NULL, '$2y$12$J2Uz1WtHSYMpuatTdeSg6eSW8zCnSZBYZBd2SmKuUtqY68Ucf0O7K', NULL, '2024-06-20 04:40:34', '2024-06-20 04:40:34'),
(19, 'Eden Sumpena', 'pengguna17@gmail.com', NULL, '$2y$12$8jkvs/UsG8iyjK158Ho9q.eDsnANRLiYoxc15d8ZOH3aU6f9KbxjG', NULL, '2024-06-20 04:40:34', '2024-06-20 04:40:34'),
(20, 'Eko Setiarto, S.Hut', 'pengguna18@gmail.com', NULL, '$2y$12$EHyz4ZdxGq87nz514bn1EuOWvldHWkPGqS2AQEIyCTQ6rMhNF4rAa', NULL, '2024-06-20 04:40:34', '2024-06-20 04:40:34'),
(21, 'Fuji Destiandi', 'pengguna19@gmail.com', NULL, '$2y$12$LCIaDjhagLX0PB3avdyN0O.HMSZuP18aJZAx1bysZj5v1.YoI5GKK', NULL, '2024-06-20 04:40:35', '2024-06-20 04:40:35'),
(22, 'Haris Risdiana', 'pengguna20@gmail.com', NULL, '$2y$12$IRkvTPVIMO95yuzY/vkmzueur3fqN.q3.KLnZwzvV7X0FfsPWr.Zq', NULL, '2024-06-20 04:40:35', '2024-06-20 04:40:35'),
(23, 'Heni Nurulaeni, S.Sos', 'pengguna21@gmail.com', NULL, '$2y$12$x8mwEcQnh2XDfbDkeK4GE.X8QyQASRlfsUE1Z5O7Z.B95gXmDO5ue', NULL, '2024-06-20 04:40:36', '2024-06-20 04:40:36'),
(24, 'Heri Lukman', 'pengguna22@gmail.com', NULL, '$2y$12$8amoV2I.MAkLDO5xScrDAu4HWQKTm13yLFPol1yDJE.CEMAO5ouoe', NULL, '2024-06-20 04:40:36', '2024-06-20 04:40:36'),
(25, 'HILDA NUR SYAFIRA', 'pengguna23@gmail.com', NULL, '$2y$12$MRxV61Dnmme8UEaehyef1O7uBlV.U61xkQi0W9ypq0jSK5nNfWehC', NULL, '2024-06-20 04:40:36', '2024-06-20 04:40:36'),
(26, 'Ineu Nuraeni, S.Sos.', 'pengguna24@gmail.com', NULL, '$2y$12$Pd7OzvA.o.lkyMYbzjomNeu/lfiHQr3YJLME1emYWTXUtaDTnvvK.', NULL, '2024-06-20 04:40:37', '2024-06-20 04:40:37'),
(27, 'Lili', 'pengguna25@gmail.com', NULL, '$2y$12$tsRrnFmKHQltcluDVObUQeOwhJGP.ypVUXCWkv9mJPjIQfKsrrCcu', NULL, '2024-06-20 04:40:37', '2024-06-20 04:40:37'),
(28, 'Luthhiady Kusuma Ramdani Hidayat, S.T', 'pengguna26@gmail.com', NULL, '$2y$12$iMwsXXdowEWDZh61O7YPZOPb0kgI0p3W/MVtHHairJjTlF/X4b1jS', NULL, '2024-06-20 04:40:37', '2024-06-20 04:40:37'),
(29, 'MIFTAH FARID', 'pengguna27@gmail.com', NULL, '$2y$12$gaIpN5/eVr.Qr1Detp.zFOXxI2UECLn0pAUcGkt7IzbNRNxmoWaUm', NULL, '2024-06-20 04:40:38', '2024-06-20 04:40:38'),
(30, 'Mochamad Maulana Suwardi', 'pengguna28@gmail.com', NULL, '$2y$12$XJdnDDt8fl6idKhl9GwzA.OHzdK2iSC1q476PV7M/n8piv8rNM7ou', NULL, '2024-06-20 04:40:38', '2024-06-20 04:40:38'),
(31, 'Muhammad Millah Irsyadin', 'pengguna29@gmail.com', NULL, '$2y$12$PM5fvvebXp/eLSdk5Yrrm./A1XSCyFFp8UBX/OiXp52ZEXCgDf2ra', NULL, '2024-06-20 04:40:38', '2024-06-20 04:40:38'),
(32, 'Nenden Siti Nursusanti, S.Psi.', 'pengguna30@gmail.com', NULL, '$2y$12$VZVYrxI9n5KRXDgXPjZMtOUWpEu352ddqfQGXlEyJWk6LzWzT1p4K', NULL, '2024-06-20 04:40:38', '2024-06-20 04:40:38'),
(33, 'Nino Subirno', 'pengguna31@gmail.com', NULL, '$2y$12$md5Jp8GVmEwN6u55YPHB7eyvv9GCbbOvYQYlmpsSzyFZlYHdAjDqa', NULL, '2024-06-20 04:40:39', '2024-06-20 04:40:39'),
(34, 'Noval Pebriansyah, S.M', 'pengguna32@gmail.com', NULL, '$2y$12$8bE0CBH1ghUvqxHDt97tU.JRRKlDj05cewUl.rsjHNF8T71PK21j.', NULL, '2024-06-20 04:40:39', '2024-06-20 04:40:39'),
(35, 'Nurhendra Gunawan', 'pengguna33@gmail.com', NULL, '$2y$12$UBfSfjKCRL1CHbON1pWipekGQw/VXVHX7XSu2zvgMW8tIMWNEtFoK', NULL, '2024-06-20 04:40:39', '2024-06-20 04:40:39'),
(36, 'Omay Komara', 'pengguna34@gmail.com', NULL, '$2y$12$p5Ye0rniWk.JObbba4zRze4XINrpeNhGDikx3JSTFc5QCwMHsUyvG', NULL, '2024-06-20 04:40:40', '2024-06-20 04:40:40'),
(37, 'Rezki Sufindra, S.Si', 'pengguna35@gmail.com', NULL, '$2y$12$4hMh0oa355E.frVjhUn0H.SakqeHLIKWq1a0gjPMoEwFyvGbiqb6e', NULL, '2024-06-20 04:40:40', '2024-06-20 04:40:40'),
(38, 'Rina Marliana', 'pengguna36@gmail.com', NULL, '$2y$12$tfQxOoL7X5.f3WYbCv..EOf.n3ViXNttwmvqd5zk5ZBuTauHko7l6', NULL, '2024-06-20 04:40:40', '2024-06-20 04:40:40'),
(39, 'Ripki Ripkianto', 'pengguna37@gmail.com', NULL, '$2y$12$9ZW5QVAzYcOAhRGrrnHlhOARXnMDxlS.KHUEJKcgvjE0isXk46G.W', NULL, '2024-06-20 04:40:41', '2024-06-20 04:40:41'),
(40, 'Sopyan Agus Salam, S.Sos, M.M', 'pengguna38@gmail.com', NULL, '$2y$12$XYaDbphOeKX5csIJa1ILG.7Ycz2MlTow39v8hbIRHQ3q2IEMABY9i', NULL, '2024-06-20 04:40:41', '2024-06-20 04:40:41'),
(41, 'Taofik Basuki', 'pengguna39@gmail.com', NULL, '$2y$12$7wrfA2PeKzgau806FSl/ne.Q0dbZJZNmOZTX4jlm7nJizUGkiuwu6', NULL, '2024-06-20 04:40:41', '2024-06-20 04:40:41'),
(42, 'Tatang Rohmat', 'pengguna40@gmail.com', NULL, '$2y$12$JZ2JeadQughpfz525DHBqeoet/JnZ0pmyBF4Qc.QG4.p2uhgwB/vq', NULL, '2024-06-20 04:40:42', '2024-06-20 04:40:42'),
(43, 'Tedi Bastian', 'pengguna41@gmail.com', NULL, '$2y$12$XyoOLCwX/0TTkfV/QoMSC.Apb4hGBccC8DuzKCsevT942N0KAamvW', NULL, '2024-06-20 04:40:42', '2024-06-20 04:40:42'),
(44, 'Ujang Saripudin', 'pengguna42@gmail.com', NULL, '$2y$12$6bBl2zfZIEE0qrafSbbhZ.hJ4iih6pIKeD0.Ci7qw13WqlVTT8pqS', NULL, '2024-06-20 04:40:42', '2024-06-20 04:40:42'),
(45, 'Ujang Siron, SP.', 'pengguna43@gmail.com', NULL, '$2y$12$HJlDc/.HMYzDUzY7.j5cLuDyAbAH5FuKlW1OlGMCEAUOpekJn0blC', NULL, '2024-06-20 04:40:43', '2024-06-20 04:40:43'),
(46, 'Wawan', 'pengguna44@gmail.com', NULL, '$2y$12$Af2.JS.goTI1xqpYeBRdNuWNmxJ7NueeFsKlTmFxz/BdN/7NxSloO', NULL, '2024-06-20 04:40:43', '2024-06-20 04:40:43'),
(47, 'Wawan Setiawan', 'pengguna45@gmail.com', NULL, '$2y$12$hfK9SZOUjIIRnmbkVcPKSuBlzJqmM95jNUYVqh.Z6fGsp0pmWHkxS', NULL, '2024-06-20 04:40:43', '2024-06-20 04:40:43'),
(48, 'Wina Sunarti', 'pengguna46@gmail.com', NULL, '$2y$12$WCSzYD.tbCIKMikrfFX/y.dZMOfDVylmTHae.5sUP8CDalBXygCqW', NULL, '2024-06-20 04:40:44', '2024-06-20 04:40:44'),
(49, 'Wirawan', 'pengguna47@gmail.com', NULL, '$2y$12$V7JKLpn6b2hSZY/nYFeb2uxCHyXTHRjzRF89ndWvLCRDtYWaUcpPC', NULL, '2024-06-20 04:40:44', '2024-06-20 04:40:44'),
(50, 'Wisnu Mulyono', 'pengguna48@gmail.com', NULL, '$2y$12$9x.H9/xKsfS21TuZjYyKFuoZSVdtcTZb7fNx/VrKyp8NDEDnVMp0q', NULL, '2024-06-20 04:40:44', '2024-06-20 04:40:44'),
(51, 'Yeni Yuarni', 'pengguna49@gmail.com', NULL, '$2y$12$mexUEO.JC/FRTP0jLTdogOg3wLWVJc9mzZH.bNbD.I3iKy5rzsAiO', NULL, '2024-06-20 04:40:45', '2024-06-20 04:40:45'),
(52, 'Agi Dahtiar, S.Pd., M.Pd.', 'pengguna50@gmail.com', NULL, '$2y$12$7MQm6dWvYsQYm5kIBSp5quGRMG0Msnla6FstQf6rQtHdfuq10dtBa', NULL, '2024-06-20 04:40:45', '2024-06-20 04:40:45'),
(53, 'Bayu Jaka Magistra, M.Hum', 'pengguna51@gmail.com', NULL, '$2y$12$X6SKFeVgPyMYW3rBD43VHeM.jTw87YS5t/4PqLwghG8mEPNPs0rz.', NULL, '2024-06-20 04:40:45', '2024-06-20 04:40:45'),
(54, 'Dra. Ana Yohana, M.P.', 'pengguna52@gmail.com', NULL, '$2y$12$/mImzQgWR2HFp7U03cuaKO6uiqTIKHe0/OjeYhMpNTlPomkdTDiPa', NULL, '2024-06-20 04:40:46', '2024-06-20 04:40:46'),
(55, 'Edang Juliana SP.,MP', 'pengguna53@gmail.com', NULL, '$2y$12$EI.BHY6EXWxXxOHUUb/MwOGqugoqHPg0DroDAUAqbmq4.jOKoOzDW', NULL, '2024-06-20 04:40:46', '2024-06-20 04:40:46'),
(56, 'Ir. Karyana, KS., M.Si', 'pengguna54@gmail.com', NULL, '$2y$12$7Ewng7hvi7iuDi.bWM4Ag.b/mEzCIFMty0mJk20ilLTdAkCkxw05i', NULL, '2024-06-20 04:40:46', '2024-06-20 04:40:46'),
(57, 'Lilis Amaliah Rosdiana, S.Pd., M.Pd.', 'pengguna55@gmail.com', NULL, '$2y$12$nQpoDqHo0SVwhjbFP4IMB.gR.xbKQLK8JXpDg0exT7RQt9daT4n52', NULL, '2024-06-20 04:40:47', '2024-06-20 04:40:47'),
(58, 'Mochamad Ramdan, S.P.,M.P', 'pengguna56@gmail.com', NULL, '$2y$12$bV2gVbqAvOhOPdwPXpX27ulwOGYEQ/HOKJd2RNEwsJAL4DGcFEqwK', NULL, '2024-06-20 04:40:47', '2024-06-20 04:40:47'),
(59, 'Ning Srimenganti, S.Pd., M.P.', 'pengguna57@gmail.com', NULL, '$2y$12$lC7l3H4ASHMEFYX0rpfEEO7CFOUWlDAlqdLn9GEeMGjDJG7xZwl5q', NULL, '2024-06-20 04:40:47', '2024-06-20 04:40:47'),
(60, 'Yuliana Samantha SP., M.EP.', 'pengguna58@gmail.com', NULL, '$2y$12$qyt1UGAqQP3oepeyx1JQ.OGCTwAxQh4NSmGy5yH3Y6EfTdZ2AKTn6', NULL, '2024-06-20 04:40:48', '2024-06-20 04:40:48'),
(61, 'Zahra Nur Safa, S.P.,M.P', 'pengguna59@gmail.com', NULL, '$2y$12$Y5rrfG9hOvir0mpTfuLhkO/ROUQA9h32vIPV5TyN95J9FQUiIIeGi', NULL, '2024-06-20 04:40:48', '2024-06-20 04:40:48'),
(62, 'Dr. Dra. Tuti Gantini, M.P.', 'pengguna60@gmail.com', NULL, '$2y$12$coq7RSgAYknshrX.VVlmjO/DFpn35dkKCnKMWH5htRb756qXotoP.', NULL, '2024-06-20 04:40:48', '2024-06-20 04:40:48'),
(63, 'Dr. Ir. Dety Sukmawati, M.P.', 'pengguna61@gmail.com', NULL, '$2y$12$zsoQW3Vl8Qz.7W72vRknG.fdnbzRPyTqlLsWILQ2vozclOBoi3EY.', NULL, '2024-06-20 04:40:48', '2024-06-20 04:40:48'),
(64, 'Dr. Ir. Hj. Euis Dasipah, M.P.', 'pengguna62@gmail.com', NULL, '$2y$12$sx8Rwbma7qdEnW6ac5BSv.sBAjdyQF7Fyy2KQaVu0nxp4.1YXyYT6', NULL, '2024-06-20 04:40:49', '2024-06-20 04:40:49'),
(65, 'Dr. Ir. Nataliningsih, M.Pd.', 'pengguna63@gmail.com', NULL, '$2y$12$HVqH/8u9OgaraaCleWNOTOAyzfUiSQ7Wz5IgchoALhW9pU..jGjD2', NULL, '2024-06-20 04:40:49', '2024-06-20 04:40:49'),
(66, 'Dr. Ir. Nendah Siti Permana, M.P.', 'pengguna64@gmail.com', NULL, '$2y$12$L9q.gFG2iGgFu/KLYjSJkuO9IRhy0hiwZe6vo3x9/1n0PVMrG/65W', NULL, '2024-06-20 04:40:49', '2024-06-20 04:40:49'),
(67, 'Dr. Ir. Tatang Mulyana, M.M', 'pengguna65@gmail.com', NULL, '$2y$12$y59jJ0AR1/nDRQLMObq1SO7SPkw4gns4.d.w7AL4ZmdYj/8Lp.IoG', NULL, '2024-06-20 04:40:50', '2024-06-20 04:40:50'),
(68, 'Asep Samsul Mustopa, SP., MP', 'pengguna66@gmail.com', NULL, '$2y$12$d5.ODI8Aca/bji4CsOXsH.aGTipJI6L05/Ms4/UhzWIqTeocmmAcy', NULL, '2024-06-20 04:40:50', '2024-06-20 04:40:50'),
(69, 'Dr. Ir. Agus Surya Mulya, M.P.', 'pengguna67@gmail.com', NULL, '$2y$12$Dniu9L2prt/K46SyqAV9g.dod1GWtQl3KFkpk8LYPtsXZhnbUnAoa', NULL, '2024-06-20 04:40:50', '2024-06-20 04:40:50'),
(70, 'Dr. Ir. Elly Roosma Ria, M.Si.', 'pengguna68@gmail.com', NULL, '$2y$12$kkr9mAxjUfWq26AFjb8it.zZ8bpVFI3dod47HUbr4bzrpUOuuewQq', NULL, '2024-06-20 04:40:51', '2024-06-20 04:40:51'),
(71, 'Dr. Ir. Rohana Abdullah, M.S.', 'pengguna69@gmail.com', NULL, '$2y$12$piLH5kIkVkiHRoylO7zBdeTAjNHik1xu1cXeEBsCQimTfhbVjRrzO', NULL, '2024-06-20 04:40:51', '2024-06-20 04:40:51'),
(72, 'Dr. Kovertina Rakhmi Indriana, S.P., M.P.', 'pengguna70@gmail.com', NULL, '$2y$12$oUo0M4g/uC/T7XkX/YhExO8djbUufwiWBfdFp5dR/RFr24Ziq5Rnm', NULL, '2024-06-20 04:40:52', '2024-06-20 04:40:52'),
(73, 'Dr. Linlin Parlinah, S.P.,M.P', 'pengguna71@gmail.com', NULL, '$2y$12$2wksNsWz5TzZLTO1mYG6r./pud3YZe.Nk65UKnDj3XikaHYV6dQkG', NULL, '2024-06-20 04:40:52', '2024-06-20 04:40:52'),
(74, 'Dra. Iis Aisyah, M.Si.', 'pengguna72@gmail.com', NULL, '$2y$12$kernbCj75SY7Ea3AanaT3uDR71X.35asFGTf.rREy7F.UM7e7nN..', NULL, '2024-06-20 04:40:53', '2024-06-20 04:40:53'),
(75, 'Indriana Ulfah, S.P.,M.P', 'pengguna73@gmail.com', NULL, '$2y$12$fVNkaR3xEo4EjGooN0a8xuoHSCwINrMIbqTYVcNLj2mRoai2YlpCi', NULL, '2024-06-20 04:40:53', '2024-06-20 04:40:53'),
(76, 'Ir. Endeh Masnenah, M.P.', 'pengguna74@gmail.com', NULL, '$2y$12$Ppw.T/KbG9Y4b4cYz9V2D.TH/075Voc6QhtpnwcdW7ImYwmMyseDa', NULL, '2024-06-20 04:40:53', '2024-06-20 04:40:53'),
(77, 'Ir. Hudaya Mulyana, M.P.', 'pengguna75@gmail.com', NULL, '$2y$12$XgVIUmUD/s2Hka99OJkxqeWv9mtf65jEIqVyfgoglE3Ap6c5s.g2e', NULL, '2024-06-20 04:40:54', '2024-06-20 04:40:54'),
(78, 'Ir. Yana Taryana, M.P.', 'pengguna76@gmail.com', NULL, '$2y$12$geHdiiX1cOZajl0Khoqzs.rR.pZu2LSMVncGhjJ3rteh9H.IWa4Le', NULL, '2024-06-20 04:40:54', '2024-06-20 04:40:54'),
(79, 'Lia Sugiarti, S.P., M.P.', 'pengguna77@gmail.com', NULL, '$2y$12$gLmqsdbiJUGmICNpJc5cKefUy.UQtEk0Zv/pARkZVRtePrthNmGJK', NULL, '2024-06-20 04:40:56', '2024-06-20 04:40:56'),
(80, 'Prof. Dr. Dra. Tien Turmuktini, M.P.', 'pengguna78@gmail.com', NULL, '$2y$12$jx3hdZYDOu/yv7S5T6O/5eAtHx5pXKG9BDveutItycs7p0BErpI/C', NULL, '2024-06-20 04:40:57', '2024-06-20 04:40:57'),
(81, 'Reni Nurhayatini, S.T., M.P.', 'pengguna79@gmail.com', NULL, '$2y$12$sGzasImYq0OqZRk5WhvkW.48KiFxjT/AKZzE20o2g1GNSs95Fj0LG', NULL, '2024-06-20 04:40:57', '2024-06-20 04:40:57'),
(82, 'Romiyadi, S.P., M.P.', 'pengguna80@gmail.com', NULL, '$2y$12$LjY5ncrvDfZCgBQlYOLIB.qHX.22jsOGVvNM2ga8e8BTbGy7mWXj.', NULL, '2024-06-20 04:40:58', '2024-06-20 04:40:58'),
(83, 'Roni Assafaat Hadi, S.P., M.P.', 'pengguna81@gmail.com', NULL, '$2y$12$meoqDY0Ikq88gpd6d5yInuoFDDGPEtR28DUL48wlC1qFpo2wy57LC', NULL, '2024-06-20 04:40:58', '2024-06-20 04:40:58'),
(84, 'Dr. Ir. R. Wahyono Widodo, M.P. (S2)', 'pengguna82@gmail.com', NULL, '$2y$12$69jitkNIxjmInEa.Aka1qeiWhuobxJiXRCrPsoe4Z.xS/d1RQvKTe', NULL, '2024-06-20 04:40:58', '2024-06-20 04:40:58'),
(85, 'Prof. Dr. Dra. R. Budiasih, M.P. (S2)', 'pengguna83@gmail.com', NULL, '$2y$12$NT2moz9ZbRrbB33TSZ7qsuomYASR6Bek6HhOobOoBIToJ5LHpUaxa', NULL, '2024-06-20 04:40:59', '2024-06-20 04:40:59'),
(86, 'Prof. Dr. Ir. Ai Komariah, M.S. (S2)', 'pengguna84@gmail.com', NULL, '$2y$12$Cxb0zQCDJRufmblpTRHineAXGrUa4EnBIyi46wmc4RyoY0WdjVVnO', NULL, '2024-06-20 04:40:59', '2024-06-20 04:40:59'),
(87, 'Prof. Dr. Ir. Lia Amalia, M.P. (S2)', 'pengguna85@gmail.com', NULL, '$2y$12$9z/vtSBZ3h6IAnLDO0QKWuYbRym7vFgULhdj0l1YoSY7STQY3T5pi', NULL, '2024-06-20 04:40:59', '2024-06-20 04:40:59'),
(88, 'Prof. Dr. Ir. Noertjahyani, M.P. (S2)', 'pengguna86@gmail.com', NULL, '$2y$12$NGf9IYN857WSbmIA7FEdTOmzYvSMzkXocnwUuY.skeQUoo.8kt0ES', NULL, '2024-06-20 04:41:00', '2024-06-20 04:41:00'),
(89, 'Prof. Dr. Ir. Nunung Sondari, M.P. (S2)', 'pengguna87@gmail.com', NULL, '$2y$12$/2R1NMilj5579CGELSSlI.mX5HcwUiswKJgcaWaGC2.yyJhe1QL2G', NULL, '2024-06-20 04:41:00', '2024-06-20 04:41:00'),
(90, 'Dodi Tisna Amijaya, SE.,MM', 'pengguna88@gmail.com', NULL, '$2y$12$153YPK.hTiDuCx.NmbJsguBkrfaxLUmokVNpWoc9XI5io/8MNiv2m', NULL, '2024-06-20 04:41:00', '2024-06-20 04:41:00'),
(91, 'Dr. Annisa Fitri Anggraeni , SE.,MM.,CISA', 'pengguna89@gmail.com', NULL, '$2y$12$Rvg9nX9LZ0sL.lyc5sFmJugO8nu899aLxb0pnOpIWIND9//l3qUHe', NULL, '2024-06-20 04:41:01', '2024-06-20 04:41:01'),
(92, 'Drs. H. Oyon Suharyono, Ak.,MM, CTA', 'pengguna90@gmail.com', NULL, '$2y$12$DeWr2Lef.YblLXzZLRCZROiCukXqfhmcj19t8USIavhakOyFpGUGa', NULL, '2024-06-20 04:41:01', '2024-06-20 04:41:01'),
(93, 'Hendri Maulana, SE.,M.Ak.,CTA', 'pengguna91@gmail.com', NULL, '$2y$12$hyGre5tL1lgx1Ssyvzh8DeCewOmU3lpmIgX5L6SQkV92Sz5FPeugS', NULL, '2024-06-20 04:41:01', '2024-06-20 04:41:01'),
(94, 'Indri Nuryasintia, M.Pd,', 'pengguna92@gmail.com', NULL, '$2y$12$2I6yvcTIvvoj46PZmuhGSuB2t6sYHyo3MB7Agxd97paefTiDrx1n2', NULL, '2024-06-20 04:41:02', '2024-06-20 04:41:02'),
(95, 'Karna Sopandi, , S.E.,M.M', 'pengguna93@gmail.com', NULL, '$2y$12$l6RKiF.CczHzA3Px4SUGd.KQgmGC0r3AuwIWol31jASJR2QSVN7zG', NULL, '2024-06-20 04:41:02', '2024-06-20 04:41:02'),
(96, 'Kartika Pratiwi, SE.,M.Ak', 'pengguna94@gmail.com', NULL, '$2y$12$4C7PodcDWzwpCsf0w97FUuED2JfPuYNb6LHeAGmUzCheD6VFlB4nu', NULL, '2024-06-20 04:41:02', '2024-06-20 04:41:02'),
(97, 'Maria Lusiana Yulianti, SE.,MM', 'pengguna95@gmail.com', NULL, '$2y$12$tZ589WZeQlMuPfUqvjJjqux0Cjc0fgBOI.GH8bTp5P/N8MmO3KY16', NULL, '2024-06-20 04:41:03', '2024-06-20 04:41:03'),
(98, 'Meita Chandra Devi , SE.,M.Ak.,CA', 'pengguna96@gmail.com', NULL, '$2y$12$xwAjDPDZpzeJgHCXnbaTPeYhm7wdTxNBL5EIExO86i7eP4Gq1DzSq', NULL, '2024-06-20 04:41:03', '2024-06-20 04:41:03'),
(99, 'Mochamad Zakaria, S.E.,M.Ak', 'pengguna97@gmail.com', NULL, '$2y$12$ey6zsUodFeVDjNZCLRnBEu6PEr4AYi4fGTu0708HtkFrJJtw4f4lC', NULL, '2024-06-20 04:41:03', '2024-06-20 04:41:03'),
(100, 'Dr. Ir. Ishak Tan, M.Si.', 'pengguna98@gmail.com', NULL, '$2y$12$a/1SGKcBq4UbpcTIhzfnt.iwFOLVWnv.PXM4kHvOu7n/7DUT/4W6y', NULL, '2024-06-20 04:41:04', '2024-06-20 04:41:04'),
(101, 'Dr. Ir. Sri Wilujeng, M.Si', 'pengguna99@gmail.com', NULL, '$2y$12$bZsancSS1v8B2o03yxnqUukgtH07EdDmNdnu.DGO2.8jd53doMKfe', NULL, '2024-06-20 04:41:04', '2024-06-20 04:41:04'),
(102, 'Dra. Ina Darliana. M.Si', 'pengguna100@gmail.com', NULL, '$2y$12$6led3V.UPJbRx7v6lddAG.UvPgGcvfQfE4ifhSrAH1//cvkdlPvra', NULL, '2024-06-20 04:41:04', '2024-06-20 04:41:04'),
(103, 'Dwi Wahyuni, S.Hut.,M.Si', 'pengguna101@gmail.com', NULL, '$2y$12$vOMaeqvGENvLsvKWFnTDkey.wRmFMjT4Rt3mHQoNEGHqI6zB30OjG', NULL, '2024-06-20 04:41:05', '2024-06-20 04:41:05'),
(104, 'Fahriza Luth, S.Hut., M.P', 'pengguna102@gmail.com', NULL, '$2y$12$xh/E8g1UZzYrE29RlYbO/O4swz.okxn5WusovqSx5.mysUGbjN0GC', NULL, '2024-06-20 04:41:05', '2024-06-20 04:41:05'),
(105, 'Ir. Asep Purwanto, M.M', 'pengguna103@gmail.com', NULL, '$2y$12$b4KAdwCwZNlhkO.XsZD2PORDl47WntUt4k./K48IOSL.VItR.o/e2', NULL, '2024-06-20 04:41:05', '2024-06-20 04:41:05'),
(106, 'Ir. Prasetyo Widodo, M.P', 'pengguna104@gmail.com', NULL, '$2y$12$tfLu.4l2.vQmhgyBHJ1L3.uD3qWV03pIG334.Gv72GGlh7CVCgqiW', NULL, '2024-06-20 04:41:06', '2024-06-20 04:41:06'),
(107, 'Noor Rochman, S.TP.,M.P,', 'pengguna105@gmail.com', NULL, '$2y$12$4kZJ4V/DuB9DHAW3MXeGS.xpUemYUqGMXQFtW24AOI/jlTUTjhxSm', NULL, '2024-06-20 04:41:06', '2024-06-20 04:41:06'),
(108, 'Raizal Fahmi Solihat, S.Hut., M.P', 'pengguna106@gmail.com', NULL, '$2y$12$Mn8iJ/gxFhtmeagRZybFO.FjIfxFQ3vtqulOGu72pp9QuTlImTHuO', NULL, '2024-06-20 04:41:06', '2024-06-20 04:41:06'),
(109, 'Reni Srimulyaningsih, S.Hut., M.Si', 'pengguna107@gmail.com', NULL, '$2y$12$COotHF00O0moxa3VR1QB6OpoxiIDh8MG5dRCVHiZAxoPGbumxmDHW', NULL, '2024-06-20 04:41:07', '2024-06-20 04:41:07'),
(110, 'Rian Susila, S.Hut., M.P', 'pengguna108@gmail.com', NULL, '$2y$12$YDWGK05jMUYnGrjAgWOm.utfITeBuXG8pP4z34ufqh9lTUMbBFNpu', NULL, '2024-06-20 04:41:07', '2024-06-20 04:41:07'),
(111, 'Toni Supriyanto, , S.Hut.,M.M.', 'pengguna109@gmail.com', NULL, '$2y$12$FyY9lNJq5n2PcR42yq30ie8OyGEtXXkQr/Z6majSE7LWUXtIrzgkK', NULL, '2024-06-20 04:41:07', '2024-06-20 04:41:07'),
(112, 'Anne Lasminingrat, SE.,MM', 'pengguna110@gmail.com', NULL, '$2y$12$Danfp6JrsS6A31Yrsfz05.Dk0U4Knhl.Rld454ycvih1MQGaEfXlu', NULL, '2024-06-20 04:41:08', '2024-06-20 04:41:08'),
(113, 'Dr. Feby Febrian, SE.,MM', 'pengguna111@gmail.com', NULL, '$2y$12$BQMEgZb5q1PcI9ORbUQKDemjlpYzXK/NkostP9h6g.s.QQiNoSOWG', NULL, '2024-06-20 04:41:08', '2024-06-20 04:41:08'),
(114, 'Drs. Rudi Suprianto Ahmadi, MM', 'pengguna112@gmail.com', NULL, '$2y$12$Q3ydOPJjx/4IQfh7fvvoFOZLB/cnLmnXIZIv/yfZDxxivhkPMEmty', NULL, '2024-06-20 04:41:08', '2024-06-20 04:41:08'),
(115, 'Herni Suryani, SE.,SI.Kom.,MM', 'pengguna113@gmail.com', NULL, '$2y$12$KIPAxENVIJ7Ys3DuldpFQ.Vl3ProL7J/1AsZZlaNRW4eefR24MG5C', NULL, '2024-06-20 04:41:09', '2024-06-20 04:41:09'),
(116, 'Hilman Abdurrahman, S.E.,M.M', 'pengguna114@gmail.com', NULL, '$2y$12$muEYfCtwvOEqCVA7Tnoi4uSUWdYK10udWPA81duyBqwKuRv7uSf3O', NULL, '2024-06-20 04:41:09', '2024-06-20 04:41:09'),
(117, 'Luthfi Setiadiwibawa, SE.,MM', 'pengguna115@gmail.com', NULL, '$2y$12$taRYGLTCnycEJaL6khBKHeSBqz0CUwd6Bp.VSwOicx.cFCVb.NW96', NULL, '2024-06-20 04:41:10', '2024-06-20 04:41:10'),
(118, 'Mochammad Anjar Albagja, S.E.,M.M', 'pengguna116@gmail.com', NULL, '$2y$12$vzsI/8tQQRDaTiyitSwleOERM2TjT7Vdwxd76jT2npH6fbwoPFkEG', NULL, '2024-06-20 04:41:10', '2024-06-20 04:41:10'),
(119, 'Nana Prihatna,, S.E.,M.Si,', 'pengguna117@gmail.com', NULL, '$2y$12$NgeXP3jHzgnBGSsI2tTvmOvPenpe70/HrU9hJMNkHJZgxFq4qsyDe', NULL, '2024-06-20 04:41:11', '2024-06-20 04:41:11'),
(120, 'Nining Harnani Spd.,MM', 'pengguna118@gmail.com', NULL, '$2y$12$GVcWR49nGmXrQiXuwGePROa6PdEbQsS9oWpBhYaGbH4erCMVKLo1C', NULL, '2024-06-20 04:41:11', '2024-06-20 04:41:11'),
(121, 'Rakhmia Nalibratawati, S.E., M.E.Sy.', 'pengguna119@gmail.com', NULL, '$2y$12$61/.PmTtFcKlkavV5lgx0e9l.w/bZRjhHWcycN6TjhvHOi/I.Y9rG', NULL, '2024-06-20 04:41:11', '2024-06-20 04:41:11'),
(122, 'Rini Astuti,, S.Pt.,M.M', 'pengguna120@gmail.com', NULL, '$2y$12$UoBlUJbD9jxNaSDjcjZmqeD0PHTyvdU/vFl5/vNxzJfdUoh4uFjte', NULL, '2024-06-20 04:41:12', '2024-06-20 04:41:12'),
(123, 'Roby Ahada, S.Kom., MM', 'pengguna121@gmail.com', NULL, '$2y$12$mCr1dk4MgSq032XPR5ar1OQmeuCtE6AoLpXyejRN0aKsqylnwZYdq', NULL, '2024-06-20 04:41:12', '2024-06-20 04:41:12'),
(124, 'Tati Sumarti, S.I.Kom.,M.M', 'pengguna122@gmail.com', NULL, '$2y$12$FfVUDSLTNHQe7al.D/ZJ0OkYFgRYWkwAFqYraA3IuSXJBS2T7k/1C', NULL, '2024-06-20 04:41:12', '2024-06-20 04:41:12'),
(125, 'Bayu Anggara Mukti, SS.,MM', 'pengguna123@gmail.com', NULL, '$2y$12$mFyjQCyJMY38aAL7fR8k3efEsu7zdKRHKSMwEjCWqWe4vfJt/9G9W', NULL, '2024-06-20 04:41:13', '2024-06-20 04:41:13'),
(126, 'Dr. AGUS MULYANA, S.E.,M.M', 'pengguna124@gmail.com', NULL, '$2y$12$QNpXXq9tn63HL856fiTOtOlQmgB/Q.FISkNC7sbYnIyBAm273Owb2', NULL, '2024-06-20 04:41:13', '2024-06-20 04:41:13'),
(127, 'Dr. Dodi Sukmayana, SE.,MM', 'pengguna125@gmail.com', NULL, '$2y$12$g7UbAcXZ1bCbnubDD1iPAuaFbjiPBaCdLzQ9X4RplLCqZ6akgn8fu', NULL, '2024-06-20 04:41:13', '2024-06-20 04:41:13'),
(129, 'Dr. Hj. Winna Roswinna, SE.,MM.,CPM', 'pengguna127@gmail.com', NULL, '$2y$12$O52Z8Bfvmc0h4G.et7a7E.5Sik4uTVIbURhvFZaOEd.D1DAktvkS2', NULL, '2024-06-20 04:41:14', '2024-06-20 04:41:14'),
(130, 'Dr. R. JUSDI JACHLAN', 'pengguna128@gmail.com', NULL, '$2y$12$g7fynag9fBYjc6R2GWlVJ.mz1E3.yhMwZF2JQr.Hus/brfll3Z7WW', NULL, '2024-06-20 04:41:15', '2024-06-20 04:41:15'),
(131, 'Dr. Siti Aisyah tuti Handayani, S.Sos.,M.Si', 'pengguna129@gmail.com', NULL, '$2y$12$lW/kxQVk0e5ySVye1ksyeuSugGchIejLJ7TFv.OjIRfcUc.C2zUCm', NULL, '2024-06-20 04:41:15', '2024-06-20 04:41:15'),
(132, 'Dr. SUSAN RIDWAN', 'pengguna130@gmail.com', NULL, '$2y$12$D1z9UjQGh5ngIp0FsTeZOezZ14uAHdUUEIuEjcrBA8cC2zTMXUY3C', NULL, '2024-06-20 04:41:15', '2024-06-20 04:41:15'),
(133, 'Adhi Hermawan, S.T., M.T.', 'pengguna131@gmail.com', NULL, '$2y$12$pagqSB3KWVF9JikVfVNgd.dPSpIgZ3J.qRIZ8vWeR.Bta7eSOrxle', NULL, '2024-06-20 04:41:16', '2024-06-20 04:41:16'),
(134, 'Dian Kusbandiah, S.T.,M.T', 'pengguna132@gmail.com', NULL, '$2y$12$v7O16nrg3sdR5ZBllqJhQOCI8YF4omWwLOgSRz1PgmoMGKFPhOUk6', NULL, '2024-06-20 04:41:16', '2024-06-20 04:41:16'),
(135, 'Hilman Rismayadi, S.T., M.T.', 'pengguna133@gmail.com', NULL, '$2y$12$un8vOec6JXlN9lWxyBr2quDAh5vb8jbUr1Rm7ntPzYRlguFFkqKcW', NULL, '2024-06-20 04:41:16', '2024-06-20 04:41:16'),
(136, 'Risma Viantara, S.T., M.T.', 'pengguna134@gmail.com', NULL, '$2y$12$9IeblupYzMN5hMgyCDgNzO4bsx4G1CCtqYfrdK2/F3RGNSIHwXfQS', NULL, '2024-06-20 04:41:17', '2024-06-20 04:41:17'),
(137, 'Sigit Wisnuadji, S.T., M.Sc.', 'pengguna135@gmail.com', NULL, '$2y$12$TJYXclnXP71TbpHgzJcBHeHdHjoeJGqdeBNay9GbgP/18Bz5PUOWW', NULL, '2024-06-20 04:41:17', '2024-06-20 04:41:17'),
(138, 'Achmad Ruchlihadiana T., S.T., M.T.', 'pengguna136@gmail.com', NULL, '$2y$12$l4chO6.OigL9qEZ2cfmeZuonWHeH7bNQbNKuVxOahJI2SAHg9OzdO', NULL, '2024-06-20 04:41:17', '2024-06-20 04:41:17'),
(139, 'Aning Haryati, S.T., M.T.', 'pengguna137@gmail.com', NULL, '$2y$12$YOe8IiAoSj.7GHZ8Ttn6E.B6heQLY/00HtZzgZ7nhO6P7NSXON0xu', NULL, '2024-06-20 04:41:18', '2024-06-20 04:41:18'),
(140, 'Danis Suhari Singawilastra, S.T., M.T.', 'pengguna138@gmail.com', NULL, '$2y$12$bLNoGwOGs3D0Pc61ya9ZOO9ePOTXL5z5C2d35DvEnRZEdjyIqQnUO', NULL, '2024-06-20 04:41:18', '2024-06-20 04:41:18'),
(141, 'Levana Apriani, S.T., M.T.', 'pengguna139@gmail.com', NULL, '$2y$12$4pySMnDXaLtnea/zCNcdK.yKW0qILCanjmF0/O7o6umDjyqUsZPHy', NULL, '2024-06-20 04:41:18', '2024-06-20 04:41:18'),
(142, 'Tuti Anggraeni, S.T.,M.M.', 'pengguna140@gmail.com', NULL, '$2y$12$zCvRgFYx5Bs9aI/ndml8P.Az.5nJLj7D1Zm.rbGrLZWYXeqUeSoCC', NULL, '2024-06-20 04:41:19', '2024-06-20 04:41:19'),
(143, 'Nenny Kusumah Wardhani, Ir., M.T.', 'pengguna141@gmail.com', NULL, '$2y$12$sHQvRb4IJ6.VUjeCdQYp7.aiYtGnyEy2EuvDeQ.mSvmTUW8un046.', NULL, '2024-06-20 04:41:19', '2024-06-20 04:41:19'),
(145, 'Tati Artiningrum, Ir.,M.T.', 'pengguna143@gmail.com', NULL, '$2y$12$7hhuVy34vRlzUqzMlLrDduqWaepXW7SK3V4UGJSgXUYvzdqoCR8PC', NULL, '2024-06-20 04:41:20', '2024-06-20 04:41:20'),
(146, 'Yukeu Dwi Hasyti, S.T., M.M.M.T', 'pengguna144@gmail.com', NULL, '$2y$12$najSWEs4ci/AtL34tqyWbuTEh83xYvRrnrDq375Fg7BNi7.V45NKu', NULL, '2024-06-20 04:41:20', '2024-06-20 04:41:20'),
(147, 'Yuliaty Heliana Pangow, S.T., M.T.', 'pengguna145@gmail.com', NULL, '$2y$12$60SthFXYSSbzx/GLk1mvzuieMY5GDyCSeq0V9KCvPQZJAoZKEHavS', NULL, '2024-06-20 04:41:20', '2024-06-20 04:41:20'),
(148, 'Achmad Saeful Fasa, S.T., M.T.', 'pengguna146@gmail.com', NULL, '$2y$12$bj.e0Sm1qJJ5IlWU.f4P1OoKth/.u4L4feaBUBdzcQqwf0rtlJ7vS', NULL, '2024-06-20 04:41:21', '2024-06-20 04:41:21'),
(149, 'Citra Artifiani Havianto, S.T., M.T.', 'pengguna147@gmail.com', NULL, '$2y$12$ILBNtZucjgvME//MRTakBeYLgCij4PsVxf.UlMc8syA3MTYRe3ivG', NULL, '2024-06-20 04:41:21', '2024-06-20 04:41:21'),
(150, 'Dodon Turgana Tarmidi, Ir.,M.M.', 'pengguna148@gmail.com', NULL, '$2y$12$tX1WBeJkKIBzf.6wl.nSiuINFzuAOTuzdzKb0p3FHyUQoOxQ.K8V.', NULL, '2024-06-20 04:41:22', '2024-06-20 04:41:22'),
(151, 'Dr. Buntaram, S.T., M.M.', 'pengguna149@gmail.com', NULL, '$2y$12$OCX8M6EkvDWiYTCm5FipKeBzwsuE5f/HZVHwtt0uwAUZRqKFWLvlq', NULL, '2024-06-20 04:41:22', '2024-06-20 04:41:22'),
(152, 'Ina Revayanti, S.T., M.T.', 'pengguna150@gmail.com', NULL, '$2y$12$I/m5IooK8VfX17W6Vl5mluzmrd93o6TZhDBDs49aXEGYFFX6KaMde', NULL, '2024-06-20 04:41:22', '2024-06-20 04:41:22'),
(153, 'Ir. Muhammad Ramadhan, M.T.', 'pengguna151@gmail.com', NULL, '$2y$12$.wxSYUbFU1SbtYZj1Ypx6.4w5ATYeKqUx0DOaG.YVX.7RDCn8X9dy', NULL, '2024-06-20 04:41:23', '2024-06-20 04:41:23'),
(154, 'Shinta Kusumawati, S.T., M.T.', 'pengguna152@gmail.com', NULL, '$2y$12$k0ByfKNvaY89qbiF3.ucRe1BHniYNYoAqJqHCl7gSZq5W9o7ffdaS', NULL, '2024-06-20 04:41:23', '2024-06-20 04:41:23'),
(155, 'Dr. Ir. An An Anisarida, S.T., M.T.', 'pengguna153@gmail.com', NULL, '$2y$12$lRIQJIBCvKSxHa.LBjHFD.Q2d8EESHPQIK1dVqvObgOrOjAISFDTm', NULL, '2024-06-20 04:41:23', '2024-06-20 04:41:23'),
(156, 'Edwar Hafudiansyah, SPd.,M.T', 'pengguna154@gmail.com', NULL, '$2y$12$MLBubQzdPUWhXneSQCRk8Ozy8/gbS653Of60iIBCsC/uZ0hSdOr6W', NULL, '2024-06-20 04:41:24', '2024-06-20 04:41:24'),
(157, 'Felix Setiawan, S.T.,M.T', 'pengguna155@gmail.com', NULL, '$2y$12$Wr2nooYnIr7QPZXoZZyQDusKvXs7FxvgPpiJHTY6Ftn5roRfB9E82', NULL, '2024-06-20 04:41:24', '2024-06-20 04:41:24'),
(158, 'Lucky Amperawan Schipper, S.T., M.T.', 'pengguna156@gmail.com', NULL, '$2y$12$LjqVrWCRhCbWiRCp2nArrubOgnj9dXxa1iE9zx0YWB9VAIiZ3t3H6', NULL, '2024-06-20 04:41:24', '2024-06-20 04:41:24'),
(159, 'Syapril Janizar, S.T., M.T.M.M', 'pengguna157@gmail.com', NULL, '$2y$12$TrKG6nd9tkBDMt945j0Yd.K42iV7Z.xZaeC9.VMjQi2tdC9NrhPL2', NULL, '2024-06-20 04:41:25', '2024-06-20 04:41:25'),
(162, 'Prof. Dr. Hj. Ai Komariah, Ir., M.S', 'warek1@gmail.com', NULL, '$2y$12$RUNtBlbaFM7VK0IXuRbSB.OYUYY/qpOF6yTHrzoZYItcT97x4qVIm', NULL, '2024-06-21 22:16:39', '2024-06-22 02:22:31'),
(165, 'Drs. Rudi S. Ahmadi, M.M', 'warek2@gmail.com', NULL, '$2y$12$WdtGyPyRfuCRuWdEecggeOVczMCH8q2GZ.SldHkV1R9C/Rzh/7mra', NULL, '2024-06-22 02:35:52', '2024-06-22 02:35:52'),
(166, 'Dr. Ir. Elly Roosma Ria, M.Si.', 'warek3@gmail.com', NULL, '$2y$12$n2zDcyBDDABYC1/ccA4tyOCjU9O2c5iPEf70cZouZnXV8fAhPHXey', NULL, '2024-06-22 02:36:25', '2024-06-23 03:40:49'),
(167, 'Dr. Hj. Winna Roswinna, S.E., M.M', 'dekanfeb@gmail.com', NULL, '$2y$12$T5BJXWz64kN/deZNc8aP7.cdJ8si/S/XWuOC8n44n1gpU00hB3EgG', NULL, '2024-06-22 02:46:21', '2024-06-22 02:46:21'),
(169, 'Dr. H. Deden Komar Priatna, S.T., SIP., M.M., CHRA', 'rektor@simpan.local', NULL, '$2y$12$tAy95Zg1u91Qc3NqeF7kW.rAq1OdDsEDrogmzpBrN915WM0.9pt7G', NULL, '2024-06-22 22:52:43', '2024-06-23 03:41:36'),
(172, 'Dr. Dety Sukmawati, Ir., M.P', 'pengguna4@simpan.local', NULL, '$2y$12$fq8Etvle1JYr9syqqhe7JOZC8Br16ZgWu1v9vZDqwOgrZEw4NmVm.', NULL, '2024-06-22 22:52:45', '2024-06-22 22:52:45'),
(173, 'Yuliaty Heliana Pangow, S.T., M.T', 'pengguna5@simpan.local', NULL, '$2y$12$xt1nyhxCv6GyiJaE0Wyoi.FPXGUhDmDP607C0VoxzO96gGpdjS5VG', NULL, '2024-06-22 22:52:45', '2024-06-22 22:52:45'),
(174, 'Raizal Fami Sholihat, S.Hut., M.P', 'pengguna6@simpan.local', NULL, '$2y$12$K8WUtV.ZrAOiEpo78sMXJuQWEa10Ju2fx/DMnoTOaVJtkU2Q2qJT2', NULL, '2024-06-22 22:52:45', '2024-06-22 22:52:45'),
(175, 'Dr. Nataliningsih, Ir., M.Pd', 'pengguna8@simpan.local', NULL, '$2y$12$wMg.zCKShkxR4jnqArxygOFCcdNjeXDhstfFDpeRaQsEB2IneqcTy', NULL, '2024-06-22 22:52:46', '2024-06-22 22:52:46'),
(176, 'Dr. Syapril Janizar, S.T., M.T', 'pengguna9@simpan.local', NULL, '$2y$12$oFN8nCdDV4DCSyORn1/vmeWwm7nSXA3A8RTYT5evUyLPbzrzM/KA6', NULL, '2024-06-22 22:52:46', '2024-06-22 22:52:46'),
(177, 'Romiyadi, S.P., M.P', 'pengguna10@simpan.local', NULL, '$2y$12$qHyLy9GSxKSs5LgGUWOvZO2yLZ4Ho/c1kJV3KGvHYHpwTyJvuLMmO', NULL, '2024-06-22 22:52:47', '2024-06-22 22:52:47'),
(178, 'Sigit Wisnuadji, S.T., M.Sc', 'pengguna11@simpan.local', NULL, '$2y$12$COpEv7mfCpFCmy4L9kjfNu3qNE36CBwz/JJF93nAKbGzpajJ/T.ii', NULL, '2024-06-22 22:52:47', '2024-06-22 22:52:47'),
(179, 'Maria Lusiana Yulianti, S.E., M.M', 'pengguna13@simpan.local', NULL, '$2y$12$TGJXcgBjd9L9cO55TVr6X.mWpc5aAUBHN441Pg2J01G6ehso7qzjW', NULL, '2024-06-22 22:52:48', '2024-06-22 22:52:48'),
(180, 'Yuliana Samantha, S.P., M.EP', 'pengguna14@simpan.local', NULL, '$2y$12$NAU1gnDjhJ.V/Vnjtgx/1Ok6XMzQvuJMNxzCYhfqFyS2FwLqwMQ16', NULL, '2024-06-22 22:52:48', '2024-06-22 22:52:48'),
(181, 'Dr. Ir. An An Anisarida, S.T., M.T', 'pengguna15@simpan.local', NULL, '$2y$12$wiFodYs3g1mnP6LsIqb.bOso0iGY0Te5LIrqr4l6iOQoIpbvMboqK', NULL, '2024-06-22 22:52:49', '2024-06-22 22:52:49'),
(182, 'Sopyan Agus Salam, S.Sos., M.M', 'pengguna16@simpan.local', NULL, '$2y$12$FcqoYHbHDqMgfoOSY82cGOI/DhOk11SIHtAbMIi2uA5H7TVHSfgWC', NULL, '2024-06-22 22:52:49', '2024-06-22 22:52:49'),
(183, 'Anne Lasminingrat, S.E., M.M', 'pengguna17@simpan.local', NULL, '$2y$12$M6s4J6ESjSO6C4pyK51gHem9BW3gvUPZNqNAyWs801PnpC9qkclia', NULL, '2024-06-22 22:52:50', '2024-06-22 22:52:50'),
(184, 'Roby Ahada, S.Kom., M.M', 'pengguna18@simpan.local', NULL, '$2y$12$n6fTJjbZjwGzZRzi5MoTVuJKEPW/TDpvVLBVrdQbdrq5u3jHolHpm', NULL, '2024-06-22 22:52:50', '2024-06-22 22:52:50'),
(185, 'Roni Assafaat Hadi, S.P, M.P', 'pengguna19@simpan.local', NULL, '$2y$12$7NEbW/RMlDBkneJb8QMQn.8yNRXljPg.DqFBRlHYTMNHsNVgtRC9S', NULL, '2024-06-22 22:52:51', '2024-06-22 22:52:51'),
(186, 'Edang Juliana, S.P., M.P', 'pengguna20@simpan.local', NULL, '$2y$12$g8JEFJ82XtYLvUUhJ.SMS.4sPhVtkBA234r/SqoOW87qGxu0VBwrq', NULL, '2024-06-22 22:52:51', '2024-06-22 22:52:51'),
(187, 'Mochamad Maulana, S.T', 'pengguna21@simpan.local', NULL, '$2y$12$JVgGF53kV.oa0dM3mUJW5OWzNBZ8ZZiudzFvmqupNBl75n8Mzagxa', NULL, '2024-06-22 22:52:52', '2024-06-22 22:52:52'),
(188, 'Tuti Anggraeni, S.T., M.M', 'pengguna22@simpan.local', NULL, '$2y$12$a82uzEuAJ5xFuINeGC/Dh.O9vK7cmjrNGAaTuymFqq6kCMLz1MJve', NULL, '2024-06-22 22:52:52', '2024-06-22 22:52:52'),
(189, 'Dr. Hj. Euis Dasipah, Ir., M.P', 'pengguna23@simpan.local', NULL, '$2y$12$7oY.V5.QIdM6JW3ks6GZlun4fTJAdulcRCA2G6vxvJZod.3NjW69W', NULL, '2024-06-22 22:52:52', '2024-06-22 22:52:52'),
(190, 'Dr.Kovertina Rakhmi Indriana, S.P., M.P', 'pengguna24@simpan.local', NULL, '$2y$12$ewbbZN405z16YHgIv2pBIedQrfYdKsMrrl.1qhi6f33GQkKPrtVF2', NULL, '2024-06-22 22:52:53', '2024-06-22 22:52:53'),
(191, 'Dr. Nendah Siti Permana, Ir., M.P', 'pengguna25@simpan.local', NULL, '$2y$12$p9PeKAh36OeWdDEY7OeYqu3SoqAehRVo0.etqXIglhUrypeO1r6em', NULL, '2024-06-22 22:52:53', '2024-06-22 22:52:53'),
(192, 'Asep Samsul Mustopa, S.P., M.P', 'pengguna26@simpan.local', NULL, '$2y$12$hXBAIJ95g2aPRyYJv9WqtO6QWRx62mogzWN95eSuRjKtSDhozv.PS', NULL, '2024-06-22 22:52:54', '2024-06-22 22:52:54'),
(193, 'Edwar Hafudiansyah, S.Pd., M.T', 'pengguna27@simpan.local', NULL, '$2y$12$.esQEHGDivXMAXtQHubaluBsLeKm421MvJLZaXHtyuDPuU0XMZHaG', NULL, '2024-06-22 22:52:54', '2024-06-22 22:52:54'),
(194, 'Dian Kusbandiah, S.T., M.T', 'pengguna28@simpan.local', NULL, '$2y$12$od1SWlkmhf53.SFplBdJm.ZvrM65wa41MxXXdD310naNgZJcwBrQW', NULL, '2024-06-22 22:52:54', '2024-06-22 22:52:54'),
(195, 'Levana Apriani, S.T., M.T', 'pengguna29@simpan.local', NULL, '$2y$12$KoomCrn.KD5lt4CKMiM4..rFdaNVCYRWVx4Rv8tRIp871QaoFL/xO', NULL, '2024-06-22 22:52:55', '2024-06-22 22:52:55'),
(196, 'Achmad Saeful Fasa, S.T., M.T', 'pengguna30@simpan.local', NULL, '$2y$12$oATh0AOBszAL0oiQQAm7Bepkc6bor0Lh0i14/1zYHXnNmGPVzkdL6', NULL, '2024-06-22 22:52:55', '2024-06-22 22:52:55'),
(197, 'Santi Prihastuti, S.Si., M.T', 'pengguna31@simpan.local', NULL, '$2y$12$ryYbYAI.w/hAOxcOd93Uy.XkiEH5NoLhjU/WgSi9KvfBH5tvz9cxu', NULL, '2024-06-22 22:52:56', '2024-06-22 22:52:56'),
(198, 'Dr. Annisa Fitri Anggraeni, S.E., M.M', 'pengguna33@simpan.local', NULL, '$2y$12$0fc.rhPS7dEXM6VacXEBiOEseMfxOOq1YDicCEm/14R1mlPG37Tly', NULL, '2024-06-22 22:52:57', '2024-06-22 22:52:57'),
(199, 'Dodi Tisna Amijaya, S.E., M.M', 'pengguna34@simpan.local', NULL, '$2y$12$NNUdj5M4PnCmZ9XLlfPYUOIELFZPiHdIlRDj/GhYSxc4jzqW5SJoO', NULL, '2024-06-22 22:52:57', '2024-06-22 22:52:57'),
(200, 'Kartika Pratiwi Putri, S.E., M.Ak', 'pengguna35@simpan.local', NULL, '$2y$12$y/dQ.6wJX/v4R/4k56.aqOK36TgYhCXOqCTDhiSokeSS5rWqRV.66', NULL, '2024-06-22 22:52:58', '2024-06-22 22:52:58'),
(201, 'Agi Dahtiar, S.Pd., M.Pd., M.P', 'pengguna36@simpan.local', NULL, '$2y$12$HkuK7Ez.GD.zoh.lUTmikemxssbyFRo8t1iAAC5JfO7uCXf.5Jm72', NULL, '2024-06-22 22:52:58', '2024-06-22 22:52:58'),
(202, 'Reni Nurhayatini, S.T., M.P', 'pengguna37@simpan.local', NULL, '$2y$12$IvpurPRxPlNmbAweBiG0Au3benQDSwBvx4.0Jo7Fz5ygXLuQ6pXkW', NULL, '2024-06-22 22:52:58', '2024-06-22 22:52:58'),
(203, 'Deni Irawan, S.T', 'pengguna38@simpan.local', NULL, '$2y$12$1UZJVwP9K0jqiy1.0js4nuz5dwLi9RDov0POY6IjzOgFlzIH9YAwe', NULL, '2024-06-22 22:52:59', '2024-06-22 22:52:59'),
(204, 'Vina Silvia Bintarawati, S.Hut', 'pengguna40@simpan.local', NULL, '$2y$12$HSuvSmtkCXyONBG7BkZE0.mUXrx1FlQClGMKcOG/u5kPl4/CDWg46', NULL, '2024-06-22 22:52:59', '2024-06-22 22:52:59'),
(205, 'Euis Ernawati, S.Pd', 'pengguna41@simpan.local', NULL, '$2y$12$GlIvw39g021IbVam27vayuOUSLI4gM8FN9r785n0IH0UO8h7BBHSq', NULL, '2024-06-22 22:53:00', '2024-06-22 22:53:00'),
(206, 'Heri Lukman, S.E', 'pengguna42@simpan.local', NULL, '$2y$12$pMDOXYLF0htjq60YyEMWyegVbouKfQPoubGnHfNmL3SOzRq4V1vfu', NULL, '2024-06-22 22:53:00', '2024-06-22 22:53:00'),
(207, 'Hilman Abdurrahman, S.E., M.M', 'pengguna43@simpan.local', NULL, '$2y$12$x0G5Jxno7qtKt3KNLgoeT.iy943khKc652JEdlH3Z9kgUeoNCdxD.', NULL, '2024-06-22 22:53:00', '2024-06-22 22:53:00'),
(208, 'Dr. Dodi Sukmayana, S.E., M.M', 'pengguna45@simpan.local', NULL, '$2y$12$Ac2we8GQ454QeE3gyHcGEOdCNKmiHVUfzthqP1eG9/QVDx/242SJi', NULL, '2024-06-22 22:53:01', '2024-06-22 22:53:01'),
(209, 'Ina Revayanti, S.T., M.T', 'pengguna47@simpan.local', NULL, '$2y$12$vUaQZ4JTBPxF7h9RjNqqy.wCf8kw4wqcnHw6BKq4B2l22XBalYUZa', NULL, '2024-06-22 22:53:02', '2024-06-22 22:53:02'),
(210, 'Dr. Ir. Sri Wilujeung, M.SI.', 'pengguna48@simpan.local', NULL, '$2y$12$yj9IEUeS8ELZS.WORtDo2eP.R/U/TalozLQ0aELVKu0Il99LBtVwe', NULL, '2024-06-22 22:53:02', '2024-06-22 22:53:02'),
(211, 'Ir. Asep Purwanto, MM.', 'pengguna49@simpan.local', NULL, '$2y$12$5cM39FGw0N1xW9lHas6x5uyBJPLXgfqsX8ilXegoAR8.5foTfqM6G', NULL, '2024-06-22 22:53:02', '2024-06-22 22:53:02'),
(212, 'Herni Suryani, S.E., S.I.Kom., MM', 'pengguna50@simpan.local', NULL, '$2y$12$d4TjEaGEDmzewvSJiMlYd.X1bi7k8NByqh4T5LqS86zZjg90ADgs2', NULL, '2024-06-22 22:53:03', '2024-06-22 22:53:03'),
(213, 'Ripki Ripkianto, S.E', 'pengguna51@simpan.local', NULL, '$2y$12$mtWLP.hSj./8slqyCT//feHzHe5.lq2S.9oKOk9ZtQnZKhVqbO5fK', NULL, '2024-06-22 22:53:03', '2024-06-22 22:53:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_units`
--

CREATE TABLE `user_units` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_unit` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_units`
--

INSERT INTO `user_units` (`id`, `id_user`, `id_unit`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 169, 6, '2024-06-22 22:52:43', '2024-06-23 10:18:25', '2024-06-23 10:18:25'),
(2, 162, 173, '2024-06-22 22:52:43', '2024-06-23 05:52:43', NULL),
(3, 170, 174, '2024-06-22 22:52:44', '2024-06-23 05:52:44', NULL),
(4, 171, 175, '2024-06-22 22:52:44', '2024-06-23 05:52:44', NULL),
(5, 172, 176, '2024-06-22 22:52:45', '2024-06-23 05:52:45', NULL),
(6, 173, 177, '2024-06-22 22:52:45', '2024-06-23 10:42:37', '2024-06-23 10:42:37'),
(7, 174, 178, '2024-06-22 22:52:45', '2024-06-23 05:52:45', NULL),
(8, 167, 179, '2024-06-22 22:52:46', '2024-06-23 05:52:46', NULL),
(9, 175, 180, '2024-06-22 22:52:46', '2024-06-23 05:52:46', NULL),
(10, 176, 181, '2024-06-22 22:52:46', '2024-06-23 05:52:46', NULL),
(11, 177, 182, '2024-06-22 22:52:47', '2024-06-23 05:52:47', NULL),
(12, 178, 183, '2024-06-22 22:52:47', '2024-06-23 05:52:47', NULL),
(13, 104, 184, '2024-06-22 22:52:47', '2024-06-23 05:52:47', NULL),
(14, 179, 185, '2024-06-22 22:52:48', '2024-06-23 05:52:48', NULL),
(15, 180, 186, '2024-06-22 22:52:48', '2024-06-23 05:52:48', NULL),
(16, 181, 187, '2024-06-22 22:52:49', '2024-06-23 05:52:49', NULL),
(17, 182, 188, '2024-06-22 22:52:49', '2024-06-23 05:52:49', NULL),
(18, 183, 189, '2024-06-22 22:52:50', '2024-06-23 05:52:50', NULL),
(19, 184, 190, '2024-06-22 22:52:50', '2024-06-23 05:52:50', NULL),
(20, 185, 191, '2024-06-22 22:52:51', '2024-06-23 05:52:51', NULL),
(21, 186, 192, '2024-06-22 22:52:51', '2024-06-23 05:52:51', NULL),
(22, 187, 193, '2024-06-22 22:52:52', '2024-06-23 05:52:52', NULL),
(23, 188, 194, '2024-06-22 22:52:52', '2024-06-23 05:52:52', NULL),
(24, 189, 195, '2024-06-22 22:52:52', '2024-06-23 05:52:52', NULL),
(25, 190, 196, '2024-06-22 22:52:53', '2024-06-23 05:52:53', NULL),
(26, 191, 197, '2024-06-22 22:52:53', '2024-06-23 05:52:53', NULL),
(27, 192, 198, '2024-06-22 22:52:54', '2024-06-23 05:52:54', NULL),
(28, 193, 199, '2024-06-22 22:52:54', '2024-06-23 05:52:54', NULL),
(29, 194, 200, '2024-06-22 22:52:54', '2024-06-23 05:52:54', NULL),
(30, 195, 201, '2024-06-22 22:52:55', '2024-06-23 05:52:55', NULL),
(31, 196, 202, '2024-06-22 22:52:56', '2024-06-23 05:52:56', NULL),
(32, 197, 203, '2024-06-22 22:52:56', '2024-06-23 05:52:56', NULL),
(33, 110, 204, '2024-06-22 22:52:56', '2024-06-23 05:52:56', NULL),
(34, 198, 205, '2024-06-22 22:52:57', '2024-06-23 05:52:57', NULL),
(35, 199, 206, '2024-06-22 22:52:57', '2024-06-23 05:52:57', NULL),
(36, 200, 207, '2024-06-22 22:52:58', '2024-06-23 05:52:58', NULL),
(37, 201, 208, '2024-06-22 22:52:58', '2024-06-23 05:52:58', NULL),
(38, 202, 209, '2024-06-22 22:52:58', '2024-06-23 05:52:58', NULL),
(39, 203, 210, '2024-06-22 22:52:59', '2024-06-23 05:52:59', NULL),
(40, 7, 211, '2024-06-22 22:52:59', '2024-06-23 05:52:59', NULL),
(41, 204, 212, '2024-06-22 22:52:59', '2024-06-23 05:52:59', NULL),
(42, 205, 213, '2024-06-22 22:53:00', '2024-06-23 05:53:00', NULL),
(43, 206, 214, '2024-06-22 22:53:00', '2024-06-23 05:53:00', NULL),
(44, 207, 215, '2024-06-22 22:53:00', '2024-06-23 05:53:00', NULL),
(45, 8, 216, '2024-06-22 22:53:01', '2024-06-23 05:53:01', NULL),
(46, 208, 217, '2024-06-22 22:53:01', '2024-06-23 05:53:01', NULL),
(47, 78, 217, '2024-06-22 22:53:01', '2024-06-23 05:53:01', NULL),
(48, 209, 217, '2024-06-22 22:53:02', '2024-06-23 08:30:02', '2024-06-23 08:30:02'),
(49, 210, 217, '2024-06-22 22:53:02', '2024-06-23 05:53:02', NULL),
(50, 211, 217, '2024-06-22 22:53:02', '2024-06-23 05:53:02', NULL),
(51, 212, 217, '2024-06-22 22:53:03', '2024-06-23 05:53:03', NULL),
(52, 213, 218, '2024-06-22 22:53:03', '2024-06-23 05:53:03', NULL),
(53, 209, 279, '2024-06-23 01:30:02', '2024-06-23 08:30:02', NULL),
(54, 169, 6, '2024-06-23 03:18:25', '2024-06-23 10:41:36', '2024-06-23 10:41:36'),
(55, 166, 175, '2024-06-23 03:40:49', '2024-06-23 10:40:49', NULL),
(56, 165, 174, '2024-06-23 03:41:11', '2024-06-23 10:41:11', NULL),
(57, 169, 6, '2024-06-23 03:41:36', '2024-06-23 10:41:36', NULL),
(58, 173, 177, '2024-06-23 03:42:37', '2024-06-23 10:42:37', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_unit_roles`
--

CREATE TABLE `user_unit_roles` (
  `id` bigint(20) NOT NULL,
  `id_unit` bigint(20) NOT NULL,
  `id_role` bigint(20) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_unit_roles`
--

INSERT INTO `user_unit_roles` (`id`, `id_unit`, `id_role`, `id_user`, `created_at`, `updated_at`, `deleted_at`) VALUES
(61, 6, 3, 169, '2024-06-23 03:41:36', '2024-06-23 10:41:36', NULL),
(2, 173, 2, 162, '2024-06-22 22:52:43', '2024-06-23 05:52:43', NULL),
(3, 174, 2, 170, '2024-06-22 22:52:44', '2024-06-23 05:52:44', NULL),
(4, 175, 2, 171, '2024-06-22 22:52:44', '2024-06-23 05:52:44', NULL),
(5, 176, 2, 172, '2024-06-22 22:52:45', '2024-06-23 05:52:45', NULL),
(62, 177, 2, 173, '2024-06-23 03:42:37', '2024-06-23 10:42:37', NULL),
(7, 178, 2, 174, '2024-06-22 22:52:45', '2024-06-23 05:52:45', NULL),
(8, 179, 2, 167, '2024-06-22 22:52:46', '2024-06-23 05:52:46', NULL),
(9, 180, 2, 175, '2024-06-22 22:52:46', '2024-06-23 05:52:46', NULL),
(10, 181, 2, 176, '2024-06-22 22:52:46', '2024-06-23 05:52:46', NULL),
(11, 182, 2, 177, '2024-06-22 22:52:47', '2024-06-23 05:52:47', NULL),
(12, 183, 2, 178, '2024-06-22 22:52:47', '2024-06-23 05:52:47', NULL),
(13, 184, 2, 104, '2024-06-22 22:52:47', '2024-06-23 05:52:47', NULL),
(14, 185, 2, 179, '2024-06-22 22:52:48', '2024-06-23 05:52:48', NULL),
(15, 186, 2, 180, '2024-06-22 22:52:48', '2024-06-23 05:52:48', NULL),
(16, 187, 2, 181, '2024-06-22 22:52:49', '2024-06-23 05:52:49', NULL),
(17, 188, 2, 182, '2024-06-22 22:52:49', '2024-06-23 05:52:49', NULL),
(18, 189, 2, 183, '2024-06-22 22:52:50', '2024-06-23 05:52:50', NULL),
(19, 190, 2, 184, '2024-06-22 22:52:50', '2024-06-23 05:52:50', NULL),
(20, 191, 2, 185, '2024-06-22 22:52:51', '2024-06-23 05:52:51', NULL),
(21, 192, 2, 186, '2024-06-22 22:52:51', '2024-06-23 05:52:51', NULL),
(22, 193, 2, 187, '2024-06-22 22:52:52', '2024-06-23 05:52:52', NULL),
(23, 194, 2, 188, '2024-06-22 22:52:52', '2024-06-23 05:52:52', NULL),
(24, 195, 2, 189, '2024-06-22 22:52:52', '2024-06-23 05:52:52', NULL),
(25, 196, 2, 190, '2024-06-22 22:52:53', '2024-06-23 05:52:53', NULL),
(26, 197, 2, 191, '2024-06-22 22:52:53', '2024-06-23 05:52:53', NULL),
(27, 198, 2, 192, '2024-06-22 22:52:54', '2024-06-23 05:52:54', NULL),
(28, 199, 2, 193, '2024-06-22 22:52:54', '2024-06-23 05:52:54', NULL),
(29, 200, 2, 194, '2024-06-22 22:52:54', '2024-06-23 05:52:54', NULL),
(30, 201, 2, 195, '2024-06-22 22:52:55', '2024-06-23 05:52:55', NULL),
(31, 202, 2, 196, '2024-06-22 22:52:56', '2024-06-23 05:52:56', NULL),
(32, 203, 2, 197, '2024-06-22 22:52:56', '2024-06-23 05:52:56', NULL),
(33, 204, 2, 110, '2024-06-22 22:52:56', '2024-06-23 05:52:56', NULL),
(34, 205, 2, 198, '2024-06-22 22:52:57', '2024-06-23 05:52:57', NULL),
(35, 206, 2, 199, '2024-06-22 22:52:57', '2024-06-23 05:52:57', NULL),
(36, 207, 2, 200, '2024-06-22 22:52:58', '2024-06-23 05:52:58', NULL),
(37, 208, 2, 201, '2024-06-22 22:52:58', '2024-06-23 05:52:58', NULL),
(38, 209, 2, 202, '2024-06-22 22:52:58', '2024-06-23 05:52:58', NULL),
(39, 210, 2, 203, '2024-06-22 22:52:59', '2024-06-23 05:52:59', NULL),
(40, 211, 2, 7, '2024-06-22 22:52:59', '2024-06-23 05:52:59', NULL),
(41, 212, 2, 204, '2024-06-22 22:52:59', '2024-06-23 05:52:59', NULL),
(42, 213, 2, 205, '2024-06-22 22:53:00', '2024-06-23 05:53:00', NULL),
(43, 214, 2, 206, '2024-06-22 22:53:00', '2024-06-23 05:53:00', NULL),
(44, 215, 2, 207, '2024-06-22 22:53:00', '2024-06-23 05:53:00', NULL),
(45, 216, 2, 8, '2024-06-22 22:53:01', '2024-06-23 05:53:01', NULL),
(46, 217, 2, 208, '2024-06-22 22:53:01', '2024-06-23 05:53:01', NULL),
(47, 217, 2, 78, '2024-06-22 22:53:01', '2024-06-23 05:53:01', NULL),
(53, 279, 2, 209, '2024-06-23 01:30:02', '2024-06-23 08:30:02', NULL),
(49, 217, 2, 210, '2024-06-22 22:53:02', '2024-06-23 05:53:02', NULL),
(50, 217, 2, 211, '2024-06-22 22:53:02', '2024-06-23 05:53:02', NULL),
(51, 217, 2, 212, '2024-06-22 22:53:03', '2024-06-23 05:53:03', NULL),
(52, 218, 2, 213, '2024-06-22 22:53:03', '2024-06-23 05:53:03', NULL),
(60, 6, 2, 169, '2024-06-23 03:41:36', '2024-06-23 10:41:36', NULL),
(56, 175, 2, 166, '2024-06-23 03:40:49', '2024-06-23 10:40:49', NULL),
(57, 175, 3, 166, '2024-06-23 03:40:49', '2024-06-23 10:40:49', NULL),
(58, 174, 2, 165, '2024-06-23 03:41:11', '2024-06-23 10:41:11', NULL),
(59, 174, 3, 165, '2024-06-23 03:41:11', '2024-06-23 10:41:11', NULL),
(63, 177, 3, 173, '2024-06-23 03:42:37', '2024-06-23 10:42:37', NULL);

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
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu_groups`
--
ALTER TABLE `menu_groups`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `roles_team_id_name_guard_name_unique` (`unit_id`,`name`,`guard_name`),
  ADD KEY `roles_team_foreign_key_index` (`unit_id`);

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
-- Indeks untuk tabel `sop_dokumens`
--
ALTER TABLE `sop_dokumens`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sop_steps`
--
ALTER TABLE `sop_steps`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sop_step_units`
--
ALTER TABLE `sop_step_units`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `status_pengajuan`
--
ALTER TABLE `status_pengajuan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code_2` (`code`),
  ADD KEY `parent_code` (`parent_code`),
  ADD KEY `code` (`code`),
  ADD KEY `code_3` (`code`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `user_units`
--
ALTER TABLE `user_units`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_unit_roles`
--
ALTER TABLE `user_unit_roles`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT untuk tabel `menu_groups`
--
ALTER TABLE `menu_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT untuk tabel `pengajuan_dokumen`
--
ALTER TABLE `pengajuan_dokumen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `pengajuan_progress`
--
ALTER TABLE `pengajuan_progress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=630;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sops`
--
ALTER TABLE `sops`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT untuk tabel `sop_dokumens`
--
ALTER TABLE `sop_dokumens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `sop_steps`
--
ALTER TABLE `sop_steps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;

--
-- AUTO_INCREMENT untuk tabel `sop_step_units`
--
ALTER TABLE `sop_step_units`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `status_pengajuan`
--
ALTER TABLE `status_pengajuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `units`
--
ALTER TABLE `units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT untuk tabel `user_units`
--
ALTER TABLE `user_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT untuk tabel `user_unit_roles`
--
ALTER TABLE `user_unit_roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `contents`
--
ALTER TABLE `contents`
  ADD CONSTRAINT `contents_id_content_type_foreign` FOREIGN KEY (`id_content_type`) REFERENCES `content_types` (`id`) ON DELETE CASCADE;

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
