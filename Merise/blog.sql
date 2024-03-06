-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 06, 2024 at 04:36 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Billevesée', 'billevesee', '2024-03-05 13:00:00', '2024-03-05 13:00:00'),
(2, 'Coquecigrue', 'coquecigrue', '2024-03-05 13:00:00', '2024-03-05 13:00:00'),
(3, 'Colifichet', 'colifichet', '2024-03-05 13:00:00', '2024-03-05 13:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Id quis neque sed id officia qui.', 1, 12, '2023-05-22 11:42:47', '2023-05-22 11:42:47'),
(2, 'Alias voluptas fuga est voluptatem deleniti voluptas.', 1, 5, '2023-11-06 04:49:53', '2023-11-06 04:49:53'),
(3, 'Est quia sed voluptates enim eligendi nulla dicta.', 1, 1, '2023-08-20 11:40:50', '2023-08-20 11:40:50'),
(4, 'A eaque provident consectetur aspernatur magni sed dolore.', 1, 11, '2023-10-18 12:50:16', '2023-10-18 12:50:16'),
(5, 'Et facere aut et est.', 1, 8, '2023-09-05 03:25:14', '2023-09-05 03:25:14'),
(6, 'Deserunt velit explicabo est nulla eveniet dolores.', 2, 13, '2023-10-01 19:50:20', '2023-10-01 19:50:20'),
(7, 'Reiciendis illo delectus veritatis reiciendis quo illum.', 2, 16, '2023-07-23 01:52:38', '2023-07-23 01:52:38'),
(8, 'Ut doloremque modi repellendus ut.', 2, 5, '2023-06-01 03:44:49', '2023-06-01 03:44:49'),
(9, 'Illum et similique in laboriosam neque ratione dolor qui.', 2, 14, '2023-05-17 16:50:21', '2023-05-17 16:50:21'),
(10, 'Omnis minus cumque saepe totam exercitationem.', 2, 14, '2024-02-24 02:56:35', '2024-02-24 02:56:35'),
(11, 'Et eligendi amet ex et ratione autem quos.', 3, 13, '2024-01-07 08:40:09', '2024-01-07 08:40:09'),
(12, 'Similique odit suscipit facere.', 3, 5, '2023-08-18 23:50:14', '2023-08-18 23:50:14'),
(13, 'Minima ut voluptatem consequatur consectetur et rerum ut voluptas.', 3, 5, '2023-11-10 00:50:19', '2023-11-10 00:50:19'),
(14, 'Atque eos quibusdam iusto qui.', 3, 12, '2023-12-24 00:28:12', '2023-12-24 00:28:12'),
(15, 'Voluptates modi dignissimos qui harum qui inventore enim.', 3, 10, '2023-12-30 08:45:24', '2023-12-30 08:45:24'),
(16, 'Enim cumque molestiae quidem assumenda labore aut.', 4, 17, '2023-07-19 14:18:52', '2023-07-19 14:18:52'),
(17, 'Ullam consequuntur consectetur sed quia.', 4, 3, '2024-01-24 03:13:51', '2024-01-24 03:13:51'),
(18, 'Dolores culpa non totam voluptatum.', 4, 15, '2023-06-24 01:59:37', '2023-06-24 01:59:37'),
(19, 'Delectus ut et aut quis.', 4, 13, '2023-11-30 07:53:08', '2023-11-30 07:53:08'),
(20, 'Doloremque velit nulla debitis minus est modi commodi.', 4, 20, '2023-08-22 04:43:20', '2023-08-22 04:43:20'),
(21, 'Tenetur consequatur voluptatum mollitia quia voluptas dolores.', 5, 19, '2024-01-07 04:35:59', '2024-01-07 04:35:59'),
(22, 'Placeat quasi quam suscipit itaque.', 5, 19, '2024-01-20 14:46:47', '2024-01-20 14:46:47'),
(23, 'Incidunt placeat distinctio laudantium sint explicabo vel qui.', 5, 6, '2023-12-28 21:53:39', '2023-12-28 21:53:39'),
(24, 'Velit cupiditate sit maiores quia.', 5, 15, '2023-10-28 17:45:37', '2023-10-28 17:45:37'),
(25, 'Omnis sapiente velit rerum sit.', 5, 3, '2023-09-04 22:34:06', '2023-09-04 22:34:06'),
(26, 'Ipsam a qui iure et dolorem neque.', 6, 2, '2023-07-03 07:39:07', '2023-07-03 07:39:07'),
(27, 'Ut omnis eligendi voluptas dolorum officiis autem.', 6, 6, '2023-03-16 07:13:25', '2023-03-16 07:13:25'),
(28, 'Aut sit occaecati ut sit vero consequatur.', 6, 19, '2024-01-13 10:45:19', '2024-01-13 10:45:19'),
(29, 'Exercitationem sunt ea a ut molestiae.', 6, 2, '2023-06-03 04:43:21', '2023-06-03 04:43:21'),
(30, 'Minus iure omnis aut doloremque et.', 6, 11, '2024-03-05 10:32:30', '2024-03-05 10:32:30'),
(31, 'Cupiditate eum dicta rerum quasi.', 7, 11, '2024-02-29 06:46:17', '2024-02-29 06:46:17'),
(32, 'Optio voluptates numquam debitis iste corrupti tempora praesentium.', 7, 4, '2023-06-15 16:47:57', '2023-06-15 16:47:57'),
(33, 'Beatae maxime in aut suscipit sit pariatur perspiciatis sit.', 7, 5, '2023-08-22 18:11:29', '2023-08-22 18:11:29'),
(34, 'Consequatur adipisci alias soluta iure.', 7, 1, '2023-04-29 10:00:33', '2023-04-29 10:00:33'),
(35, 'Et dignissimos aut cum architecto laborum quod.', 7, 6, '2023-06-18 07:14:52', '2023-06-18 07:14:52'),
(36, 'Autem quo itaque quibusdam alias aut exercitationem sint.', 8, 11, '2023-09-09 19:46:31', '2023-09-09 19:46:31'),
(37, 'Qui saepe ipsa impedit similique voluptas qui temporibus.', 8, 5, '2024-01-04 05:10:27', '2024-01-04 05:10:27'),
(38, 'Soluta veritatis quaerat quibusdam suscipit.', 8, 20, '2023-03-30 15:36:03', '2023-03-30 15:36:03'),
(39, 'Quod consequatur minus possimus.', 8, 12, '2023-03-20 22:18:48', '2023-03-20 22:18:48'),
(40, 'Eum reiciendis rem quo hic accusamus ex sit.', 8, 18, '2023-04-01 08:44:18', '2023-04-01 08:44:18'),
(41, 'Consequatur minima incidunt molestiae est.', 9, 5, '2023-05-12 15:13:44', '2023-05-12 15:13:44'),
(42, 'Quod quisquam amet voluptas expedita voluptate debitis consequatur.', 9, 2, '2023-11-09 16:50:18', '2023-11-09 16:50:18'),
(43, 'Omnis dignissimos ullam nulla error.', 9, 6, '2023-10-20 06:31:52', '2023-10-20 06:31:52'),
(44, 'Ipsam quis quia autem et ut.', 9, 11, '2024-02-25 06:26:26', '2024-02-25 06:26:26'),
(45, 'Dolores quibusdam ipsum ut.', 9, 19, '2023-10-22 10:27:20', '2023-10-22 10:27:20'),
(46, 'Mollitia autem et ex sit asperiores.', 10, 7, '2023-06-24 18:06:00', '2023-06-24 18:06:00'),
(47, 'Est corporis qui est et.', 10, 14, '2023-05-06 05:40:52', '2023-05-06 05:40:52'),
(48, 'Impedit et unde ab quo eum.', 10, 15, '2023-03-11 07:09:11', '2023-03-11 07:09:11'),
(49, 'Perspiciatis commodi quos dicta ab omnis aut facilis.', 10, 10, '2024-02-29 04:20:27', '2024-02-29 04:20:27'),
(50, 'Quidem odio sed pariatur delectus.', 10, 17, '2023-06-16 20:26:03', '2023-06-16 20:26:03'),
(51, 'Cum possimus sit eos.', 11, 13, '2023-10-21 16:54:12', '2023-10-21 16:54:12'),
(52, 'Autem deserunt sit culpa.', 11, 10, '2023-07-27 12:17:32', '2023-07-27 12:17:32'),
(53, 'Eum quibusdam sequi aut aut.', 11, 18, '2023-12-18 02:41:28', '2023-12-18 02:41:28'),
(54, 'Quae magnam ut repellat esse perspiciatis corporis illo eum.', 11, 11, '2023-12-28 20:43:23', '2023-12-28 20:43:23'),
(55, 'Minima atque qui blanditiis.', 11, 5, '2023-12-05 20:40:22', '2023-12-05 20:40:22'),
(56, 'Consequatur modi possimus maiores vitae nobis quas eos.', 12, 2, '2023-08-28 17:19:17', '2023-08-28 17:19:17'),
(57, 'Eum blanditiis dolore unde molestiae.', 12, 14, '2023-09-18 03:46:49', '2023-09-18 03:46:49'),
(58, 'Maiores ex fuga vel consequatur voluptatem.', 12, 20, '2023-04-12 17:24:29', '2023-04-12 17:24:29'),
(59, 'Reiciendis temporibus est nemo natus aut mollitia vitae.', 12, 18, '2023-12-01 15:21:14', '2023-12-01 15:21:14'),
(60, 'Nihil omnis sed pariatur quis optio mollitia omnis.', 12, 13, '2023-12-05 16:00:52', '2023-12-05 16:00:52'),
(61, 'Et maxime sit nam quia cupiditate et.', 13, 11, '2023-03-23 12:19:36', '2023-03-23 12:19:36'),
(62, 'Doloribus quia commodi nulla cumque.', 13, 3, '2023-07-03 10:15:04', '2023-07-03 10:15:04'),
(63, 'Consequatur a minus voluptatibus sint ut cumque.', 13, 7, '2023-07-19 18:59:34', '2023-07-19 18:59:34'),
(64, 'Voluptatibus ipsa itaque quo animi.', 13, 12, '2024-01-19 08:52:28', '2024-01-19 08:52:28'),
(65, 'Dolore architecto cum consequuntur in dolorem at.', 13, 17, '2023-05-14 11:31:41', '2023-05-14 11:31:41'),
(66, 'Autem sint odit natus voluptas libero est non tenetur.', 14, 7, '2024-02-07 13:19:00', '2024-02-07 13:19:00'),
(67, 'Voluptas tempore delectus aut ut voluptate voluptas.', 14, 8, '2023-10-10 12:07:10', '2023-10-10 12:07:10'),
(68, 'Minus nulla at et sapiente vitae tenetur fugit.', 14, 7, '2023-09-28 20:36:39', '2023-09-28 20:36:39'),
(69, 'Est aut laudantium similique aut deleniti suscipit autem debitis.', 14, 11, '2023-03-29 08:44:40', '2023-03-29 08:44:40'),
(70, 'Cumque nostrum esse rerum corrupti.', 14, 17, '2023-10-03 07:37:40', '2023-10-03 07:37:40'),
(71, 'Molestias quo eaque quis ab.', 15, 4, '2023-03-06 21:09:00', '2023-03-06 21:09:00'),
(72, 'Ut consequatur esse vero accusantium.', 15, 7, '2023-06-18 11:12:39', '2023-06-18 11:12:39'),
(73, 'Occaecati odit quo qui optio neque non vel dolore.', 15, 14, '2023-03-18 22:14:18', '2023-03-18 22:14:18'),
(74, 'Quia aut occaecati nesciunt quae dolor quisquam voluptatem ut.', 15, 17, '2023-08-12 23:46:40', '2023-08-12 23:46:40'),
(75, 'Nemo perferendis fugit excepturi ad ut.', 15, 6, '2023-04-30 09:20:10', '2023-04-30 09:20:10'),
(76, 'In rerum hic beatae sint.', 16, 13, '2024-01-05 08:21:48', '2024-01-05 08:21:48'),
(77, 'Assumenda rem qui tenetur adipisci labore voluptatem minima.', 16, 7, '2023-03-28 15:24:32', '2023-03-28 15:24:32'),
(78, 'Et voluptas quis necessitatibus nostrum est maxime magnam.', 16, 15, '2023-12-27 11:26:23', '2023-12-27 11:26:23'),
(79, 'Laboriosam placeat quos aut molestiae.', 16, 8, '2023-11-05 21:13:16', '2023-11-05 21:13:16'),
(80, 'Iste odit sint est excepturi eos.', 16, 14, '2023-11-27 22:12:41', '2023-11-27 22:12:41'),
(81, 'Necessitatibus et numquam quo possimus consectetur.', 17, 15, '2023-04-25 20:59:28', '2023-04-25 20:59:28'),
(82, 'Culpa qui nulla accusamus excepturi dolor eius repudiandae.', 17, 3, '2023-03-11 03:28:30', '2023-03-11 03:28:30'),
(83, 'A delectus veniam iure et velit eos doloribus.', 17, 4, '2023-11-22 10:31:23', '2023-11-22 10:31:23'),
(84, 'Aut odit accusantium et aut qui saepe.', 17, 5, '2023-05-15 13:26:05', '2023-05-15 13:26:05'),
(85, 'Repellat aliquam est vero molestias.', 17, 10, '2024-01-26 20:56:20', '2024-01-26 20:56:20'),
(86, 'Non dolor magni ipsum deleniti et aut et.', 18, 8, '2024-02-22 21:53:22', '2024-02-22 21:53:22'),
(87, 'Voluptatem quam nihil porro.', 18, 7, '2023-08-13 03:56:56', '2023-08-13 03:56:56'),
(88, 'Perspiciatis perferendis sint veritatis quasi vel.', 18, 7, '2024-02-27 10:23:43', '2024-02-27 10:23:43'),
(89, 'Aut consequatur soluta magnam nobis sed.', 18, 2, '2023-12-10 10:17:27', '2023-12-10 10:17:27'),
(90, 'Et dolorem voluptatem voluptates rerum eos.', 18, 11, '2023-05-28 14:17:02', '2023-05-28 14:17:02'),
(91, 'Quis minima neque atque autem voluptatum libero.', 19, 7, '2023-10-15 08:58:58', '2023-10-15 08:58:58'),
(92, 'Amet ipsa ipsa occaecati vel.', 19, 1, '2023-11-03 00:48:02', '2023-11-03 00:48:02'),
(93, 'Sint omnis reprehenderit laboriosam aperiam.', 19, 4, '2023-05-29 07:59:16', '2023-05-29 07:59:16'),
(94, 'Ullam distinctio ut officiis veniam aut vel.', 19, 2, '2023-08-04 01:11:27', '2023-08-04 01:11:27'),
(95, 'Impedit dolorem autem repudiandae dolores velit labore.', 19, 12, '2023-11-09 17:47:13', '2023-11-09 17:47:13'),
(96, 'Eum non quis ut suscipit est recusandae error tenetur.', 20, 10, '2023-11-07 09:53:59', '2023-11-07 09:53:59'),
(97, 'Illo deserunt qui dolor omnis rerum non.', 20, 8, '2023-09-11 07:43:06', '2023-09-11 07:43:06'),
(98, 'Quia sapiente autem voluptas praesentium ad.', 20, 9, '2023-06-20 05:00:40', '2023-06-20 05:00:40'),
(99, 'Repudiandae excepturi est magnam et velit dolores et.', 20, 6, '2024-01-28 18:43:20', '2024-01-28 18:43:20'),
(100, 'Libero natus incidunt hic nulla dolores quis et.', 20, 15, '2023-06-01 00:29:33', '2023-06-01 00:29:33'),
(101, 'first', 7, 1, '2024-03-05 15:54:15', '2024-03-05 15:54:15'),
(103, 'first', 22, 1, '2024-03-06 13:37:51', '2024-03-06 13:37:51'),
(104, 'first', 22, 1, '2024-03-06 15:28:31', '2024-03-06 15:28:31');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(97, '2014_10_12_000000_create_users_table', 1),
(98, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(99, '2019_08_19_000000_create_failed_jobs_table', 1),
(100, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(101, '2024_02_21_134233_create_posts_table', 1),
(102, '2024_03_02_123505_create_categories_table', 1),
(103, '2024_03_02_124212_add_category_id_to_posts_table', 1),
(104, '2024_03_02_133636_create_tags_table', 1),
(105, '2024_03_02_133928_create_post_tag_table', 1),
(106, '2024_03_05_133949_create_comments_table', 1),
(107, '2024_03_05_164346_add_role_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbmail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `slug`, `excerpt`, `content`, `thumbmail`, `created_at`, `updated_at`) VALUES
(1, 1, 'Veritatis officiis voluptatem veniam distinctio qui magnam.', 'veritatis-officiis-voluptatem-veniam-distinctio-qui-magnam', 'Nihil minus occaecati sed perspiciatis dolore culpa. Molestias molestiae odio non quia iure et. Ea possimus libero nobis culpa. Sint eum nihil nemo li...', 'Nihil minus occaecati sed perspiciatis dolore culpa. Molestias molestiae odio non quia iure et. Ea possimus libero nobis culpa. Sint eum nihil nemo libero.\n\nQuas occaecati minus delectus iusto odit porro quia molestiae. Provident dignissimos ipsam et sunt nemo saepe. Est officia voluptates qui debitis vel similique. Voluptas harum ex accusantium.\n\nSaepe velit debitis vel itaque provident. Laudantium labore dolorum et soluta. Possimus distinctio dolore consequuntur quos est repellat.', 'https://via.placeholder.com/640x480.png/00cc22?text=error', '2023-11-04 09:32:41', '2023-11-04 09:32:41'),
(2, 3, 'Ut ut ipsam repellendus aut quia enim blanditiis et.', 'ut-ut-ipsam-repellendus-aut-quia-enim-blanditiis-et', 'Quidem esse quia nemo voluptas nulla quasi nam. Nihil et maiores aliquam eaque at voluptatem. Exercitationem voluptatem est voluptatem eos facere qui...', 'Quidem esse quia nemo voluptas nulla quasi nam. Nihil et maiores aliquam eaque at voluptatem. Exercitationem voluptatem est voluptatem eos facere qui et. Et deleniti sit esse sint qui soluta.\n\nSed voluptas doloremque qui reprehenderit. Sit illum explicabo non harum velit mollitia. Qui molestias inventore dolores vero facere error aut in. Alias non quas dicta quod nam amet nostrum. Dolorem aperiam sed quo qui consequatur.\n\nEst officiis laudantium quia quas placeat saepe perferendis. Soluta error sit neque ratione. Est similique cupiditate doloremque.', 'https://via.placeholder.com/640x480.png/0033aa?text=possimus', '2023-12-17 18:12:19', '2023-12-17 18:12:19'),
(3, 2, 'Saepe tenetur quasi non quia.', 'saepe-tenetur-quasi-non-quia', 'Eum non laborum hic quia. Consequatur et eaque quaerat laudantium fugiat. Laudantium dolores labore voluptas magnam impedit nam.\n\nVitae voluptatem atq...', 'Eum non laborum hic quia. Consequatur et eaque quaerat laudantium fugiat. Laudantium dolores labore voluptas magnam impedit nam.\n\nVitae voluptatem atque qui tenetur ut itaque. Delectus et ex atque. Quae animi incidunt in deleniti dolor similique cumque. Saepe est dolore sed et temporibus.\n\nDucimus voluptate maxime perspiciatis nisi ad repudiandae cupiditate. Ad nam explicabo consequuntur eum. Repellat adipisci modi aliquid. Est dolores temporibus repellendus voluptatem enim non ratione eos.', 'https://via.placeholder.com/640x480.png/00ffaa?text=et', '2023-11-13 05:27:40', '2023-11-13 05:27:40'),
(4, 2, 'Aut voluptas perspiciatis ullam totam ducimus illum.', 'aut-voluptas-perspiciatis-ullam-totam-ducimus-illum', 'Voluptatem harum voluptatibus sunt eum eos alias doloribus. Nobis et nihil totam. Eos quod et illum veritatis. Velit ea id quia vero.\n\nQui voluptates...', 'Voluptatem harum voluptatibus sunt eum eos alias doloribus. Nobis et nihil totam. Eos quod et illum veritatis. Velit ea id quia vero.\n\nQui voluptates earum consequatur perspiciatis dolorem qui vero modi. Quos quo numquam distinctio similique quia saepe delectus. Quia et maiores quam placeat a placeat impedit. Mollitia nobis a voluptatum consequatur id qui.\n\nEst labore mollitia beatae facilis labore suscipit sint. Est doloribus illum quis provident. Voluptatem sequi quasi et officia quas dolor debitis corrupti. Vel quas quia enim aperiam vitae minus.', 'https://via.placeholder.com/640x480.png/00ff99?text=sapiente', '2023-12-17 05:34:43', '2023-12-17 05:34:43'),
(5, 3, 'Possimus saepe architecto velit.', 'possimus-saepe-architecto-velit', 'Qui natus velit molestias dolor et. Voluptas consequatur laboriosam eaque eaque. Quas consequatur natus vero aut praesentium.\n\nVelit in delectus omnis...', 'Qui natus velit molestias dolor et. Voluptas consequatur laboriosam eaque eaque. Quas consequatur natus vero aut praesentium.\n\nVelit in delectus omnis qui ipsa non nulla. Architecto in ad ut consequatur sequi eum. Deserunt adipisci doloribus aut fuga ratione aspernatur ab.\n\nPlaceat et optio suscipit qui. Numquam deleniti totam sequi tempora. Ut consequatur voluptatem quos harum qui rerum. Molestiae vel quibusdam doloremque consectetur.', 'https://via.placeholder.com/640x480.png/00cc55?text=dolores', '2023-08-15 16:59:54', '2023-08-15 16:59:54'),
(6, 1, 'Quaerat harum velit unde quia iusto repellat.', 'quaerat-harum-velit-unde-quia-iusto-repellat', 'Nihil quae aut ut suscipit. Eum saepe nostrum nihil. Quae totam mollitia ullam vel totam autem voluptates et.\n\nNecessitatibus voluptatum sit voluptati...', 'Nihil quae aut ut suscipit. Eum saepe nostrum nihil. Quae totam mollitia ullam vel totam autem voluptates et.\n\nNecessitatibus voluptatum sit voluptatibus ipsam dolorem ipsam. A optio et mollitia dignissimos sunt assumenda nesciunt. Deleniti sint aut in itaque. Deserunt qui molestiae voluptatum consequatur vero id.\n\nOmnis eaque atque cum facere. Amet cupiditate consectetur incidunt eligendi atque laborum quaerat. Laborum sapiente ex rerum dolores doloremque aliquam. Odit corporis voluptatum aut nobis autem.', 'https://via.placeholder.com/640x480.png/00ee55?text=error', '2023-11-30 06:18:34', '2023-11-30 06:18:34'),
(7, 2, 'Molestias incidunt amet provident.', 'molestias-incidunt-amet-provident', 'Est dolorem ut accusamus magnam earum recusandae quisquam. Rerum fugiat beatae et culpa impedit earum. Tenetur reiciendis iure enim aut consequatur. P...', 'Est dolorem ut accusamus magnam earum recusandae quisquam. Rerum fugiat beatae et culpa impedit earum. Tenetur reiciendis iure enim aut consequatur. Possimus nihil quod sed alias voluptas quis officiis nisi.\n\nEa in in nostrum vitae assumenda excepturi. Laborum est et voluptatibus dolorem et facilis. Dolorem omnis et error qui eaque voluptas. Ea aut quaerat sit voluptatem magnam ea.\n\nSimilique eum eum dolor in maiores ut. Error eligendi est eius et perferendis hic commodi. Recusandae tempore eligendi ullam at fuga quaerat non.', 'https://via.placeholder.com/640x480.png/00cc33?text=reiciendis', '2024-02-17 05:45:47', '2024-02-17 05:45:47'),
(8, 3, 'Modi quia veniam omnis possimus error illum commodi nesciunt.', 'modi-quia-veniam-omnis-possimus-error-illum-commodi-nesciunt', 'Dolor et tempore aut. Quibusdam quam quaerat ab. Esse quo nam eligendi est aut a veritatis laboriosam.\n\nEius tempora sed officiis dignissimos aut fugi...', 'Dolor et tempore aut. Quibusdam quam quaerat ab. Esse quo nam eligendi est aut a veritatis laboriosam.\n\nEius tempora sed officiis dignissimos aut fugiat placeat. Distinctio provident facere tenetur labore vitae ut. Molestiae voluptatibus omnis quis quod.\n\nVel non voluptatem nulla dolorem itaque sunt fuga. Culpa dolorum porro consequatur maiores dolores veritatis corrupti quaerat. Animi eius architecto in qui quae sunt est. Quaerat laborum odio ducimus impedit enim nihil labore.', 'https://via.placeholder.com/640x480.png/0033dd?text=et', '2023-05-22 23:04:40', '2023-05-22 23:04:40'),
(9, 2, 'Suscipit ut rem consectetur necessitatibus repudiandae dolore.', 'suscipit-ut-rem-consectetur-necessitatibus-repudiandae-dolore', 'Natus voluptatem autem nam nihil sit. Adipisci facere iusto commodi et similique aut sed. Perspiciatis corporis exercitationem aut. Explicabo tempora...', 'Natus voluptatem autem nam nihil sit. Adipisci facere iusto commodi et similique aut sed. Perspiciatis corporis exercitationem aut. Explicabo tempora nemo enim.\n\nPlaceat aut ad autem impedit voluptatum doloremque repudiandae. Sed vitae ut est eos consequatur fugiat id maxime. Qui rerum veritatis exercitationem est odit et.\n\nReiciendis dolor libero ratione fugit tempore illo distinctio. Magni rerum sequi et deserunt. Nostrum minima quibusdam sunt perspiciatis voluptas.', 'https://via.placeholder.com/640x480.png/004477?text=porro', '2023-11-24 02:46:06', '2023-11-24 02:46:06'),
(10, 1, 'Labore rerum perspiciatis a.', 'labore-rerum-perspiciatis-a', 'Pariatur nesciunt sed hic sed nobis id fugit non. Quis sunt omnis ea vel excepturi error hic. Eos eaque autem nam et.\n\nVoluptate molestiae aut dolorem...', 'Pariatur nesciunt sed hic sed nobis id fugit non. Quis sunt omnis ea vel excepturi error hic. Eos eaque autem nam et.\n\nVoluptate molestiae aut dolorem cum cumque qui. Eos distinctio voluptatem quia est quis ratione. Deserunt soluta vero qui est sed quia.\n\nVoluptas dolorum consequuntur quae sed. Aut blanditiis et harum consectetur et consequuntur saepe quibusdam. Facilis autem cumque voluptates odit molestias vitae dolor.', 'https://via.placeholder.com/640x480.png/00eedd?text=hic', '2023-10-25 07:25:27', '2023-10-25 07:25:27'),
(11, 3, 'Qui assumenda voluptatum non qui eum quos est.', 'qui-assumenda-voluptatum-non-qui-eum-quos-est', 'Unde error neque quia quia qui aperiam aut provident. Ex autem a ut reiciendis perspiciatis. Culpa ut ut reiciendis dolorem.\n\nVel illum sequi dolores...', 'Unde error neque quia quia qui aperiam aut provident. Ex autem a ut reiciendis perspiciatis. Culpa ut ut reiciendis dolorem.\n\nVel illum sequi dolores cumque. Et earum vel distinctio consectetur dolore dolores dolores aliquid. Ut maiores autem et pariatur tempore. Optio sed odit molestiae nobis rerum. Illo aut suscipit qui ut eaque dolorum.\n\nNihil omnis dignissimos in nihil aut tempore. Nemo dolore sint inventore aliquid nostrum id sequi ducimus. Iste voluptatem eum natus delectus.', 'https://via.placeholder.com/640x480.png/0033bb?text=illum', '2023-05-21 18:02:30', '2023-05-21 18:02:30'),
(12, 2, 'Non est et veritatis veritatis officiis quia aut.', 'non-est-et-veritatis-veritatis-officiis-quia-aut', 'Consectetur iste qui et ut ratione atque iure. Placeat unde rerum qui. Alias accusamus quasi est quo consequatur veniam sit dolor.\n\nOmnis nisi aut vol...', 'Consectetur iste qui et ut ratione atque iure. Placeat unde rerum qui. Alias accusamus quasi est quo consequatur veniam sit dolor.\n\nOmnis nisi aut voluptatem optio. Tempore qui ea vel ex ad. Nisi voluptatem maiores beatae et quos placeat est in. Qui et totam autem sit eos qui quae.\n\nEnim praesentium voluptatem quibusdam aliquid sint. Ducimus vel accusantium accusamus dolor. Aspernatur praesentium sapiente nisi similique repudiandae doloremque sit ad. Aliquam nostrum praesentium facere vitae exercitationem qui.', 'https://via.placeholder.com/640x480.png/00ee99?text=expedita', '2024-01-20 23:48:39', '2024-01-20 23:48:39'),
(13, 1, 'Rerum delectus unde iste cupiditate.', 'rerum-delectus-unde-iste-cupiditate', 'Voluptatibus aut adipisci a pariatur. Et porro fugit consequatur modi. Adipisci minus autem id sunt. Ipsum dolore voluptatum ratione dolorum ea.\n\nRem...', 'Voluptatibus aut adipisci a pariatur. Et porro fugit consequatur modi. Adipisci minus autem id sunt. Ipsum dolore voluptatum ratione dolorum ea.\n\nRem similique quaerat minima tempora vel quos. Labore voluptates quia nemo non doloribus et. Amet soluta sed qui reprehenderit voluptatem fuga voluptas ducimus.\n\nLaudantium quisquam consequatur rem facere corporis nulla. Porro qui occaecati et voluptates voluptatibus et nesciunt. Dolorum veritatis labore doloremque est sapiente est voluptatem.', 'https://via.placeholder.com/640x480.png/0033cc?text=sed', '2023-05-08 23:57:48', '2023-05-08 23:57:48'),
(14, 1, 'Autem quibusdam fuga aut.', 'autem-quibusdam-fuga-aut', 'Impedit in nihil consequatur. Cupiditate cupiditate rerum sunt unde quae consectetur debitis. Autem hic ut aliquid praesentium suscipit. Dolore exerci...', 'Impedit in nihil consequatur. Cupiditate cupiditate rerum sunt unde quae consectetur debitis. Autem hic ut aliquid praesentium suscipit. Dolore exercitationem doloremque sunt voluptatibus.\n\nSaepe est eius laborum ea magni sunt omnis. Velit ad voluptate voluptas quae. Eveniet dignissimos reprehenderit occaecati et.\n\nAnimi blanditiis illum rerum architecto. Eveniet placeat rerum libero qui iure molestiae. Quas non ipsam voluptates aut ut ea placeat.', 'https://via.placeholder.com/640x480.png/006655?text=id', '2023-07-19 21:02:32', '2023-07-19 21:02:32'),
(15, 3, 'Soluta rerum aperiam velit enim.', 'soluta-rerum-aperiam-velit-enim', 'A ea accusamus magni et odio. Natus voluptatem quasi modi quas quod similique. Provident soluta natus dolorem ratione itaque nesciunt temporibus hic....', 'A ea accusamus magni et odio. Natus voluptatem quasi modi quas quod similique. Provident soluta natus dolorem ratione itaque nesciunt temporibus hic. Asperiores voluptatem aspernatur harum.\n\nIllum ut velit molestiae est qui necessitatibus natus laudantium. Ex eaque sed nostrum tempora voluptas. Nemo debitis sed nulla consequatur maxime quasi sequi. Consequatur culpa quo provident sed quam.\n\nSoluta dolorum doloremque vero quasi et soluta dolorem est. Quia ipsam cupiditate omnis aut quibusdam architecto eligendi. Eum beatae minima ratione velit. Eos repudiandae mollitia fugit aut perferendis rerum.', 'https://via.placeholder.com/640x480.png/004455?text=et', '2023-10-06 08:32:25', '2023-10-06 08:32:25'),
(16, 2, 'Veniam tenetur iste voluptate et et.', 'veniam-tenetur-iste-voluptate-et-et', 'Dolor sit qui dolorem molestias et. Voluptatem magni nulla eum reiciendis ea molestiae eveniet rerum. Fuga dolore cupiditate sit voluptatem. Quaerat r...', 'Dolor sit qui dolorem molestias et. Voluptatem magni nulla eum reiciendis ea molestiae eveniet rerum. Fuga dolore cupiditate sit voluptatem. Quaerat rerum rem similique nemo qui harum.\n\nEt harum sequi delectus ut ut soluta excepturi rerum. A et ut sit. Quod delectus architecto quia quia rerum. Dolore culpa omnis maiores quos. Perspiciatis ullam ipsum ullam molestiae vitae ut error.\n\nSunt consequatur voluptatem necessitatibus quae voluptatum magni dolor pariatur. Nostrum sint veniam cupiditate. Provident omnis fuga ea vel omnis rem quis.', 'https://via.placeholder.com/640x480.png/00aaff?text=itaque', '2023-06-21 23:10:15', '2023-06-21 23:10:15'),
(17, 1, 'Illum qui ratione aspernatur est beatae.', 'illum-qui-ratione-aspernatur-est-beatae', 'Rerum totam debitis aut. Occaecati veritatis ex et impedit provident et. Eum corrupti culpa eum et consequatur.\n\nItaque vitae odit aliquid molestiae o...', 'Rerum totam debitis aut. Occaecati veritatis ex et impedit provident et. Eum corrupti culpa eum et consequatur.\n\nItaque vitae odit aliquid molestiae omnis. Illo eius et facilis doloremque. Ab pariatur beatae architecto consequatur ut qui amet. Aut facere quo voluptatem reiciendis quae. Ex voluptatem sed ut quaerat repudiandae omnis officiis.\n\nQuo at repudiandae culpa quae ducimus consequatur. Voluptate blanditiis ut nihil molestias ut vero deserunt. Exercitationem asperiores deserunt et provident numquam.', 'https://via.placeholder.com/640x480.png/0077dd?text=ut', '2023-11-26 20:08:24', '2023-11-26 20:08:24'),
(18, 2, 'Praesentium labore necessitatibus hic eligendi nam fuga temporibus.', 'praesentium-labore-necessitatibus-hic-eligendi-nam-fuga-temporibus', 'Eum sint ea aut non illum neque. Dolore et delectus assumenda iure inventore. Rerum iusto et consequuntur hic perferendis consequatur sed quia. Deleni...', 'Eum sint ea aut non illum neque. Dolore et delectus assumenda iure inventore. Rerum iusto et consequuntur hic perferendis consequatur sed quia. Deleniti modi fugiat nisi ut culpa.\n\nNostrum repudiandae aut velit dolor nobis blanditiis dolore. Veniam similique iste et impedit vero et. Facilis cum temporibus placeat et.\n\nMagnam error natus est quasi architecto voluptatem molestias. Architecto voluptas nisi ut perspiciatis cumque quidem. Placeat asperiores molestiae consequuntur recusandae molestias.', 'https://via.placeholder.com/640x480.png/0077ff?text=saepe', '2023-04-24 17:36:13', '2023-04-24 17:36:13'),
(19, 2, 'Temporibus velit ipsum corporis consequatur.', 'temporibus-velit-ipsum-corporis-consequatur', 'Quo aspernatur expedita sit ut. Libero quisquam vel tenetur inventore nihil dolores cumque architecto. Eveniet perspiciatis eos omnis voluptate rerum...', 'Quo aspernatur expedita sit ut. Libero quisquam vel tenetur inventore nihil dolores cumque architecto. Eveniet perspiciatis eos omnis voluptate rerum ut.\n\nUllam et officia suscipit quis. Ratione voluptates et voluptate consequatur voluptatum ratione. Dolores autem ut nulla molestiae.\n\nEst nisi nesciunt rerum debitis. Rerum rerum ipsum necessitatibus ea nam in est. Sint cupiditate animi est.', 'https://via.placeholder.com/640x480.png/0077dd?text=quidem', '2023-10-25 01:10:04', '2023-10-25 01:10:04'),
(20, 2, 'Fugit veniam dignissimos optio ipsum est provident.', 'fugit-veniam-dignissimos-optio-ipsum-est-provident', 'Labore libero distinctio ad aperiam. Fugit reprehenderit voluptatem culpa rerum nesciunt quia.\n\nOmnis rerum quam qui est. Ut velit sint deserunt conse...', 'Labore libero distinctio ad aperiam. Fugit reprehenderit voluptatem culpa rerum nesciunt quia.\n\nOmnis rerum quam qui est. Ut velit sint deserunt consequatur. Et amet quod id quis consequatur repellat velit. Rerum voluptatem totam perspiciatis doloribus et.\n\nAdipisci consequatur exercitationem perferendis ut quos repudiandae et. Occaecati explicabo officia saepe iure repellendus ad. Expedita commodi non ut dolores qui repudiandae.', 'https://via.placeholder.com/640x480.png/000088?text=molestiae', '2024-01-18 21:45:11', '2024-01-18 21:45:11'),
(22, 1, 'zazdazezeazeazeazfezfezfezfezfezfez', 'aezazeazeaeazezaezeazeazezaezaezaeezfezfze', 'zazdazezeazeazeazbfgbrgzrg', 'zazdazezeazeazeazbfgbrgzrg', 'thumbmails/oQojNOP0oITCXdkAGPDdX9hqrAGPeVBxiCXLcghW.png', '2024-03-06 13:37:44', '2024-03-06 15:28:18');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 3, NULL, NULL),
(3, 1, 5, NULL, NULL),
(4, 3, 4, NULL, NULL),
(5, 4, 1, NULL, NULL),
(6, 4, 2, NULL, NULL),
(7, 4, 5, NULL, NULL),
(8, 5, 3, NULL, NULL),
(9, 5, 5, NULL, NULL),
(10, 7, 2, NULL, NULL),
(11, 7, 4, NULL, NULL),
(12, 8, 1, NULL, NULL),
(13, 8, 2, NULL, NULL),
(14, 9, 1, NULL, NULL),
(15, 9, 2, NULL, NULL),
(16, 9, 4, NULL, NULL),
(17, 10, 1, NULL, NULL),
(18, 10, 3, NULL, NULL),
(19, 11, 2, NULL, NULL),
(20, 11, 3, NULL, NULL),
(21, 11, 4, NULL, NULL),
(22, 12, 1, NULL, NULL),
(23, 13, 3, NULL, NULL),
(24, 15, 1, NULL, NULL),
(25, 15, 2, NULL, NULL),
(26, 15, 5, NULL, NULL),
(27, 16, 1, NULL, NULL),
(28, 16, 5, NULL, NULL),
(29, 17, 1, NULL, NULL),
(30, 17, 3, NULL, NULL),
(31, 17, 5, NULL, NULL),
(32, 18, 1, NULL, NULL),
(33, 18, 2, NULL, NULL),
(34, 18, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'HarryPotter', 'harrypotter', '2024-03-05 13:00:00', '2024-03-05 13:00:00'),
(2, 'HenryPodbeur', 'henrypodbeur', '2024-03-05 13:00:00', '2024-03-05 13:00:00'),
(3, 'MathisDocker', 'mathisdocker', '2024-03-05 13:00:00', '2024-03-05 13:00:00'),
(4, 'ItsPeukeuchuw', 'itspeukeuchuw', '2024-03-05 13:00:00', '2024-03-05 13:00:00'),
(5, 'Cestdelamagie', 'cestdelamagie', '2024-03-05 13:00:00', '2024-03-05 13:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','default') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Clémence Colas-Chauveau', 'isabelle.berger@example.com', 'admin', '2024-03-05 12:59:59', '$2y$12$MU4gtgjkUtoONU5DJiqFIO.bEGqFiGI7vgDNCVYvC6VbEKdMvrm..', 'BNBVmlNoRB', '2024-03-05 13:00:00', '2024-03-05 13:00:00'),
(2, 'Astrid Lagarde', 'julien.laurent@example.org', 'default', '2024-03-05 13:00:00', '$2y$12$MU4gtgjkUtoONU5DJiqFIO.bEGqFiGI7vgDNCVYvC6VbEKdMvrm..', 'OQQCiB3uoc', '2024-03-05 13:00:00', '2024-03-05 13:00:00'),
(3, 'Astrid Clerc', 'hernandez.josette@example.com', 'default', '2024-03-05 13:00:00', '$2y$12$MU4gtgjkUtoONU5DJiqFIO.bEGqFiGI7vgDNCVYvC6VbEKdMvrm..', '8dPQUtnfsM', '2024-03-05 13:00:00', '2024-03-05 13:00:00'),
(4, 'Inès Bernard', 'victor.delannoy@example.org', 'default', '2024-03-05 13:00:00', '$2y$12$MU4gtgjkUtoONU5DJiqFIO.bEGqFiGI7vgDNCVYvC6VbEKdMvrm..', '4EY8ubDen2', '2024-03-05 13:00:00', '2024-03-05 13:00:00'),
(5, 'Emmanuel du Lacombe', 'berthelot.penelope@example.net', 'default', '2024-03-05 13:00:00', '$2y$12$MU4gtgjkUtoONU5DJiqFIO.bEGqFiGI7vgDNCVYvC6VbEKdMvrm..', 'PD54vP5boZ', '2024-03-05 13:00:00', '2024-03-05 13:00:00'),
(6, 'Honoré Bertrand', 'gimenez.michele@example.net', 'default', '2024-03-05 13:00:00', '$2y$12$MU4gtgjkUtoONU5DJiqFIO.bEGqFiGI7vgDNCVYvC6VbEKdMvrm..', 'PqnOXJ7pJX', '2024-03-05 13:00:00', '2024-03-05 13:00:00'),
(7, 'Thibaut-Grégoire Carlier', 'ylanglois@example.com', 'default', '2024-03-05 13:00:00', '$2y$12$MU4gtgjkUtoONU5DJiqFIO.bEGqFiGI7vgDNCVYvC6VbEKdMvrm..', 'LNyYzzP68x', '2024-03-05 13:00:00', '2024-03-05 13:00:00'),
(8, 'Benjamin Michaud', 'bigot.rene@example.org', 'default', '2024-03-05 13:00:00', '$2y$12$MU4gtgjkUtoONU5DJiqFIO.bEGqFiGI7vgDNCVYvC6VbEKdMvrm..', 'nCam9mg0Ms', '2024-03-05 13:00:00', '2024-03-05 13:00:00'),
(9, 'Lucas-Marcel Picard', 'christophe.valentin@example.net', 'default', '2024-03-05 13:00:00', '$2y$12$MU4gtgjkUtoONU5DJiqFIO.bEGqFiGI7vgDNCVYvC6VbEKdMvrm..', 'kiZ8bnEsmy', '2024-03-05 13:00:00', '2024-03-05 13:00:00'),
(10, 'Margaud-Christine Etienne', 'zcollin@example.net', 'default', '2024-03-05 13:00:00', '$2y$12$MU4gtgjkUtoONU5DJiqFIO.bEGqFiGI7vgDNCVYvC6VbEKdMvrm..', '32TzKwvbWu', '2024-03-05 13:00:00', '2024-03-05 13:00:00'),
(11, 'Christelle Barthelemy', 'delmas.xavier@example.net', 'default', '2024-03-05 13:00:00', '$2y$12$MU4gtgjkUtoONU5DJiqFIO.bEGqFiGI7vgDNCVYvC6VbEKdMvrm..', 'NPZiYowl2P', '2024-03-05 13:00:00', '2024-03-05 13:00:00'),
(12, 'Paulette-Nathalie Lecomte', 'brunel.veronique@example.net', 'default', '2024-03-05 13:00:00', '$2y$12$MU4gtgjkUtoONU5DJiqFIO.bEGqFiGI7vgDNCVYvC6VbEKdMvrm..', 'La2VKXdAVZ', '2024-03-05 13:00:00', '2024-03-05 13:00:00'),
(13, 'Paulette Ollivier', 'hdiaz@example.com', 'default', '2024-03-05 13:00:00', '$2y$12$MU4gtgjkUtoONU5DJiqFIO.bEGqFiGI7vgDNCVYvC6VbEKdMvrm..', 'Tv13RXxqTS', '2024-03-05 13:00:00', '2024-03-05 13:00:00'),
(14, 'Roger Henry', 'julie.neveu@example.net', 'default', '2024-03-05 13:00:00', '$2y$12$MU4gtgjkUtoONU5DJiqFIO.bEGqFiGI7vgDNCVYvC6VbEKdMvrm..', '9Ezudq1Hjn', '2024-03-05 13:00:00', '2024-03-05 13:00:00'),
(15, 'Nath Clement', 'patricia.payet@example.net', 'default', '2024-03-05 13:00:00', '$2y$12$MU4gtgjkUtoONU5DJiqFIO.bEGqFiGI7vgDNCVYvC6VbEKdMvrm..', 'Yc6nRTeH34', '2024-03-05 13:00:00', '2024-03-05 13:00:00'),
(16, 'Roland Peltier-Barthelemy', 'tdijoux@example.org', 'default', '2024-03-05 13:00:00', '$2y$12$MU4gtgjkUtoONU5DJiqFIO.bEGqFiGI7vgDNCVYvC6VbEKdMvrm..', '5lQXbqE2Ep', '2024-03-05 13:00:00', '2024-03-05 13:00:00'),
(17, 'Marthe Parent', 'delorme.margot@example.com', 'default', '2024-03-05 13:00:00', '$2y$12$MU4gtgjkUtoONU5DJiqFIO.bEGqFiGI7vgDNCVYvC6VbEKdMvrm..', 'nVpkOgoLix', '2024-03-05 13:00:00', '2024-03-05 13:00:00'),
(18, 'Jérôme Rousset', 'bernadette03@example.net', 'default', '2024-03-05 13:00:00', '$2y$12$MU4gtgjkUtoONU5DJiqFIO.bEGqFiGI7vgDNCVYvC6VbEKdMvrm..', 'Y5jdk49Zkp', '2024-03-05 13:00:00', '2024-03-05 13:00:00'),
(19, 'Christelle Fontaine-Pires', 'dorothee50@example.com', 'default', '2024-03-05 13:00:00', '$2y$12$MU4gtgjkUtoONU5DJiqFIO.bEGqFiGI7vgDNCVYvC6VbEKdMvrm..', 'AwVbnvwJ4x', '2024-03-05 13:00:00', '2024-03-05 13:00:00'),
(20, 'Grégoire-Zacharie Millet', 'bazin.maurice@example.org', 'default', '2024-03-05 13:00:00', '$2y$12$MU4gtgjkUtoONU5DJiqFIO.bEGqFiGI7vgDNCVYvC6VbEKdMvrm..', 'O6mH45pSpW', '2024-03-05 13:00:00', '2024-03-05 13:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_id_foreign` (`post_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
