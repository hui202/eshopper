-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2017 at 07:35 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larashop`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'WOMEN', NULL, NULL),
(2, 'MEN', NULL, NULL),
(3, 'KIDS', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_tags`
--

CREATE TABLE `blog_post_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blog_post_tags`
--

INSERT INTO `blog_post_tags` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 3, 2, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 1, NULL, NULL),
(7, 7, 1, NULL, NULL),
(8, 8, 2, NULL, NULL),
(9, 9, 2, NULL, NULL),
(10, 10, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_tags`
--

CREATE TABLE `blog_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blog_tags`
--

INSERT INTO `blog_tags` (`id`, `tag`, `created_at`, `updated_at`) VALUES
(1, 'Pink', NULL, NULL),
(2, 'T-Shirt', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_at_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`, `create_at_ip`, `updated_at_ip`) VALUES
(1, 'ACNE', NULL, NULL, '', ''),
(2, 'RONHILL', NULL, NULL, '', ''),
(3, 'ALBIRO', NULL, NULL, '', ''),
(4, 'ODDMOLLY', NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `created_at_ip`, `updated_at_ip`) VALUES
(1, 'MENS', NULL, NULL, '', ''),
(2, 'WOMENS', NULL, NULL, '', ''),
(3, 'KIDS', NULL, NULL, '', ''),
(4, 'FASHION', NULL, NULL, '', ''),
(6, 'HEAVY METAL', '2017-06-11 10:05:00', '2017-06-11 10:23:49', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `depts`
--

CREATE TABLE `depts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drinks`
--

CREATE TABLE `drinks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `comments` text COLLATE utf8_unicode_ci,
  `rating` int(11) NOT NULL,
  `brew_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `drinks`
--

INSERT INTO `drinks` (`id`, `name`, `comments`, `rating`, `brew_date`, `created_at`, `updated_at`) VALUES
(1, 'Vodka', 'Blood of creativity', 9, '1973-09-03', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dept_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `contact_number`, `gender`, `dept_id`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Elwyn Grimes', 'sondricka@bode.org', '1-915-503-6669', '', NULL, NULL, NULL),
(2, 'Montana Powlowski', 'agnes.carroll@kuhic.biz', '910-776-5595', '', NULL, NULL, NULL),
(3, 'Marjory Becker', 'boyer.brown@bernhard.com', '+1.676.843.9901', '', NULL, NULL, NULL),
(4, 'Leif Legros', 'lupe71@willms.net', '(679) 348-0908 x095', '', NULL, NULL, NULL),
(5, 'Dr. Lloyd Feil III', 'conroy.rashawn@beahan.com', '320.743.4240 x641', '', NULL, NULL, NULL),
(6, 'Isabella Langosh', 'ttorphy@gleason.com', '+1.698.535.9879', '', NULL, NULL, NULL),
(7, 'Veronica Hahn', 'emilie.balistreri@hotmail.com', '+1-373-397-8566', '', NULL, NULL, NULL),
(8, 'Miss Talia Schneider Sr.', 'jackie.stracke@yahoo.com', '+1.267.670.0556', '', NULL, NULL, NULL),
(9, 'Alexane Dibbert', 'langworth.gregoria@witting.info', '794.935.9720 x7234', '', NULL, NULL, NULL),
(10, 'Dr. Nikki Auer II', 'jgusikowski@gmail.com', '(592) 623-5499', '', NULL, NULL, NULL),
(11, 'Dr. Deontae Stiedemann V', 'kihn.ceasar@emard.net', '651.655.5669 x7430', '', NULL, NULL, NULL),
(12, 'Ms. Janice Padberg', 'rjones@yahoo.com', '(948) 501-9992', '', NULL, NULL, NULL),
(13, 'Minerva Gaylord', 'gutkowski.gisselle@johnson.biz', '226-603-2049', '', NULL, NULL, NULL),
(14, 'Rylee Heaney', 'shea35@hotmail.com', '1-697-220-1127', '', NULL, NULL, NULL),
(15, 'Dorothy Willms PhD', 'dbrakus@yahoo.com', '(532) 447-4090', '', NULL, NULL, NULL),
(16, 'Karley Hermiston', 'issac.spinka@hotmail.com', '+1.328.406.7053', '', NULL, NULL, NULL),
(17, 'Dr. Watson Aufderhar', 'shannon.grady@yahoo.com', '1-363-864-0500', '', NULL, NULL, NULL),
(18, 'Cullen Emmerich', 'iohara@hotmail.com', '838.865.3052', '', NULL, NULL, NULL),
(19, 'Milo Boehm', 'talia18@hotmail.com', '+1 (493) 566-9175', '', NULL, NULL, NULL),
(20, 'Mrs. Lucile Dickens', 'wmorissette@bode.com', '+1-926-959-8165', '', NULL, NULL, NULL),
(21, 'Winona O\'Connell', 'leilani.leannon@hilpert.com', '(715) 885-4588 x9709', '', NULL, NULL, NULL),
(22, 'Lelah Hyatt MD', 'towne.isac@yahoo.com', '665-749-0680', '', NULL, NULL, NULL),
(23, 'Shaun Reynolds', 'nweber@rutherford.com', '+1 (667) 930-1559', '', NULL, NULL, NULL),
(24, 'Jamil Hettinger', 'crona.ryder@hotmail.com', '402.960.3228', '', NULL, NULL, NULL),
(25, 'Jevon Rau', 'kbeahan@douglas.info', '+1.530.964.6084', '', NULL, NULL, NULL),
(26, 'Gerda King DDS', 'genoveva93@yahoo.com', '+1 (336) 871-8767', '', NULL, NULL, NULL),
(27, 'Gilda Keeling', 'ybalistreri@connelly.com', '(994) 533-3507', '', NULL, NULL, NULL),
(28, 'Jerrold Schaden', 'torey.hamill@boyer.com', '394-264-8969 x17329', '', NULL, NULL, NULL),
(29, 'Olen Barrows IV', 'sylvan65@vandervort.org', '449-995-2937 x30299', '', NULL, NULL, NULL),
(30, 'Gage Kerluke', 'ubaldo12@hotmail.com', '+1-649-289-5573', '', NULL, NULL, NULL),
(31, 'Prof. Nella Turner', 'okeefe.blake@macejkovic.info', '330.527.1596', '', NULL, NULL, NULL),
(32, 'Freddie Nikolaus', 'nakia.kuphal@braun.com', '902-963-1796 x61851', '', NULL, NULL, NULL),
(33, 'Josiane Cassin', 'margie.beatty@bartoletti.com', '398-432-4051', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(25, '2014_10_12_000000_create_users_table', 1),
(26, '2014_10_12_100000_create_password_resets_table', 1),
(27, '2017_06_08_012356_create_drinks_table', 1),
(28, '2017_06_10_172013_employees', 1),
(29, '2017_06_10_180251_add_gender_to_employees', 1),
(30, '2017_06_10_184546_modify_gender_in_employees', 1),
(31, '2017_06_10_184930_make_gender_null_in_employes', 1),
(32, '2017_06_10_185136_depts', 1),
(33, '2017_06_10_190336_create_posts_table', 1),
(34, '2017_06_10_190416_create_categories_table', 1),
(35, '2017_06_10_190430_create_brands_table', 1),
(36, '2017_06_10_190826_create_products_table', 1),
(37, '2017_06_10_200151_add_dept_id_to_employees', 1),
(38, '2017_06_11_204758_add_category_id_image_to_posts', 2),
(39, '2017_06_11_205016_blog_categories', 3),
(40, '2017_06_11_205357_blog_tags', 4),
(41, '2017_06_11_205441_blog_post_tags', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(140) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(170) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blog` tinyint(1) NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_at_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `url`, `title`, `description`, `content`, `image`, `blog`, `category_id`, `created_at`, `updated_at`, `create_at_ip`, `updated_at_ip`) VALUES
(1, 'odio', 'Aut nostrum impedit facere est dolor itaque aliquid.', 'Dolorem sit qui minus voluptatibus. Quos expedita sunt quas. Consequatur ut expedita cumque eum doloribus sit. Sint in quis exercitationem aut unde odit nemo.', 'Perspiciatis sit blanditiis magni iste. Necessitatibus voluptate sed et. Sunt et at dolorum necessitatibus dolorem ut delectus. Saepe et velit reprehenderit omnis enim autem est molestiae.', 'blog-two.jpg', 1, 3, NULL, NULL, '', ''),
(2, 'quos', 'Numquam totam quos odio quas.', 'Possimus sed ut error quo ut ut animi possimus. Autem ut nesciunt dolores qui et blanditiis. Vero ipsum sed totam nostrum eligendi veritatis quo.', 'Et nisi qui dignissimos est perferendis sunt. Asperiores sit qui in commodi non.', 'blog-two.jpg', 1, 2, NULL, NULL, '', ''),
(3, 'magnam', 'Sit omnis eos nulla rem.', 'Architecto perferendis suscipit similique repellat. Incidunt vitae quod quidem repellendus. Dolores magnam laudantium excepturi non est rem provident. Omnis et quae tempo', 'Non iusto et libero voluptatem. Accusamus ex nulla quisquam unde ipsa inventore. Sapiente quam quod veniam amet et sit voluptatem perspiciatis.', 'blog-two.jpg', 1, 3, NULL, NULL, '', ''),
(4, 'et', 'Accusamus maxime ipsa et quibusdam.', 'Et autem sit iste quod nisi. Sequi odit eos et quam. Ratione ut cupiditate provident velit. Odio aut officiis mollitia ut iure dolorum saepe.', 'Sit et et iusto ut quo. Necessitatibus doloribus officia praesentium eligendi explicabo est. Qui excepturi quisquam vel earum esse.', 'blog-two.jpg', 1, 3, NULL, NULL, '', ''),
(5, 'consequuntur', 'Nam deleniti quasi qui itaque aliquid alias.', 'Tempora rerum deserunt quia tenetur. Totam accusamus qui consequatur quisquam molestiae amet. Consequatur voluptates ratione voluptatum voluptas repellendus. Error deseru', 'Adipisci aliquam assumenda laudantium nulla eos commodi. Natus nihil sint ut inventore.', 'blog-two.jpg', 1, 2, NULL, NULL, '', ''),
(6, 'incidunt', 'Harum tempore velit provident blanditiis ipsam molestiae.', 'Dignissimos dolores voluptatem sit eaque voluptatem dolor voluptates. Totam assumenda iusto doloribus aut aspernatur facilis temporibus. Quos consectetur eum et culpa qui', 'Iusto deserunt ipsum tempore. Quia ut in quisquam aut dolores et. Ex quo quo dolorem.', 'blog-one.jpg', 1, 3, NULL, NULL, '', ''),
(7, 'vel', 'Ab eligendi numquam qui molestiae nobis provident id consequatur.', 'Rerum nihil dicta dicta asperiores. Rerum aut officiis aliquid magni blanditiis quia voluptas. Culpa dolor itaque dolor ut.', 'Sapiente nihil alias quas ipsa. Dolores tempora sapiente omnis sunt quo. Qui explicabo non enim.', 'blog-three.jpg', 1, 2, NULL, NULL, '', ''),
(8, 'officiis', 'Commodi et error molestiae beatae illum atque consequatur.', 'Quas doloremque non voluptatem numquam ut debitis. Excepturi laboriosam assumenda vel sed fuga sit. Adipisci et dignissimos ea ab quia nostrum. Est deserunt optio neque n', 'Iusto cumque voluptatem ut hic nemo ea quis. Omnis est consequatur ut enim. Perspiciatis voluptatem a sit consequatur.', 'blog-two.jpg', 1, 1, NULL, NULL, '', ''),
(9, 'autem', 'Odit esse et voluptates et reprehenderit corrupti id.', 'Provident id autem accusamus voluptatem corporis. Ut adipisci id cum voluptatibus cumque. Vero et autem possimus impedit voluptatem. Qui tenetur voluptates facere nisi fa', 'Eaque consequatur placeat fugiat. Deserunt beatae facere rerum eum in. Consequatur rem maiores aut et ipsa ut. Maxime doloremque excepturi similique alias atque natus pariatur.', 'blog-one.jpg', 1, 3, NULL, NULL, '', ''),
(10, 'sint', 'Aspernatur delectus nesciunt eius reiciendis consequatur.', 'Aut aut tenetur similique. Illo et nisi sequi ut corrupti voluptatem sunt. Dolor necessitatibus iusto qui. Qui accusantium quae ducimus esse.', 'Voluptatum inventore nobis maiores dicta. Voluptas quo et veniam aut rerum. At doloremque accusantium laborum veniam dolor facere aut deserunt. Nihil et dolorum et vero sed harum.', 'blog-two.jpg', 1, 2, NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(140) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `title`, `description`, `price`, `category_id`, `brand_id`, `created_at`, `updated_at`, `created_at_ip`, `updated_at_ip`) VALUES
(1, 'Mini skirt black edition', 'Mini skirt black edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna', 35, 1, 1, NULL, NULL, '', ''),
(2, 'T-shirt blue edition', 'T-shirt blue edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna', 64, 2, 3, NULL, NULL, '', ''),
(3, 'Sleeveless Colorblock Scuba', 'Sleeveless Colorblock Scuba', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna', 13, 3, 2, NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Andrew', 'andrew@andrew.com', '$2y$10$q9eD7wp37IEy3iMG0hgxIeMiR5B7FLxdAMedUPllmCSHdQyTaLh5O', 'UZKgLkTZ3K7sS171YrFCbOJO1hDt7MlgR5zIyUcUCoUGFmQ6OZkHpYqWg1Yi', '2017-06-12 02:27:14', '2017-06-12 02:27:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_categories_category_unique` (`category`);

--
-- Indexes for table `blog_post_tags`
--
ALTER TABLE `blog_post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_tags_tag_unique` (`tag`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `depts`
--
ALTER TABLE `depts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drinks`
--
ALTER TABLE `drinks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `drinks_name_unique` (`name`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_dept_id_foreign` (`dept_id`);

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
  ADD UNIQUE KEY `posts_url_unique` (`url`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`);

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
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `blog_post_tags`
--
ALTER TABLE `blog_post_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `depts`
--
ALTER TABLE `depts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `drinks`
--
ALTER TABLE `drinks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_dept_id_foreign` FOREIGN KEY (`dept_id`) REFERENCES `depts` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
