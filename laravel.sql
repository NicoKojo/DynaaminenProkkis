-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 04.04.2024 klo 15:31
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
  `duration_days` int(11) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vedos taulusta `events`
--

INSERT INTO `events` (`id`, `name`, `location`, `start_time`, `duration_days`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Sipulin kuorinta kurssi', 'LahtiCity', '2024-04-01 11:11:00', 7, 'Täällä kuoritaan!', '2024-03-27 06:25:22', '2024-03-27 06:25:22'),
(2, 'Sipulin kuorinnan alkeet', 'LahtiCity', '2024-04-01 11:32:00', 10, 'NYT KUORITAAN!!!!', '2024-03-27 06:32:50', '2024-03-27 06:32:50');

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
(8, '2024_04_04_131001_create_registrations_table', 5);

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vedos taulusta `registrations`
--

INSERT INTO `registrations` (`id`, `first_name`, `last_name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'testi', 'testi', 'testi@testi.fi', '2024-04-04 10:12:30', '2024-04-04 10:12:30'),
(2, 'testi', 'testi', 'testi@gmail.fi', '2024-04-04 10:13:07', '2024-04-04 10:13:07'),
(5, 'testi', 'testi', 'uusi@xn--vittumikpiv-s8abc.fi', '2024-04-04 10:17:12', '2024-04-04 10:17:12'),
(7, 'uusi', 'testi', 'vittuuu@xn--mitpaskaa-x2a.fi', '2024-04-04 10:19:51', '2024-04-04 10:19:51'),
(10, 'testi', 'testi', 'vitun@toimii.fi', '2024-04-04 10:26:19', '2024-04-04 10:26:19');

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
('aK9LAqzUxqpsaX7gLr5wbrGqn5QIGzWeNqVhhNBd', 13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMFRRa293c1BSbGlySHFoRWhNcFd0cVRQanZiNWJlSncwRmpwU2tadyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ldmVudHMiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxMzt9', 1712237180);

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
  `role` varchar(255) DEFAULT 'attendee'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vedos taulusta `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'hei', 'hei@hoi.com', NULL, '$2y$12$ToFtp3l2sxjvsP9KTXXFHuX9urWSb1u.Qul6h2.zVc7fPdqrXdD6q', NULL, '2024-03-20 07:40:40', '2024-03-20 07:40:40', 'attendee'),
(2, 'uuno turhapuro', 'hei@hei.com', NULL, '$2y$12$fllkaNeYgWYbHvTx0FD87.rTwNmXiiYBzBPO3OVJcCJw1DGle4lg2', NULL, '2024-03-20 07:42:06', '2024-03-20 07:42:06', 'attendee'),
(3, 'testiin', 'perkele@lol.com', NULL, '$2y$12$rtVPnUi8Dt40vUmQdeEJhO7Bb44ZRweU7Se2dYO8MNBJonwMTNqRy', NULL, '2024-03-20 07:49:28', '2024-03-20 07:49:28', 'attendee'),
(4, 'testiin', 'partio@partio.com', NULL, '$2y$12$lxrlkGGwL1AT0RL3XHRpV..Z2VrTRjf7PY6SZejWj6dsWCy9a8J9q', NULL, '2024-03-20 07:49:54', '2024-03-20 07:49:54', 'attendee'),
(5, 'partiopoi', 'poi@partio.com', NULL, '$2y$12$scd5VFGNSgT3icq5spX48e9S2YW23M/wc7I9e.WNShBUtdHLgXML2', NULL, '2024-03-20 07:51:04', '2024-03-20 07:51:04', 'attendee'),
(6, 'uuspartiolainen', 'skibidii@lol.com', NULL, '$2y$12$qCoMum/Sl1rjxs2JiLRvEOrlaFutCbMup1rMTMjq4bBOGsCkILc46', NULL, '2024-03-20 07:54:02', '2024-03-20 07:54:02', 'attendee'),
(7, 'vitunvittu', 'saatana@email.com', NULL, '$2y$12$bezuxIIPOHRRPad7ce6vFO8/hdsaBHBkWFwAqmAJXlIyQEHft.Equ', NULL, '2024-03-20 08:02:23', '2024-03-20 08:02:23', 'scout'),
(8, 'partio', 'partio@email.com', NULL, '$2y$12$lS3BAx.YV/W/U7gRvmTMNOhpb/LSpDKG2bj.uAIqgdZkM1uYHNa9y', NULL, '2024-03-27 05:57:30', '2024-03-27 05:57:30', 'scout'),
(9, 'laravel', 'laravel@laravel.fi', NULL, '$2y$12$qOOHAmNUBly/.Op9RjParuWWyIZWs0HoUlhdL3.PSPcnfx3YtlEia', NULL, '2024-03-27 11:11:25', '2024-03-27 11:11:25', 'scout'),
(10, 'test12', 'testi@eivittu', NULL, '$2y$12$Y9a/E3xkiWPZeBN4xdNPi.0OKfDDzgMS2RADCJPmEItf8TPTzWLsq', NULL, '2024-03-28 17:25:15', '2024-03-28 17:25:15', 'scout'),
(11, 'testi', 'testi345@gmail.com', NULL, '$2y$12$OWD768ei9g73ktqmmOBLaOBVQkHtbGFCw4AAEw/2t38mbj/OnHlW.', NULL, '2024-03-29 07:56:45', '2024-03-29 07:56:45', 'scout'),
(12, 'koe', '123@gmail.com', NULL, '$2y$12$FXNAaGNYLwMHfElJyXvJi.b2T0RMUrKA2xe2Orhgfq0XgTOtJAliy', NULL, '2024-04-04 07:28:07', '2024-04-04 07:28:07', 'scout'),
(13, 'koe', 'koe@gmail.con', NULL, '$2y$12$QzAt8T0OvkY..3PddCJrVeN0wKQP6prJthDzthWPht8M/tdz2L0/i', NULL, '2024-04-04 09:39:40', '2024-04-04 09:39:40', 'scout');

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `registrations_email_unique` (`email`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
