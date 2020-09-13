-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2020 at 08:17 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `thumbanil` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_published` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `thumbanil`, `name`, `slug`, `is_published`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Laravel', 'laravel', '1', '2020-09-10 01:14:39', '2020-09-10 01:14:39'),
(2, 1, NULL, 'JavaScript', 'javascript', '1', '2020-09-10 01:14:39', '2020-09-10 01:14:39'),
(3, 3, 'Java', 'Java', 'java', '1', '2020-09-10 01:14:39', '2020-09-10 22:51:24'),
(4, 1, NULL, 'Python', 'python', '1', '2020-09-10 01:14:39', '2020-09-10 01:14:39'),
(5, 1, NULL, 'GoLang', 'golang', '1', '2020-09-10 01:14:39', '2020-09-10 01:14:39');

-- --------------------------------------------------------

--
-- Table structure for table `category_posts`
--

CREATE TABLE `category_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_posts`
--

INSERT INTO `category_posts` (`id`, `category_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 4, 19, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(2, 2, 33, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(3, 2, 73, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(4, 1, 92, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(5, 3, 32, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(6, 5, 77, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(7, 3, 93, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(8, 3, 88, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(9, 4, 60, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(10, 1, 35, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(11, 4, 78, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(12, 5, 14, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(13, 1, 24, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(14, 4, 82, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(15, 5, 78, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(16, 5, 38, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(17, 3, 51, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(18, 2, 65, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(19, 4, 67, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(20, 1, 75, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(21, 5, 26, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(22, 1, 69, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(23, 4, 11, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(24, 2, 26, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(25, 1, 7, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(26, 1, 6, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(27, 3, 71, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(28, 2, 32, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(29, 1, 46, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(30, 1, 94, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(31, 1, 52, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(32, 1, 95, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(33, 4, 38, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(34, 4, 53, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(35, 2, 16, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(36, 5, 34, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(37, 3, 79, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(38, 3, 68, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(39, 3, 87, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(40, 3, 51, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(41, 4, 58, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(42, 1, 22, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(43, 5, 78, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(44, 2, 82, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(45, 4, 90, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(46, 4, 15, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(47, 2, 33, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(48, 4, 58, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(49, 4, 27, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(50, 3, 63, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(51, 1, 80, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(52, 5, 16, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(53, 1, 7, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(54, 3, 77, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(55, 2, 10, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(56, 4, 9, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(57, 1, 97, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(58, 3, 55, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(59, 2, 44, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(60, 4, 16, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(61, 3, 9, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(62, 2, 90, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(63, 1, 1, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(64, 4, 48, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(65, 3, 73, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(66, 2, 8, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(67, 5, 34, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(68, 3, 54, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(69, 1, 85, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(70, 5, 98, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(71, 5, 49, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(72, 1, 66, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(73, 3, 44, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(74, 1, 62, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(75, 3, 83, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(76, 4, 97, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(77, 1, 30, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(78, 2, 72, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(79, 3, 10, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(80, 5, 76, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(81, 5, 14, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(82, 1, 14, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(83, 5, 38, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(84, 5, 64, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(85, 3, 28, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(86, 3, 61, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(87, 3, 1, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(88, 5, 62, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(89, 5, 94, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(90, 1, 97, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(91, 1, 13, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(92, 1, 7, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(93, 2, 92, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(94, 3, 30, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(95, 5, 91, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(96, 5, 57, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(97, 5, 47, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(98, 5, 39, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(99, 1, 85, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(100, 2, 75, '2020-09-10 01:43:12', '2020-09-10 01:43:12'),
(102, 5, 102, NULL, NULL),
(103, 3, 102, NULL, NULL),
(104, 1, 102, NULL, NULL),
(107, 1, 105, NULL, NULL);

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
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `user_id`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 3, '20151028005212_JPG', '2020-09-11 05:56:45', '2020-09-11 05:56:45'),
(2, 3, '20151028005237_jpg', '2020-09-11 05:56:46', '2020-09-11 05:56:46'),
(3, 3, '20151028005249_JPG', '2020-09-11 05:56:46', '2020-09-11 05:56:46'),
(4, 3, '20151028005300_JPG', '2020-09-11 05:56:46', '2020-09-11 05:56:46'),
(5, 3, '20151028005304_JPG', '2020-09-11 05:56:47', '2020-09-11 05:56:47'),
(6, 3, '20151028005410_jpg', '2020-09-11 05:56:47', '2020-09-11 05:56:47'),
(7, 3, '20151028005414_jpg', '2020-09-11 05:56:47', '2020-09-11 05:56:47'),
(8, 3, '20151028005423_jpg', '2020-09-11 05:56:47', '2020-09-11 05:56:47'),
(9, 3, '20151028005427_jpg', '2020-09-11 05:56:47', '2020-09-11 05:56:47'),
(10, 3, '20151028005430_jpg', '2020-09-11 05:56:47', '2020-09-11 05:56:47'),
(11, 3, '20151028005433_jpg', '2020-09-11 05:56:47', '2020-09-11 05:56:47'),
(12, 3, '20151028005437_jpg', '2020-09-11 05:56:48', '2020-09-11 05:56:48'),
(13, 3, '20151028005440_jpg', '2020-09-11 05:56:48', '2020-09-11 05:56:48'),
(14, 3, '20151028005445_jpg', '2020-09-11 05:56:48', '2020-09-11 05:56:48'),
(15, 3, '20151028005449_jpg', '2020-09-11 05:56:48', '2020-09-11 05:56:48'),
(16, 3, '20151028005453_jpg', '2020-09-11 05:56:48', '2020-09-11 05:56:48');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_10_045222_create_categories_table', 1),
(5, '2020_09_10_045328_create_posts_table', 1),
(6, '2020_09_10_045352_create_galleries_table', 1),
(7, '2020_09_10_045442_create_category_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `thumbanil` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_published` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `thumbanil`, `title`, `slug`, `sub_title`, `details`, `post_type`, `is_published`, `created_at`, `updated_at`) VALUES
(1, 3, NULL, 'Et aut reiciendis rerum laudantium non itaque rem voluptate.', 'et-aut-reiciendis-rerum-laudantium-non-itaque-rem-voluptate', 'Qui impedit molestias modi animi nobis ad.', 'Non voluptas voluptas laborum ad voluptates est harum. Itaque quia officia repellendus. Qui pariatur voluptate et aut. Sapiente repudiandae maiores ut sit temporibus deserunt ullam.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(2, 4, NULL, 'Vel culpa et labore optio adipisci.', 'vel-culpa-et-labore-optio-adipisci', 'Dolore dolorem a quia molestias porro.', 'Optio quas possimus eos laborum earum. Aliquid blanditiis tenetur cum maxime delectus optio sapiente. Asperiores consequatur magni qui quasi placeat dolorum. Et aut aut fugiat repellat.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(3, 3, NULL, 'Accusantium officiis nemo ea earum sed debitis.', 'accusantium-officiis-nemo-ea-earum-sed-debitis', 'Aspernatur perspiciatis voluptatem commodi impedit aut.', 'Amet exercitationem quos quis. Fuga dolorem explicabo consequatur at rerum corrupti deleniti. Atque dolor esse rerum. Quo saepe adipisci quia nobis cumque voluptas.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(4, 4, NULL, 'A quis quis atque quia velit dolore aliquid et.', 'a-quis-quis-atque-quia-velit-dolore-aliquid-et', 'Eius consectetur adipisci ut autem mollitia nemo atque.', 'Voluptatibus alias accusantium id. Modi est et et maxime. Odit saepe eum corporis veritatis. Deleniti provident saepe perferendis autem distinctio aut quia.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(5, 4, NULL, 'Voluptatem possimus nobis quae eius est non.', 'voluptatem-possimus-nobis-quae-eius-est-non', 'Delectus id qui laborum sint officiis.', 'A sed eveniet animi aut non totam. Dolor hic porro quia. Officia qui qui atque quis rerum accusantium. Qui sed quasi aut est ut. Molestiae velit vel explicabo quam officiis maiores.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(6, 2, NULL, 'Voluptatem odio quia eius quia fuga exercitationem et.', 'voluptatem-odio-quia-eius-quia-fuga-exercitationem-et', 'Odio quia beatae porro repellendus magnam aut.', 'Ipsum adipisci recusandae et temporibus ab aut. Mollitia nesciunt exercitationem delectus dolores ut.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(7, 2, NULL, 'Sequi non enim impedit.', 'sequi-non-enim-impedit', 'Aspernatur iusto sequi quis commodi.', 'Quia aut voluptate est minima voluptatem rerum iusto eos. Laudantium velit tenetur fugit accusamus aut nesciunt et dolor. Consequatur vero et rerum laudantium consequatur. Odio ut libero consequatur quia libero.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(8, 5, NULL, 'Maxime culpa ut adipisci atque molestias ea.', 'maxime-culpa-ut-adipisci-atque-molestias-ea', 'Reiciendis beatae molestiae aut beatae et rerum itaque.', 'Labore nihil animi debitis eum explicabo repellendus. Fugit id magni est blanditiis odio. Temporibus quod adipisci molestiae reiciendis architecto quis.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(9, 5, NULL, 'Voluptatem corporis maiores et sunt.', 'voluptatem-corporis-maiores-et-sunt', 'Ab autem temporibus ea praesentium aut perferendis earum.', 'Illo minima aut consequuntur voluptatum laboriosam praesentium assumenda. Blanditiis laudantium tenetur accusamus doloribus corrupti porro. Sed cupiditate placeat enim modi. Eum esse est debitis similique. Corrupti placeat maxime illo sed et vel.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(10, 1, NULL, 'Hic tempora deserunt voluptates illum autem voluptas quia.', 'hic-tempora-deserunt-voluptates-illum-autem-voluptas-quia', 'Expedita tenetur magni quo aut omnis modi voluptas quae.', 'Fugit eum doloribus ut ut. Et nihil est sunt dolorum est. Consequatur asperiores et numquam odit laborum rem perferendis. Est inventore at aspernatur praesentium ad at error.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(11, 2, NULL, 'Ducimus quae placeat mollitia ullam beatae beatae.', 'ducimus-quae-placeat-mollitia-ullam-beatae-beatae', 'Vel doloribus beatae adipisci et eligendi iure voluptas.', 'Aut id suscipit voluptatem sed consequatur. Facere alias praesentium quasi et.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(12, 4, NULL, 'Molestiae est dolore eveniet repudiandae est assumenda repudiandae.', 'molestiae-est-dolore-eveniet-repudiandae-est-assumenda-repudiandae', 'Modi magni ad odit non.', 'Sint optio placeat sint sunt nisi aut quis. Explicabo non facilis optio qui fugit. Doloribus dolor error aperiam cupiditate consequuntur ratione nulla magnam.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(13, 5, NULL, 'Magni consequatur ipsam quo rerum.', 'magni-consequatur-ipsam-quo-rerum', 'Ratione totam nostrum molestiae non est enim neque.', 'Facere adipisci molestiae vitae rerum fugiat incidunt omnis. Numquam enim quam vitae voluptate est dolorum. Officia laboriosam dignissimos atque qui et. Eum et suscipit ea hic.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(14, 3, NULL, 'At minima nesciunt rerum ut perferendis perferendis.', 'at-minima-nesciunt-rerum-ut-perferendis-perferendis', 'Consequatur aspernatur maxime consequatur ipsum velit alias.', 'Nihil illo beatae aut aspernatur. Deleniti atque accusantium veniam accusamus asperiores aut illum. Ea ut officiis voluptatem laborum.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(15, 3, NULL, 'Iusto quos accusamus rem libero omnis expedita nihil.', 'iusto-quos-accusamus-rem-libero-omnis-expedita-nihil', 'Unde tenetur illo perferendis quos commodi et suscipit.', 'Nesciunt ex odit ducimus et et odio iure. Quis a cumque quaerat eveniet corporis blanditiis eos. Molestiae quos non qui sint.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(16, 2, NULL, 'Dolorum sint aliquam consequuntur ut est.', 'dolorum-sint-aliquam-consequuntur-ut-est', 'Aut ad eius ut ratione mollitia sit et.', 'Quia et voluptas ad tenetur. Repellat ad velit officia ea. Et eos voluptatibus voluptatibus assumenda voluptatibus quae adipisci saepe.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(17, 3, NULL, 'Voluptatem iure molestias saepe tenetur fugit debitis.', 'voluptatem-iure-molestias-saepe-tenetur-fugit-debitis', 'Sapiente eum voluptatem quo illum quisquam.', 'Consequatur repellendus doloribus aut minus. Itaque magnam rerum quo dolor ipsam quaerat. A autem aut ipsa quidem eos.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(18, 1, NULL, 'Aut ut et omnis.', 'aut-ut-et-omnis', 'Dolores libero et iure id consequatur illo quod.', 'Laboriosam perspiciatis accusantium doloremque vel atque. Reiciendis quisquam non molestiae asperiores dolorem minima. Est beatae iste adipisci aut consequuntur.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(19, 4, NULL, 'Veritatis doloremque reiciendis et fuga.', 'veritatis-doloremque-reiciendis-et-fuga', 'Eos illo explicabo quisquam reprehenderit odit.', 'Ut laudantium fugit rerum. Qui aut modi quibusdam est aperiam unde vero. Veritatis laboriosam corporis autem deserunt debitis. At voluptates reiciendis cumque in. Id alias voluptatem corrupti minus voluptates minus.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(20, 5, NULL, 'Vel veniam similique nihil ab dolorum molestiae quam.', 'vel-veniam-similique-nihil-ab-dolorum-molestiae-quam', 'Ex eum nostrum repellat rerum nulla dolorem non.', 'Incidunt necessitatibus facilis corporis accusantium quam natus sit qui. Quo est autem corporis amet. Sunt quia sunt non omnis dolores. Rerum sequi aliquid rem eum rem ut. Non voluptatem odio nesciunt.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(21, 1, NULL, 'Sed soluta voluptatum similique odio et.', 'sed-soluta-voluptatum-similique-odio-et', 'Id eos recusandae occaecati qui et soluta.', 'Sint quas et non atque. Accusamus omnis accusantium fuga nulla. Voluptates et maxime consequatur voluptas consequatur aut. Error nobis quod qui necessitatibus dolor eos inventore.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(22, 4, NULL, 'Non eligendi suscipit cum non quidem voluptas aliquam accusantium.', 'non-eligendi-suscipit-cum-non-quidem-voluptas-aliquam-accusantium', 'Hic dolor nihil est corporis ipsum.', 'Laudantium velit repellendus hic ex atque. Vel voluptatibus eius perspiciatis voluptas rem consequatur fugit. Voluptates veniam at iste odit mollitia. Architecto consequatur omnis et consequatur et.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(23, 5, NULL, 'Sint vel modi quia iusto.', 'sint-vel-modi-quia-iusto', 'Repudiandae dolorem aperiam quod et exercitationem.', 'Fugiat qui vel error sunt expedita. Eum occaecati nihil consequatur voluptas id molestias. Recusandae nam voluptatem vel minus eligendi qui perspiciatis. Pariatur dolor quibusdam voluptas qui amet dicta rem. Molestiae quia sapiente itaque tempore natus.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(24, 2, NULL, 'Et odit nihil vero hic.', 'et-odit-nihil-vero-hic', 'Nostrum sequi beatae rerum non accusantium sit.', 'Culpa quos ratione enim et veritatis ipsa rem velit. In accusantium repudiandae est laboriosam consequatur veritatis. Dolorum consectetur iste deserunt consequatur.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(25, 1, NULL, 'Animi ab optio ex eum.', 'animi-ab-optio-ex-eum', 'Voluptas enim praesentium cumque quis est deleniti dolore.', 'Eos animi quisquam odit pariatur beatae enim. Ipsa eveniet itaque eum debitis. Ipsum adipisci earum harum eos et voluptatem.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(26, 3, NULL, 'Et rem laboriosam enim distinctio.', 'et-rem-laboriosam-enim-distinctio', 'Autem id mollitia a et saepe totam vitae porro.', 'Qui labore magnam a voluptas. Neque exercitationem iste dolore cupiditate corrupti. Nesciunt doloribus perspiciatis sapiente pariatur aut vitae.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(27, 3, NULL, 'Blanditiis ut culpa dolores et et itaque.', 'blanditiis-ut-culpa-dolores-et-et-itaque', 'Rem fugiat et voluptate hic nesciunt dolorum possimus.', 'Deserunt assumenda voluptatem placeat quidem. Sed facilis eveniet consequatur corrupti doloremque sed ut. Officiis ea accusamus corrupti occaecati voluptas. Blanditiis dolorem velit dolor excepturi velit nesciunt sit et.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(28, 3, NULL, 'Laborum quibusdam neque consequatur a minus.', 'laborum-quibusdam-neque-consequatur-a-minus', 'Labore rerum dolorum enim omnis laboriosam.', 'Cupiditate ipsam autem dolorem temporibus aspernatur sit omnis. Praesentium quia velit dolorum minus enim quidem sunt. Est natus in consectetur quis consectetur quos non. Sed molestiae tenetur dolores.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(29, 4, NULL, 'Vel voluptate perspiciatis blanditiis qui.', 'vel-voluptate-perspiciatis-blanditiis-qui', 'Eos est molestias praesentium qui.', 'Sit deleniti fugiat nemo possimus eaque ut distinctio. Quia quos minus accusantium doloremque debitis. Ad accusamus ipsa ut ipsum aut ut quaerat.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(30, 2, NULL, 'Quis quia suscipit nihil qui.', 'quis-quia-suscipit-nihil-qui', 'Quod est voluptas necessitatibus nam deserunt.', 'Ut hic sapiente culpa itaque ut. Nihil est rerum voluptas et. Sint unde consequatur aut voluptatem sunt dignissimos. Voluptas qui est consequuntur qui et aut magni.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(31, 3, NULL, 'Consectetur nihil temporibus non est.', 'consectetur-nihil-temporibus-non-est', 'Doloremque neque molestiae vero at.', 'Facilis qui ratione pariatur facilis. Voluptatem fuga pariatur sit dolore. Provident voluptatibus rerum et.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(32, 1, NULL, 'Asperiores excepturi et porro alias natus.', 'asperiores-excepturi-et-porro-alias-natus', 'Occaecati architecto provident quaerat voluptatem natus provident.', 'Minus aut delectus non ea id placeat. Similique quia delectus quae. Vel sit porro quos totam alias vitae. Blanditiis fugit ipsa est officia aperiam et. Voluptas impedit enim numquam minus.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(33, 2, NULL, 'Tenetur nesciunt enim nobis incidunt aut.', 'tenetur-nesciunt-enim-nobis-incidunt-aut', 'Et sed nulla est.', 'Tempore autem consequatur ratione deleniti. Consequatur commodi quia non et non et. Rerum sequi sed debitis ipsam.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(34, 4, NULL, 'Et sit aspernatur reiciendis tempore soluta commodi.', 'et-sit-aspernatur-reiciendis-tempore-soluta-commodi', 'Provident cum deleniti praesentium dolorem.', 'Velit magni nobis aliquid aut et. In placeat quod est dolorem. Modi sit voluptatem iure est fugit. Ullam aspernatur placeat in dolore quo.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(35, 3, NULL, 'Quis aut iure alias dolores at.', 'quis-aut-iure-alias-dolores-at', 'Quo in neque natus voluptatem eius.', 'Fugit dignissimos earum aut animi. Ullam aliquid rem dolores placeat et doloribus voluptatem. Quia porro fugit animi eum aut rem facilis. Ipsa cum est itaque corporis quo unde officiis.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(36, 2, NULL, 'Et nam consectetur ullam libero magni.', 'et-nam-consectetur-ullam-libero-magni', 'Optio ipsa optio sit laboriosam.', 'Qui iure minus inventore dolorem qui. Aspernatur ducimus dignissimos placeat voluptates. Aut quaerat molestiae est veritatis omnis dolorem sunt. Enim fugit quas dolorem necessitatibus. Et aliquam at placeat fugit non voluptate.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(37, 1, NULL, 'Totam voluptatibus numquam sed aliquid eos enim.', 'totam-voluptatibus-numquam-sed-aliquid-eos-enim', 'Laboriosam vel numquam et perferendis autem eveniet.', 'Explicabo dolores qui doloribus qui qui atque. Sunt expedita harum molestiae perferendis quas. Dolore animi ut aliquam recusandae qui. Corrupti culpa maxime qui similique dolores reiciendis tenetur aut. Quia rerum eligendi rerum harum.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(38, 4, NULL, 'Consequuntur dolor autem et omnis et fugit.', 'consequuntur-dolor-autem-et-omnis-et-fugit', 'Qui est ad voluptas.', 'Autem aut sit iusto velit ut iure. Eum earum neque velit non qui nostrum.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(39, 5, NULL, 'Voluptatem ipsam consequatur tenetur eos aspernatur doloribus occaecati quis.', 'voluptatem-ipsam-consequatur-tenetur-eos-aspernatur-doloribus-occaecati-quis', 'Quaerat quis dolor libero placeat adipisci at.', 'Velit sit iusto voluptatibus perferendis voluptatem. Qui corrupti facilis aliquam recusandae fugiat veritatis accusantium. Eveniet odit laudantium quibusdam sit at. Optio qui quisquam aut qui maxime voluptatem sint consequuntur.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(40, 5, NULL, 'Dignissimos expedita eligendi nisi rem consequatur officiis.', 'dignissimos-expedita-eligendi-nisi-rem-consequatur-officiis', 'Dicta nesciunt commodi illum illo.', 'Voluptatibus modi soluta facilis. Eius laboriosam neque repellat doloribus temporibus. Eaque doloribus reiciendis aut temporibus eaque itaque.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(41, 2, NULL, 'Optio cupiditate ut quos dolorem corrupti et.', 'optio-cupiditate-ut-quos-dolorem-corrupti-et', 'Officia consequatur velit ut occaecati omnis ad quo.', 'Aut fugiat eos est aut et qui. Illum hic cupiditate tempora. Magnam rerum neque sint quia id. Dignissimos quia laudantium doloribus at doloremque delectus.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(42, 4, NULL, 'Sit architecto aut reprehenderit.', 'sit-architecto-aut-reprehenderit', 'Sunt non non culpa est autem libero.', 'Aut sed aut fugit rerum maiores. Molestiae ut adipisci reprehenderit quia est quos sunt fugit. Non explicabo sed labore corrupti dolorem iusto natus.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(43, 2, NULL, 'Labore labore voluptas tempora molestiae nemo non est.', 'labore-labore-voluptas-tempora-molestiae-nemo-non-est', 'Laboriosam praesentium reiciendis rem praesentium dolor qui cum.', 'Est qui nesciunt qui dolore. Dolores aut numquam commodi modi. Unde autem mollitia dignissimos et quos non pariatur.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(44, 4, NULL, 'Explicabo quos consequatur quae excepturi eum earum aliquid.', 'explicabo-quos-consequatur-quae-excepturi-eum-earum-aliquid', 'Reprehenderit aperiam necessitatibus veniam vel et quae voluptatem odio.', 'Magni commodi velit autem quasi aperiam accusamus et quaerat. Laborum quas perferendis corrupti nam voluptatem saepe deserunt.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(45, 4, NULL, 'Debitis provident id soluta voluptates iste.', 'debitis-provident-id-soluta-voluptates-iste', 'Neque eos quo possimus consectetur ipsa iure fuga.', 'Molestiae doloribus labore molestiae officiis enim quia est. Voluptas ex minima perspiciatis non voluptatem quae. At quasi omnis totam nemo. Ad aut corporis voluptatem est eaque animi neque ut. Numquam officiis eligendi maxime labore.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(46, 1, NULL, 'Perferendis deserunt nostrum voluptatem totam.', 'perferendis-deserunt-nostrum-voluptatem-totam', 'Atque eum quis distinctio saepe sint reiciendis aliquam.', 'Voluptas saepe fuga perferendis qui sit totam. Voluptatem quis consequatur aut minima quia sapiente. Quia nihil iste voluptatem vero quam hic.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(47, 3, NULL, 'Eos et est repudiandae maiores repudiandae.', 'eos-et-est-repudiandae-maiores-repudiandae', 'Quis expedita quia est perferendis quia ipsa.', 'Sit deleniti quas reiciendis quo. Placeat atque iure rerum eos. Esse rem pariatur sed mollitia labore qui ipsam. Id nulla quos reprehenderit temporibus alias inventore. Hic consectetur sit excepturi ut et consequatur et iusto.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(48, 1, NULL, 'Quidem iste incidunt assumenda quod amet laboriosam voluptas voluptatem.', 'quidem-iste-incidunt-assumenda-quod-amet-laboriosam-voluptas-voluptatem', 'Aut ab aut ratione commodi in quis.', 'Possimus expedita laboriosam earum ut inventore sunt velit expedita. Dolorem ratione et qui. Soluta tempore fugiat quod.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(49, 5, NULL, 'Magni enim omnis eveniet pariatur officia eum ut.', 'magni-enim-omnis-eveniet-pariatur-officia-eum-ut', 'Dolorum sed quam placeat.', 'Iusto velit ut qui fugit aliquam omnis ut. Quam nostrum accusantium explicabo voluptatum deleniti et qui. Quis dolore quasi omnis autem incidunt qui qui. Architecto quos natus pariatur qui.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(50, 3, NULL, 'Nulla fugiat fuga repellat cumque.', 'nulla-fugiat-fuga-repellat-cumque', 'Dolore ratione esse perferendis ut aut.', 'Cumque consequatur et iusto. Dicta aliquam perspiciatis qui provident suscipit. Eum cum neque consectetur. Qui aut itaque commodi voluptas officiis nisi.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(51, 5, NULL, 'Aut non quos omnis sint voluptatem.', 'aut-non-quos-omnis-sint-voluptatem', 'Sed quia voluptatibus ullam.', 'Voluptatem magni eaque quis non ullam. Aperiam ea dicta itaque sed nemo qui molestiae repellat. Deleniti vel ipsum quidem reprehenderit impedit nam assumenda.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(52, 3, NULL, 'Ut consequatur eum aut et ratione reprehenderit officiis nihil.', 'ut-consequatur-eum-aut-et-ratione-reprehenderit-officiis-nihil', 'Minus veniam ratione voluptatum laboriosam.', 'Quisquam saepe modi veritatis cupiditate id. Necessitatibus sit fuga vel pariatur non. Aut ut laboriosam dolor nihil quas accusamus minima sequi. Saepe illo assumenda cum maxime quibusdam neque ea.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(53, 4, NULL, 'Magnam et iusto pariatur aut magnam voluptatem unde.', 'magnam-et-iusto-pariatur-aut-magnam-voluptatem-unde', 'Molestiae perspiciatis rerum qui aliquid repellat ut aut.', 'Officia a eum consequatur sed earum. Esse quia voluptatem totam ex autem et non. Explicabo soluta ipsam omnis expedita recusandae. Consectetur iste praesentium totam nihil aperiam necessitatibus.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(54, 5, NULL, 'Consequatur quisquam et adipisci ut labore tempora.', 'consequatur-quisquam-et-adipisci-ut-labore-tempora', 'Quos odit ab autem officiis est.', 'Consequatur explicabo a enim. Vero vel perspiciatis qui repellat quas.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(55, 5, NULL, 'Ad ratione rerum quasi quasi.', 'ad-ratione-rerum-quasi-quasi', 'Incidunt maxime enim atque.', 'Eaque inventore qui et quidem. Maiores fugiat beatae commodi omnis commodi distinctio. Fugiat quod reiciendis similique voluptas ut aut delectus sed. Quis inventore vel aut asperiores impedit.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(56, 3, NULL, 'Molestiae fuga sit cumque inventore.', 'molestiae-fuga-sit-cumque-inventore', 'Amet rerum accusamus ea velit voluptate quia tenetur.', 'Qui ut ut vel iste eius repudiandae. Eius provident quia voluptatem. Nesciunt quo ut distinctio veritatis et.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(57, 1, NULL, 'Doloremque quas saepe dignissimos delectus possimus.', 'doloremque-quas-saepe-dignissimos-delectus-possimus', 'Eligendi totam dolores odio alias rerum molestias.', 'Ut animi deserunt maxime. Nobis molestiae qui nostrum perspiciatis necessitatibus voluptatem. Ex repudiandae ipsam commodi qui totam.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(58, 3, NULL, 'Consectetur consequatur ut ipsam expedita quis quam beatae illo.', 'consectetur-consequatur-ut-ipsam-expedita-quis-quam-beatae-illo', 'Qui consequatur animi iste quas nam impedit.', 'Pariatur repellat et exercitationem eaque facere consequatur adipisci. Modi placeat vel et earum deleniti voluptas. Quibusdam aut accusamus ut error earum aspernatur maiores.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(59, 2, NULL, 'Dolorem reiciendis accusantium repudiandae dolor.', 'dolorem-reiciendis-accusantium-repudiandae-dolor', 'Possimus corrupti veritatis et explicabo cupiditate.', 'Libero nisi quas fugiat tenetur qui. Soluta perferendis voluptatum voluptas officiis enim ut. Ipsam quaerat tempora soluta explicabo est a.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(60, 1, NULL, 'Optio eos non dolore ut corporis repudiandae.', 'optio-eos-non-dolore-ut-corporis-repudiandae', 'Repellat ratione cum tenetur quia non.', 'Est quisquam voluptates hic unde tempore ea veniam ipsa. Illo sapiente sed enim distinctio. Quia iure nostrum accusantium et qui.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(61, 4, NULL, 'Voluptatibus omnis distinctio eveniet mollitia.', 'voluptatibus-omnis-distinctio-eveniet-mollitia', 'Tempora sunt voluptas officia suscipit.', 'Accusamus similique quos dolorem optio. Omnis nihil qui itaque et impedit modi totam similique. Totam error quia excepturi impedit ut.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(62, 2, NULL, 'Qui et rerum autem omnis veniam et.', 'qui-et-rerum-autem-omnis-veniam-et', 'Molestias sunt aperiam voluptatem dolorem.', 'Mollitia et nihil architecto aspernatur perspiciatis. Soluta nemo iure mollitia unde libero voluptatem laboriosam. Quia vel tenetur non voluptatem illum quas. Rerum rerum ullam at non labore maiores maxime.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(63, 2, NULL, 'Voluptas officiis dignissimos suscipit provident accusamus tempore.', 'voluptas-officiis-dignissimos-suscipit-provident-accusamus-tempore', 'Cumque non assumenda officiis natus enim aut.', 'Est quia error est labore necessitatibus et. Est illo explicabo dolor sit vitae asperiores sunt optio. Nihil architecto cumque expedita illo nulla dolorem. Incidunt omnis voluptatem nihil harum repellat.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(64, 2, NULL, 'Quia non sunt deleniti.', 'quia-non-sunt-deleniti', 'Doloribus ut cupiditate a rerum doloribus et exercitationem eaque.', 'Et nihil magnam cupiditate tenetur vero. Dolor placeat modi nam recusandae. Asperiores fuga adipisci error alias.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(65, 1, NULL, 'Quae voluptatem quis placeat quaerat.', 'quae-voluptatem-quis-placeat-quaerat', 'Quidem dolor iusto ipsa quaerat aut voluptatem.', 'Temporibus ullam tenetur qui nostrum quia blanditiis. Vitae non voluptas adipisci quisquam quam. Rerum placeat tempore asperiores nisi explicabo eligendi qui. Amet nam culpa voluptates occaecati incidunt veritatis enim.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(66, 4, NULL, 'Fuga deleniti praesentium aut.', 'fuga-deleniti-praesentium-aut', 'Repellat et voluptatem dolores porro ex non aut.', 'Necessitatibus illum facere itaque beatae saepe qui. Voluptatibus eos temporibus aut dolorem minima quisquam impedit. Illo voluptates doloremque asperiores repellendus.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(67, 2, NULL, 'Sit qui cupiditate minus.', 'sit-qui-cupiditate-minus', 'A quidem debitis ab laboriosam similique eum in.', 'Non cum et explicabo inventore deserunt dolorum. Ea dolorem quod sit distinctio voluptatibus rerum. Est voluptate nobis deserunt.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(68, 3, NULL, 'Eos modi voluptatem et in.', 'eos-modi-voluptatem-et-in', 'Nisi cupiditate ducimus est ipsum tempora nobis.', 'Fugiat et magni dolorum eum corrupti asperiores. Perferendis esse repudiandae cum esse et recusandae. Pariatur eveniet in est et. Non rerum vitae soluta neque enim modi.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(69, 5, NULL, 'Qui quam molestias culpa error accusantium similique fugit.', 'qui-quam-molestias-culpa-error-accusantium-similique-fugit', 'Quas sit ullam aliquid vitae eos commodi.', 'Reiciendis necessitatibus dolorem labore magni. Explicabo quo beatae eos nemo sapiente ut enim. Atque et voluptatem accusantium ipsam.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(70, 4, NULL, 'Sed ratione fugiat saepe.', 'sed-ratione-fugiat-saepe', 'Tenetur exercitationem veniam nostrum laudantium sequi id et dolor.', 'Commodi aut autem eius in in vel. Sint distinctio mollitia vitae tenetur aut consectetur quo. Magnam vel nemo repudiandae ea quas.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(71, 4, NULL, 'Nam vel modi in quia odio eos libero.', 'nam-vel-modi-in-quia-odio-eos-libero', 'Molestiae velit ut quod.', 'Aut in fuga ea vel ipsa. Eligendi accusamus placeat non. Unde officiis libero aut fuga omnis doloribus fugit. Sapiente earum quibusdam nam molestiae ut eum tenetur.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(72, 4, NULL, 'Tempore asperiores provident rerum exercitationem nihil.', 'tempore-asperiores-provident-rerum-exercitationem-nihil', 'Vel quo in vero.', 'Dicta omnis temporibus ipsam qui facere ullam. Pariatur cupiditate earum aut consequuntur perferendis non nisi. Dolorem praesentium corrupti nisi atque non ad recusandae. Veniam qui qui veritatis praesentium et ad. A nisi fugiat dolor dolores.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(73, 2, NULL, 'Officiis provident doloribus ex quia totam et.', 'officiis-provident-doloribus-ex-quia-totam-et', 'Similique molestias hic et laudantium eveniet magni enim ab.', 'Eius explicabo laborum perferendis fuga repellendus ipsam deserunt. Aliquam dignissimos amet occaecati dolor. Quam sit et aut tenetur autem dolor. Voluptas et dolor pariatur voluptatem ea.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(74, 5, NULL, 'Quae dolore quod distinctio corporis veritatis rerum.', 'quae-dolore-quod-distinctio-corporis-veritatis-rerum', 'Minima eligendi repudiandae provident et.', 'Omnis velit cum consequatur quia. Culpa eveniet repellendus ea a fuga nostrum. Corrupti mollitia maiores ut optio corporis ea eos temporibus. Tempore porro nam dolorem dignissimos eveniet ducimus. Dolorem quidem voluptate veritatis eos eum adipisci atque.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(75, 3, NULL, 'Voluptate hic minus mollitia sunt eum sed et dolores.', 'voluptate-hic-minus-mollitia-sunt-eum-sed-et-dolores', 'Ad velit dolores ut.', 'Libero est voluptas inventore enim sed aut quo. Optio voluptatum enim possimus ea. Hic molestiae similique voluptatum molestiae hic. Quia cumque consectetur vero et id voluptatem. Quia dolore enim facilis.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(76, 3, NULL, 'Quisquam voluptatem consequatur voluptatum veritatis impedit velit sit.', 'quisquam-voluptatem-consequatur-voluptatum-veritatis-impedit-velit-sit', 'Quisquam quisquam nulla sit similique eligendi et nihil incidunt.', 'Officia impedit quod enim temporibus commodi. Quo cupiditate laudantium et placeat. Eum aperiam et sit in esse fugit occaecati.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(77, 1, NULL, 'Amet nihil commodi et nostrum velit.', 'amet-nihil-commodi-et-nostrum-velit', 'Qui necessitatibus accusamus est nostrum et eum.', 'Ipsum quam eos est accusamus in atque enim. Tenetur ipsa repellendus neque sunt non. Odit laborum perspiciatis non voluptas necessitatibus. Eius dolorum minima veritatis inventore corrupti voluptas.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(78, 1, NULL, 'Rerum repudiandae cumque corporis quia est omnis aperiam.', 'rerum-repudiandae-cumque-corporis-quia-est-omnis-aperiam', 'Possimus nihil qui minus quidem.', 'Modi voluptas quas debitis suscipit nam explicabo. Reprehenderit doloribus quo beatae qui libero earum inventore. Deserunt asperiores fugit dignissimos omnis quisquam mollitia.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(79, 2, NULL, 'Modi sed aut est ratione similique sequi sit.', 'modi-sed-aut-est-ratione-similique-sequi-sit', 'Quibusdam debitis quis atque reiciendis.', 'Nemo hic sint iste ipsum maiores. Omnis sed deleniti officiis quisquam. Excepturi in dolorum in aut. Et dolorum nobis repudiandae adipisci tenetur eius aspernatur.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(80, 2, NULL, 'Quibusdam ut qui voluptatem perspiciatis mollitia et aspernatur.', 'quibusdam-ut-qui-voluptatem-perspiciatis-mollitia-et-aspernatur', 'Quia voluptatem debitis sit.', 'Quisquam nihil quis optio. Voluptates id iusto ducimus dolore nesciunt adipisci at. Magnam ea aperiam aliquid itaque.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(81, 4, NULL, 'At dolorum dolor nostrum et exercitationem.', 'at-dolorum-dolor-nostrum-et-exercitationem', 'Voluptatem nihil voluptatum sed.', 'Accusantium praesentium assumenda voluptatibus architecto incidunt deleniti molestias. Qui nesciunt sit reprehenderit voluptatem tenetur omnis. Accusamus repellendus qui voluptates distinctio aut enim. Est vel aut ut consequatur velit.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(82, 3, NULL, 'Ea autem possimus repellat sunt.', 'ea-autem-possimus-repellat-sunt', 'Delectus non culpa eius enim id et quis.', 'Doloribus et atque veniam ex. Aut est et voluptatem eveniet modi sed. Harum perferendis corporis cum consequatur.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(83, 5, NULL, 'Nulla repellendus eveniet rerum quia error officia.', 'nulla-repellendus-eveniet-rerum-quia-error-officia', 'Sit voluptas esse neque nulla maxime consequatur omnis.', 'Qui suscipit enim vero id quaerat. Eos minus soluta aut nulla repellat rerum. Quo quos modi quo ea minima ut illum. Vero quidem impedit odio vel ea sit libero voluptatem.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(84, 2, NULL, 'Et pariatur eius laborum porro velit.', 'et-pariatur-eius-laborum-porro-velit', 'Provident nulla aliquam vitae voluptate numquam cupiditate similique.', 'Error nemo rerum corrupti dolor. Ad fugit voluptatum veritatis. Possimus qui temporibus molestias consequatur debitis voluptatem omnis accusamus. Aspernatur velit tempora consectetur corporis laboriosam autem ut fugiat.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(85, 1, NULL, 'Excepturi nulla nihil ipsum nihil consectetur.', 'excepturi-nulla-nihil-ipsum-nihil-consectetur', 'Dolores maiores nobis recusandae et.', 'Qui quae earum perferendis ducimus. Ab neque ipsum dolor eum labore sint. Iure temporibus sunt assumenda ipsum a. Aut consequatur repellat a. Aut ea omnis alias molestiae quod suscipit voluptatem a.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(86, 4, NULL, 'Architecto omnis enim natus dolorem.', 'architecto-omnis-enim-natus-dolorem', 'Rerum aut suscipit alias necessitatibus deserunt autem expedita.', 'Dicta nemo et et est aperiam molestiae nisi. Sunt cumque iusto labore qui excepturi magni tempora. Similique officiis enim quo officiis voluptas deserunt qui.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(87, 5, NULL, 'Voluptas doloribus quia deleniti cupiditate voluptates consequatur.', 'voluptas-doloribus-quia-deleniti-cupiditate-voluptates-consequatur', 'Molestias fugiat ut in.', 'Autem occaecati eos laudantium doloribus accusamus aut. Magnam est veniam deleniti unde magnam. Modi qui dolorem sit tempora sapiente.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(88, 3, NULL, 'Est qui et rerum molestias.', 'est-qui-et-rerum-molestias', 'Ratione fugiat labore aut in voluptatem labore aliquid.', 'Sit est doloremque sed voluptatem adipisci consequuntur est. Asperiores est qui atque laborum est. Facere et necessitatibus qui et et voluptatem repellat.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(89, 3, NULL, 'Repellendus ab quo pariatur voluptate sunt iste nihil.', 'repellendus-ab-quo-pariatur-voluptate-sunt-iste-nihil', 'Aut voluptatem et laboriosam unde.', 'Voluptatem non aut fuga rerum. Neque omnis hic dicta aut. Natus vel dolor illum aut illo distinctio. Blanditiis consectetur repellendus earum quia est autem.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(90, 3, NULL, 'Aperiam quia harum ratione fugit facilis.', 'aperiam-quia-harum-ratione-fugit-facilis', 'Hic quidem veniam animi et quo velit amet.', 'Sint accusamus voluptas corporis. Quae aspernatur labore et et magni. Illum laborum quia est cumque. Temporibus et ut at eligendi est. Odit distinctio porro magnam dolor.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(91, 4, NULL, 'Numquam et odio maxime rerum.', 'numquam-et-odio-maxime-rerum', 'Cum possimus sit aut consectetur praesentium.', 'At nobis voluptas blanditiis a quisquam rerum enim. Enim qui dolores dolorem veniam soluta. Rem dolores enim eius harum sunt. Saepe accusamus totam sunt qui.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(92, 2, NULL, 'Omnis illum facere libero cum beatae quibusdam.', 'omnis-illum-facere-libero-cum-beatae-quibusdam', 'Harum inventore adipisci fugiat harum minima deserunt.', 'Facere non aut itaque maxime. Distinctio facilis molestiae similique eligendi nemo. Aut quis facilis accusamus sunt.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(93, 3, NULL, 'Doloribus doloremque rerum saepe earum nulla autem.', 'doloribus-doloremque-rerum-saepe-earum-nulla-autem', 'Delectus repellendus dolore culpa temporibus.', 'Qui quo sequi et repellat. Suscipit excepturi consequatur ut placeat aspernatur in. Ipsum fuga atque qui odio unde est. Cum aut veritatis aliquam in consequatur.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(94, 3, NULL, 'Provident qui qui alias at impedit.', 'provident-qui-qui-alias-at-impedit', 'Non voluptate beatae exercitationem earum.', 'Amet a autem aut quae a libero. Similique nostrum est veniam itaque. Consequatur magnam maiores architecto dolore.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(95, 4, NULL, 'Quia voluptas ut suscipit.', 'quia-voluptas-ut-suscipit', 'Aut autem quibusdam culpa eos et iusto.', 'Amet eum ab voluptatum voluptatibus debitis. Aspernatur magni earum suscipit. Sit libero earum provident soluta. Aut dolore et quidem numquam autem facilis porro dolor.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(96, 2, NULL, 'Quidem error debitis sed veniam non omnis.', 'quidem-error-debitis-sed-veniam-non-omnis', 'Officia facere ut inventore excepturi possimus.', 'Inventore quidem mollitia error qui. Ipsam magni exercitationem hic aut corporis explicabo. Sint voluptas ad est non. Exercitationem sed nulla eveniet incidunt architecto aliquam unde aut.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(97, 5, NULL, 'Quia et praesentium ipsa cumque unde dolor unde.', 'quia-et-praesentium-ipsa-cumque-unde-dolor-unde', 'Illo doloribus nihil facilis sapiente ea ut aut.', 'Unde ipsum odit sit et vel aut. Nihil voluptas qui et voluptas velit quod laborum. Commodi ea iusto expedita qui impedit libero libero animi. Rerum perferendis quis saepe.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(98, 2, NULL, 'Quas voluptatem error odio deleniti distinctio porro dicta.', 'quas-voluptatem-error-odio-deleniti-distinctio-porro-dicta', 'Qui quas iusto qui.', 'Ut labore beatae nesciunt hic. Voluptatum repudiandae ex et. Et commodi sit molestias corrupti deleniti. Reiciendis velit fugit qui rem excepturi ut quos molestiae.', 'post', '0', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(99, 2, NULL, 'Quisquam aliquam iure consequatur qui id sed.', 'quisquam-aliquam-iure-consequatur-qui-id-sed', 'Illo et et nihil molestiae ratione atque.', 'Nihil vero beatae sint ipsam minus odio magni. Enim eius et molestias quod debitis. Ea unde beatae eius.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(100, 3, NULL, 'Et in voluptatum laborum illo voluptatem magni.', 'et-in-voluptatum-laborum-illo-voluptatem-magni', 'Quo eaque tenetur veritatis optio distinctio itaque.', 'Dignissimos aspernatur praesentium totam voluptatem. Voluptatem ut ut ea odit ut. Qui modi quae omnis quia. Dolor est dolores et minus quam.', 'post', '1', '2020-09-10 01:11:10', '2020-09-10 01:11:10'),
(102, 3, 'test', 'test title edit', 'test-title-edit', 'test subtitle', '<p>test</p>', 'post', '1', '2020-09-11 04:58:51', '2020-09-11 05:13:51'),
(105, 3, 'https://www.xhtmljunkies.com/wp-content/uploads/2016/09/best-coding-practice-laravel-xhtmljunkies.jpg', 'About', 'about', 'About Us', '<p>I am a Software Developer.</p>', 'page', '1', '2020-09-13 00:43:34', '2020-09-13 00:45:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Francisca Abbott', 'baumbach.lue@example.org', '2020-09-10 01:09:12', '$2y$10$IsLqwz6qkdo4gMkPWq1t.up1pTeQkLOjW2gbUfczXzagQJ0W/JFom', 'i4FX6BliuQ', '2020-09-10 01:09:12', '2020-09-10 01:09:12'),
(2, 'Arvilla Mann', 'ddonnelly@example.net', '2020-09-10 01:09:12', '$2y$10$q4T6IQ3h1vvxZoVrSPekm.5ejdJdeSm1iewIyHjW168oXdVLAlFye', 'LAppIxi261', '2020-09-10 01:09:12', '2020-09-10 01:09:12'),
(3, 'Mrs. Felicia Walker', 'zbartell@example.com', '2020-09-10 01:09:12', '$2y$10$avdzA7D3l37./T0gHYYxtuKXYTII/ZZ2iq0vrEY4b39BJPmhhX3dO', 'oLg5Nd9cDMSpkw4y1qxiBjN7tbRgZCxpIe4VT1UyhGRedTvz3Udm00FnwRQt', '2020-09-10 01:09:12', '2020-09-10 01:09:12'),
(4, 'Prof. Webster VonRueden', 'lorenza09@example.org', '2020-09-10 01:09:12', '$2y$10$AXt2FkvJVXbaXThVx2dmMOcMMItBAVyTplI4Kwv3GZEzG7/4c5GF2', '0alwutAv67', '2020-09-10 01:09:13', '2020-09-10 01:09:13'),
(5, 'Zoila Boyle', 'olson.sidney@example.net', '2020-09-10 01:09:12', '$2y$10$Sr05H7ZPOE12dq6VcQZgWObnuQY9rIacjqKLKd5UvsShDKJ2XQ352', 'qYyTDx9j0g', '2020-09-10 01:09:13', '2020-09-10 01:09:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_user_id_foreign` (`user_id`);

--
-- Indexes for table `category_posts`
--
ALTER TABLE `category_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_posts_category_id_foreign` (`category_id`),
  ADD KEY `category_posts_post_id_foreign` (`post_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_title_unique` (`title`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category_posts`
--
ALTER TABLE `category_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_posts`
--
ALTER TABLE `category_posts`
  ADD CONSTRAINT `category_posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
