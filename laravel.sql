-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 29.04.2024 klo 21:25
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
(30, 'test3', 'Lahti', '2024-04-23 14:14:00', '2024-04-26 14:14:00', 'skibidii', '2024-04-22 08:14:53', '2024-04-22 08:14:53', NULL, 3),
(33, 'Testi1', 'Heinola', '2024-05-12 12:00:00', '2024-05-13 15:00:00', 'Tapahtuma vain partiolaisille.', '2024-04-28 17:02:23', '2024-04-28 17:02:23', NULL, 1),
(34, 'Testi2', 'Lahti', '2024-05-31 10:00:00', '2024-05-31 19:00:00', 'Kaikille avoin tapahtuma.', '2024-04-28 17:03:11', '2024-04-28 17:03:11', NULL, 3),
(35, 'Jännä juttu', 'Jännittävää', '2024-05-03 11:00:00', '2024-05-05 11:00:00', 'Nyt on jännää.', '2024-04-29 09:10:24', '2024-04-29 09:10:24', NULL, 3),
(36, 'Jännä tapahtuma', 'Jossain', '2026-06-11 11:00:00', '2024-07-11 11:00:00', 'Testataan', '2024-04-29 09:12:48', '2024-04-29 09:12:48', NULL, 3);

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
(15, '2024_04_24_142902_modify_registrations_table', 10),
(16, '2024_04_25_080358_add_parent_and_age_to_users', 11),
(17, '2024_04_25_082958_rename_parent_in_users', 12);

-- --------------------------------------------------------

--
-- Rakenne taululle `parent_register`
--

CREATE TABLE `parent_register` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pcname` varchar(255) NOT NULL,
  `pcage` date NOT NULL,
  `pccircle` varchar(255) NOT NULL,
  `pctroop` varchar(255) NOT NULL,
  `pccountry` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pcscoutid` int(11) DEFAULT NULL,
  `parentname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vedos taulusta `parent_register`
--

INSERT INTO `parent_register` (`id`, `pcname`, `pcage`, `pccircle`, `pctroop`, `pccountry`, `created_at`, `updated_at`, `pcscoutid`, `parentname`) VALUES
(1, 'Lapsi Partiolainen', '2015-01-11', 'Joku', 'Tunarit', 'Suomi', '2024-04-29 09:15:56', '2024-04-29 09:15:56', 11111, 'Parentti Partiolainen');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vedos taulusta `registrations`
--

INSERT INTO `registrations` (`event_id`, `created_at`, `updated_at`, `user_id`, `id`) VALUES
(0, '2024-04-04 10:40:38', '2024-04-04 10:40:38', NULL, 1),
(0, '2024-04-04 10:13:07', '2024-04-04 10:13:07', NULL, 2),
(0, '2024-04-04 10:12:30', '2024-04-04 10:12:30', NULL, 3),
(0, '2024-04-04 10:17:12', '2024-04-04 10:17:12', NULL, 4),
(0, '2024-04-04 10:19:51', '2024-04-04 10:19:51', NULL, 5),
(0, '2024-04-04 10:26:19', '2024-04-04 10:26:19', NULL, 6),
(30, '2024-04-24 11:53:44', '2024-04-24 11:53:44', NULL, 7),
(29, '2024-04-24 11:54:27', '2024-04-24 11:54:27', NULL, 8),
(30, '2024-04-24 11:58:48', '2024-04-24 11:58:48', NULL, 9),
(30, '2024-04-24 11:59:55', '2024-04-24 11:59:55', NULL, 10),
(33, '2024-04-29 07:26:20', '2024-04-29 07:26:20', 71, 11),
(27, '2024-04-29 07:27:05', '2024-04-29 07:27:05', 69, 12),
(34, '2024-04-29 07:54:18', '2024-04-29 07:54:18', 70, 13),
(1, '2024-04-29 08:55:51', '2024-04-29 08:55:51', 70, 14),
(34, '2024-04-29 09:10:37', '2024-04-29 09:10:37', 72, 15),
(35, '2024-04-29 09:10:47', '2024-04-29 09:10:47', 72, 16),
(36, '2024-04-29 09:13:19', '2024-04-29 09:13:19', 72, 17);

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
('vpW8RWbVSdG5AVSJ1tj0vo04kLaRWD08ebIsAPog', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTW9tZmNlTXlSWGhVbXR5dTVBN1BJblMzMm5jUHZScXZCU3hJemxBbCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fX0=', 1714418505);

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
  `circle` varchar(255) DEFAULT NULL,
  `child` varchar(255) DEFAULT NULL,
  `age` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vedos taulusta `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `country`, `scoutid`, `troop`, `circle`, `child`, `age`) VALUES
(68, 'tui', 'tui@lui.com', NULL, '$2y$12$X.ngYsUXyZtQTlWKUHvP0.pwQUTaqVjMhnQNpYsBGMK5J9adM1zOm', NULL, '2024-04-28 05:26:43', '2024-04-28 05:26:43', 'scout', 'sretyjh', '4357', 'sgdh', 'sdh', NULL, '2024-04-02'),
(69, 'testi', 'testi@testi.fi', NULL, '$2y$12$pUXSgxt7aIzNU3W9HGYy5uT40nTdYAlo/utsPTtZAEMgrAPz3z.F6', NULL, '2024-04-28 16:40:57', '2024-04-28 16:40:57', 'attendee', NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'Admin', 'admin@admin.fi', NULL, '$2y$12$SrqzykPHAk2LgF7DhJNUXOVZXBNDywD19YtLs07ajLKZyIk9UePMm', NULL, '2024-04-28 16:56:17', '2024-04-28 16:56:17', 'admin', NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'Tyyppi', 'tyyppi@email.com', NULL, '$2y$12$sbBv0usGHvPMYnOOBf4er.BstW1exnsfIokgpS.49OqrtoiTds8zy', NULL, '2024-04-29 07:22:54', '2024-04-29 07:22:54', 'attendee', NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'admin admin', 'admin@admin.com', NULL, '$2y$12$Oe3pvaiPg.7H78.V2mmS1.t.qGbPY8Cjh1Kxxbwh7ceGRipoCcE/e', NULL, '2024-04-29 09:06:03', '2024-04-29 09:06:03', 'admin', NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'Parentti Partiolainen', 'parentti@email.fi', NULL, '$2y$12$nO6p7oO8kT2I85bmE6MopOSHEWNxKrSMTrFxvJHf5JT5WaiNuyHTC', NULL, '2024-04-29 09:14:16', '2024-04-29 09:14:16', 'parent', NULL, NULL, NULL, NULL, NULL, NULL);

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
-- Indexes for table `parent_register`
--
ALTER TABLE `parent_register`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`user_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `parent_register`
--
ALTER TABLE `parent_register`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- Rajoitteet vedostauluille
--

--
-- Rajoitteet taululle `registrations`
--
ALTER TABLE `registrations`
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
