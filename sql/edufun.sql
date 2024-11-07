-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Nov 2024 pada 17.11
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edufun`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Interactive Multimedia', '2024-11-07 08:41:00', '2024-11-07 08:41:00'),
(2, 'Software Engineering', '2024-11-07 08:41:00', '2024-11-07 08:41:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `writer_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `course_date` date NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `courses`
--

INSERT INTO `courses` (`id`, `category_id`, `writer_id`, `name`, `course_date`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Human and Computer Interaction', '2024-07-08', 'Ex explicabo quidem ea. Pariatur tenetur non molestiae provident omnis. Aliquam saepe incidunt tempore nostrum voluptate sed atque. Voluptates minima voluptatem expedita architecto. Repudiandae facere laudantium laboriosam a aspernatur eaque aut. Voluptatum et repellat laborum itaque iste. Quasi cumque nihil placeat. Et iusto autem necessitatibus est enim expedita deserunt. Ut distinctio voluptate aliquid magnam est exercitationem nulla.', 'hci-article.png', '2024-11-07 08:41:00', '2024-11-07 08:41:00'),
(2, 1, 1, 'User Experience', '2024-08-31', 'Reprehenderit dolor veritatis ea quibusdam ducimus ipsa. Unde libero qui ut. Qui nisi minus ea cum similique. Aut ab deserunt natus similique. Quia maiores optio cumque enim. Laudantium repellat sint cupiditate eum cumque beatae. Omnis perspiciatis ut omnis. Facere dolor commodi ea eum ipsum necessitatibus. Sit porro unde eius ut ut illo necessitatibus.', 'ux-article.png', '2024-11-07 08:41:00', '2024-11-07 08:41:00'),
(3, 2, 2, 'User Experience for Digital Immersive Technology', '2024-03-23', 'Est libero voluptas minus. Nobis quam est nesciunt et. Sint inventore distinctio dolores beatae eos optio. Molestiae impedit libero quas esse iste necessitatibus. Ex sunt aut et animi iure. Id doloribus omnis ipsa enim. Maxime ut placeat non voluptas. Eum aperiam sunt qui eos iure assumenda adipisci. Sunt magni explicabo nemo ea. Molestiae assumenda maxime sed consequatur assumenda quia possimus molestiae. Provident molestiae consequatur explicabo qui. At rerum praesentium numquam velit placeat culpa officia. In et qui qui hic autem. Ea aperiam cum consequatur itaque quibusdam tenetur ut. Ut optio labore ipsa omnis ea aliquam.', 'ux-digital-article.png', '2024-11-07 08:41:00', '2024-11-07 08:41:00'),
(4, 2, 1, 'Pattern Software Design', '2024-10-08', 'Officiis dignissimos qui maiores. Ea enim dolorem pariatur sit officia. Voluptatum rerum ipsa asperiores et. Vitae qui libero corrupti minus. Sunt corporis ab velit qui eligendi nemo. Molestias et cupiditate ex officia. Iure omnis facilis quia. Voluptatem impedit sapiente voluptas porro architecto animi molestiae. Est error veniam vel. Enim rerum odio eum nobis aut odio perspiciatis. Similique similique quis nihil placeat amet ut.', 'psd-article.png', '2024-11-07 08:41:00', '2024-11-07 08:41:00'),
(5, 2, 3, 'Agile Software Development', '2024-03-30', 'Accusamus id quasi harum. Nam sit et autem nesciunt ut officia. Id cupiditate impedit accusantium cum facere. Ut omnis quo optio et sunt non. Dignissimos blanditiis accusantium quaerat dolores ad et est illum. Aspernatur ipsa qui error vel aut non. Voluptatem in aut unde dignissimos totam repellat. Earum aperiam ad ipsam perferendis asperiores recusandae dignissimos. Doloremque cumque consectetur et tenetur qui nisi quibusdam. Quam aut voluptatem laborum neque magnam sed et. Expedita consequatur enim consectetur voluptatum voluptates. Minima et beatae molestiae qui laborum rerum aliquid. Sapiente cupiditate voluptatum accusantium exercitationem. Harum voluptate dicta ex qui. Quasi soluta eum amet quis quaerat dolor blanditiis. Repellendus quis quisquam vitae culpa non eos excepturi alias.', 'agile-article.png', '2024-11-07 08:41:00', '2024-11-07 08:41:00'),
(6, 2, 4, 'Code Reengineering', '2024-09-10', 'Libero blanditiis aut aliquid dolorem facilis. Dignissimos aliquid earum optio placeat. Minus fugiat ea non explicabo. Tempora eius asperiores officiis eum explicabo et repellendus. Unde recusandae impedit soluta. Ipsa placeat assumenda qui repellat quas voluptatibus eos nemo. Nobis debitis et iste blanditiis. Reiciendis ut vero qui dolore ab est nam. Asperiores perspiciatis quidem aliquid cupiditate quia quo beatae. Nam quas tenetur officia maxime totam.', 'cr-article.jpg', '2024-11-07 08:41:00', '2024-11-07 08:41:00');

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
-- Struktur dari tabel `jobs`
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
-- Struktur dari tabel `job_batches`
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_05_123609_create_categories_table', 1),
(5, '2024_11_05_124408_create_writers_table', 1),
(6, '2024_11_05_125022_create_courses_table', 1);

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
-- Struktur dari tabel `sessions`
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
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('u93Ijz725tMDwKS8w9GasReojF4b5BYa0D1VFMPG', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSkw2R2hVbHhJcVdmdXJUaFRCeDdXODNzbkpSTFpjQlk0U25WM2x4MCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93cml0ZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1730994388);

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `writers`
--

CREATE TABLE `writers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `specialist` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `writers`
--

INSERT INTO `writers` (`id`, `name`, `specialist`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Raka Putra Wicaksono', 'Specialist Interactive Multimedia', 'writermale1.jpg', '2024-11-07 08:41:00', '2024-11-07 08:41:00'),
(2, 'Bia Mecca Anissa', 'Specialist Software Engineering', 'writerfemale1.jpg', '2024-11-07 08:41:00', '2024-11-07 08:41:00'),
(3, 'Abi Firmansyah', 'Specialist Interactive Multimedia', 'writermale2.jpg', '2024-11-07 08:41:00', '2024-11-07 08:41:00'),
(4, 'Jessica Wangsa', 'Specialist Software Engineering', 'writerfemale2.jpg', '2024-11-07 08:41:00', '2024-11-07 08:41:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_category_id_foreign` (`category_id`),
  ADD KEY `courses_writer_id_foreign` (`writer_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
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
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `writers`
--
ALTER TABLE `writers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `courses_writer_id_foreign` FOREIGN KEY (`writer_id`) REFERENCES `writers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
