-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-11-2024 a las 00:49:42
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `de_greef_mariano`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
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
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mariano', 'mariano@gmail.com', NULL, '$2y$10$rqFwwAgziUNgMAuTxLeWKe8PIGcMGUtxDS9d4Xci6atJvfSWmY7fS', NULL, '2024-11-03 23:00:37', '2024-11-04 01:36:09'),
(2, 'Roberto', 'roberto@gmail.com', NULL, '$2y$10$WAjfL7USNSbQknNAEa8UEOF7gcn1drMbJ7Vd6Yu4zun5OL3AdTITS', NULL, '2024-11-04 00:22:21', '2024-11-04 00:31:48'),
(3, 'Juan', 'juan@gmail.com', NULL, '$2y$10$2QgxIdU.srr4WVJZN/dVa.cTDtiheUYCOn5YKH3nPLGSWv5Xu2RaS', NULL, '2024-11-04 00:23:06', '2024-11-04 00:23:06'),
(4, 'Gisela', 'gisela@gmail.com', NULL, '$2y$10$UfmcfLizJpQducnBFB5pvuB6si0wQXiLanxET2RS0HBVAYfOyyta6', NULL, '2024-11-04 00:23:25', '2024-11-04 00:23:25'),
(5, 'Melisa', 'melisa@gmail.com', NULL, '$2y$10$jvAcEzZr/hEjLtAesGwU7O5So38SmH1xwbMtJlj61br2EVz.k.0Fa', NULL, '2024-11-04 00:23:42', '2024-11-04 00:23:42'),
(6, 'Pedro', 'pedro@gmail.com', NULL, '$2y$10$HmDWDdqlAbH57FyGO3Kox.XuccNDLLoyAXmmie5B698cn75DOaGCW', NULL, '2024-11-04 00:23:59', '2024-11-04 00:23:59'),
(7, 'Eugenia', 'eugenia@gmail.com', NULL, '$2y$10$tjeKHZxwKTDIduxZdzIBcu0tOhJdq/YoWpc46qyY.V/yQy0YNcZAe', NULL, '2024-11-04 00:29:22', '2024-11-04 00:29:22'),
(9, 'Oriana', 'oriana@gmail.com', NULL, '$2y$10$GLzHw99KQo26auYNaDrfH.xvLDDy45N7KT6MErvWl5cLH9PCwJBNW', NULL, '2024-11-04 00:37:45', '2024-11-04 00:37:45'),
(10, 'Jackeline', 'jackeline@gmail.com', NULL, '$2y$10$6DW3NlIzq96KpxiZav0gYOs8hOnWkcDznUHz87ceac.sVbmwbY4/q', NULL, '2024-11-04 00:38:21', '2024-11-04 00:38:21'),
(11, 'Laura', 'laura@gmail.com', NULL, '$2y$10$JRF9Tru3Jc1R8sOq8aYCIuPPLsK.hZBHIdsrZAv7PudAH8CPQDhwu', NULL, '2024-11-04 00:38:45', '2024-11-04 00:38:45'),
(12, 'Marcela', 'marcela@gmail.com', NULL, '$2y$10$6t6wxC9GkaSMGbJdP4K6WO9cuhJu7p8NhtQNbcOFEbW.qEw2c5jeu', NULL, '2024-11-04 00:39:00', '2024-11-04 00:39:00'),
(14, 'Lucia', 'lucia@gmail.com', NULL, '$2y$10$WFaQKlOCn1VrYxOJzvPFC.EqZWwoaALlmkk7gLNX2luTQGKb97RR6', NULL, '2024-11-04 00:40:48', '2024-11-04 00:40:48'),
(16, 'Benjamin', 'benja@gmail.com', NULL, '$2y$10$0krARLT/WHD9iMHkuGelPuZa6onrCs9kmk8E4FuELElpLafj86E9i', NULL, '2024-11-04 01:35:46', '2024-11-04 01:35:46');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
