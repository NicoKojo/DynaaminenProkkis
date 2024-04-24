-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 24.04.2024 klo 17:00
-- Palvelimen versio: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Rakenne taululle `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vedos taulusta `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('partio@email.com|127.0.0.1', 'i:1;', 1713269851),
('partio@email.com|127.0.0.1:timer', 'i:1713269851;', 1713269851),
('poju@partio.fi|127.0.0.1', 'i:1;', 1713968042),
('poju@partio.fi|127.0.0.1:timer', 'i:1713968042;', 1713968042),
('testi@gmail.fi|127.0.0.1', 'i:2;', 1712234400),
('testi@gmail.fi|127.0.0.1:timer', 'i:1712234400;', 1712234400);

-- --------------------------------------------------------

--
-- Rakenne taululle `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Rakenne taululle `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `recurrence` varchar(255) DEFAULT NULL,
  `osallistujat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vedos taulusta `events`
--

INSERT INTO `events` (`id`, `name`, `location`, `start_time`, `end_time`, `description`, `created_at`, `updated_at`, `recurrence`, `osallistujat`) VALUES
(1, 'Sipulin kuorinta kurssi', 'LahtiCity', '2024-04-01 11:11:00', '0000-00-00 00:00:00', 'Täällä kuoritaan!', '2024-03-27 06:25:22', '2024-03-27 06:25:22', NULL, NULL),
(2, 'Sipulin kuorinnan alkeet', 'LahtiCity', '2024-04-01 11:32:00', '0000-00-00 00:00:00', 'NYT KUORITAAN!!!!', '2024-03-27 06:32:50', '2024-03-27 06:32:50', NULL, NULL),
(6, 'blööö', 'LahtiCity', '2024-04-16 19:00:00', '2024-04-30 15:00:00', 'HYÖÖÖÖGHHHÄÄÄÖÖGH!!!', '2024-04-16 09:01:06', '2024-04-16 09:01:06', NULL, NULL),
(27, 'fvsf', 'sfv', '2024-04-22 14:06:00', '2024-04-28 14:06:00', 'sfdvsf', '2024-04-22 08:06:20', '2024-04-22 08:06:20', NULL, NULL),
(28, 'sdfvsd', 'sdvs', '2024-04-24 14:07:00', '2024-04-28 14:07:00', 'sdvsd', '2024-04-22 08:07:33', '2024-04-22 08:07:33', NULL, 1),
(29, 'test2', 'asdfv', '2024-04-24 14:14:00', '2024-04-26 14:14:00', 'sdfvas', '2024-04-22 08:14:23', '2024-04-22 08:14:23', NULL, 2),
(30, 'test3', 'Lahti', '2024-04-23 14:14:00', '2024-04-26 14:14:00', 'skibidii', '2024-04-22 08:14:53', '2024-04-22 08:14:53', NULL, 3);

-- --------------------------------------------------------

--
-- Rakenne taululle `failed_jobs`
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
-- Rakenne taululle `jobs`
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
-- Rakenne taululle `job_batches`
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
-- Rakenne taululle `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vedos taulusta `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_03_20_093648_add_role_to_users_table', 2),
(5, '2024_03_19_182144_create_personal_access_tokens_table', 3),
(6, '2024_03_27_080433_create_events_table', 3),
(7, '2024_04_04_111802_create_ilmo_table', 4),
(8, '2024_04_04_131001_create_registrations_table', 5),
(10, '2024_04_22_050715_add_recurrence_to_events_table', 6),
(11, '2024_04_22_110417_add_osallistujat_to_events_table', 7),
(12, '2024_03_19_181857_create_personal_access_tokens_table', 8),
(13, '2024_04_24_141010_add_event_id_to_registrations_table', 9),
(14, '2024_04_24_142841_remove_id_column_from_registrations', 9),
(15, '2024_04_24_142902_modify_registrations_table', 10);

-- --------------------------------------------------------

--
-- Rakenne taululle `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Rakenne taululle `personal_access_tokens`
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
-- Rakenne taululle `registrations`
--

