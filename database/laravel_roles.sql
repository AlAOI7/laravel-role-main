-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 19 مارس 2025 الساعة 22:15
-- إصدار الخادم: 10.4.32-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_roles`
--

-- --------------------------------------------------------

--
-- بنية الجدول `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'superadmin@example.com', 'superadmin', NULL, '$2y$10$PlrLuiS7elzHWz1uoHiN3eEdhEZdrHVnkJbeDlp3LtevZ0mFPoG1a', NULL, '2025-03-19 18:11:10', '2025-03-19 18:11:10'),
(2, 'Katarina Zulauf I', 'aschultz@example.org', 'eduardo.runte', '2025-03-19 18:11:10', '$2y$10$LrUgiazMFWl3DQasZWywD.VlpOyL0bLbKCBGqKxlUFIbCNnltGSMe', 'RcczT92zIv', '2025-03-19 18:11:10', '2025-03-19 18:11:10'),
(3, 'Dr. Percy Lind IV', 'kaycee84@example.com', 'ayden41', '2025-03-19 18:11:10', '$2y$10$LrUgiazMFWl3DQasZWywD.VlpOyL0bLbKCBGqKxlUFIbCNnltGSMe', 'qdr8GORMGk', '2025-03-19 18:11:10', '2025-03-19 18:11:10'),
(4, 'Prof. Elouise Jast IV', 'yrowe@example.com', 'regan.fay', '2025-03-19 18:11:10', '$2y$10$LrUgiazMFWl3DQasZWywD.VlpOyL0bLbKCBGqKxlUFIbCNnltGSMe', '1hk3aIBaPg', '2025-03-19 18:11:10', '2025-03-19 18:11:10'),
(5, 'Leopoldo Stroman', 'ucrist@example.org', 'coconnell', '2025-03-19 18:11:10', '$2y$10$LrUgiazMFWl3DQasZWywD.VlpOyL0bLbKCBGqKxlUFIbCNnltGSMe', 'LhcsSj6F35', '2025-03-19 18:11:10', '2025-03-19 18:11:10'),
(6, 'Dr. Jammie Bradtke', 'hermann.louvenia@example.com', 'lueilwitz.kaleb', '2025-03-19 18:11:10', '$2y$10$LrUgiazMFWl3DQasZWywD.VlpOyL0bLbKCBGqKxlUFIbCNnltGSMe', '2nLz8suBws', '2025-03-19 18:11:10', '2025-03-19 18:11:10'),
(7, 'Dr. Gunner Macejkovic I', 'corkery.dillan@example.net', 'tkub', '2025-03-19 18:11:10', '$2y$10$LrUgiazMFWl3DQasZWywD.VlpOyL0bLbKCBGqKxlUFIbCNnltGSMe', 'UfhPorM1zu', '2025-03-19 18:11:10', '2025-03-19 18:11:10'),
(8, 'Alda Becker I', 'lela76@example.org', 'alice.macejkovic', '2025-03-19 18:11:10', '$2y$10$LrUgiazMFWl3DQasZWywD.VlpOyL0bLbKCBGqKxlUFIbCNnltGSMe', 'ufMMgxu9IG', '2025-03-19 18:11:10', '2025-03-19 18:11:10'),
(9, 'Mr. Koby Ebert', 'konopelski.art@example.com', 'bogisich.brenna', '2025-03-19 18:11:10', '$2y$10$LrUgiazMFWl3DQasZWywD.VlpOyL0bLbKCBGqKxlUFIbCNnltGSMe', 'L6WpeWHQtR', '2025-03-19 18:11:10', '2025-03-19 18:11:10'),
(10, 'Guy Little III', 'clair.konopelski@example.com', 'serenity17', '2025-03-19 18:11:10', '$2y$10$LrUgiazMFWl3DQasZWywD.VlpOyL0bLbKCBGqKxlUFIbCNnltGSMe', 'lddi0eSDXI', '2025-03-19 18:11:10', '2025-03-19 18:11:10'),
(11, 'Merlin Koelpin', 'gaylord.kuhlman@example.net', 'amber.schiller', '2025-03-19 18:11:10', '$2y$10$LrUgiazMFWl3DQasZWywD.VlpOyL0bLbKCBGqKxlUFIbCNnltGSMe', '8dpbtqllqU', '2025-03-19 18:11:10', '2025-03-19 18:11:10');

-- --------------------------------------------------------

--
-- بنية الجدول `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_24_184706_create_permission_tables', 1),
(5, '2020_09_12_043205_create_admins_table', 1);

-- --------------------------------------------------------

--
-- بنية الجدول `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1);

-- --------------------------------------------------------

