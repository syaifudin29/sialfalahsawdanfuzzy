-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 12 Bulan Mei 2023 pada 12.51
-- Versi server: 10.5.19-MariaDB-cll-lve
-- Versi PHP: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kakj8266_ira`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ekstra_id` bigint(20) UNSIGNED NOT NULL,
  `kriteria_id` bigint(20) UNSIGNED NOT NULL,
  `nilai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id`, `ekstra_id`, `kriteria_id`, `nilai`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 30, '2023-05-06 17:00:00', '2023-05-06 17:00:00'),
(2, 1, 2, 85, '2023-05-07 17:00:00', '2023-05-07 17:00:00'),
(3, 1, 3, 50, '2023-05-08 17:00:00', '2023-05-08 17:00:00'),
(4, 1, 4, 40, '2023-05-09 17:00:00', '2023-05-09 17:00:00'),
(5, 2, 1, 55, '2023-05-10 17:00:00', '2023-05-10 17:00:00'),
(6, 2, 2, 25, '2023-05-11 17:00:00', '2023-05-11 17:00:00'),
(7, 2, 3, 75, '2023-05-12 17:00:00', '2023-05-12 17:00:00'),
(8, 2, 4, 25, '2023-05-13 17:00:00', '2023-05-13 17:00:00'),
(9, 3, 1, 75, '2023-05-14 17:00:00', '2023-05-14 17:00:00'),
(10, 3, 2, 65, '2023-05-15 17:00:00', '2023-05-15 17:00:00'),
(11, 3, 3, 55, '2023-05-16 17:00:00', '2023-05-16 17:00:00'),
(12, 3, 4, 83, '2023-05-17 17:00:00', '2023-05-17 17:00:00'),
(13, 4, 1, 35, '2023-05-18 17:00:00', '2023-05-18 17:00:00'),
(14, 4, 2, 70, '2023-05-19 17:00:00', '2023-05-19 17:00:00'),
(15, 4, 3, 74, '2023-05-20 17:00:00', '2023-05-20 17:00:00'),
(16, 4, 4, 75, '2023-05-21 17:00:00', '2023-05-21 17:00:00'),
(17, 5, 1, 47, '2023-05-22 17:00:00', '2023-05-22 17:00:00'),
(18, 5, 2, 43, '2023-05-23 17:00:00', '2023-05-23 17:00:00'),
(19, 5, 3, 56, '2023-05-24 17:00:00', '2023-05-24 17:00:00'),
(20, 5, 4, 42, '2023-05-25 17:00:00', '2023-05-25 17:00:00'),
(21, 6, 1, 78, '2023-05-26 17:00:00', '2023-05-26 17:00:00'),
(22, 6, 2, 67, '2023-05-27 17:00:00', '2023-05-27 17:00:00'),
(23, 6, 3, 80, '2023-05-28 17:00:00', '2023-05-28 17:00:00'),
(24, 6, 4, 100, '2023-05-29 17:00:00', '2023-05-29 17:00:00'),
(25, 7, 1, 85, '2023-05-30 17:00:00', '2023-05-30 17:00:00'),
(26, 7, 2, 80, '2023-05-31 17:00:00', '2023-05-31 17:00:00'),
(27, 7, 3, 100, '2023-06-01 17:00:00', '2023-06-01 17:00:00'),
(28, 7, 4, 65, '2023-06-02 17:00:00', '2023-06-02 17:00:00'),
(29, 8, 1, 33, '2023-06-03 17:00:00', '2023-06-03 17:00:00'),
(30, 8, 2, 100, '2023-06-04 17:00:00', '2023-06-04 17:00:00'),
(31, 8, 3, 70, '2023-06-05 17:00:00', '2023-06-05 17:00:00'),
(32, 8, 4, 55, '2023-06-06 17:00:00', '2023-06-06 17:00:00'),
(33, 9, 1, 100, '2023-06-07 17:00:00', '2023-06-07 17:00:00'),
(34, 9, 2, 43, '2023-06-08 17:00:00', '2023-06-08 17:00:00'),
(35, 9, 3, 25, '2023-06-09 17:00:00', '2023-06-09 17:00:00'),
(36, 9, 4, 34, '2023-06-10 17:00:00', '2023-06-10 17:00:00'),
(37, 10, 1, 74, '2023-06-11 17:00:00', '2023-06-11 17:00:00'),
(38, 10, 2, 60, '2023-06-12 17:00:00', '2023-06-12 17:00:00'),
(39, 10, 3, 88, '2023-06-13 17:00:00', '2023-06-13 17:00:00'),
(40, 10, 4, 27, '2023-06-14 17:00:00', '2023-06-14 17:00:00'),
(41, 11, 1, 55, '2023-06-15 17:00:00', '2023-06-15 17:00:00'),
(42, 11, 2, 71, '2023-06-16 17:00:00', '2023-06-16 17:00:00'),
(43, 11, 3, 54, '2023-06-17 17:00:00', '2023-06-17 17:00:00'),
(44, 11, 4, 95, '2023-06-18 17:00:00', '2023-06-18 17:00:00'),
(45, 12, 1, 25, '2023-06-19 17:00:00', '2023-06-19 17:00:00'),
(46, 12, 2, 38, '2023-06-20 17:00:00', '2023-06-20 17:00:00'),
(47, 12, 3, 95, '2023-06-21 17:00:00', '2023-06-21 17:00:00'),
(48, 12, 4, 38, '2023-06-22 17:00:00', '2023-06-22 17:00:00'),
(49, 13, 1, 76, '2023-06-23 17:00:00', '2023-06-23 17:00:00'),
(50, 13, 2, 75, '2023-06-24 17:00:00', '2023-06-24 17:00:00'),
(51, 13, 3, 77, '2023-06-25 17:00:00', '2023-06-25 17:00:00'),
(52, 13, 4, 77, '2023-06-26 17:00:00', '2023-06-26 17:00:00'),
(53, 14, 1, 40, '2023-06-27 17:00:00', '2023-06-27 17:00:00'),
(54, 14, 2, 82, '2023-06-28 17:00:00', '2023-06-28 17:00:00'),
(55, 14, 3, 30, '2023-06-29 17:00:00', '2023-06-29 17:00:00'),
(56, 14, 4, 49, '2023-06-30 17:00:00', '2023-06-30 17:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ekstra`
--

CREATE TABLE `ekstra` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_ekstra` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ekstra`
--

INSERT INTO `ekstra` (`id`, `nama_ekstra`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Kaligrafi', '1', '2023-05-07 03:49:24', '2023-05-07 03:49:24'),
(2, 'Sains', '1', '2023-05-07 03:49:30', '2023-05-07 03:49:30'),
(3, 'Tari', '1', '2023-05-07 03:49:46', '2023-05-07 03:49:46'),
(4, 'Pramuka', '1', '2023-05-07 03:50:28', '2023-05-07 03:50:28'),
(5, 'Badminton', '1', '2023-05-07 03:51:37', '2023-05-07 03:51:37'),
(6, 'Futsal', '1', '2023-05-07 03:51:51', '2023-05-07 03:51:51'),
(7, 'Catur', '1', '2023-05-07 03:52:07', '2023-05-07 03:52:07'),
(8, 'Silat', '1', '2023-05-07 04:42:20', '2023-05-07 04:42:20'),
(9, 'Atletik', '1', '2023-05-07 04:42:27', '2023-05-07 04:42:27'),
(10, 'Tahfidz', '1', '2023-05-07 04:43:20', '2023-05-07 04:43:20'),
(11, 'Pidato', '1', '2023-05-07 04:43:28', '2023-05-07 04:43:28'),
(12, 'Pmr', '1', '2023-05-07 04:43:50', '2023-05-07 04:43:50'),
(13, 'Mtq', '1', '2023-05-07 04:45:31', '2023-05-07 04:45:31'),
(14, 'Rebana', '1', '2023-05-07 04:45:37', '2023-05-07 04:45:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `hasil`
--

CREATE TABLE `hasil` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ekstra_id` bigint(20) UNSIGNED NOT NULL,
  `total` double(8,5) NOT NULL,
  `metode` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `hasil`
--

INSERT INTO `hasil` (`id`, `ekstra_id`, `total`, `metode`, `created_at`, `updated_at`) VALUES
(561, 1, 65.00000, 1, '2023-05-10 04:53:11', '2023-05-10 04:53:11'),
(562, 2, 47.50000, 1, '2023-05-10 04:53:11', '2023-05-10 04:53:11'),
(563, 3, 80.00000, 1, '2023-05-10 04:53:11', '2023-05-10 04:53:11'),
(564, 4, 72.50000, 1, '2023-05-10 04:53:11', '2023-05-10 04:53:11'),
(565, 5, 55.00000, 1, '2023-05-10 04:53:11', '2023-05-10 04:53:11'),
(566, 6, 85.00000, 1, '2023-05-10 04:53:11', '2023-05-10 04:53:11'),
(567, 7, 97.50000, 1, '2023-05-10 04:53:11', '2023-05-10 04:53:11'),
(568, 8, 80.00000, 1, '2023-05-10 04:53:11', '2023-05-10 04:53:11'),
(569, 9, 70.00000, 1, '2023-05-10 04:53:11', '2023-05-10 04:53:11'),
(570, 10, 72.50000, 1, '2023-05-10 04:53:11', '2023-05-10 04:53:11'),
(571, 11, 70.00000, 1, '2023-05-10 04:53:11', '2023-05-10 04:53:11'),
(572, 12, 55.00000, 1, '2023-05-10 04:53:11', '2023-05-10 04:53:11'),
(573, 13, 82.50000, 1, '2023-05-10 04:53:11', '2023-05-10 04:53:11'),
(574, 14, 70.00000, 1, '2023-05-10 04:53:11', '2023-05-10 04:53:11'),
(575, 1, 0.06850, 2, '2023-05-10 04:53:11', '2023-05-10 04:53:11'),
(576, 2, 0.06303, 2, '2023-05-10 04:53:11', '2023-05-10 04:53:11'),
(577, 3, 0.07457, 2, '2023-05-10 04:53:11', '2023-05-10 04:53:11'),
(578, 4, 0.07225, 2, '2023-05-10 04:53:11', '2023-05-10 04:53:11'),
(579, 5, 0.06711, 2, '2023-05-10 04:53:11', '2023-05-10 04:53:11'),
(580, 6, 0.07591, 2, '2023-05-10 04:53:11', '2023-05-10 04:53:11'),
(581, 7, 0.07909, 2, '2023-05-10 04:53:11', '2023-05-10 04:53:11'),
(582, 8, 0.07426, 2, '2023-05-10 04:53:11', '2023-05-10 04:53:11'),
(583, 9, 0.07086, 2, '2023-05-10 04:53:11', '2023-05-10 04:53:11'),
(584, 10, 0.07168, 2, '2023-05-10 04:53:11', '2023-05-10 04:53:11'),
(585, 11, 0.07137, 2, '2023-05-10 04:53:11', '2023-05-10 04:53:11'),
(586, 12, 0.06505, 2, '2023-05-10 04:53:11', '2023-05-10 04:53:11'),
(587, 13, 0.07546, 2, '2023-05-10 04:53:11', '2023-05-10 04:53:11'),
(588, 14, 0.07086, 2, '2023-05-10 04:53:11', '2023-05-10 04:53:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jawab_siswa`
--

CREATE TABLE `jawab_siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `pertanyaan_id` bigint(20) UNSIGNED NOT NULL,
  `ekstra_id` bigint(20) UNSIGNED NOT NULL,
  `nilai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jawab_siswa`
--

INSERT INTO `jawab_siswa` (`id`, `siswa_id`, `pertanyaan_id`, `ekstra_id`, `nilai`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 30, '2023-05-07 17:00:00', '2023-05-07 17:00:00'),
(2, 1, 2, 1, 40, '2023-05-08 17:00:00', '2023-05-08 17:00:00'),
(3, 1, 3, 1, 20, '2023-05-09 17:00:00', '2023-05-09 17:00:00'),
(4, 1, 4, 1, 40, '2023-05-10 17:00:00', '2023-05-10 17:00:00'),
(5, 1, 5, 1, 30, '2023-05-11 17:00:00', '2023-05-11 17:00:00'),
(6, 1, 6, 1, 20, '2023-05-12 17:00:00', '2023-05-12 17:00:00'),
(7, 1, 7, 1, 10, '2023-05-13 17:00:00', '2023-05-13 17:00:00'),
(8, 1, 8, 1, 30, '2023-05-14 17:00:00', '2023-05-14 17:00:00'),
(9, 1, 9, 1, 40, '2023-05-15 17:00:00', '2023-05-15 17:00:00'),
(10, 1, 10, 1, 20, '2023-05-16 17:00:00', '2023-05-16 17:00:00'),
(11, 1, 11, 1, 40, '2023-05-17 17:00:00', '2023-05-17 17:00:00'),
(12, 1, 12, 1, 30, '2023-05-18 17:00:00', '2023-05-18 17:00:00'),
(13, 1, 13, 1, 20, '2023-05-19 17:00:00', '2023-05-19 17:00:00'),
(14, 1, 14, 1, 10, '2023-05-20 17:00:00', '2023-05-20 17:00:00'),
(15, 1, 15, 1, 30, '2023-05-21 17:00:00', '2023-05-21 17:00:00'),
(16, 1, 16, 1, 20, '2023-05-22 17:00:00', '2023-05-22 17:00:00'),
(17, 1, 17, 1, 40, '2023-05-23 17:00:00', '2023-05-23 17:00:00'),
(18, 1, 18, 1, 30, '2023-05-24 17:00:00', '2023-05-24 17:00:00'),
(19, 1, 19, 1, 20, '2023-05-25 17:00:00', '2023-05-25 17:00:00'),
(20, 1, 20, 1, 10, '2023-05-26 17:00:00', '2023-05-26 17:00:00'),
(21, 1, 21, 1, 20, '2023-05-27 17:00:00', '2023-05-27 17:00:00'),
(22, 1, 22, 1, 10, '2023-05-28 17:00:00', '2023-05-28 17:00:00'),
(23, 1, 23, 1, 30, '2023-05-29 17:00:00', '2023-05-29 17:00:00'),
(24, 1, 24, 1, 40, '2023-05-30 17:00:00', '2023-05-30 17:00:00'),
(25, 1, 25, 1, 20, '2023-05-31 17:00:00', '2023-05-31 17:00:00'),
(26, 1, 26, 1, 10, '2023-06-01 17:00:00', '2023-06-01 17:00:00'),
(27, 1, 27, 1, 20, '2023-06-02 17:00:00', '2023-06-02 17:00:00'),
(28, 1, 28, 1, 10, '2023-06-03 17:00:00', '2023-06-03 17:00:00'),
(29, 1, 29, 1, 30, '2023-06-04 17:00:00', '2023-06-04 17:00:00'),
(30, 1, 30, 1, 40, '2023-06-05 17:00:00', '2023-06-05 17:00:00'),
(31, 1, 31, 1, 40, '2023-06-06 17:00:00', '2023-06-06 17:00:00'),
(32, 1, 32, 1, 30, '2023-06-07 17:00:00', '2023-06-07 17:00:00'),
(33, 1, 33, 1, 20, '2023-06-08 17:00:00', '2023-06-08 17:00:00'),
(34, 1, 34, 1, 10, '2023-06-09 17:00:00', '2023-06-09 17:00:00'),
(35, 1, 35, 1, 30, '2023-06-10 17:00:00', '2023-06-10 17:00:00'),
(36, 1, 1, 2, 20, '2023-06-11 17:00:00', '2023-06-11 17:00:00'),
(37, 1, 2, 2, 10, '2023-06-12 17:00:00', '2023-06-12 17:00:00'),
(38, 1, 3, 2, 20, '2023-06-13 17:00:00', '2023-06-13 17:00:00'),
(39, 1, 4, 2, 10, '2023-06-14 17:00:00', '2023-06-14 17:00:00'),
(40, 1, 5, 2, 30, '2023-06-15 17:00:00', '2023-06-15 17:00:00'),
(41, 1, 6, 2, 40, '2023-06-16 17:00:00', '2023-06-16 17:00:00'),
(42, 1, 7, 2, 30, '2023-06-17 17:00:00', '2023-06-17 17:00:00'),
(43, 1, 8, 2, 20, '2023-06-18 17:00:00', '2023-06-18 17:00:00'),
(44, 1, 9, 2, 10, '2023-06-19 17:00:00', '2023-06-19 17:00:00'),
(45, 1, 10, 2, 20, '2023-06-20 17:00:00', '2023-06-20 17:00:00'),
(46, 1, 11, 2, 40, '2023-06-21 17:00:00', '2023-06-21 17:00:00'),
(47, 1, 12, 2, 30, '2023-06-22 17:00:00', '2023-06-22 17:00:00'),
(48, 1, 13, 2, 20, '2023-06-23 17:00:00', '2023-06-23 17:00:00'),
(49, 1, 14, 2, 20, '2023-06-24 17:00:00', '2023-06-24 17:00:00'),
(50, 1, 15, 2, 40, '2023-06-25 17:00:00', '2023-06-25 17:00:00'),
(51, 1, 16, 2, 30, '2023-06-26 17:00:00', '2023-06-26 17:00:00'),
(52, 1, 17, 2, 20, '2023-06-27 17:00:00', '2023-06-27 17:00:00'),
(53, 1, 18, 2, 10, '2023-06-28 17:00:00', '2023-06-28 17:00:00'),
(54, 1, 19, 2, 20, '2023-06-29 17:00:00', '2023-06-29 17:00:00'),
(55, 1, 20, 2, 10, '2023-06-30 17:00:00', '2023-06-30 17:00:00'),
(56, 1, 21, 2, 20, '2023-07-01 17:00:00', '2023-07-01 17:00:00'),
(57, 1, 22, 2, 10, '2023-07-02 17:00:00', '2023-07-02 17:00:00'),
(58, 1, 23, 2, 30, '2023-07-03 17:00:00', '2023-07-03 17:00:00'),
(59, 1, 24, 2, 40, '2023-07-04 17:00:00', '2023-07-04 17:00:00'),
(60, 1, 25, 2, 20, '2023-07-05 17:00:00', '2023-07-05 17:00:00'),
(61, 1, 26, 2, 40, '2023-07-06 17:00:00', '2023-07-06 17:00:00'),
(62, 1, 27, 2, 30, '2023-07-07 17:00:00', '2023-07-07 17:00:00'),
(63, 1, 28, 2, 20, '2023-07-08 17:00:00', '2023-07-08 17:00:00'),
(64, 1, 29, 2, 10, '2023-07-09 17:00:00', '2023-07-09 17:00:00'),
(65, 1, 30, 2, 20, '2023-07-10 17:00:00', '2023-07-10 17:00:00'),
(66, 1, 31, 2, 40, '2023-07-11 17:00:00', '2023-07-11 17:00:00'),
(67, 1, 32, 2, 30, '2023-07-12 17:00:00', '2023-07-12 17:00:00'),
(68, 1, 33, 2, 20, '2023-07-13 17:00:00', '2023-07-13 17:00:00'),
(69, 1, 34, 2, 10, '2023-07-14 17:00:00', '2023-07-14 17:00:00'),
(70, 1, 35, 2, 20, '2023-07-15 17:00:00', '2023-07-15 17:00:00'),
(71, 1, 1, 3, 10, '2023-07-16 17:00:00', '2023-07-16 17:00:00'),
(72, 1, 2, 3, 30, '2023-07-17 17:00:00', '2023-07-17 17:00:00'),
(73, 1, 3, 3, 40, '2023-07-18 17:00:00', '2023-07-18 17:00:00'),
(74, 1, 4, 3, 10, '2023-07-19 17:00:00', '2023-07-19 17:00:00'),
(75, 1, 5, 3, 30, '2023-07-20 17:00:00', '2023-07-20 17:00:00'),
(76, 1, 6, 3, 20, '2023-07-21 17:00:00', '2023-07-21 17:00:00'),
(77, 1, 7, 3, 10, '2023-07-22 17:00:00', '2023-07-22 17:00:00'),
(78, 1, 8, 3, 30, '2023-07-23 17:00:00', '2023-07-23 17:00:00'),
(79, 1, 9, 3, 40, '2023-07-24 17:00:00', '2023-07-24 17:00:00'),
(80, 1, 10, 3, 20, '2023-07-25 17:00:00', '2023-07-25 17:00:00'),
(81, 1, 11, 3, 20, '2023-07-26 17:00:00', '2023-07-26 17:00:00'),
(82, 1, 12, 3, 10, '2023-07-27 17:00:00', '2023-07-27 17:00:00'),
(83, 1, 13, 3, 20, '2023-07-28 17:00:00', '2023-07-28 17:00:00'),
(84, 1, 14, 3, 10, '2023-07-29 17:00:00', '2023-07-29 17:00:00'),
(85, 1, 15, 3, 30, '2023-07-30 17:00:00', '2023-07-30 17:00:00'),
(86, 1, 16, 3, 40, '2023-07-31 17:00:00', '2023-07-31 17:00:00'),
(87, 1, 17, 3, 40, '2023-08-01 17:00:00', '2023-08-01 17:00:00'),
(88, 1, 18, 3, 20, '2023-08-02 17:00:00', '2023-08-02 17:00:00'),
(89, 1, 19, 3, 40, '2023-08-03 17:00:00', '2023-08-03 17:00:00'),
(90, 1, 20, 3, 20, '2023-08-04 17:00:00', '2023-08-04 17:00:00'),
(91, 1, 21, 3, 40, '2023-08-05 17:00:00', '2023-08-05 17:00:00'),
(92, 1, 22, 3, 30, '2023-08-06 17:00:00', '2023-08-06 17:00:00'),
(93, 1, 23, 3, 20, '2023-08-07 17:00:00', '2023-08-07 17:00:00'),
(94, 1, 24, 3, 10, '2023-08-08 17:00:00', '2023-08-08 17:00:00'),
(95, 1, 25, 3, 20, '2023-08-09 17:00:00', '2023-08-09 17:00:00'),
(96, 1, 26, 3, 20, '2023-08-10 17:00:00', '2023-08-10 17:00:00'),
(97, 1, 27, 3, 10, '2023-08-11 17:00:00', '2023-08-11 17:00:00'),
(98, 1, 28, 3, 20, '2023-08-12 17:00:00', '2023-08-12 17:00:00'),
(99, 1, 29, 3, 10, '2023-08-13 17:00:00', '2023-08-13 17:00:00'),
(100, 1, 30, 3, 30, '2023-08-14 17:00:00', '2023-08-14 17:00:00'),
(101, 1, 31, 3, 40, '2023-08-15 17:00:00', '2023-08-15 17:00:00'),
(102, 1, 32, 3, 20, '2023-08-16 17:00:00', '2023-08-16 17:00:00'),
(103, 1, 33, 3, 10, '2023-08-17 17:00:00', '2023-08-17 17:00:00'),
(104, 1, 34, 3, 10, '2023-08-18 17:00:00', '2023-08-18 17:00:00'),
(105, 1, 35, 3, 30, '2023-08-19 17:00:00', '2023-08-19 17:00:00'),
(106, 2, 1, 1, 30, '2023-08-20 17:00:00', '2023-08-20 17:00:00'),
(107, 2, 2, 1, 40, '2023-08-21 17:00:00', '2023-08-21 17:00:00'),
(108, 2, 3, 1, 20, '2023-08-22 17:00:00', '2023-08-22 17:00:00'),
(109, 2, 4, 1, 40, '2023-08-23 17:00:00', '2023-08-23 17:00:00'),
(110, 2, 5, 1, 30, '2023-08-24 17:00:00', '2023-08-24 17:00:00'),
(111, 2, 6, 1, 20, '2023-08-25 17:00:00', '2023-08-25 17:00:00'),
(112, 2, 7, 1, 10, '2023-08-26 17:00:00', '2023-08-26 17:00:00'),
(113, 2, 8, 1, 30, '2023-08-27 17:00:00', '2023-08-27 17:00:00'),
(114, 2, 9, 1, 40, '2023-08-28 17:00:00', '2023-08-28 17:00:00'),
(115, 2, 10, 1, 20, '2023-08-29 17:00:00', '2023-08-29 17:00:00'),
(116, 2, 11, 1, 10, '2023-08-30 17:00:00', '2023-08-30 17:00:00'),
(117, 2, 12, 1, 20, '2023-08-31 17:00:00', '2023-08-31 17:00:00'),
(118, 2, 13, 1, 10, '2023-09-01 17:00:00', '2023-09-01 17:00:00'),
(119, 2, 14, 1, 30, '2023-09-02 17:00:00', '2023-09-02 17:00:00'),
(120, 2, 15, 1, 40, '2023-09-03 17:00:00', '2023-09-03 17:00:00'),
(121, 2, 16, 1, 20, '2023-09-04 17:00:00', '2023-09-04 17:00:00'),
(122, 2, 17, 1, 40, '2023-09-05 17:00:00', '2023-09-05 17:00:00'),
(123, 2, 18, 1, 30, '2023-09-06 17:00:00', '2023-09-06 17:00:00'),
(124, 2, 19, 1, 20, '2023-09-07 17:00:00', '2023-09-07 17:00:00'),
(125, 2, 20, 1, 10, '2023-09-08 17:00:00', '2023-09-08 17:00:00'),
(126, 2, 21, 1, 20, '2023-09-09 17:00:00', '2023-09-09 17:00:00'),
(127, 2, 22, 1, 10, '2023-09-10 17:00:00', '2023-09-10 17:00:00'),
(128, 2, 23, 1, 30, '2023-09-11 17:00:00', '2023-09-11 17:00:00'),
(129, 2, 24, 1, 20, '2023-09-12 17:00:00', '2023-09-12 17:00:00'),
(130, 2, 25, 1, 10, '2023-09-13 17:00:00', '2023-09-13 17:00:00'),
(131, 2, 26, 1, 20, '2023-09-14 17:00:00', '2023-09-14 17:00:00'),
(132, 2, 27, 1, 10, '2023-09-15 17:00:00', '2023-09-15 17:00:00'),
(133, 2, 28, 1, 30, '2023-09-16 17:00:00', '2023-09-16 17:00:00'),
(134, 2, 29, 1, 40, '2023-09-17 17:00:00', '2023-09-17 17:00:00'),
(135, 2, 30, 1, 30, '2023-09-18 17:00:00', '2023-09-18 17:00:00'),
(136, 2, 31, 1, 20, '2023-09-19 17:00:00', '2023-09-19 17:00:00'),
(137, 2, 32, 1, 10, '2023-09-20 17:00:00', '2023-09-20 17:00:00'),
(138, 2, 33, 1, 20, '2023-09-21 17:00:00', '2023-09-21 17:00:00'),
(139, 2, 34, 1, 10, '2023-09-22 17:00:00', '2023-09-22 17:00:00'),
(140, 2, 35, 1, 30, '2023-09-23 17:00:00', '2023-09-23 17:00:00'),
(141, 2, 1, 2, 30, '2023-09-24 17:00:00', '2023-09-24 17:00:00'),
(142, 2, 2, 2, 40, '2023-09-25 17:00:00', '2023-09-25 17:00:00'),
(143, 2, 3, 2, 20, '2023-09-26 17:00:00', '2023-09-26 17:00:00'),
(144, 2, 4, 2, 40, '2023-09-27 17:00:00', '2023-09-27 17:00:00'),
(145, 2, 5, 2, 20, '2023-09-28 17:00:00', '2023-09-28 17:00:00'),
(146, 2, 6, 2, 40, '2023-09-29 17:00:00', '2023-09-29 17:00:00'),
(147, 2, 7, 2, 30, '2023-09-30 17:00:00', '2023-09-30 17:00:00'),
(148, 2, 8, 2, 20, '2023-10-01 17:00:00', '2023-10-01 17:00:00'),
(149, 2, 9, 2, 10, '2023-10-02 17:00:00', '2023-10-02 17:00:00'),
(150, 2, 10, 2, 20, '2023-10-03 17:00:00', '2023-10-03 17:00:00'),
(151, 2, 11, 2, 40, '2023-10-04 17:00:00', '2023-10-04 17:00:00'),
(152, 2, 12, 2, 30, '2023-10-05 17:00:00', '2023-10-05 17:00:00'),
(153, 2, 13, 2, 20, '2023-10-06 17:00:00', '2023-10-06 17:00:00'),
(154, 2, 14, 2, 10, '2023-10-07 17:00:00', '2023-10-07 17:00:00'),
(155, 2, 15, 2, 30, '2023-10-08 17:00:00', '2023-10-08 17:00:00'),
(156, 2, 16, 2, 20, '2023-10-09 17:00:00', '2023-10-09 17:00:00'),
(157, 2, 17, 2, 40, '2023-10-10 17:00:00', '2023-10-10 17:00:00'),
(158, 2, 18, 2, 30, '2023-10-11 17:00:00', '2023-10-11 17:00:00'),
(159, 2, 19, 2, 20, '2023-10-12 17:00:00', '2023-10-12 17:00:00'),
(160, 2, 20, 2, 10, '2023-10-13 17:00:00', '2023-10-13 17:00:00'),
(161, 2, 21, 2, 20, '2023-10-14 17:00:00', '2023-10-14 17:00:00'),
(162, 2, 22, 2, 10, '2023-10-15 17:00:00', '2023-10-15 17:00:00'),
(163, 2, 23, 2, 30, '2023-10-16 17:00:00', '2023-10-16 17:00:00'),
(164, 2, 24, 2, 40, '2023-10-17 17:00:00', '2023-10-17 17:00:00'),
(165, 2, 25, 2, 20, '2023-10-18 17:00:00', '2023-10-18 17:00:00'),
(166, 2, 26, 2, 40, '2023-10-19 17:00:00', '2023-10-19 17:00:00'),
(167, 2, 27, 2, 30, '2023-10-20 17:00:00', '2023-10-20 17:00:00'),
(168, 2, 28, 2, 30, '2023-10-21 17:00:00', '2023-10-21 17:00:00'),
(169, 2, 29, 2, 40, '2023-10-22 17:00:00', '2023-10-22 17:00:00'),
(170, 2, 30, 2, 20, '2023-10-23 17:00:00', '2023-10-23 17:00:00'),
(171, 2, 31, 2, 40, '2023-10-24 17:00:00', '2023-10-24 17:00:00'),
(172, 2, 32, 2, 20, '2023-10-25 17:00:00', '2023-10-25 17:00:00'),
(173, 2, 33, 2, 40, '2023-10-26 17:00:00', '2023-10-26 17:00:00'),
(174, 2, 34, 2, 30, '2023-10-27 17:00:00', '2023-10-27 17:00:00'),
(175, 2, 35, 2, 20, '2023-10-28 17:00:00', '2023-10-28 17:00:00'),
(176, 2, 1, 3, 10, '2023-10-29 17:00:00', '2023-10-29 17:00:00'),
(177, 2, 2, 3, 40, '2023-10-30 17:00:00', '2023-10-30 17:00:00'),
(178, 2, 3, 3, 20, '2023-10-31 17:00:00', '2023-10-31 17:00:00'),
(179, 2, 4, 3, 40, '2023-11-01 17:00:00', '2023-11-01 17:00:00'),
(180, 2, 5, 3, 30, '2023-11-02 17:00:00', '2023-11-02 17:00:00'),
(181, 2, 6, 3, 20, '2023-11-03 17:00:00', '2023-11-03 17:00:00'),
(182, 2, 7, 3, 10, '2023-11-04 17:00:00', '2023-11-04 17:00:00'),
(183, 2, 8, 3, 30, '2023-11-05 17:00:00', '2023-11-05 17:00:00'),
(184, 2, 9, 3, 40, '2023-11-06 17:00:00', '2023-11-06 17:00:00'),
(185, 2, 10, 3, 20, '2023-11-07 17:00:00', '2023-11-07 17:00:00'),
(186, 2, 11, 3, 40, '2023-11-08 17:00:00', '2023-11-08 17:00:00'),
(187, 2, 12, 3, 30, '2023-11-09 17:00:00', '2023-11-09 17:00:00'),
(188, 2, 13, 3, 20, '2023-11-10 17:00:00', '2023-11-10 17:00:00'),
(189, 2, 14, 3, 10, '2023-11-11 17:00:00', '2023-11-11 17:00:00'),
(190, 2, 15, 3, 30, '2023-11-12 17:00:00', '2023-11-12 17:00:00'),
(191, 2, 16, 3, 30, '2023-11-13 17:00:00', '2023-11-13 17:00:00'),
(192, 2, 17, 3, 40, '2023-11-14 17:00:00', '2023-11-14 17:00:00'),
(193, 2, 18, 3, 20, '2023-11-15 17:00:00', '2023-11-15 17:00:00'),
(194, 2, 19, 3, 40, '2023-11-16 17:00:00', '2023-11-16 17:00:00'),
(195, 2, 20, 3, 30, '2023-11-17 17:00:00', '2023-11-17 17:00:00'),
(196, 2, 21, 3, 20, '2023-11-18 17:00:00', '2023-11-18 17:00:00'),
(197, 2, 22, 3, 10, '2023-11-19 17:00:00', '2023-11-19 17:00:00'),
(198, 2, 23, 3, 30, '2023-11-20 17:00:00', '2023-11-20 17:00:00'),
(199, 2, 24, 3, 40, '2023-11-21 17:00:00', '2023-11-21 17:00:00'),
(200, 2, 25, 3, 20, '2023-11-22 17:00:00', '2023-11-22 17:00:00'),
(201, 2, 26, 3, 40, '2023-11-23 17:00:00', '2023-11-23 17:00:00'),
(202, 2, 27, 3, 30, '2023-11-24 17:00:00', '2023-11-24 17:00:00'),
(203, 2, 28, 3, 20, '2023-11-25 17:00:00', '2023-11-25 17:00:00'),
(204, 2, 29, 3, 10, '2023-11-26 17:00:00', '2023-11-26 17:00:00'),
(205, 2, 30, 3, 20, '2023-11-27 17:00:00', '2023-11-27 17:00:00'),
(206, 2, 31, 3, 40, '2023-11-28 17:00:00', '2023-11-28 17:00:00'),
(207, 2, 32, 3, 30, '2023-11-29 17:00:00', '2023-11-29 17:00:00'),
(208, 2, 33, 3, 20, '2023-11-30 17:00:00', '2023-11-30 17:00:00'),
(209, 2, 34, 3, 10, '2023-12-01 17:00:00', '2023-12-01 17:00:00'),
(210, 2, 35, 3, 30, '2023-12-02 17:00:00', '2023-12-02 17:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kriteria` varchar(255) NOT NULL,
  `bobot` int(11) NOT NULL,
  `is_active` enum('0','1') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id`, `nama_kriteria`, `bobot`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Minat', 40, '1', '2023-05-07 04:45:54', '2023-05-07 04:45:54'),
(2, 'Bakat', 40, '1', '2023-05-07 04:46:00', '2023-05-07 04:46:00'),
(3, 'Prestasi Siswa', 20, '1', '2023-05-07 04:46:11', '2023-05-07 04:46:11'),
(4, 'Waktu latihan', 10, '1', '2023-05-07 04:46:21', '2023-05-07 04:46:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(33, '2014_10_12_000000_create_users_table', 1),
(34, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(35, '2019_08_19_000000_create_failed_jobs_table', 1),
(36, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(37, '2023_05_05_110103_siswa', 1),
(38, '2023_05_05_110133_ekstra', 1),
(39, '2023_05_05_110152_pertanyaan', 1),
(40, '2023_05_05_110207_kriteria', 1),
(42, '2023_05_07_081307_alternatif', 1),
(44, '2023_05_07_102344_hasil', 2),
(45, '2023_05_05_110231_jawab_siswa', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `pertanyaan`
--

CREATE TABLE `pertanyaan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pertanyaan` varchar(255) NOT NULL,
  `kriteria_id` bigint(20) UNSIGNED NOT NULL,
  `is_active` enum('0','1') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pertanyaan`
--

INSERT INTO `pertanyaan` (`id`, `pertanyaan`, `kriteria_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Saya merasa tertantang dengan kegiatan ekstrakulikuler', 1, '0', '2023-05-06 17:00:00', '2023-05-10 04:49:16'),
(2, 'Guru yang mengajar ekstrakulikuler sangat ramah dan sabar dalam mengajar', 1, '1', '2023-05-07 17:00:00', '2023-05-11 22:33:21'),
(3, 'Metode latihan yang variatif membuat saya semangat ikut kegiatan ekstrakulikuler', 1, '1', '2023-05-08 17:00:00', '2023-05-08 17:00:00'),
(4, 'Fasilitas yang lengkap membuat saya tertarik dalam kegiatan ekstrakulikuler', 1, '1', '2023-05-09 17:00:00', '2023-05-09 17:00:00'),
(5, 'Kegiatan ekstrakulikuler dapat memperluas pergaulan di dalam masyarakat, sehingga saya mengikutinya', 1, '1', '2023-05-10 17:00:00', '2023-05-10 17:00:00'),
(6, 'Pelatih selalu menanamkan sikap disiplin ketika melakukan kegiatan yang berhubungan dengan ekstrakulikuler', 1, '1', '2023-05-11 17:00:00', '2023-05-11 17:00:00'),
(7, 'Terdapat kekompakan dan kerja sama yang baik dalam tim ekstrakulikuler sekolah saya', 1, '1', '2023-05-12 17:00:00', '2023-05-12 17:00:00'),
(8, 'Lokasi ekstrakulikuler yang nyaman membuat saya aktif ikut kegiatan ', 1, '1', '2023-05-13 17:00:00', '2023-05-13 17:00:00'),
(9, 'Aktifitas yang ada pada ekstrakulikuler membuat saya lebih cakap dalam bergerak ', 1, '1', '2023-05-14 17:00:00', '2023-05-14 17:00:00'),
(10, 'Ekstrakulikuler merupakan kegiatan yang dapat menghilangkan kejenuhan ', 1, '1', '2023-05-15 17:00:00', '2023-05-15 17:00:00'),
(11, 'Dalam kegiatan ekstrakulikuler keterampilan sangatlah dibutuhkan', 2, '1', '2023-05-16 17:00:00', '2023-05-16 17:00:00'),
(12, 'Dengan mengikuti kegiatan ekstrakulikuler kita dapat membangun potensi', 2, '1', '2023-05-17 17:00:00', '2023-05-17 17:00:00'),
(13, 'Potensi merupakan hal yang penting untuk kita memilih ekstrakulikuler', 2, '1', '2023-05-18 17:00:00', '2023-05-18 17:00:00'),
(14, 'Saya ikut kegiatan ekstrakulikuler karena ingin mengasah poptensi saya', 2, '1', '2023-05-19 17:00:00', '2023-05-19 17:00:00'),
(15, 'Seleksi kegiatan ekstrakulikuler dilihat dari keterampilan yang kita miliki', 2, '1', '2023-05-20 17:00:00', '2023-05-20 17:00:00'),
(16, 'Pelatih menjelaskan cara agar dapat memilih ekstrakulikuler yang sama dengan potensi kita', 2, '1', '2023-05-21 17:00:00', '2023-05-21 17:00:00'),
(17, 'Saya memilih kegiatan ektrakulikuler karena dalam diri saya ada potensi disalah satu ekskul yang saya sukai', 2, '1', '2023-05-22 17:00:00', '2023-05-22 17:00:00'),
(18, 'Keterampilan dalam kegiatan ekstrakulikuler menjadi acuan dalam diri saya untuk lebih kompeten', 2, '1', '2023-05-23 17:00:00', '2023-05-23 17:00:00'),
(19, 'Keterampilan yang saya miliki membuat orangtua saya menyuruh untuk mengikuti kegiatan ekstrakulikuler', 2, '1', '2023-05-24 17:00:00', '2023-05-24 17:00:00'),
(20, 'Saya mendapatkan dukungan penuh dari guru terkait dengan potensi yang saya miliki ', 2, '1', '2023-05-25 17:00:00', '2023-05-25 17:00:00'),
(21, 'Saya selalu aktif dikelas saya pembelajaran', 3, '1', '2023-05-26 17:00:00', '2023-05-26 17:00:00'),
(22, 'Saya selalu menyelesaikan semua tugas yang diberikan oleh guru', 3, '1', '2023-05-27 17:00:00', '2023-05-27 17:00:00'),
(23, 'Saya mampu menciptakan kreatifitas baru yang belum ada disekolah', 3, '1', '2023-05-28 17:00:00', '2023-05-28 17:00:00'),
(24, 'Saya menjadi rangking 1 dikelas', 3, '1', '2023-05-29 17:00:00', '2023-05-29 17:00:00'),
(25, 'Saya berhasil menjuarai olimpiade', 3, '1', '2023-05-30 17:00:00', '2023-05-30 17:00:00'),
(26, 'Saya berhasil dalam kejuaraan olahraga', 3, '1', '2023-05-31 17:00:00', '2023-05-31 17:00:00'),
(27, 'Melakukan sebuah penelitian yang berguna bagi siswa lainnya dan sekolah', 3, '1', '2023-06-01 17:00:00', '2023-06-01 17:00:00'),
(28, 'Saya dapat dengan cepat mengusai seluruh materi pembelajaran', 3, '1', '2023-06-02 17:00:00', '2023-06-02 17:00:00'),
(29, 'Saya berhasil mendapatkan juara pararel sekolah', 3, '1', '2023-06-03 17:00:00', '2023-06-03 17:00:00'),
(30, 'Saya menjuarai lomba cerdas cermat', 3, '1', '2023-06-04 17:00:00', '2023-06-04 17:00:00'),
(31, 'Memberi keterangan saat tidak hadir', 4, '1', '2023-06-05 17:00:00', '2023-06-05 17:00:00'),
(32, 'Datang kesekolah tepat waktu tidak terlambat', 4, '1', '2023-06-06 17:00:00', '2023-06-06 17:00:00'),
(33, 'Berbicara sopan kepada pelatih', 4, '1', '2023-06-07 17:00:00', '2023-06-07 17:00:00'),
(34, 'Memakai atribut yang lengkap', 4, '1', '2023-06-08 17:00:00', '2023-06-08 17:00:00'),
(35, 'Disiplin waktu dalam mengikuti kegiatan ekstrakullikuler', 4, '1', '2023-06-09 17:00:00', '2023-06-09 17:00:00'),
(36, 'Saya merasa tertantang dengan adanya kegiata ekstrakurikuler', 1, '1', '2023-05-10 04:51:19', '2023-05-10 04:51:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_siswa` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `jen_kel` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL,
  `is_active` enum('0','1') NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `nama_siswa`, `kelas`, `jen_kel`, `status`, `is_active`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Yanti', '12 D', 'Laki-laki', '0', '0', 'sis251', 'Ggu7d', '2023-05-08 05:19:48', '2023-05-10 04:24:32'),
(6, 'Joko', '6 T', 'Perempuan', '0', '1', 'sis252', 'EI4ln', '2023-05-08 05:20:03', '2023-05-10 04:48:20'),
(8, 'Sinta', '6a', 'Perempuan', '0', '1', 'sis253', 'Y8gAP', '2023-05-10 04:48:45', '2023-05-10 04:48:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, 'admin', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ekstra`
--
ALTER TABLE `ekstra`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jawab_siswa`
--
ALTER TABLE `jawab_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
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
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT untuk tabel `ekstra`
--
ALTER TABLE `ekstra`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=589;

--
-- AUTO_INCREMENT untuk tabel `jawab_siswa`
--
ALTER TABLE `jawab_siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pertanyaan`
--
ALTER TABLE `pertanyaan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;