CREATE TABLE `registrations` (
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vedos taulusta `registrations`
--

INSERT INTO `registrations` (`event_id`, `first_name`, `last_name`, `created_at`, `updated_at`, `email`, `id`) VALUES
(0, 'bobbi', 'brown', '2024-04-04 10:40:38', '2024-04-04 10:40:38', '', 2),
(0, 'testi', 'testi', '2024-04-04 10:13:07', '2024-04-04 10:13:07', '', 3),
(0, 'testi', 'testi', '2024-04-04 10:12:30', '2024-04-04 10:12:30', '', 4),
(0, 'testi', 'testi', '2024-04-04 10:17:12', '2024-04-04 10:17:12', '', 5),
(0, 'uusi', 'testi', '2024-04-04 10:19:51', '2024-04-04 10:19:51', '', 6),
(0, 'testi', 'testi', '2024-04-04 10:26:19', '2024-04-04 10:26:19', '', 7),
(30, 'Esi', 'Merkki', '2024-04-24 11:53:44', '2024-04-24 11:53:44', 'partio@partio.fi', 8),
(29, 'Esi', 'Merkki', '2024-04-24 11:54:27', '2024-04-24 11:54:27', 'partio@partio.fi', 9),
(30, 'Emilia', 'Vainio', '2024-04-24 11:58:48', '2024-04-24 11:58:48', 'emppu@email.fi', 10),
(30, 'oiegjswetio', 'seoijlf', '2024-04-24 11:59:55', '2024-04-24 11:59:55', 'spoe@email.fi', 11);

-- --------------------------------------------------------

--
-- Rakenne taululle `sessions`
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
-- Vedos taulusta `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('aliKm70hWbcPGPMzYjrxdTiua92ClQr8XLVX4dkP', 41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibkxvdjZuenQ3aTVmbTdNTFFkVTV1c3dsaldXS3F6UTg0d1FpSXFYMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9ldmVudHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo0MTt9', 1713970796);

-- --------------------------------------------------------

--
-- Rakenne taululle `users`
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
  `role` varchar(255) DEFAULT 'attendee',
  `country` varchar(255) DEFAULT NULL,
  `scoutid` varchar(255) DEFAULT NULL,
  `troop` varchar(255) DEFAULT NULL,
  `circle` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vedos taulusta `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `country`, `scoutid`, `troop`, `circle`) VALUES
(36, 'jjahas', 'no@nii.com', NULL, '$2y$12$qTgVuWwvq8g.8EHVPOsvpuL.qbhiCXgYfdylLk3ojyBsDqkM9MzDC', NULL, '2024-04-16 08:59:56', '2024-04-16 08:59:56', 'scout', 'dfghsfy', 'dyjdty', 'dtyjdty', 'tuyjdt'),
(37, 'ItseSaatana', 'helvetti@perkele.com', NULL, '$2y$12$30KJfs.8i6AMAIbyCe/L7.paaT5/g3QhW2buDmAdbeA.qH9ddqRvq', NULL, '2024-04-16 09:21:49', '2024-04-16 09:21:49', 'scout', 'Helvetti', '666', 'Saatanan Valtakunta', 'Saatanalahden Eräjormat'),
(38, 'ItseSaatana2', 'helvetti2@perkele.com', NULL, '$2y$12$hXcuir5urJDx4qSkCUDml.5Q1UpP/6s6Un3zbkF4UXTge5bV53Cnq', NULL, '2024-04-22 01:35:50', '2024-04-22 01:35:50', 'admin', NULL, NULL, NULL, NULL),
(39, 'vanhempi', 'vanhempi@partio.com', NULL, '$2y$12$/avdWZRewOFEdpvjPD6tfO164ieRahp8dN7dMs6GdbjVwBaBrA40a', NULL, '2024-04-22 08:13:58', '2024-04-22 08:13:58', 'parent', NULL, NULL, NULL, NULL),
(40, 'spurgu', 'spurgu@partio.com', NULL, '$2y$12$8e3Pm3X/4EfCozCzYbaDh.5JrXsP9y3d2L.RhSSxV43b1IWrFLtFy', NULL, '2024-04-22 08:15:21', '2024-04-22 08:15:21', 'attendee', NULL, NULL, NULL, NULL),
(41, 'esimerkki', 'partio@partio.fi', NULL, '$2y$12$hACRy6vSojMAZkXbwVltWeFQXneftrG8Phw3M4zSz0U9ZDho8WYbq', NULL, '2024-04-24 11:13:38', '2024-04-24 11:13:38', 'attendee', NULL, NULL, NULL, NULL);

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
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