--
-- بنية الجدول `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard.view', 'admin', 'dashboard', '2025-03-19 18:11:10', '2025-03-19 18:11:10'),
(2, 'dashboard.edit', 'admin', 'dashboard', '2025-03-19 18:11:11', '2025-03-19 18:11:11'),
(3, 'blog.create', 'admin', 'blog', '2025-03-19 18:11:11', '2025-03-19 18:11:11'),
(4, 'blog.view', 'admin', 'blog', '2025-03-19 18:11:11', '2025-03-19 18:11:11'),
(5, 'blog.edit', 'admin', 'blog', '2025-03-19 18:11:11', '2025-03-19 18:11:11'),
(6, 'blog.delete', 'admin', 'blog', '2025-03-19 18:11:11', '2025-03-19 18:11:11'),
(7, 'blog.approve', 'admin', 'blog', '2025-03-19 18:11:11', '2025-03-19 18:11:11'),
(8, 'admin.create', 'admin', 'admin', '2025-03-19 18:11:11', '2025-03-19 18:11:11'),
(9, 'admin.view', 'admin', 'admin', '2025-03-19 18:11:11', '2025-03-19 18:11:11'),
(10, 'admin.edit', 'admin', 'admin', '2025-03-19 18:11:11', '2025-03-19 18:11:11'),
(11, 'admin.delete', 'admin', 'admin', '2025-03-19 18:11:11', '2025-03-19 18:11:11'),
(12, 'admin.approve', 'admin', 'admin', '2025-03-19 18:11:11', '2025-03-19 18:11:11'),
(13, 'role.create', 'admin', 'role', '2025-03-19 18:11:11', '2025-03-19 18:11:11'),
(14, 'role.view', 'admin', 'role', '2025-03-19 18:11:11', '2025-03-19 18:11:11'),
(15, 'role.edit', 'admin', 'role', '2025-03-19 18:11:11', '2025-03-19 18:11:11'),
(16, 'role.delete', 'admin', 'role', '2025-03-19 18:11:11', '2025-03-19 18:11:11'),
(17, 'role.approve', 'admin', 'role', '2025-03-19 18:11:11', '2025-03-19 18:11:11'),
(18, 'profile.view', 'admin', 'profile', '2025-03-19 18:11:11', '2025-03-19 18:11:11'),
(19, 'profile.edit', 'admin', 'profile', '2025-03-19 18:11:11', '2025-03-19 18:11:11'),
(20, 'profile.delete', 'admin', 'profile', '2025-03-19 18:11:11', '2025-03-19 18:11:11'),
(21, 'profile.update', 'admin', 'profile', '2025-03-19 18:11:11', '2025-03-19 18:11:11');

-- --------------------------------------------------------

--
-- بنية الجدول `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'admin', '2025-03-19 18:11:10', '2025-03-19 18:11:10');

-- --------------------------------------------------------

--
-- بنية الجدول `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `role_has_permissions`
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
(21, 1);

-- --------------------------------------------------------

--
-- بنية الجدول `users`
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
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Dagmar Beier', 'giovanny.lesch@example.net', '2025-03-19 18:11:10', '$2y$10$PRQ4uJxf.xGGa8RRnc82Xuewr4TFtpFmQ832xrYe9rV8o.AYa4BWG', 'ZsuRMk6Co5', '2025-03-19 18:11:10', '2025-03-19 18:11:10'),
(2, 'Torrey Runolfsson PhD', 'franz.schultz@example.net', '2025-03-19 18:11:10', '$2y$10$PRQ4uJxf.xGGa8RRnc82Xuewr4TFtpFmQ832xrYe9rV8o.AYa4BWG', '9r6MMcXE9m', '2025-03-19 18:11:10', '2025-03-19 18:11:10'),
(3, 'Isadore Erdman', 'bill.klocko@example.org', '2025-03-19 18:11:10', '$2y$10$PRQ4uJxf.xGGa8RRnc82Xuewr4TFtpFmQ832xrYe9rV8o.AYa4BWG', 'vJavm0XHWj', '2025-03-19 18:11:10', '2025-03-19 18:11:10'),
(4, 'Jazlyn Gutmann DVM', 'hertha.goodwin@example.net', '2025-03-19 18:11:10', '$2y$10$PRQ4uJxf.xGGa8RRnc82Xuewr4TFtpFmQ832xrYe9rV8o.AYa4BWG', 'S3PZ92YazD', '2025-03-19 18:11:10', '2025-03-19 18:11:10'),
(5, 'Korey Goyette', 'green.jaunita@example.org', '2025-03-19 18:11:10', '$2y$10$PRQ4uJxf.xGGa8RRnc82Xuewr4TFtpFmQ832xrYe9rV8o.AYa4BWG', 'oFIBejheHc', '2025-03-19 18:11:10', '2025-03-19 18:11:10'),
(6, 'Aidan Buckridge', 'hayden55@example.org', '2025-03-19 18:11:10', '$2y$10$PRQ4uJxf.xGGa8RRnc82Xuewr4TFtpFmQ832xrYe9rV8o.AYa4BWG', 'Dn2kNBiqbz', '2025-03-19 18:11:10', '2025-03-19 18:11:10'),
(7, 'Miss Lavonne Jast', 'maia.kozey@example.net', '2025-03-19 18:11:10', '$2y$10$PRQ4uJxf.xGGa8RRnc82Xuewr4TFtpFmQ832xrYe9rV8o.AYa4BWG', 'pPQ0YDcjgR', '2025-03-19 18:11:10', '2025-03-19 18:11:10'),
(8, 'Alayna Casper', 'adolphus.lehner@example.net', '2025-03-19 18:11:10', '$2y$10$PRQ4uJxf.xGGa8RRnc82Xuewr4TFtpFmQ832xrYe9rV8o.AYa4BWG', 'PwZbvt0YW3', '2025-03-19 18:11:10', '2025-03-19 18:11:10'),
(9, 'Cali Langosh', 'lkuhn@example.com', '2025-03-19 18:11:10', '$2y$10$PRQ4uJxf.xGGa8RRnc82Xuewr4TFtpFmQ832xrYe9rV8o.AYa4BWG', 'bBZqKpIZ9K', '2025-03-19 18:11:10', '2025-03-19 18:11:10'),
(10, 'Gerard Wolf', 'kdoyle@example.com', '2025-03-19 18:11:10', '$2y$10$PRQ4uJxf.xGGa8RRnc82Xuewr4TFtpFmQ832xrYe9rV8o.AYa4BWG', 'T4m1Mwq6Av', '2025-03-19 18:11:10', '2025-03-19 18:11:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- قيود الجداول المُلقاة.
--

--
-- قيود الجداول `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
