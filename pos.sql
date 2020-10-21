-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2020 at 07:10 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `description`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 1, NULL, '2020-10-11 12:34:35', '2020-10-11 12:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `address`, `mobile_no`, `email`, `facebook`, `twitter`, `youtube`, `google_plus`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'khulna', '01975628575', 'sonetkhan95@gmail.com', 'www.facebook.com/rana', 'www.twitter.com/rana', 'www.youtube.com/rana22', 'www.google_plus.com/rana32', 1, 1, '2020-10-11 02:01:54', '2020-10-11 02:11:10'),
(3, 'chittacgong', '01847313526', 'admin@yahoo.com', 'www.facebook.com/jowel222', 'www.twitter.com/jowel1', 'www.youtube.com/jowel2', 'www.google_plus.com/jowel3', 1, NULL, '2020-10-11 02:07:38', '2020-10-11 02:07:38'),
(4, 'zinadha, ganna', '01644524364', 'abrara@yahoo.com', 'www.facebook.com/abrar', 'www.twitter.com/abrar', 'www.youtube.com/abrar', 'www.google_plus.com/abrar', 1, NULL, '2020-10-11 02:12:51', '2020-10-11 02:12:51');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `image`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(11, '202010121517logo.png', 1, NULL, '2020-10-12 09:17:53', '2020-10-12 09:17:53');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2014_10_12_000000_create_users_table', 2),
(5, '2020_10_10_165747_create_logos_table', 3),
(6, '2020_10_10_193052_create_sliders_table', 4),
(7, '2020_10_10_210745_create_missions_table', 5),
(8, '2020_10_10_214708_create_vissions_table', 6),
(9, '2020_10_10_222235_create_news_events_table', 7),
(10, '2020_10_10_232822_create_services_table', 8),
(11, '2020_10_11_071845_create_contacts_table', 9),
(12, '2020_10_11_180210_create_abouts_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `missions`
--

CREATE TABLE `missions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `missions`
--

INSERT INTO `missions` (`id`, `image`, `title`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '202010121907mission.jpg', 'Mission Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,', 1, 1, '2020-10-10 15:25:00', '2020-10-12 13:07:14');

-- --------------------------------------------------------

--
-- Table structure for table `news_events`
--

CREATE TABLE `news_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_title` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_events`
--

INSERT INTO `news_events` (`id`, `date`, `image`, `sort_title`, `long_title`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, '2020-10-12', '202010102307news2.jpg', 'Dummy content2', 'Vision Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.but also the leap into electronic typesetting.', 1, 1, '2020-10-10 17:07:35', '2020-10-10 17:07:56'),
(3, '2020-09-09', '202010102310banner.jpg', 'Dummy content3', 'Mission Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, NULL, '2020-10-10 17:10:01', '2020-10-10 17:10:01'),
(4, '2020-10-01', '202010121939news2.jpg', 'Dummy content', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, NULL, '2020-10-12 13:39:26', '2020-10-12 13:39:26');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sort_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_title` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `sort_title`, `long_title`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'Our Product', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\r\n\r\nContact Us', 1, NULL, '2020-10-10 17:49:55', '2020-10-10 17:49:55'),
(3, 'Our Expertise2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum222', 1, NULL, '2020-10-10 17:55:13', '2020-10-10 17:55:13'),
(4, NULL, NULL, 1, NULL, '2020-10-11 01:54:12', '2020-10-11 01:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `sort_title`, `long_title`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, '202010101957slider5.jpg', 'Second Slide 2', 'This is a description for the first slide. 2', 1, 1, '2020-10-10 13:57:23', '2020-10-10 14:07:17'),
(3, '202010102009slider4.jpeg', 'First Slide 1', 'This is a description for the first slide. 1', 1, 1, '2020-10-10 14:06:48', '2020-10-10 14:09:22'),
(4, '202010121530slider5.jpg', 'third Slide', 'This is a description for the first slide.', 1, NULL, '2020-10-12 09:30:18', '2020-10-12 09:30:18'),
(5, '202010121559slider6.jpg', 'Fourth Slide', 'This is a description for the first slide. 4', 1, NULL, '2020-10-12 09:59:30', '2020-10-12 09:59:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usertype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `usertype`, `name`, `email`, `email_verified_at`, `password`, `mobile`, `address`, `gender`, `image`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'jowel', 'admin', 'admin@gmail.com', NULL, '$2y$10$Ymg7SYbB5LThKKqQVyaYY.2XCFDQr.GDykChWBa8Cnob1x37ptXXG', '01875628575', 'dhaka,mirpur', 'Male', '20201007225515626274_1041888399290430_4321401314970547983_o.jpg', 1, NULL, NULL, '2020-10-08 01:09:26'),
(3, 'User', 'abrar jowel', 'jowelabrara@yahoo.com', NULL, '$2y$10$3XpdAHz8Fgn8JIuvZxzP8u.qh26Nq1AzaS/XGreR/RpfHCibPbkLW', NULL, NULL, NULL, NULL, 1, NULL, '2020-10-07 00:17:55', '2020-10-07 13:31:18'),
(4, 'User', 'rana555', 'rana555@outlook.com', NULL, '$2y$10$7VgR0KB5XuYym4f8HiWrxuqWP3nnu0tZmubz/6mmUKe.KLqUuZP7q', NULL, NULL, NULL, NULL, 1, NULL, '2020-10-07 00:45:56', '2020-10-07 13:32:48'),
(10, 'User', 'DABID', 'dabid@user.com', NULL, '$2y$10$peMhOpMCf5SM8O7GoiQrJegZ9VVI.C3ZsjYLyMeLKTqOzvAjvCS1O', NULL, NULL, NULL, NULL, 1, NULL, '2020-10-07 14:43:57', '2020-10-07 14:43:57'),
(11, 'User', 'AYSHA', 'AYSHA@GMAIL.COM', NULL, '$2y$10$RZeRpy/C4Yvd4REMMXTpcey4EcLZeolrxN5IiD.bWl0nqOoT3jcD.', NULL, NULL, NULL, NULL, 1, NULL, '2020-10-07 14:44:18', '2020-10-07 14:44:18'),
(12, 'User', 'morgan', 'morgan@user.com', NULL, '$2y$10$yXH9B76cimlbP84W8g3d1uggWEtQWZXChl3sEDJnVNH7Pp6cKqbl2', NULL, NULL, NULL, NULL, 1, NULL, '2020-10-07 14:44:46', '2020-10-07 14:44:46'),
(13, 'User', 'moris', 'moris95@gmail.com', NULL, '$2y$10$oiCC2dRa8kJjfld67Mdq4ucKbqGPXQ0Lm9q92nI.sNXy2OLLzWAYq', NULL, NULL, NULL, NULL, 1, NULL, '2020-10-07 14:45:05', '2020-10-07 14:45:05'),
(14, 'User', 'jowel12', 'jowel12@gmail.com', NULL, '$2y$10$QDUHYm66WbAZGPqbpcJQWe5BEV8gjQ.O72rRM...lP0w/B4zKaq9O', '01875628575', 'magura,dhaka', 'Male', '202010080733120340897_2951326491818035_1371424420987946816_o.jpg', 1, NULL, '2020-10-08 01:30:53', '2020-10-08 01:33:07'),
(15, 'User', 'Abu Hanif jowel', 'abuhanifjowel@gmail.com', NULL, '$2y$10$QLJUzB71OzbUj/cDAJrudO8fxW1xhMxRKbhe5R1.qYd/vmNgpWnYG', NULL, NULL, NULL, NULL, 1, NULL, '2020-10-08 01:40:43', '2020-10-08 01:40:43');

-- --------------------------------------------------------

--
-- Table structure for table `vissions`
--

CREATE TABLE `vissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vissions`
--

INSERT INTO `vissions` (`id`, `image`, `title`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '202010102201vision.jpg', 'Vision Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,', 1, 1, '2020-10-10 15:57:55', '2020-10-10 16:02:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `missions`
--
ALTER TABLE `missions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_events`
--
ALTER TABLE `news_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vissions`
--
ALTER TABLE `vissions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `missions`
--
ALTER TABLE `missions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `news_events`
--
ALTER TABLE `news_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vissions`
--
ALTER TABLE `vissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
