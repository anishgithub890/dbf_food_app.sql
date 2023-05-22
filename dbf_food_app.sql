-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 30, 2022 at 11:15 PM
-- Server version: 5.7.37-log
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql_testfood_dbe`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL),
(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL, NULL),
(3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL, NULL),
(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, NULL),
(5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, NULL),
(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, NULL),
(8, 0, 0, 'Food Category', 'fa-certificate', '/food-types', '*', '2021-11-08 04:58:13', '2022-01-01 00:16:59'),
(10, 0, 0, 'Users', 'fa-bars', '/users', '*', '2021-11-08 05:38:59', '2021-11-08 05:38:59'),
(11, 0, 0, 'Food', 'fa-beer', '/foods', '*', '2021-11-17 01:37:06', '2022-01-01 00:06:15'),
(12, 0, 0, 'Orders', 'fa-first-order', '/orders', '*', '2022-02-09 18:27:25', '2022-02-09 18:27:25'),
(13, 0, 0, 'Biz Setting', 'fa-dollar', '/business-settings', '*', '2022-02-27 22:24:23', '2022-06-19 05:14:36'),
(14, 0, 0, 'Zone', 'fa-bars', '/zones', '*', '2022-06-15 00:04:49', '2022-06-15 00:04:49'),
(15, 0, 0, 'Delivery Men', 'fa-send-o', '/delivery-men', '*', '2022-06-19 05:14:18', '2022-06-19 05:14:18');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '180.175.17.235', '[]', '2021-11-08 03:42:53', '2021-11-08 03:42:53'),
(2, 1, 'admin', 'GET', '101.85.201.147', '[]', '2021-11-08 04:57:07', '2021-11-08 04:57:07'),
(3, 1, 'admin/auth/menu', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 04:57:10', '2021-11-08 04:57:10'),
(4, 1, 'admin/auth/menu', 'POST', '101.85.201.147', '{\"parent_id\":\"0\",\"title\":\"Category\",\"icon\":\"fa-bars\",\"uri\":\"\\/article-types\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"AMUYbLptKc2cKTgaD72XLJQOd17JLWL6PdTMmW79\"}', '2021-11-08 04:58:13', '2021-11-08 04:58:13'),
(5, 1, 'admin/auth/menu', 'GET', '101.85.201.147', '[]', '2021-11-08 04:58:13', '2021-11-08 04:58:13'),
(6, 1, 'admin/auth/menu', 'GET', '101.85.201.147', '[]', '2021-11-08 04:58:18', '2021-11-08 04:58:18'),
(7, 1, 'admin/auth/menu', 'POST', '101.85.201.147', '{\"parent_id\":\"0\",\"title\":\"Artcles\",\"icon\":\"fa-bars\",\"uri\":\"\\/articles\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"AMUYbLptKc2cKTgaD72XLJQOd17JLWL6PdTMmW79\"}', '2021-11-08 04:58:55', '2021-11-08 04:58:55'),
(8, 1, 'admin/auth/menu', 'GET', '101.85.201.147', '[]', '2021-11-08 04:58:55', '2021-11-08 04:58:55'),
(9, 1, 'admin/auth/menu', 'GET', '101.85.201.147', '[]', '2021-11-08 04:58:58', '2021-11-08 04:58:58'),
(10, 1, 'admin/articles', 'GET', '101.85.201.147', '[]', '2021-11-08 05:02:22', '2021-11-08 05:02:22'),
(11, 1, 'admin/articles/create', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:02:31', '2021-11-08 05:02:31'),
(12, 1, 'admin/articles', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:02:46', '2021-11-08 05:02:46'),
(13, 1, 'admin/articles/create', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:02:50', '2021-11-08 05:02:50'),
(14, 1, 'admin/articles/create', 'GET', '101.85.201.147', '[]', '2021-11-08 05:06:27', '2021-11-08 05:06:27'),
(15, 1, 'admin/auth/logout', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:06:32', '2021-11-08 05:06:32'),
(16, 1, 'admin', 'GET', '101.85.201.147', '[]', '2021-11-08 05:06:36', '2021-11-08 05:06:36'),
(17, 1, 'admin/articles', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:06:38', '2021-11-08 05:06:38'),
(18, 1, 'admin/article-types', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:06:40', '2021-11-08 05:06:40'),
(19, 1, 'admin/articles', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:06:42', '2021-11-08 05:06:42'),
(20, 1, 'admin/articles/create', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:06:43', '2021-11-08 05:06:43'),
(21, 1, 'admin/articles/create', 'GET', '101.85.201.147', '[]', '2021-11-08 05:12:09', '2021-11-08 05:12:09'),
(22, 1, 'admin/articles/create', 'GET', '101.85.201.147', '[]', '2021-11-08 05:13:21', '2021-11-08 05:13:21'),
(23, 1, 'admin/articles/create', 'GET', '101.85.201.147', '[]', '2021-11-08 05:14:03', '2021-11-08 05:14:03'),
(24, 1, 'admin/article-types', 'GET', '101.85.201.147', '[]', '2021-11-08 05:14:10', '2021-11-08 05:14:10'),
(25, 1, 'admin/article-types/create', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:14:13', '2021-11-08 05:14:13'),
(26, 1, 'admin/articles', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:14:18', '2021-11-08 05:14:18'),
(27, 1, 'admin/articles/create', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:14:19', '2021-11-08 05:14:19'),
(28, 1, 'admin/article-types', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:15:02', '2021-11-08 05:15:02'),
(29, 1, 'admin/articles', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:15:05', '2021-11-08 05:15:05'),
(30, 1, 'admin/articles/create', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:15:08', '2021-11-08 05:15:08'),
(31, 1, 'admin/articles/create', 'GET', '101.85.201.147', '[]', '2021-11-08 05:15:45', '2021-11-08 05:15:45'),
(32, 1, 'admin/articles/create', 'GET', '101.85.201.147', '[]', '2021-11-08 05:19:56', '2021-11-08 05:19:56'),
(33, 1, 'admin/articles/create', 'GET', '101.85.201.147', '[]', '2021-11-08 05:22:13', '2021-11-08 05:22:13'),
(34, 1, 'admin/auth/menu', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:38:07', '2021-11-08 05:38:07'),
(35, 1, 'admin/auth/menu/8/edit', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:38:12', '2021-11-08 05:38:12'),
(36, 1, 'admin/auth/menu/8', 'PUT', '101.85.201.147', '{\"parent_id\":\"0\",\"title\":\"Category\",\"icon\":\"fa-certificate\",\"uri\":\"\\/article-types\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"1dRL1ZTg9uL9SBUZUkwxouwgJEat9EZqsMHfsdn6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/auth\\/menu\"}', '2021-11-08 05:38:24', '2021-11-08 05:38:24'),
(37, 1, 'admin/auth/menu', 'GET', '101.85.201.147', '[]', '2021-11-08 05:38:24', '2021-11-08 05:38:24'),
(38, 1, 'admin/auth/menu/9/edit', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:38:26', '2021-11-08 05:38:26'),
(39, 1, 'admin/auth/menu/9', 'PUT', '101.85.201.147', '{\"parent_id\":\"0\",\"title\":\"Articles\",\"icon\":\"fa-bars\",\"uri\":\"\\/articles\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"1dRL1ZTg9uL9SBUZUkwxouwgJEat9EZqsMHfsdn6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/auth\\/menu\"}', '2021-11-08 05:38:32', '2021-11-08 05:38:32'),
(40, 1, 'admin/auth/menu', 'GET', '101.85.201.147', '[]', '2021-11-08 05:38:32', '2021-11-08 05:38:32'),
(41, 1, 'admin/auth/menu', 'GET', '101.85.201.147', '[]', '2021-11-08 05:38:35', '2021-11-08 05:38:35'),
(42, 1, 'admin/auth/menu', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:38:40', '2021-11-08 05:38:40'),
(43, 1, 'admin/auth/menu', 'POST', '101.85.201.147', '{\"parent_id\":\"0\",\"title\":\"Users\",\"icon\":\"fa-bars\",\"uri\":\"\\/users\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"1dRL1ZTg9uL9SBUZUkwxouwgJEat9EZqsMHfsdn6\"}', '2021-11-08 05:38:59', '2021-11-08 05:38:59'),
(44, 1, 'admin/auth/menu', 'GET', '101.85.201.147', '[]', '2021-11-08 05:38:59', '2021-11-08 05:38:59'),
(45, 1, 'admin/articles', 'GET', '180.175.17.235', '[]', '2021-11-17 01:36:07', '2021-11-17 01:36:07'),
(46, 1, 'admin/auth/roles', 'GET', '180.175.17.235', '{\"_pjax\":\"#pjax-container\"}', '2021-11-17 01:36:12', '2021-11-17 01:36:12'),
(47, 1, 'admin/auth/menu', 'GET', '180.175.17.235', '{\"_pjax\":\"#pjax-container\"}', '2021-11-17 01:36:14', '2021-11-17 01:36:14'),
(48, 1, 'admin/auth/menu', 'POST', '180.175.17.235', '{\"parent_id\":\"0\",\"title\":\"Places\",\"icon\":\"fa-map-marker\",\"uri\":\"\\/places\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\"}', '2021-11-17 01:37:06', '2021-11-17 01:37:06'),
(49, 1, 'admin/auth/menu', 'GET', '180.175.17.235', '[]', '2021-11-17 01:37:06', '2021-11-17 01:37:06'),
(50, 1, 'admin/auth/menu', 'GET', '180.175.17.235', '[]', '2021-11-17 01:37:08', '2021-11-17 01:37:08'),
(51, 1, 'admin/places', 'GET', '180.175.17.235', '{\"_pjax\":\"#pjax-container\"}', '2021-11-17 01:37:10', '2021-11-17 01:37:10'),
(52, 1, 'admin/places', 'GET', '180.175.17.235', '{\"_pjax\":\"#pjax-container\"}', '2021-11-17 01:45:32', '2021-11-17 01:45:32'),
(53, 1, 'admin/places/create', 'GET', '180.175.17.235', '{\"_pjax\":\"#pjax-container\"}', '2021-11-17 01:45:35', '2021-11-17 01:45:35'),
(54, 1, 'admin/places/create', 'GET', '180.175.17.235', '[]', '2021-11-17 01:46:48', '2021-11-17 01:46:48'),
(55, 1, 'admin/places/create', 'GET', '180.175.17.235', '[]', '2021-11-17 01:46:50', '2021-11-17 01:46:50'),
(56, 1, 'admin/places', 'POST', '180.175.17.235', '{\"name\":\"British Columbia\",\"price\":\"1276\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton. The highway takes you via the coast of the Pacific all the way to Howe Sound before arriving at the Turning island. It gives you a mouthwatering opportunity for sightseeing without having the need to walk off road.<\\/span><\\/p>\",\"total_people\":null,\"selected_people\":null,\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\"}', '2021-11-17 02:04:35', '2021-11-17 02:04:35'),
(57, 1, 'admin/places/create', 'GET', '180.175.17.235', '[]', '2021-11-17 02:04:35', '2021-11-17 02:04:35'),
(58, 1, 'admin/places', 'POST', '180.175.17.235', '{\"name\":\"British Columbia\",\"price\":\"1276\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton. The highway takes you via the coast of the Pacific all the way to Howe Sound before arriving at the Turning island. It gives you a mouthwatering opportunity for sightseeing without having the need to walk off road.<\\/span><\\/p>\",\"total_people\":null,\"selected_people\":null,\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\"}', '2021-11-17 02:05:28', '2021-11-17 02:05:28'),
(59, 1, 'admin/places/create', 'GET', '180.175.17.235', '[]', '2021-11-17 02:05:28', '2021-11-17 02:05:28'),
(60, 1, 'admin/places', 'POST', '180.175.17.235', '{\"name\":\"British Columbia\",\"price\":\"1276\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton. The highway takes you via the coast of the Pacific all the way to Howe Sound before arriving at the Turning island. It gives you a mouthwatering opportunity for sightseeing without having the need to walk off road.<\\/span><\\/p>\",\"total_people\":null,\"selected_people\":null,\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\"}', '2021-11-17 02:06:38', '2021-11-17 02:06:38'),
(61, 1, 'admin/places/create', 'GET', '180.175.17.235', '[]', '2021-11-17 02:06:38', '2021-11-17 02:06:38'),
(62, 1, 'admin/places', 'POST', '180.175.17.235', '{\"name\":\"British Columbia\",\"price\":\"1276\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton. The highway takes you via the coast of the Pacific all the way to Howe Sound before arriving at the Turning island. It gives you a mouthwatering opportunity for sightseeing without having the need to walk off road.<\\/span><\\/p>\",\"total_people\":null,\"selected_people\":null,\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\"}', '2021-11-17 02:07:49', '2021-11-17 02:07:49'),
(63, 1, 'admin/places/create', 'GET', '180.175.17.235', '[]', '2021-11-17 02:07:49', '2021-11-17 02:07:49'),
(64, 1, 'admin/places', 'POST', '180.175.17.235', '{\"name\":\"British Columbia\",\"price\":\"1276\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton. The highway takes you via the coast of the Pacific all the way to Howe Sound before arriving at the Turning island. It gives you a mouthwatering opportunity for sightseeing without having the need to walk off road.<\\/span><\\/p>\",\"total_people\":\"5\",\"selected_people\":null,\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\"}', '2021-11-17 02:08:45', '2021-11-17 02:08:45'),
(65, 1, 'admin/places/create', 'GET', '180.175.17.235', '[]', '2021-11-17 02:08:45', '2021-11-17 02:08:45'),
(66, 1, 'admin/places', 'POST', '180.175.17.235', '{\"name\":\"British Columbia\",\"price\":\"1276\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton. The highway takes you via the coast of the Pacific all the way to Howe Sound before arriving at the Turning island. It gives you a mouthwatering opportunity for sightseeing without having the need to walk off road.<\\/span><\\/p>\",\"total_people\":\"5\",\"selected_people\":\"5\",\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\"}', '2021-11-17 02:09:08', '2021-11-17 02:09:08'),
(67, 1, 'admin/places', 'GET', '180.175.17.235', '[]', '2021-11-17 02:09:09', '2021-11-17 02:09:09'),
(68, 1, 'admin/places/create', 'GET', '180.175.17.235', '{\"_pjax\":\"#pjax-container\"}', '2021-11-17 02:09:15', '2021-11-17 02:09:15'),
(69, 1, 'admin/places', 'POST', '180.175.17.235', '{\"name\":\"Icefields Parkway\",\"price\":\"2153\",\"location\":\"Icefields Parkway, Alberta\",\"stars\":\"5\",\"total_people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This stretches for a straight 234 kilometers from Banff to Jasper. The Icefields Parkway offers you the picturesque panorama of Alberta\\u2019s most talked about mountain vistas. Some of these include Lake Louise, Peyto Lake, and the Columbia Icefields.<\\/span><br style=\\\"box-sizing: border-box; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\\\"\\/><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This region is also frequented by a number of ancient glaciers<\\/span><\\/p>\",\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}', '2021-11-17 02:10:43', '2021-11-17 02:10:43'),
(70, 1, 'admin/places', 'GET', '180.175.17.235', '[]', '2021-11-17 02:10:44', '2021-11-17 02:10:44'),
(71, 1, 'admin/places', 'GET', '180.175.17.235', '[]', '2021-11-17 02:10:55', '2021-11-17 02:10:55'),
(72, 1, 'admin/places', 'GET', '180.175.17.235', '[]', '2021-11-17 02:11:20', '2021-11-17 02:11:20'),
(73, 1, 'admin/places', 'GET', '180.175.17.235', '[]', '2021-11-17 02:12:01', '2021-11-17 02:12:01'),
(74, 1, 'admin/places/1/edit', 'GET', '180.175.17.235', '{\"_pjax\":\"#pjax-container\"}', '2021-11-17 02:12:32', '2021-11-17 02:12:32'),
(75, 1, 'admin/articles', 'GET', '180.175.17.235', '{\"_pjax\":\"#pjax-container\"}', '2021-11-17 02:14:06', '2021-11-17 02:14:06'),
(76, 1, 'admin/article-types', 'GET', '180.175.17.235', '{\"_pjax\":\"#pjax-container\"}', '2021-11-17 02:14:08', '2021-11-17 02:14:08'),
(77, 1, 'admin/users', 'GET', '180.175.17.235', '{\"_pjax\":\"#pjax-container\"}', '2021-11-17 02:14:10', '2021-11-17 02:14:10'),
(78, 1, 'admin/articles', 'GET', '180.175.17.235', '{\"_pjax\":\"#pjax-container\"}', '2021-11-17 02:14:11', '2021-11-17 02:14:11'),
(79, 1, 'admin/places', 'GET', '180.175.17.235', '{\"_pjax\":\"#pjax-container\"}', '2021-11-17 02:15:36', '2021-11-17 02:15:36'),
(80, 1, 'admin/places/create', 'GET', '180.175.17.235', '{\"_pjax\":\"#pjax-container\"}', '2021-11-17 02:15:38', '2021-11-17 02:15:38'),
(81, 1, 'admin/places', 'POST', '180.175.17.235', '{\"name\":\"Moraine Lake\",\"price\":\"3456\",\"location\":\"Moraine Lake, Alberta\",\"stars\":\"3\",\"total_people\":\"5\",\"selected_people\":\"4\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">Moraine Lake is yet another astonishing geographical location that you cannot afford to miss out on if you\\u2019re traveling along the Icefields Parkway. Moraine Lake is located in the Banff and is a promising epitome of ecstatic blue waters. This lake is fed from the glaciers and is gifted its startling blue color from the silicon deposits from the melting glaciers<\\/span><\\/p>\",\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}', '2021-11-17 02:16:31', '2021-11-17 02:16:31'),
(82, 1, 'admin/places', 'GET', '180.175.17.235', '[]', '2021-11-17 02:16:31', '2021-11-17 02:16:31'),
(83, 1, 'admin/places/create', 'GET', '180.175.17.235', '{\"_pjax\":\"#pjax-container\"}', '2021-11-17 02:17:49', '2021-11-17 02:17:49'),
(84, 1, 'admin/places/create', 'GET', '180.175.17.235', '[]', '2021-11-17 02:17:52', '2021-11-17 02:17:52'),
(85, 1, 'admin/places', 'POST', '180.175.17.235', '{\"name\":\"Ontario\",\"price\":\"3312\",\"location\":\"Killarney Provincial Park\",\"stars\":\"4\",\"total_people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">If you\\u2019re in Canada and if you\\u2019re a sucker for mountains, Killarney Provincial Park in&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\/ontario\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Ontario<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;is your best catch for Canada mountains near Toronto. This region makes the center of the La Cloche Mountain Range.<\\/span><\\/p>\",\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}', '2021-11-17 02:18:46', '2021-11-17 02:18:46'),
(86, 1, 'admin/places', 'GET', '180.175.17.235', '[]', '2021-11-17 02:18:46', '2021-11-17 02:18:46'),
(87, 1, 'admin/places', 'GET', '180.175.17.235', '[]', '2021-11-17 02:20:22', '2021-11-17 02:20:22'),
(88, 1, 'admin/places', 'GET', '180.175.17.235', '[]', '2021-11-17 02:22:56', '2021-11-17 02:22:56'),
(89, 1, 'admin/places/1/edit', 'GET', '180.175.17.235', '{\"_pjax\":\"#pjax-container\"}', '2021-11-17 02:23:01', '2021-11-17 02:23:01'),
(90, 1, 'admin/places/1', 'PUT', '180.175.17.235', '{\"name\":\"British Columbia\",\"price\":\"1276\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"total_people\":\"5\",\"selected_people\":\"5\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton. The highway takes you via the coast of the Pacific all the way to Howe Sound before arriving at the Turning island. It gives you a mouthwatering opportunity for sightseeing without having the need to walk off road.<\\/span><\\/p>\",\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}', '2021-11-17 02:23:07', '2021-11-17 02:23:07'),
(91, 1, 'admin/places', 'GET', '180.175.17.235', '[]', '2021-11-17 02:23:07', '2021-11-17 02:23:07'),
(92, 1, 'admin/places/2/edit', 'GET', '180.175.17.235', '{\"_pjax\":\"#pjax-container\"}', '2021-11-17 02:23:10', '2021-11-17 02:23:10'),
(93, 1, 'admin/places/2', 'PUT', '180.175.17.235', '{\"name\":\"Icefields Parkway\",\"price\":\"2153\",\"location\":\"Icefields Parkway, Alberta\",\"stars\":\"5\",\"total_people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This stretches for a straight 234 kilometers from Banff to Jasper. The Icefields Parkway offers you the picturesque panorama of Alberta\\u2019s most talked about mountain vistas. Some of these include Lake Louise, Peyto Lake, and the Columbia Icefields.<\\/span><br style=\\\"box-sizing: border-box; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\\\"\\/><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This region is also frequented by a number of ancient glaciers<\\/span><\\/p>\",\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}', '2021-11-17 02:23:18', '2021-11-17 02:23:18'),
(94, 1, 'admin/places', 'GET', '180.175.17.235', '[]', '2021-11-17 02:23:18', '2021-11-17 02:23:18'),
(95, 1, 'admin/places', 'GET', '180.175.17.235', '[]', '2021-11-17 03:12:02', '2021-11-17 03:12:02'),
(96, 1, 'admin/articles', 'GET', '116.224.235.15', '[]', '2021-11-19 05:37:22', '2021-11-19 05:37:22'),
(97, 1, 'admin/places', 'GET', '116.224.235.15', '{\"_pjax\":\"#pjax-container\"}', '2021-11-19 05:37:27', '2021-11-19 05:37:27'),
(98, 1, 'admin/places/1/edit', 'GET', '116.224.235.15', '{\"_pjax\":\"#pjax-container\"}', '2021-11-19 05:37:31', '2021-11-19 05:37:31'),
(99, 1, 'admin/places/1', 'PUT', '116.224.235.15', '{\"name\":\"British Columbia\",\"price\":\"1276\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"total_people\":null,\"selected_people\":\"5\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton. The highway takes you via the coast of the Pacific all the way to Howe Sound before arriving at the Turning island.&nbsp;<\\/span><\\/p>\",\"_token\":\"csmn0uJipj7DfXFryYJlaz010r03aRaKhuIHVjHu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}', '2021-11-19 05:37:37', '2021-11-19 05:37:37'),
(100, 1, 'admin/places/1/edit', 'GET', '116.224.235.15', '[]', '2021-11-19 05:37:37', '2021-11-19 05:37:37'),
(101, 1, 'admin/places/1/edit', 'GET', '116.224.235.15', '[]', '2021-11-19 05:39:12', '2021-11-19 05:39:12'),
(102, 1, 'admin/places/1', 'PUT', '116.224.235.15', '{\"name\":\"British Columbia\",\"price\":\"1276\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton. The highway takes you via the coast of the Pacific all the way to Howe Sound before arriving at the Turning island.&nbsp;<\\/span><\\/p>\",\"_token\":\"csmn0uJipj7DfXFryYJlaz010r03aRaKhuIHVjHu\",\"_method\":\"PUT\"}', '2021-11-19 05:39:17', '2021-11-19 05:39:17'),
(103, 1, 'admin/places', 'GET', '116.224.235.15', '[]', '2021-11-19 05:39:17', '2021-11-19 05:39:17'),
(104, 1, 'admin/places/2/edit', 'GET', '116.224.235.15', '{\"_pjax\":\"#pjax-container\"}', '2021-11-19 05:39:20', '2021-11-19 05:39:20'),
(105, 1, 'admin/places/2', 'PUT', '116.224.235.15', '{\"name\":\"Icefields Parkway\",\"price\":\"2153\",\"location\":\"Icefields Parkway, Alberta\",\"stars\":\"5\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This stretches for a straight 234 kilometers from Banff to Jasper. The Icefields Parkway offers you the picturesque panorama of Alberta\\u2019s most talked about mountain vistas. Some of these include Lake Louise, Peyto Lake, and the Columbia Icefields.<\\/span><br\\/><\\/p>\",\"_token\":\"csmn0uJipj7DfXFryYJlaz010r03aRaKhuIHVjHu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}', '2021-11-19 05:39:28', '2021-11-19 05:39:28'),
(106, 1, 'admin/places', 'GET', '116.224.235.15', '[]', '2021-11-19 05:39:28', '2021-11-19 05:39:28'),
(107, 1, 'admin/places/3/edit', 'GET', '116.224.235.15', '{\"_pjax\":\"#pjax-container\"}', '2021-11-19 05:39:31', '2021-11-19 05:39:31'),
(108, 1, 'admin/places/3', 'PUT', '116.224.235.15', '{\"name\":\"Moraine Lake\",\"price\":\"3456\",\"location\":\"Moraine Lake, Alberta\",\"stars\":\"3\",\"people\":\"5\",\"selected_people\":\"4\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">Moraine Lake is yet another astonishing geographical location that you cannot afford to miss out on if you\\u2019re traveling along the Icefields Parkway. Moraine Lake is located in the Banff and is a promising epitome of ecstatic blue waters.&nbsp;<\\/span><\\/p>\",\"_token\":\"csmn0uJipj7DfXFryYJlaz010r03aRaKhuIHVjHu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}', '2021-11-19 05:39:37', '2021-11-19 05:39:37'),
(109, 1, 'admin/places', 'GET', '116.224.235.15', '[]', '2021-11-19 05:39:37', '2021-11-19 05:39:37'),
(110, 1, 'admin/places/4/edit', 'GET', '116.224.235.15', '{\"_pjax\":\"#pjax-container\"}', '2021-11-19 05:39:39', '2021-11-19 05:39:39'),
(111, 1, 'admin/places/4', 'PUT', '116.224.235.15', '{\"name\":\"Ontario\",\"price\":\"3312\",\"location\":\"Killarney Provincial Park\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">If you\\u2019re in Canada and if you\\u2019re a sucker for mountains, Killarney Provincial Park in&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\/ontario\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Ontario<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;is your best catch for Canada mountains near Toronto. This region makes the center of the La Cloche Mountain Range.<\\/span><\\/p>\",\"_token\":\"csmn0uJipj7DfXFryYJlaz010r03aRaKhuIHVjHu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}', '2021-11-19 05:39:42', '2021-11-19 05:39:42'),
(112, 1, 'admin/places', 'GET', '116.224.235.15', '[]', '2021-11-19 05:39:42', '2021-11-19 05:39:42'),
(113, 1, 'admin/places/1/edit', 'GET', '116.224.235.15', '{\"_pjax\":\"#pjax-container\"}', '2021-11-19 05:39:48', '2021-11-19 05:39:48'),
(114, 1, 'admin/places/1', 'PUT', '116.224.235.15', '{\"name\":\"British Columbia\",\"price\":\"1276\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton.&nbsp;<\\/span><\\/p>\",\"_token\":\"csmn0uJipj7DfXFryYJlaz010r03aRaKhuIHVjHu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}', '2021-11-19 05:39:55', '2021-11-19 05:39:55'),
(115, 1, 'admin/places', 'GET', '116.224.235.15', '[]', '2021-11-19 05:39:56', '2021-11-19 05:39:56'),
(116, 1, 'admin/places/2/edit', 'GET', '116.224.235.15', '{\"_pjax\":\"#pjax-container\"}', '2021-11-19 05:39:57', '2021-11-19 05:39:57'),
(117, 1, 'admin/places/2', 'PUT', '116.224.235.15', '{\"name\":\"Icefields Parkway\",\"price\":\"2153\",\"location\":\"Icefields Parkway, Alberta\",\"stars\":\"5\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This stretches for a straight 234 kilometers from Banff to Jasper. The Icefields Parkway offers you the picturesque panorama of Alberta\\u2019s most talked about mountain vistas.&nbsp;<\\/span><br\\/><\\/p>\",\"_token\":\"csmn0uJipj7DfXFryYJlaz010r03aRaKhuIHVjHu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}', '2021-11-19 05:40:05', '2021-11-19 05:40:05'),
(118, 1, 'admin/places', 'GET', '116.224.235.15', '[]', '2021-11-19 05:40:05', '2021-11-19 05:40:05'),
(119, 1, 'admin/places/3/edit', 'GET', '116.224.235.15', '{\"_pjax\":\"#pjax-container\"}', '2021-11-19 05:40:30', '2021-11-19 05:40:30'),
(120, 1, 'admin/places/3', 'PUT', '116.224.235.15', '{\"name\":\"Moraine Lake\",\"price\":\"3456\",\"location\":\"Moraine Lake, Alberta\",\"stars\":\"3\",\"people\":\"5\",\"selected_people\":\"4\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">Moraine Lake is yet another astonishing geographical location that you cannot afford to miss out on if you\\u2019re traveling along the Icefields Parkway.&nbsp;<\\/span><\\/p>\",\"_token\":\"csmn0uJipj7DfXFryYJlaz010r03aRaKhuIHVjHu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}', '2021-11-19 05:40:36', '2021-11-19 05:40:36'),
(121, 1, 'admin/places', 'GET', '116.224.235.15', '[]', '2021-11-19 05:40:37', '2021-11-19 05:40:37'),
(122, 1, 'admin/places/4/edit', 'GET', '116.224.235.15', '{\"_pjax\":\"#pjax-container\"}', '2021-11-19 05:40:39', '2021-11-19 05:40:39'),
(123, 1, 'admin/places/4', 'PUT', '116.224.235.15', '{\"name\":\"Ontario\",\"price\":\"3312\",\"location\":\"Killarney Provincial Park\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">If you\\u2019re in Canada and if you\\u2019re a sucker for mountains, Killarney Provincial Park in&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\/ontario\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Ontario<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;is your best catch for Canada mountains near Toronto.&nbsp;<\\/span><\\/p>\",\"_token\":\"csmn0uJipj7DfXFryYJlaz010r03aRaKhuIHVjHu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}', '2021-11-19 05:40:44', '2021-11-19 05:40:44'),
(124, 1, 'admin/places', 'GET', '116.224.235.15', '[]', '2021-11-19 05:40:45', '2021-11-19 05:40:45'),
(125, 1, 'admin/articles', 'GET', '116.224.235.15', '[]', '2021-11-19 06:16:18', '2021-11-19 06:16:18'),
(126, 1, 'admin/places', 'GET', '116.224.235.15', '{\"_pjax\":\"#pjax-container\"}', '2021-11-19 06:16:20', '2021-11-19 06:16:20'),
(127, 1, 'admin/places/2/edit', 'GET', '116.224.235.15', '{\"_pjax\":\"#pjax-container\"}', '2021-11-19 06:16:25', '2021-11-19 06:16:25'),
(128, 1, 'admin/places/2', 'PUT', '116.224.235.15', '{\"name\":\"Icefields Parkway\",\"price\":\"2153\",\"location\":\"Icefields , Alberta\",\"stars\":\"5\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This stretches for a straight 234 kilometers from Banff to Jasper. The Icefields Parkway offers you the picturesque panorama of Alberta\\u2019s most talked about mountain vistas.&nbsp;<\\/span><br\\/><\\/p>\",\"_token\":\"csmn0uJipj7DfXFryYJlaz010r03aRaKhuIHVjHu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}', '2021-11-19 06:16:34', '2021-11-19 06:16:34'),
(129, 1, 'admin/places', 'GET', '116.224.235.15', '[]', '2021-11-19 06:16:34', '2021-11-19 06:16:34'),
(130, 1, 'admin/places/2/edit', 'GET', '116.224.235.15', '{\"_pjax\":\"#pjax-container\"}', '2021-11-19 06:17:59', '2021-11-19 06:17:59'),
(131, 1, 'admin/places/2', 'PUT', '116.224.235.15', '{\"name\":\"Icefields\",\"price\":\"2153\",\"location\":\"Icefields, Alberta\",\"stars\":\"5\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This stretches for a straight 234 kilometers from Banff to Jasper. The Icefields Parkway offers you the picturesque panorama of Alberta\\u2019s most talked about mountain vistas.&nbsp;<\\/span><br\\/><\\/p>\",\"_token\":\"csmn0uJipj7DfXFryYJlaz010r03aRaKhuIHVjHu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}', '2021-11-19 06:18:09', '2021-11-19 06:18:09'),
(132, 1, 'admin/places', 'GET', '116.224.235.15', '[]', '2021-11-19 06:18:09', '2021-11-19 06:18:09'),
(133, 1, 'admin/places/1/edit', 'GET', '116.224.235.15', '[]', '2021-11-19 06:59:35', '2021-11-19 06:59:35'),
(134, 1, 'admin/places', 'GET', '116.224.235.15', '[]', '2021-11-19 07:00:24', '2021-11-19 07:00:24'),
(135, 1, 'admin/places/2/edit', 'GET', '116.224.235.15', '{\"_pjax\":\"#pjax-container\"}', '2021-11-19 07:00:27', '2021-11-19 07:00:27'),
(136, 1, 'admin/places', 'GET', '116.224.235.15', '{\"_pjax\":\"#pjax-container\"}', '2021-11-19 07:00:52', '2021-11-19 07:00:52'),
(137, 1, 'admin/places/3/edit', 'GET', '116.224.235.15', '{\"_pjax\":\"#pjax-container\"}', '2021-11-19 07:00:55', '2021-11-19 07:00:55'),
(138, 1, 'admin', 'GET', '82.205.1.223', '[]', '2021-12-08 03:52:01', '2021-12-08 03:52:01'),
(139, 1, 'admin/article-types', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\"}', '2021-12-08 03:52:15', '2021-12-08 03:52:15'),
(140, 1, 'admin/articles', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\"}', '2021-12-08 03:52:17', '2021-12-08 03:52:17'),
(141, 1, 'admin/places', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\"}', '2021-12-08 03:52:26', '2021-12-08 03:52:26'),
(142, 1, 'admin/auth/users', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\"}', '2021-12-08 03:52:34', '2021-12-08 03:52:34'),
(143, 1, 'admin/auth/setting', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\"}', '2021-12-08 03:52:50', '2021-12-08 03:52:50'),
(144, 1, 'admin/article-types', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\"}', '2021-12-08 03:52:58', '2021-12-08 03:52:58'),
(145, 1, 'admin/articles', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\"}', '2021-12-08 03:53:00', '2021-12-08 03:53:00'),
(146, 1, 'admin/articles/create', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\"}', '2021-12-08 03:53:03', '2021-12-08 03:53:03'),
(147, 1, 'admin/auth/permissions', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\"}', '2021-12-08 03:53:08', '2021-12-08 03:53:08'),
(148, 1, 'admin/auth/menu', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\"}', '2021-12-08 03:53:25', '2021-12-08 03:53:25'),
(149, 1, 'admin/auth/roles', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\"}', '2021-12-08 03:53:33', '2021-12-08 03:53:33'),
(150, 1, 'admin/auth/roles', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2021-12-08 04:26:23', '2021-12-08 04:26:23'),
(151, 1, 'admin/auth/roles', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\"}', '2021-12-08 04:26:29', '2021-12-08 04:26:29'),
(152, 1, 'admin/auth/roles', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\"}', '2021-12-08 04:26:33', '2021-12-08 04:26:33'),
(153, 1, 'admin/article-types', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\"}', '2021-12-08 04:26:35', '2021-12-08 04:26:35'),
(154, 1, 'admin/places', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\"}', '2021-12-08 04:26:39', '2021-12-08 04:26:39'),
(155, 1, 'admin/places/create', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\"}', '2021-12-08 04:26:44', '2021-12-08 04:26:44'),
(156, 1, 'admin/places', 'POST', '82.205.1.223', '{\"name\":\"Gaza\",\"price\":\"10\",\"location\":\"Palestine, Gaza\",\"stars\":\"5\",\"people\":\"5\",\"selected_people\":\"4\",\"description\":\"<p>Dome of the rock the beautiful and amazing human made architectural.<\\/p>\",\"_token\":\"jG1U1iWfeEo0sYzdJD2FlJzECW5vTYcBVk4Ka7Zl\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}', '2021-12-08 04:29:53', '2021-12-08 04:29:53'),
(157, 1, 'admin/places', 'GET', '82.205.1.223', '[]', '2021-12-08 04:29:54', '2021-12-08 04:29:54'),
(158, 1, 'admin/places', 'GET', '82.205.25.170', '[]', '2021-12-08 15:01:40', '2021-12-08 15:01:40'),
(159, 1, 'admin/articles', 'GET', '180.175.17.8', '[]', '2021-12-11 21:50:22', '2021-12-11 21:50:22'),
(160, 1, 'admin/places', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-11 21:50:24', '2021-12-11 21:50:24'),
(161, 1, 'admin/places/5/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-11 21:51:03', '2021-12-11 21:51:03'),
(162, 1, 'admin/places/5/edit', 'GET', '180.175.17.8', '[]', '2021-12-13 23:19:35', '2021-12-13 23:19:35'),
(163, 1, 'admin/articles', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-14 18:27:40', '2021-12-14 18:27:40'),
(164, 1, 'admin/places', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-14 18:27:43', '2021-12-14 18:27:43'),
(165, 1, 'admin/articles', 'GET', '223.104.212.153', '[]', '2021-12-17 22:21:45', '2021-12-17 22:21:45'),
(166, 1, 'admin/auth/users', 'GET', '223.104.212.153', '{\"_pjax\":\"#pjax-container\"}', '2021-12-17 22:21:52', '2021-12-17 22:21:52'),
(167, 1, 'admin/auth/users/1/edit', 'GET', '223.104.212.153', '{\"_pjax\":\"#pjax-container\"}', '2021-12-17 22:21:56', '2021-12-17 22:21:56'),
(168, 1, 'admin/auth/users/1', 'PUT', '223.104.212.153', '{\"username\":\"admin\",\"name\":\"Administrator\",\"password\":\"admin1234\",\"password_confirmation\":\"admin1234\",\"roles\":[\"1\",null],\"permissions\":[null],\"_token\":\"lexAFNMUDD87ySnp2CrCWmWNoLMnqAZFYxRhtFP5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/auth\\/users\"}', '2021-12-17 22:22:14', '2021-12-17 22:22:14'),
(169, 1, 'admin/auth/users', 'GET', '223.104.212.153', '[]', '2021-12-17 22:22:14', '2021-12-17 22:22:14'),
(170, 1, 'admin/auth/logout', 'GET', '223.104.212.153', '{\"_pjax\":\"#pjax-container\"}', '2021-12-17 22:25:35', '2021-12-17 22:25:35'),
(171, 1, 'admin', 'GET', '223.104.212.153', '[]', '2021-12-17 22:25:52', '2021-12-17 22:25:52'),
(172, 1, 'admin', 'GET', '180.175.17.8', '[]', '2021-12-22 22:21:37', '2021-12-22 22:21:37'),
(173, 1, 'admin/places', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-22 22:32:01', '2021-12-22 22:32:01'),
(174, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-22 22:32:11', '2021-12-22 22:32:11'),
(175, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"British Columbia\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton.&nbsp;<\\/span><\\/p>\",\"_token\":\"RprprYTMQrKhj8cfk01DwqwkClMUGlw6yawxZK78\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-22 22:32:39', '2021-12-22 22:32:39'),
(176, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-22 22:32:39', '2021-12-22 22:32:39'),
(177, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-22 22:33:54', '2021-12-22 22:33:54'),
(178, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-22 22:34:11', '2021-12-22 22:34:11'),
(179, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-22 22:58:48', '2021-12-22 22:58:48'),
(180, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"British Columbia\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton.&nbsp;<\\/span><\\/p>\",\"_token\":\"RprprYTMQrKhj8cfk01DwqwkClMUGlw6yawxZK78\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-22 22:59:33', '2021-12-22 22:59:33'),
(181, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-22 22:59:33', '2021-12-22 22:59:33'),
(182, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-22 23:03:14', '2021-12-22 23:03:14'),
(183, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"British Columbia\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton.&nbsp;<\\/span><\\/p>\",\"_token\":\"RprprYTMQrKhj8cfk01DwqwkClMUGlw6yawxZK78\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-22 23:03:35', '2021-12-22 23:03:35'),
(184, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-22 23:03:35', '2021-12-22 23:03:35'),
(185, 1, 'admin/places/2/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-22 23:03:38', '2021-12-22 23:03:38'),
(186, 1, 'admin/places/2', 'PUT', '180.175.17.8', '{\"name\":\"Sweet Dessert\",\"price\":\"2153\",\"location\":\"Icefields, Alberta\",\"stars\":\"5\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p>The best sweet dessert<\\/p>\",\"_token\":\"RprprYTMQrKhj8cfk01DwqwkClMUGlw6yawxZK78\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-22 23:04:26', '2021-12-22 23:04:26'),
(187, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-22 23:04:26', '2021-12-22 23:04:26'),
(188, 1, 'admin/places/3/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-22 23:04:31', '2021-12-22 23:04:31');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(189, 1, 'admin/places/3', 'PUT', '180.175.17.8', '{\"name\":\"Chinese Side\",\"price\":\"3456\",\"location\":\"Moraine Lake, Alberta\",\"stars\":\"3\",\"people\":\"5\",\"selected_people\":\"4\",\"description\":\"<p style=\\\"border: 0px; margin-top: 0px; margin-bottom: 1.3em; padding: 0px; line-height: 1.8; color: rgb(58, 58, 58); font-family: Montserrat, sans-serif; font-size: 20px; white-space: normal; background-color: rgb(255, 255, 255);\\\">Enjoy these flavors any time of day.<\\/p><p style=\\\"border: 0px; margin-top: 0px; margin-bottom: 1.3em; padding: 0px; line-height: 1.8; color: rgb(58, 58, 58); font-family: Montserrat, sans-serif; font-size: 20px; white-space: normal; background-color: rgb(255, 255, 255);\\\">Whether it\\u2019s lunch or dinner, these side dish recipes are fit for the occasion. Pick out a couple and give them a try!<\\/p><p style=\\\"border: 0px; margin-top: 0px; margin-bottom: 1.3em; padding: 0px; line-height: 1.8; color: rgb(58, 58, 58); font-family: Montserrat, sans-serif; font-size: 20px; white-space: normal; background-color: rgb(255, 255, 255);\\\">If you\\u2019re looking for something savory, you\\u2019ve come to the right place.<\\/p><p style=\\\"border: 0px; margin-top: 0px; margin-bottom: 1.3em; padding: 0px; line-height: 1.8; color: rgb(58, 58, 58); font-family: Montserrat, sans-serif; font-size: 20px; white-space: normal; background-color: rgb(255, 255, 255);\\\">These side dishes are flavored with the best seasonings and spices China is known for.<\\/p><p style=\\\"border: 0px; margin-top: 0px; margin-bottom: 1.3em; padding: 0px; line-height: 1.8; color: rgb(58, 58, 58); font-family: Montserrat, sans-serif; font-size: 20px; white-space: normal; background-color: rgb(255, 255, 255);\\\">Block out some time to spend in the kitchen and call a couple of close friends. You might need some help to finish these off!<\\/p><p><br\\/><\\/p>\",\"_token\":\"RprprYTMQrKhj8cfk01DwqwkClMUGlw6yawxZK78\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-22 23:05:53', '2021-12-22 23:05:53'),
(190, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-22 23:05:53', '2021-12-22 23:05:53'),
(191, 1, 'admin/places/4/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-22 23:06:10', '2021-12-22 23:06:10'),
(192, 1, 'admin/places/4', 'PUT', '180.175.17.8', '{\"name\":\"Ontario\",\"price\":\"3312\",\"location\":\"Killarney Provincial Park\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p><a href=\\\"https:\\/\\/www.thespruceeats.com\\/introduction-to-cassava-yuca-2138084\\\" data-component=\\\"link\\\" data-source=\\\"inlineLink\\\" data-type=\\\"internalLink\\\" data-ordinal=\\\"1\\\" style=\\\"box-sizing: border-box; text-decoration-line: none; background-image: linear-gradient(to right, rgb(0, 143, 185) 0px, rgb(0, 143, 185) 100%); background-position: 0px 97%; background-repeat: repeat-x; background-size: 100% 1px; color: rgb(0, 143, 185); transition: background-image 0.25s ease 0s, color 0.25s ease 0s; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; white-space: normal; background-color: rgb(255, 255, 255);\\\">Yuca<\\/a><span style=\\\"font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; background-color: rgb(255, 255, 255);\\\">&nbsp;is a starchy root vegetable popular in Hispanic, Latin, and Caribbean cuisine. Used as an accompaniment for grilled meat or saucy preparations, yuca, also known as&nbsp;<\\/span><a href=\\\"https:\\/\\/www.thespruceeats.com\\/introduction-to-cassava-yuca-2138084\\\" data-component=\\\"link\\\" data-source=\\\"inlineLink\\\" data-type=\\\"internalLink\\\" data-ordinal=\\\"2\\\" style=\\\"box-sizing: border-box; text-decoration-line: none; background-image: linear-gradient(to right, rgb(0, 143, 185) 0px, rgb(0, 143, 185) 100%); background-position: 0px 97%; background-repeat: repeat-x; background-size: 100% 1px; color: rgb(0, 143, 185); transition: background-image 0.25s ease 0s, color 0.25s ease 0s; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; white-space: normal; background-color: rgb(255, 255, 255);\\\">cassava<\\/a><span style=\\\"font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; background-color: rgb(255, 255, 255);\\\">, can play the part of potatoes in pretty much any dish you can think of. By simply peeling, boiling, and mashing yuca, you&#39;ll have a delicious dish on your table that can serve as a side to stews or&nbsp;<\\/span><a href=\\\"https:\\/\\/www.thespruceeats.com\\/marinated-rump-roast-3058682\\\" data-component=\\\"link\\\" data-source=\\\"inlineLink\\\" data-type=\\\"internalLink\\\" data-ordinal=\\\"3\\\" style=\\\"box-sizing: border-box; text-decoration-line: none; background-image: linear-gradient(to right, rgb(0, 143, 185) 0px, rgb(0, 143, 185) 100%); background-position: 0px 97%; background-repeat: repeat-x; background-size: 100% 1px; color: rgb(0, 143, 185); transition: background-image 0.25s ease 0s, color 0.25s ease 0s; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; white-space: normal; background-color: rgb(255, 255, 255);\\\">roasts<\\/a><span style=\\\"font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; background-color: rgb(255, 255, 255);\\\">&nbsp;beautifully.<\\/span><\\/p>\",\"_token\":\"RprprYTMQrKhj8cfk01DwqwkClMUGlw6yawxZK78\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-22 23:07:49', '2021-12-22 23:07:49'),
(193, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-22 23:07:49', '2021-12-22 23:07:49'),
(194, 1, 'admin/places/5/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-22 23:09:55', '2021-12-22 23:09:55'),
(195, 1, 'admin/places/5', 'PUT', '180.175.17.8', '{\"name\":\"Gaza\",\"price\":\"10\",\"location\":\"Palestine, Gaza\",\"stars\":\"5\",\"people\":\"5\",\"selected_people\":\"4\",\"description\":\"<p><span style=\\\"font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; background-color: rgb(255, 255, 255);\\\">Commonly used in soups, eaten boiled with&nbsp;<\\/span><a href=\\\"https:\\/\\/www.thespruceeats.com\\/spanish-tomato-sauce-sofrito-sauce-recipe-3083539\\\" data-component=\\\"link\\\" data-source=\\\"inlineLink\\\" data-type=\\\"internalLink\\\" data-ordinal=\\\"1\\\" style=\\\"box-sizing: border-box; text-decoration-line: none; background-image: linear-gradient(to right, rgb(0, 143, 185) 0px, rgb(0, 143, 185) 100%); background-position: 0px 97%; background-repeat: repeat-x; background-size: 100% 1px; color: rgb(0, 143, 185); transition: background-image 0.25s ease 0s, color 0.25s ease 0s; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; white-space: normal; background-color: rgb(255, 255, 255);\\\">sofrito<\\/a><span style=\\\"font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; background-color: rgb(255, 255, 255);\\\">, or fried with a sprinkle of salt,&nbsp;<\\/span><a href=\\\"https:\\/\\/www.thespruceeats.com\\/cassava-yuca-recipes-2137742\\\" data-component=\\\"link\\\" data-source=\\\"inlineLink\\\" data-type=\\\"internalLink\\\" data-ordinal=\\\"2\\\" style=\\\"box-sizing: border-box; text-decoration-line: none; background-image: linear-gradient(to right, rgb(0, 143, 185) 0px, rgb(0, 143, 185) 100%); background-position: 0px 97%; background-repeat: repeat-x; background-size: 100% 1px; color: rgb(0, 143, 185); transition: background-image 0.25s ease 0s, color 0.25s ease 0s; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; white-space: normal; background-color: rgb(255, 255, 255);\\\">yuca<\\/a><span style=\\\"font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; background-color: rgb(255, 255, 255);\\\">&nbsp;is a wonderful addition to your ingredient list. It&#39;s affordable and widely available, so you can find it in most supermarkets and Latin stores.<\\/span><\\/p>\",\"_token\":\"RprprYTMQrKhj8cfk01DwqwkClMUGlw6yawxZK78\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-22 23:10:36', '2021-12-22 23:10:36'),
(196, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-22 23:10:37', '2021-12-22 23:10:37'),
(197, 1, 'admin/places/5/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-22 23:11:59', '2021-12-22 23:11:59'),
(198, 1, 'admin/places/5', 'PUT', '180.175.17.8', '{\"name\":\"Creamed Yuca (Cassava)\",\"price\":\"10\",\"location\":\"China\",\"stars\":\"5\",\"people\":\"5\",\"selected_people\":\"4\",\"description\":\"<p><span style=\\\"font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; background-color: rgb(255, 255, 255);\\\">Commonly used in soups, eaten boiled with&nbsp;<\\/span><a href=\\\"https:\\/\\/www.thespruceeats.com\\/spanish-tomato-sauce-sofrito-sauce-recipe-3083539\\\" data-component=\\\"link\\\" data-source=\\\"inlineLink\\\" data-type=\\\"internalLink\\\" data-ordinal=\\\"1\\\" style=\\\"box-sizing: border-box; text-decoration-line: none; background-image: linear-gradient(to right, rgb(0, 143, 185) 0px, rgb(0, 143, 185) 100%); background-position: 0px 97%; background-repeat: repeat-x; background-size: 100% 1px; color: rgb(0, 143, 185); transition: background-image 0.25s ease 0s, color 0.25s ease 0s; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; white-space: normal; background-color: rgb(255, 255, 255);\\\">sofrito<\\/a><span style=\\\"font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; background-color: rgb(255, 255, 255);\\\">, or fried with a sprinkle of salt,&nbsp;<\\/span><a href=\\\"https:\\/\\/www.thespruceeats.com\\/cassava-yuca-recipes-2137742\\\" data-component=\\\"link\\\" data-source=\\\"inlineLink\\\" data-type=\\\"internalLink\\\" data-ordinal=\\\"2\\\" style=\\\"box-sizing: border-box; text-decoration-line: none; background-image: linear-gradient(to right, rgb(0, 143, 185) 0px, rgb(0, 143, 185) 100%); background-position: 0px 97%; background-repeat: repeat-x; background-size: 100% 1px; color: rgb(0, 143, 185); transition: background-image 0.25s ease 0s, color 0.25s ease 0s; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; white-space: normal; background-color: rgb(255, 255, 255);\\\">yuca<\\/a><span style=\\\"font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; background-color: rgb(255, 255, 255);\\\">&nbsp;is a wonderful addition to your ingredient list. It&#39;s affordable and widely available, so you can find it in most supermarkets and Latin stores.<\\/span><\\/p>\",\"_token\":\"RprprYTMQrKhj8cfk01DwqwkClMUGlw6yawxZK78\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-22 23:12:13', '2021-12-22 23:12:13'),
(199, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-22 23:12:13', '2021-12-22 23:12:13'),
(200, 1, 'admin/places/4/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-22 23:14:19', '2021-12-22 23:14:19'),
(201, 1, 'admin/places/4', 'PUT', '180.175.17.8', '{\"name\":\"Bitter Orange Marinade\",\"price\":\"33\",\"location\":\"Killarney Provincial Park\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p id=\\\"mntl-sc-block_1-0\\\" class=\\\"comp mntl-sc-block mntl-sc-block-html\\\" style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; padding: 0px; letter-spacing: -0.1px; counter-reset: section 0; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; white-space: normal; background-color: rgb(255, 255, 255);\\\">Bitter oranges are often used in Caribbean cuisine as a breakdown agent in marinades. Sometimes called sour oranges, they add a unique citrus flavor to any kind of meat you might want to prepare. This marinade recipe goes well with pork, and I&#39;ve also used it with chicken with great results.<\\/p><p id=\\\"mntl-sc-block_1-0-2\\\" class=\\\"comp mntl-sc-block mntl-sc-block-html\\\" style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; padding: 0px; letter-spacing: -0.1px; counter-reset: section 0; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; white-space: normal; background-color: rgb(255, 255, 255);\\\">Bitter oranges grow on trees\\u2014specifically the&nbsp;<em style=\\\"box-sizing: border-box;\\\">citrus aurantium&nbsp;<\\/em>tree. Their fruit is much sourer than regular oranges and, as the name suggests, they&#39;re bitter. The flesh carries a hint of an aftertaste when it&#39;s eaten raw. Bitter oranges are uglier than regular oranges, with thick, rough skin.&nbsp;<\\/p><p><br\\/><\\/p>\",\"_token\":\"RprprYTMQrKhj8cfk01DwqwkClMUGlw6yawxZK78\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-22 23:15:25', '2021-12-22 23:15:25'),
(202, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-22 23:15:25', '2021-12-22 23:15:25'),
(203, 1, 'admin/places/4/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-22 23:15:58', '2021-12-22 23:15:58'),
(204, 1, 'admin/places', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-22 23:16:21', '2021-12-22 23:16:21'),
(205, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-22 23:22:57', '2021-12-22 23:22:57'),
(206, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton.&nbsp;<\\/span><\\/p>\",\"_token\":\"RprprYTMQrKhj8cfk01DwqwkClMUGlw6yawxZK78\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-22 23:23:21', '2021-12-22 23:23:21'),
(207, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-22 23:23:21', '2021-12-22 23:23:21'),
(208, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-23 01:00:18', '2021-12-23 01:00:18'),
(209, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<header class=\\\"section__header \\\" style=\\\"box-sizing: border-box; margin: 1.875rem 0px 0px; padding: 0px 0px 1rem; position: relative; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);\\\"><h2 class=\\\"section__title section__title--dashed\\\" style=\\\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0.2rem; font-weight: 400; font-size: 1.5rem; background-image: repeating-linear-gradient(to right, rgb(221, 221, 221) 0px, rgb(221, 221, 221) 50%, transparent 50%, transparent 100%); background-position: left bottom; background-repeat: repeat-x; background-size: 8px 2px; line-height: 1.6;\\\">Ingredients<\\/h2><\\/header><ul class=\\\"structured-ingredients__list text-passage list-paddingleft-2\\\" style=\\\"list-style-type: none;\\\"><li class=\\\"structured-ingredients__\\\" style=\\\"\\\"><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">5<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">cloves<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">garlic<\\/span>, minced<\\/p><\\/li><li class=\\\"structured-ingredients__\\\" style=\\\"\\\"><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">3<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">bitter oranges<\\/span>, or 3\\/4 cup bottled bitter orange juice<\\/p><\\/li><li class=\\\"structured-ingredients__\\\" style=\\\"\\\"><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">3<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">tablespoons<\\/span>&nbsp;<a href=\\\"https:\\/\\/www.thespruceeats.com\\/types-of-olive-oil-1807855\\\" data-component=\\\"link\\\" data-source=\\\"inlineLink\\\" data-type=\\\"internalLink\\\" data-ordinal=\\\"1\\\" style=\\\"box-sizing: border-box; text-decoration-line: none; background-image: linear-gradient(to right, rgb(0, 143, 185) 0px, rgb(0, 143, 185) 100%); background-position: 0px 97%; background-repeat: repeat-x; background-size: 100% 1px; color: rgb(0, 143, 185); transition: background-image 0.25s ease 0s, color 0.25s ease 0s;\\\"><span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">olive oil<\\/span><\\/a><\\/p><\\/li><li class=\\\"structured-ingredients__\\\" style=\\\"\\\"><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">3&nbsp;<\\/span><span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">tablespoons<\\/span>&nbsp;finely chopped&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">fresh oregano leaves<\\/span><\\/p><\\/li><li class=\\\"structured-ingredients__\\\" style=\\\"\\\"><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">1<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">bay<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">leaf<\\/span>, preferably fresh, finely chopped<\\/p><\\/li><li class=\\\"structured-ingredients__\\\" style=\\\"\\\"><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">1\\/4<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">teaspoon<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">ground cumin<\\/span><\\/p><\\/li><li class=\\\"structured-ingredients__\\\" style=\\\"\\\"><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">Salt<\\/span>,<span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">&nbsp;to taste<\\/span><\\/p><\\/li><\\/ul><p><br\\/><\\/p>\",\"_token\":\"RprprYTMQrKhj8cfk01DwqwkClMUGlw6yawxZK78\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-23 01:00:25', '2021-12-23 01:00:25'),
(210, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-23 01:00:25', '2021-12-23 01:00:25'),
(211, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-23 01:01:08', '2021-12-23 01:01:08'),
(212, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<header class=\\\"section__header \\\" style=\\\"box-sizing: border-box; margin: 1.875rem 0px 0px; padding: 0px 0px 1rem; position: relative; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);\\\"><h2 class=\\\"section__title section__title--dashed\\\" style=\\\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0.2rem; font-weight: 400; font-size: 1.5rem; background-image: repeating-linear-gradient(to right, rgb(221, 221, 221) 0px, rgb(221, 221, 221) 50%, transparent 50%, transparent 100%); background-position: left bottom; background-repeat: repeat-x; background-size: 8px 2px; line-height: 1.6;\\\">Ingredients<\\/h2><\\/header><ul class=\\\"structured-ingredients__list text-passage list-paddingleft-2\\\" style=\\\"list-style-type: none;\\\"><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">5<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">cloves<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">garlic<\\/span>, minced<\\/p><\\/li><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">3<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">bitter oranges<\\/span>, or 3\\/4 cup bottled bitter orange juice<\\/p><\\/li><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">3<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">tablespoons<\\/span>&nbsp;<a href=\\\"https:\\/\\/www.thespruceeats.com\\/types-of-olive-oil-1807855\\\" data-component=\\\"link\\\" data-source=\\\"inlineLink\\\" data-type=\\\"internalLink\\\" data-ordinal=\\\"1\\\" style=\\\"box-sizing: border-box; text-decoration-line: none; background-image: linear-gradient(to right, rgb(0, 143, 185) 0px, rgb(0, 143, 185) 100%); background-position: 0px 97%; background-repeat: repeat-x; background-size: 100% 1px; color: rgb(0, 143, 185); transition: background-image 0.25s ease 0s, color 0.25s ease 0s;\\\"><span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">olive oil<\\/span><\\/a><\\/p><\\/li><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">3&nbsp;<\\/span><span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">tablespoons<\\/span>&nbsp;finely chopped&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">fresh oregano leaves<\\/span><\\/p><\\/li><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">1<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">bay<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">leaf<\\/span>, preferably fresh, finely chopped<\\/p><\\/li><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">1\\/4<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">teaspoon<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">ground cumin<\\/span><\\/p><\\/li><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">Salt<\\/span>,<span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">&nbsp;to taste<\\/span><\\/p><\\/li><\\/ul><p><br\\/><\\/p><ul style=\\\"list-style-type: none;\\\" class=\\\" list-paddingleft-2\\\"><li><p>You can make a passable substitute for sour orange juice by combining two parts regular orange juice with one part lemon juice and one part lime juice. Or, as an alternative, try two parts orange juice with one part grapefruit juice and a teaspoon of lime juice.<\\/p><\\/li><li><p>Add minced&nbsp;<a href=\\\"https:\\/\\/www.thespruceeats.com\\/hot-chile-peppers-scoville-scale-1807552\\\" data-component=\\\"link\\\" data-source=\\\"inlineLink\\\" data-type=\\\"internalLink\\\" data-ordinal=\\\"1\\\" style=\\\"box-sizing: border-box; text-decoration-line: none; background-image: linear-gradient(to right, rgb(0, 143, 185) 0px, rgb(0, 143, 185) 100%); background-position: 0px 97%; background-repeat: repeat-x; background-size: 100% 1px; color: rgb(0, 143, 185); transition: background-image 0.25s ease 0s, color 0.25s ease 0s;\\\">hot peppers<\\/a>&nbsp;if you prefer a spicier marinade.&nbsp;<\\/p><\\/li><li><p>You can substitute one or more different fresh herbs for the oregano; thyme and sage are both good options.<\\/p><\\/li><\\/ul><p><br\\/><\\/p>\",\"_token\":\"RprprYTMQrKhj8cfk01DwqwkClMUGlw6yawxZK78\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-23 01:01:16', '2021-12-23 01:01:16'),
(213, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-23 01:01:16', '2021-12-23 01:01:16'),
(214, 1, 'admin', 'GET', '58.39.14.207', '[]', '2021-12-23 06:50:48', '2021-12-23 06:50:48'),
(215, 1, 'admin/places', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-23 06:50:52', '2021-12-23 06:50:52'),
(216, 1, 'admin/places/create', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-23 06:50:55', '2021-12-23 06:50:55'),
(217, 1, 'admin/places', 'POST', '58.39.14.207', '{\"name\":\"Creole Rice Side Dish Recipe\",\"price\":\"12\",\"location\":\"china\",\"stars\":\"4\",\"people\":\"3\",\"selected_people\":\"3\",\"description\":\"<h2 id=\\\"mntl-sc-block_1-0-2\\\" class=\\\"comp mntl-sc-block lifestyle-sc-block-heading mntl-sc-block-heading\\\" style=\\\"box-sizing: border-box; margin: 1rem 0px 0.25rem; padding: 0px; font-weight: 500; font-size: 1.5rem; line-height: 1.25; font-family: &quot;Work Sans&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\\\"><span class=\\\"mntl-sc-block-heading__text\\\" style=\\\"box-sizing: border-box;\\\">Creole and Cajun Cookery<\\/span><\\/h2><p id=\\\"mntl-sc-block_1-0-3\\\" class=\\\"comp mntl-sc-block mntl-sc-block-html\\\" style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; padding: 0px; letter-spacing: -0.1px; counter-reset: section 0; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; white-space: normal; background-color: rgb(255, 255, 255);\\\">Creoles&nbsp;refer to the original European\\u2014particularly French and Spanish\\u2014settlers of New Orleans who were mostly from wealthy families, and who brought their personal chefs from Paris, Madrid, and other European capitals. Since many of the ingredients they traditionally used were unavailable locally, they adapted their recipes to include native Louisiana&nbsp;ingredients like shellfish&nbsp;<a href=\\\"https:\\/\\/www.thespruceeats.com\\/about-red-snapper-334338\\\" data-component=\\\"link\\\" data-source=\\\"inlineLink\\\" data-type=\\\"internalLink\\\" data-ordinal=\\\"1\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; text-decoration-line: none; background-image: linear-gradient(to right, rgb(0, 143, 185) 0px, rgb(0, 143, 185) 100%); background-position: 0px 97%; background-repeat: repeat-x; background-size: 100% 1px; color: rgb(0, 143, 185); transition: background-image 0.25s ease 0s, color 0.25s ease 0s;\\\">snapper<\\/a>, pompano, alligator, meats, game, and squash like cushaw and mirliton (chayote), sugar cane, and pecans. Add to that the cooking tips and seasonings from the native Indians, Caribbean, and African cooks, and this new style of <a href=\\\"https:\\/\\/www.thespruceeats.com\\/what-is-an-andouille-995561\\\" data-component=\\\"link\\\" data-source=\\\"inlineLink\\\" data-type=\\\"internalLink\\\" data-ordinal=\\\"2\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; text-decoration-line: none; background-image: linear-gradient(to right, rgb(0, 143, 185) 0px, rgb(0, 143, 185) 100%); background-position: 0px 97%; background-repeat: repeat-x; background-size: 100% 1px; color: rgb(0, 143, 185); transition: background-image 0.25s ease 0s, color 0.25s ease 0s;\\\">Creole cooking<\\/a>&nbsp;was born.<\\/p>\",\"_token\":\"Ezpf15qYXuW1IU9oXWCFIG9Azk9Rheatu0T51w0M\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-23 07:03:24', '2021-12-23 07:03:24'),
(218, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-23 07:03:24', '2021-12-23 07:03:24'),
(219, 1, 'admin/places/create', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-23 07:03:32', '2021-12-23 07:03:32'),
(220, 1, 'admin/places', 'POST', '58.39.14.207', '{\"name\":\"Cuban Fufu\",\"price\":\"10\",\"location\":\"Cuba\",\"stars\":\"5\",\"people\":\"0\",\"selected_people\":\"0\",\"description\":\"<p><span style=\\\"font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; background-color: rgb(255, 255, 255);\\\">Plantains are a popular ingredient in the Caribbean and are prepared in a variety of ways, similar to how potatoes are used in the United States. The tropical fruit can be incorporated into recipes when it is green as well as when it has ripened. One popular way to use&nbsp;<\\/span><a href=\\\"https:\\/\\/www.thespruceeats.com\\/introduction-to-plantains-2137973\\\" data-component=\\\"link\\\" data-source=\\\"inlineLink\\\" data-type=\\\"internalLink\\\" data-ordinal=\\\"1\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; text-decoration-line: none; background-image: linear-gradient(to right, rgb(0, 143, 185) 0px, rgb(0, 143, 185) 100%); background-position: 0px 97%; background-repeat: repeat-x; background-size: 100% 1px; color: rgb(0, 143, 185); transition: background-image 0.25s ease 0s, color 0.25s ease 0s; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; white-space: normal; background-color: rgb(255, 255, 255);\\\">plantains<\\/a><span style=\\\"font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; background-color: rgb(255, 255, 255);\\\">&nbsp;is in a stuffing; in Puerto Rico green plantains are made into&nbsp;<\\/span><a href=\\\"https:\\/\\/www.thespruceeats.com\\/traditional-mofongo-recipe-2138186\\\" data-component=\\\"link\\\" data-source=\\\"inlineLink\\\" data-type=\\\"internalLink\\\" data-ordinal=\\\"2\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; text-decoration-line: none; background-image: linear-gradient(to right, rgb(0, 143, 185) 0px, rgb(0, 143, 185) 100%); background-position: 0px 97%; background-repeat: repeat-x; background-size: 100% 1px; color: rgb(0, 143, 185); transition: background-image 0.25s ease 0s, color 0.25s ease 0s; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; white-space: normal; background-color: rgb(255, 255, 255);\\\">mofongo<\\/a><span style=\\\"font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; background-color: rgb(255, 255, 255);\\\">&nbsp;and in Cuba, the stuffing is made with ripe plantains and called fufu.<\\/span><\\/p>\",\"_token\":\"Ezpf15qYXuW1IU9oXWCFIG9Azk9Rheatu0T51w0M\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-23 07:04:49', '2021-12-23 07:04:49'),
(221, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-23 07:04:49', '2021-12-23 07:04:49'),
(222, 1, 'admin/places/1/edit', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-24 09:05:55', '2021-12-24 09:05:55'),
(223, 1, 'admin/places/1', 'PUT', '58.39.14.207', '{\"name\":\"Nutritious fruit meal\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<header class=\\\"section__header \\\" style=\\\"box-sizing: border-box; margin: 1.875rem 0px 0px; padding: 0px 0px 1rem; position: relative; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);\\\"><h2 class=\\\"section__title section__title--dashed\\\" style=\\\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0.2rem; font-weight: 400; font-size: 1.5rem; background-image: repeating-linear-gradient(to right, rgb(221, 221, 221) 0px, rgb(221, 221, 221) 50%, transparent 50%, transparent 100%); background-position: left bottom; background-repeat: repeat-x; background-size: 8px 2px; line-height: 1.6;\\\">Ingredients<\\/h2><\\/header><ul style=\\\"list-style-type: none;\\\" class=\\\" list-paddingleft-2\\\"><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">5<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">cloves<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">garlic<\\/span>, minced<\\/p><\\/li><li><p>&nbsp;options.<\\/p><\\/li><\\/ul><p><br\\/><\\/p>\",\"_token\":\"r8XWltlKUj6HDvHnGqL2Np0xa7pYWaW0vcuvZIls\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-24 09:06:06', '2021-12-24 09:06:06'),
(224, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-24 09:06:06', '2021-12-24 09:06:06'),
(225, 1, 'admin/places/2/edit', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-24 09:06:09', '2021-12-24 09:06:09'),
(226, 1, 'admin/places', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-24 09:06:12', '2021-12-24 09:06:12'),
(227, 1, 'admin/places/3/edit', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-24 09:06:15', '2021-12-24 09:06:15'),
(228, 1, 'admin/places/3', 'PUT', '58.39.14.207', '{\"name\":\"Chinese Side\",\"price\":\"3456\",\"location\":\"Moraine Lake, Alberta\",\"stars\":\"3\",\"people\":\"5\",\"selected_people\":\"4\",\"description\":\"<p style=\\\"border: 0px; margin-top: 0px; margin-bottom: 1.3em; padding: 0px; line-height: 1.8; color: rgb(58, 58, 58); font-family: Montserrat, sans-serif; font-size: 20px; white-space: normal; background-color: rgb(255, 255, 255);\\\">Enjoy these flavors any time of day.<\\/p><p><br\\/><\\/p>\",\"_token\":\"r8XWltlKUj6HDvHnGqL2Np0xa7pYWaW0vcuvZIls\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-24 09:06:22', '2021-12-24 09:06:22'),
(229, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-24 09:06:22', '2021-12-24 09:06:22'),
(230, 1, 'admin/places/4/edit', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-24 09:06:25', '2021-12-24 09:06:25'),
(231, 1, 'admin/places/4', 'PUT', '58.39.14.207', '{\"name\":\"Bitter Orange Marinade\",\"price\":\"33\",\"location\":\"Killarney Provincial Park\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p id=\\\"mntl-sc-block_1-0\\\" class=\\\"comp mntl-sc-block mntl-sc-block-html\\\" style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; padding: 0px; letter-spacing: -0.1px; counter-reset: section 0; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; white-space: normal; background-color: rgb(255, 255, 255);\\\">Bitter oranges are often used in Caribbean&nbsp;<\\/p><p><br\\/><\\/p>\",\"_token\":\"r8XWltlKUj6HDvHnGqL2Np0xa7pYWaW0vcuvZIls\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-24 09:06:36', '2021-12-24 09:06:36'),
(232, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-24 09:06:36', '2021-12-24 09:06:36'),
(233, 1, 'admin/places/5/edit', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-24 09:06:40', '2021-12-24 09:06:40'),
(234, 1, 'admin/places/5', 'PUT', '58.39.14.207', '{\"name\":\"Creamed Yuca (Cassava)\",\"price\":\"10\",\"location\":\"China\",\"stars\":\"5\",\"people\":\"5\",\"selected_people\":\"4\",\"description\":\"<p><span style=\\\"font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; background-color: rgb(255, 255, 255);\\\">Commonly used in soups, eaten boiled&nbsp;<\\/span><\\/p>\",\"_token\":\"r8XWltlKUj6HDvHnGqL2Np0xa7pYWaW0vcuvZIls\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-24 09:06:48', '2021-12-24 09:06:48'),
(235, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-24 09:06:48', '2021-12-24 09:06:48'),
(236, 1, 'admin/places/7/edit', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-24 09:06:52', '2021-12-24 09:06:52'),
(237, 1, 'admin/places/7', 'PUT', '58.39.14.207', '{\"name\":\"Cuban Fufu\",\"price\":\"10\",\"location\":\"Cuba\",\"stars\":\"5\",\"people\":\"0\",\"selected_people\":\"0\",\"description\":\"<p><span style=\\\"font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; background-color: rgb(255, 255, 255);\\\">Plantains are a popular ingredient<\\/span><\\/p>\",\"_token\":\"r8XWltlKUj6HDvHnGqL2Np0xa7pYWaW0vcuvZIls\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-24 09:06:58', '2021-12-24 09:06:58'),
(238, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-24 09:06:58', '2021-12-24 09:06:58'),
(239, 1, 'admin/places/6/edit', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-24 09:07:01', '2021-12-24 09:07:01'),
(240, 1, 'admin/places/6', 'PUT', '58.39.14.207', '{\"name\":\"Creole Rice Side Dish Recipe\",\"price\":\"12\",\"location\":\"china\",\"stars\":\"4\",\"people\":\"3\",\"selected_people\":\"3\",\"description\":\"<h2 id=\\\"mntl-sc-block_1-0-2\\\" class=\\\"comp mntl-sc-block lifestyle-sc-block-heading mntl-sc-block-heading\\\" style=\\\"box-sizing: border-box; margin: 1rem 0px 0.25rem; padding: 0px; font-weight: 500; font-size: 1.5rem; line-height: 1.25; font-family: &quot;Work Sans&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\\\"><span class=\\\"mntl-sc-block-heading__text\\\" style=\\\"box-sizing: border-box;\\\">Creole and Cajun Cookery<\\/span><\\/h2>\",\"_token\":\"r8XWltlKUj6HDvHnGqL2Np0xa7pYWaW0vcuvZIls\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-24 09:07:08', '2021-12-24 09:07:08'),
(241, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-24 09:07:08', '2021-12-24 09:07:08'),
(242, 1, 'admin', 'GET', '58.39.14.207', '[]', '2021-12-25 17:34:46', '2021-12-25 17:34:46'),
(243, 1, 'admin/places', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-25 17:35:02', '2021-12-25 17:35:02'),
(244, 1, 'admin/places/create', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-25 17:35:07', '2021-12-25 17:35:07'),
(245, 1, 'admin/places', 'POST', '58.39.14.207', '{\"name\":\"Dessert\",\"price\":\"5\",\"location\":\"china\",\"stars\":\"4\",\"people\":\"3\",\"selected_people\":\"2\",\"description\":\"<p>Amazing food to eat with.<\\/p>\",\"_token\":\"SARfHDUmZ3Q6eubD983mvsFXsEC9vWU8AHxVm169\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-25 17:36:29', '2021-12-25 17:36:29'),
(246, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-25 17:36:29', '2021-12-25 17:36:29'),
(247, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-25 17:47:05', '2021-12-25 17:47:05'),
(248, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-25 19:59:46', '2021-12-25 19:59:46'),
(249, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal in china\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<header class=\\\"section__header \\\" style=\\\"box-sizing: border-box; margin: 1.875rem 0px 0px; padding: 0px 0px 1rem; position: relative; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);\\\"><h2 class=\\\"section__title section__title--dashed\\\" style=\\\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0.2rem; font-weight: 400; font-size: 1.5rem; background-image: repeating-linear-gradient(to right, rgb(221, 221, 221) 0px, rgb(221, 221, 221) 50%, transparent 50%, transparent 100%); background-position: left bottom; background-repeat: repeat-x; background-size: 8px 2px; line-height: 1.6;\\\">Ingredients<\\/h2><\\/header><ul style=\\\"list-style-type: none;\\\" class=\\\" list-paddingleft-2\\\"><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">5<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">cloves<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">garlic<\\/span>, minced<\\/p><\\/li><li><p>&nbsp;options.<\\/p><\\/li><\\/ul><p><br\\/><\\/p>\",\"_token\":\"sIUpDzEbW2wjjMdn7WrZlqKpT9MCP7hgSkejSuDO\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-25 19:59:55', '2021-12-25 19:59:55'),
(250, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-25 19:59:55', '2021-12-25 19:59:55'),
(251, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-25 20:00:12', '2021-12-25 20:00:12'),
(252, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<header class=\\\"section__header \\\" style=\\\"box-sizing: border-box; margin: 1.875rem 0px 0px; padding: 0px 0px 1rem; position: relative; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);\\\"><h2 class=\\\"section__title section__title--dashed\\\" style=\\\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0.2rem; font-weight: 400; font-size: 1.5rem; background-image: repeating-linear-gradient(to right, rgb(221, 221, 221) 0px, rgb(221, 221, 221) 50%, transparent 50%, transparent 100%); background-position: left bottom; background-repeat: repeat-x; background-size: 8px 2px; line-height: 1.6;\\\">Ingredients<\\/h2><\\/header><ul style=\\\"list-style-type: none;\\\" class=\\\" list-paddingleft-2\\\"><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">5<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">cloves<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">garlic<\\/span>, minced<\\/p><\\/li><li><p>&nbsp;options.<\\/p><\\/li><\\/ul><p><br\\/><\\/p>\",\"_token\":\"sIUpDzEbW2wjjMdn7WrZlqKpT9MCP7hgSkejSuDO\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-25 20:00:21', '2021-12-25 20:00:21'),
(253, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-25 20:00:21', '2021-12-25 20:00:21'),
(254, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-25 20:02:13', '2021-12-25 20:02:13'),
(255, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal in china\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<header class=\\\"section__header \\\" style=\\\"box-sizing: border-box; margin: 1.875rem 0px 0px; padding: 0px 0px 1rem; position: relative; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);\\\"><h2 class=\\\"section__title section__title--dashed\\\" style=\\\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0.2rem; font-weight: 400; font-size: 1.5rem; background-image: repeating-linear-gradient(to right, rgb(221, 221, 221) 0px, rgb(221, 221, 221) 50%, transparent 50%, transparent 100%); background-position: left bottom; background-repeat: repeat-x; background-size: 8px 2px; line-height: 1.6;\\\">Ingredients<\\/h2><\\/header><ul style=\\\"list-style-type: none;\\\" class=\\\" list-paddingleft-2\\\"><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">5<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">cloves<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">garlic<\\/span>, minced<\\/p><\\/li><li><p>&nbsp;options.<\\/p><\\/li><\\/ul><p><br\\/><\\/p>\",\"_token\":\"sIUpDzEbW2wjjMdn7WrZlqKpT9MCP7hgSkejSuDO\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-25 20:02:22', '2021-12-25 20:02:22'),
(256, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-25 20:02:22', '2021-12-25 20:02:22'),
(257, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-25 20:15:27', '2021-12-25 20:15:27'),
(258, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<header class=\\\"section__header \\\" style=\\\"box-sizing: border-box; margin: 1.875rem 0px 0px; padding: 0px 0px 1rem; position: relative; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);\\\"><h2 class=\\\"section__title section__title--dashed\\\" style=\\\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0.2rem; font-weight: 400; font-size: 1.5rem; background-image: repeating-linear-gradient(to right, rgb(221, 221, 221) 0px, rgb(221, 221, 221) 50%, transparent 50%, transparent 100%); background-position: left bottom; background-repeat: repeat-x; background-size: 8px 2px; line-height: 1.6;\\\">Ingredients<\\/h2><\\/header><ul style=\\\"list-style-type: none;\\\" class=\\\" list-paddingleft-2\\\"><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">5<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">cloves<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">garlic<\\/span>, minced<\\/p><\\/li><li><p>&nbsp;options.<\\/p><\\/li><\\/ul><p><br\\/><\\/p>\",\"_token\":\"sIUpDzEbW2wjjMdn7WrZlqKpT9MCP7hgSkejSuDO\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-25 20:15:35', '2021-12-25 20:15:35'),
(259, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-25 20:15:35', '2021-12-25 20:15:35'),
(260, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-25 21:23:53', '2021-12-25 21:23:53');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(261, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal in china\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<header class=\\\"section__header \\\" style=\\\"box-sizing: border-box; margin: 1.875rem 0px 0px; padding: 0px 0px 1rem; position: relative; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);\\\"><h2 class=\\\"section__title section__title--dashed\\\" style=\\\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0.2rem; font-weight: 400; font-size: 1.5rem; background-image: repeating-linear-gradient(to right, rgb(221, 221, 221) 0px, rgb(221, 221, 221) 50%, transparent 50%, transparent 100%); background-position: left bottom; background-repeat: repeat-x; background-size: 8px 2px; line-height: 1.6;\\\">Ingredients<\\/h2><\\/header><ul style=\\\"list-style-type: none;\\\" class=\\\" list-paddingleft-2\\\"><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">5<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">cloves<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">garlic<\\/span>, minced<\\/p><\\/li><li><p>&nbsp;options.<\\/p><\\/li><\\/ul><p><br\\/><\\/p>\",\"_token\":\"sIUpDzEbW2wjjMdn7WrZlqKpT9MCP7hgSkejSuDO\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-25 21:23:59', '2021-12-25 21:23:59'),
(262, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-25 21:23:59', '2021-12-25 21:23:59'),
(263, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-25 23:42:02', '2021-12-25 23:42:02'),
(264, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<header class=\\\"section__header \\\" style=\\\"box-sizing: border-box; margin: 1.875rem 0px 0px; padding: 0px 0px 1rem; position: relative; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);\\\"><h2 class=\\\"section__title section__title--dashed\\\" style=\\\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0.2rem; font-weight: 400; font-size: 1.5rem; background-image: repeating-linear-gradient(to right, rgb(221, 221, 221) 0px, rgb(221, 221, 221) 50%, transparent 50%, transparent 100%); background-position: left bottom; background-repeat: repeat-x; background-size: 8px 2px; line-height: 1.6;\\\">Ingredients<\\/h2><\\/header><ul style=\\\"list-style-type: none;\\\" class=\\\" list-paddingleft-2\\\"><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">5<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">cloves<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">garlic<\\/span>, minced<\\/p><\\/li><li><p>&nbsp;options.<\\/p><\\/li><\\/ul><p><br\\/><\\/p>\",\"_token\":\"qeJb7ZfykBaL9kxprLFQn2TMxwyREiTAC1t4srHW\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-25 23:42:10', '2021-12-25 23:42:10'),
(265, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-25 23:42:10', '2021-12-25 23:42:10'),
(266, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-25 23:53:06', '2021-12-25 23:53:06'),
(267, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal in china\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<header class=\\\"section__header \\\" style=\\\"box-sizing: border-box; margin: 1.875rem 0px 0px; padding: 0px 0px 1rem; position: relative; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);\\\"><h2 class=\\\"section__title section__title--dashed\\\" style=\\\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0.2rem; font-weight: 400; font-size: 1.5rem; background-image: repeating-linear-gradient(to right, rgb(221, 221, 221) 0px, rgb(221, 221, 221) 50%, transparent 50%, transparent 100%); background-position: left bottom; background-repeat: repeat-x; background-size: 8px 2px; line-height: 1.6;\\\">Ingredients<\\/h2><\\/header><ul style=\\\"list-style-type: none;\\\" class=\\\" list-paddingleft-2\\\"><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">5<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">cloves<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">garlic<\\/span>, minced<\\/p><\\/li><li><p>&nbsp;options.<\\/p><\\/li><\\/ul><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Super garlic<br\\/><\\/p>\",\"_token\":\"qeJb7ZfykBaL9kxprLFQn2TMxwyREiTAC1t4srHW\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-25 23:53:26', '2021-12-25 23:53:26'),
(268, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-25 23:53:26', '2021-12-25 23:53:26'),
(269, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-25 23:53:34', '2021-12-25 23:53:34'),
(270, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<header class=\\\"section__header \\\" style=\\\"box-sizing: border-box; margin: 1.875rem 0px 0px; padding: 0px 0px 1rem; position: relative; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);\\\"><h2 class=\\\"section__title section__title--dashed\\\" style=\\\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0.2rem; font-weight: 400; font-size: 1.5rem; background-image: repeating-linear-gradient(to right, rgb(221, 221, 221) 0px, rgb(221, 221, 221) 50%, transparent 50%, transparent 100%); background-position: left bottom; background-repeat: repeat-x; background-size: 8px 2px; line-height: 1.6;\\\">Ingredients<\\/h2><\\/header><ul style=\\\"list-style-type: none;\\\" class=\\\" list-paddingleft-2\\\"><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">5<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">cloves<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">garlic<\\/span>, minced<\\/p><\\/li><li><p>&nbsp;options.<\\/p><\\/li><\\/ul><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Super garlic<br\\/><\\/p>\",\"_token\":\"qeJb7ZfykBaL9kxprLFQn2TMxwyREiTAC1t4srHW\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-25 23:59:27', '2021-12-25 23:59:27'),
(271, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-25 23:59:27', '2021-12-25 23:59:27'),
(272, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-26 00:06:57', '2021-12-26 00:06:57'),
(273, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal in china\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<header class=\\\"section__header \\\" style=\\\"box-sizing: border-box; margin: 1.875rem 0px 0px; padding: 0px 0px 1rem; position: relative; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);\\\"><h2 class=\\\"section__title section__title--dashed\\\" style=\\\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0.2rem; font-weight: 400; font-size: 1.5rem; background-image: repeating-linear-gradient(to right, rgb(221, 221, 221) 0px, rgb(221, 221, 221) 50%, transparent 50%, transparent 100%); background-position: left bottom; background-repeat: repeat-x; background-size: 8px 2px; line-height: 1.6;\\\">Ingredients<\\/h2><\\/header><ul style=\\\"list-style-type: none;\\\" class=\\\" list-paddingleft-2\\\"><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">5<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">cloves<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">garlic<\\/span>, minced<\\/p><\\/li><li><p>&nbsp;options.<\\/p><\\/li><\\/ul><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Super garlic<br\\/><\\/p>\",\"_token\":\"qeJb7ZfykBaL9kxprLFQn2TMxwyREiTAC1t4srHW\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-26 00:07:01', '2021-12-26 00:07:01'),
(274, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-26 00:07:01', '2021-12-26 00:07:01'),
(275, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-26 00:13:50', '2021-12-26 00:13:50'),
(276, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<header class=\\\"section__header \\\" style=\\\"box-sizing: border-box; margin: 1.875rem 0px 0px; padding: 0px 0px 1rem; position: relative; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);\\\"><h2 class=\\\"section__title section__title--dashed\\\" style=\\\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0.2rem; font-weight: 400; font-size: 1.5rem; background-image: repeating-linear-gradient(to right, rgb(221, 221, 221) 0px, rgb(221, 221, 221) 50%, transparent 50%, transparent 100%); background-position: left bottom; background-repeat: repeat-x; background-size: 8px 2px; line-height: 1.6;\\\">Ingredients<\\/h2><\\/header><ul style=\\\"list-style-type: none;\\\" class=\\\" list-paddingleft-2\\\"><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">5<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">cloves<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">garlic<\\/span>, minced<\\/p><\\/li><li><p>&nbsp;options.<\\/p><\\/li><\\/ul><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Super garlic<br\\/><\\/p>\",\"_token\":\"qeJb7ZfykBaL9kxprLFQn2TMxwyREiTAC1t4srHW\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-26 00:13:56', '2021-12-26 00:13:56'),
(277, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-26 00:13:56', '2021-12-26 00:13:56'),
(278, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-26 00:14:55', '2021-12-26 00:14:55'),
(279, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal in china\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<header class=\\\"section__header \\\" style=\\\"box-sizing: border-box; margin: 1.875rem 0px 0px; padding: 0px 0px 1rem; position: relative; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);\\\"><h2 class=\\\"section__title section__title--dashed\\\" style=\\\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0.2rem; font-weight: 400; font-size: 1.5rem; background-image: repeating-linear-gradient(to right, rgb(221, 221, 221) 0px, rgb(221, 221, 221) 50%, transparent 50%, transparent 100%); background-position: left bottom; background-repeat: repeat-x; background-size: 8px 2px; line-height: 1.6;\\\">Ingredients<\\/h2><\\/header><ul style=\\\"list-style-type: none;\\\" class=\\\" list-paddingleft-2\\\"><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">5<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">cloves<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">garlic<\\/span>, minced<\\/p><\\/li><li><p>&nbsp;options.<\\/p><\\/li><\\/ul><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Super garlic<br\\/><\\/p><p>&nbsp;&nbsp;&nbsp;&nbsp;big oninions<br\\/><\\/p>\",\"_token\":\"qeJb7ZfykBaL9kxprLFQn2TMxwyREiTAC1t4srHW\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-26 00:15:07', '2021-12-26 00:15:07'),
(280, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-26 00:15:07', '2021-12-26 00:15:07'),
(281, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-26 00:16:32', '2021-12-26 00:16:32'),
(282, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<header class=\\\"section__header \\\" style=\\\"box-sizing: border-box; margin: 1.875rem 0px 0px; padding: 0px 0px 1rem; position: relative; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);\\\"><h2 class=\\\"section__title section__title--dashed\\\" style=\\\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0.2rem; font-weight: 400; font-size: 1.5rem; background-image: repeating-linear-gradient(to right, rgb(221, 221, 221) 0px, rgb(221, 221, 221) 50%, transparent 50%, transparent 100%); background-position: left bottom; background-repeat: repeat-x; background-size: 8px 2px; line-height: 1.6;\\\">Ingredients<\\/h2><\\/header><ul style=\\\"list-style-type: none;\\\" class=\\\" list-paddingleft-2\\\"><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">5<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">cloves<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">garlic<\\/span>, minced<\\/p><\\/li><li><p>&nbsp;options.<\\/p><\\/li><\\/ul><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Super garlic<br\\/><\\/p><p><br\\/><\\/p>\",\"_token\":\"qeJb7ZfykBaL9kxprLFQn2TMxwyREiTAC1t4srHW\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-26 00:16:43', '2021-12-26 00:16:43'),
(283, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-26 00:16:43', '2021-12-26 00:16:43'),
(284, 1, 'admin/places/1/edit', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-26 08:17:47', '2021-12-26 08:17:47'),
(285, 1, 'admin/places/1', 'PUT', '58.39.14.207', '{\"name\":\"Nutritious fruit meal\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">Of five red bases, two are dedicated to salami (fennel and regular), and there&#39;s a classic capricciosa or beef carpaccio. Blanco options include a mushroom, and a four-cheese extravaganza featuring great lobes of a tangy fior di latte they make in house every day (more on this later). Classic, precise, good.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">I think it&#39;s still better to think of this venue not as a pizzeria, but as Pizza, by Di Stasio.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">Rinaldo Di Stasio and Mallory Wall&#39;s empire, including the original restaurant and bar in St Kilda, Citta and now Carlton, is a designer label for dining.<\\/p><p><br\\/><\\/p>\",\"_token\":\"JFWwRalUx4l7yXvLG6jEhHpXjZR6EHhvfIwX2wR9\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-26 08:17:55', '2021-12-26 08:17:55'),
(286, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-26 08:17:55', '2021-12-26 08:17:55'),
(287, 1, 'admin/places/6/edit', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-26 18:09:04', '2021-12-26 18:09:04'),
(288, 1, 'admin/places/6', 'PUT', '58.39.14.207', '{\"name\":\"Creole Rice Side Dish Recipe\",\"price\":\"12\",\"location\":\"china\",\"stars\":\"4\",\"people\":\"3\",\"selected_people\":\"3\",\"description\":\"<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p>\",\"_token\":\"tFxmWiAvFsrB5gBB49iGh8okAF3XDNOXog3nZZCe\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-26 18:09:09', '2021-12-26 18:09:09'),
(289, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-26 18:09:09', '2021-12-26 18:09:09'),
(290, 1, 'admin/places/7/edit', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-26 18:09:16', '2021-12-26 18:09:16'),
(291, 1, 'admin/places/7', 'PUT', '58.39.14.207', '{\"name\":\"Cuban Fufu\",\"price\":\"10\",\"location\":\"Cuba\",\"stars\":\"5\",\"people\":\"0\",\"selected_people\":\"0\",\"description\":\"<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p>\",\"_token\":\"tFxmWiAvFsrB5gBB49iGh8okAF3XDNOXog3nZZCe\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-26 18:09:23', '2021-12-26 18:09:23'),
(292, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-26 18:09:24', '2021-12-26 18:09:24'),
(293, 1, 'admin/places/2/edit', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-26 18:10:08', '2021-12-26 18:10:08'),
(294, 1, 'admin/places/2', 'PUT', '58.39.14.207', '{\"name\":\"Sweet Dessert\",\"price\":\"2153\",\"location\":\"Icefields, Alberta\",\"stars\":\"5\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p>The best sweet dessert<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p>\",\"_token\":\"tFxmWiAvFsrB5gBB49iGh8okAF3XDNOXog3nZZCe\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-26 18:10:14', '2021-12-26 18:10:14'),
(295, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-26 18:10:14', '2021-12-26 18:10:14'),
(296, 1, 'admin', 'GET', '58.39.14.207', '[]', '2021-12-26 22:24:07', '2021-12-26 22:24:07'),
(297, 1, 'admin/places', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-26 22:24:09', '2021-12-26 22:24:09'),
(298, 1, 'admin/places/create', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-26 22:24:12', '2021-12-26 22:24:12'),
(299, 1, 'admin/places', 'POST', '58.39.14.207', '{\"name\":\"Biriani\",\"price\":\"8\",\"location\":\"BD\",\"stars\":\"4\",\"people\":\"3\",\"selected_people\":\"3\",\"description\":\"<p style=\\\"box-sizing: inherit; padding: 0px; margin-top: 16px; margin-bottom: 16px; color: rgb(61, 61, 61); font-family: Raleway, sans-serif; font-size: 18px; white-space: normal;\\\">Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with fried onions (cheeky easy sub below!), fresh coriander\\/cilantro, then par boiled lightly spiced rice.<\\/p><p style=\\\"box-sizing: inherit; padding: 0px; margin-top: 16px; margin-bottom: 16px; color: rgb(61, 61, 61); font-family: Raleway, sans-serif; font-size: 18px; white-space: normal;\\\">The crowning glory is to finish it off with a drizzle of saffron infused water to give it the signature patches of bright yellow rice, as well as ghee (or melted butter) for buttery richness.<\\/p><p style=\\\"box-sizing: inherit; padding: 0px; margin-top: 16px; margin-bottom: 16px; color: rgb(61, 61, 61); font-family: Raleway, sans-serif; font-size: 18px; white-space: normal;\\\">The pot is then covered and cooked over a low heat for about 25 minutes during which time the rice absorbs the aromas and flavours of the curry underneath, whilst still being beautifully fluffy.<\\/p><p><br\\/><\\/p>\",\"_token\":\"DSevs3ByBGwx5oOQgMnKjFvBh0zg3CuqAdi32Lbn\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-26 22:27:38', '2021-12-26 22:27:38'),
(300, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-26 22:27:38', '2021-12-26 22:27:38'),
(301, 1, 'admin/places/create', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-26 22:28:12', '2021-12-26 22:28:12'),
(302, 1, 'admin/places', 'POST', '58.39.14.207', '{\"name\":\"Chicken biriani\",\"price\":\"12\",\"location\":\"china\",\"stars\":\"4\",\"people\":\"3\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;\\u30d2\\u30e9\\u30ae\\u30ce\\u89d2\\u30b4 Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, \\u30e1\\u30a4\\u30ea\\u30aa, Meiryo, &quot;\\uff2d\\uff33 \\uff30\\u30b4\\u30b7\\u30c3\\u30af&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\\\">Chicken Biryani Served in a Bowl Close Up Photo. Indian Food, Indian Style Rice and Chicken. #Biryani #ChickenBiryani #IndianFood #StockPhoto<\\/span><\\/p>\",\"_token\":\"DSevs3ByBGwx5oOQgMnKjFvBh0zg3CuqAdi32Lbn\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-26 22:29:47', '2021-12-26 22:29:47'),
(303, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-26 22:29:47', '2021-12-26 22:29:47'),
(304, 1, 'admin/places/create', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-26 22:35:07', '2021-12-26 22:35:07'),
(305, 1, 'admin/places', 'POST', '58.39.14.207', '{\"name\":\"Hilsha fish\",\"price\":\"12\",\"location\":\"china\",\"stars\":\"5\",\"people\":\"3\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;\\u30d2\\u30e9\\u30ae\\u30ce\\u89d2\\u30b4 Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, \\u30e1\\u30a4\\u30ea\\u30aa, Meiryo, &quot;\\uff2d\\uff33 \\uff30\\u30b4\\u30b7\\u30c3\\u30af&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\\\">Ilish Mach aka Hilsa fish is in the season and needless to say, I cooked it a few times this year as well. This year, however, I have used Ilish mach to make simple delicacies mostly. Ilish Beguner Jhol is probably the simplest of the lot, well, after Ilish Mach Bhaja.<\\/span><\\/p><p><span style=\\\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;\\u30d2\\u30e9\\u30ae\\u30ce\\u89d2\\u30b4 Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, \\u30e1\\u30a4\\u30ea\\u30aa, Meiryo, &quot;\\uff2d\\uff33 \\uff30\\u30b4\\u30b7\\u30c3\\u30af&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\\\"><span style=\\\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;\\u30d2\\u30e9\\u30ae\\u30ce\\u89d2\\u30b4 Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, \\u30e1\\u30a4\\u30ea\\u30aa, Meiryo, &quot;\\uff2d\\uff33 \\uff30\\u30b4\\u30b7\\u30c3\\u30af&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\\\">Ilish Mach aka Hilsa fish is in the season and needless to say, I cooked it a few times this year as well. This year, however, I have used Ilish mach to make simple delicacies mostly. Ilish Beguner Jhol is probably the simplest of the lot, well, after Ilish Mach Bhaja.<\\/span><\\/span><\\/p><p><span style=\\\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;\\u30d2\\u30e9\\u30ae\\u30ce\\u89d2\\u30b4 Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, \\u30e1\\u30a4\\u30ea\\u30aa, Meiryo, &quot;\\uff2d\\uff33 \\uff30\\u30b4\\u30b7\\u30c3\\u30af&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\\\"><span style=\\\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;\\u30d2\\u30e9\\u30ae\\u30ce\\u89d2\\u30b4 Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, \\u30e1\\u30a4\\u30ea\\u30aa, Meiryo, &quot;\\uff2d\\uff33 \\uff30\\u30b4\\u30b7\\u30c3\\u30af&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\\\"><span style=\\\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;\\u30d2\\u30e9\\u30ae\\u30ce\\u89d2\\u30b4 Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, \\u30e1\\u30a4\\u30ea\\u30aa, Meiryo, &quot;\\uff2d\\uff33 \\uff30\\u30b4\\u30b7\\u30c3\\u30af&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\\\">Ilish Mach aka Hilsa fish is in the season and needless to say, I cooked it a few times this year as well. This year, however, I have used Ilish mach to make simple delicacies mostly. Ilish Beguner Jhol is probably the simplest of the lot, well, after Ilish Mach Bhaja.<\\/span><\\/span><\\/span><\\/p>\",\"_token\":\"DSevs3ByBGwx5oOQgMnKjFvBh0zg3CuqAdi32Lbn\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-26 22:35:34', '2021-12-26 22:35:34'),
(306, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-26 22:35:34', '2021-12-26 22:35:34'),
(307, 1, 'admin', 'GET', '180.175.17.8', '[]', '2021-12-28 00:30:14', '2021-12-28 00:30:14'),
(308, 1, 'admin', 'GET', '180.175.17.8', '[]', '2021-12-28 00:32:00', '2021-12-28 00:32:00'),
(309, 1, 'admin/places', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-28 00:32:55', '2021-12-28 00:32:55'),
(310, 1, 'admin', 'GET', '180.175.17.8', '[]', '2021-12-28 00:37:50', '2021-12-28 00:37:50'),
(311, 1, 'admin/places', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-28 00:38:05', '2021-12-28 00:38:05'),
(312, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-28 00:38:08', '2021-12-28 00:38:08'),
(313, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '[]', '2021-12-28 00:38:23', '2021-12-28 00:38:23'),
(314, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">This&nbsp;five red bases, two are dedicated to salami (fennel and regular), and there&#39;s a classic capricciosa or beef carpaccio. Blanco options include a mushroom, and a four-cheese extravaganza featuring great lobes of a tangy fior di latte they make in house every day (more on this later). Classic, precise, good.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">I think it&#39;s still better to think of this venue not as a pizzeria, but as Pizza, by Di Stasio.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">Rinaldo Di Stasio and Mallory Wall&#39;s empire, including the original restaurant and bar in St Kilda, Citta and now Carlton, is a designer label for dining.<\\/p><p><br\\/><\\/p>\",\"_token\":\"mW9sobVCPETMbDNxRhwi8qbb16F8LEZ6N5nQ8YgD\",\"_method\":\"PUT\"}', '2021-12-28 00:38:34', '2021-12-28 00:38:34'),
(315, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-28 00:38:34', '2021-12-28 00:38:34'),
(316, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-28 00:40:14', '2021-12-28 00:40:14'),
(317, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal in china\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">This&nbsp;five red bases, two are dedicated to salami (fennel and regular), and there&#39;s a classic capricciosa or beef carpaccio. Blanco options include a mushroom, and a four-cheese extravaganza featuring great lobes of a tangy fior di latte they make in house every day (more on this later). Classic, precise, good.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">I think it&#39;s still better to think of this venue not as a pizzeria, but as Pizza, by Di Stasio.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">Rinaldo Di Stasio and Mallory Wall&#39;s empire, including the original restaurant and bar in St Kilda, Citta and now Carlton, is a designer label for dining.<\\/p><p><br\\/><\\/p>\",\"_token\":\"mW9sobVCPETMbDNxRhwi8qbb16F8LEZ6N5nQ8YgD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.dbestech.com\\/admin\\/places\"}', '2021-12-28 00:40:19', '2021-12-28 00:40:19'),
(318, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-28 00:40:19', '2021-12-28 00:40:19'),
(319, 1, 'admin/places', 'GET', '180.152.243.50', '[]', '2021-12-31 23:04:37', '2021-12-31 23:04:37'),
(320, 1, 'admin/places/3/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:15:18', '2021-12-31 23:15:18'),
(321, 1, 'admin/places/3', 'PUT', '180.152.243.50', '{\"name\":\"Chinese Side\",\"price\":\"3456\",\"location\":\"Moraine Lake, Alberta\",\"stars\":\"3\",\"people\":\"5\",\"selected_people\":\"4\",\"description\":\"<p style=\\\"border: 0px; margin-top: 0px; margin-bottom: 1.3em; padding: 0px; line-height: 1.8; color: rgb(58, 58, 58); font-family: Montserrat, sans-serif; font-size: 20px; white-space: normal; background-color: rgb(255, 255, 255);\\\">Enjoy these flavors any time of day.<\\/p><p><br\\/><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/places\"}', '2021-12-31 23:15:27', '2021-12-31 23:15:27'),
(322, 1, 'admin/places/3/edit', 'GET', '180.152.243.50', '[]', '2021-12-31 23:15:27', '2021-12-31 23:15:27'),
(323, 1, 'admin/places/3', 'PUT', '180.152.243.50', '{\"name\":\"Chinese Side\",\"price\":\"3456\",\"location\":\"Moraine Lake, Alberta\",\"stars\":\"3\",\"people\":\"5\",\"selected_people\":\"4\",\"description\":\"<p style=\\\"border: 0px; margin-top: 0px; margin-bottom: 1.3em; padding: 0px; line-height: 1.8; color: rgb(58, 58, 58); font-family: Montserrat, sans-serif; font-size: 20px; white-space: normal; background-color: rgb(255, 255, 255);\\\">Enjoy these flavors any time of day.<\\/p><p><br\\/><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\"}', '2021-12-31 23:16:26', '2021-12-31 23:16:26'),
(324, 1, 'admin/places', 'GET', '180.152.243.50', '[]', '2021-12-31 23:16:26', '2021-12-31 23:16:26'),
(325, 1, 'admin/places/6/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:16:46', '2021-12-31 23:16:46'),
(326, 1, 'admin/places/6', 'PUT', '180.152.243.50', '{\"name\":\"Creole Rice Side Dish Recipe\",\"price\":\"12\",\"location\":\"china\",\"stars\":\"4\",\"people\":\"3\",\"selected_people\":\"3\",\"description\":\"<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/places\"}', '2021-12-31 23:16:53', '2021-12-31 23:16:53'),
(327, 1, 'admin/places', 'GET', '180.152.243.50', '[]', '2021-12-31 23:16:53', '2021-12-31 23:16:53'),
(328, 1, 'admin/places/3/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:20:14', '2021-12-31 23:20:14'),
(329, 1, 'admin/places/3', 'PUT', '180.152.243.50', '{\"name\":\"Chinese Side\",\"price\":\"3456\",\"location\":\"Moraine Lake, Alberta\",\"stars\":\"3\",\"people\":\"5\",\"selected_people\":\"4\",\"description\":\"<p style=\\\"border: 0px; margin-top: 0px; margin-bottom: 1.3em; padding: 0px; line-height: 1.8; color: rgb(58, 58, 58); font-family: Montserrat, sans-serif; font-size: 20px; white-space: normal; background-color: rgb(255, 255, 255);\\\">Enjoy these flavors any time of day.<\\/p><p><br\\/><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/places\"}', '2021-12-31 23:20:20', '2021-12-31 23:20:20'),
(330, 1, 'admin/places', 'GET', '180.152.243.50', '[]', '2021-12-31 23:20:20', '2021-12-31 23:20:20'),
(331, 1, 'admin/places/6/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:20:25', '2021-12-31 23:20:25');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(332, 1, 'admin/places/6', 'PUT', '180.152.243.50', '{\"name\":\"Creole Rice Side Dish Recipe\",\"price\":\"12\",\"location\":\"china\",\"stars\":\"4\",\"people\":\"3\",\"selected_people\":\"3\",\"description\":\"<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/places\"}', '2021-12-31 23:20:34', '2021-12-31 23:20:34'),
(333, 1, 'admin/places', 'GET', '180.152.243.50', '[]', '2021-12-31 23:20:34', '2021-12-31 23:20:34'),
(334, 1, 'admin/places/2/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:24:17', '2021-12-31 23:24:17'),
(335, 1, 'admin/places/2', 'PUT', '180.152.243.50', '{\"name\":\"Sweet Dessert\",\"price\":\"2153\",\"location\":\"Icefields, Alberta\",\"stars\":\"5\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p>The best sweet dessert<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/places\"}', '2021-12-31 23:24:27', '2021-12-31 23:24:27'),
(336, 1, 'admin/places', 'GET', '180.152.243.50', '[]', '2021-12-31 23:24:27', '2021-12-31 23:24:27'),
(337, 1, 'admin/places', 'GET', '180.152.243.50', '[]', '2021-12-31 23:25:52', '2021-12-31 23:25:52'),
(338, 1, 'admin/article-types', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:25:56', '2021-12-31 23:25:56'),
(339, 1, 'admin/article-types/create', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:26:02', '2021-12-31 23:26:02'),
(340, 1, 'admin/article-types', 'POST', '180.152.243.50', '{\"parent_id\":\"0\",\"title\":\"Popular food\",\"description\":\"best food\",\"order\":\"1\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/article-types\"}', '2021-12-31 23:26:34', '2021-12-31 23:26:34'),
(341, 1, 'admin/article-types/create', 'GET', '180.152.243.50', '[]', '2021-12-31 23:26:34', '2021-12-31 23:26:34'),
(342, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:26:57', '2021-12-31 23:26:57'),
(343, 1, 'admin/auth/menu/11/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:27:01', '2021-12-31 23:27:01'),
(344, 1, 'admin/auth/menu/11', 'PUT', '180.152.243.50', '{\"parent_id\":\"0\",\"title\":\"Food\",\"icon\":\"fa-map-marker\",\"uri\":\"\\/places\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/auth\\/menu\"}', '2021-12-31 23:27:12', '2021-12-31 23:27:12'),
(345, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '[]', '2021-12-31 23:27:13', '2021-12-31 23:27:13'),
(346, 1, 'admin/auth/menu/11/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:27:19', '2021-12-31 23:27:19'),
(347, 1, 'admin/auth/menu/11', 'PUT', '180.152.243.50', '{\"parent_id\":\"0\",\"title\":\"Food\",\"icon\":\"fa-beer\",\"uri\":\"\\/places\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/auth\\/menu\"}', '2021-12-31 23:27:49', '2021-12-31 23:27:49'),
(348, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '[]', '2021-12-31 23:27:49', '2021-12-31 23:27:49'),
(349, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '[]', '2021-12-31 23:27:51', '2021-12-31 23:27:51'),
(350, 1, 'admin/places', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:27:53', '2021-12-31 23:27:53'),
(351, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:27:58', '2021-12-31 23:27:58'),
(352, 1, 'admin/auth/menu/11/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:28:02', '2021-12-31 23:28:02'),
(353, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:28:19', '2021-12-31 23:28:19'),
(354, 1, 'admin/auth/menu/9', 'DELETE', '180.152.243.50', '{\"_method\":\"delete\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\"}', '2021-12-31 23:28:24', '2021-12-31 23:28:24'),
(355, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:28:25', '2021-12-31 23:28:25'),
(356, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '[]', '2021-12-31 23:28:28', '2021-12-31 23:28:28'),
(357, 1, 'admin/article-types', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:28:35', '2021-12-31 23:28:35'),
(358, 1, 'admin/article-types', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:36:10', '2021-12-31 23:36:10'),
(359, 1, 'admin/article-types/create', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:37:05', '2021-12-31 23:37:05'),
(360, 1, 'admin/article-types', 'POST', '180.152.243.50', '{\"parent_id\":\"0\",\"title\":\"Popular food\",\"description\":\"best food\",\"order\":\"1\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/article-types\"}', '2021-12-31 23:37:20', '2021-12-31 23:37:20'),
(361, 1, 'admin/article-types/create', 'GET', '180.152.243.50', '[]', '2021-12-31 23:37:20', '2021-12-31 23:37:20'),
(362, 1, 'admin/article-types', 'POST', '180.152.243.50', '{\"parent_id\":\"0\",\"title\":\"Popular food\",\"description\":\"best food\",\"order\":\"1\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\"}', '2021-12-31 23:41:24', '2021-12-31 23:41:24'),
(363, 1, 'admin/article-types', 'GET', '180.152.243.50', '[]', '2021-12-31 23:41:24', '2021-12-31 23:41:24'),
(364, 1, 'admin/article-types/create', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:41:31', '2021-12-31 23:41:31'),
(365, 1, 'admin/article-types', 'POST', '180.152.243.50', '{\"parent_id\":\"0\",\"title\":\"Food\",\"description\":null,\"order\":\"1\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/article-types\"}', '2021-12-31 23:41:46', '2021-12-31 23:41:46'),
(366, 1, 'admin/article-types/create', 'GET', '180.152.243.50', '[]', '2021-12-31 23:41:46', '2021-12-31 23:41:46'),
(367, 1, 'admin/article-types', 'POST', '180.152.243.50', '{\"parent_id\":\"0\",\"title\":\"Food\",\"description\":\"all food\",\"order\":\"1\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\"}', '2021-12-31 23:41:54', '2021-12-31 23:41:54'),
(368, 1, 'admin/article-types', 'GET', '180.152.243.50', '[]', '2021-12-31 23:41:54', '2021-12-31 23:41:54'),
(369, 1, 'admin/article-types/create', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:42:03', '2021-12-31 23:42:03'),
(370, 1, 'admin/article-types', 'POST', '180.152.243.50', '{\"parent_id\":\"2\",\"title\":\"Recommended food\",\"description\":\"recommended food\",\"order\":\"1\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/article-types\"}', '2021-12-31 23:42:30', '2021-12-31 23:42:30'),
(371, 1, 'admin/article-types', 'GET', '180.152.243.50', '[]', '2021-12-31 23:42:30', '2021-12-31 23:42:30'),
(372, 1, 'admin/article-types', 'POST', '180.152.243.50', '{\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_order\":\"[{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":1},{\\\"id\\\":3}]}]\"}', '2021-12-31 23:42:39', '2021-12-31 23:42:39'),
(373, 1, 'admin/article-types', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:42:40', '2021-12-31 23:42:40'),
(374, 1, 'admin/article-types', 'GET', '180.152.243.50', '[]', '2021-12-31 23:42:42', '2021-12-31 23:42:42'),
(375, 1, 'admin/places', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:42:46', '2021-12-31 23:42:46'),
(376, 1, 'admin/places/create', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:42:48', '2021-12-31 23:42:48'),
(377, 1, 'admin/users', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:43:19', '2021-12-31 23:43:19'),
(378, 1, 'admin/users', 'GET', '180.152.243.50', '[]', '2021-12-31 23:53:24', '2021-12-31 23:53:24'),
(379, 1, 'admin/users', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:53:26', '2021-12-31 23:53:26'),
(380, 1, 'admin/article-types', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:53:27', '2021-12-31 23:53:27'),
(381, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:05:58', '2022-01-01 00:05:58'),
(382, 1, 'admin/auth/menu/11/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:06:06', '2022-01-01 00:06:06'),
(383, 1, 'admin/auth/menu/11', 'PUT', '180.152.243.50', '{\"parent_id\":\"0\",\"title\":\"Food\",\"icon\":\"fa-beer\",\"uri\":\"\\/foods\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/auth\\/menu\"}', '2022-01-01 00:06:15', '2022-01-01 00:06:15'),
(384, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '[]', '2022-01-01 00:06:16', '2022-01-01 00:06:16'),
(385, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '[]', '2022-01-01 00:06:38', '2022-01-01 00:06:38'),
(386, 1, 'admin/foods', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:06:47', '2022-01-01 00:06:47'),
(387, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:08:54', '2022-01-01 00:08:54'),
(388, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:09:10', '2022-01-01 00:09:10'),
(389, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:09:23', '2022-01-01 00:09:23'),
(390, 1, 'admin/auth/menu/8/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:09:28', '2022-01-01 00:09:28'),
(391, 1, 'admin/auth/menu/8', 'PUT', '180.152.243.50', '{\"parent_id\":\"0\",\"title\":\"Category\",\"icon\":\"fa-certificate\",\"uri\":\"\\/food-types\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/auth\\/menu\"}', '2022-01-01 00:09:40', '2022-01-01 00:09:40'),
(392, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '[]', '2022-01-01 00:09:41', '2022-01-01 00:09:41'),
(393, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '[]', '2022-01-01 00:09:51', '2022-01-01 00:09:51'),
(394, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '[]', '2022-01-01 00:09:52', '2022-01-01 00:09:52'),
(395, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '[]', '2022-01-01 00:11:25', '2022-01-01 00:11:25'),
(396, 1, 'admin', 'GET', '180.152.243.50', '[]', '2022-01-01 00:14:55', '2022-01-01 00:14:55'),
(397, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:15:11', '2022-01-01 00:15:11'),
(398, 1, 'admin/auth/menu/11/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:15:14', '2022-01-01 00:15:14'),
(399, 1, 'admin/foods', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:15:52', '2022-01-01 00:15:52'),
(400, 1, 'admin/foods/1/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:15:56', '2022-01-01 00:15:56'),
(401, 1, 'admin/food-types', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:16:33', '2022-01-01 00:16:33'),
(402, 1, 'admin/foods/1/edit', 'GET', '180.152.243.50', '[]', '2022-01-01 00:16:33', '2022-01-01 00:16:33'),
(403, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:16:42', '2022-01-01 00:16:42'),
(404, 1, 'admin/auth/menu/8/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:16:47', '2022-01-01 00:16:47'),
(405, 1, 'admin/auth/menu/8', 'PUT', '180.152.243.50', '{\"parent_id\":\"0\",\"title\":\"Food Category\",\"icon\":\"fa-certificate\",\"uri\":\"\\/food-types\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/auth\\/menu\"}', '2022-01-01 00:16:59', '2022-01-01 00:16:59'),
(406, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '[]', '2022-01-01 00:16:59', '2022-01-01 00:16:59'),
(407, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '[]', '2022-01-01 00:18:26', '2022-01-01 00:18:26'),
(408, 1, 'admin/food-types', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:18:28', '2022-01-01 00:18:28'),
(409, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '[]', '2022-01-01 00:18:28', '2022-01-01 00:18:28'),
(410, 1, 'admin/food-types', 'GET', '180.152.243.50', '[]', '2022-01-01 00:20:10', '2022-01-01 00:20:10'),
(411, 1, 'admin/food-types', 'GET', '180.152.243.50', '[]', '2022-01-01 00:20:12', '2022-01-01 00:20:12'),
(412, 1, 'admin/food-types', 'GET', '180.152.243.50', '[]', '2022-01-01 00:20:13', '2022-01-01 00:20:13'),
(413, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '[]', '2022-01-01 00:22:00', '2022-01-01 00:22:00'),
(414, 1, 'admin/food-types', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:22:03', '2022-01-01 00:22:03'),
(415, 1, 'admin/food-types/create', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:22:06', '2022-01-01 00:22:06'),
(416, 1, 'admin/food-types', 'POST', '180.152.243.50', '{\"parent_id\":\"0\",\"title\":\"Food\",\"description\":null,\"order\":\"1\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/food-types\"}', '2022-01-01 00:22:15', '2022-01-01 00:22:15'),
(417, 1, 'admin/food-types/create', 'GET', '180.152.243.50', '[]', '2022-01-01 00:22:15', '2022-01-01 00:22:15'),
(418, 1, 'admin/food-types', 'POST', '180.152.243.50', '{\"parent_id\":\"0\",\"title\":\"Food\",\"description\":\"all about food\",\"order\":\"1\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\"}', '2022-01-01 00:22:27', '2022-01-01 00:22:27'),
(419, 1, 'admin/food-types/create', 'GET', '180.152.243.50', '[]', '2022-01-01 00:22:27', '2022-01-01 00:22:27'),
(420, 1, 'admin/food-types', 'POST', '180.152.243.50', '{\"parent_id\":\"0\",\"title\":\"Food\",\"description\":\"all about food\",\"order\":\"1\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\"}', '2022-01-01 00:22:55', '2022-01-01 00:22:55'),
(421, 1, 'admin/food-types', 'GET', '180.152.243.50', '[]', '2022-01-01 00:22:55', '2022-01-01 00:22:55'),
(422, 1, 'admin/food-types/create', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:22:58', '2022-01-01 00:22:58'),
(423, 1, 'admin/food-types', 'POST', '180.152.243.50', '{\"parent_id\":\"1\",\"title\":\"Popular food\",\"description\":\"popular food\",\"order\":\"1\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/food-types\"}', '2022-01-01 00:23:10', '2022-01-01 00:23:10'),
(424, 1, 'admin/food-types', 'GET', '180.152.243.50', '[]', '2022-01-01 00:23:11', '2022-01-01 00:23:11'),
(425, 1, 'admin/food-types/create', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:23:13', '2022-01-01 00:23:13'),
(426, 1, 'admin/food-types', 'POST', '180.152.243.50', '{\"parent_id\":\"1\",\"title\":\"Recommended food\",\"description\":\"Recommended food\",\"order\":\"1\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/food-types\"}', '2022-01-01 00:23:25', '2022-01-01 00:23:25'),
(427, 1, 'admin/food-types', 'GET', '180.152.243.50', '[]', '2022-01-01 00:23:26', '2022-01-01 00:23:26'),
(428, 1, 'admin/foods', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:25:06', '2022-01-01 00:25:06'),
(429, 1, 'admin/foods/create', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:25:08', '2022-01-01 00:25:08'),
(430, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:25:09', '2022-01-01 00:25:09'),
(431, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:25:36', '2022-01-01 00:25:36'),
(432, 1, 'admin/foods/create', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:25:38', '2022-01-01 00:25:38'),
(433, 1, 'admin/foods', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:25:46', '2022-01-01 00:25:46'),
(434, 1, 'admin/foods/1/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:25:48', '2022-01-01 00:25:48'),
(435, 1, 'admin/foods/1', 'PUT', '180.152.243.50', '{\"name\":\"Nutritious fruit meal in china\",\"type_id\":\"2\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">This&nbsp;five red bases, two are dedicated to salami (fennel and regular), and there&#39;s a classic capricciosa or beef carpaccio. Blanco options include a mushroom, and a four-cheese extravaganza featuring great lobes of a tangy fior di latte they make in house every day (more on this later). Classic, precise, good.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">I think it&#39;s still better to think of this venue not as a pizzeria, but as Pizza, by Di Stasio.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">Rinaldo Di Stasio and Mallory Wall&#39;s empire, including the original restaurant and bar in St Kilda, Citta and now Carlton, is a designer label for dining.<\\/p><p><br\\/><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/foods\"}', '2022-01-01 00:25:57', '2022-01-01 00:25:57'),
(436, 1, 'admin/foods/1/edit', 'GET', '180.152.243.50', '[]', '2022-01-01 00:25:58', '2022-01-01 00:25:58'),
(437, 1, 'admin/foods/1', 'PUT', '180.152.243.50', '{\"name\":\"Nutritious fruit meal in china\",\"type_id\":\"2\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">This&nbsp;five red bases, two are dedicated to salami (fennel and regular), and there&#39;s a classic capricciosa or beef carpaccio. Blanco options include a mushroom, and a four-cheese extravaganza featuring great lobes of a tangy fior di latte they make in house every day (more on this later). Classic, precise, good.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">I think it&#39;s still better to think of this venue not as a pizzeria, but as Pizza, by Di Stasio.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">Rinaldo Di Stasio and Mallory Wall&#39;s empire, including the original restaurant and bar in St Kilda, Citta and now Carlton, is a designer label for dining.<\\/p><p><br\\/><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\"}', '2022-01-01 00:27:22', '2022-01-01 00:27:22'),
(438, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:27:22', '2022-01-01 00:27:22'),
(439, 1, 'admin/foods/1/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:27:29', '2022-01-01 00:27:29'),
(440, 1, 'admin/foods', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:30:52', '2022-01-01 00:30:52'),
(441, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:33:03', '2022-01-01 00:33:03'),
(442, 1, 'admin/foods/1/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:33:15', '2022-01-01 00:33:15'),
(443, 1, 'admin/foods', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:33:20', '2022-01-01 00:33:20'),
(444, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:33:22', '2022-01-01 00:33:22'),
(445, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:34:06', '2022-01-01 00:34:06'),
(446, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:34:08', '2022-01-01 00:34:08'),
(447, 1, 'admin/food-types', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:34:11', '2022-01-01 00:34:11'),
(448, 1, 'admin/foods', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:34:15', '2022-01-01 00:34:15'),
(449, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:35:55', '2022-01-01 00:35:55'),
(450, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:42:38', '2022-01-01 00:42:38'),
(451, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:42:40', '2022-01-01 00:42:40'),
(452, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:44:43', '2022-01-01 00:44:43'),
(453, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:44:45', '2022-01-01 00:44:45'),
(454, 1, 'admin/foods/2/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:54:34', '2022-01-01 00:54:34'),
(455, 1, 'admin/foods/2', 'PUT', '180.152.243.50', '{\"name\":\"Sweet Dessert\",\"type_id\":\"2\",\"price\":\"2153\",\"location\":\"Icefields, Alberta\",\"stars\":\"5\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p>The best sweet dessert<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/foods\"}', '2022-01-01 00:54:42', '2022-01-01 00:54:42'),
(456, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:54:42', '2022-01-01 00:54:42'),
(457, 1, 'admin/foods/3/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:54:48', '2022-01-01 00:54:48'),
(458, 1, 'admin/foods/3', 'PUT', '180.152.243.50', '{\"name\":\"Chinese Side\",\"type_id\":\"3\",\"price\":\"3456\",\"location\":\"Moraine Lake, Alberta\",\"stars\":\"3\",\"people\":\"5\",\"selected_people\":\"4\",\"description\":\"<p style=\\\"border: 0px; margin-top: 0px; margin-bottom: 1.3em; padding: 0px; line-height: 1.8; color: rgb(58, 58, 58); font-family: Montserrat, sans-serif; font-size: 20px; white-space: normal; background-color: rgb(255, 255, 255);\\\">Enjoy these flavors any time of day.<\\/p><p><br\\/><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/foods\"}', '2022-01-01 00:54:53', '2022-01-01 00:54:53'),
(459, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:54:54', '2022-01-01 00:54:54'),
(460, 1, 'admin/foods/4/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:54:58', '2022-01-01 00:54:58'),
(461, 1, 'admin/foods/4', 'PUT', '180.152.243.50', '{\"name\":\"Bitter Orange Marinade\",\"type_id\":\"3\",\"price\":\"33\",\"location\":\"Killarney Provincial Park\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p id=\\\"mntl-sc-block_1-0\\\" class=\\\"comp mntl-sc-block mntl-sc-block-html\\\" style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; padding: 0px; letter-spacing: -0.1px; counter-reset: section 0; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; white-space: normal; background-color: rgb(255, 255, 255);\\\">Bitter oranges are often used in Caribbean&nbsp;<\\/p><p><br\\/><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/foods\"}', '2022-01-01 00:55:05', '2022-01-01 00:55:05'),
(462, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:55:06', '2022-01-01 00:55:06'),
(463, 1, 'admin/foods/5/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:55:10', '2022-01-01 00:55:10'),
(464, 1, 'admin/foods/5', 'PUT', '180.152.243.50', '{\"name\":\"Creamed Yuca (Cassava)\",\"type_id\":\"3\",\"price\":\"10\",\"location\":\"China\",\"stars\":\"5\",\"people\":\"5\",\"selected_people\":\"4\",\"description\":\"<p><span style=\\\"font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; background-color: rgb(255, 255, 255);\\\">Commonly used in soups, eaten boiled&nbsp;<\\/span><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/foods\"}', '2022-01-01 00:55:44', '2022-01-01 00:55:44'),
(465, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:55:45', '2022-01-01 00:55:45'),
(466, 1, 'admin/foods/6/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:55:53', '2022-01-01 00:55:53'),
(467, 1, 'admin/foods/6', 'PUT', '180.152.243.50', '{\"name\":\"Creole Rice Side Dish Recipe\",\"type_id\":\"2\",\"price\":\"12\",\"location\":\"china\",\"stars\":\"4\",\"people\":\"3\",\"selected_people\":\"3\",\"description\":\"<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/foods\"}', '2022-01-01 00:56:02', '2022-01-01 00:56:02'),
(468, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:56:03', '2022-01-01 00:56:03'),
(469, 1, 'admin/foods/11/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:56:12', '2022-01-01 00:56:12'),
(470, 1, 'admin/foods/11', 'PUT', '180.152.243.50', '{\"name\":\"Hilsha fish\",\"type_id\":\"2\",\"price\":\"12\",\"location\":\"china\",\"stars\":\"5\",\"people\":\"3\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;\\u30d2\\u30e9\\u30ae\\u30ce\\u89d2\\u30b4 Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, \\u30e1\\u30a4\\u30ea\\u30aa, Meiryo, &quot;\\uff2d\\uff33 \\uff30\\u30b4\\u30b7\\u30c3\\u30af&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\\\">Ilish Mach aka Hilsa fish is in the season and needless to say, I cooked it a few times this year as well. This year, however, I have used Ilish mach to make simple delicacies mostly. Ilish Beguner Jhol is probably the simplest of the lot, well, after Ilish Mach Bhaja.<\\/span><\\/p><p><span style=\\\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;\\u30d2\\u30e9\\u30ae\\u30ce\\u89d2\\u30b4 Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, \\u30e1\\u30a4\\u30ea\\u30aa, Meiryo, &quot;\\uff2d\\uff33 \\uff30\\u30b4\\u30b7\\u30c3\\u30af&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\\\"><span style=\\\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;\\u30d2\\u30e9\\u30ae\\u30ce\\u89d2\\u30b4 Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, \\u30e1\\u30a4\\u30ea\\u30aa, Meiryo, &quot;\\uff2d\\uff33 \\uff30\\u30b4\\u30b7\\u30c3\\u30af&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\\\">Ilish Mach aka Hilsa fish is in the season and needless to say, I cooked it a few times this year as well. This year, however, I have used Ilish mach to make simple delicacies mostly. Ilish Beguner Jhol is probably the simplest of the lot, well, after Ilish Mach Bhaja.<\\/span><\\/span><\\/p><p><span style=\\\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;\\u30d2\\u30e9\\u30ae\\u30ce\\u89d2\\u30b4 Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, \\u30e1\\u30a4\\u30ea\\u30aa, Meiryo, &quot;\\uff2d\\uff33 \\uff30\\u30b4\\u30b7\\u30c3\\u30af&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\\\"><span style=\\\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;\\u30d2\\u30e9\\u30ae\\u30ce\\u89d2\\u30b4 Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, \\u30e1\\u30a4\\u30ea\\u30aa, Meiryo, &quot;\\uff2d\\uff33 \\uff30\\u30b4\\u30b7\\u30c3\\u30af&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\\\"><span style=\\\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;\\u30d2\\u30e9\\u30ae\\u30ce\\u89d2\\u30b4 Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, \\u30e1\\u30a4\\u30ea\\u30aa, Meiryo, &quot;\\uff2d\\uff33 \\uff30\\u30b4\\u30b7\\u30c3\\u30af&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\\\">Ilish Mach aka Hilsa fish is in the season and needless to say, I cooked it a few times this year as well. This year, however, I have used Ilish mach to make simple delicacies mostly. Ilish Beguner Jhol is probably the simplest of the lot, well, after Ilish Mach Bhaja.<\\/span><\\/span><\\/span><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/foods\"}', '2022-01-01 00:56:22', '2022-01-01 00:56:22'),
(471, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:56:22', '2022-01-01 00:56:22'),
(472, 1, 'admin/foods/10/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:56:27', '2022-01-01 00:56:27'),
(473, 1, 'admin/foods/10', 'PUT', '180.152.243.50', '{\"name\":\"Chicken biriani\",\"type_id\":\"2\",\"price\":\"12\",\"location\":\"china\",\"stars\":\"4\",\"people\":\"3\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;\\u30d2\\u30e9\\u30ae\\u30ce\\u89d2\\u30b4 Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, \\u30e1\\u30a4\\u30ea\\u30aa, Meiryo, &quot;\\uff2d\\uff33 \\uff30\\u30b4\\u30b7\\u30c3\\u30af&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\\\">Chicken Biryani Served in a Bowl Close Up Photo. Indian Food, Indian Style Rice and Chicken. #Biryani #ChickenBiryani #IndianFood #StockPhoto<\\/span><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/foods\"}', '2022-01-01 00:56:33', '2022-01-01 00:56:33'),
(474, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:56:34', '2022-01-01 00:56:34'),
(475, 1, 'admin/foods/7/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:56:38', '2022-01-01 00:56:38');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(476, 1, 'admin/foods/7', 'PUT', '180.152.243.50', '{\"name\":\"Cuban Fufu\",\"type_id\":\"2\",\"price\":\"10\",\"location\":\"Cuba\",\"stars\":\"5\",\"people\":\"0\",\"selected_people\":\"0\",\"description\":\"<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/foods\"}', '2022-01-01 00:56:45', '2022-01-01 00:56:45'),
(477, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:56:45', '2022-01-01 00:56:45'),
(478, 1, 'admin/foods/8/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:56:51', '2022-01-01 00:56:51'),
(479, 1, 'admin/foods/8', 'PUT', '180.152.243.50', '{\"name\":\"Dessert\",\"type_id\":\"3\",\"price\":\"5\",\"location\":\"china\",\"stars\":\"4\",\"people\":\"3\",\"selected_people\":\"2\",\"description\":\"<p>Amazing food to eat with.<\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/foods\"}', '2022-01-01 00:57:01', '2022-01-01 00:57:01'),
(480, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:57:01', '2022-01-01 00:57:01'),
(481, 1, 'admin/foods/9/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:57:07', '2022-01-01 00:57:07'),
(482, 1, 'admin/foods/9', 'PUT', '180.152.243.50', '{\"name\":\"Biriani\",\"type_id\":\"3\",\"price\":\"8\",\"location\":\"BD\",\"stars\":\"4\",\"people\":\"3\",\"selected_people\":\"3\",\"description\":\"<p style=\\\"box-sizing: inherit; padding: 0px; margin-top: 16px; margin-bottom: 16px; color: rgb(61, 61, 61); font-family: Raleway, sans-serif; font-size: 18px; white-space: normal;\\\">Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with fried onions (cheeky easy sub below!), fresh coriander\\/cilantro, then par boiled lightly spiced rice.<\\/p><p style=\\\"box-sizing: inherit; padding: 0px; margin-top: 16px; margin-bottom: 16px; color: rgb(61, 61, 61); font-family: Raleway, sans-serif; font-size: 18px; white-space: normal;\\\">The crowning glory is to finish it off with a drizzle of saffron infused water to give it the signature patches of bright yellow rice, as well as ghee (or melted butter) for buttery richness.<\\/p><p style=\\\"box-sizing: inherit; padding: 0px; margin-top: 16px; margin-bottom: 16px; color: rgb(61, 61, 61); font-family: Raleway, sans-serif; font-size: 18px; white-space: normal;\\\">The pot is then covered and cooked over a low heat for about 25 minutes during which time the rice absorbs the aromas and flavours of the curry underneath, whilst still being beautifully fluffy.<\\/p><p><br\\/><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/foods\"}', '2022-01-01 00:57:16', '2022-01-01 00:57:16'),
(483, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:57:17', '2022-01-01 00:57:17'),
(484, 1, 'admin', 'GET', '180.152.243.50', '[]', '2022-01-09 17:05:12', '2022-01-09 17:05:12'),
(485, 1, 'admin/foods', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 17:05:28', '2022-01-09 17:05:28'),
(486, 1, 'admin/users', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 17:05:31', '2022-01-09 17:05:31'),
(487, 1, 'admin', 'GET', '180.175.21.130', '[]', '2022-01-13 00:57:03', '2022-01-13 00:57:03'),
(488, 1, 'admin', 'GET', '180.175.21.130', '[]', '2022-01-13 23:09:11', '2022-01-13 23:09:11'),
(489, 1, 'admin', 'GET', '180.175.21.130', '[]', '2022-01-13 23:10:52', '2022-01-13 23:10:52'),
(490, 1, 'admin', 'GET', '180.175.21.130', '[]', '2022-01-13 23:13:20', '2022-01-13 23:13:20'),
(491, 1, 'admin', 'GET', '180.175.21.130', '[]', '2022-01-13 23:13:47', '2022-01-13 23:13:47'),
(492, 1, 'admin', 'GET', '180.175.21.130', '[]', '2022-01-17 23:57:08', '2022-01-17 23:57:08'),
(493, 1, 'admin/foods', 'GET', '180.175.21.130', '{\"_pjax\":\"#pjax-container\"}', '2022-01-17 23:57:49', '2022-01-17 23:57:49'),
(494, 1, 'admin/foods/9/edit', 'GET', '180.175.21.130', '{\"_pjax\":\"#pjax-container\"}', '2022-01-17 23:57:56', '2022-01-17 23:57:56'),
(495, 1, 'admin', 'GET', '180.175.21.130', '[]', '2022-01-18 23:23:20', '2022-01-18 23:23:20'),
(496, 1, 'admin', 'GET', '180.175.21.130', '[]', '2022-01-21 02:25:58', '2022-01-21 02:25:58'),
(497, 1, 'admin/food-types', 'GET', '180.175.21.130', '{\"_pjax\":\"#pjax-container\"}', '2022-01-21 02:26:01', '2022-01-21 02:26:01'),
(498, 1, 'admin/foods', 'GET', '180.175.21.130', '{\"_pjax\":\"#pjax-container\"}', '2022-01-21 02:26:06', '2022-01-21 02:26:06'),
(499, 1, 'admin/foods/2/edit', 'GET', '180.175.21.130', '{\"_pjax\":\"#pjax-container\"}', '2022-01-21 02:26:16', '2022-01-21 02:26:16'),
(500, 1, 'admin/foods', 'GET', '180.175.21.130', '{\"_pjax\":\"#pjax-container\"}', '2022-01-21 02:26:18', '2022-01-21 02:26:18'),
(501, 1, 'admin/foods/6/edit', 'GET', '180.175.21.130', '{\"_pjax\":\"#pjax-container\"}', '2022-01-21 02:26:22', '2022-01-21 02:26:22'),
(502, 1, 'admin/foods', 'GET', '180.175.21.130', '{\"_pjax\":\"#pjax-container\"}', '2022-01-21 02:26:25', '2022-01-21 02:26:25'),
(503, 1, 'admin/foods/10/edit', 'GET', '180.175.21.130', '{\"_pjax\":\"#pjax-container\"}', '2022-01-21 02:26:28', '2022-01-21 02:26:28'),
(504, 1, 'admin/foods', 'GET', '180.175.21.130', '{\"_pjax\":\"#pjax-container\"}', '2022-01-21 02:26:30', '2022-01-21 02:26:30'),
(505, 1, 'admin/foods/6/edit', 'GET', '180.175.21.130', '{\"_pjax\":\"#pjax-container\"}', '2022-01-21 02:27:58', '2022-01-21 02:27:58'),
(506, 1, 'admin/foods/6', 'PUT', '180.175.21.130', '{\"name\":\"Creole Rice Side Dish Recipe\",\"type_id\":\"2\",\"price\":\"18\",\"location\":\"china\",\"stars\":\"4\",\"people\":\"3\",\"selected_people\":\"3\",\"description\":\"<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p>\",\"_token\":\"a1BPjQL4YiuckcckRvhImPYDBgVgnOAziaubS7Pb\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/mvs.bslmeiyu.com\\/admin\\/foods\"}', '2022-01-21 02:28:04', '2022-01-21 02:28:04'),
(507, 1, 'admin/foods', 'GET', '180.175.21.130', '[]', '2022-01-21 02:28:04', '2022-01-21 02:28:04'),
(508, 1, 'admin/foods', 'GET', '180.175.21.130', '[]', '2022-01-22 00:35:18', '2022-01-22 00:35:18'),
(509, 1, 'admin', 'GET', '180.175.21.130', '[]', '2022-02-07 22:57:22', '2022-02-07 22:57:22'),
(510, 1, 'admin', 'GET', '198.255.45.131', '[]', '2022-02-09 07:33:32', '2022-02-09 07:33:32'),
(511, 1, 'admin', 'GET', '198.255.45.131', '[]', '2022-02-09 07:33:34', '2022-02-09 07:33:34'),
(512, 1, 'admin/users', 'GET', '198.255.45.131', '[]', '2022-02-09 07:34:12', '2022-02-09 07:34:12'),
(513, 1, 'admin/users', 'GET', '198.255.45.131', '[]', '2022-02-09 07:35:09', '2022-02-09 07:35:09'),
(514, 1, 'admin/users', 'GET', '198.255.45.131', '[]', '2022-02-09 07:35:41', '2022-02-09 07:35:41'),
(515, 1, 'admin/users', 'GET', '198.255.45.131', '[]', '2022-02-09 07:38:34', '2022-02-09 07:38:34'),
(516, 1, 'admin/food-types', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-02-09 07:38:40', '2022-02-09 07:38:40'),
(517, 1, 'admin/users', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-02-09 07:38:42', '2022-02-09 07:38:42'),
(518, 1, 'admin/foods', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-02-09 07:38:45', '2022-02-09 07:38:45'),
(519, 1, 'admin/foods/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-02-09 07:38:54', '2022-02-09 07:38:54'),
(520, 1, 'admin/foods/create', 'GET', '198.255.45.131', '[]', '2022-02-09 07:40:27', '2022-02-09 07:40:27'),
(521, 1, 'admin/auth/menu', 'GET', '104.223.97.2', '{\"_pjax\":\"#pjax-container\"}', '2022-02-09 18:26:18', '2022-02-09 18:26:18'),
(522, 1, 'admin/auth/menu', 'POST', '104.223.97.2', '{\"parent_id\":\"0\",\"title\":\"Orders\",\"icon\":\"fa-first-order\",\"uri\":\"\\/orders\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"8TsmcTdNvmI00f4i4pNJ4DniqL5L6aM0a2Dfd5Ik\"}', '2022-02-09 18:27:25', '2022-02-09 18:27:25'),
(523, 1, 'admin/auth/menu', 'GET', '104.223.97.2', '[]', '2022-02-09 18:27:25', '2022-02-09 18:27:25'),
(524, 1, 'admin/auth/menu', 'GET', '104.223.97.2', '[]', '2022-02-09 18:27:44', '2022-02-09 18:27:44'),
(525, 1, 'admin/orders', 'GET', '104.223.97.2', '{\"_pjax\":\"#pjax-container\"}', '2022-02-09 18:27:47', '2022-02-09 18:27:47'),
(526, 1, 'admin/orders', 'GET', '104.223.97.2', '{\"_pjax\":\"#pjax-container\",\"page\":\"6\"}', '2022-02-09 18:35:37', '2022-02-09 18:35:37'),
(527, 1, 'admin/orders/100101/edit', 'GET', '104.223.97.2', '{\"_pjax\":\"#pjax-container\"}', '2022-02-09 18:38:39', '2022-02-09 18:38:39'),
(528, 1, 'admin/orders/100101/edit', 'GET', '58.39.68.12', '[]', '2022-02-09 18:43:58', '2022-02-09 18:43:58'),
(529, 1, 'admin/orders/100101/edit', 'GET', '58.39.68.12', '[]', '2022-02-09 18:44:16', '2022-02-09 18:44:16'),
(530, 1, 'admin/orders/100101/edit', 'GET', '58.39.68.12', '[]', '2022-02-09 18:44:31', '2022-02-09 18:44:31'),
(531, 1, 'admin/orders/100101/edit', 'GET', '58.39.68.12', '[]', '2022-02-09 18:44:54', '2022-02-09 18:44:54'),
(532, 1, 'admin/orders', 'GET', '58.39.68.12', '{\"_pjax\":\"#pjax-container\"}', '2022-02-09 18:46:05', '2022-02-09 18:46:05'),
(533, 1, 'admin/orders/100001/edit', 'GET', '58.39.68.12', '{\"_pjax\":\"#pjax-container\"}', '2022-02-09 18:46:12', '2022-02-09 18:46:12'),
(534, 1, 'admin/orders', 'GET', '58.39.68.12', '{\"_pjax\":\"#pjax-container\"}', '2022-02-09 18:53:44', '2022-02-09 18:53:44'),
(535, 1, 'admin/orders/100001/edit', 'GET', '58.39.68.12', '{\"_pjax\":\"#pjax-container\"}', '2022-02-09 18:54:07', '2022-02-09 18:54:07'),
(536, 1, 'admin/orders', 'GET', '58.39.68.12', '{\"_pjax\":\"#pjax-container\"}', '2022-02-09 18:54:08', '2022-02-09 18:54:08'),
(537, 1, 'admin/orders/100001/edit', 'GET', '58.39.68.12', '{\"_pjax\":\"#pjax-container\"}', '2022-02-09 18:54:09', '2022-02-09 18:54:09'),
(538, 1, 'admin/orders', 'GET', '58.39.68.12', '{\"_pjax\":\"#pjax-container\"}', '2022-02-09 18:54:10', '2022-02-09 18:54:10'),
(539, 1, 'admin/orders/100001/edit', 'GET', '58.39.68.12', '{\"_pjax\":\"#pjax-container\"}', '2022-02-09 18:54:51', '2022-02-09 18:54:51'),
(540, 1, 'admin/orders', 'GET', '58.39.68.12', '{\"_pjax\":\"#pjax-container\"}', '2022-02-09 18:54:52', '2022-02-09 18:54:52'),
(541, 1, 'admin/orders/100001/edit', 'GET', '58.39.68.12', '{\"_pjax\":\"#pjax-container\"}', '2022-02-09 18:54:55', '2022-02-09 18:54:55'),
(542, 1, 'admin/orders', 'GET', '58.39.68.12', '{\"_pjax\":\"#pjax-container\"}', '2022-02-09 18:56:26', '2022-02-09 18:56:26'),
(543, 1, 'admin/orders', 'GET', '58.39.68.12', '[]', '2022-02-09 18:56:27', '2022-02-09 18:56:27'),
(544, 1, 'admin/orders', 'GET', '58.39.68.12', '{\"page\":\"6\",\"_pjax\":\"#pjax-container\"}', '2022-02-09 18:57:30', '2022-02-09 18:57:30'),
(545, 1, 'admin/orders', 'GET', '58.39.68.12', '{\"_pjax\":\"#pjax-container\"}', '2022-02-09 18:57:32', '2022-02-09 18:57:32'),
(546, 1, 'admin/orders', 'GET', '58.39.68.12', '{\"_pjax\":\"#pjax-container\",\"page\":\"6\"}', '2022-02-09 18:57:35', '2022-02-09 18:57:35'),
(547, 1, 'admin/orders/100106/edit', 'GET', '58.39.68.12', '{\"_pjax\":\"#pjax-container\"}', '2022-02-09 18:57:56', '2022-02-09 18:57:56'),
(548, 1, 'admin', 'GET', '103.235.1.9', '[]', '2022-02-25 08:55:46', '2022-02-25 08:55:46'),
(549, 1, 'admin/food-types', 'GET', '103.235.1.9', '{\"_pjax\":\"#pjax-container\"}', '2022-02-25 08:55:59', '2022-02-25 08:55:59'),
(550, 1, 'admin/food-types/2/edit', 'GET', '103.235.1.9', '{\"_pjax\":\"#pjax-container\"}', '2022-02-25 08:56:04', '2022-02-25 08:56:04'),
(551, 1, 'admin/foods', 'GET', '103.235.1.9', '{\"_pjax\":\"#pjax-container\"}', '2022-02-25 08:56:09', '2022-02-25 08:56:09'),
(552, 1, 'admin', 'GET', '103.54.43.215', '[]', '2022-02-27 03:14:41', '2022-02-27 03:14:41'),
(553, 1, 'admin', 'GET', '103.54.43.215', '[]', '2022-02-27 03:16:31', '2022-02-27 03:16:31'),
(554, 1, 'admin', 'GET', '103.54.43.215', '[]', '2022-02-27 03:45:36', '2022-02-27 03:45:36'),
(555, 1, 'admin', 'GET', '103.54.43.215', '[]', '2022-02-27 03:45:47', '2022-02-27 03:45:47'),
(556, 1, 'admin/auth/users', 'GET', '103.54.43.215', '{\"_pjax\":\"#pjax-container\"}', '2022-02-27 03:46:03', '2022-02-27 03:46:03'),
(557, 1, 'admin/auth/permissions', 'GET', '103.54.43.215', '{\"_pjax\":\"#pjax-container\"}', '2022-02-27 03:46:06', '2022-02-27 03:46:06'),
(558, 1, 'admin/food-types', 'GET', '103.54.43.215', '{\"_pjax\":\"#pjax-container\"}', '2022-02-27 03:46:10', '2022-02-27 03:46:10'),
(559, 1, 'admin/food-types', 'GET', '103.54.43.215', '{\"_pjax\":\"#pjax-container\"}', '2022-02-27 03:46:14', '2022-02-27 03:46:14'),
(560, 1, 'admin/food-types', 'GET', '103.54.43.215', '{\"_pjax\":\"#pjax-container\"}', '2022-02-27 03:46:17', '2022-02-27 03:46:17'),
(561, 1, 'admin/foods', 'GET', '103.54.43.215', '{\"_pjax\":\"#pjax-container\"}', '2022-02-27 03:46:22', '2022-02-27 03:46:22'),
(562, 1, 'admin', 'GET', '58.39.68.12', '[]', '2022-02-27 22:23:22', '2022-02-27 22:23:22'),
(563, 1, 'admin/auth/menu', 'GET', '58.39.68.12', '{\"_pjax\":\"#pjax-container\"}', '2022-02-27 22:23:34', '2022-02-27 22:23:34'),
(564, 1, 'admin/auth/menu', 'POST', '58.39.68.12', '{\"parent_id\":\"0\",\"title\":\"Payment Setting\",\"icon\":\"fa-dollar\",\"uri\":\"\\/business-settings\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"AD5CeNJUhat68Q5go4paKEGp23DTYgzCh5NQNAz7\"}', '2022-02-27 22:24:23', '2022-02-27 22:24:23'),
(565, 1, 'admin/auth/menu', 'GET', '58.39.68.12', '[]', '2022-02-27 22:24:23', '2022-02-27 22:24:23'),
(566, 1, 'admin/auth/menu', 'GET', '58.39.68.12', '[]', '2022-02-27 22:24:26', '2022-02-27 22:24:26'),
(567, 1, 'admin/business-settings', 'GET', '58.39.68.12', '{\"_pjax\":\"#pjax-container\"}', '2022-02-27 22:24:28', '2022-02-27 22:24:28'),
(568, 1, 'admin/business-settings/create', 'GET', '58.39.68.12', '{\"_pjax\":\"#pjax-container\"}', '2022-02-27 22:24:32', '2022-02-27 22:24:32'),
(569, 1, 'admin/business-settings/create', 'GET', '58.39.68.12', '[]', '2022-02-27 22:38:35', '2022-02-27 22:38:35'),
(570, 1, 'admin/business-settings/create', 'GET', '58.39.68.12', '[]', '2022-02-27 22:44:43', '2022-02-27 22:44:43'),
(571, 1, 'admin/business-settings/create', 'GET', '58.39.68.12', '[]', '2022-02-27 22:45:29', '2022-02-27 22:45:29'),
(572, 1, 'admin/business-settings/create', 'GET', '58.39.68.12', '[]', '2022-02-27 22:45:41', '2022-02-27 22:45:41'),
(573, 1, 'admin/business-settings', 'POST', '58.39.68.12', '{\"key\":\"test\",\"client_id\":\"734490u\",\"secret_id\":\"isjfuh\",\"_token\":\"AD5CeNJUhat68Q5go4paKEGp23DTYgzCh5NQNAz7\"}', '2022-02-27 22:45:52', '2022-02-27 22:45:52'),
(574, 1, 'admin/business-settings', 'GET', '58.39.68.12', '[]', '2022-02-27 22:45:52', '2022-02-27 22:45:52'),
(575, 1, 'admin/business-settings/create', 'GET', '58.39.68.12', '{\"_pjax\":\"#pjax-container\"}', '2022-02-27 22:46:06', '2022-02-27 22:46:06'),
(576, 1, 'admin/business-settings', 'POST', '58.39.68.12', '{\"key\":\"test\",\"client_id\":\"ss\",\"secret_id\":\"ss\",\"_token\":\"AD5CeNJUhat68Q5go4paKEGp23DTYgzCh5NQNAz7\",\"_previous_\":\"https:\\/\\/mvs.bslmeiyu.com\\/admin\\/business-settings\"}', '2022-02-27 22:46:12', '2022-02-27 22:46:12'),
(577, 1, 'admin/business-settings', 'GET', '58.39.68.12', '[]', '2022-02-27 22:46:12', '2022-02-27 22:46:12'),
(578, 1, 'admin/business-settings', 'GET', '58.39.68.12', '[]', '2022-02-27 22:47:19', '2022-02-27 22:47:19'),
(579, 1, 'admin/business-settings/create', 'GET', '58.39.68.12', '{\"_pjax\":\"#pjax-container\"}', '2022-02-27 22:47:21', '2022-02-27 22:47:21'),
(580, 1, 'admin/business-settings', 'POST', '58.39.68.12', '{\"key\":\"test\",\"client_id\":\"734490u\",\"secret_id\":\"ss\",\"_token\":\"AD5CeNJUhat68Q5go4paKEGp23DTYgzCh5NQNAz7\",\"_previous_\":\"https:\\/\\/mvs.bslmeiyu.com\\/admin\\/business-settings\"}', '2022-02-27 22:47:27', '2022-02-27 22:47:27'),
(581, 1, 'admin/business-settings/create', 'GET', '58.39.68.12', '[]', '2022-02-27 22:47:27', '2022-02-27 22:47:27'),
(582, 1, 'admin/business-settings/create', 'GET', '58.39.68.12', '[]', '2022-02-27 22:48:42', '2022-02-27 22:48:42'),
(583, 1, 'admin/business-settings', 'POST', '58.39.68.12', '{\"key\":\"test\",\"client_id\":\"ss\",\"secret_id\":\"ss\",\"_token\":\"AD5CeNJUhat68Q5go4paKEGp23DTYgzCh5NQNAz7\"}', '2022-02-27 22:48:48', '2022-02-27 22:48:48'),
(584, 1, 'admin/business-settings/create', 'GET', '58.39.68.12', '[]', '2022-02-27 22:48:48', '2022-02-27 22:48:48'),
(585, 1, 'admin/business-settings/create', 'GET', '58.39.68.12', '[]', '2022-02-27 22:50:49', '2022-02-27 22:50:49'),
(586, 1, 'admin/business-settings', 'POST', '58.39.68.12', '{\"key\":\"test\",\"_token\":\"AD5CeNJUhat68Q5go4paKEGp23DTYgzCh5NQNAz7\"}', '2022-02-27 22:50:52', '2022-02-27 22:50:52'),
(587, 1, 'admin/business-settings/create', 'GET', '58.39.68.12', '[]', '2022-02-27 22:50:52', '2022-02-27 22:50:52'),
(588, 1, 'admin/business-settings/create', 'GET', '198.255.45.131', '[]', '2022-02-27 23:05:13', '2022-02-27 23:05:13'),
(589, 1, 'admin/business-settings/create', 'GET', '198.255.45.131', '[]', '2022-02-27 23:05:31', '2022-02-27 23:05:31'),
(590, 1, 'admin/business-settings', 'POST', '198.255.45.131', '{\"key\":\"test\",\"value\":\"jshs\",\"_token\":\"AD5CeNJUhat68Q5go4paKEGp23DTYgzCh5NQNAz7\"}', '2022-02-27 23:05:36', '2022-02-27 23:05:36'),
(591, 1, 'admin/business-settings', 'GET', '198.255.45.131', '[]', '2022-02-27 23:05:37', '2022-02-27 23:05:37'),
(592, 1, 'admin/business-settings/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-02-27 23:08:40', '2022-02-27 23:08:40'),
(593, 1, 'admin/business-settings', 'POST', '198.255.45.131', '{\"key\":\"test\",\"value\":{\"client id\":\"shfsuhsf\",\"Secret id\":\"ksfhkhshiuhf\"},\"_token\":\"AD5CeNJUhat68Q5go4paKEGp23DTYgzCh5NQNAz7\",\"_previous_\":\"https:\\/\\/mvs.bslmeiyu.com\\/admin\\/business-settings\"}', '2022-02-27 23:09:10', '2022-02-27 23:09:10'),
(594, 1, 'admin/business-settings', 'GET', '198.255.45.131', '[]', '2022-02-27 23:09:10', '2022-02-27 23:09:10'),
(595, 1, 'admin/business-settings/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-02-27 23:14:52', '2022-02-27 23:14:52'),
(596, 1, 'admin/business-settings/create', 'GET', '198.255.45.131', '[]', '2022-02-27 23:16:02', '2022-02-27 23:16:02'),
(597, 1, 'admin/business-settings/create', 'GET', '198.255.45.131', '[]', '2022-02-27 23:16:28', '2022-02-27 23:16:28'),
(598, 1, 'admin/business-settings', 'POST', '198.255.45.131', '{\"key\":\"pay\",\"value\":{\"status\":\"1\",\"client id\":\"shfsuhsf\",\"Secret id\":\"ksfhkhshiuhf\"},\"_token\":\"AD5CeNJUhat68Q5go4paKEGp23DTYgzCh5NQNAz7\"}', '2022-02-27 23:16:40', '2022-02-27 23:16:40'),
(599, 1, 'admin/business-settings', 'GET', '198.255.45.131', '[]', '2022-02-27 23:16:40', '2022-02-27 23:16:40'),
(600, 1, 'admin/business-settings/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-02-27 23:29:01', '2022-02-27 23:29:01'),
(601, 1, 'admin/business-settings', 'POST', '198.255.45.131', '{\"key\":\"paypal\",\"value\":{\"status\":\"1\",\"paypal_client_id\":\"AYkWuTf46Z1LRsxr5V1nXXmvplE1Pox0WLJG7JeYPQMQ3RjGtBJ_e7dHzZZO-Pf7dnV5iMhhgMgRhRs5\",\"paypal_secret_id\":\"EMllsYjwRcI3k7TSQjLhH5M8xJb1grRTF7Vrq972dYhzTzIb_j_rVDlEMGiyRhk9eNJuvhk7WdqkMwrR\"},\"_token\":\"AD5CeNJUhat68Q5go4paKEGp23DTYgzCh5NQNAz7\",\"_previous_\":\"https:\\/\\/mvs.bslmeiyu.com\\/admin\\/business-settings\"}', '2022-02-27 23:29:33', '2022-02-27 23:29:33'),
(602, 1, 'admin/business-settings', 'GET', '198.255.45.131', '[]', '2022-02-27 23:29:34', '2022-02-27 23:29:34'),
(603, 1, 'admin/business-settings', 'GET', '58.39.68.12', '[]', '2022-02-28 08:05:23', '2022-02-28 08:05:23'),
(604, 1, 'admin', 'GET', '180.152.242.33', '[]', '2022-03-03 06:42:53', '2022-03-03 06:42:53'),
(605, 1, 'admin/orders', 'GET', '180.152.242.33', '{\"_pjax\":\"#pjax-container\"}', '2022-03-03 06:43:00', '2022-03-03 06:43:00'),
(606, 1, 'admin/orders', 'GET', '180.152.242.33', '[]', '2022-03-03 06:55:57', '2022-03-03 06:55:57'),
(607, 1, 'admin/orders', 'GET', '180.152.242.33', '{\"page\":\"8\",\"_pjax\":\"#pjax-container\"}', '2022-03-03 06:56:02', '2022-03-03 06:56:02'),
(608, 1, 'admin/orders/100141,100142,100143,100144,100145,100146,100147,100148,100149,100150,100151,100152,100153,100154,100155', 'DELETE', '180.152.242.33', '{\"_method\":\"delete\",\"_token\":\"sVkXUnzfmGZgsu7tbhl80ZheHxK85zEcWqh8IqJc\"}', '2022-03-03 06:56:48', '2022-03-03 06:56:48'),
(609, 1, 'admin/orders', 'GET', '180.152.242.33', '{\"page\":\"8\",\"_pjax\":\"#pjax-container\"}', '2022-03-03 06:56:48', '2022-03-03 06:56:48'),
(610, 1, 'admin/orders', 'GET', '180.152.242.33', '{\"page\":\"7\",\"_pjax\":\"#pjax-container\"}', '2022-03-03 06:56:49', '2022-03-03 06:56:49'),
(611, 1, 'admin/orders', 'GET', '180.152.242.33', '{\"page\":\"7\",\"_pjax\":\"#pjax-container\",\"per_page\":\"100\"}', '2022-03-03 06:56:56', '2022-03-03 06:56:56'),
(612, 1, 'admin/orders', 'GET', '180.152.242.33', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\",\"per_page\":\"100\"}', '2022-03-03 06:56:56', '2022-03-03 06:56:56'),
(613, 1, 'admin/orders/100101,100102,100103,100104,100105,100106,100107,100108,100109,100110,100111,100112,100113,100114,100115,100116,100117,100118,100119,100120,100121,100122,100123,100124,100125,100126,100127,100128,100129,100130,100131,100132,100133,100134,1001', 'DELETE', '180.152.242.33', '{\"_method\":\"delete\",\"_token\":\"sVkXUnzfmGZgsu7tbhl80ZheHxK85zEcWqh8IqJc\"}', '2022-03-03 06:57:03', '2022-03-03 06:57:03'),
(614, 1, 'admin/orders', 'GET', '180.152.242.33', '{\"page\":\"2\",\"per_page\":\"100\",\"_pjax\":\"#pjax-container\"}', '2022-03-03 06:57:04', '2022-03-03 06:57:04'),
(615, 1, 'admin/orders', 'GET', '180.152.242.33', '{\"page\":\"1\",\"per_page\":\"100\",\"_pjax\":\"#pjax-container\"}', '2022-03-03 06:57:04', '2022-03-03 06:57:04'),
(616, 1, 'admin/orders/100003,100004,100005,100006,100007,100008,100009,100010,100011,100012,100013,100014,100015,100016,100017,100018,100019,100020,100021,100022,100023,100024,100025,100026,100027,100028,100029,100030,100031,100032,100033,100034,100035,100036,1000', 'DELETE', '180.152.242.33', '{\"_method\":\"delete\",\"_token\":\"sVkXUnzfmGZgsu7tbhl80ZheHxK85zEcWqh8IqJc\"}', '2022-03-03 06:57:18', '2022-03-03 06:57:18'),
(617, 1, 'admin/orders', 'GET', '180.152.242.33', '{\"page\":\"1\",\"per_page\":\"100\",\"_pjax\":\"#pjax-container\"}', '2022-03-03 06:57:19', '2022-03-03 06:57:19'),
(818, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 08:49:49', '2022-04-28 08:49:49'),
(819, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 08:56:32', '2022-04-28 08:56:32'),
(820, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 09:00:17', '2022-04-28 09:00:17'),
(821, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 09:00:19', '2022-04-28 09:00:19'),
(822, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 09:01:21', '2022-04-28 09:01:21'),
(823, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 09:01:22', '2022-04-28 09:01:22'),
(824, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 09:01:23', '2022-04-28 09:01:23'),
(825, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 09:01:24', '2022-04-28 09:01:24'),
(826, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 09:01:39', '2022-04-28 09:01:39'),
(827, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 09:02:10', '2022-04-28 09:02:10'),
(828, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 09:02:13', '2022-04-28 09:02:13'),
(829, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 09:03:07', '2022-04-28 09:03:07'),
(830, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 09:03:08', '2022-04-28 09:03:08'),
(831, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 09:03:40', '2022-04-28 09:03:40'),
(832, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 09:03:48', '2022-04-28 09:03:48'),
(833, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 09:04:23', '2022-04-28 09:04:23'),
(834, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 09:04:27', '2022-04-28 09:04:27'),
(835, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 09:04:36', '2022-04-28 09:04:36'),
(836, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 09:05:14', '2022-04-28 09:05:14'),
(837, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 09:06:07', '2022-04-28 09:06:07'),
(838, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 09:20:36', '2022-04-28 09:20:36'),
(839, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 09:20:38', '2022-04-28 09:20:38'),
(840, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 09:20:40', '2022-04-28 09:20:40'),
(841, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 09:23:58', '2022-04-28 09:23:58'),
(842, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 09:24:00', '2022-04-28 09:24:00'),
(843, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 09:24:06', '2022-04-28 09:24:06'),
(844, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 09:24:07', '2022-04-28 09:24:07'),
(845, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 09:24:37', '2022-04-28 09:24:37'),
(846, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 09:24:39', '2022-04-28 09:24:39'),
(847, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 09:24:46', '2022-04-28 09:24:46'),
(848, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 09:45:07', '2022-04-28 09:45:07'),
(849, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 18:29:22', '2022-04-28 18:29:22'),
(850, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 18:29:23', '2022-04-28 18:29:23'),
(851, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-04-28 18:29:24', '2022-04-28 18:29:24'),
(852, 1, 'admin', 'GET', '105.112.10.94', '[]', '2022-05-01 08:25:35', '2022-05-01 08:25:35'),
(853, 1, 'admin', 'GET', '105.112.114.28', '[]', '2022-05-02 22:53:25', '2022-05-02 22:53:25'),
(854, 1, 'admin', 'GET', '105.112.114.28', '[]', '2022-05-03 02:50:49', '2022-05-03 02:50:49'),
(855, 1, 'admin', 'GET', '152.57.139.154', '[]', '2022-05-03 05:02:02', '2022-05-03 05:02:02'),
(856, 1, 'admin', 'GET', '152.57.139.154', '[]', '2022-05-03 05:22:31', '2022-05-03 05:22:31'),
(857, 1, 'admin', 'GET', '152.57.139.154', '[]', '2022-05-03 05:22:51', '2022-05-03 05:22:51'),
(858, 1, 'admin/auth/login', 'GET', '152.57.139.154', '[]', '2022-05-03 05:23:01', '2022-05-03 05:23:01'),
(859, 1, 'admin', 'GET', '152.57.139.154', '[]', '2022-05-03 05:23:05', '2022-05-03 05:23:05'),
(860, 1, 'admin', 'GET', '152.57.139.154', '[]', '2022-05-03 05:23:31', '2022-05-03 05:23:31'),
(861, 1, 'admin', 'GET', '152.57.139.154', '[]', '2022-05-03 05:24:02', '2022-05-03 05:24:02'),
(862, 1, 'admin', 'GET', '171.237.117.58', '[]', '2022-05-04 01:33:47', '2022-05-04 01:33:47'),
(863, 1, 'admin/auth/login', 'GET', '171.237.117.58', '[]', '2022-05-04 02:00:04', '2022-05-04 02:00:04'),
(864, 1, 'admin/auth/login', 'GET', '171.237.117.58', '[]', '2022-05-04 02:00:06', '2022-05-04 02:00:06'),
(865, 1, 'admin', 'GET', '171.237.117.58', '[]', '2022-05-04 02:00:08', '2022-05-04 02:00:08'),
(866, 1, 'admin', 'GET', '171.237.117.58', '[]', '2022-05-04 02:00:14', '2022-05-04 02:00:14'),
(867, 1, 'admin', 'GET', '152.57.119.251', '[]', '2022-05-04 02:11:52', '2022-05-04 02:11:52'),
(868, 1, 'admin', 'GET', '152.57.119.251', '[]', '2022-05-04 02:29:44', '2022-05-04 02:29:44'),
(869, 1, 'admin', 'GET', '152.57.119.251', '[]', '2022-05-04 02:45:16', '2022-05-04 02:45:16'),
(870, 1, 'admin', 'GET', '171.237.117.58', '[]', '2022-05-04 06:49:17', '2022-05-04 06:49:17'),
(871, 1, 'admin', 'GET', '171.237.117.58', '[]', '2022-05-04 17:58:52', '2022-05-04 17:58:52'),
(872, 1, 'admin', 'GET', '171.237.117.58', '[]', '2022-05-04 17:59:00', '2022-05-04 17:59:00'),
(873, 1, 'admin', 'GET', '171.238.77.4', '[]', '2022-05-04 23:39:40', '2022-05-04 23:39:40'),
(874, 1, 'admin', 'GET', '171.238.77.4', '[]', '2022-05-05 08:26:29', '2022-05-05 08:26:29'),
(875, 1, 'admin', 'GET', '171.238.77.4', '[]', '2022-05-05 08:27:21', '2022-05-05 08:27:21'),
(876, 1, 'admin', 'GET', '185.251.116.122', '[]', '2022-05-06 07:48:32', '2022-05-06 07:48:32'),
(877, 1, 'admin', 'GET', '185.251.116.122', '[]', '2022-05-06 08:13:49', '2022-05-06 08:13:49'),
(878, 1, 'admin', 'GET', '185.251.116.122', '[]', '2022-05-06 08:18:53', '2022-05-06 08:18:53'),
(879, 1, 'admin/users', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-05-06 08:18:56', '2022-05-06 08:18:56'),
(880, 1, 'admin/foods', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-05-06 08:19:02', '2022-05-06 08:19:02'),
(881, 1, 'admin/orders', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-05-06 08:19:09', '2022-05-06 08:19:09'),
(882, 1, 'admin/business-settings', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-05-06 08:19:18', '2022-05-06 08:19:18'),
(883, 1, 'admin', 'GET', '180.152.243.101', '[]', '2022-05-06 08:46:43', '2022-05-06 08:46:43'),
(884, 1, 'admin', 'GET', '185.251.116.122', '[]', '2022-05-06 18:55:00', '2022-05-06 18:55:00'),
(885, 1, 'admin/auth/users', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-05-06 18:55:10', '2022-05-06 18:55:10'),
(886, 1, 'admin/auth/users/1/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-05-06 18:55:15', '2022-05-06 18:55:15'),
(887, 1, 'admin/auth/users/1', 'PUT', '185.251.116.122', '{\"username\":\"admin\",\"name\":\"Administrator\",\"password\":\"iiamatIntel87d\",\"password_confirmation\":\"iiamatIntel87d\",\"roles\":[\"1\",null],\"permissions\":[null],\"_token\":\"EUsEN2s4B6DAvhdVWg59CNXMxE9D3YKI5qI0UtQz\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/auth\\/users\"}', '2022-05-06 18:55:32', '2022-05-06 18:55:32'),
(888, 1, 'admin/auth/users', 'GET', '185.251.116.122', '[]', '2022-05-06 18:55:34', '2022-05-06 18:55:34'),
(889, 1, 'admin/food-types', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-05-06 18:55:40', '2022-05-06 18:55:40'),
(890, 1, 'admin/orders', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-05-06 18:55:46', '2022-05-06 18:55:46'),
(891, 1, 'admin', 'GET', '171.238.77.4', '[]', '2022-05-06 23:21:04', '2022-05-06 23:21:04'),
(892, 1, 'admin/food-types', 'GET', '171.238.77.4', '{\"_pjax\":\"#pjax-container\"}', '2022-05-06 23:21:42', '2022-05-06 23:21:42'),
(893, 1, 'admin/users', 'GET', '171.238.77.4', '{\"_pjax\":\"#pjax-container\"}', '2022-05-06 23:21:44', '2022-05-06 23:21:44'),
(894, 1, 'admin/foods', 'GET', '171.238.77.4', '{\"_pjax\":\"#pjax-container\"}', '2022-05-06 23:21:54', '2022-05-06 23:21:54'),
(895, 1, 'admin', 'GET', '171.238.77.4', '[]', '2022-05-06 23:25:19', '2022-05-06 23:25:19'),
(896, 1, 'admin/users', 'GET', '171.238.77.4', '{\"_pjax\":\"#pjax-container\"}', '2022-05-06 23:25:32', '2022-05-06 23:25:32'),
(897, 1, 'admin/foods', 'GET', '171.238.77.4', '{\"_pjax\":\"#pjax-container\"}', '2022-05-06 23:25:36', '2022-05-06 23:25:36'),
(898, 1, 'admin/foods/1/edit', 'GET', '171.238.77.4', '{\"_pjax\":\"#pjax-container\"}', '2022-05-06 23:32:50', '2022-05-06 23:32:50'),
(899, 1, 'admin/foods/1', 'PUT', '171.238.77.4', '{\"name\":\"Nutritious fruit meal in china\",\"type_id\":\"2\",\"price\":\"120000\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"description\":\"<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">This&nbsp;five red bases, two are dedicated to salami (fennel and regular), and there&#39;s a classic capricciosa or beef carpaccio. Blanco options include a mushroom, and a four-cheese extravaganza featuring great lobes of a tangy fior di latte they make in house every day (more on this later). Classic, precise, good.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">I think it&#39;s still better to think of this venue not as a pizzeria, but as Pizza, by Di Stasio.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">Rinaldo Di Stasio and Mallory Wall&#39;s empire, including the original restaurant and bar in St Kilda, Citta and now Carlton, is a designer label for dining.<\\/p><p><br\\/><\\/p>\",\"_token\":\"ZQ0arTedoRDJc7YfhGzWwy2YWXo8EDFT93X1W9Ro\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/foods\"}', '2022-05-06 23:33:06', '2022-05-06 23:33:06'),
(900, 1, 'admin/foods', 'GET', '171.238.77.4', '[]', '2022-05-06 23:33:06', '2022-05-06 23:33:06'),
(901, 1, 'admin', 'GET', '171.238.77.4', '[]', '2022-05-06 23:52:58', '2022-05-06 23:52:58'),
(902, 1, 'admin/food-types', 'GET', '171.238.77.4', '{\"_pjax\":\"#pjax-container\"}', '2022-05-06 23:53:17', '2022-05-06 23:53:17'),
(903, 1, 'admin/foods', 'GET', '171.238.77.4', '{\"_pjax\":\"#pjax-container\"}', '2022-05-06 23:53:19', '2022-05-06 23:53:19'),
(904, 1, 'admin/auth/menu', 'GET', '171.238.77.4', '{\"_pjax\":\"#pjax-container\"}', '2022-05-06 23:56:28', '2022-05-06 23:56:28'),
(905, 1, 'admin/auth/permissions', 'GET', '171.238.77.4', '{\"_pjax\":\"#pjax-container\"}', '2022-05-06 23:57:50', '2022-05-06 23:57:50'),
(906, 1, 'admin/auth/roles', 'GET', '171.238.77.4', '{\"_pjax\":\"#pjax-container\"}', '2022-05-06 23:58:23', '2022-05-06 23:58:23'),
(907, 1, 'admin/orders', 'GET', '171.238.77.4', '{\"_pjax\":\"#pjax-container\"}', '2022-05-06 23:58:33', '2022-05-06 23:58:33'),
(908, 1, 'admin/business-settings', 'GET', '171.238.77.4', '{\"_pjax\":\"#pjax-container\"}', '2022-05-06 23:59:02', '2022-05-06 23:59:02'),
(909, 1, 'admin', 'GET', '171.238.77.4', '{\"_pjax\":\"#pjax-container\"}', '2022-05-06 23:59:09', '2022-05-06 23:59:09'),
(910, 1, 'admin/orders', 'GET', '171.238.77.4', '{\"_pjax\":\"#pjax-container\"}', '2022-05-06 23:59:48', '2022-05-06 23:59:48'),
(911, 1, 'admin', 'GET', '171.238.77.4', '{\"_pjax\":\"#pjax-container\"}', '2022-05-07 00:01:14', '2022-05-07 00:01:14'),
(912, 1, 'admin/orders', 'GET', '171.238.77.4', '{\"_pjax\":\"#pjax-container\"}', '2022-05-07 00:06:01', '2022-05-07 00:06:01'),
(913, 1, 'admin/orders/100001/edit', 'GET', '171.238.77.4', '{\"_pjax\":\"#pjax-container\"}', '2022-05-07 00:06:17', '2022-05-07 00:06:17'),
(914, 1, 'admin/orders/100001', 'PUT', '171.238.77.4', '{\"order_amount\":\"36\",\"payment_status\":\"pending\",\"order_status\":\"pending\",\"confirmed\":\"2022-05-07 08:06:17\",\"accepted\":\"2022-05-07 08:06:17\",\"scheduled\":\"off\",\"processing\":\"2022-05-07 08:06:17\",\"handover\":\"2022-05-07 08:06:17\",\"failed\":\"2022-05-07 08:06:17\",\"scheduled_at\":\"2022-05-07 08:06:17\",\"delivery_address_id\":\"1\",\"order_note\":\"Note about food\",\"delivery_charge\":null,\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"as\\\",\\\"contact_person_number\\\":\\\"1\\\",\\\"address\\\":\\\"test\\\",\\\"longitude\\\":\\\"\\\",\\\"latitude\\\":\\\"\\\"}\",\"otp\":\"4976\",\"pending\":\"2022-01-08 14:35:12\",\"picked_up\":\"2022-05-07 08:06:17\",\"delivered\":\"2022-05-07 08:06:17\",\"canceled\":\"2022-05-07 08:06:17\",\"_token\":\"ZQ0arTedoRDJc7YfhGzWwy2YWXo8EDFT93X1W9Ro\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-05-07 00:06:41', '2022-05-07 00:06:41'),
(915, 1, 'admin/orders', 'GET', '171.238.77.4', '[]', '2022-05-07 00:06:41', '2022-05-07 00:06:41'),
(916, 1, 'admin/auth/menu', 'GET', '171.238.77.4', '{\"_pjax\":\"#pjax-container\"}', '2022-05-07 00:12:12', '2022-05-07 00:12:12'),
(917, 1, 'admin/orders', 'GET', '171.238.77.4', '{\"_pjax\":\"#pjax-container\"}', '2022-05-07 00:12:36', '2022-05-07 00:12:36'),
(918, 1, 'admin/auth/menu', 'GET', '171.238.77.4', '{\"_pjax\":\"#pjax-container\"}', '2022-05-07 00:13:59', '2022-05-07 00:13:59'),
(919, 1, 'admin/auth/menu/12/edit', 'GET', '171.238.77.4', '{\"_pjax\":\"#pjax-container\"}', '2022-05-07 00:14:03', '2022-05-07 00:14:03'),
(920, 1, 'admin/orders', 'GET', '171.238.77.4', '{\"_pjax\":\"#pjax-container\"}', '2022-05-07 00:16:00', '2022-05-07 00:16:00'),
(921, 1, 'admin/business-settings', 'GET', '217.168.16.63', '[]', '2022-05-08 04:03:39', '2022-05-08 04:03:39'),
(922, 1, 'admin', 'GET', '171.238.77.4', '[]', '2022-05-09 17:55:06', '2022-05-09 17:55:06'),
(923, 1, 'admin', 'GET', '171.238.77.4', '[]', '2022-05-09 17:55:52', '2022-05-09 17:55:52'),
(924, 1, 'admin/foods', 'GET', '171.238.77.4', '{\"_pjax\":\"#pjax-container\"}', '2022-05-09 17:55:56', '2022-05-09 17:55:56'),
(925, 1, 'admin/foods/1/edit', 'GET', '171.238.77.4', '{\"_pjax\":\"#pjax-container\"}', '2022-05-09 17:57:41', '2022-05-09 17:57:41'),
(926, 1, 'admin/foods/1', 'PUT', '171.238.77.4', '{\"name\":\"Nutritious fruit meal in china\",\"type_id\":\"2\",\"price\":\"120000\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"description\":\"<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">This&nbsp;five red bases, two are dedicated to salami (fennel and regular), and there&#39;s a classic capricciosa or beef carpaccio. Blanco options include a mushroom, and a four-cheese extravaganza featuring great lobes of a tangy fior di latte they make in house every day (more on this later). Classic, precise, good.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">I think it&#39;s still better to think of this venue not as a pizzeria, but as Pizza, by Di Stasio.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">Rinaldo Di Stasio and Mallory Wall&#39;s empire, including the original restaurant and bar in St Kilda, Citta and now Carlton, is a designer label for dining.<\\/p><p><br\\/><\\/p>\",\"_token\":\"YWp1kgP6dOfHf04n2zp54x4SAYHWsALVlizxcxoF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/foods\"}', '2022-05-09 17:58:54', '2022-05-09 17:58:54'),
(927, 1, 'admin/foods/1/edit', 'GET', '171.238.77.4', '[]', '2022-05-09 17:58:54', '2022-05-09 17:58:54'),
(928, 1, 'admin/foods', 'GET', '171.238.77.4', '{\"_pjax\":\"#pjax-container\"}', '2022-05-09 17:59:13', '2022-05-09 17:59:13'),
(929, 1, 'admin', 'GET', '171.238.77.4', '[]', '2022-05-09 23:24:18', '2022-05-09 23:24:18'),
(930, 1, 'admin/foods', 'GET', '171.238.77.4', '{\"_pjax\":\"#pjax-container\"}', '2022-05-09 23:24:34', '2022-05-09 23:24:34'),
(931, 1, 'admin', 'GET', '171.238.77.4', '[]', '2022-05-09 23:34:42', '2022-05-09 23:34:42'),
(932, 1, 'admin/foods', 'GET', '171.238.77.4', '{\"_pjax\":\"#pjax-container\"}', '2022-05-09 23:34:47', '2022-05-09 23:34:47'),
(933, 1, 'admin', 'GET', '185.251.116.122', '[]', '2022-05-16 03:48:16', '2022-05-16 03:48:16'),
(934, 1, 'admin/foods', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-05-16 03:48:31', '2022-05-16 03:48:31'),
(935, 1, 'admin/foods/1/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-05-16 03:48:44', '2022-05-16 03:48:44'),
(936, 1, 'admin/foods/1', 'PUT', '185.251.116.122', '{\"name\":\"Nutritious fruit meal in china\",\"type_id\":\"2\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"description\":\"<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">This&nbsp;five red bases, two are dedicated to salami (fennel and regular), and there&#39;s a classic capricciosa or beef carpaccio. Blanco options include a mushroom, and a four-cheese extravaganza featuring great lobes of a tangy fior di latte they make in house every day (more on this later). Classic, precise, good.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">I think it&#39;s still better to think of this venue not as a pizzeria, but as Pizza, by Di Stasio.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">Rinaldo Di Stasio and Mallory Wall&#39;s empire, including the original restaurant and bar in St Kilda, Citta and now Carlton, is a designer label for dining.<\\/p><p><br\\/><\\/p>\",\"_token\":\"GXHWzufZa1bRgOVdmulk8E9yAVzIhcsV856XIpJ7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/foods\"}', '2022-05-16 03:48:53', '2022-05-16 03:48:53'),
(937, 1, 'admin/foods', 'GET', '185.251.116.122', '[]', '2022-05-16 03:48:54', '2022-05-16 03:48:54'),
(938, 1, 'admin/foods/2/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-05-16 03:48:58', '2022-05-16 03:48:58');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(939, 1, 'admin/foods/2', 'PUT', '185.251.116.122', '{\"name\":\"Sweet Dessert\",\"type_id\":\"2\",\"price\":\"21\",\"location\":\"Icefields, Alberta\",\"stars\":\"5\",\"description\":\"<p>The best sweet dessert<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p>\",\"_token\":\"GXHWzufZa1bRgOVdmulk8E9yAVzIhcsV856XIpJ7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/foods\"}', '2022-05-16 03:49:07', '2022-05-16 03:49:07'),
(940, 1, 'admin/foods', 'GET', '185.251.116.122', '[]', '2022-05-16 03:49:08', '2022-05-16 03:49:08'),
(941, 1, 'admin/foods/3/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-05-16 03:49:16', '2022-05-16 03:49:16'),
(942, 1, 'admin/foods/3', 'PUT', '185.251.116.122', '{\"name\":\"Chinese Side\",\"type_id\":\"3\",\"price\":\"34\",\"location\":\"Moraine Lake, Alberta\",\"stars\":\"3\",\"description\":\"<p style=\\\"border: 0px; margin-top: 0px; margin-bottom: 1.3em; padding: 0px; line-height: 1.8; color: rgb(58, 58, 58); font-family: Montserrat, sans-serif; font-size: 20px; white-space: normal; background-color: rgb(255, 255, 255);\\\">Enjoy these flavors any time of day.<\\/p><p><br\\/><\\/p>\",\"_token\":\"GXHWzufZa1bRgOVdmulk8E9yAVzIhcsV856XIpJ7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/foods\"}', '2022-05-16 03:49:24', '2022-05-16 03:49:24'),
(943, 1, 'admin/foods', 'GET', '185.251.116.122', '[]', '2022-05-16 03:49:25', '2022-05-16 03:49:25'),
(944, 1, 'admin', 'GET', '171.237.117.244', '[]', '2022-05-17 00:58:36', '2022-05-17 00:58:36'),
(945, 1, 'admin/users', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\"}', '2022-05-17 00:58:42', '2022-05-17 00:58:42'),
(946, 1, 'admin/users/27', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\"}', '2022-05-17 00:59:01', '2022-05-17 00:59:01'),
(947, 1, 'admin/users', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\"}', '2022-05-17 00:59:07', '2022-05-17 00:59:07'),
(948, 1, 'admin/foods', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\"}', '2022-05-17 00:59:14', '2022-05-17 00:59:14'),
(949, 1, 'admin/users', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\"}', '2022-05-17 00:59:18', '2022-05-17 00:59:18'),
(950, 1, 'admin/users', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2022-05-17 00:59:46', '2022-05-17 00:59:46'),
(951, 1, 'admin/users/create', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\"}', '2022-05-17 00:59:53', '2022-05-17 00:59:53'),
(952, 1, 'admin/users', 'POST', '171.237.117.244', '{\"name\":\"Hoa\",\"email\":\"hoa123@gmail.com\",\"email_verified_at\":\"2022-05-17 08:59:53\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"BxwGUoNMuYRwdgiCvepFuepRhO4XtFf8MjFJlEhV\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/users?&page=2\"}', '2022-05-17 01:00:27', '2022-05-17 01:00:27'),
(953, 1, 'admin/users/create', 'GET', '171.237.117.244', '[]', '2022-05-17 01:00:27', '2022-05-17 01:00:27'),
(954, 1, 'admin/users', 'POST', '171.237.117.244', '{\"name\":\"Hoa\",\"email\":\"hoa123@gmail.com\",\"email_verified_at\":\"2022-05-17 08:59:53\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"BxwGUoNMuYRwdgiCvepFuepRhO4XtFf8MjFJlEhV\"}', '2022-05-17 01:00:54', '2022-05-17 01:00:54'),
(955, 1, 'admin/users/create', 'GET', '171.237.117.244', '[]', '2022-05-17 01:00:54', '2022-05-17 01:00:54'),
(956, 1, 'admin/users', 'POST', '171.237.117.244', '{\"name\":\"Hoa\",\"email\":\"hoa123@gmail.com\",\"email_verified_at\":\"2022-05-17 08:59:53\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"BxwGUoNMuYRwdgiCvepFuepRhO4XtFf8MjFJlEhV\"}', '2022-05-17 01:01:05', '2022-05-17 01:01:05'),
(957, 1, 'admin/users/create', 'GET', '171.237.117.244', '[]', '2022-05-17 01:01:05', '2022-05-17 01:01:05'),
(958, 1, 'admin/users', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\"}', '2022-05-17 01:01:10', '2022-05-17 01:01:10'),
(959, 1, 'admin/users', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\",\"page\":\"5\"}', '2022-05-17 01:01:16', '2022-05-17 01:01:16'),
(960, 1, 'admin/users/267', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\"}', '2022-05-17 01:01:23', '2022-05-17 01:01:23'),
(961, 1, 'admin/users', 'GET', '171.237.117.244', '{\"page\":\"5\",\"_pjax\":\"#pjax-container\"}', '2022-05-17 01:01:30', '2022-05-17 01:01:30'),
(962, 1, 'admin/users/create', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\"}', '2022-05-17 01:01:38', '2022-05-17 01:01:38'),
(963, 1, 'admin/business-settings', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\"}', '2022-05-17 01:01:48', '2022-05-17 01:01:48'),
(964, 1, 'admin/users', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\"}', '2022-05-17 01:02:13', '2022-05-17 01:02:13'),
(965, 1, 'admin/users/27', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\"}', '2022-05-17 01:02:24', '2022-05-17 01:02:24'),
(966, 1, 'admin/users', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\"}', '2022-05-17 01:02:33', '2022-05-17 01:02:33'),
(967, 1, 'admin', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\"}', '2022-05-17 01:08:13', '2022-05-17 01:08:13'),
(968, 1, 'admin/auth/users', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\"}', '2022-05-17 01:09:20', '2022-05-17 01:09:20'),
(969, 1, 'admin/users', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\"}', '2022-05-17 01:09:25', '2022-05-17 01:09:25'),
(970, 1, 'admin/users', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2022-05-17 01:09:39', '2022-05-17 01:09:39'),
(971, 1, 'admin/users', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2022-05-17 01:09:43', '2022-05-17 01:09:43'),
(972, 1, 'admin/users', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\",\"page\":\"4\"}', '2022-05-17 01:09:47', '2022-05-17 01:09:47'),
(973, 1, 'admin/users', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\",\"page\":\"5\"}', '2022-05-17 01:09:56', '2022-05-17 01:09:56'),
(974, 1, 'admin', 'GET', '171.237.117.244', '[]', '2022-05-17 01:17:05', '2022-05-17 01:17:05'),
(975, 1, 'admin/users', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\"}', '2022-05-17 01:17:12', '2022-05-17 01:17:12'),
(976, 1, 'admin/users', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\",\"page\":\"5\"}', '2022-05-17 01:17:15', '2022-05-17 01:17:15'),
(977, 1, 'admin', 'GET', '171.237.117.244', '[]', '2022-05-19 05:38:19', '2022-05-19 05:38:19'),
(978, 1, 'admin/orders', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 05:38:34', '2022-05-19 05:38:34'),
(979, 1, 'admin/business-settings', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 05:38:47', '2022-05-19 05:38:47'),
(980, 1, 'admin/orders', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 05:38:55', '2022-05-19 05:38:55'),
(981, 1, 'admin/orders/100001', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 05:39:10', '2022-05-19 05:39:10'),
(982, 1, 'admin/orders', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 05:39:33', '2022-05-19 05:39:33'),
(983, 1, 'admin/auth/users', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 05:40:10', '2022-05-19 05:40:10'),
(984, 1, 'admin', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 05:40:13', '2022-05-19 05:40:13'),
(985, 1, 'admin/business-settings', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 05:40:15', '2022-05-19 05:40:15'),
(986, 1, 'admin/orders', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 05:40:16', '2022-05-19 05:40:16'),
(987, 1, 'admin/business-settings', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\"}', '2022-05-19 05:40:17', '2022-05-19 05:40:17'),
(988, 1, 'admin', 'GET', '171.237.117.244', '[]', '2022-05-20 00:17:28', '2022-05-20 00:17:28'),
(989, 1, 'admin', 'GET', '171.237.117.244', '{\"_pjax\":\"#pjax-container\"}', '2022-05-20 00:17:49', '2022-05-20 00:17:49'),
(990, 1, 'admin', 'GET', '188.247.73.49', '[]', '2022-05-26 05:28:04', '2022-05-26 05:28:04'),
(991, 1, 'admin/orders', 'GET', '188.247.73.49', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 05:28:19', '2022-05-26 05:28:19'),
(992, 1, 'admin/orders', 'GET', '188.247.73.49', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 07:13:44', '2022-05-26 07:13:44'),
(993, 1, 'admin', 'GET', '185.251.116.122', '[]', '2022-05-27 02:40:22', '2022-05-27 02:40:22'),
(994, 1, 'admin/business-settings', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-05-27 02:40:33', '2022-05-27 02:40:33'),
(995, 1, 'admin/business-settings/3/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-05-27 02:41:03', '2022-05-27 02:41:03'),
(996, 1, 'admin/business-settings', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-05-27 02:41:07', '2022-05-27 02:41:07'),
(997, 1, 'admin/business-settings/2/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-05-27 02:41:13', '2022-05-27 02:41:13'),
(998, 1, 'admin/business-settings', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-05-27 02:41:19', '2022-05-27 02:41:19'),
(999, 1, 'admin/business-settings', 'GET', '114.95.230.80', '[]', '2022-05-27 02:51:34', '2022-05-27 02:51:34'),
(1000, 1, 'admin/business-settings', 'GET', '114.95.230.80', '[]', '2022-05-27 02:53:07', '2022-05-27 02:53:07'),
(1001, 1, 'admin/business-settings', 'GET', '114.95.230.80', '[]', '2022-05-27 02:53:51', '2022-05-27 02:53:51'),
(1002, 1, 'admin/_handle_action_', 'POST', '114.95.230.80', '{\"_key\":\"2\",\"_model\":\"App_Models_BusinessSetting\",\"_token\":\"9iMi3eeWyE5YVgfY8imkzGpQDPyfy2ZeQCIat3aW\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-05-27 02:54:13', '2022-05-27 02:54:13'),
(1003, 1, 'admin/business-settings', 'GET', '114.95.230.80', '{\"_pjax\":\"#pjax-container\"}', '2022-05-27 02:54:13', '2022-05-27 02:54:13'),
(1004, 1, 'admin/_handle_action_', 'POST', '114.95.230.80', '{\"_key\":\"3\",\"_model\":\"App_Models_BusinessSetting\",\"_token\":\"9iMi3eeWyE5YVgfY8imkzGpQDPyfy2ZeQCIat3aW\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-05-27 02:54:33', '2022-05-27 02:54:33'),
(1005, 1, 'admin/business-settings', 'GET', '114.95.230.80', '{\"_pjax\":\"#pjax-container\"}', '2022-05-27 02:54:33', '2022-05-27 02:54:33'),
(1006, 1, 'admin/business-settings', 'GET', '114.95.230.80', '[]', '2022-05-27 02:56:22', '2022-05-27 02:56:22'),
(1007, 1, 'admin/business-settings/1/edit', 'GET', '114.95.230.80', '{\"_pjax\":\"#pjax-container\"}', '2022-05-27 02:56:37', '2022-05-27 02:56:37'),
(1008, 1, 'admin/business-settings', 'GET', '114.95.230.80', '{\"_pjax\":\"#pjax-container\"}', '2022-05-27 02:56:43', '2022-05-27 02:56:43'),
(1009, 1, 'admin/business-settings/4/edit', 'GET', '114.95.230.80', '{\"_pjax\":\"#pjax-container\"}', '2022-05-27 02:56:46', '2022-05-27 02:56:46'),
(1010, 1, 'admin/business-settings', 'GET', '114.95.230.80', '{\"_pjax\":\"#pjax-container\"}', '2022-05-27 02:56:49', '2022-05-27 02:56:49'),
(1011, 1, 'admin/business-settings/5/edit', 'GET', '114.95.230.80', '{\"_pjax\":\"#pjax-container\"}', '2022-05-27 02:56:56', '2022-05-27 02:56:56'),
(1012, 1, 'admin/business-settings', 'GET', '114.95.230.80', '{\"_pjax\":\"#pjax-container\"}', '2022-05-27 02:56:59', '2022-05-27 02:56:59'),
(1013, 1, 'admin/business-settings', 'GET', '114.95.230.80', '[]', '2022-05-27 03:05:25', '2022-05-27 03:05:25'),
(1014, 1, 'admin/business-settings/1/edit', 'GET', '114.95.230.80', '{\"_pjax\":\"#pjax-container\"}', '2022-05-27 03:05:30', '2022-05-27 03:05:30'),
(1015, 1, 'admin/business-settings/1/edit', 'GET', '114.95.230.80', '[]', '2022-05-27 03:05:56', '2022-05-27 03:05:56'),
(1016, 1, 'admin/business-settings/1/edit', 'GET', '114.95.230.80', '[]', '2022-05-27 03:06:57', '2022-05-27 03:06:57'),
(1017, 1, 'admin/business-settings', 'GET', '114.95.230.80', '{\"_pjax\":\"#pjax-container\"}', '2022-05-27 03:11:40', '2022-05-27 03:11:40'),
(1018, 1, 'admin/orders', 'GET', '188.247.73.49', '[]', '2022-05-27 03:17:48', '2022-05-27 03:17:48'),
(1019, 1, 'admin/business-settings', 'GET', '114.95.230.80', '[]', '2022-05-27 03:32:22', '2022-05-27 03:32:22'),
(1020, 1, 'admin/business-settings', 'GET', '114.95.230.80', '[]', '2022-05-27 03:36:03', '2022-05-27 03:36:03'),
(1021, 1, 'admin/business-settings', 'GET', '114.95.230.80', '[]', '2022-05-27 04:00:38', '2022-05-27 04:00:38'),
(1022, 1, 'admin/business-settings', 'GET', '114.95.230.80', '{\"_pjax\":\"#pjax-container\"}', '2022-05-27 04:00:46', '2022-05-27 04:00:46'),
(1023, 1, 'admin/business-settings', 'GET', '114.95.230.80', '{\"_pjax\":\"#pjax-container\"}', '2022-05-27 04:00:58', '2022-05-27 04:00:58'),
(1024, 1, 'admin/food-types', 'GET', '114.95.230.80', '{\"_pjax\":\"#pjax-container\"}', '2022-05-27 04:01:01', '2022-05-27 04:01:01'),
(1025, 1, 'admin/foods', 'GET', '114.95.230.80', '{\"_pjax\":\"#pjax-container\"}', '2022-05-27 04:01:03', '2022-05-27 04:01:03'),
(1026, 1, 'admin/users', 'GET', '114.95.230.80', '{\"_pjax\":\"#pjax-container\"}', '2022-05-27 04:01:04', '2022-05-27 04:01:04'),
(1027, 1, 'admin/business-settings', 'GET', '114.95.230.80', '{\"_pjax\":\"#pjax-container\"}', '2022-05-27 04:01:21', '2022-05-27 04:01:21'),
(1028, 1, 'admin/users', 'GET', '114.95.230.80', '{\"_pjax\":\"#pjax-container\"}', '2022-05-27 04:01:24', '2022-05-27 04:01:24'),
(1029, 1, 'admin/business-settings', 'GET', '114.95.230.80', '{\"_pjax\":\"#pjax-container\"}', '2022-05-27 04:01:30', '2022-05-27 04:01:30'),
(1030, 1, 'admin/business-settings', 'GET', '114.95.230.80', '[]', '2022-05-27 04:02:30', '2022-05-27 04:02:30'),
(1031, 1, 'admin/business-settings/12/edit', 'GET', '114.95.230.80', '{\"_pjax\":\"#pjax-container\"}', '2022-05-27 04:07:01', '2022-05-27 04:07:01'),
(1032, 1, 'admin/business-settings', 'GET', '114.95.230.80', '{\"_pjax\":\"#pjax-container\"}', '2022-05-27 04:07:04', '2022-05-27 04:07:04'),
(1033, 1, 'admin/business-settings/20/edit', 'GET', '114.95.230.80', '{\"_pjax\":\"#pjax-container\"}', '2022-05-27 04:07:21', '2022-05-27 04:07:21'),
(1034, 1, 'admin/business-settings', 'GET', '114.95.230.80', '{\"_pjax\":\"#pjax-container\"}', '2022-05-27 04:07:24', '2022-05-27 04:07:24'),
(1035, 1, 'admin/business-settings', 'GET', '114.95.230.80', '[]', '2022-05-27 04:08:04', '2022-05-27 04:08:04'),
(1036, 1, 'admin/business-settings', 'GET', '114.95.230.80', '[]', '2022-05-27 04:08:05', '2022-05-27 04:08:05'),
(1037, 1, 'admin/business-settings', 'GET', '114.95.230.80', '[]', '2022-05-27 04:08:06', '2022-05-27 04:08:06'),
(1038, 1, 'admin/business-settings', 'GET', '114.95.230.80', '[]', '2022-05-27 04:08:27', '2022-05-27 04:08:27'),
(1039, 1, 'admin/business-settings', 'GET', '114.95.230.80', '[]', '2022-05-27 04:08:49', '2022-05-27 04:08:49'),
(1040, 1, 'admin/business-settings', 'GET', '114.95.230.80', '[]', '2022-05-27 04:09:18', '2022-05-27 04:09:18'),
(1041, 1, 'admin/business-settings', 'GET', '114.95.230.80', '[]', '2022-05-27 04:10:18', '2022-05-27 04:10:18'),
(1042, 1, 'admin/business-settings', 'GET', '114.95.230.80', '[]', '2022-05-27 04:10:34', '2022-05-27 04:10:34'),
(1043, 1, 'admin/business-settings', 'GET', '114.95.230.80', '[]', '2022-05-27 04:10:59', '2022-05-27 04:10:59'),
(1044, 1, 'admin/business-settings', 'GET', '114.95.230.80', '[]', '2022-05-27 04:12:19', '2022-05-27 04:12:19'),
(1045, 1, 'admin/business-settings', 'GET', '114.95.230.80', '[]', '2022-05-27 04:13:28', '2022-05-27 04:13:28'),
(1046, 1, 'admin/business-settings', 'GET', '114.95.230.80', '[]', '2022-05-27 04:13:41', '2022-05-27 04:13:41'),
(1047, 1, 'admin/business-settings', 'GET', '114.95.230.80', '[]', '2022-05-27 04:14:24', '2022-05-27 04:14:24'),
(1048, 1, 'admin/business-settings', 'GET', '114.95.230.80', '[]', '2022-05-27 04:16:36', '2022-05-27 04:16:36'),
(1049, 1, 'admin/business-settings', 'GET', '114.95.230.80', '[]', '2022-05-27 04:16:41', '2022-05-27 04:16:41'),
(1050, 1, 'admin/business-settings', 'GET', '114.95.230.80', '[]', '2022-05-27 04:17:27', '2022-05-27 04:17:27'),
(1051, 1, 'admin/business-settings', 'GET', '114.95.230.80', '[]', '2022-05-27 04:18:58', '2022-05-27 04:18:58'),
(1052, 1, 'admin/business-settings', 'GET', '114.95.230.80', '[]', '2022-05-27 04:19:16', '2022-05-27 04:19:16'),
(1053, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 04:25:35', '2022-05-27 04:25:35'),
(1054, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 04:27:43', '2022-05-27 04:27:43'),
(1055, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 04:34:19', '2022-05-27 04:34:19'),
(1056, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 04:35:02', '2022-05-27 04:35:02'),
(1057, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 04:35:06', '2022-05-27 04:35:06'),
(1058, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 04:35:12', '2022-05-27 04:35:12'),
(1059, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 04:35:50', '2022-05-27 04:35:50'),
(1060, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 04:36:28', '2022-05-27 04:36:28'),
(1061, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 04:37:44', '2022-05-27 04:37:44'),
(1062, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 04:38:35', '2022-05-27 04:38:35'),
(1063, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 04:39:16', '2022-05-27 04:39:16'),
(1064, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 04:39:55', '2022-05-27 04:39:55'),
(1065, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 04:40:34', '2022-05-27 04:40:34'),
(1066, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 04:51:27', '2022-05-27 04:51:27'),
(1067, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 04:52:12', '2022-05-27 04:52:12'),
(1068, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 04:53:15', '2022-05-27 04:53:15'),
(1069, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 04:53:38', '2022-05-27 04:53:38'),
(1070, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 04:54:56', '2022-05-27 04:54:56'),
(1071, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 04:55:14', '2022-05-27 04:55:14'),
(1072, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 04:56:18', '2022-05-27 04:56:18'),
(1073, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 04:56:40', '2022-05-27 04:56:40'),
(1074, 1, 'admin/business-settings', 'GET', '223.104.212.227', '[]', '2022-05-27 05:53:54', '2022-05-27 05:53:54'),
(1075, 1, 'admin/business-settings', 'GET', '223.104.212.227', '[]', '2022-05-27 05:54:17', '2022-05-27 05:54:17'),
(1076, 1, 'admin/business-settings', 'GET', '223.104.212.227', '[]', '2022-05-27 05:54:47', '2022-05-27 05:54:47'),
(1077, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 05:59:55', '2022-05-27 05:59:55'),
(1078, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 06:00:23', '2022-05-27 06:00:23'),
(1079, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 06:00:41', '2022-05-27 06:00:41'),
(1080, 1, 'admin/users', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-05-27 06:00:46', '2022-05-27 06:00:46'),
(1081, 1, 'admin/business-settings', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-05-27 06:00:48', '2022-05-27 06:00:48'),
(1082, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 06:01:03', '2022-05-27 06:01:03'),
(1083, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 06:05:06', '2022-05-27 06:05:06'),
(1084, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 06:07:10', '2022-05-27 06:07:10'),
(1085, 1, 'admin/business-settings', 'GET', '223.104.212.227', '[]', '2022-05-27 06:10:19', '2022-05-27 06:10:19'),
(1086, 1, 'admin/business-settings', 'GET', '223.104.212.227', '[]', '2022-05-27 06:12:30', '2022-05-27 06:12:30'),
(1087, 1, 'admin/business-settings', 'GET', '223.104.212.227', '[]', '2022-05-27 06:12:42', '2022-05-27 06:12:42'),
(1088, 1, 'admin/business-settings', 'GET', '223.104.212.227', '[]', '2022-05-27 06:16:15', '2022-05-27 06:16:15'),
(1089, 1, 'admin/business-settings', 'GET', '223.104.212.227', '[]', '2022-05-27 06:17:30', '2022-05-27 06:17:30'),
(1090, 1, 'admin/business-settings', 'GET', '223.104.212.227', '[]', '2022-05-27 06:18:11', '2022-05-27 06:18:11'),
(1091, 1, 'admin/business-settings', 'GET', '223.104.212.227', '[]', '2022-05-27 06:19:14', '2022-05-27 06:19:14'),
(1092, 1, 'admin/business-settings', 'GET', '223.104.212.227', '[]', '2022-05-27 06:29:26', '2022-05-27 06:29:26'),
(1093, 1, 'admin/business-settings', 'GET', '223.104.212.227', '[]', '2022-05-27 06:30:04', '2022-05-27 06:30:04'),
(1094, 1, 'admin/business-settings', 'GET', '223.104.212.227', '[]', '2022-05-27 06:30:11', '2022-05-27 06:30:11'),
(1095, 1, 'admin/business-settings', 'GET', '223.104.212.227', '[]', '2022-05-27 06:30:13', '2022-05-27 06:30:13'),
(1096, 1, 'admin/business-settings', 'GET', '223.104.212.227', '[]', '2022-05-27 06:30:13', '2022-05-27 06:30:13'),
(1097, 1, 'admin/business-settings', 'GET', '223.104.212.227', '[]', '2022-05-27 06:30:19', '2022-05-27 06:30:19'),
(1098, 1, 'admin/business-settings', 'GET', '223.104.212.227', '[]', '2022-05-27 06:30:49', '2022-05-27 06:30:49'),
(1099, 1, 'admin/business-settings', 'GET', '223.104.212.227', '[]', '2022-05-27 06:31:00', '2022-05-27 06:31:00'),
(1100, 1, 'admin/business-settings', 'GET', '223.104.212.227', '[]', '2022-05-27 06:31:40', '2022-05-27 06:31:40'),
(1101, 1, 'admin/business-settings', 'GET', '223.104.212.227', '[]', '2022-05-27 06:31:41', '2022-05-27 06:31:41'),
(1102, 1, 'admin/business-settings', 'GET', '223.104.212.227', '[]', '2022-05-27 06:31:56', '2022-05-27 06:31:56'),
(1103, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 06:36:36', '2022-05-27 06:36:36'),
(1104, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 06:37:24', '2022-05-27 06:37:24'),
(1105, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 06:37:52', '2022-05-27 06:37:52'),
(1106, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 06:38:09', '2022-05-27 06:38:09'),
(1107, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 07:03:55', '2022-05-27 07:03:55'),
(1108, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 07:04:18', '2022-05-27 07:04:18'),
(1109, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 07:05:50', '2022-05-27 07:05:50'),
(1110, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 07:06:39', '2022-05-27 07:06:39'),
(1111, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 07:11:14', '2022-05-27 07:11:14'),
(1112, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 07:12:06', '2022-05-27 07:12:06'),
(1113, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 07:15:25', '2022-05-27 07:15:25'),
(1114, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 07:15:57', '2022-05-27 07:15:57'),
(1115, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 07:17:39', '2022-05-27 07:17:39'),
(1116, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 07:17:45', '2022-05-27 07:17:45'),
(1117, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 07:18:26', '2022-05-27 07:18:26'),
(1118, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 07:19:28', '2022-05-27 07:19:28'),
(1119, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 07:20:26', '2022-05-27 07:20:26'),
(1120, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 07:38:37', '2022-05-27 07:38:37'),
(1121, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 07:39:17', '2022-05-27 07:39:17'),
(1122, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 07:39:50', '2022-05-27 07:39:50'),
(1123, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 07:40:12', '2022-05-27 07:40:12'),
(1124, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 07:47:22', '2022-05-27 07:47:22'),
(1125, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 07:48:11', '2022-05-27 07:48:11'),
(1126, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 07:49:32', '2022-05-27 07:49:32'),
(1127, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 07:51:23', '2022-05-27 07:51:23'),
(1128, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 07:52:17', '2022-05-27 07:52:17'),
(1129, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-05-27 07:52:52', '2022-05-27 07:52:52'),
(1130, 1, 'admin', 'GET', '217.168.16.63', '[]', '2022-05-28 04:24:13', '2022-05-28 04:24:13'),
(1131, 1, 'admin', 'GET', '217.168.16.63', '[]', '2022-06-03 03:43:00', '2022-06-03 03:43:00'),
(1132, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 03:43:10', '2022-06-03 03:43:10'),
(1133, 1, 'admin/orders/100001/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 03:43:22', '2022-06-03 03:43:22'),
(1134, 1, 'admin/orders', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 07:47:53', '2022-06-03 07:47:53'),
(1135, 1, 'admin/orders/100001/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 07:47:56', '2022-06-03 07:47:56'),
(1136, 1, 'admin/orders', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 07:48:31', '2022-06-03 07:48:31'),
(1137, 1, 'admin/orders/100001/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 07:48:32', '2022-06-03 07:48:32'),
(1138, 1, 'admin/orders/100001/edit', 'GET', '180.174.239.235', '[]', '2022-06-03 07:49:04', '2022-06-03 07:49:04'),
(1139, 1, 'admin/orders/100001/edit', 'GET', '180.174.239.235', '[]', '2022-06-03 07:49:31', '2022-06-03 07:49:31'),
(1140, 1, 'admin/orders/100001/edit', 'GET', '180.174.239.235', '[]', '2022-06-03 07:49:58', '2022-06-03 07:49:58'),
(1141, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 07:54:29', '2022-06-03 07:54:29'),
(1142, 1, 'admin/orders/100007/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 07:54:39', '2022-06-03 07:54:39'),
(1143, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 07:54:44', '2022-06-03 07:54:44'),
(1144, 1, 'admin/orders/100001,100002,100003,100004,100005,100006,100007,100008,100009,100010,100011,100012,100013,100014,100015,100016,100017,100018,100019,100020', 'DELETE', '217.168.16.63', '{\"_method\":\"delete\",\"_token\":\"DjrnRZCPmOeknCn4Gc0WXsvEXNvadgnciKElEJ1B\"}', '2022-06-03 07:54:58', '2022-06-03 07:54:58'),
(1145, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 07:55:01', '2022-06-03 07:55:01'),
(1146, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 08:01:49', '2022-06-03 08:01:49'),
(1147, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"4\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":null,\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"DjrnRZCPmOeknCn4Gc0WXsvEXNvadgnciKElEJ1B\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-03 08:01:56', '2022-06-03 08:01:56'),
(1148, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '[]', '2022-06-03 08:01:56', '2022-06-03 08:01:56'),
(1149, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"4\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":null,\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"DjrnRZCPmOeknCn4Gc0WXsvEXNvadgnciKElEJ1B\",\"_method\":\"PUT\"}', '2022-06-03 08:03:18', '2022-06-03 08:03:18'),
(1150, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 08:03:18', '2022-06-03 08:03:18'),
(1151, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 08:05:55', '2022-06-03 08:05:55'),
(1152, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 08:09:18', '2022-06-03 08:09:18'),
(1153, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 08:10:30', '2022-06-03 08:10:30'),
(1154, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 08:13:51', '2022-06-03 08:13:51'),
(1155, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 08:15:28', '2022-06-03 08:15:28'),
(1156, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 08:22:43', '2022-06-03 08:22:43'),
(1157, 1, 'admin', 'GET', '180.174.239.235', '[]', '2022-06-03 08:23:05', '2022-06-03 08:23:05'),
(1158, 1, 'admin/orders', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 08:23:07', '2022-06-03 08:23:07'),
(1159, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 08:23:17', '2022-06-03 08:23:17'),
(1160, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"2\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"DjrnRZCPmOeknCn4Gc0WXsvEXNvadgnciKElEJ1B\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-03 08:23:25', '2022-06-03 08:23:25'),
(1161, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 08:23:26', '2022-06-03 08:23:26'),
(1162, 1, 'admin/orders/100028/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 08:23:32', '2022-06-03 08:23:32'),
(1163, 1, 'admin/orders/100028', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"4\",\"confirmed\":\"2022-06-03 16:23:32\",\"accepted\":\"2022-06-03 16:23:32\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:23:32\",\"handover\":\"2022-06-03 16:23:32\",\"failed\":\"2022-06-03 16:23:32\",\"scheduled_at\":\"2022-06-03 12:42:21\",\"delivery_address_id\":null,\"order_note\":\"this time I am going write a lot. I don\\u2019t wanna be lost. let\\u2019s do it.\",\"delivery_charge\":null,\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"7348\",\"pending\":\"2022-06-03 12:42:21\",\"picked_up\":\"2022-06-03 16:23:32\",\"delivered\":\"2022-06-03 16:23:32\",\"canceled\":\"2022-06-03 16:23:32\",\"_token\":\"DjrnRZCPmOeknCn4Gc0WXsvEXNvadgnciKElEJ1B\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-03 08:23:38', '2022-06-03 08:23:38'),
(1164, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 08:23:38', '2022-06-03 08:23:38'),
(1165, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 08:23:42', '2022-06-03 08:23:42'),
(1166, 1, 'admin/orders', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 08:24:34', '2022-06-03 08:24:34'),
(1167, 1, 'admin/orders/100021', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 08:24:38', '2022-06-03 08:24:38'),
(1168, 1, 'admin/orders', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 08:24:42', '2022-06-03 08:24:42'),
(1169, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 08:32:43', '2022-06-03 08:32:43'),
(1170, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"2\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"DjrnRZCPmOeknCn4Gc0WXsvEXNvadgnciKElEJ1B\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-03 08:32:52', '2022-06-03 08:32:52'),
(1171, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 08:33:38', '2022-06-03 08:33:38'),
(1172, 1, 'admin/orders', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 08:33:47', '2022-06-03 08:33:47'),
(1173, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 08:35:41', '2022-06-03 08:35:41'),
(1174, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"2\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"DjrnRZCPmOeknCn4Gc0WXsvEXNvadgnciKElEJ1B\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-03 08:35:50', '2022-06-03 08:35:50'),
(1175, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 08:36:28', '2022-06-03 08:36:28'),
(1176, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"2\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"DjrnRZCPmOeknCn4Gc0WXsvEXNvadgnciKElEJ1B\",\"_method\":\"PUT\"}', '2022-06-03 08:36:34', '2022-06-03 08:36:34'),
(1177, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '[]', '2022-06-03 08:36:34', '2022-06-03 08:36:34'),
(1178, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"2\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"DjrnRZCPmOeknCn4Gc0WXsvEXNvadgnciKElEJ1B\",\"_method\":\"PUT\"}', '2022-06-03 08:41:22', '2022-06-03 08:41:22'),
(1179, 1, 'admin/orders/100021', 'GET', '180.174.239.235', '[]', '2022-06-03 08:43:02', '2022-06-03 08:43:02'),
(1180, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 08:43:04', '2022-06-03 08:43:04'),
(1181, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"2\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"DjrnRZCPmOeknCn4Gc0WXsvEXNvadgnciKElEJ1B\",\"_method\":\"PUT\"}', '2022-06-03 08:43:10', '2022-06-03 08:43:10'),
(1182, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 08:43:25', '2022-06-03 08:43:25'),
(1183, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"2\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"DjrnRZCPmOeknCn4Gc0WXsvEXNvadgnciKElEJ1B\",\"_method\":\"PUT\"}', '2022-06-03 08:43:30', '2022-06-03 08:43:30'),
(1184, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 08:43:55', '2022-06-03 08:43:55'),
(1185, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"2\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"DjrnRZCPmOeknCn4Gc0WXsvEXNvadgnciKElEJ1B\",\"_method\":\"PUT\"}', '2022-06-03 08:44:02', '2022-06-03 08:44:02'),
(1186, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '[]', '2022-06-03 08:44:02', '2022-06-03 08:44:02');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1187, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"2\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"DjrnRZCPmOeknCn4Gc0WXsvEXNvadgnciKElEJ1B\",\"_method\":\"PUT\"}', '2022-06-03 08:51:53', '2022-06-03 08:51:53'),
(1188, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 08:52:18', '2022-06-03 08:52:18'),
(1189, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"2\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"DjrnRZCPmOeknCn4Gc0WXsvEXNvadgnciKElEJ1B\",\"_method\":\"PUT\"}', '2022-06-03 08:52:23', '2022-06-03 08:52:23'),
(1190, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 08:52:42', '2022-06-03 08:52:42'),
(1191, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"2\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"DjrnRZCPmOeknCn4Gc0WXsvEXNvadgnciKElEJ1B\",\"_method\":\"PUT\"}', '2022-06-03 08:52:46', '2022-06-03 08:52:46'),
(1192, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 08:53:22', '2022-06-03 08:53:22'),
(1193, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"2\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"DjrnRZCPmOeknCn4Gc0WXsvEXNvadgnciKElEJ1B\",\"_method\":\"PUT\"}', '2022-06-03 08:53:28', '2022-06-03 08:53:28'),
(1194, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 08:53:29', '2022-06-03 08:53:29'),
(1195, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 08:53:56', '2022-06-03 08:53:56'),
(1196, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"4\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"DjrnRZCPmOeknCn4Gc0WXsvEXNvadgnciKElEJ1B\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-03 08:54:05', '2022-06-03 08:54:05'),
(1197, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 08:54:05', '2022-06-03 08:54:05'),
(1198, 1, 'admin/orders/100025/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 08:55:07', '2022-06-03 08:55:07'),
(1199, 1, 'admin/orders/100025', 'PUT', '180.174.239.235', '{\"order_amount\":\"34\",\"payment_status\":\"unpaid\",\"order_status\":\"3\",\"confirmed\":\"2022-06-03 16:55:07\",\"accepted\":\"2022-06-03 16:55:07\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:55:07\",\"handover\":\"2022-06-03 16:55:07\",\"failed\":\"2022-06-03 16:55:07\",\"scheduled_at\":\"2022-06-03 12:36:17\",\"delivery_address_id\":null,\"order_note\":\"no notes\",\"delivery_charge\":null,\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"3744\",\"pending\":\"2022-06-03 12:36:17\",\"picked_up\":\"2022-06-03 16:55:07\",\"delivered\":\"2022-06-03 16:55:07\",\"canceled\":\"2022-06-03 16:55:07\",\"_token\":\"DjrnRZCPmOeknCn4Gc0WXsvEXNvadgnciKElEJ1B\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-03 08:55:24', '2022-06-03 08:55:24'),
(1200, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 08:55:24', '2022-06-03 08:55:24'),
(1201, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 08:58:43', '2022-06-03 08:58:43'),
(1202, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"2\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"DjrnRZCPmOeknCn4Gc0WXsvEXNvadgnciKElEJ1B\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-03 08:58:59', '2022-06-03 08:58:59'),
(1203, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 08:58:59', '2022-06-03 08:58:59'),
(1204, 1, 'admin/orders/100028/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 08:59:10', '2022-06-03 08:59:10'),
(1205, 1, 'admin/orders/100028', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"6\",\"confirmed\":\"2022-06-03 16:23:32\",\"accepted\":\"2022-06-03 16:23:32\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:23:32\",\"handover\":\"2022-06-03 16:23:32\",\"failed\":\"2022-06-03 16:23:32\",\"scheduled_at\":\"2022-06-03 12:42:21\",\"delivery_address_id\":null,\"order_note\":\"this time I am going write a lot. I don\\u2019t wanna be lost. let\\u2019s do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"7348\",\"pending\":\"2022-06-03 12:42:21\",\"picked_up\":\"2022-06-03 16:23:32\",\"delivered\":\"2022-06-03 16:23:32\",\"canceled\":\"2022-06-03 16:23:32\",\"_token\":\"DjrnRZCPmOeknCn4Gc0WXsvEXNvadgnciKElEJ1B\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-03 08:59:23', '2022-06-03 08:59:23'),
(1206, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 08:59:23', '2022-06-03 08:59:23'),
(1207, 1, 'admin/orders/100030/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 08:59:30', '2022-06-03 08:59:30'),
(1208, 1, 'admin/orders/100030', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"5\",\"confirmed\":\"2022-06-03 16:59:30\",\"accepted\":\"2022-06-03 16:59:30\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:59:30\",\"handover\":\"2022-06-03 16:59:30\",\"failed\":\"2022-06-03 16:59:30\",\"scheduled_at\":\"2022-06-03 12:57:37\",\"delivery_address_id\":null,\"order_note\":\"this is test. I love it. do I need more test.I love getx. what to do next. learn more\",\"delivery_charge\":null,\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"6701\",\"pending\":\"2022-06-03 12:57:37\",\"picked_up\":\"2022-06-03 16:59:30\",\"delivered\":\"2022-06-03 16:59:30\",\"canceled\":\"2022-06-03 16:59:30\",\"_token\":\"DjrnRZCPmOeknCn4Gc0WXsvEXNvadgnciKElEJ1B\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-03 08:59:37', '2022-06-03 08:59:37'),
(1209, 1, 'admin/orders/100030/edit', 'GET', '180.174.239.235', '[]', '2022-06-03 08:59:37', '2022-06-03 08:59:37'),
(1210, 1, 'admin/orders/100030', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"4\",\"confirmed\":\"2022-06-03 16:59:30\",\"accepted\":\"2022-06-03 16:59:30\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:59:30\",\"handover\":\"2022-06-03 16:59:30\",\"failed\":\"2022-06-03 16:59:30\",\"scheduled_at\":\"2022-06-03 12:57:37\",\"delivery_address_id\":null,\"order_note\":\"this is test. I love it. do I need more test.I love getx. what to do next. learn more\",\"delivery_charge\":null,\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"6701\",\"pending\":\"2022-06-03 12:57:37\",\"picked_up\":\"2022-06-03 16:59:30\",\"delivered\":\"2022-06-03 16:59:30\",\"canceled\":\"2022-06-03 16:59:30\",\"_token\":\"DjrnRZCPmOeknCn4Gc0WXsvEXNvadgnciKElEJ1B\",\"_method\":\"PUT\"}', '2022-06-03 09:01:07', '2022-06-03 09:01:07'),
(1211, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 09:01:07', '2022-06-03 09:01:07'),
(1212, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 17:19:56', '2022-06-03 17:19:56'),
(1213, 1, 'admin/foods', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 17:20:07', '2022-06-03 17:20:07'),
(1214, 1, 'admin/foods/2/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 17:20:23', '2022-06-03 17:20:23'),
(1215, 1, 'admin/foods', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 17:32:26', '2022-06-03 17:32:26'),
(1216, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 17:32:34', '2022-06-03 17:32:34'),
(1217, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 17:32:40', '2022-06-03 17:32:40'),
(1218, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 17:32:41', '2022-06-03 17:32:41'),
(1219, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 17:34:15', '2022-06-03 17:34:15'),
(1220, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 17:34:19', '2022-06-03 17:34:19'),
(1221, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 17:34:20', '2022-06-03 17:34:20'),
(1222, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 17:35:35', '2022-06-03 17:35:35'),
(1223, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 17:35:37', '2022-06-03 17:35:37'),
(1224, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 17:36:58', '2022-06-03 17:36:58'),
(1225, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 17:36:59', '2022-06-03 17:36:59'),
(1226, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 17:53:55', '2022-06-03 17:53:55'),
(1227, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 17:53:59', '2022-06-03 17:53:59'),
(1228, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 17:54:00', '2022-06-03 17:54:00'),
(1229, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:00:04', '2022-06-03 18:00:04'),
(1230, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:00:05', '2022-06-03 18:00:05'),
(1231, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:01:21', '2022-06-03 18:01:21'),
(1232, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:01:22', '2022-06-03 18:01:22'),
(1233, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:04:12', '2022-06-03 18:04:12'),
(1234, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:04:15', '2022-06-03 18:04:15'),
(1235, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:04:19', '2022-06-03 18:04:19'),
(1236, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:04:24', '2022-06-03 18:04:24'),
(1237, 1, 'admin/food-types', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:04:30', '2022-06-03 18:04:30'),
(1238, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:04:33', '2022-06-03 18:04:33'),
(1239, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:04:45', '2022-06-03 18:04:45'),
(1240, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:06:48', '2022-06-03 18:06:48'),
(1241, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:15:12', '2022-06-03 18:15:12'),
(1242, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:15:49', '2022-06-03 18:15:49'),
(1243, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:15:53', '2022-06-03 18:15:53'),
(1244, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:17:02', '2022-06-03 18:17:02'),
(1245, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:18:37', '2022-06-03 18:18:37'),
(1246, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:18:52', '2022-06-03 18:18:52'),
(1247, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:19:16', '2022-06-03 18:19:16'),
(1248, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:20:06', '2022-06-03 18:20:06'),
(1249, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:20:09', '2022-06-03 18:20:09'),
(1250, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:20:10', '2022-06-03 18:20:10'),
(1251, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:20:45', '2022-06-03 18:20:45'),
(1252, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:20:46', '2022-06-03 18:20:46'),
(1253, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:23:35', '2022-06-03 18:23:35'),
(1254, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:23:35', '2022-06-03 18:23:35'),
(1255, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:25:35', '2022-06-03 18:25:35'),
(1256, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:25:38', '2022-06-03 18:25:38'),
(1257, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:25:39', '2022-06-03 18:25:39'),
(1258, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:26:14', '2022-06-03 18:26:14'),
(1259, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:26:15', '2022-06-03 18:26:15'),
(1260, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:27:42', '2022-06-03 18:27:42'),
(1261, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:27:43', '2022-06-03 18:27:43'),
(1262, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:30:35', '2022-06-03 18:30:35'),
(1263, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:30:43', '2022-06-03 18:30:43'),
(1264, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:30:44', '2022-06-03 18:30:44'),
(1265, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:31:36', '2022-06-03 18:31:36'),
(1266, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:31:38', '2022-06-03 18:31:38'),
(1267, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:32:43', '2022-06-03 18:32:43'),
(1268, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:32:46', '2022-06-03 18:32:46'),
(1269, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:32:48', '2022-06-03 18:32:48'),
(1270, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:34:54', '2022-06-03 18:34:54'),
(1271, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:34:56', '2022-06-03 18:34:56'),
(1272, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:35:57', '2022-06-03 18:35:57'),
(1273, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:35:58', '2022-06-03 18:35:58'),
(1274, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:37:31', '2022-06-03 18:37:31'),
(1275, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:37:32', '2022-06-03 18:37:32'),
(1276, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:37:55', '2022-06-03 18:37:55'),
(1277, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:41:43', '2022-06-03 18:41:43'),
(1278, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:41:44', '2022-06-03 18:41:44'),
(1279, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:43:19', '2022-06-03 18:43:19'),
(1280, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:43:20', '2022-06-03 18:43:20'),
(1281, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:43:46', '2022-06-03 18:43:46'),
(1282, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:43:47', '2022-06-03 18:43:47'),
(1283, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:44:37', '2022-06-03 18:44:37'),
(1284, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:44:38', '2022-06-03 18:44:38'),
(1285, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:49:29', '2022-06-03 18:49:29'),
(1286, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:49:30', '2022-06-03 18:49:30'),
(1287, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:50:03', '2022-06-03 18:50:03'),
(1288, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:50:04', '2022-06-03 18:50:04'),
(1289, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:50:49', '2022-06-03 18:50:49'),
(1290, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:52:00', '2022-06-03 18:52:00'),
(1291, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:52:03', '2022-06-03 18:52:03'),
(1292, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:52:04', '2022-06-03 18:52:04'),
(1293, 1, 'admin/orders/100022/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:54:30', '2022-06-03 18:54:30'),
(1294, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:54:31', '2022-06-03 18:54:31'),
(1295, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:55:21', '2022-06-03 18:55:21'),
(1296, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:55:22', '2022-06-03 18:55:22'),
(1297, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:56:00', '2022-06-03 18:56:00'),
(1298, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:56:01', '2022-06-03 18:56:01'),
(1299, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 18:58:07', '2022-06-03 18:58:07'),
(1300, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 18:58:08', '2022-06-03 18:58:08'),
(1301, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 19:02:06', '2022-06-03 19:02:06'),
(1302, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 19:02:08', '2022-06-03 19:02:08'),
(1303, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 19:05:11', '2022-06-03 19:05:11'),
(1304, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 19:05:53', '2022-06-03 19:05:53'),
(1305, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 19:05:57', '2022-06-03 19:05:57'),
(1306, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 19:06:30', '2022-06-03 19:06:30'),
(1307, 1, 'admin/orders/100024/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 19:06:33', '2022-06-03 19:06:33'),
(1308, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 19:07:21', '2022-06-03 19:07:21'),
(1309, 1, 'admin/orders/100027/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 19:07:25', '2022-06-03 19:07:25'),
(1310, 1, 'admin/orders/100027/edit', 'GET', '217.168.16.63', '[]', '2022-06-03 19:08:37', '2022-06-03 19:08:37'),
(1311, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 19:08:42', '2022-06-03 19:08:42'),
(1312, 1, 'admin/orders/100030/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 19:08:49', '2022-06-03 19:08:49'),
(1313, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 19:08:54', '2022-06-03 19:08:54'),
(1314, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 19:08:58', '2022-06-03 19:08:58'),
(1315, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '[]', '2022-06-03 19:09:12', '2022-06-03 19:09:12'),
(1316, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '[]', '2022-06-03 19:09:37', '2022-06-03 19:09:37'),
(1317, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '[]', '2022-06-03 19:10:24', '2022-06-03 19:10:24'),
(1318, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '[]', '2022-06-03 19:10:46', '2022-06-03 19:10:46'),
(1319, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '[]', '2022-06-03 19:11:09', '2022-06-03 19:11:09'),
(1320, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '[]', '2022-06-03 19:11:12', '2022-06-03 19:11:12'),
(1321, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '[]', '2022-06-03 19:11:28', '2022-06-03 19:11:28'),
(1322, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '[]', '2022-06-03 19:11:31', '2022-06-03 19:11:31'),
(1323, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '[]', '2022-06-03 19:11:48', '2022-06-03 19:11:48'),
(1324, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '[]', '2022-06-03 19:11:51', '2022-06-03 19:11:51'),
(1325, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '[]', '2022-06-03 19:16:29', '2022-06-03 19:16:29'),
(1326, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 19:30:14', '2022-06-03 19:30:14'),
(1327, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 19:30:17', '2022-06-03 19:30:17'),
(1328, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"2\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"fvOBRST9wVBkREaXQ4ZWnNH3wyasrufCCMoRT5if\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-03 19:30:29', '2022-06-03 19:30:29'),
(1329, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '[]', '2022-06-03 19:30:29', '2022-06-03 19:30:29'),
(1330, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"2\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"fvOBRST9wVBkREaXQ4ZWnNH3wyasrufCCMoRT5if\",\"_method\":\"PUT\"}', '2022-06-03 19:31:03', '2022-06-03 19:31:03'),
(1331, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 19:31:03', '2022-06-03 19:31:03'),
(1332, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 19:32:12', '2022-06-03 19:32:12'),
(1333, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"3\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"fvOBRST9wVBkREaXQ4ZWnNH3wyasrufCCMoRT5if\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-03 19:32:19', '2022-06-03 19:32:19'),
(1334, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 19:32:19', '2022-06-03 19:32:19'),
(1335, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 19:33:44', '2022-06-03 19:33:44'),
(1336, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"4\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"fvOBRST9wVBkREaXQ4ZWnNH3wyasrufCCMoRT5if\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-03 19:33:53', '2022-06-03 19:33:53'),
(1337, 1, 'admin/orders/100021', 'GET', '180.174.239.235', '[]', '2022-06-03 19:34:21', '2022-06-03 19:34:21'),
(1338, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 19:34:24', '2022-06-03 19:34:24'),
(1339, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":null,\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"fvOBRST9wVBkREaXQ4ZWnNH3wyasrufCCMoRT5if\",\"_method\":\"PUT\"}', '2022-06-03 19:34:26', '2022-06-03 19:34:26'),
(1340, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '[]', '2022-06-03 19:34:26', '2022-06-03 19:34:26'),
(1341, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"3\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"fvOBRST9wVBkREaXQ4ZWnNH3wyasrufCCMoRT5if\",\"_method\":\"PUT\"}', '2022-06-03 19:34:30', '2022-06-03 19:34:30'),
(1342, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 19:34:40', '2022-06-03 19:34:40'),
(1343, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"2\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"fvOBRST9wVBkREaXQ4ZWnNH3wyasrufCCMoRT5if\",\"_method\":\"PUT\"}', '2022-06-03 19:34:44', '2022-06-03 19:34:44'),
(1344, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 19:34:44', '2022-06-03 19:34:44'),
(1345, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 19:37:42', '2022-06-03 19:37:42'),
(1346, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"2\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"fvOBRST9wVBkREaXQ4ZWnNH3wyasrufCCMoRT5if\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-03 19:37:46', '2022-06-03 19:37:46'),
(1347, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 19:37:46', '2022-06-03 19:37:46'),
(1348, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 19:40:03', '2022-06-03 19:40:03'),
(1349, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '[]', '2022-06-03 19:40:32', '2022-06-03 19:40:32'),
(1350, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"2\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"fvOBRST9wVBkREaXQ4ZWnNH3wyasrufCCMoRT5if\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-03 19:40:41', '2022-06-03 19:40:41'),
(1351, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 19:40:41', '2022-06-03 19:40:41'),
(1352, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 19:43:49', '2022-06-03 19:43:49'),
(1353, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"4\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"fvOBRST9wVBkREaXQ4ZWnNH3wyasrufCCMoRT5if\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-03 19:43:59', '2022-06-03 19:43:59'),
(1354, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 19:44:00', '2022-06-03 19:44:00'),
(1355, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 19:44:06', '2022-06-03 19:44:06'),
(1356, 1, 'admin/orders', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 19:45:08', '2022-06-03 19:45:08'),
(1357, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 19:45:10', '2022-06-03 19:45:10'),
(1358, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"2\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"fvOBRST9wVBkREaXQ4ZWnNH3wyasrufCCMoRT5if\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-03 19:45:16', '2022-06-03 19:45:16'),
(1359, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 19:45:17', '2022-06-03 19:45:17'),
(1360, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 19:47:58', '2022-06-03 19:47:58'),
(1361, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"2\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"fvOBRST9wVBkREaXQ4ZWnNH3wyasrufCCMoRT5if\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-03 19:48:02', '2022-06-03 19:48:02'),
(1362, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 19:48:02', '2022-06-03 19:48:02'),
(1363, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 19:49:25', '2022-06-03 19:49:25'),
(1364, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"2\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"fvOBRST9wVBkREaXQ4ZWnNH3wyasrufCCMoRT5if\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-03 19:49:28', '2022-06-03 19:49:28'),
(1365, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 19:49:29', '2022-06-03 19:49:29'),
(1366, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 19:50:45', '2022-06-03 19:50:45'),
(1367, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"3\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"fvOBRST9wVBkREaXQ4ZWnNH3wyasrufCCMoRT5if\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-03 19:50:51', '2022-06-03 19:50:51'),
(1368, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 19:51:13', '2022-06-03 19:51:13'),
(1369, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"2\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"fvOBRST9wVBkREaXQ4ZWnNH3wyasrufCCMoRT5if\",\"_method\":\"PUT\"}', '2022-06-03 19:51:24', '2022-06-03 19:51:24'),
(1370, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 19:51:53', '2022-06-03 19:51:53'),
(1371, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"3\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"fvOBRST9wVBkREaXQ4ZWnNH3wyasrufCCMoRT5if\",\"_method\":\"PUT\"}', '2022-06-03 19:51:57', '2022-06-03 19:51:57'),
(1372, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 19:52:20', '2022-06-03 19:52:20'),
(1373, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"2\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"fvOBRST9wVBkREaXQ4ZWnNH3wyasrufCCMoRT5if\",\"_method\":\"PUT\"}', '2022-06-03 19:52:25', '2022-06-03 19:52:25');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1374, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 19:52:25', '2022-06-03 19:52:25'),
(1375, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 19:53:53', '2022-06-03 19:53:53'),
(1376, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"2\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"fvOBRST9wVBkREaXQ4ZWnNH3wyasrufCCMoRT5if\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-03 19:53:57', '2022-06-03 19:53:57'),
(1377, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 19:53:58', '2022-06-03 19:53:58'),
(1378, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:03:04', '2022-06-03 20:03:04'),
(1379, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"2\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"fvOBRST9wVBkREaXQ4ZWnNH3wyasrufCCMoRT5if\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-03 20:03:18', '2022-06-03 20:03:18'),
(1380, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:03:18', '2022-06-03 20:03:18'),
(1381, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:03:22', '2022-06-03 20:03:22'),
(1382, 1, 'admin/orders', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:06:11', '2022-06-03 20:06:11'),
(1383, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:06:23', '2022-06-03 20:06:23'),
(1384, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:06:23', '2022-06-03 20:06:23'),
(1385, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:06:23', '2022-06-03 20:06:23'),
(1386, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:06:23', '2022-06-03 20:06:23'),
(1387, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:06:23', '2022-06-03 20:06:23'),
(1388, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:06:23', '2022-06-03 20:06:23'),
(1389, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:06:23', '2022-06-03 20:06:23'),
(1390, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:06:23', '2022-06-03 20:06:23'),
(1391, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:06:23', '2022-06-03 20:06:23'),
(1392, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:06:24', '2022-06-03 20:06:24'),
(1393, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:06:24', '2022-06-03 20:06:24'),
(1394, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:06:24', '2022-06-03 20:06:24'),
(1395, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:06:24', '2022-06-03 20:06:24'),
(1396, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:06:24', '2022-06-03 20:06:24'),
(1397, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:06:24', '2022-06-03 20:06:24'),
(1398, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:06:24', '2022-06-03 20:06:24'),
(1399, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:06:24', '2022-06-03 20:06:24'),
(1400, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:06:24', '2022-06-03 20:06:24'),
(1401, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:06:24', '2022-06-03 20:06:24'),
(1402, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:06:25', '2022-06-03 20:06:25'),
(1403, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:06:25', '2022-06-03 20:06:25'),
(1404, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '[]', '2022-06-03 20:06:25', '2022-06-03 20:06:25'),
(1405, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '[]', '2022-06-03 20:06:49', '2022-06-03 20:06:49'),
(1406, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '[]', '2022-06-03 20:06:50', '2022-06-03 20:06:50'),
(1407, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:10:35', '2022-06-03 20:10:35'),
(1408, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:10:37', '2022-06-03 20:10:37'),
(1409, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:10:39', '2022-06-03 20:10:39'),
(1410, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:10:39', '2022-06-03 20:10:39'),
(1411, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:16:04', '2022-06-03 20:16:04'),
(1412, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 20:16:05', '2022-06-03 20:16:05'),
(1413, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:17:19', '2022-06-03 20:17:19'),
(1414, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 20:17:20', '2022-06-03 20:17:20'),
(1415, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:18:03', '2022-06-03 20:18:03'),
(1416, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:18:38', '2022-06-03 20:18:38'),
(1417, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:18:41', '2022-06-03 20:18:41'),
(1418, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:20:05', '2022-06-03 20:20:05'),
(1419, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:20:08', '2022-06-03 20:20:08'),
(1420, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 20:20:09', '2022-06-03 20:20:09'),
(1421, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 20:25:05', '2022-06-03 20:25:05'),
(1422, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:25:09', '2022-06-03 20:25:09'),
(1423, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 20:25:10', '2022-06-03 20:25:10'),
(1424, 1, 'admin/foods', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:26:07', '2022-06-03 20:26:07'),
(1425, 1, 'admin/foods/2/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:26:11', '2022-06-03 20:26:11'),
(1426, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:33:47', '2022-06-03 20:33:47'),
(1427, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:33:50', '2022-06-03 20:33:50'),
(1428, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:33:51', '2022-06-03 20:33:51'),
(1429, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:34:12', '2022-06-03 20:34:12'),
(1430, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:34:13', '2022-06-03 20:34:13'),
(1431, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:34:47', '2022-06-03 20:34:47'),
(1432, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:34:47', '2022-06-03 20:34:47'),
(1433, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:34:53', '2022-06-03 20:34:53'),
(1434, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:34:53', '2022-06-03 20:34:53'),
(1435, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:35:04', '2022-06-03 20:35:04'),
(1436, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:35:04', '2022-06-03 20:35:04'),
(1437, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:37:40', '2022-06-03 20:37:40'),
(1438, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:37:41', '2022-06-03 20:37:41'),
(1439, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:37:45', '2022-06-03 20:37:45'),
(1440, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:37:45', '2022-06-03 20:37:45'),
(1441, 1, 'admin/orders', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:39:59', '2022-06-03 20:39:59'),
(1442, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:40:01', '2022-06-03 20:40:01'),
(1443, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:40:01', '2022-06-03 20:40:01'),
(1444, 1, 'admin/foods', 'GET', '180.174.239.235', '[]', '2022-06-03 20:48:59', '2022-06-03 20:48:59'),
(1445, 1, 'admin/foods/1/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:49:02', '2022-06-03 20:49:02'),
(1446, 1, 'admin/foods/1/edit', 'GET', '180.174.239.235', '[]', '2022-06-03 20:52:31', '2022-06-03 20:52:31'),
(1447, 1, 'admin/orders', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:52:32', '2022-06-03 20:52:32'),
(1448, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:52:35', '2022-06-03 20:52:35'),
(1449, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"2\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"fvOBRST9wVBkREaXQ4ZWnNH3wyasrufCCMoRT5if\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-03 20:52:43', '2022-06-03 20:52:43'),
(1450, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '[]', '2022-06-03 20:52:43', '2022-06-03 20:52:43'),
(1451, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '[]', '2022-06-03 20:53:27', '2022-06-03 20:53:27'),
(1452, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"2\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"fvOBRST9wVBkREaXQ4ZWnNH3wyasrufCCMoRT5if\",\"_method\":\"PUT\"}', '2022-06-03 20:53:31', '2022-06-03 20:53:31'),
(1453, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '[]', '2022-06-03 20:53:31', '2022-06-03 20:53:31'),
(1454, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"2\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"fvOBRST9wVBkREaXQ4ZWnNH3wyasrufCCMoRT5if\",\"_method\":\"PUT\"}', '2022-06-03 20:53:45', '2022-06-03 20:53:45'),
(1455, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:53:46', '2022-06-03 20:53:46'),
(1456, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:53:52', '2022-06-03 20:53:52'),
(1457, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"3\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"fvOBRST9wVBkREaXQ4ZWnNH3wyasrufCCMoRT5if\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-03 20:53:56', '2022-06-03 20:53:56'),
(1458, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:53:57', '2022-06-03 20:53:57'),
(1459, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:54:46', '2022-06-03 20:54:46'),
(1460, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"3\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"fvOBRST9wVBkREaXQ4ZWnNH3wyasrufCCMoRT5if\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-03 20:55:02', '2022-06-03 20:55:02'),
(1461, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:55:03', '2022-06-03 20:55:03'),
(1462, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:55:07', '2022-06-03 20:55:07'),
(1463, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"3\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"fvOBRST9wVBkREaXQ4ZWnNH3wyasrufCCMoRT5if\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-03 20:55:30', '2022-06-03 20:55:30'),
(1464, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:55:30', '2022-06-03 20:55:30'),
(1465, 1, 'admin/orders/100023/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:55:34', '2022-06-03 20:55:34'),
(1466, 1, 'admin/orders/100023', 'PUT', '180.174.239.235', '{\"order_amount\":\"68\",\"payment_status\":\"unpaid\",\"order_status\":\"2\",\"confirmed\":\"2022-06-04 04:55:34\",\"accepted\":\"2022-06-04 04:55:34\",\"scheduled\":\"off\",\"processing\":\"2022-06-04 04:55:34\",\"handover\":\"2022-06-04 04:55:34\",\"failed\":\"2022-06-04 04:55:34\",\"scheduled_at\":\"2022-06-03 12:15:10\",\"delivery_address_id\":null,\"order_note\":\"No notes\",\"delivery_charge\":null,\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"4237\",\"pending\":\"2022-06-03 12:15:10\",\"picked_up\":\"2022-06-04 04:55:34\",\"delivered\":\"2022-06-04 04:55:34\",\"canceled\":\"2022-06-04 04:55:34\",\"_token\":\"fvOBRST9wVBkREaXQ4ZWnNH3wyasrufCCMoRT5if\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-03 20:55:38', '2022-06-03 20:55:38'),
(1467, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:55:38', '2022-06-03 20:55:38'),
(1468, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:55:40', '2022-06-03 20:55:40'),
(1469, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"3\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"fvOBRST9wVBkREaXQ4ZWnNH3wyasrufCCMoRT5if\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-03 20:56:10', '2022-06-03 20:56:10'),
(1470, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:56:11', '2022-06-03 20:56:11'),
(1471, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 20:56:28', '2022-06-03 20:56:28'),
(1472, 1, 'admin/orders', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:57:29', '2022-06-03 20:57:29'),
(1473, 1, 'admin/orders', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:57:31', '2022-06-03 20:57:31'),
(1474, 1, 'admin/food-types', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:57:37', '2022-06-03 20:57:37'),
(1475, 1, 'admin/orders', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:57:38', '2022-06-03 20:57:38'),
(1476, 1, 'admin/orders', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 20:59:40', '2022-06-03 20:59:40'),
(1477, 1, 'admin/orders', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 21:01:13', '2022-06-03 21:01:13'),
(1478, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 21:01:15', '2022-06-03 21:01:15'),
(1479, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '[]', '2022-06-03 21:02:29', '2022-06-03 21:02:29'),
(1480, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '[]', '2022-06-03 21:02:53', '2022-06-03 21:02:53'),
(1481, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"2\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"fvOBRST9wVBkREaXQ4ZWnNH3wyasrufCCMoRT5if\",\"_method\":\"PUT\"}', '2022-06-03 21:02:58', '2022-06-03 21:02:58'),
(1482, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '[]', '2022-06-03 21:02:58', '2022-06-03 21:02:58'),
(1483, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '[]', '2022-06-03 21:03:15', '2022-06-03 21:03:15'),
(1484, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"2\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"fvOBRST9wVBkREaXQ4ZWnNH3wyasrufCCMoRT5if\",\"_method\":\"PUT\"}', '2022-06-03 21:03:19', '2022-06-03 21:03:19'),
(1485, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 21:03:19', '2022-06-03 21:03:19'),
(1486, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 21:04:04', '2022-06-03 21:04:04'),
(1487, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"2\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"fvOBRST9wVBkREaXQ4ZWnNH3wyasrufCCMoRT5if\",\"_method\":\"PUT\"}', '2022-06-03 21:04:07', '2022-06-03 21:04:07'),
(1488, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 21:04:08', '2022-06-03 21:04:08'),
(1489, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 21:04:37', '2022-06-03 21:04:37'),
(1490, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 21:04:38', '2022-06-03 21:04:38'),
(1491, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 21:04:38', '2022-06-03 21:04:38'),
(1492, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 21:04:39', '2022-06-03 21:04:39'),
(1493, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 21:04:59', '2022-06-03 21:04:59'),
(1494, 1, 'admin/orders', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 21:05:31', '2022-06-03 21:05:31'),
(1495, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 21:06:09', '2022-06-03 21:06:09'),
(1496, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 21:06:11', '2022-06-03 21:06:11'),
(1497, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"3\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"fvOBRST9wVBkREaXQ4ZWnNH3wyasrufCCMoRT5if\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-03 21:06:15', '2022-06-03 21:06:15'),
(1498, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-03 21:06:16', '2022-06-03 21:06:16'),
(1499, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 22:08:45', '2022-06-03 22:08:45'),
(1500, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 22:08:46', '2022-06-03 22:08:46'),
(1501, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 22:09:14', '2022-06-03 22:09:14'),
(1502, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 22:09:15', '2022-06-03 22:09:15'),
(1503, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 22:10:39', '2022-06-03 22:10:39'),
(1504, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 22:10:40', '2022-06-03 22:10:40'),
(1505, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 22:20:02', '2022-06-03 22:20:02'),
(1506, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-03 22:20:03', '2022-06-03 22:20:03'),
(1507, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-03 22:25:45', '2022-06-03 22:25:45'),
(1508, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '[]', '2022-06-03 22:33:38', '2022-06-03 22:33:38'),
(1509, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 18:39:13', '2022-06-04 18:39:13'),
(1510, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 18:39:18', '2022-06-04 18:39:18'),
(1511, 1, 'admin/orders/100021', 'PUT', '217.168.16.63', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"2\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"QBh2kZXcatjSgIaYXDFQ9QsgG1XY68Nqx8GGWyUm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-04 18:39:31', '2022-06-04 18:39:31'),
(1512, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-04 18:39:32', '2022-06-04 18:39:32'),
(1513, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 18:55:32', '2022-06-04 18:55:32'),
(1514, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-04 18:55:33', '2022-06-04 18:55:33'),
(1515, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 18:56:05', '2022-06-04 18:56:05'),
(1516, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-04 18:56:07', '2022-06-04 18:56:07'),
(1517, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 18:57:14', '2022-06-04 18:57:14'),
(1518, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-04 18:57:16', '2022-06-04 18:57:16'),
(1519, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 18:57:55', '2022-06-04 18:57:55'),
(1520, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-04 18:57:57', '2022-06-04 18:57:57'),
(1521, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 18:58:44', '2022-06-04 18:58:44'),
(1522, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-04 18:58:45', '2022-06-04 18:58:45'),
(1523, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 19:00:54', '2022-06-04 19:00:54'),
(1524, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-04 19:00:57', '2022-06-04 19:00:57'),
(1525, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 19:04:24', '2022-06-04 19:04:24'),
(1526, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-04 19:04:24', '2022-06-04 19:04:24'),
(1527, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 19:04:49', '2022-06-04 19:04:49'),
(1528, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-04 19:04:49', '2022-06-04 19:04:49'),
(1529, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 19:07:45', '2022-06-04 19:07:45'),
(1530, 1, 'admin/orders', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 19:09:01', '2022-06-04 19:09:01'),
(1531, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 19:09:03', '2022-06-04 19:09:03'),
(1532, 1, 'admin/orders', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 19:09:40', '2022-06-04 19:09:40'),
(1533, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 19:09:43', '2022-06-04 19:09:43'),
(1534, 1, 'admin/orders', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 19:12:19', '2022-06-04 19:12:19'),
(1535, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 19:12:21', '2022-06-04 19:12:21'),
(1536, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 19:17:23', '2022-06-04 19:17:23'),
(1537, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 19:17:29', '2022-06-04 19:17:29'),
(1538, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 19:17:55', '2022-06-04 19:17:55'),
(1539, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 19:17:59', '2022-06-04 19:17:59'),
(1540, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 19:18:20', '2022-06-04 19:18:20'),
(1541, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 19:18:23', '2022-06-04 19:18:23'),
(1542, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 19:20:18', '2022-06-04 19:20:18'),
(1543, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 19:20:23', '2022-06-04 19:20:23'),
(1544, 1, 'admin/orders/100021', 'PUT', '217.168.16.63', '{\"status_id\":\"3\",\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":null,\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"QBh2kZXcatjSgIaYXDFQ9QsgG1XY68Nqx8GGWyUm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-04 19:23:02', '2022-06-04 19:23:02'),
(1545, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '[]', '2022-06-04 19:23:04', '2022-06-04 19:23:04'),
(1546, 1, 'admin/orders/100021', 'PUT', '217.168.16.63', '{\"status_id\":\"3\",\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"order_status\":\"3\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"QBh2kZXcatjSgIaYXDFQ9QsgG1XY68Nqx8GGWyUm\",\"_method\":\"PUT\"}', '2022-06-04 19:23:16', '2022-06-04 19:23:16'),
(1547, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-04 19:23:25', '2022-06-04 19:23:25'),
(1548, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 19:23:51', '2022-06-04 19:23:51'),
(1549, 1, 'admin/orders/100021', 'PUT', '217.168.16.63', '{\"status_id\":\"5\",\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"QBh2kZXcatjSgIaYXDFQ9QsgG1XY68Nqx8GGWyUm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-04 19:23:58', '2022-06-04 19:23:58'),
(1550, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-04 19:24:00', '2022-06-04 19:24:00'),
(1551, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 19:24:08', '2022-06-04 19:24:08'),
(1552, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 19:24:23', '2022-06-04 19:24:23'),
(1553, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 19:29:38', '2022-06-04 19:29:38'),
(1554, 1, 'admin/orders/100021', 'PUT', '217.168.16.63', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"status_id\":\"4\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"QBh2kZXcatjSgIaYXDFQ9QsgG1XY68Nqx8GGWyUm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-04 19:29:56', '2022-06-04 19:29:56'),
(1555, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-04 19:29:58', '2022-06-04 19:29:58'),
(1556, 1, 'admin/orders/100021/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 19:31:08', '2022-06-04 19:31:08'),
(1557, 1, 'admin/orders/100021', 'PUT', '217.168.16.63', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"status_id\":\"4\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"QBh2kZXcatjSgIaYXDFQ9QsgG1XY68Nqx8GGWyUm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-04 19:31:12', '2022-06-04 19:31:12'),
(1558, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 19:34:06', '2022-06-04 19:34:06'),
(1559, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"status_id\":\"4\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"QBh2kZXcatjSgIaYXDFQ9QsgG1XY68Nqx8GGWyUm\",\"_method\":\"PUT\"}', '2022-06-04 19:34:11', '2022-06-04 19:34:11'),
(1560, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 19:34:45', '2022-06-04 19:34:45'),
(1561, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"status_id\":\"4\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"QBh2kZXcatjSgIaYXDFQ9QsgG1XY68Nqx8GGWyUm\",\"_method\":\"PUT\"}', '2022-06-04 19:34:50', '2022-06-04 19:34:50'),
(1562, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-04 19:34:51', '2022-06-04 19:34:51'),
(1563, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 19:37:51', '2022-06-04 19:37:51'),
(1564, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"status_id\":\"4\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"QBh2kZXcatjSgIaYXDFQ9QsgG1XY68Nqx8GGWyUm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-04 19:38:06', '2022-06-04 19:38:06'),
(1565, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-04 19:38:06', '2022-06-04 19:38:06'),
(1566, 1, 'admin/orders/100021/edit', 'GET', '180.174.239.235', '{\"_pjax\":\"#pjax-container\"}', '2022-06-04 19:38:09', '2022-06-04 19:38:09'),
(1567, 1, 'admin/orders/100021', 'PUT', '180.174.239.235', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"status_id\":\"2\",\"confirmed\":\"2022-06-03 16:01:49\",\"accepted\":\"2022-06-03 16:01:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-03 16:01:49\",\"handover\":\"2022-06-03 16:01:49\",\"failed\":\"2022-06-03 16:01:49\",\"scheduled_at\":\"2022-06-03 16:01:49\",\"delivery_address_id\":null,\"order_note\":\"This is addiotnioal info for the food. make sure you do it.\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"8108\",\"pending\":\"2022-06-03 09:06:23\",\"picked_up\":\"2022-06-03 16:01:49\",\"delivered\":\"2022-06-03 16:01:49\",\"canceled\":\"2022-06-03 16:01:49\",\"_token\":\"QBh2kZXcatjSgIaYXDFQ9QsgG1XY68Nqx8GGWyUm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mvs.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-04 19:38:56', '2022-06-04 19:38:56'),
(1568, 1, 'admin/orders', 'GET', '180.174.239.235', '[]', '2022-06-04 19:38:56', '2022-06-04 19:38:56'),
(1569, 1, 'admin/food-types', 'GET', '114.95.156.225', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 19:54:41', '2022-06-06 19:54:41'),
(1570, 1, 'admin/orders', 'GET', '114.95.156.225', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 19:54:43', '2022-06-06 19:54:43'),
(1571, 1, 'admin/orders/100011/edit', 'GET', '114.95.156.225', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 19:54:54', '2022-06-06 19:54:54'),
(1572, 1, 'admin/orders', 'GET', '114.95.156.225', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 19:56:50', '2022-06-06 19:56:50'),
(1573, 1, 'admin/orders/100011/edit', 'GET', '114.95.156.225', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 19:56:53', '2022-06-06 19:56:53'),
(1574, 1, 'admin/orders', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 20:11:48', '2022-06-06 20:11:48'),
(1575, 1, 'admin/orders/100002/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 20:11:58', '2022-06-06 20:11:58'),
(1576, 1, 'admin/orders/100002/edit', 'GET', '185.251.116.122', '[]', '2022-06-06 20:16:49', '2022-06-06 20:16:49'),
(1577, 1, 'admin/orders/100002', 'PUT', '185.251.116.122', '{\"order_amount\":\"68\",\"payment_status\":\"unpaid\",\"status_id\":\"2\",\"confirmed\":\"2022-06-07 04:16:49\",\"accepted\":\"2022-06-07 04:16:49\",\"scheduled\":\"off\",\"processing\":\"2022-06-07 04:16:49\",\"handover\":\"2022-06-07 04:16:49\",\"failed\":\"2022-06-07 04:16:49\",\"scheduled_at\":\"2022-06-07 04:11:02\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":null,\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"4021\",\"pending\":\"2022-06-07 04:11:02\",\"picked_up\":\"2022-06-07 04:16:49\",\"delivered\":\"2022-06-07 04:16:49\",\"canceled\":\"2022-06-07 04:16:49\",\"_token\":\"yEAmIJyBuUHsO8YqCpccbpkm0hxb3rBFt7vig1Ew\",\"_method\":\"PUT\"}', '2022-06-06 20:17:03', '2022-06-06 20:17:03');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1578, 1, 'admin/orders', 'GET', '185.251.116.122', '[]', '2022-06-06 20:17:04', '2022-06-06 20:17:04'),
(1579, 1, 'admin/orders/100002/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 20:17:08', '2022-06-06 20:17:08'),
(1580, 1, 'admin', 'GET', '185.251.116.122', '[]', '2022-06-06 22:42:57', '2022-06-06 22:42:57'),
(1581, 1, 'admin/orders', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 22:43:00', '2022-06-06 22:43:00'),
(1582, 1, 'admin/orders/100003/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 22:43:22', '2022-06-06 22:43:22'),
(1583, 1, 'admin/orders', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 22:43:28', '2022-06-06 22:43:28'),
(1584, 1, 'admin/orders', 'GET', '185.251.116.122', '[]', '2022-06-06 22:44:32', '2022-06-06 22:44:32'),
(1585, 1, 'admin/orders/100003/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 22:45:12', '2022-06-06 22:45:12'),
(1586, 1, 'admin/orders', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 22:47:29', '2022-06-06 22:47:29'),
(1587, 1, 'admin/orders/100011/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 22:47:58', '2022-06-06 22:47:58'),
(1588, 1, 'admin/orders', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 22:48:03', '2022-06-06 22:48:03'),
(1589, 1, 'admin/orders/100002/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 22:48:18', '2022-06-06 22:48:18'),
(1590, 1, 'admin/orders', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 22:48:21', '2022-06-06 22:48:21'),
(1591, 1, 'admin/orders/100003/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 22:48:25', '2022-06-06 22:48:25'),
(1592, 1, 'admin/orders', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 22:48:29', '2022-06-06 22:48:29'),
(1593, 1, 'admin/orders', 'GET', '185.251.116.122', '[]', '2022-06-06 23:04:34', '2022-06-06 23:04:34'),
(1594, 1, 'admin/orders/100005/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 23:04:47', '2022-06-06 23:04:47'),
(1595, 1, 'admin/orders', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 23:05:36', '2022-06-06 23:05:36'),
(1596, 1, 'admin/orders', 'GET', '185.251.116.122', '[]', '2022-06-06 23:06:38', '2022-06-06 23:06:38'),
(1597, 1, 'admin/orders/100005/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 23:06:46', '2022-06-06 23:06:46'),
(1598, 1, 'admin/orders', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 23:06:54', '2022-06-06 23:06:54'),
(1599, 1, 'admin/orders', 'GET', '185.251.116.122', '[]', '2022-06-06 23:14:42', '2022-06-06 23:14:42'),
(1600, 1, 'admin/orders/100006/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 23:14:50', '2022-06-06 23:14:50'),
(1601, 1, 'admin/orders', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 23:14:53', '2022-06-06 23:14:53'),
(1602, 1, 'admin/orders/100006/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 23:14:55', '2022-06-06 23:14:55'),
(1603, 1, 'admin/orders/100006/edit', 'GET', '185.251.116.122', '[]', '2022-06-06 23:16:26', '2022-06-06 23:16:26'),
(1604, 1, 'admin/orders/100006/edit', 'GET', '185.251.116.122', '[]', '2022-06-06 23:16:38', '2022-06-06 23:16:38'),
(1605, 1, 'admin/orders/100006/edit', 'GET', '185.251.116.122', '[]', '2022-06-06 23:16:42', '2022-06-06 23:16:42'),
(1606, 1, 'admin/orders/100006/edit', 'GET', '185.251.116.122', '[]', '2022-06-06 23:17:19', '2022-06-06 23:17:19'),
(1607, 1, 'admin/orders/100006/edit', 'GET', '185.251.116.122', '[]', '2022-06-06 23:17:24', '2022-06-06 23:17:24'),
(1608, 1, 'admin/orders/100006/edit', 'GET', '185.251.116.122', '[]', '2022-06-06 23:22:08', '2022-06-06 23:22:08'),
(1609, 1, 'admin/orders', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 23:22:11', '2022-06-06 23:22:11'),
(1610, 1, 'admin/orders/100008/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 23:22:18', '2022-06-06 23:22:18'),
(1611, 1, 'admin/orders/100008/edit', 'GET', '185.251.116.122', '[]', '2022-06-06 23:23:20', '2022-06-06 23:23:20'),
(1612, 1, 'admin/orders/100008/edit', 'GET', '185.251.116.122', '[]', '2022-06-06 23:23:27', '2022-06-06 23:23:27'),
(1613, 1, 'admin/orders/100008/edit', 'GET', '185.251.116.122', '[]', '2022-06-06 23:23:31', '2022-06-06 23:23:31'),
(1614, 1, 'admin/orders/100008/edit', 'GET', '185.251.116.122', '[]', '2022-06-06 23:23:36', '2022-06-06 23:23:36'),
(1615, 1, 'admin/orders/100008/edit', 'GET', '185.251.116.122', '[]', '2022-06-06 23:23:41', '2022-06-06 23:23:41'),
(1616, 1, 'admin/orders', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 23:23:44', '2022-06-06 23:23:44'),
(1617, 1, 'admin/orders/100008/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 23:23:48', '2022-06-06 23:23:48'),
(1618, 1, 'admin/orders', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 23:27:30', '2022-06-06 23:27:30'),
(1619, 1, 'admin/orders', 'GET', '185.251.116.122', '[]', '2022-06-06 23:27:47', '2022-06-06 23:27:47'),
(1620, 1, 'admin/orders/100008/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 23:27:51', '2022-06-06 23:27:51'),
(1621, 1, 'admin/orders', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 23:33:03', '2022-06-06 23:33:03'),
(1622, 1, 'admin/orders/100009/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 23:33:10', '2022-06-06 23:33:10'),
(1623, 1, 'admin/orders/100009/edit', 'GET', '185.251.116.122', '[]', '2022-06-06 23:33:14', '2022-06-06 23:33:14'),
(1624, 1, 'admin/orders/100009/edit', 'GET', '185.251.116.122', '[]', '2022-06-06 23:33:30', '2022-06-06 23:33:30'),
(1625, 1, 'admin/orders/100009/edit', 'GET', '185.251.116.122', '[]', '2022-06-06 23:33:34', '2022-06-06 23:33:34'),
(1626, 1, 'admin/orders/100009/edit', 'GET', '185.251.116.122', '[]', '2022-06-06 23:33:43', '2022-06-06 23:33:43'),
(1627, 1, 'admin/orders', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 23:33:47', '2022-06-06 23:33:47'),
(1628, 1, 'admin/orders/100008/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 23:33:53', '2022-06-06 23:33:53'),
(1629, 1, 'admin/orders', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 23:33:55', '2022-06-06 23:33:55'),
(1630, 1, 'admin/orders/100009/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 23:33:58', '2022-06-06 23:33:58'),
(1631, 1, 'admin', 'GET', '114.95.225.221', '[]', '2022-06-07 21:52:01', '2022-06-07 21:52:01'),
(1632, 1, 'admin', 'GET', '217.168.16.63', '[]', '2022-06-07 21:52:48', '2022-06-07 21:52:48'),
(1633, 1, 'admin/food-types', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 21:53:10', '2022-06-07 21:53:10'),
(1634, 1, 'admin/users', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 21:53:19', '2022-06-07 21:53:19'),
(1635, 1, 'admin/foods', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 21:53:24', '2022-06-07 21:53:24'),
(1636, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 21:53:36', '2022-06-07 21:53:36'),
(1637, 1, 'admin/business-settings', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 21:53:43', '2022-06-07 21:53:43'),
(1638, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 21:53:52', '2022-06-07 21:53:52'),
(1639, 1, 'admin/orders/100005/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 21:54:26', '2022-06-07 21:54:26'),
(1640, 1, 'admin/orders/100005', 'PUT', '217.168.16.63', '{\"order_amount\":\"34\",\"payment_status\":\"unpaid\",\"status_id\":\"2\",\"confirmed\":\"2022-06-08 05:54:26\",\"accepted\":\"2022-06-08 05:54:26\",\"scheduled\":\"off\",\"processing\":\"2022-06-08 05:54:26\",\"handover\":\"2022-06-08 05:54:26\",\"failed\":\"2022-06-07 07:05:33\",\"scheduled_at\":\"2022-06-07 07:03:59\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":null,\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"5432\",\"pending\":\"2022-06-07 07:03:59\",\"picked_up\":\"2022-06-08 05:54:26\",\"delivered\":\"2022-06-08 05:54:26\",\"canceled\":\"2022-06-08 05:54:26\",\"_token\":\"I8n3hdFCzorj4zR5PqZhIjgIVX5UNaB106al0um8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/db.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-07 21:54:39', '2022-06-07 21:54:39'),
(1641, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-07 21:54:40', '2022-06-07 21:54:40'),
(1642, 1, 'admin/orders/100006/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 21:55:03', '2022-06-07 21:55:03'),
(1643, 1, 'admin/orders/100006', 'PUT', '217.168.16.63', '{\"order_amount\":\"68\",\"payment_status\":\"unpaid\",\"status_id\":\"3\",\"confirmed\":\"2022-06-08 05:55:03\",\"accepted\":\"2022-06-08 05:55:03\",\"scheduled\":\"off\",\"processing\":\"2022-06-08 05:55:03\",\"handover\":\"2022-06-08 05:55:03\",\"failed\":\"2022-06-08 05:55:03\",\"scheduled_at\":\"2022-06-07 07:14:34\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":null,\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Dhaka New Market, Mirpur Road, Dhaka, Bangladesh\\\",\\\"longitude\\\":\\\"90.38376644253731\\\",\\\"latitude\\\":\\\"23.73319360405374\\\"}\",\"otp\":\"3317\",\"pending\":\"2022-06-07 07:14:34\",\"picked_up\":\"2022-06-08 05:55:03\",\"delivered\":\"2022-06-08 05:55:03\",\"canceled\":\"2022-06-08 05:55:03\",\"_token\":\"I8n3hdFCzorj4zR5PqZhIjgIVX5UNaB106al0um8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/db.bslmeiyu.com\\/admin\\/orders\"}', '2022-06-07 21:55:17', '2022-06-07 21:55:17'),
(1644, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-07 21:55:18', '2022-06-07 21:55:18'),
(1645, 1, 'admin/orders/100006/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 21:55:26', '2022-06-07 21:55:26'),
(1646, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 21:56:07', '2022-06-07 21:56:07'),
(1647, 1, 'admin/orders/100002/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 21:57:18', '2022-06-07 21:57:18'),
(1648, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 21:57:22', '2022-06-07 21:57:22'),
(1649, 1, 'admin/orders/100002', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 21:57:32', '2022-06-07 21:57:32'),
(1650, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 21:59:33', '2022-06-07 21:59:33'),
(1651, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 21:59:46', '2022-06-07 21:59:46'),
(1652, 1, 'admin/orders/100002/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 21:59:51', '2022-06-07 21:59:51'),
(1653, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 22:00:19', '2022-06-07 22:00:19'),
(1654, 1, 'admin/business-settings', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 22:01:05', '2022-06-07 22:01:05'),
(1655, 1, 'admin/business-settings/9/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 22:01:34', '2022-06-07 22:01:34'),
(1656, 1, 'admin/business-settings', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 22:01:38', '2022-06-07 22:01:38'),
(1657, 1, 'admin/business-settings/4/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 22:03:06', '2022-06-07 22:03:06'),
(1658, 1, 'admin/business-settings', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 22:03:16', '2022-06-07 22:03:16'),
(1659, 1, 'admin/business-settings/4/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 22:03:21', '2022-06-07 22:03:21'),
(1660, 1, 'admin/business-settings', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 22:04:11', '2022-06-07 22:04:11'),
(1661, 1, 'admin/business-settings/5/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 22:05:34', '2022-06-07 22:05:34'),
(1662, 1, 'admin/business-settings', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 22:05:48', '2022-06-07 22:05:48'),
(1663, 1, 'admin/business-settings/4/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 22:08:14', '2022-06-07 22:08:14'),
(1664, 1, 'admin/business-settings', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 22:08:24', '2022-06-07 22:08:24'),
(1665, 1, 'admin/business-settings/4/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 22:08:29', '2022-06-07 22:08:29'),
(1666, 1, 'admin/business-settings', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 22:08:32', '2022-06-07 22:08:32'),
(1667, 1, 'admin/business-settings/1/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 22:08:40', '2022-06-07 22:08:40'),
(1668, 1, 'admin/business-settings', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 22:08:44', '2022-06-07 22:08:44'),
(1669, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 22:10:15', '2022-06-07 22:10:15'),
(1670, 1, 'admin/orders/100002/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 22:10:21', '2022-06-07 22:10:21'),
(1671, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 22:10:26', '2022-06-07 22:10:26'),
(1672, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-06-08 19:14:34', '2022-06-08 19:14:34'),
(1673, 1, 'admin/foods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-08 19:14:38', '2022-06-08 19:14:38'),
(1674, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-08 19:14:40', '2022-06-08 19:14:40'),
(1675, 1, 'admin/food-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-08 19:14:45', '2022-06-08 19:14:45'),
(1676, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-08 19:14:46', '2022-06-08 19:14:46'),
(1677, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-06-09 18:36:17', '2022-06-09 18:36:17'),
(1678, 1, 'admin/food-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 18:36:25', '2022-06-09 18:36:25'),
(1679, 1, 'admin/foods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 18:36:52', '2022-06-09 18:36:52'),
(1680, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 18:36:55', '2022-06-09 18:36:55'),
(1681, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 18:36:57', '2022-06-09 18:36:57'),
(1682, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 18:36:58', '2022-06-09 18:36:58'),
(1683, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 18:37:00', '2022-06-09 18:37:00'),
(1684, 1, 'admin/foods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 18:37:02', '2022-06-09 18:37:02'),
(1685, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 18:37:03', '2022-06-09 18:37:03'),
(1686, 1, 'admin/food-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 18:37:05', '2022-06-09 18:37:05'),
(1687, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 18:37:08', '2022-06-09 18:37:08'),
(1688, 1, 'admin/orders/100002', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 18:37:11', '2022-06-09 18:37:11'),
(1689, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 18:37:31', '2022-06-09 18:37:31'),
(1690, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-06-10 18:40:07', '2022-06-10 18:40:07'),
(1691, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-10 18:40:15', '2022-06-10 18:40:15'),
(1692, 1, 'admin/orders/100002/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-10 18:40:51', '2022-06-10 18:40:51'),
(1693, 1, 'admin/orders/100002/edit', 'GET', '127.0.0.1', '[]', '2022-06-10 19:10:26', '2022-06-10 19:10:26'),
(1694, 1, 'admin/orders/100002/edit', 'GET', '127.0.0.1', '[]', '2022-06-10 19:10:29', '2022-06-10 19:10:29'),
(1695, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-10 19:10:37', '2022-06-10 19:10:37'),
(1696, 1, 'admin/orders/100002', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-10 19:10:41', '2022-06-10 19:10:41'),
(1697, 1, 'admin/orders/100002', 'GET', '127.0.0.1', '[]', '2022-06-10 19:12:07', '2022-06-10 19:12:07'),
(1698, 1, 'admin/orders/100002', 'GET', '127.0.0.1', '[]', '2022-06-10 19:12:30', '2022-06-10 19:12:30'),
(1699, 1, 'admin', 'GET', '::1', '[]', '2022-06-10 19:13:10', '2022-06-10 19:13:10'),
(1700, 1, 'admin/orders', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-10 19:13:18', '2022-06-10 19:13:18'),
(1701, 1, 'admin/orders/100002', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-10 19:13:23', '2022-06-10 19:13:23'),
(1702, 1, 'admin/orders/100002', 'GET', '127.0.0.1', '[]', '2022-06-10 19:22:59', '2022-06-10 19:22:59'),
(1703, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 19:23:08', '2022-06-10 19:23:08'),
(1704, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 19:23:49', '2022-06-10 19:23:49'),
(1705, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 19:24:25', '2022-06-10 19:24:25'),
(1706, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 19:24:59', '2022-06-10 19:24:59'),
(1707, 1, 'admin/orders/100002', 'GET', '127.0.0.1', '[]', '2022-06-10 19:25:30', '2022-06-10 19:25:30'),
(1708, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 19:26:11', '2022-06-10 19:26:11'),
(1709, 1, 'admin/orders/100002', 'GET', '127.0.0.1', '[]', '2022-06-10 19:27:17', '2022-06-10 19:27:17'),
(1710, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 19:29:23', '2022-06-10 19:29:23'),
(1711, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 19:29:57', '2022-06-10 19:29:57'),
(1712, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 19:30:01', '2022-06-10 19:30:01'),
(1713, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 19:30:22', '2022-06-10 19:30:22'),
(1714, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 19:30:30', '2022-06-10 19:30:30'),
(1715, 1, 'admin/orders', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-10 19:32:03', '2022-06-10 19:32:03'),
(1716, 1, 'admin/orders/100002/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-10 19:32:07', '2022-06-10 19:32:07'),
(1717, 1, 'admin/orders/100002/edit', 'GET', '::1', '[]', '2022-06-10 19:32:41', '2022-06-10 19:32:41'),
(1718, 1, 'admin/orders/100002/edit', 'GET', '::1', '[]', '2022-06-10 19:34:48', '2022-06-10 19:34:48'),
(1719, 1, 'admin/orders/100002/edit', 'GET', '::1', '[]', '2022-06-10 19:34:52', '2022-06-10 19:34:52'),
(1720, 1, 'admin/orders/100002/edit', 'GET', '::1', '[]', '2022-06-10 19:35:15', '2022-06-10 19:35:15'),
(1721, 1, 'admin/orders/100002/edit', 'GET', '::1', '[]', '2022-06-10 19:40:30', '2022-06-10 19:40:30'),
(1722, 1, 'admin/orders/100002/edit', 'GET', '::1', '[]', '2022-06-10 19:41:15', '2022-06-10 19:41:15'),
(1723, 1, 'admin/orders', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-10 19:41:51', '2022-06-10 19:41:51'),
(1724, 1, 'admin/orders/100002', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-10 19:41:55', '2022-06-10 19:41:55'),
(1725, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 19:42:35', '2022-06-10 19:42:35'),
(1726, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 19:42:39', '2022-06-10 19:42:39'),
(1727, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 19:46:08', '2022-06-10 19:46:08'),
(1728, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 19:48:24', '2022-06-10 19:48:24'),
(1729, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 19:51:00', '2022-06-10 19:51:00'),
(1730, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 19:53:58', '2022-06-10 19:53:58'),
(1731, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 19:54:25', '2022-06-10 19:54:25'),
(1732, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 19:55:19', '2022-06-10 19:55:19'),
(1733, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 19:56:00', '2022-06-10 19:56:00'),
(1734, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 19:56:46', '2022-06-10 19:56:46'),
(1735, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 19:58:03', '2022-06-10 19:58:03'),
(1736, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 19:59:23', '2022-06-10 19:59:23'),
(1737, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 20:00:01', '2022-06-10 20:00:01'),
(1738, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 20:01:42', '2022-06-10 20:01:42'),
(1739, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 20:02:36', '2022-06-10 20:02:36'),
(1740, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 20:04:05', '2022-06-10 20:04:05'),
(1741, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 20:05:10', '2022-06-10 20:05:10'),
(1742, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 20:06:00', '2022-06-10 20:06:00'),
(1743, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 20:07:53', '2022-06-10 20:07:53'),
(1744, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 20:08:21', '2022-06-10 20:08:21'),
(1745, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 20:09:13', '2022-06-10 20:09:13'),
(1746, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 20:09:17', '2022-06-10 20:09:17'),
(1747, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 20:09:43', '2022-06-10 20:09:43'),
(1748, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 20:11:09', '2022-06-10 20:11:09'),
(1749, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 20:11:31', '2022-06-10 20:11:31'),
(1750, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 20:11:52', '2022-06-10 20:11:52'),
(1751, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 20:12:29', '2022-06-10 20:12:29'),
(1752, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 23:37:18', '2022-06-10 23:37:18'),
(1753, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 23:44:36', '2022-06-10 23:44:36'),
(1754, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 23:44:46', '2022-06-10 23:44:46'),
(1755, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 23:47:19', '2022-06-10 23:47:19'),
(1756, 1, 'admin/orders/100002', 'GET', '::1', '[]', '2022-06-10 23:48:17', '2022-06-10 23:48:17'),
(1757, 1, 'admin/foods', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-10 23:48:46', '2022-06-10 23:48:46'),
(1758, 1, 'admin/business-settings', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-10 23:48:53', '2022-06-10 23:48:53'),
(1759, 1, 'admin/business-settings/4', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-10 23:49:38', '2022-06-10 23:49:38'),
(1760, 1, 'admin/business-settings', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-10 23:49:41', '2022-06-10 23:49:41'),
(1761, 1, 'admin/business-settings/4/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-10 23:49:45', '2022-06-10 23:49:45'),
(1762, 1, 'admin/business-settings', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-10 23:49:48', '2022-06-10 23:49:48'),
(1763, 1, 'admin/business-settings/10/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-10 23:50:13', '2022-06-10 23:50:13'),
(1764, 1, 'admin/business-settings', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-10 23:50:17', '2022-06-10 23:50:17'),
(1765, 1, 'admin/business-settings/11/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-10 23:54:07', '2022-06-10 23:54:07'),
(1766, 1, 'admin/business-settings', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-10 23:54:15', '2022-06-10 23:54:15'),
(1767, 1, 'admin/business-settings/4', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-10 23:54:51', '2022-06-10 23:54:51'),
(1768, 1, 'admin/business-settings/4', 'GET', '::1', '[]', '2022-06-10 23:56:36', '2022-06-10 23:56:36'),
(1769, 1, 'admin/business-settings', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-10 23:56:44', '2022-06-10 23:56:44'),
(1770, 1, 'admin/business-settings/5/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-10 23:56:53', '2022-06-10 23:56:53'),
(1771, 1, 'admin/business-settings', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-10 23:56:55', '2022-06-10 23:56:55'),
(1772, 1, 'admin/business-settings/4', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-10 23:56:59', '2022-06-10 23:56:59'),
(1773, 1, 'admin/business-settings', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-10 23:57:18', '2022-06-10 23:57:18'),
(1774, 1, 'admin/business-settings/4', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-10 23:57:21', '2022-06-10 23:57:21'),
(1775, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 00:02:12', '2022-06-11 00:02:12'),
(1776, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 00:02:19', '2022-06-11 00:02:19'),
(1777, 1, 'admin/business-settings', 'GET', '127.0.0.1', '[]', '2022-06-11 00:10:44', '2022-06-11 00:10:44'),
(1778, 1, 'admin/business-settings', 'GET', '127.0.0.1', '[]', '2022-06-11 00:10:59', '2022-06-11 00:10:59'),
(1779, 1, 'admin/business-settings', 'GET', '127.0.0.1', '[]', '2022-06-11 00:11:35', '2022-06-11 00:11:35'),
(1780, 1, 'admin/business-settings/18/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 00:12:10', '2022-06-11 00:12:10'),
(1781, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 00:12:18', '2022-06-11 00:12:18'),
(1782, 1, 'admin/business-settings/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 00:12:21', '2022-06-11 00:12:21'),
(1783, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 00:13:21', '2022-06-11 00:13:21'),
(1784, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 00:13:24', '2022-06-11 00:13:24'),
(1785, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 00:13:27', '2022-06-11 00:13:27'),
(1786, 1, 'admin/business-settings/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 00:13:31', '2022-06-11 00:13:31'),
(1787, 1, 'admin/business-settings/4/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 00:16:25', '2022-06-11 00:16:25'),
(1788, 1, 'admin/business-settings/4/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 00:30:36', '2022-06-11 00:30:36'),
(1789, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 00:30:38', '2022-06-11 00:30:38'),
(1790, 1, 'admin/business-settings', 'GET', '127.0.0.1', '[]', '2022-06-11 00:32:02', '2022-06-11 00:32:02'),
(1791, 1, 'admin/business-settings', 'GET', '127.0.0.1', '[]', '2022-06-11 00:32:45', '2022-06-11 00:32:45'),
(1792, 1, 'admin/business-settings', 'GET', '127.0.0.1', '[]', '2022-06-11 00:33:01', '2022-06-11 00:33:01'),
(1793, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 00:33:08', '2022-06-11 00:33:08'),
(1794, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 00:33:11', '2022-06-11 00:33:11'),
(1795, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 00:34:03', '2022-06-11 00:34:03'),
(1796, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 00:34:05', '2022-06-11 00:34:05'),
(1797, 1, 'admin/business-settings', 'GET', '127.0.0.1', '[]', '2022-06-11 00:35:43', '2022-06-11 00:35:43'),
(1798, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 00:35:47', '2022-06-11 00:35:47'),
(1799, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 00:36:10', '2022-06-11 00:36:10'),
(1800, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 00:36:12', '2022-06-11 00:36:12'),
(1801, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 00:36:14', '2022-06-11 00:36:14'),
(1802, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 00:36:18', '2022-06-11 00:36:18'),
(1803, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 00:36:21', '2022-06-11 00:36:21'),
(1804, 1, 'admin/business-settings', 'GET', '127.0.0.1', '[]', '2022-06-11 00:44:20', '2022-06-11 00:44:20'),
(1805, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 00:44:24', '2022-06-11 00:44:24'),
(1806, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 00:44:41', '2022-06-11 00:44:41'),
(1807, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 00:45:03', '2022-06-11 00:45:03'),
(1808, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 00:45:25', '2022-06-11 00:45:25'),
(1809, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 00:45:45', '2022-06-11 00:45:45'),
(1810, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 00:46:03', '2022-06-11 00:46:03'),
(1811, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 00:46:53', '2022-06-11 00:46:53'),
(1812, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 00:46:59', '2022-06-11 00:46:59'),
(1813, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 00:47:01', '2022-06-11 00:47:01'),
(1814, 1, 'admin/business-settings/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 00:47:04', '2022-06-11 00:47:04'),
(1815, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 00:47:07', '2022-06-11 00:47:07'),
(1816, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 00:47:10', '2022-06-11 00:47:10'),
(1817, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 00:47:12', '2022-06-11 00:47:12'),
(1818, 1, 'admin/business-settings/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 00:47:15', '2022-06-11 00:47:15'),
(1819, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 00:47:17', '2022-06-11 00:47:17'),
(1820, 1, 'admin/business-settings/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 00:49:14', '2022-06-11 00:49:14'),
(1821, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 00:49:19', '2022-06-11 00:49:19'),
(1822, 1, 'admin/business-settings/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 00:50:02', '2022-06-11 00:50:02'),
(1823, 1, 'admin/business-settings/4/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 00:52:01', '2022-06-11 00:52:01'),
(1824, 1, 'admin/business-settings/4/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 00:54:24', '2022-06-11 00:54:24'),
(1825, 1, 'admin/business-settings/4/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 00:58:23', '2022-06-11 00:58:23'),
(1826, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 01:02:06', '2022-06-11 01:02:06'),
(1827, 1, 'admin/business-settings', 'GET', '127.0.0.1', '[]', '2022-06-11 01:02:47', '2022-06-11 01:02:47'),
(1828, 1, 'admin/business-settings', 'GET', '127.0.0.1', '[]', '2022-06-11 01:03:44', '2022-06-11 01:03:44'),
(1829, 1, 'admin/business-settings', 'GET', '127.0.0.1', '[]', '2022-06-11 01:03:49', '2022-06-11 01:03:49'),
(1830, 1, 'admin/business-settings', 'GET', '127.0.0.1', '[]', '2022-06-11 01:03:50', '2022-06-11 01:03:50'),
(1831, 1, 'admin/business-settings', 'GET', '127.0.0.1', '[]', '2022-06-11 01:04:35', '2022-06-11 01:04:35'),
(1832, 1, 'admin/business-settings', 'GET', '127.0.0.1', '[]', '2022-06-11 01:04:36', '2022-06-11 01:04:36'),
(1833, 1, 'admin/business-settings', 'GET', '127.0.0.1', '[]', '2022-06-11 01:05:10', '2022-06-11 01:05:10'),
(1834, 1, 'admin/business-settings', 'GET', '127.0.0.1', '[]', '2022-06-11 01:05:39', '2022-06-11 01:05:39'),
(1835, 1, 'admin/business-settings', 'GET', '127.0.0.1', '[]', '2022-06-11 01:05:51', '2022-06-11 01:05:51'),
(1836, 1, 'admin/business-settings', 'GET', '127.0.0.1', '[]', '2022-06-11 01:05:52', '2022-06-11 01:05:52'),
(1837, 1, 'admin/business-settings', 'GET', '127.0.0.1', '[]', '2022-06-11 01:06:44', '2022-06-11 01:06:44'),
(1838, 1, 'admin/business-settings', 'GET', '127.0.0.1', '[]', '2022-06-11 01:06:58', '2022-06-11 01:06:58'),
(1839, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 01:07:02', '2022-06-11 01:07:02'),
(1840, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:07:39', '2022-06-11 01:07:39'),
(1841, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:08:08', '2022-06-11 01:08:08'),
(1842, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:08:29', '2022-06-11 01:08:29'),
(1843, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:08:31', '2022-06-11 01:08:31'),
(1844, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:08:44', '2022-06-11 01:08:44'),
(1845, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 01:09:08', '2022-06-11 01:09:08'),
(1846, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 01:09:14', '2022-06-11 01:09:14'),
(1847, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:09:46', '2022-06-11 01:09:46'),
(1848, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 01:10:00', '2022-06-11 01:10:00'),
(1849, 1, 'admin/business-settings', 'GET', '127.0.0.1', '[]', '2022-06-11 01:10:25', '2022-06-11 01:10:25'),
(1850, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 01:10:28', '2022-06-11 01:10:28'),
(1851, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:13:06', '2022-06-11 01:13:06'),
(1852, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:14:25', '2022-06-11 01:14:25'),
(1853, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:14:26', '2022-06-11 01:14:26'),
(1854, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:14:44', '2022-06-11 01:14:44'),
(1855, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:15:01', '2022-06-11 01:15:01'),
(1856, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:16:13', '2022-06-11 01:16:13'),
(1857, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 01:16:22', '2022-06-11 01:16:22'),
(1858, 1, 'admin/business-settings/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 01:16:25', '2022-06-11 01:16:25'),
(1859, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 01:16:28', '2022-06-11 01:16:28'),
(1860, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 01:16:28', '2022-06-11 01:16:28'),
(1861, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-11 01:16:32', '2022-06-11 01:16:32'),
(1862, 1, 'admin/orders/100002/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 01:16:36', '2022-06-11 01:16:36'),
(1863, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 01:16:39', '2022-06-11 01:16:39'),
(1864, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 01:16:42', '2022-06-11 01:16:42'),
(1865, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 01:16:44', '2022-06-11 01:16:44'),
(1866, 1, 'admin/business-settings', 'GET', '127.0.0.1', '[]', '2022-06-11 01:17:38', '2022-06-11 01:17:38'),
(1867, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 01:17:41', '2022-06-11 01:17:41'),
(1868, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:18:16', '2022-06-11 01:18:16'),
(1869, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:19:19', '2022-06-11 01:19:19'),
(1870, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:20:07', '2022-06-11 01:20:07'),
(1871, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:21:29', '2022-06-11 01:21:29'),
(1872, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:33:06', '2022-06-11 01:33:06'),
(1873, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:33:52', '2022-06-11 01:33:52'),
(1874, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:33:54', '2022-06-11 01:33:54'),
(1875, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:33:58', '2022-06-11 01:33:58'),
(1876, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:34:38', '2022-06-11 01:34:38'),
(1877, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:35:46', '2022-06-11 01:35:46'),
(1878, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 01:35:50', '2022-06-11 01:35:50'),
(1879, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 01:35:52', '2022-06-11 01:35:52'),
(1880, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:38:54', '2022-06-11 01:38:54'),
(1881, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:39:27', '2022-06-11 01:39:27'),
(1882, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:41:09', '2022-06-11 01:41:09'),
(1883, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:41:40', '2022-06-11 01:41:40'),
(1884, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:41:57', '2022-06-11 01:41:57'),
(1885, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:42:44', '2022-06-11 01:42:44'),
(1886, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:44:28', '2022-06-11 01:44:28'),
(1887, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:45:17', '2022-06-11 01:45:17'),
(1888, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:45:30', '2022-06-11 01:45:30'),
(1889, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:53:22', '2022-06-11 01:53:22'),
(1890, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 01:53:28', '2022-06-11 01:53:28'),
(1891, 1, 'admin/business-settings/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 01:53:30', '2022-06-11 01:53:30'),
(1892, 1, 'admin/business-settings/4/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:53:43', '2022-06-11 01:53:43'),
(1893, 1, 'admin/business-settings/4/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:54:24', '2022-06-11 01:54:24'),
(1894, 1, 'admin/business-settings/4/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:55:11', '2022-06-11 01:55:11'),
(1895, 1, 'admin/business-settings/4/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:55:33', '2022-06-11 01:55:33'),
(1896, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 01:56:00', '2022-06-11 01:56:00'),
(1897, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 01:56:04', '2022-06-11 01:56:04'),
(1898, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:56:28', '2022-06-11 01:56:28'),
(1899, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 01:57:20', '2022-06-11 01:57:20'),
(1900, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 01:57:27', '2022-06-11 01:57:27'),
(1901, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 01:57:31', '2022-06-11 01:57:31'),
(1902, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:00:08', '2022-06-11 02:00:08'),
(1903, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:00:13', '2022-06-11 02:00:13'),
(1904, 1, 'admin/business-settings/1', 'PUT', '127.0.0.1', '{\"key\":\"currency\",\"content\":\"USDq\",\"_token\":\"2nUQHzU07Io2xOcICw8pXitX8butIG1Mgp69yuzF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8088\\/admin\\/business-settings\"}', '2022-06-11 02:00:18', '2022-06-11 02:00:18'),
(1905, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:02:19', '2022-06-11 02:02:19'),
(1906, 1, 'admin/business-settings/1', 'PUT', '127.0.0.1', '{\"key\":\"currency\",\"content\":\"USDQ\",\"_token\":\"2nUQHzU07Io2xOcICw8pXitX8butIG1Mgp69yuzF\",\"_method\":\"PUT\"}', '2022-06-11 02:02:24', '2022-06-11 02:02:24'),
(1907, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:02:45', '2022-06-11 02:02:45'),
(1908, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:02:46', '2022-06-11 02:02:46'),
(1909, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:02:54', '2022-06-11 02:02:54'),
(1910, 1, 'admin/business-settings/10', 'PUT', '127.0.0.1', '{\"key\":\"order_pending_message\",\"status\":\"1\",\"message\":\"Your order is successfully placed11\",\"_token\":\"2nUQHzU07Io2xOcICw8pXitX8butIG1Mgp69yuzF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8088\\/admin\\/business-settings\"}', '2022-06-11 02:02:59', '2022-06-11 02:02:59'),
(1911, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:04:10', '2022-06-11 02:04:10'),
(1912, 1, 'admin/business-settings/10', 'PUT', '127.0.0.1', '{\"key\":\"order_pending_message\",\"status\":\"1\",\"message\":\"Your order is successfully placed11\",\"_token\":\"2nUQHzU07Io2xOcICw8pXitX8butIG1Mgp69yuzF\",\"_method\":\"PUT\"}', '2022-06-11 02:04:14', '2022-06-11 02:04:14'),
(1913, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 02:04:14', '2022-06-11 02:04:14'),
(1914, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:04:18', '2022-06-11 02:04:18'),
(1915, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:05:07', '2022-06-11 02:05:07'),
(1916, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:05:12', '2022-06-11 02:05:12'),
(1917, 1, 'admin/business-settings/10', 'PUT', '127.0.0.1', '{\"key\":\"order_pending_message\",\"status\":\"1\",\"message\":\"Your order is successfully placed\",\"_token\":\"2nUQHzU07Io2xOcICw8pXitX8butIG1Mgp69yuzF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8088\\/admin\\/business-settings\"}', '2022-06-11 02:05:14', '2022-06-11 02:05:14'),
(1918, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:06:53', '2022-06-11 02:06:53'),
(1919, 1, 'admin/business-settings/10', 'PUT', '127.0.0.1', '{\"key\":\"order_pending_message\",\"status\":\"1\",\"message\":\"Your order is successfully placed\",\"_token\":\"2nUQHzU07Io2xOcICw8pXitX8butIG1Mgp69yuzF\",\"_method\":\"PUT\"}', '2022-06-11 02:06:54', '2022-06-11 02:06:54'),
(1920, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:09:27', '2022-06-11 02:09:27'),
(1921, 1, 'admin/business-settings/10', 'PUT', '127.0.0.1', '{\"key\":\"order_pending_message\",\"status\":\"1\",\"message\":\"Your order is successfully placed\",\"_token\":\"2nUQHzU07Io2xOcICw8pXitX8butIG1Mgp69yuzF\",\"_method\":\"PUT\"}', '2022-06-11 02:09:28', '2022-06-11 02:09:28'),
(1922, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:10:33', '2022-06-11 02:10:33'),
(1923, 1, 'admin/business-settings/10', 'PUT', '127.0.0.1', '{\"key\":\"order_pending_message\",\"status\":\"1\",\"message\":\"Your order is successfully placed\",\"_token\":\"2nUQHzU07Io2xOcICw8pXitX8butIG1Mgp69yuzF\",\"_method\":\"PUT\"}', '2022-06-11 02:10:35', '2022-06-11 02:10:35'),
(1924, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:10:40', '2022-06-11 02:10:40'),
(1925, 1, 'admin/business-settings/10', 'PUT', '127.0.0.1', '{\"key\":\"order_pending_message\",\"status\":\"1\",\"message\":\"Your order is successfully placed\",\"_token\":\"2nUQHzU07Io2xOcICw8pXitX8butIG1Mgp69yuzF\",\"_method\":\"PUT\"}', '2022-06-11 02:10:47', '2022-06-11 02:10:47'),
(1926, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:10:49', '2022-06-11 02:10:49'),
(1927, 1, 'admin/business-settings/10', 'PUT', '127.0.0.1', '{\"key\":\"order_pending_message\",\"status\":\"1\",\"message\":\"Your order is successfully placed111\",\"_token\":\"2nUQHzU07Io2xOcICw8pXitX8butIG1Mgp69yuzF\",\"_method\":\"PUT\"}', '2022-06-11 02:10:52', '2022-06-11 02:10:52'),
(1928, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:11:48', '2022-06-11 02:11:48'),
(1929, 1, 'admin/business-settings/10', 'PUT', '127.0.0.1', '{\"key\":\"order_pending_message\",\"status\":\"1\",\"message\":\"Your order is successfully placed\",\"_token\":\"2nUQHzU07Io2xOcICw8pXitX8butIG1Mgp69yuzF\",\"_method\":\"PUT\"}', '2022-06-11 02:11:49', '2022-06-11 02:11:49'),
(1930, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:13:10', '2022-06-11 02:13:10'),
(1931, 1, 'admin/business-settings/10', 'PUT', '127.0.0.1', '{\"key\":\"order_pending_message\",\"status\":\"1\",\"message\":\"Your order is successfully placed\",\"_token\":\"2nUQHzU07Io2xOcICw8pXitX8butIG1Mgp69yuzF\",\"_method\":\"PUT\"}', '2022-06-11 02:13:12', '2022-06-11 02:13:12'),
(1932, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:13:14', '2022-06-11 02:13:14'),
(1933, 1, 'admin/business-settings/10', 'PUT', '127.0.0.1', '{\"key\":\"order_pending_message\",\"status\":\"1\",\"message\":\"Your order is successfully placed111\",\"_token\":\"2nUQHzU07Io2xOcICw8pXitX8butIG1Mgp69yuzF\",\"_method\":\"PUT\"}', '2022-06-11 02:13:17', '2022-06-11 02:13:17'),
(1934, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:13:18', '2022-06-11 02:13:18'),
(1935, 1, 'admin/business-settings/10', 'PUT', '127.0.0.1', '{\"key\":\"order_pending_message\",\"status\":\"1\",\"message\":\"Your order is successfully placed\",\"_token\":\"2nUQHzU07Io2xOcICw8pXitX8butIG1Mgp69yuzF\",\"_method\":\"PUT\"}', '2022-06-11 02:15:01', '2022-06-11 02:15:01'),
(1936, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:16:47', '2022-06-11 02:16:47'),
(1937, 1, 'admin/business-settings/10', 'PUT', '127.0.0.1', '{\"key\":\"order_pending_message\",\"status\":\"1\",\"message\":\"Your order is successfully placed\",\"_token\":\"2nUQHzU07Io2xOcICw8pXitX8butIG1Mgp69yuzF\",\"_method\":\"PUT\"}', '2022-06-11 02:16:48', '2022-06-11 02:16:48'),
(1938, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:16:57', '2022-06-11 02:16:57'),
(1939, 1, 'admin/business-settings/10', 'PUT', '127.0.0.1', '{\"key\":\"order_pending_message\",\"status\":\"1\",\"message\":\"Your order is successfully placed1\",\"_token\":\"2nUQHzU07Io2xOcICw8pXitX8butIG1Mgp69yuzF\",\"_method\":\"PUT\"}', '2022-06-11 02:17:12', '2022-06-11 02:17:12'),
(1940, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:19:02', '2022-06-11 02:19:02'),
(1941, 1, 'admin/business-settings/10', 'PUT', '127.0.0.1', '{\"key\":\"order_pending_message\",\"status\":\"1\",\"message\":\"Your order is successfully placed11\",\"_token\":\"2nUQHzU07Io2xOcICw8pXitX8butIG1Mgp69yuzF\",\"_method\":\"PUT\"}', '2022-06-11 02:19:06', '2022-06-11 02:19:06'),
(1942, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:19:09', '2022-06-11 02:19:09');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1943, 1, 'admin/business-settings/10', 'PUT', '127.0.0.1', '{\"key\":\"order_pending_message\",\"status\":\"1\",\"message\":\"Your order is successfully placed\",\"_token\":\"2nUQHzU07Io2xOcICw8pXitX8butIG1Mgp69yuzF\",\"_method\":\"PUT\"}', '2022-06-11 02:20:48', '2022-06-11 02:20:48'),
(1944, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:21:17', '2022-06-11 02:21:17'),
(1945, 1, 'admin/business-settings/10', 'PUT', '127.0.0.1', '{\"key\":\"order_pending_message\",\"status\":\"1\",\"message\":\"Your order is successfully placed\",\"_token\":\"2nUQHzU07Io2xOcICw8pXitX8butIG1Mgp69yuzF\",\"_method\":\"PUT\"}', '2022-06-11 02:21:19', '2022-06-11 02:21:19'),
(1946, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:25:02', '2022-06-11 02:25:02'),
(1947, 1, 'admin/business-settings/10', 'PUT', '127.0.0.1', '{\"key\":\"order_pending_message\",\"status\":\"1\",\"message\":\"Your order is successfully placed\",\"_token\":\"2nUQHzU07Io2xOcICw8pXitX8butIG1Mgp69yuzF\",\"_method\":\"PUT\"}', '2022-06-11 02:25:04', '2022-06-11 02:25:04'),
(1948, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:25:46', '2022-06-11 02:25:46'),
(1949, 1, 'admin/business-settings/10', 'PUT', '127.0.0.1', '{\"key\":\"order_pending_message\",\"status\":\"1\",\"message\":\"Your order is successfully placed\",\"_token\":\"2nUQHzU07Io2xOcICw8pXitX8butIG1Mgp69yuzF\",\"_method\":\"PUT\"}', '2022-06-11 02:25:48', '2022-06-11 02:25:48'),
(1950, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:28:37', '2022-06-11 02:28:37'),
(1951, 1, 'admin/business-settings/10', 'PUT', '127.0.0.1', '{\"key\":\"order_pending_message\",\"status\":\"1\",\"message\":\"Your order is successfully placed\",\"_token\":\"2nUQHzU07Io2xOcICw8pXitX8butIG1Mgp69yuzF\",\"_method\":\"PUT\"}', '2022-06-11 02:28:39', '2022-06-11 02:28:39'),
(1952, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:28:55', '2022-06-11 02:28:55'),
(1953, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:28:56', '2022-06-11 02:28:56'),
(1954, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:28:59', '2022-06-11 02:28:59'),
(1955, 1, 'admin/business-settings/1', 'PUT', '127.0.0.1', '{\"key\":\"currency\",\"content\":\"USD\",\"_token\":\"2nUQHzU07Io2xOcICw8pXitX8butIG1Mgp69yuzF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8088\\/admin\\/business-settings\"}', '2022-06-11 02:29:01', '2022-06-11 02:29:01'),
(1956, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:29:03', '2022-06-11 02:29:03'),
(1957, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:29:05', '2022-06-11 02:29:05'),
(1958, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:31:15', '2022-06-11 02:31:15'),
(1959, 1, 'admin/business-settings/1', 'PUT', '127.0.0.1', '{\"key\":\"currency\",\"content\":\"USD\",\"_token\":\"2nUQHzU07Io2xOcICw8pXitX8butIG1Mgp69yuzF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8088\\/admin\\/business-settings\"}', '2022-06-11 02:31:16', '2022-06-11 02:31:16'),
(1960, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:31:32', '2022-06-11 02:31:32'),
(1961, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:31:34', '2022-06-11 02:31:34'),
(1962, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:31:40', '2022-06-11 02:31:40'),
(1963, 1, 'admin/business-settings/10', 'PUT', '127.0.0.1', '{\"key\":\"order_pending_message\",\"status\":\"1\",\"message\":\"Your order is successfully placed111\",\"_token\":\"2nUQHzU07Io2xOcICw8pXitX8butIG1Mgp69yuzF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8088\\/admin\\/business-settings\"}', '2022-06-11 02:31:43', '2022-06-11 02:31:43'),
(1964, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:31:59', '2022-06-11 02:31:59'),
(1965, 1, 'admin/business-settings/10', 'PUT', '127.0.0.1', '{\"key\":\"order_pending_message\",\"status\":\"1\",\"message\":\"Your order is successfully placed\",\"_token\":\"2nUQHzU07Io2xOcICw8pXitX8butIG1Mgp69yuzF\",\"_method\":\"PUT\"}', '2022-06-11 02:32:33', '2022-06-11 02:32:33'),
(1966, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:32:40', '2022-06-11 02:32:40'),
(1967, 1, 'admin/business-settings/10', 'PUT', '127.0.0.1', '{\"key\":\"order_pending_message\",\"status\":\"1\",\"message\":\"Your order is successfully placed1111\",\"_token\":\"2nUQHzU07Io2xOcICw8pXitX8butIG1Mgp69yuzF\",\"_method\":\"PUT\"}', '2022-06-11 02:32:43', '2022-06-11 02:32:43'),
(1968, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:32:53', '2022-06-11 02:32:53'),
(1969, 1, 'admin/business-settings/10', 'PUT', '127.0.0.1', '{\"key\":\"order_pending_message\",\"status\":\"1\",\"message\":\"Your order is successfully placed111\",\"_token\":\"2nUQHzU07Io2xOcICw8pXitX8butIG1Mgp69yuzF\",\"_method\":\"PUT\"}', '2022-06-11 02:32:55', '2022-06-11 02:32:55'),
(1970, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:32:58', '2022-06-11 02:32:58'),
(1971, 1, 'admin/business-settings/10', 'PUT', '127.0.0.1', '{\"key\":\"order_pending_message\",\"status\":\"1\",\"message\":\"Your order is successfully placed11\",\"_token\":\"2nUQHzU07Io2xOcICw8pXitX8butIG1Mgp69yuzF\",\"_method\":\"PUT\"}', '2022-06-11 02:33:32', '2022-06-11 02:33:32'),
(1972, 1, 'admin/business-settings/10', 'GET', '127.0.0.1', '[]', '2022-06-11 02:33:32', '2022-06-11 02:33:32'),
(1973, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 02:34:10', '2022-06-11 02:34:10'),
(1974, 1, 'admin/business-settings/10', 'PUT', '127.0.0.1', '{\"key\":\"order_pending_message\",\"status\":\"68\",\"message\":\"Your order is successfully placed11\",\"_token\":\"2nUQHzU07Io2xOcICw8pXitX8butIG1Mgp69yuzF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8088\\/admin\\/business-settings\\/10\"}', '2022-06-11 02:34:13', '2022-06-11 02:34:13'),
(1975, 1, 'admin/business-settings/10', 'GET', '127.0.0.1', '[]', '2022-06-11 02:34:13', '2022-06-11 02:34:13'),
(1976, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '[]', '2022-06-11 02:34:14', '2022-06-11 02:34:14'),
(1977, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:35:16', '2022-06-11 02:35:16'),
(1978, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:35:46', '2022-06-11 02:35:46'),
(1979, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:35:48', '2022-06-11 02:35:48'),
(1980, 1, 'admin/business-settings/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:35:51', '2022-06-11 02:35:51'),
(1981, 1, 'admin/business-settings/10', 'PUT', '127.0.0.1', '{\"key\":\"order_pending_message\",\"status\":\"68\",\"message\":\"Your order is successfully placed\",\"_token\":\"2nUQHzU07Io2xOcICw8pXitX8butIG1Mgp69yuzF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8088\\/admin\\/business-settings\"}', '2022-06-11 02:35:55', '2022-06-11 02:35:55'),
(1982, 1, 'admin/business-settings', 'GET', '127.0.0.1', '[]', '2022-06-11 02:35:56', '2022-06-11 02:35:56'),
(1983, 1, 'admin/business-settings/10', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:36:21', '2022-06-11 02:36:21'),
(1984, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:36:26', '2022-06-11 02:36:26'),
(1985, 1, 'admin/business-settings/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:36:32', '2022-06-11 02:36:32'),
(1986, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:36:35', '2022-06-11 02:36:35'),
(1987, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:37:01', '2022-06-11 02:37:01'),
(1988, 1, 'admin/business-settings/1', 'PUT', '127.0.0.1', '{\"key\":\"currency\",\"content\":\"USDQ\",\"_token\":\"2nUQHzU07Io2xOcICw8pXitX8butIG1Mgp69yuzF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8088\\/admin\\/business-settings\"}', '2022-06-11 02:37:06', '2022-06-11 02:37:06'),
(1989, 1, 'admin/business-settings', 'GET', '127.0.0.1', '[]', '2022-06-11 02:37:07', '2022-06-11 02:37:07'),
(1990, 1, 'admin/business-settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:37:11', '2022-06-11 02:37:11'),
(1991, 1, 'admin/business-settings/1', 'PUT', '127.0.0.1', '{\"key\":\"currency\",\"content\":\"USD\",\"_token\":\"2nUQHzU07Io2xOcICw8pXitX8butIG1Mgp69yuzF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8088\\/admin\\/business-settings\"}', '2022-06-11 02:37:15', '2022-06-11 02:37:15'),
(1992, 1, 'admin/business-settings', 'GET', '127.0.0.1', '[]', '2022-06-11 02:37:16', '2022-06-11 02:37:16'),
(1993, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:37:34', '2022-06-11 02:37:34'),
(1994, 1, 'admin/orders/100002/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:37:37', '2022-06-11 02:37:37'),
(1995, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:37:42', '2022-06-11 02:37:42'),
(1996, 1, 'admin/orders/100002', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:37:46', '2022-06-11 02:37:46'),
(1997, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:38:05', '2022-06-11 02:38:05'),
(1998, 1, 'admin/orders/100006', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:38:09', '2022-06-11 02:38:09'),
(1999, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-11 02:38:15', '2022-06-11 02:38:15'),
(2000, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-06-13 07:20:44', '2022-06-13 07:20:44'),
(2001, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-13 07:20:51', '2022-06-13 07:20:51'),
(2002, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-13 07:32:50', '2022-06-13 07:32:50'),
(2003, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-13 07:35:21', '2022-06-13 07:35:21'),
(2004, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-13 07:35:41', '2022-06-13 07:35:41'),
(2005, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-13 07:39:34', '2022-06-13 07:39:34'),
(2006, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-13 07:40:36', '2022-06-13 07:40:36'),
(2007, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-13 07:40:53', '2022-06-13 07:40:53'),
(2008, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-13 07:41:38', '2022-06-13 07:41:38'),
(2009, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-13 07:41:51', '2022-06-13 07:41:51'),
(2010, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-13 07:46:22', '2022-06-13 07:46:22'),
(2011, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-13 07:52:41', '2022-06-13 07:52:41'),
(2012, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-13 07:54:17', '2022-06-13 07:54:17'),
(2013, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-13 07:54:48', '2022-06-13 07:54:48'),
(2014, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-13 07:55:16', '2022-06-13 07:55:16'),
(2015, 1, 'admin', 'GET', '::1', '[]', '2022-06-13 08:11:00', '2022-06-13 08:11:00'),
(2016, 1, 'admin/auth/logout', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-13 08:11:04', '2022-06-13 08:11:04'),
(2017, 1, 'admin', 'GET', '::1', '[]', '2022-06-13 08:15:45', '2022-06-13 08:15:45'),
(2018, 1, 'admin/orders', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-13 08:15:54', '2022-06-13 08:15:54'),
(2019, 1, 'admin/orders', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-13 08:19:51', '2022-06-13 08:19:51'),
(2020, 1, 'admin/orders', 'GET', '::1', '[]', '2022-06-13 08:20:59', '2022-06-13 08:20:59'),
(2021, 1, 'admin', 'GET', '::1', '[]', '2022-06-13 08:39:40', '2022-06-13 08:39:40'),
(2022, 1, 'admin/auth/logout', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-13 08:39:48', '2022-06-13 08:39:48'),
(2023, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-06-13 17:51:05', '2022-06-13 17:51:05'),
(2024, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-13 17:51:12', '2022-06-13 17:51:12'),
(2025, 1, 'admin/orders/100011', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-13 17:51:18', '2022-06-13 17:51:18'),
(2026, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-13 17:51:28', '2022-06-13 17:51:28'),
(2027, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-06-14 22:09:49', '2022-06-14 22:09:49'),
(2028, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-14 22:09:55', '2022-06-14 22:09:55'),
(2029, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"10\"}', '2022-06-14 22:10:31', '2022-06-14 22:10:31'),
(2030, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-14 22:10:55', '2022-06-14 22:10:55'),
(2031, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2022-06-14 22:10:56', '2022-06-14 22:10:56'),
(2032, 1, 'admin/users', 'GET', '127.0.0.1', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2022-06-14 22:10:59', '2022-06-14 22:10:59'),
(2033, 1, 'admin/users', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2022-06-14 22:13:29', '2022-06-14 22:13:29'),
(2034, 1, 'admin/users', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2022-06-14 22:15:24', '2022-06-14 22:15:24'),
(2035, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-14 22:15:32', '2022-06-14 22:15:32'),
(2036, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:15:46', '2022-06-14 22:15:46'),
(2037, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:16:14', '2022-06-14 22:16:14'),
(2038, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:18:16', '2022-06-14 22:18:16'),
(2039, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:18:53', '2022-06-14 22:18:53'),
(2040, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:19:04', '2022-06-14 22:19:04'),
(2041, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:19:15', '2022-06-14 22:19:15'),
(2042, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:19:25', '2022-06-14 22:19:25'),
(2043, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:19:36', '2022-06-14 22:19:36'),
(2044, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:19:47', '2022-06-14 22:19:47'),
(2045, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:19:58', '2022-06-14 22:19:58'),
(2046, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:20:09', '2022-06-14 22:20:09'),
(2047, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:20:20', '2022-06-14 22:20:20'),
(2048, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:20:53', '2022-06-14 22:20:53'),
(2049, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:21:09', '2022-06-14 22:21:09'),
(2050, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:21:25', '2022-06-14 22:21:25'),
(2051, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:21:42', '2022-06-14 22:21:42'),
(2052, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:21:58', '2022-06-14 22:21:58'),
(2053, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:22:00', '2022-06-14 22:22:00'),
(2054, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:22:16', '2022-06-14 22:22:16'),
(2055, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:22:32', '2022-06-14 22:22:32'),
(2056, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:22:49', '2022-06-14 22:22:49'),
(2057, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:23:06', '2022-06-14 22:23:06'),
(2058, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:23:22', '2022-06-14 22:23:22'),
(2059, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:23:39', '2022-06-14 22:23:39'),
(2060, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:23:55', '2022-06-14 22:23:55'),
(2061, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:24:12', '2022-06-14 22:24:12'),
(2062, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:24:28', '2022-06-14 22:24:28'),
(2063, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:24:44', '2022-06-14 22:24:44'),
(2064, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:25:01', '2022-06-14 22:25:01'),
(2065, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:25:17', '2022-06-14 22:25:17'),
(2066, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:25:34', '2022-06-14 22:25:34'),
(2067, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:25:50', '2022-06-14 22:25:50'),
(2068, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:26:07', '2022-06-14 22:26:07'),
(2069, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:26:23', '2022-06-14 22:26:23'),
(2070, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:26:40', '2022-06-14 22:26:40'),
(2071, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:26:56', '2022-06-14 22:26:56'),
(2072, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:27:12', '2022-06-14 22:27:12'),
(2073, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:27:29', '2022-06-14 22:27:29'),
(2074, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:27:45', '2022-06-14 22:27:45'),
(2075, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:28:02', '2022-06-14 22:28:02'),
(2076, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:28:19', '2022-06-14 22:28:19'),
(2077, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:28:35', '2022-06-14 22:28:35'),
(2078, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:28:51', '2022-06-14 22:28:51'),
(2079, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:29:08', '2022-06-14 22:29:08'),
(2080, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:29:24', '2022-06-14 22:29:24'),
(2081, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:29:42', '2022-06-14 22:29:42'),
(2082, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:29:58', '2022-06-14 22:29:58'),
(2083, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:30:14', '2022-06-14 22:30:14'),
(2084, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:30:31', '2022-06-14 22:30:31'),
(2085, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:30:33', '2022-06-14 22:30:33'),
(2086, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:30:49', '2022-06-14 22:30:49'),
(2087, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:31:06', '2022-06-14 22:31:06'),
(2088, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:31:08', '2022-06-14 22:31:08'),
(2089, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:31:24', '2022-06-14 22:31:24'),
(2090, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:31:40', '2022-06-14 22:31:40'),
(2091, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:31:57', '2022-06-14 22:31:57'),
(2092, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:32:35', '2022-06-14 22:32:35'),
(2093, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:35:26', '2022-06-14 22:35:26'),
(2094, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:35:42', '2022-06-14 22:35:42'),
(2095, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:35:48', '2022-06-14 22:35:48'),
(2096, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:36:04', '2022-06-14 22:36:04'),
(2097, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:36:16', '2022-06-14 22:36:16'),
(2098, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:37:45', '2022-06-14 22:37:45'),
(2099, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 22:39:20', '2022-06-14 22:39:20'),
(2100, 1, 'admin/foods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-14 22:39:50', '2022-06-14 22:39:50'),
(2101, 1, 'admin/food-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-14 22:39:55', '2022-06-14 22:39:55'),
(2102, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-14 22:39:57', '2022-06-14 22:39:57'),
(2103, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2022-06-14 22:40:00', '2022-06-14 22:40:00'),
(2104, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2022-06-14 22:40:03', '2022-06-14 22:40:03'),
(2105, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-14 22:40:10', '2022-06-14 22:40:10'),
(2106, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-06-14 23:10:41', '2022-06-14 23:10:41'),
(2107, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-14 23:53:04', '2022-06-14 23:53:04'),
(2108, 1, 'admin/business-settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-14 23:53:06', '2022-06-14 23:53:06'),
(2109, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-14 23:53:07', '2022-06-14 23:53:07'),
(2110, 1, 'admin/foods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-14 23:53:09', '2022-06-14 23:53:09'),
(2111, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-14 23:53:10', '2022-06-14 23:53:10'),
(2112, 1, 'admin/food-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-14 23:53:11', '2022-06-14 23:53:11'),
(2113, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-14 23:53:13', '2022-06-14 23:53:13'),
(2114, 1, 'admin/foods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-14 23:53:13', '2022-06-14 23:53:13'),
(2115, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-14 23:53:14', '2022-06-14 23:53:14'),
(2116, 1, 'admin/food-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 00:04:24', '2022-06-15 00:04:24'),
(2117, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 00:04:29', '2022-06-15 00:04:29'),
(2118, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Zone\",\"icon\":\"fa-bars\",\"uri\":\"\\/zones\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"qhT8x5q5JQqdIMOiyZwICe0uGlAV1hfaGxbREmcs\"}', '2022-06-15 00:04:48', '2022-06-15 00:04:48'),
(2119, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-06-15 00:04:49', '2022-06-15 00:04:49'),
(2120, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 00:04:51', '2022-06-15 00:04:51'),
(2121, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 00:04:52', '2022-06-15 00:04:52'),
(2122, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 00:04:55', '2022-06-15 00:04:55'),
(2123, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"admin.zones\",\"name\":\"Zone\",\"http_method\":[null],\"http_path\":\"\\/zones*\",\"_token\":\"qhT8x5q5JQqdIMOiyZwICe0uGlAV1hfaGxbREmcs\",\"_previous_\":\"http:\\/\\/localhost:8088\\/admin\\/auth\\/permissions\"}', '2022-06-15 00:05:18', '2022-06-15 00:05:18'),
(2124, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2022-06-15 00:05:18', '2022-06-15 00:05:18'),
(2125, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2022-06-15 00:05:28', '2022-06-15 00:05:28'),
(2126, 1, 'admin/zones', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 00:05:33', '2022-06-15 00:05:33'),
(2127, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 00:06:18', '2022-06-15 00:06:18'),
(2128, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 00:07:52', '2022-06-15 00:07:52'),
(2129, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 00:08:11', '2022-06-15 00:08:11'),
(2130, 1, 'admin/zones/2', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"qhT8x5q5JQqdIMOiyZwICe0uGlAV1hfaGxbREmcs\",\"_method\":\"PUT\"}', '2022-06-15 00:08:18', '2022-06-15 00:08:18'),
(2131, 1, 'admin/zones/2', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"qhT8x5q5JQqdIMOiyZwICe0uGlAV1hfaGxbREmcs\",\"_method\":\"PUT\"}', '2022-06-15 00:08:19', '2022-06-15 00:08:19'),
(2132, 1, 'admin/zones/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 00:08:25', '2022-06-15 00:08:25'),
(2133, 1, 'admin/zones', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 00:08:32', '2022-06-15 00:08:32'),
(2134, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 00:15:29', '2022-06-15 00:15:29'),
(2135, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 00:15:33', '2022-06-15 00:15:33'),
(2136, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 00:16:14', '2022-06-15 00:16:14'),
(2137, 1, 'admin/zones', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 00:16:22', '2022-06-15 00:16:22'),
(2138, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 00:16:25', '2022-06-15 00:16:25'),
(2139, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 00:17:05', '2022-06-15 00:17:05'),
(2140, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 00:17:22', '2022-06-15 00:17:22'),
(2141, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 00:17:52', '2022-06-15 00:17:52'),
(2142, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 00:18:12', '2022-06-15 00:18:12'),
(2143, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 00:18:44', '2022-06-15 00:18:44'),
(2144, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 00:29:28', '2022-06-15 00:29:28'),
(2145, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 00:30:29', '2022-06-15 00:30:29'),
(2146, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 00:31:24', '2022-06-15 00:31:24'),
(2147, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 00:33:25', '2022-06-15 00:33:25'),
(2148, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 00:34:18', '2022-06-15 00:34:18'),
(2149, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 00:34:27', '2022-06-15 00:34:27'),
(2150, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 00:38:03', '2022-06-15 00:38:03'),
(2151, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 00:39:20', '2022-06-15 00:39:20'),
(2152, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 00:40:34', '2022-06-15 00:40:34'),
(2153, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 00:41:08', '2022-06-15 00:41:08'),
(2154, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 00:48:02', '2022-06-15 00:48:02'),
(2155, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 00:49:03', '2022-06-15 00:49:03'),
(2156, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 00:49:52', '2022-06-15 00:49:52'),
(2157, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 00:50:46', '2022-06-15 00:50:46'),
(2158, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 00:51:36', '2022-06-15 00:51:36'),
(2159, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 00:52:03', '2022-06-15 00:52:03'),
(2160, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 00:54:13', '2022-06-15 00:54:13'),
(2161, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 00:54:23', '2022-06-15 00:54:23'),
(2162, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 01:21:06', '2022-06-15 01:21:06'),
(2163, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 01:23:17', '2022-06-15 01:23:17'),
(2164, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 01:23:30', '2022-06-15 01:23:30'),
(2165, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 01:31:29', '2022-06-15 01:31:29'),
(2166, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 01:32:16', '2022-06-15 01:32:16'),
(2167, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 01:34:50', '2022-06-15 01:34:50'),
(2168, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 01:38:56', '2022-06-15 01:38:56'),
(2169, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 01:46:26', '2022-06-15 01:46:26'),
(2170, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 01:48:53', '2022-06-15 01:48:53'),
(2171, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 01:58:08', '2022-06-15 01:58:08'),
(2172, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 01:59:05', '2022-06-15 01:59:05'),
(2173, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 01:59:51', '2022-06-15 01:59:51'),
(2174, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 02:01:39', '2022-06-15 02:01:39'),
(2175, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 02:12:25', '2022-06-15 02:12:25'),
(2176, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 02:14:55', '2022-06-15 02:14:55'),
(2177, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 02:15:28', '2022-06-15 02:15:28'),
(2178, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 02:18:07', '2022-06-15 02:18:07'),
(2179, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 02:19:31', '2022-06-15 02:19:31'),
(2180, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 02:21:25', '2022-06-15 02:21:25'),
(2181, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 02:32:17', '2022-06-15 02:32:17'),
(2182, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 02:33:00', '2022-06-15 02:33:00'),
(2183, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 02:33:56', '2022-06-15 02:33:56'),
(2184, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 02:34:02', '2022-06-15 02:34:02'),
(2185, 1, 'admin/zones/2', 'PUT', '127.0.0.1', '{\"name\":\"american\",\"coordinates\":\"(40.197030347492266, 116.00370936230478),(40.18863814691586, 116.99797205761728),(39.45030572131957, 117.05839686230478),(39.352678534743525, 115.65764002636728),(39.7845922372559, 115.83342127636728)\",\"status\":\"on\",\"restaurant_wise_topic\":\"zone_1_restaurant\",\"customer_wise_topic\":\"zone_1_customer\",\"deliveryman_wise_topic\":\"zone_1_delivery_man\",\"_token\":\"qhT8x5q5JQqdIMOiyZwICe0uGlAV1hfaGxbREmcs\",\"_method\":\"PUT\"}', '2022-06-15 02:34:58', '2022-06-15 02:34:58'),
(2186, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 02:34:59', '2022-06-15 02:34:59'),
(2187, 1, 'admin/zones/2', 'PUT', '127.0.0.1', '{\"name\":\"american\",\"coordinates\":\"(-103.08202531066 43.453630285188,-104.48827531066 39.233012207585,-99.566400310657 43.708301892889,-117.49608781066 47.636443927587,-120.66015031066 38.135327377209,-105.19140031066 30.600937366428,-93.941400310657 29.383028980537,-78.121087810657 37.301054810905,-76.363275310657 41.640810741449,-90.425775310657 46.68026679364,-102.37890031066 47.636443927587,-117.49608781066 47.872801313008,-103.08202531066 43.453630285188)\",\"status\":\"on\",\"restaurant_wise_topic\":\"zone_1_restaurant\",\"customer_wise_topic\":\"zone_1_customer\",\"deliveryman_wise_topic\":\"zone_1_delivery_man\",\"_token\":\"qhT8x5q5JQqdIMOiyZwICe0uGlAV1hfaGxbREmcs\",\"_method\":\"PUT\"}', '2022-06-15 02:50:53', '2022-06-15 02:50:53'),
(2188, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 02:50:53', '2022-06-15 02:50:53'),
(2189, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 02:51:01', '2022-06-15 02:51:01'),
(2190, 1, 'admin/zones/2', 'PUT', '127.0.0.1', '{\"name\":\"american\",\"coordinates\":\"(40.02499306998291, 116.19871668652353),(40.00606134175467, 116.58049158886728),(39.761582576166, 116.47886805371103),(39.7510251066108, 116.23991541699228),(39.87339223601804, 116.20146326855478)\",\"status\":\"on\",\"restaurant_wise_topic\":\"zone_1_restaurant\",\"customer_wise_topic\":\"zone_1_customer\",\"deliveryman_wise_topic\":\"zone_1_delivery_man\",\"_token\":\"qhT8x5q5JQqdIMOiyZwICe0uGlAV1hfaGxbREmcs\",\"_method\":\"PUT\"}', '2022-06-15 03:00:00', '2022-06-15 03:00:00'),
(2191, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 03:00:01', '2022-06-15 03:00:01'),
(2192, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 03:00:07', '2022-06-15 03:00:07'),
(2193, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:02:44', '2022-06-15 03:02:44'),
(2194, 1, 'admin/zones', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 03:03:08', '2022-06-15 03:03:08'),
(2195, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 03:03:15', '2022-06-15 03:03:15'),
(2196, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 03:03:35', '2022-06-15 03:03:35'),
(2197, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:03:39', '2022-06-15 03:03:39'),
(2198, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:09:19', '2022-06-15 03:09:19'),
(2199, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:09:40', '2022-06-15 03:09:40'),
(2200, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 03:09:45', '2022-06-15 03:09:45'),
(2201, 1, 'admin/zones', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 03:09:47', '2022-06-15 03:09:47'),
(2202, 1, 'admin/zones/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 03:09:52', '2022-06-15 03:09:52'),
(2203, 1, 'admin/zones', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 03:10:06', '2022-06-15 03:10:06'),
(2204, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 03:10:17', '2022-06-15 03:10:17'),
(2205, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:10:23', '2022-06-15 03:10:23'),
(2206, 1, 'admin/zones', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 03:12:05', '2022-06-15 03:12:05'),
(2207, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 03:12:11', '2022-06-15 03:12:11'),
(2208, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:12:11', '2022-06-15 03:12:11'),
(2209, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:12:12', '2022-06-15 03:12:12'),
(2210, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:12:13', '2022-06-15 03:12:13'),
(2211, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:12:14', '2022-06-15 03:12:14'),
(2212, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:12:15', '2022-06-15 03:12:15'),
(2213, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:12:16', '2022-06-15 03:12:16'),
(2214, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:12:17', '2022-06-15 03:12:17'),
(2215, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:12:17', '2022-06-15 03:12:17'),
(2216, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:12:18', '2022-06-15 03:12:18'),
(2217, 1, 'admin/zones', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 03:12:54', '2022-06-15 03:12:54'),
(2218, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 03:12:57', '2022-06-15 03:12:57'),
(2219, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:12:58', '2022-06-15 03:12:58'),
(2220, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:12:58', '2022-06-15 03:12:58'),
(2221, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:12:59', '2022-06-15 03:12:59'),
(2222, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:00', '2022-06-15 03:13:00'),
(2223, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:00', '2022-06-15 03:13:00'),
(2224, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:01', '2022-06-15 03:13:01'),
(2225, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:02', '2022-06-15 03:13:02'),
(2226, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:03', '2022-06-15 03:13:03'),
(2227, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:04', '2022-06-15 03:13:04'),
(2228, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:04', '2022-06-15 03:13:04'),
(2229, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:05', '2022-06-15 03:13:05'),
(2230, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:06', '2022-06-15 03:13:06'),
(2231, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:07', '2022-06-15 03:13:07'),
(2232, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:07', '2022-06-15 03:13:07'),
(2233, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:08', '2022-06-15 03:13:08'),
(2234, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:09', '2022-06-15 03:13:09'),
(2235, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:10', '2022-06-15 03:13:10'),
(2236, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:11', '2022-06-15 03:13:11'),
(2237, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:12', '2022-06-15 03:13:12'),
(2238, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:13', '2022-06-15 03:13:13'),
(2239, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:14', '2022-06-15 03:13:14'),
(2240, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:15', '2022-06-15 03:13:15'),
(2241, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:17', '2022-06-15 03:13:17'),
(2242, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:18', '2022-06-15 03:13:18'),
(2243, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:19', '2022-06-15 03:13:19'),
(2244, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:20', '2022-06-15 03:13:20'),
(2245, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:20', '2022-06-15 03:13:20'),
(2246, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:21', '2022-06-15 03:13:21'),
(2247, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:22', '2022-06-15 03:13:22'),
(2248, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:23', '2022-06-15 03:13:23'),
(2249, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:23', '2022-06-15 03:13:23'),
(2250, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:24', '2022-06-15 03:13:24'),
(2251, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:25', '2022-06-15 03:13:25'),
(2252, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:26', '2022-06-15 03:13:26'),
(2253, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:27', '2022-06-15 03:13:27'),
(2254, 1, 'admin/zones', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 03:13:29', '2022-06-15 03:13:29'),
(2255, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 03:13:33', '2022-06-15 03:13:33'),
(2256, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:34', '2022-06-15 03:13:34'),
(2257, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:35', '2022-06-15 03:13:35'),
(2258, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:35', '2022-06-15 03:13:35'),
(2259, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:36', '2022-06-15 03:13:36'),
(2260, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:37', '2022-06-15 03:13:37'),
(2261, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:37', '2022-06-15 03:13:37'),
(2262, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:38', '2022-06-15 03:13:38'),
(2263, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:39', '2022-06-15 03:13:39'),
(2264, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:40', '2022-06-15 03:13:40'),
(2265, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:41', '2022-06-15 03:13:41'),
(2266, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:42', '2022-06-15 03:13:42'),
(2267, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:43', '2022-06-15 03:13:43'),
(2268, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:44', '2022-06-15 03:13:44'),
(2269, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:45', '2022-06-15 03:13:45'),
(2270, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:46', '2022-06-15 03:13:46'),
(2271, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:47', '2022-06-15 03:13:47'),
(2272, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:13:50', '2022-06-15 03:13:50'),
(2273, 1, 'admin/zones', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 03:13:54', '2022-06-15 03:13:54'),
(2274, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 03:13:58', '2022-06-15 03:13:58'),
(2275, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:14:05', '2022-06-15 03:14:05'),
(2276, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:20:59', '2022-06-15 03:20:59'),
(2277, 1, 'admin/zones', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 03:21:03', '2022-06-15 03:21:03'),
(2278, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 03:21:08', '2022-06-15 03:21:08'),
(2279, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 03:21:18', '2022-06-15 03:21:18'),
(2280, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 03:21:44', '2022-06-15 03:21:44'),
(2281, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:21:54', '2022-06-15 03:21:54'),
(2282, 1, 'admin/zones', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 03:22:04', '2022-06-15 03:22:04'),
(2283, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 03:22:08', '2022-06-15 03:22:08'),
(2284, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 03:31:37', '2022-06-15 03:31:37'),
(2285, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 03:32:31', '2022-06-15 03:32:31'),
(2286, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 03:32:34', '2022-06-15 03:32:34'),
(2287, 1, 'admin/zones', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 04:07:43', '2022-06-15 04:07:43'),
(2288, 1, 'admin/zones/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 04:07:45', '2022-06-15 04:07:45'),
(2289, 1, 'admin/zones', 'POST', '127.0.0.1', '{\"name\":\"test\",\"coordinates\":\"(40.031661190968784, 116.28263507016493),(39.922216085968174, 116.73856768735243),(39.829471827367115, 116.56278643735243),(39.951699317516464, 116.15354571469618),(40.050585816670825, 116.29087481625868)\",\"status\":\"on\",\"restaurant_wise_topic\":\"ww\",\"customer_wise_topic\":\"ww\",\"deliveryman_wise_topic\":\"ww\",\"_token\":\"qhT8x5q5JQqdIMOiyZwICe0uGlAV1hfaGxbREmcs\",\"_previous_\":\"http:\\/\\/localhost:8088\\/admin\\/zones\"}', '2022-06-15 04:08:14', '2022-06-15 04:08:14'),
(2290, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 04:08:14', '2022-06-15 04:08:14'),
(2291, 1, 'admin/zones/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 04:08:22', '2022-06-15 04:08:22'),
(2292, 1, 'admin/zones/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 04:08:29', '2022-06-15 04:08:29'),
(2293, 1, 'admin/zones', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 04:10:13', '2022-06-15 04:10:13'),
(2294, 1, 'admin/zones/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 04:10:16', '2022-06-15 04:10:16'),
(2295, 1, 'admin/zones', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 04:10:37', '2022-06-15 04:10:37'),
(2296, 1, 'admin/zones/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 04:10:43', '2022-06-15 04:10:43'),
(2297, 1, 'admin/zones/3', 'GET', '127.0.0.1', '[]', '2022-06-15 04:12:28', '2022-06-15 04:12:28'),
(2298, 1, 'admin/zones', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 04:12:31', '2022-06-15 04:12:31'),
(2299, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 04:17:03', '2022-06-15 04:17:03'),
(2300, 1, 'admin/zones/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 04:17:08', '2022-06-15 04:17:08'),
(2301, 1, 'admin/zones/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 04:17:13', '2022-06-15 04:17:13'),
(2302, 1, 'admin/zones/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 04:17:48', '2022-06-15 04:17:48'),
(2303, 1, 'admin/zones/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 04:20:35', '2022-06-15 04:20:35'),
(2304, 1, 'admin/zones/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 04:42:07', '2022-06-15 04:42:07'),
(2305, 1, 'admin/zones', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 04:42:11', '2022-06-15 04:42:11'),
(2306, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 04:42:20', '2022-06-15 04:42:20'),
(2307, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 04:42:54', '2022-06-15 04:42:54'),
(2308, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 04:43:02', '2022-06-15 04:43:02'),
(2309, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 04:43:13', '2022-06-15 04:43:13'),
(2310, 1, 'admin/zones/2', 'PUT', '127.0.0.1', '{\"name\":\"american\",\"coordinates\":\"(39.9431921857557, 116.35738138984104),(39.94740356274032, 116.46449808905979),(39.86259972057686, 116.46106486152073),(39.85311202254963, 116.34776835273166)\",\"status\":\"on\",\"restaurant_wise_topic\":\"zone_1_restaurant\",\"customer_wise_topic\":\"zone_1_customer\",\"deliveryman_wise_topic\":\"zone_1_delivery_man\",\"_token\":\"qhT8x5q5JQqdIMOiyZwICe0uGlAV1hfaGxbREmcs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8088\\/admin\\/zones\"}', '2022-06-15 04:43:41', '2022-06-15 04:43:41'),
(2311, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 04:43:41', '2022-06-15 04:43:41'),
(2312, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 04:43:47', '2022-06-15 04:43:47'),
(2313, 1, 'admin/zones', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 04:44:47', '2022-06-15 04:44:47'),
(2314, 1, 'admin/zones/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 04:44:48', '2022-06-15 04:44:48'),
(2315, 1, 'admin/zones', 'POST', '127.0.0.1', '{\"name\":\"qqq\",\"coordinates\":\"(39.2636992995039, 117.0410913369855),(39.11681607478587, 117.47230471589175),(38.95254066460814, 117.2937768838605),(39.10829169268885, 116.925734891673)\",\"status\":\"off\",\"restaurant_wise_topic\":\"aa\",\"customer_wise_topic\":\"aa\",\"deliveryman_wise_topic\":\"aa\",\"_token\":\"qhT8x5q5JQqdIMOiyZwICe0uGlAV1hfaGxbREmcs\",\"_previous_\":\"http:\\/\\/localhost:8088\\/admin\\/zones\"}', '2022-06-15 04:45:18', '2022-06-15 04:45:18'),
(2316, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 04:45:19', '2022-06-15 04:45:19'),
(2317, 1, 'admin/zones/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 04:45:24', '2022-06-15 04:45:24'),
(2318, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 04:48:48', '2022-06-15 04:48:48'),
(2319, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 04:49:46', '2022-06-15 04:49:46'),
(2320, 1, 'admin/orders/100008/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 04:49:59', '2022-06-15 04:49:59'),
(2321, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 04:50:01', '2022-06-15 04:50:01'),
(2322, 1, 'admin/orders/100007', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 04:50:05', '2022-06-15 04:50:05'),
(2323, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 04:51:04', '2022-06-15 04:51:04'),
(2324, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2022-06-15 04:51:09', '2022-06-15 04:51:09'),
(2325, 1, 'admin/orders/100007', 'GET', '127.0.0.1', '[]', '2022-06-15 04:51:25', '2022-06-15 04:51:25'),
(2326, 1, 'admin/orders/100007', 'GET', '127.0.0.1', '[]', '2022-06-15 04:51:43', '2022-06-15 04:51:43'),
(2327, 1, 'admin/orders/100007', 'GET', '127.0.0.1', '[]', '2022-06-15 04:52:02', '2022-06-15 04:52:02'),
(2328, 1, 'admin/orders/100007', 'GET', '127.0.0.1', '[]', '2022-06-15 04:52:24', '2022-06-15 04:52:24'),
(2329, 1, 'admin/orders/100007', 'GET', '127.0.0.1', '[]', '2022-06-15 04:52:43', '2022-06-15 04:52:43'),
(2330, 1, 'admin/orders/100007', 'GET', '127.0.0.1', '[]', '2022-06-15 04:53:02', '2022-06-15 04:53:02'),
(2331, 1, 'admin/orders/100007', 'GET', '127.0.0.1', '[]', '2022-06-15 04:53:18', '2022-06-15 04:53:18'),
(2332, 1, 'admin/orders/100007', 'GET', '127.0.0.1', '[]', '2022-06-15 04:53:35', '2022-06-15 04:53:35'),
(2333, 1, 'admin/orders/100007', 'GET', '127.0.0.1', '[]', '2022-06-15 04:53:55', '2022-06-15 04:53:55');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(2334, 1, 'admin/orders/100007', 'GET', '127.0.0.1', '[]', '2022-06-15 04:54:14', '2022-06-15 04:54:14'),
(2335, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 04:54:17', '2022-06-15 04:54:17'),
(2336, 1, 'admin/orders/100007', 'GET', '127.0.0.1', '[]', '2022-06-15 04:54:29', '2022-06-15 04:54:29'),
(2337, 1, 'admin/orders/100009', 'GET', '127.0.0.1', '[]', '2022-06-15 04:54:45', '2022-06-15 04:54:45'),
(2338, 1, 'admin/orders/100009', 'GET', '127.0.0.1', '[]', '2022-06-15 04:55:02', '2022-06-15 04:55:02'),
(2339, 1, 'admin/orders/100009', 'GET', '127.0.0.1', '[]', '2022-06-15 04:55:19', '2022-06-15 04:55:19'),
(2340, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 04:55:22', '2022-06-15 04:55:22'),
(2341, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2022-06-15 04:55:35', '2022-06-15 04:55:35'),
(2342, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2022-06-15 04:55:35', '2022-06-15 04:55:35'),
(2343, 1, 'admin/orders/undefined', 'GET', '127.0.0.1', '[]', '2022-06-15 04:55:36', '2022-06-15 04:55:36'),
(2344, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2022-06-15 04:55:37', '2022-06-15 04:55:37'),
(2345, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2022-06-15 04:56:28', '2022-06-15 04:56:28'),
(2346, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 04:57:04', '2022-06-15 04:57:04'),
(2347, 1, 'admin/zones', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 04:57:06', '2022-06-15 04:57:06'),
(2348, 1, 'admin/zones/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 04:57:11', '2022-06-15 04:57:11'),
(2349, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-06-15 06:12:11', '2022-06-15 06:12:11'),
(2350, 1, 'admin/zones', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 06:12:14', '2022-06-15 06:12:14'),
(2351, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 06:14:58', '2022-06-15 06:14:58'),
(2352, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 06:14:58', '2022-06-15 06:14:58'),
(2353, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 06:14:59', '2022-06-15 06:14:59'),
(2354, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 06:14:59', '2022-06-15 06:14:59'),
(2355, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 06:14:59', '2022-06-15 06:14:59'),
(2356, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 06:15:00', '2022-06-15 06:15:00'),
(2357, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 06:15:00', '2022-06-15 06:15:00'),
(2358, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 06:15:00', '2022-06-15 06:15:00'),
(2359, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 06:15:01', '2022-06-15 06:15:01'),
(2360, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 06:15:01', '2022-06-15 06:15:01'),
(2361, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 06:15:01', '2022-06-15 06:15:01'),
(2362, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 06:15:01', '2022-06-15 06:15:01'),
(2363, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 06:15:02', '2022-06-15 06:15:02'),
(2364, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 06:15:02', '2022-06-15 06:15:02'),
(2365, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 06:15:02', '2022-06-15 06:15:02'),
(2366, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 06:15:03', '2022-06-15 06:15:03'),
(2367, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 06:15:03', '2022-06-15 06:15:03'),
(2368, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 06:15:03', '2022-06-15 06:15:03'),
(2369, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 06:15:04', '2022-06-15 06:15:04'),
(2370, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 06:15:04', '2022-06-15 06:15:04'),
(2371, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 06:15:04', '2022-06-15 06:15:04'),
(2372, 1, 'admin/zones/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-15 06:15:05', '2022-06-15 06:15:05'),
(2373, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 06:15:35', '2022-06-15 06:15:35'),
(2374, 1, 'admin/zones/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 06:15:37', '2022-06-15 06:15:37'),
(2375, 1, 'admin/zones', 'POST', '127.0.0.1', '{\"name\":\"american\",\"coordinates\":\"(38.080013433353145, 114.42919729232791),(38.08812038129703, 114.63381765365604),(37.97021103290355, 114.60772512435916),(38.01404354270495, 114.41546438217166)\",\"status\":\"off\",\"restaurant_wise_topic\":\"american\",\"customer_wise_topic\":\"american\",\"deliveryman_wise_topic\":\"american\",\"_token\":\"qhT8x5q5JQqdIMOiyZwICe0uGlAV1hfaGxbREmcs\",\"_previous_\":\"http:\\/\\/localhost:8088\\/admin\\/zones\"}', '2022-06-15 06:16:11', '2022-06-15 06:16:11'),
(2376, 1, 'admin/zones/create', 'GET', '127.0.0.1', '[]', '2022-06-15 06:16:11', '2022-06-15 06:16:11'),
(2377, 1, 'admin/zones/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 06:16:58', '2022-06-15 06:16:58'),
(2378, 1, 'admin/zones', 'POST', '127.0.0.1', '{\"name\":\"11\",\"coordinates\":\"(39.793443132452516, 115.76218180493173),(39.76653084501062, 115.78484110668954),(39.76507939321595, 115.74518732861337),(39.789090387751024, 115.75171046093759)\",\"status\":\"off\",\"restaurant_wise_topic\":\"11\",\"customer_wise_topic\":\"11\",\"deliveryman_wise_topic\":\"11\",\"_token\":\"qhT8x5q5JQqdIMOiyZwICe0uGlAV1hfaGxbREmcs\"}', '2022-06-15 06:18:12', '2022-06-15 06:18:12'),
(2379, 1, 'admin/zones/create', 'GET', '127.0.0.1', '[]', '2022-06-15 06:18:12', '2022-06-15 06:18:12'),
(2380, 1, 'admin/zones/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 06:18:41', '2022-06-15 06:18:41'),
(2381, 1, 'admin/zones', 'POST', '127.0.0.1', '{\"name\":\"11\",\"coordinates\":\"(39.78974991222796, 115.75359873608407),(39.78737559452047, 115.79514078930673),(39.76824615768315, 115.7934241755372),(39.772336346208284, 115.7494788630372)\",\"status\":\"off\",\"restaurant_wise_topic\":\"qq\",\"customer_wise_topic\":\"qq\",\"deliveryman_wise_topic\":\"qq\",\"_token\":\"qhT8x5q5JQqdIMOiyZwICe0uGlAV1hfaGxbREmcs\"}', '2022-06-15 06:18:55', '2022-06-15 06:18:55'),
(2382, 1, 'admin/zones', 'GET', '127.0.0.1', '[]', '2022-06-15 06:18:55', '2022-06-15 06:18:55'),
(2383, 1, 'admin/zones/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 06:19:01', '2022-06-15 06:19:01'),
(2384, 1, 'admin', 'GET', '47.57.11.202', '[]', '2022-06-15 22:56:46', '2022-06-15 22:56:46'),
(2385, 1, 'admin/orders', 'GET', '47.57.11.202', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 22:56:50', '2022-06-15 22:56:50'),
(2386, 1, 'admin/orders/100011/edit', 'GET', '47.57.11.202', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 22:57:04', '2022-06-15 22:57:04'),
(2387, 1, 'admin/orders', 'GET', '47.57.11.202', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 22:57:08', '2022-06-15 22:57:08'),
(2388, 1, 'admin/orders/100011', 'GET', '47.57.11.202', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 22:57:11', '2022-06-15 22:57:11'),
(2389, 1, 'admin/orders', 'GET', '47.57.11.202', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 22:57:18', '2022-06-15 22:57:18'),
(2390, 1, 'admin/zones', 'GET', '47.57.11.202', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 22:57:28', '2022-06-15 22:57:28'),
(2391, 1, 'admin/zones/create', 'GET', '47.57.11.202', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 22:57:30', '2022-06-15 22:57:30'),
(2392, 1, 'admin/zones', 'POST', '47.57.11.202', '{\"name\":\"test\",\"coordinates\":\"(39.79014562387917, 115.75565867260751),(39.78552884631865, 115.78896097973642),(39.7653432958181, 115.78054957226571),(39.76666279365653, 115.75325541333017),(39.78104368003027, 115.75359873608407)\",\"status\":\"on\",\"restaurant_wise_topic\":\"test\",\"customer_wise_topic\":\"test\",\"deliveryman_wise_topic\":\"test\",\"_token\":\"DozuO5ru337QeH55yGIujTNzRRblgA4NSn2dN3wi\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/zones\"}', '2022-06-15 22:58:01', '2022-06-15 22:58:01'),
(2393, 1, 'admin/zones', 'GET', '47.57.11.202', '[]', '2022-06-15 22:58:01', '2022-06-15 22:58:01'),
(2394, 1, 'admin/zones/6/edit', 'GET', '47.57.11.202', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 22:58:08', '2022-06-15 22:58:08'),
(2395, 1, 'admin/zones', 'GET', '47.57.11.202', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 22:58:15', '2022-06-15 22:58:15'),
(2396, 1, 'admin/users', 'GET', '47.57.11.202', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 22:58:27', '2022-06-15 22:58:27'),
(2397, 1, 'admin/food-types', 'GET', '47.57.11.202', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 22:58:28', '2022-06-15 22:58:28'),
(2398, 1, 'admin/auth/logout', 'GET', '47.57.11.202', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 23:16:10', '2022-06-15 23:16:10'),
(2399, 1, 'admin', 'GET', '47.57.11.202', '[]', '2022-06-15 23:18:06', '2022-06-15 23:18:06'),
(2400, 1, 'admin/food-types', 'GET', '47.57.11.202', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 23:18:13', '2022-06-15 23:18:13'),
(2401, 1, 'admin/business-settings', 'GET', '47.57.11.202', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 23:18:15', '2022-06-15 23:18:15'),
(2402, 1, 'admin/zones', 'GET', '47.57.11.202', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 23:18:17', '2022-06-15 23:18:17'),
(2403, 1, 'admin/zones/6/edit', 'GET', '47.57.11.202', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 23:18:20', '2022-06-15 23:18:20'),
(2404, 1, 'admin/orders', 'GET', '47.57.11.202', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 23:18:28', '2022-06-15 23:18:28'),
(2405, 1, 'admin/users', 'GET', '47.57.11.202', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 23:18:46', '2022-06-15 23:18:46'),
(2406, 1, 'admin', 'GET', '217.168.16.63', '[]', '2022-06-15 23:23:43', '2022-06-15 23:23:43'),
(2407, 1, 'admin/business-settings', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 23:24:07', '2022-06-15 23:24:07'),
(2408, 1, 'admin/zones', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 23:24:10', '2022-06-15 23:24:10'),
(2409, 1, 'admin/foods', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 23:24:17', '2022-06-15 23:24:17'),
(2410, 1, 'admin/zones', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 23:33:31', '2022-06-15 23:33:31'),
(2411, 1, 'admin/business-settings', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-15 23:33:35', '2022-06-15 23:33:35'),
(2412, 1, 'admin/zones', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-16 01:55:31', '2022-06-16 01:55:31'),
(2413, 1, 'admin/zones', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-16 02:06:53', '2022-06-16 02:06:53'),
(2414, 1, 'admin/orders', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-16 02:06:55', '2022-06-16 02:06:55'),
(2415, 1, 'admin/orders', 'GET', '185.251.116.122', '[]', '2022-06-16 02:08:43', '2022-06-16 02:08:43'),
(2416, 1, 'admin/orders', 'GET', '185.251.116.122', '[]', '2022-06-16 02:08:46', '2022-06-16 02:08:46'),
(2417, 1, 'admin/orders/100005/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-16 02:08:57', '2022-06-16 02:08:57'),
(2418, 1, 'admin/orders/100005', 'PUT', '185.251.116.122', '{\"order_amount\":\"24\",\"payment_status\":\"paid\",\"status_id\":\"4\",\"confirmed\":\"2022-06-16 10:08:34\",\"accepted\":\"2022-06-16 10:08:58\",\"scheduled\":\"off\",\"processing\":\"2022-06-16 10:08:58\",\"handover\":\"2022-06-16 10:08:58\",\"failed\":\"2022-06-16 10:06:38\",\"scheduled_at\":\"2022-06-16 10:06:21\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":null,\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"otp\":\"3589\",\"pending\":\"2022-06-16 10:06:21\",\"picked_up\":\"2022-06-16 10:08:58\",\"delivered\":\"2022-06-16 10:08:58\",\"canceled\":\"2022-06-16 10:08:58\",\"_token\":\"xWTug17i3Lt7KXgWlbEd9c5yqDilVeNUKegptqSH\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/orders\"}', '2022-06-16 02:09:08', '2022-06-16 02:09:08'),
(2419, 1, 'admin/orders/100005/edit', 'GET', '185.251.116.122', '[]', '2022-06-16 02:09:09', '2022-06-16 02:09:09'),
(2420, 1, 'admin/orders/100005', 'PUT', '185.251.116.122', '{\"order_amount\":\"24\",\"payment_status\":\"paid\",\"status_id\":\"4\",\"confirmed\":\"2022-06-16 10:08:34\",\"accepted\":\"2022-06-16 10:08:58\",\"scheduled\":\"off\",\"processing\":\"2022-06-16 10:08:58\",\"handover\":\"2022-06-16 10:08:58\",\"failed\":\"2022-06-16 10:06:38\",\"scheduled_at\":\"2022-06-16 10:06:21\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":null,\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"otp\":\"3589\",\"pending\":\"2022-06-16 10:06:21\",\"picked_up\":\"2022-06-16 10:08:58\",\"delivered\":\"2022-06-16 10:08:58\",\"canceled\":\"2022-06-16 10:08:58\",\"_token\":\"xWTug17i3Lt7KXgWlbEd9c5yqDilVeNUKegptqSH\",\"_method\":\"PUT\"}', '2022-06-16 02:11:25', '2022-06-16 02:11:25'),
(2421, 1, 'admin/orders', 'GET', '185.251.116.122', '[]', '2022-06-16 02:11:26', '2022-06-16 02:11:26'),
(2422, 1, 'admin', 'GET', '119.13.87.178', '[]', '2022-06-16 02:18:22', '2022-06-16 02:18:22'),
(2423, 1, 'admin/orders', 'GET', '119.13.87.178', '{\"_pjax\":\"#pjax-container\"}', '2022-06-16 02:18:29', '2022-06-16 02:18:29'),
(2424, 1, 'admin/orders', 'GET', '114.95.225.29', '[]', '2022-06-16 02:20:50', '2022-06-16 02:20:50'),
(2425, 1, 'admin/orders', 'GET', '119.13.87.178', '[]', '2022-06-16 02:20:54', '2022-06-16 02:20:54'),
(2426, 1, 'admin/orders', 'GET', '119.13.87.178', '[]', '2022-06-16 02:23:40', '2022-06-16 02:23:40'),
(2427, 1, 'admin/orders', 'GET', '119.13.87.178', '[]', '2022-06-16 02:25:30', '2022-06-16 02:25:30'),
(2428, 1, 'admin/orders', 'GET', '119.13.87.178', '[]', '2022-06-16 02:26:01', '2022-06-16 02:26:01'),
(2429, 1, 'admin/orders', 'GET', '185.251.116.122', '[]', '2022-06-16 02:26:16', '2022-06-16 02:26:16'),
(2430, 1, 'admin/orders', 'GET', '119.13.87.178', '[]', '2022-06-16 02:27:08', '2022-06-16 02:27:08'),
(2431, 1, 'admin/orders', 'GET', '185.251.116.122', '[]', '2022-06-16 02:27:33', '2022-06-16 02:27:33'),
(2432, 1, 'admin/orders', 'GET', '119.13.87.178', '[]', '2022-06-16 02:28:49', '2022-06-16 02:28:49'),
(2433, 1, 'admin/orders', 'GET', '119.13.87.178', '[]', '2022-06-16 02:29:23', '2022-06-16 02:29:23'),
(2434, 1, 'admin/orders', 'GET', '119.13.87.178', '[]', '2022-06-16 02:29:26', '2022-06-16 02:29:26'),
(2435, 1, 'admin/orders', 'GET', '119.13.87.178', '[]', '2022-06-16 02:29:45', '2022-06-16 02:29:45'),
(2436, 1, 'admin/orders', 'GET', '119.13.87.178', '[]', '2022-06-16 02:30:27', '2022-06-16 02:30:27'),
(2437, 1, 'admin/orders/100011', 'GET', '185.251.116.122', '[]', '2022-06-16 02:32:20', '2022-06-16 02:32:20'),
(2438, 1, 'admin/orders', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-16 02:32:47', '2022-06-16 02:32:47'),
(2439, 1, 'admin/orders', 'GET', '119.13.87.178', '[]', '2022-06-16 02:33:14', '2022-06-16 02:33:14'),
(2440, 1, 'admin/orders/100012', 'GET', '185.251.116.122', '[]', '2022-06-16 02:34:04', '2022-06-16 02:34:04'),
(2441, 1, 'admin/orders', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-16 06:24:52', '2022-06-16 06:24:52'),
(2442, 1, 'admin/orders/100013', 'GET', '185.251.116.122', '[]', '2022-06-16 06:31:27', '2022-06-16 06:31:27'),
(2443, 1, 'admin', 'GET', '185.251.116.122', '[]', '2022-06-17 03:05:07', '2022-06-17 03:05:07'),
(2444, 1, 'admin/orders/100014', 'GET', '185.251.116.122', '[]', '2022-06-17 03:05:46', '2022-06-17 03:05:46'),
(2445, 1, 'admin/orders/100014', 'GET', '185.251.116.122', '[]', '2022-06-17 03:05:59', '2022-06-17 03:05:59'),
(2446, 1, 'admin/orders/100015', 'GET', '185.251.116.122', '[]', '2022-06-17 03:10:32', '2022-06-17 03:10:32'),
(2447, 1, 'admin/orders/100016', 'GET', '185.251.116.122', '[]', '2022-06-17 03:13:10', '2022-06-17 03:13:10'),
(2448, 1, 'admin/orders/100017', 'GET', '185.251.116.122', '[]', '2022-06-17 03:14:37', '2022-06-17 03:14:37'),
(2449, 1, 'admin/orders/100018', 'GET', '185.251.116.122', '[]', '2022-06-17 03:15:44', '2022-06-17 03:15:44'),
(2450, 1, 'admin/orders/100019', 'GET', '185.251.116.122', '[]', '2022-06-17 03:16:10', '2022-06-17 03:16:10'),
(2451, 1, 'admin/orders/100020', 'GET', '185.251.116.122', '[]', '2022-06-17 04:13:14', '2022-06-17 04:13:14'),
(2452, 1, 'admin/orders', 'GET', '185.251.116.122', '[]', '2022-06-17 04:15:54', '2022-06-17 04:15:54'),
(2453, 1, 'admin/orders/100020/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-17 04:16:03', '2022-06-17 04:16:03'),
(2454, 1, 'admin/orders/100020', 'PUT', '185.251.116.122', '{\"order_amount\":\"24\",\"payment_status\":\"paid\",\"status_id\":\"3\",\"confirmed\":\"2022-06-17 12:15:37\",\"accepted\":\"2022-06-17 12:16:03\",\"scheduled\":\"off\",\"processing\":\"2022-06-17 12:16:03\",\"handover\":\"2022-06-17 12:16:03\",\"failed\":\"2022-06-17 12:12:58\",\"scheduled_at\":\"2022-06-17 12:12:42\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":null,\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"otp\":\"3924\",\"pending\":\"2022-06-17 12:12:42\",\"picked_up\":\"2022-06-17 12:16:03\",\"delivered\":\"2022-06-17 12:16:03\",\"canceled\":\"2022-06-17 12:16:03\",\"_token\":\"tPm8YEX4LiPu3mi8vBW1kIDQH1aKWlpscwrTn6zT\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/orders\"}', '2022-06-17 04:16:09', '2022-06-17 04:16:09'),
(2455, 1, 'admin/orders', 'GET', '185.251.116.122', '[]', '2022-06-17 04:16:11', '2022-06-17 04:16:11'),
(2456, 1, 'admin/orders/100021', 'GET', '185.251.116.122', '[]', '2022-06-17 04:16:48', '2022-06-17 04:16:48'),
(2457, 1, 'admin/orders', 'GET', '185.251.116.122', '[]', '2022-06-17 04:18:21', '2022-06-17 04:18:21'),
(2458, 1, 'admin/orders/100021/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-17 04:18:25', '2022-06-17 04:18:25'),
(2459, 1, 'admin/orders/100021', 'PUT', '185.251.116.122', '{\"order_amount\":\"42\",\"payment_status\":\"paid\",\"status_id\":\"4\",\"confirmed\":\"2022-06-17 12:18:19\",\"accepted\":\"2022-06-17 12:18:25\",\"scheduled\":\"off\",\"processing\":\"2022-06-17 12:18:25\",\"handover\":\"2022-06-17 12:18:25\",\"failed\":\"2022-06-17 12:16:50\",\"scheduled_at\":\"2022-06-17 12:16:39\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":null,\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"otp\":\"1914\",\"pending\":\"2022-06-17 12:16:39\",\"picked_up\":\"2022-06-17 12:18:25\",\"delivered\":\"2022-06-17 12:18:25\",\"canceled\":\"2022-06-17 12:18:25\",\"_token\":\"tPm8YEX4LiPu3mi8vBW1kIDQH1aKWlpscwrTn6zT\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/orders\"}', '2022-06-17 04:18:41', '2022-06-17 04:18:41'),
(2460, 1, 'admin/orders', 'GET', '185.251.116.122', '[]', '2022-06-17 04:18:43', '2022-06-17 04:18:43'),
(2461, 1, 'admin/orders/100022', 'GET', '185.251.116.122', '[]', '2022-06-17 05:17:58', '2022-06-17 05:17:58'),
(2462, 1, 'admin/orders/100023', 'GET', '185.251.116.122', '[]', '2022-06-17 05:18:18', '2022-06-17 05:18:18'),
(2463, 1, 'admin/orders/100024', 'GET', '185.251.116.122', '[]', '2022-06-17 05:19:57', '2022-06-17 05:19:57'),
(2464, 1, 'admin/orders/100025', 'GET', '185.251.116.122', '[]', '2022-06-17 05:21:34', '2022-06-17 05:21:34'),
(2465, 1, 'admin/orders/100026', 'GET', '185.251.116.122', '[]', '2022-06-17 05:36:38', '2022-06-17 05:36:38'),
(2466, 1, 'admin/orders/100027', 'GET', '185.251.116.122', '[]', '2022-06-17 05:37:35', '2022-06-17 05:37:35'),
(2467, 1, 'admin/orders/100028', 'GET', '101.85.227.97', '[]', '2022-06-17 06:30:11', '2022-06-17 06:30:11'),
(2468, 1, 'admin/orders/100028', 'GET', '198.255.45.131', '[]', '2022-06-17 09:09:30', '2022-06-17 09:09:30'),
(2469, 1, 'admin/orders/100028', 'GET', '198.255.45.131', '[]', '2022-06-17 09:23:35', '2022-06-17 09:23:35'),
(2470, 1, 'admin/orders/100032', 'GET', '198.255.45.131', '[]', '2022-06-17 09:23:35', '2022-06-17 09:23:35'),
(2471, 1, 'admin/orders/100032', 'GET', '198.255.45.131', '[]', '2022-06-17 09:23:59', '2022-06-17 09:23:59'),
(2472, 1, 'admin/orders/100028', 'GET', '198.255.45.131', '[]', '2022-06-17 09:23:59', '2022-06-17 09:23:59'),
(2473, 1, 'admin/orders', 'GET', '198.255.45.131', '[]', '2022-06-17 09:24:15', '2022-06-17 09:24:15'),
(2474, 1, 'admin/orders/100032/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-17 09:24:19', '2022-06-17 09:24:19'),
(2475, 1, 'admin/orders/100032', 'PUT', '198.255.45.131', '{\"order_amount\":\"24\",\"payment_status\":\"paid\",\"status_id\":\"3\",\"confirmed\":\"2022-06-17 17:24:10\",\"accepted\":\"2022-06-17 17:24:19\",\"scheduled\":\"off\",\"processing\":\"2022-06-17 17:24:19\",\"handover\":\"2022-06-17 17:24:19\",\"failed\":\"2022-06-17 17:23:36\",\"scheduled_at\":\"2022-06-17 17:23:01\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":null,\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ss\\\",\\\"contact_person_number\\\":\\\"444444\\\",\\\"address\\\":\\\"Wells Fargo Building, 309 SW 6th Ave, Portland, OR 97204, USA\\\",\\\"longitude\\\":\\\"-122.67743289470673\\\",\\\"latitude\\\":\\\"45.521563018025006\\\"}\",\"otp\":\"6971\",\"pending\":\"2022-06-17 17:23:01\",\"picked_up\":\"2022-06-17 17:24:19\",\"delivered\":\"2022-06-17 17:24:19\",\"canceled\":\"2022-06-17 17:24:19\",\"_token\":\"1yFdxvCDOk3IHBi7GsTIkxokPvjoL5HYChzk5ZtX\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/orders\"}', '2022-06-17 09:24:26', '2022-06-17 09:24:26'),
(2476, 1, 'admin/orders', 'GET', '198.255.45.131', '[]', '2022-06-17 09:24:30', '2022-06-17 09:24:30'),
(2477, 1, 'admin/orders/100033', 'GET', '198.255.45.131', '[]', '2022-06-17 09:25:06', '2022-06-17 09:25:06'),
(2478, 1, 'admin/orders', 'GET', '198.255.45.131', '[]', '2022-06-17 09:25:33', '2022-06-17 09:25:33'),
(2479, 1, 'admin/orders/100033/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-17 09:25:38', '2022-06-17 09:25:38'),
(2480, 1, 'admin/orders/100033', 'PUT', '198.255.45.131', '{\"order_amount\":\"24\",\"payment_status\":\"paid\",\"status_id\":\"4\",\"confirmed\":\"2022-06-17 17:25:34\",\"accepted\":\"2022-06-17 17:25:38\",\"scheduled\":\"off\",\"processing\":\"2022-06-17 17:25:38\",\"handover\":\"2022-06-17 17:25:38\",\"failed\":\"2022-06-17 17:25:10\",\"scheduled_at\":\"2022-06-17 17:25:00\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":null,\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ss\\\",\\\"contact_person_number\\\":\\\"444444\\\",\\\"address\\\":\\\"Wells Fargo Building, 309 SW 6th Ave, Portland, OR 97204, USA\\\",\\\"longitude\\\":\\\"-122.67743289470673\\\",\\\"latitude\\\":\\\"45.521563018025006\\\"}\",\"otp\":\"4180\",\"pending\":\"2022-06-17 17:25:00\",\"picked_up\":\"2022-06-17 17:25:38\",\"delivered\":\"2022-06-17 17:25:38\",\"canceled\":\"2022-06-17 17:25:38\",\"_token\":\"1yFdxvCDOk3IHBi7GsTIkxokPvjoL5HYChzk5ZtX\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/orders\"}', '2022-06-17 09:25:44', '2022-06-17 09:25:44'),
(2481, 1, 'admin/orders', 'GET', '198.255.45.131', '[]', '2022-06-17 09:25:45', '2022-06-17 09:25:45'),
(2482, 1, 'admin/orders/100034', 'GET', '198.255.45.131', '[]', '2022-06-17 18:17:16', '2022-06-17 18:17:16'),
(2483, 1, 'admin/orders/100035', 'GET', '198.255.45.131', '[]', '2022-06-17 18:25:21', '2022-06-17 18:25:21'),
(2484, 1, 'admin/orders/100036', 'GET', '198.255.45.131', '[]', '2022-06-17 18:26:01', '2022-06-17 18:26:01'),
(2485, 1, 'admin/orders/100037', 'GET', '198.255.45.131', '[]', '2022-06-17 18:26:58', '2022-06-17 18:26:58'),
(2486, 1, 'admin/orders/100038', 'GET', '198.255.45.131', '[]', '2022-06-17 19:13:22', '2022-06-17 19:13:22'),
(2487, 1, 'admin/orders/100039', 'GET', '198.255.45.131', '[]', '2022-06-17 19:32:16', '2022-06-17 19:32:16'),
(2488, 1, 'admin', 'GET', '198.255.45.131', '[]', '2022-06-17 19:36:25', '2022-06-17 19:36:25'),
(2489, 1, 'admin', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-17 19:36:35', '2022-06-17 19:36:35'),
(2490, 1, 'admin/auth/users', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-17 19:36:41', '2022-06-17 19:36:41'),
(2491, 1, 'admin/auth/users/1/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-17 19:36:44', '2022-06-17 19:36:44'),
(2492, 1, 'admin/auth/users/1', 'PUT', '198.255.45.131', '{\"username\":\"admin\",\"name\":\"Administrator\",\"password\":\"iiamatIntel87d\",\"password_confirmation\":\"iiamatIntel87d\",\"roles\":[\"1\",null],\"permissions\":[null],\"_token\":\"toHk2olbuWlGMKQu1Gr6z6Q1OpkjmIb30qGZJOZV\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/auth\\/users\"}', '2022-06-17 19:36:59', '2022-06-17 19:36:59'),
(2493, 1, 'admin/auth/users', 'GET', '198.255.45.131', '[]', '2022-06-17 19:37:00', '2022-06-17 19:37:00'),
(2494, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-18 00:55:16', '2022-06-18 00:55:16'),
(2495, 1, 'admin/orders/100041/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-18 00:55:20', '2022-06-18 00:55:20'),
(2496, 1, 'admin/orders/100041', 'PUT', '198.255.45.131', '{\"order_amount\":\"68\",\"payment_status\":\"paid\",\"status_id\":\"4\",\"confirmed\":\"2022-06-18 08:54:47\",\"accepted\":\"2022-06-18 08:55:20\",\"scheduled\":\"off\",\"processing\":\"2022-06-18 08:55:20\",\"handover\":\"2022-06-18 08:55:20\",\"failed\":\"2022-06-18 08:54:37\",\"scheduled_at\":\"2022-06-18 08:54:27\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":null,\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"otp\":\"7027\",\"pending\":\"2022-06-18 08:54:27\",\"picked_up\":\"2022-06-18 08:55:20\",\"delivered\":\"2022-06-18 08:55:20\",\"canceled\":\"2022-06-18 08:55:20\",\"_token\":\"oGs92yVdFZ4ZwILDepsS7t0HrwgxX99PUujwGH9m\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/orders\"}', '2022-06-18 00:55:26', '2022-06-18 00:55:26'),
(2497, 1, 'admin/orders', 'GET', '198.255.45.131', '[]', '2022-06-18 00:55:27', '2022-06-18 00:55:27'),
(2498, 1, 'admin/orders/100041', 'GET', '198.255.45.131', '[]', '2022-06-18 00:55:31', '2022-06-18 00:55:31'),
(2499, 1, 'admin/orders/100042', 'GET', '198.255.45.131', '[]', '2022-06-18 00:56:28', '2022-06-18 00:56:28'),
(2500, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-18 00:56:46', '2022-06-18 00:56:46'),
(2501, 1, 'admin/orders/100041/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-18 00:57:04', '2022-06-18 00:57:04'),
(2502, 1, 'admin/orders/100041', 'PUT', '198.255.45.131', '{\"order_amount\":\"68\",\"payment_status\":\"paid\",\"status_id\":\"2\",\"confirmed\":\"2022-06-18 08:54:47\",\"accepted\":\"2022-06-18 08:55:20\",\"scheduled\":\"off\",\"processing\":\"2022-06-18 08:55:20\",\"handover\":\"2022-06-18 08:55:20\",\"failed\":\"2022-06-18 08:54:37\",\"scheduled_at\":\"2022-06-18 08:54:27\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"otp\":\"7027\",\"pending\":\"2022-06-18 08:54:27\",\"picked_up\":\"2022-06-18 08:55:20\",\"delivered\":\"2022-06-18 08:55:20\",\"canceled\":\"2022-06-18 08:55:20\",\"_token\":\"oGs92yVdFZ4ZwILDepsS7t0HrwgxX99PUujwGH9m\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/orders\"}', '2022-06-18 00:57:11', '2022-06-18 00:57:11'),
(2503, 1, 'admin/orders', 'GET', '198.255.45.131', '[]', '2022-06-18 00:57:12', '2022-06-18 00:57:12'),
(2504, 1, 'admin/orders/100043', 'GET', '198.255.45.131', '[]', '2022-06-18 00:57:31', '2022-06-18 00:57:31'),
(2505, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-18 01:01:14', '2022-06-18 01:01:14'),
(2506, 1, 'admin/orders/100044', 'GET', '198.255.45.131', '[]', '2022-06-18 02:14:43', '2022-06-18 02:14:43'),
(2507, 1, 'admin/orders/100045', 'GET', '198.255.45.131', '[]', '2022-06-18 04:00:43', '2022-06-18 04:00:43'),
(2508, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-18 04:00:53', '2022-06-18 04:00:53'),
(2509, 1, 'admin/orders/100046', 'GET', '198.255.45.131', '[]', '2022-06-18 04:24:45', '2022-06-18 04:24:45'),
(2510, 1, 'admin/orders/100047', 'GET', '198.255.45.131', '[]', '2022-06-18 04:35:42', '2022-06-18 04:35:42'),
(2511, 1, 'admin/orders', 'GET', '154.21.209.10', '{\"_pjax\":\"#pjax-container\"}', '2022-06-18 17:19:21', '2022-06-18 17:19:21'),
(2512, 1, 'admin/orders/100050', 'GET', '154.21.209.10', '[]', '2022-06-18 17:19:36', '2022-06-18 17:19:36'),
(2513, 1, 'admin/users', 'GET', '154.21.209.10', '{\"_pjax\":\"#pjax-container\"}', '2022-06-18 17:19:41', '2022-06-18 17:19:41'),
(2514, 1, 'admin/users', 'GET', '154.21.209.10', '{\"_pjax\":\"#pjax-container\",\"page\":\"11\"}', '2022-06-18 17:19:46', '2022-06-18 17:19:46'),
(2515, 1, 'admin/users', 'GET', '154.21.209.10', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2022-06-18 17:20:05', '2022-06-18 17:20:05'),
(2516, 1, 'admin/users', 'GET', '154.21.209.10', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\",\"per_page\":\"100\"}', '2022-06-18 17:20:12', '2022-06-18 17:20:12'),
(2517, 1, 'admin/orders', 'GET', '154.21.209.10', '{\"_pjax\":\"#pjax-container\"}', '2022-06-18 17:20:22', '2022-06-18 17:20:22'),
(2518, 1, 'admin/food-types', 'GET', '154.21.209.10', '{\"_pjax\":\"#pjax-container\"}', '2022-06-18 17:21:05', '2022-06-18 17:21:05'),
(2519, 1, 'admin/orders', 'GET', '114.95.225.29', '{\"_pjax\":\"#pjax-container\"}', '2022-06-18 21:49:06', '2022-06-18 21:49:06'),
(2520, 1, 'admin/orders/100051', 'GET', '114.95.225.29', '[]', '2022-06-18 21:49:08', '2022-06-18 21:49:08'),
(2521, 1, 'admin/orders', 'GET', '114.95.225.29', '{\"_pjax\":\"#pjax-container\"}', '2022-06-18 21:49:27', '2022-06-18 21:49:27'),
(2522, 1, 'admin/orders', 'GET', '114.95.225.29', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2022-06-18 21:49:34', '2022-06-18 21:49:34'),
(2523, 1, 'admin/orders/100016/edit', 'GET', '114.95.225.29', '{\"_pjax\":\"#pjax-container\"}', '2022-06-18 21:49:39', '2022-06-18 21:49:39'),
(2524, 1, 'admin/orders', 'GET', '114.95.225.29', '{\"_pjax\":\"#pjax-container\"}', '2022-06-18 21:50:05', '2022-06-18 21:50:05'),
(2525, 1, 'admin/orders', 'GET', '114.95.225.29', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2022-06-18 21:50:08', '2022-06-18 21:50:08'),
(2526, 1, 'admin/orders', 'GET', '114.95.225.29', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2022-06-18 21:50:13', '2022-06-18 21:50:13'),
(2527, 1, 'admin/orders', 'GET', '114.95.225.29', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2022-06-18 21:50:16', '2022-06-18 21:50:16'),
(2528, 1, 'admin/orders/100016/edit', 'GET', '114.95.225.29', '{\"_pjax\":\"#pjax-container\"}', '2022-06-18 21:50:24', '2022-06-18 21:50:24'),
(2529, 1, 'admin/orders', 'GET', '114.95.225.29', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2022-06-18 21:50:28', '2022-06-18 21:50:28'),
(2530, 1, 'admin/orders/100016/edit', 'GET', '114.95.225.29', '{\"_pjax\":\"#pjax-container\"}', '2022-06-18 21:50:47', '2022-06-18 21:50:47'),
(2531, 1, 'admin/orders/100017/edit', 'GET', '114.95.225.29', '[]', '2022-06-18 21:51:38', '2022-06-18 21:51:38'),
(2532, 1, 'admin/orders/100017', 'PUT', '114.95.225.29', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"status_id\":\"2\",\"confirmed\":\"2022-06-19 05:51:38\",\"accepted\":\"2022-06-19 05:51:38\",\"scheduled\":\"off\",\"processing\":\"2022-06-19 05:51:38\",\"handover\":\"2022-06-19 05:51:38\",\"failed\":\"2022-06-19 05:51:38\",\"scheduled_at\":\"2022-06-17 11:14:22\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"otp\":\"8768\",\"pending\":\"2022-06-17 11:14:22\",\"picked_up\":\"2022-06-19 05:51:38\",\"delivered\":\"2022-06-19 05:51:38\",\"canceled\":\"2022-06-19 05:51:38\",\"_token\":\"AnIJMTUA16A9G9MrsnoVviXRnS56UiviiNTfMnst\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/orders\\/100051\"}', '2022-06-18 21:51:45', '2022-06-18 21:51:45'),
(2533, 1, 'admin/orders/100051', 'GET', '114.95.225.29', '[]', '2022-06-18 21:51:45', '2022-06-18 21:51:45'),
(2534, 1, 'admin/orders', 'GET', '114.95.225.29', '{\"_pjax\":\"#pjax-container\"}', '2022-06-18 21:51:56', '2022-06-18 21:51:56'),
(2535, 1, 'admin/orders', 'GET', '114.95.225.29', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2022-06-18 21:51:58', '2022-06-18 21:51:58'),
(2536, 1, 'admin/orders', 'GET', '154.21.209.10', '{\"_pjax\":\"#pjax-container\"}', '2022-06-18 21:52:59', '2022-06-18 21:52:59'),
(2537, 1, 'admin/orders', 'GET', '154.21.209.10', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2022-06-18 21:53:04', '2022-06-18 21:53:04'),
(2538, 1, 'admin/orders/100016/edit', 'GET', '154.21.209.10', '{\"_pjax\":\"#pjax-container\"}', '2022-06-18 21:53:13', '2022-06-18 21:53:13'),
(2539, 1, 'admin/orders/100017/edit', 'GET', '154.21.209.10', '[]', '2022-06-18 21:53:21', '2022-06-18 21:53:21'),
(2540, 1, 'admin/orders/100017', 'PUT', '154.21.209.10', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"status_id\":\"4\",\"confirmed\":\"2022-06-19 05:51:38\",\"accepted\":\"2022-06-19 05:51:38\",\"scheduled\":\"off\",\"processing\":\"2022-06-19 05:51:38\",\"handover\":\"2022-06-19 05:51:38\",\"failed\":\"2022-06-19 05:51:38\",\"scheduled_at\":\"2022-06-17 11:14:22\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"otp\":\"8768\",\"pending\":\"2022-06-17 11:14:22\",\"picked_up\":\"2022-06-19 05:51:38\",\"delivered\":\"2022-06-19 05:51:38\",\"canceled\":\"2022-06-19 05:51:38\",\"_token\":\"AnIJMTUA16A9G9MrsnoVviXRnS56UiviiNTfMnst\",\"_method\":\"PUT\"}', '2022-06-18 21:53:31', '2022-06-18 21:53:31'),
(2541, 1, 'admin/orders', 'GET', '154.21.209.10', '[]', '2022-06-18 21:53:32', '2022-06-18 21:53:32'),
(2542, 1, 'admin/orders/100052', 'GET', '154.21.209.10', '[]', '2022-06-18 21:53:42', '2022-06-18 21:53:42'),
(2543, 1, 'admin/orders', 'GET', '154.21.209.10', '{\"_pjax\":\"#pjax-container\"}', '2022-06-18 22:04:22', '2022-06-18 22:04:22'),
(2544, 1, 'admin/orders/100053', 'GET', '154.21.209.10', '[]', '2022-06-18 23:11:46', '2022-06-18 23:11:46'),
(2545, 1, 'admin', 'GET', '198.255.45.131', '[]', '2022-06-19 05:13:04', '2022-06-19 05:13:04'),
(2546, 1, 'admin/auth/menu', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 05:13:20', '2022-06-19 05:13:20'),
(2547, 1, 'admin/auth/menu', 'POST', '198.255.45.131', '{\"parent_id\":\"0\",\"title\":\"Delivery Men\",\"icon\":\"fa-send-o\",\"uri\":\"\\/delivery-men\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"72Wc0z35iLatqFAATFaPc07MTvBsqnBCej8W7J6f\"}', '2022-06-19 05:14:18', '2022-06-19 05:14:18'),
(2548, 1, 'admin/auth/menu', 'GET', '198.255.45.131', '[]', '2022-06-19 05:14:19', '2022-06-19 05:14:19'),
(2549, 1, 'admin/auth/menu', 'GET', '198.255.45.131', '[]', '2022-06-19 05:14:21', '2022-06-19 05:14:21'),
(2550, 1, 'admin/auth/menu/13/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 05:14:26', '2022-06-19 05:14:26'),
(2551, 1, 'admin/auth/menu/13', 'PUT', '198.255.45.131', '{\"parent_id\":\"0\",\"title\":\"Biz Setting\",\"icon\":\"fa-dollar\",\"uri\":\"\\/business-settings\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"72Wc0z35iLatqFAATFaPc07MTvBsqnBCej8W7J6f\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/auth\\/menu\"}', '2022-06-19 05:14:36', '2022-06-19 05:14:36'),
(2552, 1, 'admin/auth/menu', 'GET', '198.255.45.131', '[]', '2022-06-19 05:14:37', '2022-06-19 05:14:37'),
(2553, 1, 'admin/auth/menu', 'GET', '198.255.45.131', '[]', '2022-06-19 05:14:39', '2022-06-19 05:14:39'),
(2554, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 05:14:46', '2022-06-19 05:14:46'),
(2555, 1, 'admin/orders/100053', 'GET', '198.255.45.131', '[]', '2022-06-19 05:16:04', '2022-06-19 05:16:04'),
(2556, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 05:16:08', '2022-06-19 05:16:08'),
(2557, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '[]', '2022-06-19 05:17:31', '2022-06-19 05:17:31'),
(2558, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 05:17:41', '2022-06-19 05:17:41'),
(2559, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '[]', '2022-06-19 05:18:52', '2022-06-19 05:18:52'),
(2560, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '[]', '2022-06-19 05:20:55', '2022-06-19 05:20:55'),
(2561, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '[]', '2022-06-19 05:21:28', '2022-06-19 05:21:28'),
(2562, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 05:25:52', '2022-06-19 05:25:52'),
(2563, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 05:26:11', '2022-06-19 05:26:11'),
(2564, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 05:26:13', '2022-06-19 05:26:13'),
(2565, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '[]', '2022-06-19 05:26:46', '2022-06-19 05:26:46'),
(2566, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 05:28:48', '2022-06-19 05:28:48'),
(2567, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 05:28:52', '2022-06-19 05:28:52'),
(2568, 1, 'admin/delivery-men', 'POST', '198.255.45.131', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":\"12345\",\"_token\":\"72Wc0z35iLatqFAATFaPc07MTvBsqnBCej8W7J6f\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/delivery-men\"}', '2022-06-19 05:29:49', '2022-06-19 05:29:49'),
(2569, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '[]', '2022-06-19 05:30:26', '2022-06-19 05:30:26'),
(2570, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 05:30:30', '2022-06-19 05:30:30'),
(2571, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '[]', '2022-06-19 05:30:30', '2022-06-19 05:30:30'),
(2572, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 05:30:44', '2022-06-19 05:30:44'),
(2573, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '[]', '2022-06-19 05:30:45', '2022-06-19 05:30:45'),
(2574, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '[]', '2022-06-19 05:30:50', '2022-06-19 05:30:50'),
(2575, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '[]', '2022-06-19 05:31:10', '2022-06-19 05:31:10'),
(2576, 1, 'admin/delivery-men', 'POST', '198.255.45.131', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":\"12345\",\"_token\":\"72Wc0z35iLatqFAATFaPc07MTvBsqnBCej8W7J6f\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/delivery-men\"}', '2022-06-19 05:31:20', '2022-06-19 05:31:20'),
(2577, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '[]', '2022-06-19 05:31:22', '2022-06-19 05:31:22'),
(2578, 1, 'admin/delivery-men', 'POST', '198.255.45.131', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":\"12345\",\"_token\":\"72Wc0z35iLatqFAATFaPc07MTvBsqnBCej8W7J6f\"}', '2022-06-19 05:31:41', '2022-06-19 05:31:41'),
(2579, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 05:40:34', '2022-06-19 05:40:34'),
(2580, 1, 'admin/delivery-men', 'POST', '198.255.45.131', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":\"ss\",\"_token\":\"72Wc0z35iLatqFAATFaPc07MTvBsqnBCej8W7J6f\"}', '2022-06-19 05:40:41', '2022-06-19 05:40:41'),
(2581, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 05:41:05', '2022-06-19 05:41:05'),
(2582, 1, 'admin/delivery-men', 'POST', '198.255.45.131', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":\"ss\",\"_token\":\"72Wc0z35iLatqFAATFaPc07MTvBsqnBCej8W7J6f\"}', '2022-06-19 05:41:13', '2022-06-19 05:41:13'),
(2583, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '[]', '2022-06-19 05:41:15', '2022-06-19 05:41:15'),
(2584, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 05:41:40', '2022-06-19 05:41:40'),
(2585, 1, 'admin/delivery-men', 'POST', '198.255.45.131', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":\"ss\",\"_token\":\"72Wc0z35iLatqFAATFaPc07MTvBsqnBCej8W7J6f\"}', '2022-06-19 05:41:47', '2022-06-19 05:41:47'),
(2586, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 05:44:44', '2022-06-19 05:44:44'),
(2587, 1, 'admin/delivery-men', 'POST', '198.255.45.131', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":\"12345\",\"_token\":\"72Wc0z35iLatqFAATFaPc07MTvBsqnBCej8W7J6f\"}', '2022-06-19 05:44:53', '2022-06-19 05:44:53'),
(2588, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '[]', '2022-06-19 05:44:54', '2022-06-19 05:44:54'),
(2589, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 05:46:11', '2022-06-19 05:46:11'),
(2590, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '[]', '2022-06-19 05:46:15', '2022-06-19 05:46:15'),
(2591, 1, 'admin/delivery-men', 'POST', '198.255.45.131', '{\"name\":null,\"email\":null,\"phone\":\"13761849016\",\"password\":\"12345\",\"identity_number\":\"73383783\",\"_token\":\"72Wc0z35iLatqFAATFaPc07MTvBsqnBCej8W7J6f\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/delivery-men\"}', '2022-06-19 05:46:27', '2022-06-19 05:46:27'),
(2592, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '[]', '2022-06-19 05:46:28', '2022-06-19 05:46:28'),
(2593, 1, 'admin/delivery-men', 'POST', '198.255.45.131', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":\"12345\",\"identity_number\":\"73383783\",\"_token\":\"72Wc0z35iLatqFAATFaPc07MTvBsqnBCej8W7J6f\"}', '2022-06-19 05:48:33', '2022-06-19 05:48:33'),
(2594, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '[]', '2022-06-19 05:48:34', '2022-06-19 05:48:34'),
(2595, 1, 'admin/delivery-men', 'POST', '198.255.45.131', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":\"12345\",\"identity_number\":\"73383783\",\"_token\":\"72Wc0z35iLatqFAATFaPc07MTvBsqnBCej8W7J6f\"}', '2022-06-19 05:48:38', '2022-06-19 05:48:38'),
(2596, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '[]', '2022-06-19 05:48:40', '2022-06-19 05:48:40'),
(2597, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '[]', '2022-06-19 05:48:51', '2022-06-19 05:48:51'),
(2598, 1, 'admin/delivery-men', 'POST', '198.255.45.131', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":\"12345\",\"identity_number\":\"12345678\",\"_token\":\"72Wc0z35iLatqFAATFaPc07MTvBsqnBCej8W7J6f\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/delivery-men\"}', '2022-06-19 05:49:02', '2022-06-19 05:49:02'),
(2599, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '[]', '2022-06-19 05:49:04', '2022-06-19 05:49:04'),
(2600, 1, 'admin/delivery-men', 'POST', '101.85.227.97', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":\"12345\",\"identity_number\":\"12345678\",\"_token\":\"72Wc0z35iLatqFAATFaPc07MTvBsqnBCej8W7J6f\"}', '2022-06-19 06:31:06', '2022-06-19 06:31:06'),
(2601, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '[]', '2022-06-19 06:31:07', '2022-06-19 06:31:07'),
(2602, 1, 'admin/delivery-men/create', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 06:31:20', '2022-06-19 06:31:20'),
(2603, 1, 'admin/delivery-men', 'POST', '101.85.227.97', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":\"12345\",\"identity_number\":\"12345678\",\"_token\":\"72Wc0z35iLatqFAATFaPc07MTvBsqnBCej8W7J6f\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/delivery-men\"}', '2022-06-19 06:31:32', '2022-06-19 06:31:32'),
(2604, 1, 'admin/delivery-men/create', 'GET', '101.85.227.97', '[]', '2022-06-19 06:31:33', '2022-06-19 06:31:33'),
(2605, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 06:31:44', '2022-06-19 06:31:44'),
(2606, 1, 'admin/delivery-men/create', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 06:32:42', '2022-06-19 06:32:42'),
(2607, 1, 'admin/delivery-men', 'POST', '101.85.227.97', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":\"12345\",\"identity_number\":\"12345678\",\"_token\":\"72Wc0z35iLatqFAATFaPc07MTvBsqnBCej8W7J6f\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/delivery-men\"}', '2022-06-19 06:32:52', '2022-06-19 06:32:52'),
(2608, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '[]', '2022-06-19 06:32:52', '2022-06-19 06:32:52'),
(2609, 1, 'admin/_handle_action_', 'POST', '101.85.227.97', '{\"_key\":\"3\",\"_model\":\"App_Models_DeliveryMan\",\"_token\":\"72Wc0z35iLatqFAATFaPc07MTvBsqnBCej8W7J6f\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-06-19 06:33:39', '2022-06-19 06:33:39'),
(2610, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 06:33:39', '2022-06-19 06:33:39'),
(2611, 1, 'admin/delivery-men/create', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 06:33:41', '2022-06-19 06:33:41');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(2612, 1, 'admin/delivery-men', 'POST', '101.85.227.97', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":\"12345\",\"identity_number\":\"12345678\",\"_token\":\"72Wc0z35iLatqFAATFaPc07MTvBsqnBCej8W7J6f\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/delivery-men\"}', '2022-06-19 06:33:51', '2022-06-19 06:33:51'),
(2613, 1, 'admin/delivery-men/create', 'GET', '101.85.227.97', '[]', '2022-06-19 06:33:52', '2022-06-19 06:33:52'),
(2614, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 06:33:55', '2022-06-19 06:33:55'),
(2615, 1, 'admin/zones', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 06:34:39', '2022-06-19 06:34:39'),
(2616, 1, 'admin/zones/6/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 06:34:45', '2022-06-19 06:34:45'),
(2617, 1, 'admin/zones/6', 'PUT', '198.255.45.131', '{\"name\":\"zone_china\",\"coordinates\":\"(39.790145623879,115.75565867261),(39.785528846319,115.78896097974),(39.765343295818,115.78054957227),(39.766662793657,115.75325541333),(39.78104368003,115.75359873608),(39.790145623879,115.75565867261)\",\"status\":\"on\",\"restaurant_wise_topic\":\"test\",\"customer_wise_topic\":\"test\",\"deliveryman_wise_topic\":\"zone_1_delivery_man\",\"_token\":\"72Wc0z35iLatqFAATFaPc07MTvBsqnBCej8W7J6f\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/zones\"}', '2022-06-19 06:35:49', '2022-06-19 06:35:49'),
(2618, 1, 'admin/zones', 'GET', '198.255.45.131', '[]', '2022-06-19 06:35:49', '2022-06-19 06:35:49'),
(2619, 1, 'admin/zones/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 06:35:58', '2022-06-19 06:35:58'),
(2620, 1, 'admin/zones/create', 'GET', '198.255.45.131', '[]', '2022-06-19 06:37:50', '2022-06-19 06:37:50'),
(2621, 1, 'admin/zones', 'POST', '198.255.45.131', '{\"name\":\"zone_shanghai\",\"coordinates\":\"(39.510716959349914, 115.75928501919564),(39.28573971323676, 117.26990513638314),(39.61658632705826, 118.35755162075814),(40.189680697681766, 118.47290806607064),(40.624690206158554, 118.21472935513314),(40.69969473630225, 117.19300083950814),(40.61218125202709, 116.14380650357064),(40.31126406761363, 115.45166783169564),(39.85314683521614, 115.43518833950814)\",\"status\":\"on\",\"restaurant_wise_topic\":\"test\",\"customer_wise_topic\":\"test\",\"deliveryman_wise_topic\":\"zone_1_delivery_man\",\"_token\":\"72Wc0z35iLatqFAATFaPc07MTvBsqnBCej8W7J6f\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/zones\"}', '2022-06-19 06:39:58', '2022-06-19 06:39:58'),
(2622, 1, 'admin/zones', 'GET', '198.255.45.131', '[]', '2022-06-19 06:39:59', '2022-06-19 06:39:59'),
(2623, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 06:40:10', '2022-06-19 06:40:10'),
(2624, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 06:40:13', '2022-06-19 06:40:13'),
(2625, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 06:43:08', '2022-06-19 06:43:08'),
(2626, 1, 'admin/orders/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 06:43:11', '2022-06-19 06:43:11'),
(2627, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 06:45:41', '2022-06-19 06:45:41'),
(2628, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 06:45:44', '2022-06-19 06:45:44'),
(2629, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '[]', '2022-06-19 06:45:45', '2022-06-19 06:45:45'),
(2630, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 06:46:06', '2022-06-19 06:46:06'),
(2631, 1, 'admin/zones', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 06:46:37', '2022-06-19 06:46:37'),
(2632, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 06:46:39', '2022-06-19 06:46:39'),
(2633, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 06:46:42', '2022-06-19 06:46:42'),
(2634, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '[]', '2022-06-19 06:49:28', '2022-06-19 06:49:28'),
(2635, 1, 'admin/zones', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 06:49:44', '2022-06-19 06:49:44'),
(2636, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 06:49:46', '2022-06-19 06:49:46'),
(2637, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 06:49:47', '2022-06-19 06:49:47'),
(2638, 1, 'admin/zones', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 06:52:19', '2022-06-19 06:52:19'),
(2639, 1, 'admin/zones/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 06:52:22', '2022-06-19 06:52:22'),
(2640, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 06:52:27', '2022-06-19 06:52:27'),
(2641, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 06:52:35', '2022-06-19 06:52:35'),
(2642, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '[]', '2022-06-19 06:53:01', '2022-06-19 06:53:01'),
(2643, 1, 'admin/zones', 'GET', '198.255.45.131', '[]', '2022-06-19 06:53:31', '2022-06-19 06:53:31'),
(2644, 1, 'admin/zones/6/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 06:53:45', '2022-06-19 06:53:45'),
(2645, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 06:53:51', '2022-06-19 06:53:51'),
(2646, 1, 'admin/delivery-men/1/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 06:53:54', '2022-06-19 06:53:54'),
(2647, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 06:54:00', '2022-06-19 06:54:00'),
(2648, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 06:55:57', '2022-06-19 06:55:57'),
(2649, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 06:58:03', '2022-06-19 06:58:03'),
(2650, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 06:58:04', '2022-06-19 06:58:04'),
(2651, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 07:00:04', '2022-06-19 07:00:04'),
(2652, 1, 'admin/delivery-men/create', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 07:00:06', '2022-06-19 07:00:06'),
(2653, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 07:00:26', '2022-06-19 07:00:26'),
(2654, 1, 'admin/delivery-men/create', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 07:00:27', '2022-06-19 07:00:27'),
(2655, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 07:00:43', '2022-06-19 07:00:43'),
(2656, 1, 'admin/delivery-men/create', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 07:00:45', '2022-06-19 07:00:45'),
(2657, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 07:01:01', '2022-06-19 07:01:01'),
(2658, 1, 'admin/delivery-men/2/edit', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 07:01:04', '2022-06-19 07:01:04'),
(2659, 1, 'admin/delivery-men/2', 'PUT', '101.85.227.97', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":null,\"identity_number\":\"12345678\",\"zone_id\":\"1\",\"_token\":\"72Wc0z35iLatqFAATFaPc07MTvBsqnBCej8W7J6f\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/delivery-men\"}', '2022-06-19 07:01:24', '2022-06-19 07:01:24'),
(2660, 1, 'admin/delivery-men/2/edit', 'GET', '101.85.227.97', '[]', '2022-06-19 07:01:24', '2022-06-19 07:01:24'),
(2661, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 07:01:31', '2022-06-19 07:01:31'),
(2662, 1, 'admin/delivery-men/2/edit', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 07:01:36', '2022-06-19 07:01:36'),
(2663, 1, 'admin/delivery-men/2', 'PUT', '101.85.227.97', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":null,\"identity_number\":\"12345678\",\"zone_id\":\"1\",\"_token\":\"72Wc0z35iLatqFAATFaPc07MTvBsqnBCej8W7J6f\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/delivery-men\"}', '2022-06-19 07:02:53', '2022-06-19 07:02:53'),
(2664, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '[]', '2022-06-19 07:02:54', '2022-06-19 07:02:54'),
(2665, 1, 'admin/delivery-men/2/edit', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 07:04:30', '2022-06-19 07:04:30'),
(2666, 1, 'admin/delivery-men/2', 'PUT', '101.85.227.97', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":null,\"identity_number\":\"12345678\",\"zone_id\":\"7\",\"_token\":\"72Wc0z35iLatqFAATFaPc07MTvBsqnBCej8W7J6f\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/delivery-men\"}', '2022-06-19 07:04:34', '2022-06-19 07:04:34'),
(2667, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '[]', '2022-06-19 07:04:35', '2022-06-19 07:04:35'),
(2668, 1, 'admin/delivery-men/2/edit', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 07:06:51', '2022-06-19 07:06:51'),
(2669, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 07:06:58', '2022-06-19 07:06:58'),
(2670, 1, 'admin/delivery-men/1/edit', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 07:07:00', '2022-06-19 07:07:00'),
(2671, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 07:07:02', '2022-06-19 07:07:02'),
(2672, 1, 'admin/delivery-men/create', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 07:07:04', '2022-06-19 07:07:04'),
(2673, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 07:07:07', '2022-06-19 07:07:07'),
(2674, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 07:12:47', '2022-06-19 07:12:47'),
(2675, 1, 'admin/orders/100053/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 07:12:54', '2022-06-19 07:12:54'),
(2676, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 07:13:18', '2022-06-19 07:13:18'),
(2677, 1, 'admin/orders/100053/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 07:13:22', '2022-06-19 07:13:22'),
(2678, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 07:13:42', '2022-06-19 07:13:42'),
(2679, 1, 'admin/orders/100053/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 07:13:46', '2022-06-19 07:13:46'),
(2680, 1, 'admin/orders/100053/edit', 'GET', '198.255.45.131', '[]', '2022-06-19 07:14:39', '2022-06-19 07:14:39'),
(2681, 1, 'admin/orders/100053', 'PUT', '198.255.45.131', '{\"order_amount\":\"24\",\"payment_status\":\"paid\",\"status_id\":\"2\",\"delivery_man_id\":\"2\",\"confirmed\":\"2022-06-19 07:12:05\",\"accepted\":\"2022-06-19 15:14:39\",\"scheduled\":\"off\",\"processing\":\"2022-06-19 15:14:39\",\"handover\":\"2022-06-19 15:14:39\",\"failed\":\"2022-06-19 07:11:32\",\"scheduled_at\":\"2022-06-19 07:11:23\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"otp\":\"3538\",\"pending\":\"2022-06-19 07:11:23\",\"picked_up\":\"2022-06-19 15:14:39\",\"delivered\":\"2022-06-19 15:14:39\",\"canceled\":\"2022-06-19 15:14:39\",\"_token\":\"72Wc0z35iLatqFAATFaPc07MTvBsqnBCej8W7J6f\",\"_method\":\"PUT\"}', '2022-06-19 07:15:20', '2022-06-19 07:15:20'),
(2682, 1, 'admin/orders', 'GET', '198.255.45.131', '[]', '2022-06-19 07:15:21', '2022-06-19 07:15:21'),
(2683, 1, 'admin/orders/100053/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 07:15:26', '2022-06-19 07:15:26'),
(2684, 1, 'admin/orders/100053', 'PUT', '198.255.45.131', '{\"order_amount\":\"24\",\"payment_status\":\"paid\",\"status_id\":\"2\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-19 07:12:05\",\"accepted\":\"2022-06-19 15:14:39\",\"scheduled\":\"off\",\"processing\":\"2022-06-19 15:14:39\",\"handover\":\"2022-06-19 15:14:39\",\"failed\":\"2022-06-19 07:11:32\",\"scheduled_at\":\"2022-06-19 07:11:23\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"otp\":\"3538\",\"pending\":\"2022-06-19 07:11:23\",\"picked_up\":\"2022-06-19 15:14:39\",\"delivered\":\"2022-06-19 15:14:39\",\"canceled\":\"2022-06-19 15:14:39\",\"_token\":\"72Wc0z35iLatqFAATFaPc07MTvBsqnBCej8W7J6f\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/orders\"}', '2022-06-19 07:15:32', '2022-06-19 07:15:32'),
(2685, 1, 'admin/orders', 'GET', '198.255.45.131', '[]', '2022-06-19 07:15:33', '2022-06-19 07:15:33'),
(2686, 1, 'admin/orders/100053/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 07:15:37', '2022-06-19 07:15:37'),
(2687, 1, 'admin/orders/100053', 'PUT', '198.255.45.131', '{\"order_amount\":\"24\",\"payment_status\":\"paid\",\"status_id\":\"2\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-19 07:12:05\",\"accepted\":\"2022-06-19 15:14:39\",\"scheduled\":\"off\",\"processing\":\"2022-06-19 15:14:39\",\"handover\":\"2022-06-19 15:14:39\",\"failed\":\"2022-06-19 07:11:32\",\"scheduled_at\":\"2022-06-19 07:11:23\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"otp\":\"3538\",\"pending\":\"2022-06-19 07:11:23\",\"picked_up\":\"2022-06-19 15:14:39\",\"delivered\":\"2022-06-19 15:14:39\",\"canceled\":\"2022-06-19 15:14:39\",\"_token\":\"72Wc0z35iLatqFAATFaPc07MTvBsqnBCej8W7J6f\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/orders\"}', '2022-06-19 07:32:51', '2022-06-19 07:32:51'),
(2688, 1, 'admin/orders', 'GET', '198.255.45.131', '[]', '2022-06-19 07:32:53', '2022-06-19 07:32:53'),
(2689, 1, 'admin/orders/100052/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 07:36:29', '2022-06-19 07:36:29'),
(2690, 1, 'admin/orders/100052', 'PUT', '198.255.45.131', '{\"order_amount\":\"36\",\"payment_status\":\"paid\",\"status_id\":\"2\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-19 05:55:25\",\"accepted\":\"2022-06-19 15:36:29\",\"scheduled\":\"off\",\"processing\":\"2022-06-19 15:36:29\",\"handover\":\"2022-06-19 15:36:29\",\"failed\":\"2022-06-19 05:53:08\",\"scheduled_at\":\"2022-06-19 05:52:47\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"otp\":\"6883\",\"pending\":\"2022-06-19 05:52:47\",\"picked_up\":\"2022-06-19 15:36:29\",\"delivered\":\"2022-06-19 15:36:29\",\"canceled\":\"2022-06-19 15:36:29\",\"_token\":\"72Wc0z35iLatqFAATFaPc07MTvBsqnBCej8W7J6f\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/orders\"}', '2022-06-19 07:36:34', '2022-06-19 07:36:34'),
(2691, 1, 'admin/orders', 'GET', '198.255.45.131', '[]', '2022-06-19 07:36:35', '2022-06-19 07:36:35'),
(2692, 1, 'admin/orders/100048/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 07:47:24', '2022-06-19 07:47:24'),
(2693, 1, 'admin/orders/100048', 'PUT', '198.255.45.131', '{\"order_amount\":\"136\",\"payment_status\":\"unpaid\",\"status_id\":\"2\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-19 15:47:24\",\"accepted\":\"2022-06-19 15:47:24\",\"scheduled\":\"off\",\"processing\":\"2022-06-19 15:47:24\",\"handover\":\"2022-06-19 15:47:24\",\"failed\":\"2022-06-18 15:28:23\",\"scheduled_at\":\"2022-06-18 15:28:09\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":null,\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"abdo\\\",\\\"contact_person_number\\\":\\\"12121234\\\",\\\"address\\\":\\\"455X+G6W Oued Sly  Algeria\\\",\\\"longitude\\\":\\\"1.1974199\\\",\\\"latitude\\\":\\\"36.1084765\\\"}\",\"otp\":\"6263\",\"pending\":\"2022-06-18 15:28:09\",\"picked_up\":\"2022-06-19 15:47:24\",\"delivered\":\"2022-06-19 15:47:24\",\"canceled\":\"2022-06-19 15:47:24\",\"_token\":\"72Wc0z35iLatqFAATFaPc07MTvBsqnBCej8W7J6f\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/orders\"}', '2022-06-19 07:47:33', '2022-06-19 07:47:33'),
(2694, 1, 'admin/orders', 'GET', '198.255.45.131', '[]', '2022-06-19 07:47:34', '2022-06-19 07:47:34'),
(2695, 1, 'admin/orders/100053/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 08:05:18', '2022-06-19 08:05:18'),
(2696, 1, 'admin/orders/100053', 'PUT', '198.255.45.131', '{\"order_amount\":\"24\",\"payment_status\":\"paid\",\"status_id\":\"2\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-19 07:12:05\",\"accepted\":\"2022-06-19 15:14:39\",\"scheduled\":\"off\",\"processing\":\"2022-06-19 15:14:39\",\"handover\":\"2022-06-19 15:14:39\",\"failed\":\"2022-06-19 07:11:32\",\"scheduled_at\":\"2022-06-19 07:11:23\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"otp\":\"3538\",\"pending\":\"2022-06-19 07:11:23\",\"picked_up\":\"2022-06-19 15:14:39\",\"delivered\":\"2022-06-19 15:14:39\",\"canceled\":\"2022-06-19 15:14:39\",\"_token\":\"72Wc0z35iLatqFAATFaPc07MTvBsqnBCej8W7J6f\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/orders\"}', '2022-06-19 08:05:26', '2022-06-19 08:05:26'),
(2697, 1, 'admin/orders', 'GET', '198.255.45.131', '[]', '2022-06-19 08:05:27', '2022-06-19 08:05:27'),
(2698, 1, 'admin/orders/100053/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 08:06:51', '2022-06-19 08:06:51'),
(2699, 1, 'admin/orders/100053', 'PUT', '198.255.45.131', '{\"order_amount\":\"24\",\"payment_status\":\"paid\",\"status_id\":\"2\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-19 07:12:05\",\"accepted\":\"2022-06-19 15:14:39\",\"scheduled\":\"off\",\"processing\":\"2022-06-19 15:14:39\",\"handover\":\"2022-06-19 15:14:39\",\"failed\":\"2022-06-19 07:11:32\",\"scheduled_at\":\"2022-06-19 07:11:23\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"otp\":\"3538\",\"pending\":\"2022-06-19 07:11:23\",\"picked_up\":\"2022-06-19 15:14:39\",\"delivered\":\"2022-06-19 15:14:39\",\"canceled\":\"2022-06-19 15:14:39\",\"_token\":\"72Wc0z35iLatqFAATFaPc07MTvBsqnBCej8W7J6f\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/orders\"}', '2022-06-19 08:06:56', '2022-06-19 08:06:56'),
(2700, 1, 'admin/orders/100053', 'GET', '198.255.45.131', '[]', '2022-06-19 17:59:12', '2022-06-19 17:59:12'),
(2701, 1, 'admin/orders/100054', 'GET', '198.255.45.131', '[]', '2022-06-19 18:36:59', '2022-06-19 18:36:59'),
(2702, 1, 'admin/foods', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 18:46:32', '2022-06-19 18:46:32'),
(2703, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 18:46:33', '2022-06-19 18:46:33'),
(2704, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 18:46:39', '2022-06-19 18:46:39'),
(2705, 1, 'admin/orders/100055', 'GET', '101.85.227.97', '[]', '2022-06-19 19:27:56', '2022-06-19 19:27:56'),
(2706, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 19:28:42', '2022-06-19 19:28:42'),
(2707, 1, 'admin/orders/100055/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 19:28:56', '2022-06-19 19:28:56'),
(2708, 1, 'admin/orders/100055', 'PUT', '198.255.45.131', '{\"order_amount\":\"82\",\"payment_status\":\"paid\",\"status_id\":\"2\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-20 03:28:27\",\"accepted\":\"2022-06-20 03:28:57\",\"scheduled\":\"off\",\"processing\":\"2022-06-20 03:28:57\",\"handover\":\"2022-06-20 03:28:57\",\"failed\":\"2022-06-20 03:27:56\",\"scheduled_at\":\"2022-06-20 03:27:49\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"otp\":\"2287\",\"pending\":\"2022-06-20 03:27:49\",\"picked_up\":\"2022-06-20 03:28:57\",\"delivered\":\"2022-06-20 03:28:57\",\"canceled\":\"2022-06-20 03:28:57\",\"_token\":\"W1fSbfuAB76yTrVeo67BIfvboyjPhdseCMeYLKJb\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/orders\"}', '2022-06-19 19:30:15', '2022-06-19 19:30:15'),
(2709, 1, 'admin/orders', 'GET', '198.255.45.131', '[]', '2022-06-19 19:30:16', '2022-06-19 19:30:16'),
(2710, 1, 'admin/orders/100056', 'GET', '198.255.45.131', '[]', '2022-06-19 19:33:18', '2022-06-19 19:33:18'),
(2711, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 19:36:27', '2022-06-19 19:36:27'),
(2712, 1, 'admin/orders', 'GET', '198.255.45.131', '[]', '2022-06-19 22:18:34', '2022-06-19 22:18:34'),
(2713, 1, 'admin/orders/100057', 'GET', '198.255.45.131', '[]', '2022-06-20 06:04:04', '2022-06-20 06:04:04'),
(2714, 1, 'admin/orders/100058', 'GET', '198.255.45.131', '[]', '2022-06-20 07:41:14', '2022-06-20 07:41:14'),
(2715, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 08:56:32', '2022-06-20 08:56:32'),
(2716, 1, 'admin/delivery-men/create', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 08:56:34', '2022-06-20 08:56:34'),
(2717, 1, 'admin/orders', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 08:57:33', '2022-06-20 08:57:33'),
(2718, 1, 'admin/delivery-men/create', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 08:58:04', '2022-06-20 08:58:04'),
(2719, 1, 'admin/delivery-men/create', 'GET', '101.85.227.97', '[]', '2022-06-20 08:58:25', '2022-06-20 08:58:25'),
(2720, 1, 'admin/delivery-men', 'POST', '101.85.227.97', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":\"12345\",\"identity_number\":\"12345678\",\"zone_id\":\"7\",\"_token\":\"BZ3JTOHxhyZKtZHVxRTjXRKZQObGlt1dHsMFyyyW\"}', '2022-06-20 08:58:46', '2022-06-20 08:58:46'),
(2721, 1, 'admin/delivery-men/create', 'GET', '101.85.227.97', '[]', '2022-06-20 08:58:47', '2022-06-20 08:58:47'),
(2722, 1, 'admin/delivery-men/create', 'GET', '101.85.227.97', '[]', '2022-06-20 09:02:47', '2022-06-20 09:02:47'),
(2723, 1, 'admin/delivery-men', 'POST', '101.85.227.97', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":\"12345\",\"identity_number\":\"12345678\",\"zone_id\":\"7\",\"_token\":\"BZ3JTOHxhyZKtZHVxRTjXRKZQObGlt1dHsMFyyyW\"}', '2022-06-20 09:03:02', '2022-06-20 09:03:02'),
(2724, 1, 'admin/delivery-men/create', 'GET', '101.85.227.97', '[]', '2022-06-20 09:03:03', '2022-06-20 09:03:03'),
(2725, 1, 'admin/delivery-men', 'POST', '101.85.227.97', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":\"123456\",\"identity_number\":\"12345678\",\"zone_id\":\"7\",\"_token\":\"BZ3JTOHxhyZKtZHVxRTjXRKZQObGlt1dHsMFyyyW\"}', '2022-06-20 09:03:09', '2022-06-20 09:03:09'),
(2726, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '[]', '2022-06-20 09:03:10', '2022-06-20 09:03:10'),
(2727, 1, 'admin/delivery-men/4/edit', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 09:04:11', '2022-06-20 09:04:11'),
(2728, 1, 'admin/delivery-men/4', 'PUT', '101.85.227.97', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":null,\"identity_number\":\"12345678\",\"zone_id\":\"7\",\"_token\":\"BZ3JTOHxhyZKtZHVxRTjXRKZQObGlt1dHsMFyyyW\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/delivery-men\"}', '2022-06-20 09:04:13', '2022-06-20 09:04:13'),
(2729, 1, 'admin/delivery-men/4/edit', 'GET', '101.85.227.97', '[]', '2022-06-20 09:04:13', '2022-06-20 09:04:13'),
(2730, 1, 'admin/delivery-men/4', 'PUT', '101.85.227.97', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":\"123456\",\"identity_number\":\"12345678\",\"zone_id\":\"7\",\"_token\":\"BZ3JTOHxhyZKtZHVxRTjXRKZQObGlt1dHsMFyyyW\",\"_method\":\"PUT\"}', '2022-06-20 09:04:20', '2022-06-20 09:04:20'),
(2731, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '[]', '2022-06-20 09:04:21', '2022-06-20 09:04:21'),
(2732, 1, 'admin/_handle_action_', 'POST', '101.85.227.97', '{\"_key\":\"4\",\"_model\":\"App_Models_DeliveryMan\",\"_token\":\"BZ3JTOHxhyZKtZHVxRTjXRKZQObGlt1dHsMFyyyW\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-06-20 09:04:25', '2022-06-20 09:04:25'),
(2733, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 09:04:25', '2022-06-20 09:04:25'),
(2734, 1, 'admin/delivery-men/create', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 09:04:30', '2022-06-20 09:04:30'),
(2735, 1, 'admin/delivery-men', 'POST', '101.85.227.97', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":\"123456\",\"identity_number\":\"12345678\",\"zone_id\":\"7\",\"_token\":\"BZ3JTOHxhyZKtZHVxRTjXRKZQObGlt1dHsMFyyyW\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/delivery-men\"}', '2022-06-20 09:04:41', '2022-06-20 09:04:41'),
(2736, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '[]', '2022-06-20 09:04:42', '2022-06-20 09:04:42'),
(2737, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 09:12:17', '2022-06-20 09:12:17'),
(2738, 1, 'admin/delivery-men', 'POST', '198.255.45.131', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":\"123456\",\"identity_number\":\"12345678\",\"zone_id\":\"7\",\"_token\":\"BZ3JTOHxhyZKtZHVxRTjXRKZQObGlt1dHsMFyyyW\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/delivery-men\"}', '2022-06-20 09:12:29', '2022-06-20 09:12:29'),
(2739, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '[]', '2022-06-20 09:12:30', '2022-06-20 09:12:30'),
(2740, 1, 'admin/_handle_action_', 'POST', '198.255.45.131', '{\"_key\":\"6\",\"_model\":\"App_Models_DeliveryMan\",\"_token\":\"BZ3JTOHxhyZKtZHVxRTjXRKZQObGlt1dHsMFyyyW\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-06-20 09:12:37', '2022-06-20 09:12:37'),
(2741, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 09:12:38', '2022-06-20 09:12:38'),
(2742, 1, 'admin/_handle_action_', 'POST', '198.255.45.131', '{\"_key\":\"5\",\"_model\":\"App_Models_DeliveryMan\",\"_token\":\"BZ3JTOHxhyZKtZHVxRTjXRKZQObGlt1dHsMFyyyW\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-06-20 09:12:43', '2022-06-20 09:12:43'),
(2743, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 09:12:44', '2022-06-20 09:12:44'),
(2744, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 09:14:17', '2022-06-20 09:14:17'),
(2745, 1, 'admin/delivery-men', 'POST', '198.255.45.131', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":\"123456\",\"identity_number\":\"12345678\",\"zone_id\":\"7\",\"_token\":\"BZ3JTOHxhyZKtZHVxRTjXRKZQObGlt1dHsMFyyyW\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/delivery-men\"}', '2022-06-20 09:14:29', '2022-06-20 09:14:29'),
(2746, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '[]', '2022-06-20 09:14:30', '2022-06-20 09:14:30'),
(2747, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 09:15:05', '2022-06-20 09:15:05'),
(2748, 1, 'admin/delivery-men', 'POST', '198.255.45.131', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":\"123456\",\"identity_number\":\"12345678\",\"zone_id\":\"7\",\"_token\":\"BZ3JTOHxhyZKtZHVxRTjXRKZQObGlt1dHsMFyyyW\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/delivery-men\"}', '2022-06-20 09:15:16', '2022-06-20 09:15:16'),
(2749, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '[]', '2022-06-20 09:15:17', '2022-06-20 09:15:17'),
(2750, 1, 'admin/_handle_action_', 'POST', '198.255.45.131', '{\"_key\":\"8\",\"_model\":\"App_Models_DeliveryMan\",\"_token\":\"BZ3JTOHxhyZKtZHVxRTjXRKZQObGlt1dHsMFyyyW\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-06-20 09:15:22', '2022-06-20 09:15:22'),
(2751, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 09:15:23', '2022-06-20 09:15:23'),
(2752, 1, 'admin/delivery-men/7/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 09:15:26', '2022-06-20 09:15:26'),
(2753, 1, 'admin/delivery-men/7', 'PUT', '198.255.45.131', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":null,\"identity_number\":\"12345678\",\"zone_id\":\"7\",\"_token\":\"BZ3JTOHxhyZKtZHVxRTjXRKZQObGlt1dHsMFyyyW\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/delivery-men\"}', '2022-06-20 09:15:30', '2022-06-20 09:15:30'),
(2754, 1, 'admin/delivery-men/7/edit', 'GET', '198.255.45.131', '[]', '2022-06-20 09:15:30', '2022-06-20 09:15:30'),
(2755, 1, 'admin/delivery-men/7', 'PUT', '198.255.45.131', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":\"123456\",\"identity_number\":\"12345678\",\"zone_id\":\"7\",\"_token\":\"BZ3JTOHxhyZKtZHVxRTjXRKZQObGlt1dHsMFyyyW\",\"_method\":\"PUT\"}', '2022-06-20 09:15:35', '2022-06-20 09:15:35'),
(2756, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '[]', '2022-06-20 09:15:36', '2022-06-20 09:15:36'),
(2757, 1, 'admin/_handle_action_', 'POST', '198.255.45.131', '{\"_key\":\"7\",\"_model\":\"App_Models_DeliveryMan\",\"_token\":\"BZ3JTOHxhyZKtZHVxRTjXRKZQObGlt1dHsMFyyyW\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-06-20 09:15:41', '2022-06-20 09:15:41'),
(2758, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 09:15:42', '2022-06-20 09:15:42'),
(2759, 1, 'admin/delivery-men/create', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 09:19:21', '2022-06-20 09:19:21'),
(2760, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '[]', '2022-06-20 09:19:21', '2022-06-20 09:19:21'),
(2761, 1, 'admin/delivery-men/create', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 09:21:28', '2022-06-20 09:21:28'),
(2762, 1, 'admin/delivery-men', 'POST', '101.85.227.97', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":\"123456\",\"identity_number\":\"12345678\",\"zone_id\":\"7\",\"_token\":\"BZ3JTOHxhyZKtZHVxRTjXRKZQObGlt1dHsMFyyyW\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/delivery-men\"}', '2022-06-20 09:21:38', '2022-06-20 09:21:38'),
(2763, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '[]', '2022-06-20 09:21:39', '2022-06-20 09:21:39'),
(2764, 1, 'admin/_handle_action_', 'POST', '101.85.227.97', '{\"_key\":\"9\",\"_model\":\"App_Models_DeliveryMan\",\"_token\":\"BZ3JTOHxhyZKtZHVxRTjXRKZQObGlt1dHsMFyyyW\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-06-20 09:21:43', '2022-06-20 09:21:43'),
(2765, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 09:21:43', '2022-06-20 09:21:43'),
(2766, 1, 'admin/delivery-men/create', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 09:31:18', '2022-06-20 09:31:18'),
(2767, 1, 'admin/delivery-men', 'POST', '101.85.227.97', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":\"123456\",\"identity_number\":\"12345678\",\"zone_id\":\"7\",\"_token\":\"BZ3JTOHxhyZKtZHVxRTjXRKZQObGlt1dHsMFyyyW\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/delivery-men\"}', '2022-06-20 09:31:28', '2022-06-20 09:31:28'),
(2768, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '[]', '2022-06-20 09:31:28', '2022-06-20 09:31:28'),
(2769, 1, 'admin/_handle_action_', 'POST', '101.85.227.97', '{\"_key\":\"10\",\"_model\":\"App_Models_DeliveryMan\",\"_token\":\"BZ3JTOHxhyZKtZHVxRTjXRKZQObGlt1dHsMFyyyW\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-06-20 09:31:35', '2022-06-20 09:31:35'),
(2770, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 09:31:35', '2022-06-20 09:31:35'),
(2771, 1, 'admin/delivery-men/create', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 09:32:34', '2022-06-20 09:32:34'),
(2772, 1, 'admin/delivery-men', 'POST', '101.85.227.97', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":\"123456\",\"identity_number\":\"12345678\",\"zone_id\":\"7\",\"_token\":\"BZ3JTOHxhyZKtZHVxRTjXRKZQObGlt1dHsMFyyyW\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/delivery-men\"}', '2022-06-20 09:32:46', '2022-06-20 09:32:46'),
(2773, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '[]', '2022-06-20 09:32:46', '2022-06-20 09:32:46'),
(2774, 1, 'admin/_handle_action_', 'POST', '101.85.227.97', '{\"_key\":\"11\",\"_model\":\"App_Models_DeliveryMan\",\"_token\":\"BZ3JTOHxhyZKtZHVxRTjXRKZQObGlt1dHsMFyyyW\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-06-20 09:32:55', '2022-06-20 09:32:55'),
(2775, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 09:32:55', '2022-06-20 09:32:55'),
(2776, 1, 'admin/delivery-men/create', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 09:34:42', '2022-06-20 09:34:42'),
(2777, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 09:34:56', '2022-06-20 09:34:56'),
(2778, 1, 'admin/delivery-men/2/edit', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 09:35:01', '2022-06-20 09:35:01'),
(2779, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 09:35:03', '2022-06-20 09:35:03'),
(2780, 1, 'admin/delivery-men/create', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 09:40:20', '2022-06-20 09:40:20'),
(2781, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 09:40:31', '2022-06-20 09:40:31'),
(2782, 1, 'admin/delivery-men/create', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 09:40:33', '2022-06-20 09:40:33'),
(2783, 1, 'admin/delivery-men', 'POST', '101.85.227.97', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":\"123456\",\"identity_number\":\"12345678\",\"zone_id\":\"7\",\"_token\":\"BZ3JTOHxhyZKtZHVxRTjXRKZQObGlt1dHsMFyyyW\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/delivery-men\"}', '2022-06-20 09:40:43', '2022-06-20 09:40:43'),
(2784, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '[]', '2022-06-20 09:40:43', '2022-06-20 09:40:43'),
(2785, 1, 'admin/_handle_action_', 'POST', '101.85.227.97', '{\"_key\":\"12\",\"_model\":\"App_Models_DeliveryMan\",\"_token\":\"BZ3JTOHxhyZKtZHVxRTjXRKZQObGlt1dHsMFyyyW\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-06-20 09:40:48', '2022-06-20 09:40:48'),
(2786, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 09:40:49', '2022-06-20 09:40:49'),
(2787, 1, 'admin/delivery-men/create', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 09:41:54', '2022-06-20 09:41:54'),
(2788, 1, 'admin/delivery-men', 'POST', '101.85.227.97', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":\"123456\",\"identity_number\":\"12345678\",\"zone_id\":\"7\",\"_token\":\"BZ3JTOHxhyZKtZHVxRTjXRKZQObGlt1dHsMFyyyW\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/delivery-men\"}', '2022-06-20 09:42:04', '2022-06-20 09:42:04'),
(2789, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '[]', '2022-06-20 09:42:05', '2022-06-20 09:42:05'),
(2790, 1, 'admin/_handle_action_', 'POST', '101.85.227.97', '{\"_key\":\"13\",\"_model\":\"App_Models_DeliveryMan\",\"_token\":\"BZ3JTOHxhyZKtZHVxRTjXRKZQObGlt1dHsMFyyyW\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-06-20 09:42:10', '2022-06-20 09:42:10'),
(2791, 1, 'admin/delivery-men', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 09:42:10', '2022-06-20 09:42:10'),
(2792, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '[]', '2022-06-20 19:10:13', '2022-06-20 19:10:13'),
(2793, 1, 'admin/_handle_action_', 'POST', '198.255.45.131', '{\"_key\":\"2\",\"_model\":\"App_Models_DeliveryMan\",\"_token\":\"XEfnpCrUfhbYvMnF9dH0qmSyiPhrJfs7grtvJ9Ur\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-06-20 19:10:22', '2022-06-20 19:10:22'),
(2794, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 19:10:25', '2022-06-20 19:10:25'),
(2795, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 19:10:26', '2022-06-20 19:10:26'),
(2796, 1, 'admin/delivery-men', 'POST', '198.255.45.131', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":\"123456\",\"identity_number\":\"12345678\",\"zone_id\":\"6\",\"_token\":\"XEfnpCrUfhbYvMnF9dH0qmSyiPhrJfs7grtvJ9Ur\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/delivery-men\"}', '2022-06-20 19:10:40', '2022-06-20 19:10:40'),
(2797, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '[]', '2022-06-20 19:10:41', '2022-06-20 19:10:41'),
(2798, 1, 'admin/delivery-men', 'POST', '198.255.45.131', '{\"name\":\"dylanahmed\",\"email\":\"mjdazaa87@yahoo.com\",\"phone\":\"13761849016\",\"password\":\"123456\",\"identity_number\":\"12345678\",\"zone_id\":\"6\",\"_token\":\"XEfnpCrUfhbYvMnF9dH0qmSyiPhrJfs7grtvJ9Ur\"}', '2022-06-20 19:11:39', '2022-06-20 19:11:39'),
(2799, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '[]', '2022-06-20 19:11:40', '2022-06-20 19:11:40'),
(2800, 1, 'admin', 'GET', '47.57.184.190', '[]', '2022-06-21 03:11:33', '2022-06-21 03:11:33'),
(2801, 1, 'admin/orders', 'GET', '47.57.184.190', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 03:11:48', '2022-06-21 03:11:48'),
(2802, 1, 'admin/orders/100058', 'GET', '47.57.184.190', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 03:11:52', '2022-06-21 03:11:52'),
(2803, 1, 'admin/orders', 'GET', '47.57.184.190', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 03:12:15', '2022-06-21 03:12:15'),
(2804, 1, 'admin/orders/100058/edit', 'GET', '47.57.184.190', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 03:12:21', '2022-06-21 03:12:21'),
(2805, 1, 'admin/orders/100058/edit', 'GET', '119.13.87.178', '[]', '2022-06-21 05:33:15', '2022-06-21 05:33:15'),
(2806, 1, 'admin/orders/100058/edit', 'GET', '119.13.87.178', '[]', '2022-06-21 05:33:40', '2022-06-21 05:33:40'),
(2807, 1, 'admin/orders/100058/edit', 'GET', '119.13.87.178', '[]', '2022-06-21 05:33:58', '2022-06-21 05:33:58'),
(2808, 1, 'admin/orders/100059', 'GET', '198.255.45.131', '[]', '2022-06-21 06:50:00', '2022-06-21 06:50:00'),
(2809, 1, 'admin', 'GET', '47.57.189.128', '[]', '2022-06-21 06:53:19', '2022-06-21 06:53:19'),
(2810, 1, 'admin/orders', 'GET', '47.57.189.128', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 06:53:22', '2022-06-21 06:53:22'),
(2811, 1, 'admin/orders/100059/edit', 'GET', '47.57.189.128', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 06:53:26', '2022-06-21 06:53:26'),
(2812, 1, 'admin/orders/100059', 'GET', '47.57.189.128', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 06:53:35', '2022-06-21 06:53:35'),
(2813, 1, 'admin/zones', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 06:56:09', '2022-06-21 06:56:09'),
(2814, 1, 'admin/zones/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 06:56:31', '2022-06-21 06:56:31'),
(2815, 1, 'admin/zones', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 08:05:05', '2022-06-21 08:05:05'),
(2816, 1, 'admin/zones/7/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 08:05:11', '2022-06-21 08:05:11'),
(2817, 1, 'admin/zones/7', 'PUT', '198.255.45.131', '{\"name\":\"zone_beijing\",\"coordinates\":\"(39.51071695935,115.7592850192),(39.285739713237,117.26990513638),(39.616586327058,118.35755162076),(40.189680697682,118.47290806607),(40.624690206159,118.21472935513),(40.699694736302,117.19300083951),(40.612181252027,116.14380650357),(40.311264067614,115.4516678317),(39.853146835216,115.43518833951),(39.51071695935,115.7592850192)\",\"status\":\"on\",\"restaurant_wise_topic\":\"test\",\"customer_wise_topic\":\"test\",\"deliveryman_wise_topic\":\"zone_1_delivery_man\",\"_token\":\"Jit0DVvoKbtADBwywFyx4Wc5b94c1RbLeAAAYofR\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/zones\"}', '2022-06-21 08:05:25', '2022-06-21 08:05:25'),
(2818, 1, 'admin/zones', 'GET', '198.255.45.131', '[]', '2022-06-21 08:05:26', '2022-06-21 08:05:26'),
(2819, 1, 'admin/zones/7/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 08:05:32', '2022-06-21 08:05:32'),
(2820, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 17:29:14', '2022-06-21 17:29:14'),
(2821, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '[]', '2022-06-21 17:29:25', '2022-06-21 17:29:25'),
(2822, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 17:30:38', '2022-06-21 17:30:38'),
(2823, 1, 'admin/orders/100058/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 17:30:48', '2022-06-21 17:30:48'),
(2824, 1, 'admin/orders/100058', 'PUT', '198.255.45.131', '{\"order_amount\":\"131\",\"payment_status\":\"unpaid\",\"status_id\":\"2\",\"delivery_man_id\":\"14\",\"confirmed\":\"2022-06-22 01:30:48\",\"accepted\":\"2022-06-22 01:30:48\",\"scheduled\":\"off\",\"processing\":\"2022-06-22 01:30:48\",\"handover\":\"2022-06-22 01:30:48\",\"failed\":\"2022-06-20 15:32:08\",\"scheduled_at\":\"2022-06-20 15:31:53\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"vikram\\\",\\\"contact_person_number\\\":\\\"7977629948\\\",\\\"address\\\":\\\"Shreeji Sadan A-16 Tarkhad 401202 India\\\",\\\"longitude\\\":\\\"72.8150452\\\",\\\"latitude\\\":\\\"19.382514\\\"}\",\"latitude\":null,\"longitude\":null,\"otp\":\"5163\",\"pending\":\"2022-06-20 15:31:53\",\"picked_up\":\"2022-06-22 01:30:48\",\"delivered\":\"2022-06-22 01:30:48\",\"canceled\":\"2022-06-22 01:30:48\",\"_token\":\"hjNzTUsvPi4cLlOFzqXKC3ws3N3zlaOM4CLVDkJf\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/orders\"}', '2022-06-21 17:31:09', '2022-06-21 17:31:09'),
(2825, 1, 'admin/orders/100058/edit', 'GET', '198.255.45.131', '[]', '2022-06-21 17:31:10', '2022-06-21 17:31:10'),
(2826, 1, 'admin/zones', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 17:31:26', '2022-06-21 17:31:26'),
(2827, 1, 'admin/zones/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 17:31:29', '2022-06-21 17:31:29'),
(2828, 1, 'admin/business-settings', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 17:32:34', '2022-06-21 17:32:34'),
(2829, 1, 'admin/zones', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 17:32:42', '2022-06-21 17:32:42'),
(2830, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 17:32:45', '2022-06-21 17:32:45'),
(2831, 1, 'admin', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 17:32:48', '2022-06-21 17:32:48'),
(2832, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 17:36:47', '2022-06-21 17:36:47'),
(2833, 1, 'admin/orders/100059/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 17:36:52', '2022-06-21 17:36:52'),
(2834, 1, 'admin/zones', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 17:38:18', '2022-06-21 17:38:18'),
(2835, 1, 'admin/zones/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 17:38:20', '2022-06-21 17:38:20'),
(2836, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 17:38:57', '2022-06-21 17:38:57'),
(2837, 1, 'admin/orders/100059/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 17:39:10', '2022-06-21 17:39:10'),
(2838, 1, 'admin/orders/100059', 'PUT', '198.255.45.131', '{\"order_amount\":\"170\",\"payment_status\":\"unpaid\",\"status_id\":\"6\",\"delivery_man_id\":\"14\",\"confirmed\":\"2022-06-22 01:39:10\",\"accepted\":\"2022-06-22 01:39:10\",\"scheduled\":\"off\",\"processing\":\"2022-06-22 01:39:10\",\"handover\":\"2022-06-22 01:39:10\",\"failed\":\"2022-06-22 01:39:10\",\"scheduled_at\":\"2022-06-21 14:49:01\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"aaaananna\\\",\\\"contact_person_number\\\":\\\"010123123\\\",\\\"address\\\":\\\"Georgia Ave Petworth Station, District of Freedom#8573311~!#, Washington, DC 20036, USA\\\",\\\"longitude\\\":\\\"-77.0368719\\\",\\\"latitude\\\":\\\"38.9071927\\\"}\",\"latitude\":null,\"longitude\":null,\"otp\":\"2167\",\"pending\":\"2022-06-21 14:49:01\",\"picked_up\":\"2022-06-22 01:39:10\",\"delivered\":\"2022-06-22 01:39:10\",\"canceled\":\"2022-06-22 01:39:10\",\"_token\":\"hjNzTUsvPi4cLlOFzqXKC3ws3N3zlaOM4CLVDkJf\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/orders\"}', '2022-06-21 17:39:25', '2022-06-21 17:39:25'),
(2839, 1, 'admin/orders/100059/edit', 'GET', '198.255.45.131', '[]', '2022-06-21 17:39:26', '2022-06-21 17:39:26');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(2840, 1, 'admin/orders/100060', 'GET', '198.255.45.131', '[]', '2022-06-21 17:44:24', '2022-06-21 17:44:24'),
(2841, 1, 'admin/orders/100061', 'GET', '198.255.45.131', '[]', '2022-06-21 17:45:03', '2022-06-21 17:45:03'),
(2842, 1, 'admin/zones', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 18:57:58', '2022-06-21 18:57:58'),
(2843, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 18:58:03', '2022-06-21 18:58:03'),
(2844, 1, 'admin/business-settings', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 18:58:07', '2022-06-21 18:58:07'),
(2845, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 18:58:52', '2022-06-21 18:58:52'),
(2846, 1, 'admin/orders/100061/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 18:58:57', '2022-06-21 18:58:57'),
(2847, 1, 'admin/orders/100061', 'PUT', '198.255.45.131', '{\"order_amount\":\"10\",\"payment_status\":\"paid\",\"status_id\":\"2\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-22 01:45:19\",\"accepted\":\"2022-06-22 02:58:57\",\"scheduled\":\"off\",\"processing\":\"2022-06-22 02:58:57\",\"handover\":\"2022-06-22 02:58:57\",\"failed\":\"2022-06-22 01:45:06\",\"scheduled_at\":\"2022-06-22 01:44:54\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"latitude\":null,\"longitude\":null,\"otp\":\"4483\",\"pending\":\"2022-06-22 01:44:54\",\"picked_up\":\"2022-06-22 02:58:57\",\"delivered\":\"2022-06-22 02:58:57\",\"canceled\":\"2022-06-22 02:58:57\",\"_token\":\"hjNzTUsvPi4cLlOFzqXKC3ws3N3zlaOM4CLVDkJf\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/orders\"}', '2022-06-21 18:59:10', '2022-06-21 18:59:10'),
(2848, 1, 'admin/orders/100061/edit', 'GET', '198.255.45.131', '[]', '2022-06-21 18:59:11', '2022-06-21 18:59:11'),
(2849, 1, 'admin/business-settings', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 19:18:04', '2022-06-21 19:18:04'),
(2850, 1, 'admin/business-settings', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 19:18:34', '2022-06-21 19:18:34'),
(2851, 1, 'admin', 'GET', '39.144.179.73', '[]', '2022-06-21 19:19:27', '2022-06-21 19:19:27'),
(2852, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 19:19:35', '2022-06-21 19:19:35'),
(2853, 1, 'admin/business-settings', 'GET', '39.144.179.73', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 19:19:38', '2022-06-21 19:19:38'),
(2854, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 19:19:40', '2022-06-21 19:19:40'),
(2855, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 19:19:42', '2022-06-21 19:19:42'),
(2856, 1, 'admin/orders/100061/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 19:19:46', '2022-06-21 19:19:46'),
(2857, 1, 'admin/orders/100061', 'PUT', '198.255.45.131', '{\"order_amount\":\"10\",\"payment_status\":\"paid\",\"status_id\":\"2\",\"delivery_man_id\":null,\"confirmed\":\"2022-06-22 01:45:19\",\"accepted\":\"2022-06-22 03:19:46\",\"scheduled\":\"off\",\"processing\":\"2022-06-22 03:19:46\",\"handover\":\"2022-06-22 03:19:46\",\"failed\":\"2022-06-22 01:45:06\",\"scheduled_at\":\"2022-06-22 01:44:54\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"latitude\":null,\"longitude\":null,\"otp\":\"4483\",\"pending\":\"2022-06-22 01:44:54\",\"picked_up\":\"2022-06-22 03:19:46\",\"delivered\":\"2022-06-22 03:19:46\",\"canceled\":\"2022-06-22 03:19:46\",\"_token\":\"hjNzTUsvPi4cLlOFzqXKC3ws3N3zlaOM4CLVDkJf\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/orders\"}', '2022-06-21 19:19:50', '2022-06-21 19:19:50'),
(2858, 1, 'admin/orders/100061/edit', 'GET', '198.255.45.131', '[]', '2022-06-21 19:19:51', '2022-06-21 19:19:51'),
(2859, 1, 'admin/orders/100062', 'GET', '198.255.45.131', '[]', '2022-06-21 20:03:05', '2022-06-21 20:03:05'),
(2860, 1, 'admin/business-settings', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 22:14:53', '2022-06-21 22:14:53'),
(2861, 1, 'admin/zones', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 22:14:56', '2022-06-21 22:14:56'),
(2862, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 22:14:59', '2022-06-21 22:14:59'),
(2863, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 22:15:28', '2022-06-21 22:15:28'),
(2864, 1, 'admin/orders/100063', 'GET', '114.95.225.29', '[]', '2022-06-21 23:07:06', '2022-06-21 23:07:06'),
(2865, 1, 'admin/business-settings', 'GET', '114.95.225.29', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 23:07:57', '2022-06-21 23:07:57'),
(2866, 1, 'admin/delivery-men', 'GET', '114.95.225.29', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 23:08:02', '2022-06-21 23:08:02'),
(2867, 1, 'admin/zones', 'GET', '114.95.225.29', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 23:08:11', '2022-06-21 23:08:11'),
(2868, 1, 'admin/zones/create', 'GET', '114.95.225.29', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 23:08:13', '2022-06-21 23:08:13'),
(2869, 1, 'admin/orders', 'GET', '114.95.225.29', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 23:22:04', '2022-06-21 23:22:04'),
(2870, 1, 'admin/users', 'GET', '114.95.225.29', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 23:22:51', '2022-06-21 23:22:51'),
(2871, 1, 'admin/users', 'GET', '114.95.225.29', '{\"_pjax\":\"#pjax-container\",\"page\":\"11\"}', '2022-06-21 23:23:02', '2022-06-21 23:23:02'),
(2872, 1, 'admin/users', 'GET', '198.255.45.131', '{\"page\":\"11\"}', '2022-06-21 23:53:06', '2022-06-21 23:53:06'),
(2873, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 23:53:13', '2022-06-21 23:53:13'),
(2874, 1, 'admin/orders/100067', 'GET', '198.255.45.131', '[]', '2022-06-21 23:53:24', '2022-06-21 23:53:24'),
(2875, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 23:53:53', '2022-06-21 23:53:53'),
(2876, 1, 'admin/orders/100067/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 23:53:56', '2022-06-21 23:53:56'),
(2877, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 23:54:11', '2022-06-21 23:54:11'),
(2878, 1, 'admin/business-settings', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 23:54:15', '2022-06-21 23:54:15'),
(2879, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-21 23:54:35', '2022-06-21 23:54:35'),
(2880, 1, 'admin/business-settings', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 00:40:03', '2022-06-22 00:40:03'),
(2881, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 00:40:06', '2022-06-22 00:40:06'),
(2882, 1, 'admin/zones', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 00:40:08', '2022-06-22 00:40:08'),
(2883, 1, 'admin/zones/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 00:40:10', '2022-06-22 00:40:10'),
(2884, 1, 'admin/business-settings', 'GET', '39.144.179.70', '[]', '2022-06-22 01:22:07', '2022-06-22 01:22:07'),
(2885, 1, 'admin/business-settings', 'GET', '39.144.179.70', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 01:22:47', '2022-06-22 01:22:47'),
(2886, 1, 'admin/business-settings', 'GET', '39.144.179.70', '[]', '2022-06-22 01:22:50', '2022-06-22 01:22:50'),
(2887, 1, 'admin/business-settings', 'GET', '39.144.179.70', '[]', '2022-06-22 01:23:27', '2022-06-22 01:23:27'),
(2888, 1, 'admin/business-settings', 'GET', '39.144.179.70', '[]', '2022-06-22 01:24:31', '2022-06-22 01:24:31'),
(2889, 1, 'admin/business-settings', 'GET', '39.144.179.70', '[]', '2022-06-22 01:25:45', '2022-06-22 01:25:45'),
(2890, 1, 'admin/business-settings', 'GET', '39.144.179.70', '[]', '2022-06-22 01:35:04', '2022-06-22 01:35:04'),
(2891, 1, 'admin/business-settings/4/edit', 'GET', '39.144.179.70', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 01:35:15', '2022-06-22 01:35:15'),
(2892, 1, 'admin/business-settings', 'GET', '39.144.179.70', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 01:35:18', '2022-06-22 01:35:18'),
(2893, 1, 'admin/orders', 'GET', '39.144.179.70', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 01:35:32', '2022-06-22 01:35:32'),
(2894, 1, 'admin/orders/100062/edit', 'GET', '39.144.179.70', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 01:36:05', '2022-06-22 01:36:05'),
(2895, 1, 'admin/orders/100062/edit', 'GET', '47.75.109.201', '[]', '2022-06-22 01:43:20', '2022-06-22 01:43:20'),
(2896, 1, 'admin/orders/100062/edit', 'GET', '47.75.109.201', '[]', '2022-06-22 01:48:20', '2022-06-22 01:48:20'),
(2897, 1, 'admin/orders/100062', 'PUT', '47.75.109.201', '{\"order_amount\":\"66\",\"payment_status\":\"unpaid\",\"status_id\":\"6\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-22 09:43:20\",\"accepted\":\"2022-06-22 09:43:20\",\"scheduled\":\"off\",\"processing\":\"2022-06-22 09:43:20\",\"handover\":\"2022-06-22 09:43:20\",\"failed\":\"2022-06-22 04:03:10\",\"scheduled_at\":\"2022-06-22 04:02:49\",\"delivery_address_id\":null,\"order_note\":\"fffggg\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"5492\",\"pending\":\"2022-06-22 04:02:49\",\"picked_up\":\"2022-06-22 04:02:49\",\"delivered\":\"2022-06-22 09:43:20\",\"canceled\":\"2022-06-22 09:43:20\",\"_token\":\"VoWmdj3TeLFQY0AxQWf7NC9JEWMlEMuuL8QozVkx\",\"_method\":\"PUT\"}', '2022-06-22 01:49:26', '2022-06-22 01:49:26'),
(2898, 1, 'admin/orders/100062/edit', 'GET', '47.75.109.201', '[]', '2022-06-22 01:49:27', '2022-06-22 01:49:27'),
(2899, 1, 'admin/orders', 'GET', '47.75.109.201', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 02:04:10', '2022-06-22 02:04:10'),
(2900, 1, 'admin/orders/100065/edit', 'GET', '47.75.109.201', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 02:04:13', '2022-06-22 02:04:13'),
(2901, 1, 'admin/orders/100065', 'PUT', '47.75.109.201', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"status_id\":\"2\",\"delivery_man_id\":null,\"confirmed\":\"2022-06-22 10:04:13\",\"accepted\":\"2022-06-22 10:04:13\",\"scheduled\":\"off\",\"processing\":\"2022-06-22 10:04:13\",\"handover\":\"2022-06-22 10:04:13\",\"failed\":\"2022-06-22 07:15:18\",\"scheduled_at\":\"2022-06-22 07:15:09\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"7416\",\"pending\":\"2022-06-22 07:15:09\",\"picked_up\":\"2022-06-22 10:04:13\",\"delivered\":\"2022-06-22 10:04:13\",\"canceled\":\"2022-06-22 10:04:13\",\"_token\":\"VoWmdj3TeLFQY0AxQWf7NC9JEWMlEMuuL8QozVkx\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/orders\"}', '2022-06-22 02:04:32', '2022-06-22 02:04:32'),
(2902, 1, 'admin/orders/100065/edit', 'GET', '47.75.109.201', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 02:06:37', '2022-06-22 02:06:37'),
(2903, 1, 'admin/orders', 'GET', '47.75.109.201', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 02:06:45', '2022-06-22 02:06:45'),
(2904, 1, 'admin/orders/100067/edit', 'GET', '47.75.109.201', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 02:06:50', '2022-06-22 02:06:50'),
(2905, 1, 'admin/orders', 'GET', '47.75.109.201', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 02:07:00', '2022-06-22 02:07:00'),
(2906, 1, 'admin/orders', 'GET', '47.75.109.201', '[]', '2022-06-22 02:07:08', '2022-06-22 02:07:08'),
(2907, 1, 'admin/orders/100064/edit', 'GET', '47.75.109.201', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 02:07:16', '2022-06-22 02:07:16'),
(2908, 1, 'admin/orders/100064', 'PUT', '47.75.109.201', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"status_id\":\"2\",\"delivery_man_id\":null,\"confirmed\":\"2022-06-22 10:07:16\",\"accepted\":\"2022-06-22 10:07:16\",\"scheduled\":\"off\",\"processing\":\"2022-06-22 10:07:16\",\"handover\":\"2022-06-22 10:07:16\",\"failed\":\"2022-06-22 10:07:16\",\"scheduled_at\":\"2022-06-22 07:14:37\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"9658\",\"pending\":\"2022-06-22 07:14:37\",\"picked_up\":\"2022-06-22 10:07:16\",\"delivered\":\"2022-06-22 10:07:16\",\"canceled\":\"2022-06-22 10:07:16\",\"_token\":\"VoWmdj3TeLFQY0AxQWf7NC9JEWMlEMuuL8QozVkx\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/orders\"}', '2022-06-22 02:07:28', '2022-06-22 02:07:28'),
(2909, 1, 'admin/orders/100064/edit', 'GET', '47.75.109.201', '[]', '2022-06-22 02:07:29', '2022-06-22 02:07:29'),
(2910, 1, 'admin/orders/100064/edit', 'GET', '47.75.109.201', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 02:09:09', '2022-06-22 02:09:09'),
(2911, 1, 'admin/orders', 'GET', '47.75.109.201', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 02:09:19', '2022-06-22 02:09:19'),
(2912, 1, 'admin/orders/100062/edit', 'GET', '47.75.109.201', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 02:09:24', '2022-06-22 02:09:24'),
(2913, 1, 'admin/orders/100062', 'PUT', '47.75.109.201', '{\"order_amount\":\"66\",\"payment_status\":\"unpaid\",\"status_id\":\"2\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-22 09:43:20\",\"accepted\":\"2022-06-22 09:43:20\",\"scheduled\":\"off\",\"processing\":\"2022-06-22 09:43:20\",\"handover\":\"2022-06-22 09:43:20\",\"failed\":\"2022-06-22 04:03:10\",\"scheduled_at\":\"2022-06-22 04:02:49\",\"delivery_address_id\":null,\"order_note\":\"fffggg\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"5492\",\"pending\":\"2022-06-22 04:02:49\",\"picked_up\":\"2022-06-22 04:02:49\",\"delivered\":\"2022-06-22 09:43:20\",\"canceled\":\"2022-06-22 09:43:20\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"Jasurbek\\\",\\\"contact_person_number\\\":\\\"+998908701671\\\",\\\"address\\\":\\\"66G9+2V7 \\\\u0422\\\\u043e\\\\u0448\\\\u043a\\\\u0435\\\\u043d\\\\u0442 100085 Uzbekistan\\\",\\\"longitude\\\":\\\"69.2190575\\\",\\\"latitude\\\":\\\"41.2249374\\\"}\",\"_token\":\"VoWmdj3TeLFQY0AxQWf7NC9JEWMlEMuuL8QozVkx\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/orders\"}', '2022-06-22 02:09:43', '2022-06-22 02:09:43'),
(2914, 1, 'admin/orders', 'GET', '47.75.109.201', '[]', '2022-06-22 02:09:44', '2022-06-22 02:09:44'),
(2915, 1, 'admin/orders/100067/edit', 'GET', '47.75.109.201', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 02:09:51', '2022-06-22 02:09:51'),
(2916, 1, 'admin/orders/100067', 'PUT', '47.75.109.201', '{\"order_amount\":\"48\",\"payment_status\":\"paid\",\"status_id\":\"1\",\"delivery_man_id\":null,\"confirmed\":\"2022-06-22 07:51:08\",\"accepted\":\"2022-06-22 10:09:51\",\"scheduled\":\"off\",\"processing\":\"2022-06-22 10:09:51\",\"handover\":\"2022-06-22 10:09:51\",\"failed\":\"2022-06-22 07:50:39\",\"scheduled_at\":\"2022-06-22 07:50:30\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"4018\",\"pending\":\"2022-06-22 07:50:30\",\"picked_up\":\"2022-06-22 10:09:51\",\"delivered\":\"2022-06-22 10:09:51\",\"canceled\":\"2022-06-22 10:09:51\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"_token\":\"VoWmdj3TeLFQY0AxQWf7NC9JEWMlEMuuL8QozVkx\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/orders\"}', '2022-06-22 02:10:01', '2022-06-22 02:10:01'),
(2917, 1, 'admin/orders/100067/edit', 'GET', '47.75.109.201', '[]', '2022-06-22 02:10:02', '2022-06-22 02:10:02'),
(2918, 1, 'admin/orders', 'GET', '47.75.109.201', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 02:10:13', '2022-06-22 02:10:13'),
(2919, 1, 'admin/orders/100057/edit', 'GET', '47.75.109.201', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 02:10:27', '2022-06-22 02:10:27'),
(2920, 1, 'admin/orders/100057', 'PUT', '47.75.109.201', '{\"order_amount\":\"34\",\"payment_status\":\"unpaid\",\"status_id\":\"2\",\"delivery_man_id\":null,\"confirmed\":\"2022-06-22 10:10:27\",\"accepted\":\"2022-06-22 10:10:27\",\"scheduled\":\"off\",\"processing\":\"2022-06-22 10:10:27\",\"handover\":\"2022-06-22 10:10:27\",\"failed\":\"2022-06-22 10:10:27\",\"scheduled_at\":\"2022-06-20 13:51:55\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"5201\",\"pending\":\"2022-06-20 13:51:55\",\"picked_up\":\"2022-06-22 10:10:27\",\"delivered\":\"2022-06-22 10:10:27\",\"canceled\":\"2022-06-22 10:10:27\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"abdo\\\",\\\"contact_person_number\\\":\\\"12121234\\\",\\\"address\\\":\\\"455X+G6W Oued Sly  Algeria\\\",\\\"longitude\\\":\\\"1.1974199\\\",\\\"latitude\\\":\\\"36.1084765\\\"}\",\"_token\":\"VoWmdj3TeLFQY0AxQWf7NC9JEWMlEMuuL8QozVkx\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/orders\"}', '2022-06-22 02:10:35', '2022-06-22 02:10:35'),
(2921, 1, 'admin/orders/100057/edit', 'GET', '47.75.109.201', '[]', '2022-06-22 02:10:36', '2022-06-22 02:10:36'),
(2922, 1, 'admin/orders', 'GET', '47.75.109.201', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 02:13:36', '2022-06-22 02:13:36'),
(2923, 1, 'admin/orders/100067/edit', 'GET', '47.75.109.201', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 02:13:41', '2022-06-22 02:13:41'),
(2924, 1, 'admin/orders/100067', 'PUT', '47.75.109.201', '{\"order_amount\":\"48\",\"payment_status\":\"paid\",\"status_id\":\"2\",\"delivery_man_id\":null,\"confirmed\":\"2022-06-22 07:51:08\",\"accepted\":\"2022-06-22 10:09:51\",\"scheduled\":\"off\",\"processing\":\"2022-06-22 10:09:51\",\"handover\":\"2022-06-22 10:09:51\",\"failed\":\"2022-06-22 07:50:39\",\"scheduled_at\":\"2022-06-22 07:50:30\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"4018\",\"pending\":\"2022-06-22 07:50:30\",\"picked_up\":\"2022-06-22 10:09:51\",\"delivered\":\"2022-06-22 10:09:51\",\"canceled\":\"2022-06-22 10:09:51\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"_token\":\"VoWmdj3TeLFQY0AxQWf7NC9JEWMlEMuuL8QozVkx\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/orders\"}', '2022-06-22 02:13:49', '2022-06-22 02:13:49'),
(2925, 1, 'admin/orders/100067/edit', 'GET', '47.75.109.201', '[]', '2022-06-22 02:13:50', '2022-06-22 02:13:50'),
(2926, 1, 'admin/orders/100067/edit', 'GET', '47.75.109.201', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 02:15:13', '2022-06-22 02:15:13'),
(2927, 1, 'admin/orders/100067', 'PUT', '47.75.109.201', '{\"order_amount\":\"48\",\"payment_status\":\"paid\",\"status_id\":\"2\",\"delivery_man_id\":null,\"confirmed\":\"2022-06-22 07:51:08\",\"accepted\":\"2022-06-22 10:09:51\",\"scheduled\":\"off\",\"processing\":\"2022-06-22 10:09:51\",\"handover\":\"2022-06-22 10:09:51\",\"failed\":\"2022-06-22 07:50:39\",\"scheduled_at\":\"2022-06-22 07:50:30\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"4018\",\"pending\":\"2022-06-22 07:50:30\",\"picked_up\":\"2022-06-22 10:09:51\",\"delivered\":\"2022-06-22 10:09:51\",\"canceled\":\"2022-06-22 10:09:51\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"_token\":\"VoWmdj3TeLFQY0AxQWf7NC9JEWMlEMuuL8QozVkx\",\"_method\":\"PUT\"}', '2022-06-22 02:15:23', '2022-06-22 02:15:23'),
(2928, 1, 'admin/orders/100067/edit', 'GET', '47.75.109.201', '[]', '2022-06-22 02:15:24', '2022-06-22 02:15:24'),
(2929, 1, 'admin/orders/100067/edit', 'GET', '47.75.109.201', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 02:16:23', '2022-06-22 02:16:23'),
(2930, 1, 'admin/orders/100067', 'PUT', '47.75.109.201', '{\"order_amount\":\"48\",\"payment_status\":\"paid\",\"status_id\":\"2\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-22 07:51:08\",\"accepted\":\"2022-06-22 10:09:51\",\"scheduled\":\"off\",\"processing\":\"2022-06-22 10:09:51\",\"handover\":\"2022-06-22 10:09:51\",\"failed\":\"2022-06-22 07:50:39\",\"scheduled_at\":\"2022-06-22 07:50:30\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"4018\",\"pending\":\"2022-06-22 07:50:30\",\"picked_up\":\"2022-06-22 10:09:51\",\"delivered\":\"2022-06-22 10:09:51\",\"canceled\":\"2022-06-22 10:09:51\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"_token\":\"VoWmdj3TeLFQY0AxQWf7NC9JEWMlEMuuL8QozVkx\",\"_method\":\"PUT\"}', '2022-06-22 02:16:35', '2022-06-22 02:16:35'),
(2931, 1, 'admin/orders', 'GET', '47.75.109.201', '[]', '2022-06-22 02:16:36', '2022-06-22 02:16:36'),
(2932, 1, 'admin/business-settings', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 02:42:26', '2022-06-22 02:42:26'),
(2933, 1, 'admin/zones', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 02:42:31', '2022-06-22 02:42:31'),
(2934, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 02:42:36', '2022-06-22 02:42:36'),
(2935, 1, 'admin/delivery-men/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 02:42:44', '2022-06-22 02:42:44'),
(2936, 1, 'admin/zones', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 02:42:50', '2022-06-22 02:42:50'),
(2937, 1, 'admin/zones/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 02:42:53', '2022-06-22 02:42:53'),
(2938, 1, 'admin/food-types', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 02:43:40', '2022-06-22 02:43:40'),
(2939, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 02:43:44', '2022-06-22 02:43:44'),
(2940, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 02:46:57', '2022-06-22 02:46:57'),
(2941, 1, 'admin/foods', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 02:46:59', '2022-06-22 02:46:59'),
(2942, 1, 'admin/business-settings', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 02:47:02', '2022-06-22 02:47:02'),
(2943, 1, 'admin/business-settings', 'GET', '198.255.45.131', '[]', '2022-06-22 04:14:41', '2022-06-22 04:14:41'),
(2944, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 04:14:53', '2022-06-22 04:14:53'),
(2945, 1, 'admin/orders/100067/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 04:14:59', '2022-06-22 04:14:59'),
(2946, 1, 'admin/orders/100067', 'PUT', '198.255.45.131', '{\"order_amount\":\"48\",\"payment_status\":\"paid\",\"status_id\":\"5\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-22 07:51:08\",\"accepted\":\"2022-06-22 10:09:51\",\"scheduled\":\"off\",\"processing\":\"2022-06-22 10:09:51\",\"handover\":\"2022-06-22 10:09:51\",\"failed\":\"2022-06-22 07:50:39\",\"scheduled_at\":\"2022-06-22 07:50:30\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"4018\",\"pending\":\"2022-06-22 07:50:30\",\"picked_up\":\"2022-06-22 10:09:51\",\"delivered\":\"2022-06-22 10:09:51\",\"canceled\":\"2022-06-22 10:09:51\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"_token\":\"NFL2vuSC4rRWZp30Ipzc0LmdAZfYe7oqwoaugV4B\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/dbf.dbestech.com\\/admin\\/orders\"}', '2022-06-22 04:15:12', '2022-06-22 04:15:12'),
(2947, 1, 'admin/orders/100067/edit', 'GET', '198.255.45.131', '[]', '2022-06-22 04:15:13', '2022-06-22 04:15:13'),
(2948, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 04:15:47', '2022-06-22 04:15:47'),
(2949, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 04:15:55', '2022-06-22 04:15:55'),
(2950, 1, 'admin/zones', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 04:15:59', '2022-06-22 04:15:59'),
(2951, 1, 'admin/zones/create', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 04:16:01', '2022-06-22 04:16:01'),
(2952, 1, 'admin/orders/100068', 'GET', '198.255.45.131', '[]', '2022-06-22 05:33:58', '2022-06-22 05:33:58'),
(2953, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 05:37:14', '2022-06-22 05:37:14'),
(2954, 1, 'admin/business-settings', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 05:37:19', '2022-06-22 05:37:19'),
(2955, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 05:37:22', '2022-06-22 05:37:22'),
(2956, 1, 'admin/zones', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 05:37:24', '2022-06-22 05:37:24'),
(2957, 1, 'admin/zones/6/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 05:37:29', '2022-06-22 05:37:29'),
(2958, 1, 'admin', 'GET', '198.255.45.131', '[]', '2022-06-22 07:11:43', '2022-06-22 07:11:43'),
(2959, 1, 'admin/business-settings', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 07:11:50', '2022-06-22 07:11:50'),
(2960, 1, 'admin/business-settings/21/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 07:11:57', '2022-06-22 07:11:57'),
(2961, 1, 'admin/business-settings/21', 'PUT', '198.255.45.131', '{\"key\":\"maintenance_mode\",\"content\":\"1\",\"_token\":\"qt8tqVihEOZZXAMFlbSRBAdxzFEHkxoXovADkfv8\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/business-settings\"}', '2022-06-22 07:12:04', '2022-06-22 07:12:04'),
(2962, 1, 'admin/business-settings', 'GET', '198.255.45.131', '[]', '2022-06-22 07:12:05', '2022-06-22 07:12:05'),
(2963, 1, 'admin/business-settings', 'GET', '198.255.45.131', '[]', '2022-06-22 07:12:09', '2022-06-22 07:12:09'),
(2964, 1, 'admin/business-settings/21/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 07:12:14', '2022-06-22 07:12:14'),
(2965, 1, 'admin/business-settings/21', 'PUT', '198.255.45.131', '{\"key\":\"maintenance_mode\",\"content\":\"0\",\"_token\":\"qt8tqVihEOZZXAMFlbSRBAdxzFEHkxoXovADkfv8\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/business-settings\"}', '2022-06-22 07:12:19', '2022-06-22 07:12:19'),
(2966, 1, 'admin/business-settings', 'GET', '198.255.45.131', '[]', '2022-06-22 07:12:20', '2022-06-22 07:12:20'),
(2967, 1, 'admin/business-settings/21/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 07:12:44', '2022-06-22 07:12:44'),
(2968, 1, 'admin/business-settings', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 07:12:48', '2022-06-22 07:12:48'),
(2969, 1, 'admin/business-settings/21/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-22 07:12:53', '2022-06-22 07:12:53'),
(2970, 1, 'admin/business-settings/21/edit', 'GET', '198.255.45.131', '[]', '2022-06-23 09:41:18', '2022-06-23 09:41:18'),
(2971, 1, 'admin', 'GET', '185.251.116.122', '[]', '2022-06-24 18:21:29', '2022-06-24 18:21:29'),
(2972, 1, 'admin', 'GET', '185.251.116.122', '[]', '2022-06-24 18:21:32', '2022-06-24 18:21:32'),
(2973, 1, 'admin/business-settings', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-24 18:23:21', '2022-06-24 18:23:21'),
(2974, 1, 'admin/business-settings/21/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-24 18:23:38', '2022-06-24 18:23:38'),
(2975, 1, 'admin/business-settings/21', 'PUT', '185.251.116.122', '{\"key\":\"maintenance_mode\",\"content\":\"1\",\"_token\":\"Wf14qavRYjbFBRCkXOBAOtoVS3zOhVm9yOsg8Sqk\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/business-settings\"}', '2022-06-24 18:23:47', '2022-06-24 18:23:47'),
(2976, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-06-24 18:23:50', '2022-06-24 18:23:50'),
(2977, 1, 'admin/business-settings/21/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-24 18:23:58', '2022-06-24 18:23:58'),
(2978, 1, 'admin/business-settings/21', 'PUT', '185.251.116.122', '{\"key\":\"maintenance_mode\",\"content\":\"0\",\"_token\":\"Wf14qavRYjbFBRCkXOBAOtoVS3zOhVm9yOsg8Sqk\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/business-settings\"}', '2022-06-24 18:24:04', '2022-06-24 18:24:04'),
(2979, 1, 'admin/business-settings', 'GET', '185.251.116.122', '[]', '2022-06-24 18:24:07', '2022-06-24 18:24:07'),
(2980, 1, 'admin/orders', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-24 20:36:48', '2022-06-24 20:36:48'),
(2981, 1, 'admin/orders/100062/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-24 20:36:59', '2022-06-24 20:36:59'),
(2982, 1, 'admin/orders/100062', 'PUT', '185.251.116.122', '{\"order_amount\":\"66\",\"payment_status\":\"unpaid\",\"status_id\":\"2\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-22 09:43:20\",\"accepted\":\"2022-06-22 09:43:20\",\"scheduled\":\"off\",\"processing\":\"2022-06-22 09:43:20\",\"handover\":\"2022-06-22 09:43:20\",\"failed\":\"2022-06-22 04:03:10\",\"scheduled_at\":\"2022-06-22 04:02:49\",\"delivery_address_id\":null,\"order_note\":\"fffggg\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"5492\",\"pending\":\"2022-06-22 04:02:49\",\"picked_up\":\"2022-06-22 04:02:49\",\"delivered\":\"2022-06-22 09:43:20\",\"canceled\":\"2022-06-22 09:43:20\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"Jasurbek\\\",\\\"contact_person_number\\\":\\\"+998908701671\\\",\\\"address\\\":\\\"66G9+2V7 \\\\u0422\\\\u043e\\\\u0448\\\\u043a\\\\u0435\\\\u043d\\\\u0442 100085 Uzbekistan\\\",\\\"longitude\\\":\\\"69.2190575\\\",\\\"latitude\\\":\\\"41.2249374\\\"}\",\"_token\":\"cWd1vpS3PAQaBtY2tdARTaoMkjosYjX0h8bjd9kQ\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/orders\"}', '2022-06-24 20:37:15', '2022-06-24 20:37:15'),
(2983, 1, 'admin/orders', 'GET', '185.251.116.122', '[]', '2022-06-24 20:37:17', '2022-06-24 20:37:17'),
(2984, 1, 'admin/orders/100068/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-24 20:37:38', '2022-06-24 20:37:38'),
(2985, 1, 'admin/orders/100068', 'PUT', '185.251.116.122', '{\"order_amount\":\"152\",\"payment_status\":\"unpaid\",\"status_id\":\"2\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-25 04:37:38\",\"accepted\":\"2022-06-25 04:37:38\",\"scheduled\":\"off\",\"processing\":\"2022-06-25 04:37:38\",\"handover\":\"2022-06-25 04:37:38\",\"failed\":\"2022-06-25 04:37:38\",\"scheduled_at\":\"2022-06-22 13:32:02\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"8313\",\"pending\":\"2022-06-22 13:32:02\",\"picked_up\":\"2022-06-25 04:37:38\",\"delivered\":\"2022-06-25 04:37:38\",\"canceled\":\"2022-06-25 04:37:38\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"Dung\\\",\\\"contact_person_number\\\":\\\"+84935391368\\\",\\\"address\\\":\\\"Qu\\\\u1eadn 9   Vi\\\\u1ec7t Nam\\\",\\\"longitude\\\":\\\"106.8304911\\\",\\\"latitude\\\":\\\"10.8373255\\\"}\",\"_token\":\"cWd1vpS3PAQaBtY2tdARTaoMkjosYjX0h8bjd9kQ\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/orders\"}', '2022-06-24 20:38:06', '2022-06-24 20:38:06'),
(2986, 1, 'admin/orders', 'GET', '185.251.116.122', '[]', '2022-06-24 20:38:07', '2022-06-24 20:38:07'),
(2987, 1, 'admin/orders/100067/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-24 20:38:43', '2022-06-24 20:38:43'),
(2988, 1, 'admin/orders/100067', 'PUT', '185.251.116.122', '{\"order_amount\":\"48\",\"payment_status\":\"paid\",\"status_id\":\"4\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-22 07:51:08\",\"accepted\":\"2022-06-22 10:09:51\",\"scheduled\":\"off\",\"processing\":\"2022-06-22 10:09:51\",\"handover\":\"2022-06-22 10:09:51\",\"failed\":\"2022-06-22 07:50:39\",\"scheduled_at\":\"2022-06-22 07:50:30\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"4018\",\"pending\":\"2022-06-22 07:50:30\",\"picked_up\":\"2022-06-22 10:09:51\",\"delivered\":\"2022-06-22 10:09:51\",\"canceled\":\"2022-06-22 10:09:51\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"_token\":\"cWd1vpS3PAQaBtY2tdARTaoMkjosYjX0h8bjd9kQ\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/orders\"}', '2022-06-24 20:38:59', '2022-06-24 20:38:59'),
(2989, 1, 'admin/orders', 'GET', '185.251.116.122', '[]', '2022-06-24 20:39:01', '2022-06-24 20:39:01'),
(2990, 1, 'admin/orders/100069', 'GET', '185.251.116.122', '[]', '2022-06-24 20:59:12', '2022-06-24 20:59:12'),
(2991, 1, 'admin/orders/100070', 'GET', '185.251.116.122', '[]', '2022-06-24 20:59:14', '2022-06-24 20:59:14'),
(2992, 1, 'admin/orders', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-24 20:59:27', '2022-06-24 20:59:27'),
(2993, 1, 'admin/orders/100070/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-24 21:02:02', '2022-06-24 21:02:02'),
(2994, 1, 'admin/orders/100070', 'PUT', '185.251.116.122', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"status_id\":\"2\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-25 05:02:02\",\"accepted\":\"2022-06-25 05:02:02\",\"scheduled\":\"off\",\"processing\":\"2022-06-25 05:02:02\",\"handover\":\"2022-06-25 05:02:02\",\"failed\":\"2022-06-25 05:00:06\",\"scheduled_at\":\"2022-06-25 04:59:08\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"9775\",\"pending\":\"2022-06-25 04:59:08\",\"picked_up\":\"2022-06-25 05:02:02\",\"delivered\":\"2022-06-25 05:02:02\",\"canceled\":\"2022-06-25 05:02:02\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"Xyz\\\",\\\"contact_person_number\\\":\\\"898989\\\",\\\"address\\\":\\\"China, \\\\u4e0a\\\\u6d77 Songjiang District, \\\\u4e5d\\\\u4ead\\\\u93ae\\\",\\\"longitude\\\":\\\"136.03100191801786\\\",\\\"latitude\\\":\\\"32.95591446989211\\\"}\",\"_token\":\"cWd1vpS3PAQaBtY2tdARTaoMkjosYjX0h8bjd9kQ\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/orders\"}', '2022-06-24 21:02:16', '2022-06-24 21:02:16'),
(2995, 1, 'admin/orders', 'GET', '185.251.116.122', '[]', '2022-06-24 21:02:18', '2022-06-24 21:02:18'),
(2996, 1, 'admin/orders/100069/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-24 21:03:55', '2022-06-24 21:03:55'),
(2997, 1, 'admin/orders/100069', 'PUT', '185.251.116.122', '{\"order_amount\":\"68\",\"payment_status\":\"unpaid\",\"status_id\":\"2\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-25 05:03:55\",\"accepted\":\"2022-06-25 05:03:55\",\"scheduled\":\"off\",\"processing\":\"2022-06-25 05:03:55\",\"handover\":\"2022-06-25 05:03:55\",\"failed\":\"2022-06-25 05:03:55\",\"scheduled_at\":\"2022-06-25 04:58:50\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"4492\",\"pending\":\"2022-06-25 04:58:50\",\"picked_up\":\"2022-06-25 05:03:55\",\"delivered\":\"2022-06-25 05:03:55\",\"canceled\":\"2022-06-25 05:03:55\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"Xyz\\\",\\\"contact_person_number\\\":\\\"898989\\\",\\\"address\\\":\\\"China, \\\\u4e0a\\\\u6d77 Songjiang District, \\\\u4e5d\\\\u4ead\\\\u93ae\\\",\\\"longitude\\\":\\\"136.03100191801786\\\",\\\"latitude\\\":\\\"32.95591446989211\\\"}\",\"_token\":\"cWd1vpS3PAQaBtY2tdARTaoMkjosYjX0h8bjd9kQ\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/orders\"}', '2022-06-24 21:04:06', '2022-06-24 21:04:06'),
(2998, 1, 'admin/orders', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-24 21:11:27', '2022-06-24 21:11:27'),
(2999, 1, 'admin/orders/100067/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-24 21:11:34', '2022-06-24 21:11:34'),
(3000, 1, 'admin/orders/100067', 'PUT', '185.251.116.122', '{\"order_amount\":\"48\",\"payment_status\":\"paid\",\"status_id\":\"3\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-22 07:51:08\",\"accepted\":\"2022-06-22 10:09:51\",\"scheduled\":\"off\",\"processing\":\"2022-06-22 10:09:51\",\"handover\":\"2022-06-22 10:09:51\",\"failed\":\"2022-06-22 07:50:39\",\"scheduled_at\":\"2022-06-22 07:50:30\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"4018\",\"pending\":\"2022-06-22 07:50:30\",\"picked_up\":\"2022-06-22 10:09:51\",\"delivered\":\"2022-06-22 10:09:51\",\"canceled\":\"2022-06-22 10:09:51\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"_token\":\"cWd1vpS3PAQaBtY2tdARTaoMkjosYjX0h8bjd9kQ\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/orders\"}', '2022-06-24 21:11:56', '2022-06-24 21:11:56'),
(3001, 1, 'admin/orders', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-24 21:14:22', '2022-06-24 21:14:22'),
(3002, 1, 'admin/orders/100065/edit', 'GET', '185.251.116.122', '{\"_pjax\":\"#pjax-container\"}', '2022-06-24 21:14:31', '2022-06-24 21:14:31'),
(3003, 1, 'admin/orders/100065', 'PUT', '185.251.116.122', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"status_id\":\"2\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-25 05:14:31\",\"accepted\":\"2022-06-25 05:14:31\",\"scheduled\":\"off\",\"processing\":\"2022-06-25 05:14:31\",\"handover\":\"2022-06-25 05:14:31\",\"failed\":\"2022-06-22 07:15:18\",\"scheduled_at\":\"2022-06-22 07:15:09\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"7416\",\"pending\":\"2022-06-22 07:15:09\",\"picked_up\":\"2022-06-25 05:14:31\",\"delivered\":\"2022-06-25 05:14:31\",\"canceled\":\"2022-06-25 05:14:31\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"Xyz\\\",\\\"contact_person_number\\\":\\\"898989\\\",\\\"address\\\":\\\"China, \\\\u4e0a\\\\u6d77 Songjiang District, \\\\u4e5d\\\\u4ead\\\\u93ae\\\",\\\"longitude\\\":\\\"136.03100191801786\\\",\\\"latitude\\\":\\\"32.95591446989211\\\"}\",\"_token\":\"cWd1vpS3PAQaBtY2tdARTaoMkjosYjX0h8bjd9kQ\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/orders\"}', '2022-06-24 21:14:41', '2022-06-24 21:14:41'),
(3004, 1, 'admin', 'GET', '217.168.16.63', '[]', '2022-06-25 01:19:07', '2022-06-25 01:19:07'),
(3005, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-25 01:19:14', '2022-06-25 01:19:14'),
(3006, 1, 'admin/orders/100070/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-25 01:19:49', '2022-06-25 01:19:49'),
(3007, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-25 01:19:58', '2022-06-25 01:19:58'),
(3008, 1, 'admin/orders/100060/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-25 01:20:08', '2022-06-25 01:20:08'),
(3009, 1, 'admin/orders/100060', 'PUT', '217.168.16.63', '{\"order_amount\":\"24\",\"payment_status\":\"paid\",\"status_id\":\"4\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-22 01:44:39\",\"accepted\":\"2022-06-25 09:20:08\",\"scheduled\":\"off\",\"processing\":\"2022-06-25 09:20:08\",\"handover\":\"2022-06-25 09:20:08\",\"failed\":\"2022-06-22 01:44:14\",\"scheduled_at\":\"2022-06-22 01:44:06\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"6760\",\"pending\":\"2022-06-22 01:44:06\",\"picked_up\":\"2022-06-25 09:20:08\",\"delivered\":\"2022-06-25 09:20:08\",\"canceled\":\"2022-06-25 09:20:08\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"_token\":\"atBGhCNMIc9bsVOaK99ObGUJezCwaDRkyBrDQqV5\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/orders\"}', '2022-06-25 01:20:26', '2022-06-25 01:20:26'),
(3010, 1, 'admin/orders/100060/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-25 01:23:24', '2022-06-25 01:23:24'),
(3011, 1, 'admin/orders/100060', 'PUT', '217.168.16.63', '{\"order_amount\":\"24\",\"payment_status\":\"paid\",\"status_id\":\"4\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-22 01:44:39\",\"accepted\":\"2022-06-25 09:20:08\",\"scheduled\":\"off\",\"processing\":\"2022-06-25 09:20:08\",\"handover\":\"2022-06-25 09:20:08\",\"failed\":\"2022-06-22 01:44:14\",\"scheduled_at\":\"2022-06-22 01:44:06\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"6760\",\"pending\":\"2022-06-22 01:44:06\",\"picked_up\":\"2022-06-25 09:20:08\",\"delivered\":\"2022-06-25 09:20:08\",\"canceled\":\"2022-06-25 09:20:08\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"_token\":\"atBGhCNMIc9bsVOaK99ObGUJezCwaDRkyBrDQqV5\",\"_method\":\"PUT\"}', '2022-06-25 01:23:31', '2022-06-25 01:23:31'),
(3012, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-25 01:30:14', '2022-06-25 01:30:14'),
(3013, 1, 'admin/orders/100066/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-25 01:30:19', '2022-06-25 01:30:19'),
(3014, 1, 'admin/orders/100066', 'PUT', '217.168.16.63', '{\"order_amount\":\"84\",\"payment_status\":\"unpaid\",\"status_id\":\"1\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-25 09:30:19\",\"accepted\":\"2022-06-25 09:30:19\",\"scheduled\":\"off\",\"processing\":\"2022-06-25 09:30:19\",\"handover\":\"2022-06-25 09:30:19\",\"failed\":\"2022-06-22 07:49:49\",\"scheduled_at\":\"2022-06-22 07:49:42\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"1454\",\"pending\":\"2022-06-22 07:49:42\",\"picked_up\":\"2022-06-25 09:30:19\",\"delivered\":\"2022-06-25 09:30:19\",\"canceled\":\"2022-06-25 09:30:19\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"Xyz\\\",\\\"contact_person_number\\\":\\\"898989\\\",\\\"address\\\":\\\"China, \\\\u4e0a\\\\u6d77 Songjiang District, \\\\u4e5d\\\\u4ead\\\\u93ae\\\",\\\"longitude\\\":\\\"136.03100191801786\\\",\\\"latitude\\\":\\\"32.95591446989211\\\"}\",\"_token\":\"atBGhCNMIc9bsVOaK99ObGUJezCwaDRkyBrDQqV5\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/orders\"}', '2022-06-25 01:30:30', '2022-06-25 01:30:30'),
(3015, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-25 01:30:31', '2022-06-25 01:30:31'),
(3016, 1, 'admin/business-settings', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-25 03:04:26', '2022-06-25 03:04:26'),
(3017, 1, 'admin/business-settings', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2022-06-25 03:05:42', '2022-06-25 03:05:42'),
(3018, 1, 'admin/business-settings', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-25 03:12:32', '2022-06-25 03:12:32'),
(3019, 1, 'admin/orders', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-25 03:12:35', '2022-06-25 03:12:35'),
(3020, 1, 'admin/orders/100057/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-25 03:12:41', '2022-06-25 03:12:41'),
(3021, 1, 'admin/orders/100057', 'PUT', '217.168.16.63', '{\"order_amount\":\"34\",\"payment_status\":\"unpaid\",\"status_id\":\"4\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-22 10:10:27\",\"accepted\":\"2022-06-22 10:10:27\",\"scheduled\":\"off\",\"processing\":\"2022-06-22 10:10:27\",\"handover\":\"2022-06-22 10:10:27\",\"failed\":\"2022-06-22 10:10:27\",\"scheduled_at\":\"2022-06-20 13:51:55\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"5201\",\"pending\":\"2022-06-20 13:51:55\",\"picked_up\":\"2022-06-22 10:10:27\",\"delivered\":\"2022-06-22 10:10:27\",\"canceled\":\"2022-06-22 10:10:27\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"abdo\\\",\\\"contact_person_number\\\":\\\"12121234\\\",\\\"address\\\":\\\"455X+G6W Oued Sly  Algeria\\\",\\\"longitude\\\":\\\"1.1974199\\\",\\\"latitude\\\":\\\"36.1084765\\\"}\",\"_token\":\"atBGhCNMIc9bsVOaK99ObGUJezCwaDRkyBrDQqV5\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/orders\"}', '2022-06-25 03:12:52', '2022-06-25 03:12:52'),
(3022, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-25 03:12:53', '2022-06-25 03:12:53'),
(3023, 1, 'admin/orders/100059/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-25 03:15:10', '2022-06-25 03:15:10');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(3024, 1, 'admin/orders/100059', 'PUT', '217.168.16.63', '{\"order_amount\":\"170\",\"payment_status\":\"unpaid\",\"status_id\":\"3\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-25 11:15:10\",\"accepted\":\"2022-06-25 11:15:10\",\"scheduled\":\"off\",\"processing\":\"2022-06-25 11:15:10\",\"handover\":\"2022-06-25 11:15:10\",\"failed\":\"2022-06-25 11:15:10\",\"scheduled_at\":\"2022-06-21 14:49:01\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"2167\",\"pending\":\"2022-06-21 14:49:01\",\"picked_up\":\"2022-06-25 11:15:10\",\"delivered\":\"2022-06-25 11:15:10\",\"canceled\":\"2022-06-25 11:15:10\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"aaaananna\\\",\\\"contact_person_number\\\":\\\"010123123\\\",\\\"address\\\":\\\"Georgia Ave Petworth Station, District of Freedom#8573311~!#, Washington, DC 20036, USA\\\",\\\"longitude\\\":\\\"-77.0368719\\\",\\\"latitude\\\":\\\"38.9071927\\\"}\",\"_token\":\"atBGhCNMIc9bsVOaK99ObGUJezCwaDRkyBrDQqV5\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/orders\"}', '2022-06-25 03:15:32', '2022-06-25 03:15:32'),
(3025, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-25 03:15:33', '2022-06-25 03:15:33'),
(3026, 1, 'admin/orders/100071/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-25 03:15:46', '2022-06-25 03:15:46'),
(3027, 1, 'admin/orders/100071', 'PUT', '217.168.16.63', '{\"order_amount\":\"24\",\"payment_status\":\"unpaid\",\"status_id\":\"2\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-25 11:15:46\",\"accepted\":\"2022-06-25 11:15:46\",\"scheduled\":\"off\",\"processing\":\"2022-06-25 11:15:46\",\"handover\":\"2022-06-25 11:15:46\",\"failed\":\"2022-06-25 11:15:46\",\"scheduled_at\":\"2022-06-25 09:23:55\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"2369\",\"pending\":\"2022-06-25 09:23:55\",\"picked_up\":\"2022-06-25 11:15:46\",\"delivered\":\"2022-06-25 11:15:46\",\"canceled\":\"2022-06-25 11:15:46\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"Xyz\\\",\\\"contact_person_number\\\":\\\"898989\\\",\\\"address\\\":\\\"China, \\\\u4e0a\\\\u6d77 Songjiang District, \\\\u4e5d\\\\u4ead\\\\u93ae\\\",\\\"longitude\\\":\\\"136.03100191801786\\\",\\\"latitude\\\":\\\"32.95591446989211\\\"}\",\"_token\":\"atBGhCNMIc9bsVOaK99ObGUJezCwaDRkyBrDQqV5\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/orders\"}', '2022-06-25 03:15:59', '2022-06-25 03:15:59'),
(3028, 1, 'admin/orders', 'GET', '217.168.16.63', '[]', '2022-06-25 03:16:04', '2022-06-25 03:16:04'),
(3029, 1, 'admin/business-settings', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-25 03:32:24', '2022-06-25 03:32:24'),
(3030, 1, 'admin/business-settings/19/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-25 03:32:56', '2022-06-25 03:32:56'),
(3031, 1, 'admin/business-settings/19', 'PUT', '217.168.16.63', '{\"key\":\"order_cancled_message\",\"status\":\"0\",\"message\":\"Order is canceled by your request\",\"_token\":\"atBGhCNMIc9bsVOaK99ObGUJezCwaDRkyBrDQqV5\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/business-settings\"}', '2022-06-25 03:33:01', '2022-06-25 03:33:01'),
(3032, 1, 'admin/business-settings', 'GET', '217.168.16.63', '[]', '2022-06-25 03:33:02', '2022-06-25 03:33:02'),
(3033, 1, 'admin/business-settings/19/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-25 03:33:07', '2022-06-25 03:33:07'),
(3034, 1, 'admin/business-settings/19', 'PUT', '217.168.16.63', '{\"key\":\"order_cancled_message\",\"status\":\"1\",\"message\":\"Order is canceled by your request\",\"_token\":\"atBGhCNMIc9bsVOaK99ObGUJezCwaDRkyBrDQqV5\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/business-settings\"}', '2022-06-25 03:33:12', '2022-06-25 03:33:12'),
(3035, 1, 'admin/business-settings', 'GET', '217.168.16.63', '[]', '2022-06-25 03:33:13', '2022-06-25 03:33:13'),
(3036, 1, 'admin/business-settings/19/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-25 03:33:17', '2022-06-25 03:33:17'),
(3037, 1, 'admin/business-settings/19', 'PUT', '217.168.16.63', '{\"key\":\"order_cancled_message\",\"status\":\"0\",\"message\":\"Order is canceled by your request\",\"_token\":\"atBGhCNMIc9bsVOaK99ObGUJezCwaDRkyBrDQqV5\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/business-settings\"}', '2022-06-25 03:33:23', '2022-06-25 03:33:23'),
(3038, 1, 'admin/business-settings', 'GET', '217.168.16.63', '[]', '2022-06-25 03:33:24', '2022-06-25 03:33:24'),
(3039, 1, 'admin/business-settings/19/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-25 03:33:29', '2022-06-25 03:33:29'),
(3040, 1, 'admin/business-settings/19', 'PUT', '217.168.16.63', '{\"key\":\"order_cancled_message\",\"status\":\"1\",\"message\":\"Order is canceled by your request\",\"_token\":\"atBGhCNMIc9bsVOaK99ObGUJezCwaDRkyBrDQqV5\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/business-settings\"}', '2022-06-25 03:33:35', '2022-06-25 03:33:35'),
(3041, 1, 'admin/business-settings', 'GET', '217.168.16.63', '[]', '2022-06-25 03:33:35', '2022-06-25 03:33:35'),
(3042, 1, 'admin/business-settings/6/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-25 03:34:02', '2022-06-25 03:34:02'),
(3043, 1, 'admin/business-settings/6', 'PUT', '217.168.16.63', '{\"key\":\"country\",\"content\":\"USA\",\"_token\":\"atBGhCNMIc9bsVOaK99ObGUJezCwaDRkyBrDQqV5\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/business-settings\"}', '2022-06-25 03:34:08', '2022-06-25 03:34:08'),
(3044, 1, 'admin/business-settings', 'GET', '217.168.16.63', '[]', '2022-06-25 03:34:09', '2022-06-25 03:34:09'),
(3045, 1, 'admin/business-settings/6/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-25 03:34:13', '2022-06-25 03:34:13'),
(3046, 1, 'admin/business-settings/6', 'PUT', '217.168.16.63', '{\"key\":\"country\",\"content\":\"US\",\"_token\":\"atBGhCNMIc9bsVOaK99ObGUJezCwaDRkyBrDQqV5\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/business-settings\"}', '2022-06-25 03:34:17', '2022-06-25 03:34:17'),
(3047, 1, 'admin/business-settings', 'GET', '217.168.16.63', '[]', '2022-06-25 03:34:18', '2022-06-25 03:34:18'),
(3048, 1, 'admin/business-settings/6/edit', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-25 03:34:22', '2022-06-25 03:34:22'),
(3049, 1, 'admin/business-settings/6', 'PUT', '217.168.16.63', '{\"key\":\"country\",\"content\":\"USA\",\"_token\":\"atBGhCNMIc9bsVOaK99ObGUJezCwaDRkyBrDQqV5\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/business-settings\"}', '2022-06-25 03:34:27', '2022-06-25 03:34:27'),
(3050, 1, 'admin/business-settings', 'GET', '217.168.16.63', '[]', '2022-06-25 03:34:28', '2022-06-25 03:34:28'),
(3051, 1, 'admin', 'GET', '217.168.16.63', '{\"_pjax\":\"#pjax-container\"}', '2022-06-25 04:12:32', '2022-06-25 04:12:32'),
(3052, 1, 'admin', 'GET', '217.168.16.63', '[]', '2022-06-25 04:12:37', '2022-06-25 04:12:37'),
(3053, 1, 'admin', 'GET', '217.168.16.63', '[]', '2022-06-25 04:12:50', '2022-06-25 04:12:50'),
(3054, 1, 'admin', 'GET', '47.75.109.187', '[]', '2022-06-25 06:28:13', '2022-06-25 06:28:13'),
(3055, 1, 'admin/business-settings', 'GET', '47.75.109.187', '{\"_pjax\":\"#pjax-container\"}', '2022-06-25 06:28:21', '2022-06-25 06:28:21'),
(3056, 1, 'admin/business-settings/21/edit', 'GET', '47.75.109.187', '{\"_pjax\":\"#pjax-container\"}', '2022-06-25 06:33:44', '2022-06-25 06:33:44'),
(3057, 1, 'admin/business-settings', 'GET', '47.75.109.187', '{\"_pjax\":\"#pjax-container\"}', '2022-06-25 06:34:10', '2022-06-25 06:34:10'),
(3058, 1, 'admin/business-settings/21/edit', 'GET', '47.75.109.187', '{\"_pjax\":\"#pjax-container\"}', '2022-06-25 06:34:15', '2022-06-25 06:34:15'),
(3059, 1, 'admin/business-settings/21', 'PUT', '47.75.109.187', '{\"key\":\"maintenance_mode\",\"content\":\"1\",\"_token\":\"GI4FMlkDAZdL5245VmWqiAL4FV6osiPddG8o2f7d\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/business-settings\"}', '2022-06-25 06:34:21', '2022-06-25 06:34:21'),
(3060, 1, 'admin/business-settings', 'GET', '47.75.109.187', '[]', '2022-06-25 06:34:22', '2022-06-25 06:34:22'),
(3061, 1, 'admin/business-settings/21/edit', 'GET', '47.75.109.187', '{\"_pjax\":\"#pjax-container\"}', '2022-06-25 06:34:27', '2022-06-25 06:34:27'),
(3062, 1, 'admin/business-settings/21', 'PUT', '47.75.109.187', '{\"key\":\"maintenance_mode\",\"content\":\"0\",\"_token\":\"GI4FMlkDAZdL5245VmWqiAL4FV6osiPddG8o2f7d\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/business-settings\"}', '2022-06-25 06:34:31', '2022-06-25 06:34:31'),
(3063, 1, 'admin/business-settings', 'GET', '47.75.109.187', '[]', '2022-06-25 06:34:31', '2022-06-25 06:34:31'),
(3064, 1, 'admin', 'GET', '41.215.220.34', '[]', '2022-06-25 09:45:04', '2022-06-25 09:45:04'),
(3065, 1, 'admin/delivery-men', 'GET', '41.215.220.34', '{\"_pjax\":\"#pjax-container\"}', '2022-06-25 09:46:34', '2022-06-25 09:46:34'),
(3066, 1, 'admin/delivery-men', 'GET', '165.90.118.91', '[]', '2022-06-25 12:13:46', '2022-06-25 12:13:46'),
(3067, 1, 'admin/orders/100072', 'GET', '217.168.16.63', '[]', '2022-06-25 18:12:42', '2022-06-25 18:12:42'),
(3068, 1, 'admin', 'GET', '154.21.209.10', '[]', '2022-06-27 18:11:11', '2022-06-27 18:11:11'),
(3069, 1, 'admin/orders', 'GET', '154.21.209.10', '{\"_pjax\":\"#pjax-container\"}', '2022-06-27 18:11:22', '2022-06-27 18:11:22'),
(3070, 1, 'admin/orders/100073', 'GET', '154.21.209.10', '[]', '2022-06-27 18:11:44', '2022-06-27 18:11:44'),
(3071, 1, 'admin/orders/100073', 'GET', '154.21.209.10', '[]', '2022-06-27 18:41:01', '2022-06-27 18:41:01'),
(3072, 1, 'admin', 'GET', '198.255.45.131', '[]', '2022-06-28 18:12:01', '2022-06-28 18:12:01'),
(3073, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-28 18:12:05', '2022-06-28 18:12:05'),
(3074, 1, 'admin/orders/100074', 'GET', '198.255.45.131', '[]', '2022-06-28 18:12:39', '2022-06-28 18:12:39'),
(3075, 1, 'admin/orders/100075', 'GET', '198.255.45.131', '[]', '2022-06-28 18:29:16', '2022-06-28 18:29:16'),
(3076, 1, 'admin/orders/100076', 'GET', '198.255.45.131', '[]', '2022-06-28 18:29:33', '2022-06-28 18:29:33'),
(3077, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-28 18:31:25', '2022-06-28 18:31:25'),
(3078, 1, 'admin/orders/100077', 'GET', '198.255.45.131', '[]', '2022-06-28 18:36:55', '2022-06-28 18:36:55'),
(3079, 1, 'admin/business-settings', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-28 18:43:58', '2022-06-28 18:43:58'),
(3080, 1, 'admin/business-settings/4/edit', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-28 18:44:03', '2022-06-28 18:44:03'),
(3081, 1, 'admin/business-settings', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-28 18:44:41', '2022-06-28 18:44:41'),
(3082, 1, 'admin/business-settings/4/edit', 'GET', '101.85.227.97', '{\"_pjax\":\"#pjax-container\"}', '2022-06-28 18:46:22', '2022-06-28 18:46:22'),
(3083, 1, 'admin/business-settings/4', 'PUT', '101.85.227.97', '{\"key\":\"paypal\",\"status\":\"1\",\"paypal_client_id\":\"Af_I1FWbRbjLVfRoAV_mwWb9c6zNkod1BfgAmkUCNgLrXknXO-vNa2FDnwJ7ABPb0J8dp_knjFGQXge5\",\"paypal_secret_id\":\"EOnQ_LoHgDr3NmCieKXli6PPRjvGwC_hk1QApIlMAi3gTQxnQVjyNBPoLTTohg5D5aOmzVyXWnBQSxRJ\",\"_token\":\"3xTA1mkagk056gTyF8K9Pc3Wz40lZSogmVKIFbxn\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/business-settings\"}', '2022-06-28 18:47:01', '2022-06-28 18:47:01'),
(3084, 1, 'admin/business-settings', 'GET', '101.85.227.97', '[]', '2022-06-28 18:47:02', '2022-06-28 18:47:02'),
(3085, 1, 'admin/orders/100078', 'GET', '101.85.227.97', '[]', '2022-06-28 18:47:34', '2022-06-28 18:47:34'),
(3086, 1, 'admin/orders/100079', 'GET', '101.85.227.97', '[]', '2022-06-28 18:48:17', '2022-06-28 18:48:17'),
(3087, 1, 'admin/business-settings', 'GET', '101.85.227.97', '[]', '2022-06-28 18:48:45', '2022-06-28 18:48:45'),
(3088, 1, 'admin/orders/100080', 'GET', '198.255.45.131', '[]', '2022-06-28 19:24:17', '2022-06-28 19:24:17'),
(3089, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-28 19:24:17', '2022-06-28 19:24:17'),
(3090, 1, 'admin/orders', 'GET', '198.255.45.131', '[]', '2022-06-28 19:24:34', '2022-06-28 19:24:34'),
(3091, 1, 'admin', 'GET', '198.255.45.131', '[]', '2022-06-28 19:26:12', '2022-06-28 19:26:12'),
(3092, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-28 19:26:16', '2022-06-28 19:26:16'),
(3093, 1, 'admin/business-settings', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-28 19:26:19', '2022-06-28 19:26:19'),
(3094, 1, 'admin/business-settings/4/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-28 19:26:23', '2022-06-28 19:26:23'),
(3095, 1, 'admin/business-settings/4', 'PUT', '198.255.45.131', '{\"key\":\"paypal\",\"status\":\"1\",\"paypal_client_id\":\"AAf_I1FWbRbjLVfRoAV_mwWb9c6zNkod1BfgAmkUCNgLrXknXO-vNa2FDnwJ7ABPb0J8dp_knjFGQXge5\",\"paypal_secret_id\":\"AEOnQ_LoHgDr3NmCieKXli6PPRjvGwC_hk1QApIlMAi3gTQxnQVjyNBPoLTTohg5D5aOmzVyXWnBQSxRJ\",\"_token\":\"3xTA1mkagk056gTyF8K9Pc3Wz40lZSogmVKIFbxn\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/business-settings\"}', '2022-06-28 19:26:39', '2022-06-28 19:26:39'),
(3096, 1, 'admin/business-settings', 'GET', '198.255.45.131', '[]', '2022-06-28 19:27:39', '2022-06-28 19:27:39'),
(3097, 1, 'admin/business-settings', 'GET', '198.255.45.131', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2022-06-28 19:31:22', '2022-06-28 19:31:22'),
(3098, 1, 'admin/business-settings/26/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-28 19:31:31', '2022-06-28 19:31:31'),
(3099, 1, 'admin/business-settings/26', 'PUT', '198.255.45.131', '{\"key\":\"dm_maximum_orders\",\"content\":\"5\",\"_token\":\"3xTA1mkagk056gTyF8K9Pc3Wz40lZSogmVKIFbxn\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/business-settings?page=2\"}', '2022-06-28 19:31:36', '2022-06-28 19:31:36'),
(3100, 1, 'admin/business-settings', 'GET', '198.255.45.131', '{\"page\":\"2\"}', '2022-06-28 19:31:36', '2022-06-28 19:31:36'),
(3101, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-28 19:46:08', '2022-06-28 19:46:08'),
(3102, 1, 'admin/orders/100080/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-28 19:46:26', '2022-06-28 19:46:26'),
(3103, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-28 19:46:31', '2022-06-28 19:46:31'),
(3104, 1, 'admin/orders/100079/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-28 19:46:34', '2022-06-28 19:46:34'),
(3105, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-28 19:46:37', '2022-06-28 19:46:37'),
(3106, 1, 'admin/orders/100081', 'GET', '198.255.45.131', '[]', '2022-06-28 19:49:13', '2022-06-28 19:49:13'),
(3107, 1, 'admin/delivery-men', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-28 19:50:56', '2022-06-28 19:50:56'),
(3108, 1, 'admin/business-settings', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-28 19:51:02', '2022-06-28 19:51:02'),
(3109, 1, 'admin/business-settings', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2022-06-28 19:51:05', '2022-06-28 19:51:05'),
(3110, 1, 'admin/business-settings/26/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-28 19:51:08', '2022-06-28 19:51:08'),
(3111, 1, 'admin/business-settings/26', 'PUT', '198.255.45.131', '{\"key\":\"dm_maximum_orders\",\"content\":\"10\",\"_token\":\"3xTA1mkagk056gTyF8K9Pc3Wz40lZSogmVKIFbxn\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/business-settings?&page=2\"}', '2022-06-28 19:51:13', '2022-06-28 19:51:13'),
(3112, 1, 'admin/business-settings', 'GET', '198.255.45.131', '{\"page\":\"2\"}', '2022-06-28 19:51:13', '2022-06-28 19:51:13'),
(3113, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-28 20:33:14', '2022-06-28 20:33:14'),
(3114, 1, 'admin/business-settings', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-28 20:33:20', '2022-06-28 20:33:20'),
(3115, 1, 'admin/business-settings', 'GET', '114.95.225.29', '{\"_pjax\":\"#pjax-container\"}', '2022-06-28 23:02:58', '2022-06-28 23:02:58'),
(3116, 1, 'admin/orders', 'GET', '114.95.225.29', '{\"_pjax\":\"#pjax-container\"}', '2022-06-28 23:03:03', '2022-06-28 23:03:03'),
(3117, 1, 'admin/orders/100082', 'GET', '198.255.45.131', '[]', '2022-06-28 23:38:01', '2022-06-28 23:38:01'),
(3118, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 00:22:58', '2022-06-29 00:22:58'),
(3119, 1, 'admin/orders/100082/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 00:23:02', '2022-06-29 00:23:02'),
(3120, 1, 'admin/orders/100082', 'PUT', '198.255.45.131', '{\"order_amount\":\"66\",\"payment_status\":\"paid\",\"status_id\":\"3\",\"delivery_man_id\":\"14\",\"confirmed\":\"2022-06-29 07:40:23\",\"accepted\":\"2022-06-29 07:40:55\",\"scheduled\":\"off\",\"processing\":\"2022-06-29 08:23:02\",\"handover\":\"2022-06-29 08:23:02\",\"failed\":\"2022-06-29 07:38:37\",\"scheduled_at\":\"2022-06-29 07:37:52\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"7098\",\"pending\":\"2022-06-29 07:37:52\",\"picked_up\":\"2022-06-29 08:23:02\",\"delivered\":\"2022-06-29 08:23:02\",\"canceled\":\"2022-06-29 08:23:02\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"Xyz\\\",\\\"contact_person_number\\\":\\\"898989\\\",\\\"address\\\":\\\"China, \\\\u4e0a\\\\u6d77 Songjiang District, \\\\u4e5d\\\\u4ead\\\\u93ae\\\",\\\"longitude\\\":\\\"136.03100191801786\\\",\\\"latitude\\\":\\\"32.95591446989211\\\"}\",\"_token\":\"tJVxK4FPiZIkoqhWI77vcH4f9QuFyxj8VJS8NYT7\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/orders\"}', '2022-06-29 00:23:52', '2022-06-29 00:23:52'),
(3121, 1, 'admin/orders', 'GET', '198.255.45.131', '[]', '2022-06-29 00:23:58', '2022-06-29 00:23:58'),
(3122, 1, 'admin/orders/100080/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 00:24:24', '2022-06-29 00:24:24'),
(3123, 1, 'admin/orders/100080', 'PUT', '198.255.45.131', '{\"order_amount\":\"68\",\"payment_status\":\"paid\",\"status_id\":\"3\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-29 03:24:33\",\"accepted\":\"2022-06-29 03:30:29\",\"scheduled\":\"off\",\"processing\":\"2022-06-29 08:24:24\",\"handover\":\"2022-06-29 08:24:24\",\"failed\":\"2022-06-29 03:23:50\",\"scheduled_at\":\"2022-06-29 03:23:43\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"4394\",\"pending\":\"2022-06-29 03:23:43\",\"picked_up\":\"2022-06-29 08:24:24\",\"delivered\":\"2022-06-29 08:24:24\",\"canceled\":\"2022-06-29 08:24:24\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"_token\":\"tJVxK4FPiZIkoqhWI77vcH4f9QuFyxj8VJS8NYT7\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/orders\"}', '2022-06-29 00:24:35', '2022-06-29 00:24:35'),
(3124, 1, 'admin/orders', 'GET', '198.255.45.131', '[]', '2022-06-29 00:24:36', '2022-06-29 00:24:36'),
(3125, 1, 'admin/users', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 00:25:00', '2022-06-29 00:25:00'),
(3126, 1, 'admin/orders/100083', 'GET', '198.255.45.131', '[]', '2022-06-29 00:25:40', '2022-06-29 00:25:40'),
(3127, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 00:26:28', '2022-06-29 00:26:28'),
(3128, 1, 'admin/orders/100083/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 00:26:33', '2022-06-29 00:26:33'),
(3129, 1, 'admin/orders/100083', 'PUT', '198.255.45.131', '{\"order_amount\":\"24\",\"payment_status\":\"paid\",\"status_id\":\"2\",\"delivery_man_id\":\"14\",\"confirmed\":\"2022-06-29 08:26:28\",\"accepted\":\"2022-06-29 08:26:33\",\"scheduled\":\"off\",\"processing\":\"2022-06-29 08:26:33\",\"handover\":\"2022-06-29 08:26:33\",\"failed\":\"2022-06-29 08:25:42\",\"scheduled_at\":\"2022-06-29 08:25:34\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"3434\",\"pending\":\"2022-06-29 08:25:34\",\"picked_up\":\"2022-06-29 08:26:33\",\"delivered\":\"2022-06-29 08:26:33\",\"canceled\":\"2022-06-29 08:26:33\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"_token\":\"tJVxK4FPiZIkoqhWI77vcH4f9QuFyxj8VJS8NYT7\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/orders\"}', '2022-06-29 00:26:46', '2022-06-29 00:26:46'),
(3130, 1, 'admin/orders', 'GET', '198.255.45.131', '[]', '2022-06-29 00:26:48', '2022-06-29 00:26:48'),
(3131, 1, 'admin/orders/100083/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 00:27:09', '2022-06-29 00:27:09'),
(3132, 1, 'admin/orders/100083', 'PUT', '198.255.45.131', '{\"order_amount\":\"24\",\"payment_status\":\"paid\",\"status_id\":\"3\",\"delivery_man_id\":\"14\",\"confirmed\":\"2022-06-29 08:26:28\",\"accepted\":\"2022-06-29 08:26:33\",\"scheduled\":\"off\",\"processing\":\"2022-06-29 08:26:33\",\"handover\":\"2022-06-29 08:26:33\",\"failed\":\"2022-06-29 08:25:42\",\"scheduled_at\":\"2022-06-29 08:25:34\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"3434\",\"pending\":\"2022-06-29 08:25:34\",\"picked_up\":\"2022-06-29 08:26:33\",\"delivered\":\"2022-06-29 08:26:33\",\"canceled\":\"2022-06-29 08:26:33\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"_token\":\"tJVxK4FPiZIkoqhWI77vcH4f9QuFyxj8VJS8NYT7\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/orders\"}', '2022-06-29 00:27:19', '2022-06-29 00:27:19'),
(3133, 1, 'admin/orders', 'GET', '198.255.45.131', '[]', '2022-06-29 00:27:25', '2022-06-29 00:27:25'),
(3134, 1, 'admin/orders/100083/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 00:27:40', '2022-06-29 00:27:40'),
(3135, 1, 'admin/orders/100083', 'PUT', '198.255.45.131', '{\"order_amount\":\"24\",\"payment_status\":\"paid\",\"status_id\":\"4\",\"delivery_man_id\":\"14\",\"confirmed\":\"2022-06-29 08:26:28\",\"accepted\":\"2022-06-29 08:26:33\",\"scheduled\":\"off\",\"processing\":\"2022-06-29 08:26:33\",\"handover\":\"2022-06-29 08:26:33\",\"failed\":\"2022-06-29 08:25:42\",\"scheduled_at\":\"2022-06-29 08:25:34\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"3434\",\"pending\":\"2022-06-29 08:25:34\",\"picked_up\":\"2022-06-29 08:26:33\",\"delivered\":\"2022-06-29 08:26:33\",\"canceled\":\"2022-06-29 08:26:33\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"_token\":\"tJVxK4FPiZIkoqhWI77vcH4f9QuFyxj8VJS8NYT7\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/orders\"}', '2022-06-29 00:27:46', '2022-06-29 00:27:46'),
(3136, 1, 'admin/orders', 'GET', '198.255.45.131', '[]', '2022-06-29 00:27:48', '2022-06-29 00:27:48'),
(3137, 1, 'admin/orders/100084', 'GET', '198.255.45.131', '[]', '2022-06-29 00:29:14', '2022-06-29 00:29:14'),
(3138, 1, 'admin/orders/100085', 'GET', '198.255.45.131', '[]', '2022-06-29 00:29:51', '2022-06-29 00:29:51'),
(3139, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 00:29:53', '2022-06-29 00:29:53'),
(3140, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 00:33:08', '2022-06-29 00:33:08'),
(3141, 1, 'admin/orders/100085/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 00:33:11', '2022-06-29 00:33:11'),
(3142, 1, 'admin/orders/100085', 'PUT', '198.255.45.131', '{\"order_amount\":\"68\",\"payment_status\":\"paid\",\"status_id\":\"2\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-29 08:32:59\",\"accepted\":\"2022-06-29 08:33:11\",\"scheduled\":\"off\",\"processing\":\"2022-06-29 08:33:11\",\"handover\":\"2022-06-29 08:33:11\",\"failed\":\"2022-06-29 08:29:56\",\"scheduled_at\":\"2022-06-29 08:29:40\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"5761\",\"pending\":\"2022-06-29 08:29:40\",\"picked_up\":\"2022-06-29 08:33:11\",\"delivered\":\"2022-06-29 08:33:11\",\"canceled\":\"2022-06-29 08:33:11\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"_token\":\"tJVxK4FPiZIkoqhWI77vcH4f9QuFyxj8VJS8NYT7\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/orders\"}', '2022-06-29 00:33:36', '2022-06-29 00:33:36'),
(3143, 1, 'admin/orders', 'GET', '198.255.45.131', '[]', '2022-06-29 00:33:40', '2022-06-29 00:33:40'),
(3144, 1, 'admin/orders/100083/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 00:57:49', '2022-06-29 00:57:49'),
(3145, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 00:57:57', '2022-06-29 00:57:57'),
(3146, 1, 'admin/orders/100085/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 00:58:03', '2022-06-29 00:58:03'),
(3147, 1, 'admin/orders/100085', 'PUT', '198.255.45.131', '{\"order_amount\":\"68\",\"payment_status\":\"paid\",\"status_id\":\"3\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-29 08:32:59\",\"accepted\":\"2022-06-29 08:33:11\",\"scheduled\":\"off\",\"processing\":\"2022-06-29 08:33:11\",\"handover\":\"2022-06-29 08:33:11\",\"failed\":\"2022-06-29 08:29:56\",\"scheduled_at\":\"2022-06-29 08:29:40\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"5761\",\"pending\":\"2022-06-29 08:29:40\",\"picked_up\":\"2022-06-29 08:33:11\",\"delivered\":\"2022-06-29 08:33:11\",\"canceled\":\"2022-06-29 08:33:11\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"_token\":\"tJVxK4FPiZIkoqhWI77vcH4f9QuFyxj8VJS8NYT7\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/orders\"}', '2022-06-29 00:58:08', '2022-06-29 00:58:08'),
(3148, 1, 'admin/orders', 'GET', '198.255.45.131', '[]', '2022-06-29 00:58:09', '2022-06-29 00:58:09'),
(3149, 1, 'admin/orders/100085/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 00:58:20', '2022-06-29 00:58:20'),
(3150, 1, 'admin/orders/100085', 'PUT', '198.255.45.131', '{\"order_amount\":\"68\",\"payment_status\":\"paid\",\"status_id\":\"4\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-29 08:32:59\",\"accepted\":\"2022-06-29 08:33:11\",\"scheduled\":\"off\",\"processing\":\"2022-06-29 08:33:11\",\"handover\":\"2022-06-29 08:33:11\",\"failed\":\"2022-06-29 08:29:56\",\"scheduled_at\":\"2022-06-29 08:29:40\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"5761\",\"pending\":\"2022-06-29 08:29:40\",\"picked_up\":\"2022-06-29 08:33:11\",\"delivered\":\"2022-06-29 08:33:11\",\"canceled\":\"2022-06-29 08:33:11\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"_token\":\"tJVxK4FPiZIkoqhWI77vcH4f9QuFyxj8VJS8NYT7\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/orders\"}', '2022-06-29 00:58:26', '2022-06-29 00:58:26'),
(3151, 1, 'admin/orders', 'GET', '198.255.45.131', '[]', '2022-06-29 00:58:32', '2022-06-29 00:58:32'),
(3152, 1, 'admin/orders/100085/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 01:03:11', '2022-06-29 01:03:11'),
(3153, 1, 'admin/orders/100085', 'PUT', '198.255.45.131', '{\"order_amount\":\"68\",\"payment_status\":\"paid\",\"status_id\":\"4\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-29 08:32:59\",\"accepted\":\"2022-06-29 08:33:11\",\"scheduled\":\"off\",\"processing\":\"2022-06-29 08:33:11\",\"handover\":\"2022-06-29 08:33:11\",\"failed\":\"2022-06-29 08:29:56\",\"scheduled_at\":\"2022-06-29 08:29:40\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"5761\",\"pending\":\"2022-06-29 08:29:40\",\"picked_up\":\"2022-06-29 08:33:11\",\"delivered\":\"2022-06-29 08:33:11\",\"canceled\":\"2022-06-29 08:33:11\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"_token\":\"tJVxK4FPiZIkoqhWI77vcH4f9QuFyxj8VJS8NYT7\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/orders\"}', '2022-06-29 01:03:15', '2022-06-29 01:03:15'),
(3154, 1, 'admin/orders', 'GET', '198.255.45.131', '[]', '2022-06-29 01:03:16', '2022-06-29 01:03:16'),
(3155, 1, 'admin/orders/100085/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 01:03:30', '2022-06-29 01:03:30'),
(3156, 1, 'admin/orders/100085', 'PUT', '198.255.45.131', '{\"order_amount\":\"68\",\"payment_status\":\"paid\",\"status_id\":\"5\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-29 08:32:59\",\"accepted\":\"2022-06-29 08:33:11\",\"scheduled\":\"off\",\"processing\":\"2022-06-29 08:33:11\",\"handover\":\"2022-06-29 08:33:11\",\"failed\":\"2022-06-29 08:29:56\",\"scheduled_at\":\"2022-06-29 08:29:40\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"5761\",\"pending\":\"2022-06-29 08:29:40\",\"picked_up\":\"2022-06-29 08:33:11\",\"delivered\":\"2022-06-29 08:33:11\",\"canceled\":\"2022-06-29 08:33:11\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"_token\":\"tJVxK4FPiZIkoqhWI77vcH4f9QuFyxj8VJS8NYT7\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/orders\"}', '2022-06-29 01:03:43', '2022-06-29 01:03:43'),
(3157, 1, 'admin/orders/100085/edit', 'GET', '198.255.45.131', '[]', '2022-06-29 01:03:44', '2022-06-29 01:03:44'),
(3158, 1, 'admin/orders/100086', 'GET', '198.255.45.131', '[]', '2022-06-29 01:22:33', '2022-06-29 01:22:33'),
(3159, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 01:22:44', '2022-06-29 01:22:44'),
(3160, 1, 'admin/orders/100086/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 01:23:35', '2022-06-29 01:23:35'),
(3161, 1, 'admin/orders/100086', 'PUT', '198.255.45.131', '{\"order_amount\":\"24\",\"payment_status\":\"paid\",\"status_id\":\"2\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-29 09:23:24\",\"accepted\":\"2022-06-29 09:23:35\",\"scheduled\":\"off\",\"processing\":\"2022-06-29 09:23:35\",\"handover\":\"2022-06-29 09:23:35\",\"failed\":\"2022-06-29 09:22:29\",\"scheduled_at\":\"2022-06-29 09:22:22\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"3959\",\"pending\":\"2022-06-29 09:22:22\",\"picked_up\":\"2022-06-29 09:23:35\",\"delivered\":\"2022-06-29 09:23:35\",\"canceled\":\"2022-06-29 09:23:35\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"_token\":\"tJVxK4FPiZIkoqhWI77vcH4f9QuFyxj8VJS8NYT7\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/orders\"}', '2022-06-29 01:24:31', '2022-06-29 01:24:31'),
(3162, 1, 'admin/orders', 'GET', '198.255.45.131', '[]', '2022-06-29 01:24:35', '2022-06-29 01:24:35'),
(3163, 1, 'admin/orders/100086/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 01:24:47', '2022-06-29 01:24:47'),
(3164, 1, 'admin/orders/100086', 'PUT', '198.255.45.131', '{\"order_amount\":\"24\",\"payment_status\":\"paid\",\"status_id\":\"3\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-29 09:23:24\",\"accepted\":\"2022-06-29 09:23:35\",\"scheduled\":\"off\",\"processing\":\"2022-06-29 09:23:35\",\"handover\":\"2022-06-29 09:23:35\",\"failed\":\"2022-06-29 09:22:29\",\"scheduled_at\":\"2022-06-29 09:22:22\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"3959\",\"pending\":\"2022-06-29 09:22:22\",\"picked_up\":\"2022-06-29 09:23:35\",\"delivered\":\"2022-06-29 09:23:35\",\"canceled\":\"2022-06-29 09:23:35\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"_token\":\"tJVxK4FPiZIkoqhWI77vcH4f9QuFyxj8VJS8NYT7\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/orders\"}', '2022-06-29 01:25:09', '2022-06-29 01:25:09'),
(3165, 1, 'admin/orders', 'GET', '198.255.45.131', '[]', '2022-06-29 01:25:10', '2022-06-29 01:25:10'),
(3166, 1, 'admin/orders/100086/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 01:26:58', '2022-06-29 01:26:58'),
(3167, 1, 'admin/orders/100086', 'PUT', '198.255.45.131', '{\"order_amount\":\"24\",\"payment_status\":\"paid\",\"status_id\":\"4\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-29 09:23:24\",\"accepted\":\"2022-06-29 09:23:35\",\"scheduled\":\"off\",\"processing\":\"2022-06-29 09:23:35\",\"handover\":\"2022-06-29 09:23:35\",\"failed\":\"2022-06-29 09:22:29\",\"scheduled_at\":\"2022-06-29 09:22:22\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"3959\",\"pending\":\"2022-06-29 09:22:22\",\"picked_up\":\"2022-06-29 09:23:35\",\"delivered\":\"2022-06-29 09:23:35\",\"canceled\":\"2022-06-29 09:23:35\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"_token\":\"tJVxK4FPiZIkoqhWI77vcH4f9QuFyxj8VJS8NYT7\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/orders\"}', '2022-06-29 01:27:07', '2022-06-29 01:27:07'),
(3168, 1, 'admin/orders', 'GET', '198.255.45.131', '[]', '2022-06-29 01:27:09', '2022-06-29 01:27:09'),
(3169, 1, 'admin/orders/100086/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 01:27:23', '2022-06-29 01:27:23'),
(3170, 1, 'admin/orders/100086', 'PUT', '198.255.45.131', '{\"order_amount\":\"24\",\"payment_status\":\"paid\",\"status_id\":\"5\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-29 09:23:24\",\"accepted\":\"2022-06-29 09:23:35\",\"scheduled\":\"off\",\"processing\":\"2022-06-29 09:23:35\",\"handover\":\"2022-06-29 09:23:35\",\"failed\":\"2022-06-29 09:22:29\",\"scheduled_at\":\"2022-06-29 09:22:22\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"3959\",\"pending\":\"2022-06-29 09:22:22\",\"picked_up\":\"2022-06-29 09:23:35\",\"delivered\":\"2022-06-29 09:23:35\",\"canceled\":\"2022-06-29 09:23:35\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"_token\":\"tJVxK4FPiZIkoqhWI77vcH4f9QuFyxj8VJS8NYT7\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/orders\"}', '2022-06-29 01:27:30', '2022-06-29 01:27:30'),
(3171, 1, 'admin/orders', 'GET', '198.255.45.131', '[]', '2022-06-29 01:27:31', '2022-06-29 01:27:31'),
(3172, 1, 'admin/orders/100086/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 01:28:12', '2022-06-29 01:28:12'),
(3173, 1, 'admin/orders/100086', 'PUT', '198.255.45.131', '{\"order_amount\":\"24\",\"payment_status\":\"paid\",\"status_id\":\"6\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-29 09:23:24\",\"accepted\":\"2022-06-29 09:23:35\",\"scheduled\":\"off\",\"processing\":\"2022-06-29 09:23:35\",\"handover\":\"2022-06-29 09:23:35\",\"failed\":\"2022-06-29 09:22:29\",\"scheduled_at\":\"2022-06-29 09:22:22\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"3959\",\"pending\":\"2022-06-29 09:22:22\",\"picked_up\":\"2022-06-29 09:23:35\",\"delivered\":\"2022-06-29 09:23:35\",\"canceled\":\"2022-06-29 09:23:35\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"_token\":\"tJVxK4FPiZIkoqhWI77vcH4f9QuFyxj8VJS8NYT7\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/orders\"}', '2022-06-29 01:28:27', '2022-06-29 01:28:27'),
(3174, 1, 'admin/orders', 'GET', '198.255.45.131', '[]', '2022-06-29 01:28:32', '2022-06-29 01:28:32'),
(3175, 1, 'admin/orders/100080/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 01:28:57', '2022-06-29 01:28:57'),
(3176, 1, 'admin/users', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 01:29:04', '2022-06-29 01:29:04'),
(3177, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 01:29:06', '2022-06-29 01:29:06'),
(3178, 1, 'admin/orders/100087', 'GET', '198.255.45.131', '[]', '2022-06-29 01:29:58', '2022-06-29 01:29:58'),
(3179, 1, 'admin/orders', 'GET', '198.255.45.131', '[]', '2022-06-29 01:30:13', '2022-06-29 01:30:13'),
(3180, 1, 'admin/orders/100079/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 01:30:24', '2022-06-29 01:30:24'),
(3181, 1, 'admin/orders', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 01:30:29', '2022-06-29 01:30:29'),
(3182, 1, 'admin/orders/100088', 'GET', '198.255.45.131', '[]', '2022-06-29 07:57:49', '2022-06-29 07:57:49'),
(3183, 1, 'admin/orders', 'GET', '198.255.45.131', '[]', '2022-06-29 07:58:19', '2022-06-29 07:58:19'),
(3184, 1, 'admin/orders', 'GET', '198.255.45.131', '[]', '2022-06-29 08:00:51', '2022-06-29 08:00:51'),
(3185, 1, 'admin/orders/100088/edit', 'GET', '198.255.45.131', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 08:01:20', '2022-06-29 08:01:20'),
(3186, 1, 'admin/orders/100088', 'PUT', '198.255.45.131', '{\"order_amount\":\"24\",\"payment_status\":\"paid\",\"status_id\":\"2\",\"delivery_man_id\":\"1\",\"confirmed\":\"2022-06-29 15:58:18\",\"accepted\":\"2022-06-29 16:01:20\",\"scheduled\":\"off\",\"processing\":\"2022-06-29 16:01:20\",\"handover\":\"2022-06-29 16:01:20\",\"failed\":\"2022-06-29 15:57:52\",\"scheduled_at\":\"2022-06-29 15:57:33\",\"delivery_address_id\":null,\"order_note\":\"not notes\",\"delivery_charge\":\"0\",\"latitude\":null,\"longitude\":null,\"otp\":\"6457\",\"pending\":\"2022-06-29 15:57:33\",\"picked_up\":\"2022-06-29 16:01:20\",\"delivered\":\"2022-06-29 16:01:20\",\"canceled\":\"2022-06-29 16:01:20\",\"delivery_address\":\"{\\\"contact_person_name\\\":\\\"ahmed\\\",\\\"contact_person_number\\\":\\\"123456\\\",\\\"address\\\":\\\"Banalata kacha bazar, level- 2, shop# 1, \\\\u09a8\\\\u09bf\\\\u0989 \\\\u09ae\\\\u09be\\\\u09b0\\\\u09cd\\\\u0995\\\\u09c7\\\\u099f - \\\\u09aa\\\\u09bf\\\\u09b2\\\\u0996\\\\u09be\\\\u09a8\\\\u09be \\\\u09b0\\\\u09cb\\\\u09a1, \\\\u09a2\\\\u09be\\\\u0995\\\\u09be 1205, Bangladesh\\\",\\\"longitude\\\":\\\"90.38383081555367\\\",\\\"latitude\\\":\\\"23.732358774402776\\\"}\",\"_token\":\"4eRI34RrN8RqQGzvlSAOO4su0b8mb01iLdhCARPP\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/orders\"}', '2022-06-29 08:01:27', '2022-06-29 08:01:27'),
(3187, 1, 'admin/orders', 'GET', '198.255.45.131', '[]', '2022-06-29 08:01:29', '2022-06-29 08:01:29'),
(3188, 1, 'admin', 'GET', '39.144.23.123', '[]', '2022-06-29 08:58:07', '2022-06-29 08:58:07'),
(3189, 1, 'admin/business-settings', 'GET', '39.144.23.123', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 08:58:56', '2022-06-29 08:58:56'),
(3190, 1, 'admin/business-settings/4/edit', 'GET', '39.144.23.123', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 09:00:34', '2022-06-29 09:00:34'),
(3191, 1, 'admin/business-settings', 'GET', '39.144.23.123', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 09:00:42', '2022-06-29 09:00:42'),
(3192, 1, 'admin', 'GET', '47.75.112.23', '[]', '2022-06-30 00:06:34', '2022-06-30 00:06:34'),
(3193, 1, 'admin', 'GET', '47.75.110.43', '[]', '2022-06-30 01:10:53', '2022-06-30 01:10:53'),
(3194, 1, 'admin/business-settings', 'GET', '223.89.161.54', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 01:50:41', '2022-06-30 01:50:41'),
(3195, 1, 'admin/food-types', 'GET', '223.89.161.54', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 01:50:58', '2022-06-30 01:50:58'),
(3196, 1, 'admin/business-settings', 'GET', '223.89.161.54', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 01:51:15', '2022-06-30 01:51:15'),
(3197, 1, 'admin/business-settings', 'GET', '223.89.161.54', '[]', '2022-06-30 01:51:44', '2022-06-30 01:51:44'),
(3198, 1, 'admin/users', 'GET', '119.13.87.178', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 01:52:08', '2022-06-30 01:52:08'),
(3199, 1, 'admin/food-types', 'GET', '119.13.87.178', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 01:52:10', '2022-06-30 01:52:10'),
(3200, 1, 'admin/business-settings', 'GET', '119.13.87.178', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 02:08:08', '2022-06-30 02:08:08'),
(3201, 1, 'admin/business-settings/4/edit', 'GET', '119.13.87.178', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 02:08:47', '2022-06-30 02:08:47'),
(3202, 1, 'admin/business-settings', 'GET', '119.13.87.178', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 02:13:02', '2022-06-30 02:13:02'),
(3203, 1, 'admin/business-settings/4/edit', 'GET', '119.13.87.178', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 02:14:29', '2022-06-30 02:14:29'),
(3204, 1, 'admin/business-settings/4', 'PUT', '119.13.87.178', '{\"key\":\"paypal\",\"status\":\"1\",\"paypal_client_id\":\"fAf_I1FWbRbjLVfRoAV_mwWb9c6zNkod1BfgAmkUCNgLrXknXO-vNa2FDnwJ7ABPb0J8dp_knjFGQXge5\",\"paypal_secret_id\":\"EOnQ_LoHgDr3NmCieKXli6PPRjvGwC_hk1QApIlMAi3gTQxnQVjyNBPoLTTohg5D5aOmzVyXWnBQSxRJ\",\"_token\":\"ZNwKpOKYY0pvIDX53EpboEO5x5oPLegdpjrr5C6G\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/business-settings\"}', '2022-06-30 02:14:40', '2022-06-30 02:14:40'),
(3205, 1, 'admin/business-settings/4/edit', 'GET', '119.13.87.178', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 02:15:57', '2022-06-30 02:15:57'),
(3206, 1, 'admin/business-settings', 'GET', '119.13.87.178', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 02:16:01', '2022-06-30 02:16:01'),
(3207, 1, 'admin/business-settings/4/edit', 'GET', '119.13.87.178', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 02:16:05', '2022-06-30 02:16:05'),
(3208, 1, 'admin/business-settings/4/edit', 'GET', '119.13.87.178', '[]', '2022-06-30 02:19:15', '2022-06-30 02:19:15'),
(3209, 1, 'admin/business-settings/4', 'PUT', '119.13.87.178', '{\"key\":\"paypal\",\"status\":\"1\",\"paypal_client_id\":\"dAYkWuTf46Z1LRsxr5V1nXXmvplE1Pox0WLJG7JeYPQMQ3RjGtBJ_e7dHzZZO-Pf7dnV5iMhhgMgRhRs5\",\"paypal_secret_id\":\"EMllsYjwRcI3k7TSQjLhH5M8xJb1grRTF7Vrq972dYhzTzIb_j_rVDlEMGiyRhk9eNJuvhk7WdqkMwrR\",\"_token\":\"ZNwKpOKYY0pvIDX53EpboEO5x5oPLegdpjrr5C6G\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/business-settings\"}', '2022-06-30 02:19:32', '2022-06-30 02:19:32'),
(3210, 1, 'admin/business-settings', 'GET', '119.13.87.178', '[]', '2022-06-30 02:19:32', '2022-06-30 02:19:32'),
(3211, 1, 'admin/business-settings/4/edit', 'GET', '119.13.87.178', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 02:19:36', '2022-06-30 02:19:36'),
(3212, 1, 'admin/business-settings/4/edit', 'GET', '119.13.87.178', '[]', '2022-06-30 02:23:57', '2022-06-30 02:23:57');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(3213, 1, 'admin/business-settings/4', 'PUT', '119.13.87.178', '{\"key\":\"paypal\",\"status\":\"1\",\"paypal_client_id\":\"sdAYkWuTf46Z1LRsxr5V1nXXmvplE1Pox0WLJG7JeYPQMQ3RjGtBJ_e7dHzZZO-Pf7dnV5iMhhgMgRhRs5\",\"paypal_secret_id\":\"EMllsYjwRcI3k7TSQjLhH5M8xJb1grRTF7Vrq972dYhzTzIb_j_rVDlEMGiyRhk9eNJuvhk7WdqkMwrR\",\"_token\":\"ZNwKpOKYY0pvIDX53EpboEO5x5oPLegdpjrr5C6G\",\"_method\":\"PUT\"}', '2022-06-30 02:24:04', '2022-06-30 02:24:04'),
(3214, 1, 'admin/business-settings/4/edit', 'GET', '119.13.87.178', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 02:25:47', '2022-06-30 02:25:47'),
(3215, 1, 'admin/business-settings/4/edit', 'GET', '119.13.87.178', '[]', '2022-06-30 02:25:49', '2022-06-30 02:25:49'),
(3216, 1, 'admin/business-settings/4', 'PUT', '119.13.87.178', '{\"key\":\"paypal\",\"status\":\"1\",\"paypal_client_id\":\"sdAYkWuTf46Z1LRsxr5V1nXXmvplE1Pox0WLJG7JeYPQMQ3RjGtBJ_e7dHzZZO-Pf7dnV5iMhhgMgRhRs5\",\"paypal_secret_id\":\"EMllsYjwRcI3k7TSQjLhH5M8xJb1grRTF7Vrq972dYhzTzIb_j_rVDlEMGiyRhk9eNJuvhk7WdqkMwrR\",\"_token\":\"ZNwKpOKYY0pvIDX53EpboEO5x5oPLegdpjrr5C6G\",\"_method\":\"PUT\"}', '2022-06-30 02:26:03', '2022-06-30 02:26:03'),
(3217, 1, 'admin/business-settings/4/edit', 'GET', '119.13.87.178', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 02:27:44', '2022-06-30 02:27:44'),
(3218, 1, 'admin/business-settings/4/edit', 'GET', '119.13.87.178', '[]', '2022-06-30 02:28:13', '2022-06-30 02:28:13'),
(3219, 1, 'admin/business-settings/4', 'PUT', '119.13.87.178', '{\"key\":\"paypal\",\"status\":\"1\",\"paypal_client_id\":\"qAYkWuTf46Z1LRsxr5V1nXXmvplE1Pox0WLJG7JeYPQMQ3RjGtBJ_e7dHzZZO-Pf7dnV5iMhhgMgRhRs5\",\"paypal_secret_id\":\"EMllsYjwRcI3k7TSQjLhH5M8xJb1grRTF7Vrq972dYhzTzIb_j_rVDlEMGiyRhk9eNJuvhk7WdqkMwrR\",\"_token\":\"ZNwKpOKYY0pvIDX53EpboEO5x5oPLegdpjrr5C6G\",\"_method\":\"PUT\"}', '2022-06-30 02:28:19', '2022-06-30 02:28:19'),
(3220, 1, 'admin/business-settings', 'GET', '119.13.87.178', '[]', '2022-06-30 02:31:24', '2022-06-30 02:31:24'),
(3221, 1, 'admin/business-settings/4/edit', 'GET', '119.13.87.178', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 02:31:27', '2022-06-30 02:31:27'),
(3222, 1, 'admin/business-settings/4', 'PUT', '119.13.87.178', '{\"key\":\"paypal\",\"status\":\"1\",\"paypal_client_id\":\"1AYkWuTf46Z1LRsxr5V1nXXmvplE1Pox0WLJG7JeYPQMQ3RjGtBJ_e7dHzZZO-Pf7dnV5iMhhgMgRhRs5\",\"paypal_secret_id\":\"EMllsYjwRcI3k7TSQjLhH5M8xJb1grRTF7Vrq972dYhzTzIb_j_rVDlEMGiyRhk9eNJuvhk7WdqkMwrR\",\"_token\":\"ZNwKpOKYY0pvIDX53EpboEO5x5oPLegdpjrr5C6G\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/business-settings\"}', '2022-06-30 02:31:32', '2022-06-30 02:31:32'),
(3223, 1, 'admin/business-settings/4/edit', 'GET', '119.13.87.178', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 02:31:58', '2022-06-30 02:31:58'),
(3224, 1, 'admin/business-settings/4', 'PUT', '119.13.87.178', '{\"key\":\"paypal\",\"status\":\"1\",\"paypal_client_id\":\"55AYkWuTf46Z1LRsxr5V1nXXmvplE1Pox0WLJG7JeYPQMQ3RjGtBJ_e7dHzZZO-Pf7dnV5iMhhgMgRhRs5\",\"paypal_secret_id\":\"EMllsYjwRcI3k7TSQjLhH5M8xJb1grRTF7Vrq972dYhzTzIb_j_rVDlEMGiyRhk9eNJuvhk7WdqkMwrR\",\"_token\":\"ZNwKpOKYY0pvIDX53EpboEO5x5oPLegdpjrr5C6G\",\"_method\":\"PUT\"}', '2022-06-30 02:32:04', '2022-06-30 02:32:04'),
(3225, 1, 'admin/business-settings/4/edit', 'GET', '119.13.87.178', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 02:34:33', '2022-06-30 02:34:33'),
(3226, 1, 'admin/business-settings/4', 'PUT', '119.13.87.178', '{\"key\":\"paypal\",\"status\":\"1\",\"paypal_client_id\":\"111AYkWuTf46Z1LRsxr5V1nXXmvplE1Pox0WLJG7JeYPQMQ3RjGtBJ_e7dHzZZO-Pf7dnV5iMhhgMgRhRs5\",\"paypal_secret_id\":\"EMllsYjwRcI3k7TSQjLhH5M8xJb1grRTF7Vrq972dYhzTzIb_j_rVDlEMGiyRhk9eNJuvhk7WdqkMwrR\",\"_token\":\"ZNwKpOKYY0pvIDX53EpboEO5x5oPLegdpjrr5C6G\",\"_method\":\"PUT\"}', '2022-06-30 02:34:39', '2022-06-30 02:34:39'),
(3227, 1, 'admin/business-settings/4/edit', 'GET', '119.13.87.178', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 02:35:56', '2022-06-30 02:35:56'),
(3228, 1, 'admin/business-settings/4/edit', 'GET', '119.13.87.178', '[]', '2022-06-30 02:35:58', '2022-06-30 02:35:58'),
(3229, 1, 'admin/business-settings/4', 'PUT', '119.13.87.178', '{\"key\":\"paypal\",\"status\":\"1\",\"paypal_client_id\":\"AYkWuTf46Z1LRsxr5V1nXXmvplE1Pox0WLJG7JeYPQMQ3RjGtBJ_e7dHzZZO-Pf7dnV5iMhhgMgRhRs5\",\"paypal_secret_id\":\"EMllsYjwRcI3k7TSQjLhH5M8xJb1grRTF7Vrq972dYhzTzIb_j_rVDlEMGiyRhk9eNJuvhk7WdqkMwrR\",\"_token\":\"ZNwKpOKYY0pvIDX53EpboEO5x5oPLegdpjrr5C6G\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/business-settings\"}', '2022-06-30 02:36:07', '2022-06-30 02:36:07'),
(3230, 1, 'admin/business-settings', 'GET', '119.13.87.178', '[]', '2022-06-30 02:36:07', '2022-06-30 02:36:07'),
(3231, 1, 'admin/business-settings/4/edit', 'GET', '119.13.87.178', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 02:36:12', '2022-06-30 02:36:12'),
(3232, 1, 'admin/business-settings/4', 'PUT', '119.13.87.178', '{\"key\":\"paypal\",\"status\":\"1\",\"paypal_client_id\":\"AYkWuTf46Z1LRsxr5V1nXXmvplE1Pox0WLJG7JeYPQMQ3RjGtBJ_e7dHzZZO-Pf7dnV5iMhhgMgRhRs5\",\"paypal_secret_id\":\"111EMllsYjwRcI3k7TSQjLhH5M8xJb1grRTF7Vrq972dYhzTzIb_j_rVDlEMGiyRhk9eNJuvhk7WdqkMwrR\",\"_token\":\"ZNwKpOKYY0pvIDX53EpboEO5x5oPLegdpjrr5C6G\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/business-settings\"}', '2022-06-30 02:36:18', '2022-06-30 02:36:18'),
(3233, 1, 'admin/business-settings', 'GET', '119.13.87.178', '[]', '2022-06-30 02:36:19', '2022-06-30 02:36:19'),
(3234, 1, 'admin/business-settings/4/edit', 'GET', '119.13.87.178', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 02:36:22', '2022-06-30 02:36:22'),
(3235, 1, 'admin/business-settings/4', 'PUT', '119.13.87.178', '{\"key\":\"paypal\",\"status\":\"1\",\"paypal_client_id\":\"AYkWuTf46Z1LRsxr5V1nXXmvplE1Pox0WLJG7JeYPQMQ3RjGtBJ_e7dHzZZO-Pf7dnV5iMhhgMgRhRs5\",\"paypal_secret_id\":\"EMllsYjwRcI3k7TSQjLhH5M8xJb1grRTF7Vrq972dYhzTzIb_j_rVDlEMGiyRhk9eNJuvhk7WdqkMwrR\",\"_token\":\"ZNwKpOKYY0pvIDX53EpboEO5x5oPLegdpjrr5C6G\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/business-settings\"}', '2022-06-30 02:36:28', '2022-06-30 02:36:28'),
(3236, 1, 'admin/business-settings', 'GET', '119.13.87.178', '[]', '2022-06-30 02:36:29', '2022-06-30 02:36:29'),
(3237, 1, 'admin/business-settings/21/edit', 'GET', '119.13.87.178', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 02:36:34', '2022-06-30 02:36:34'),
(3238, 1, 'admin/business-settings/21', 'PUT', '119.13.87.178', '{\"key\":\"maintenance_mode\",\"content\":\"1\",\"_token\":\"ZNwKpOKYY0pvIDX53EpboEO5x5oPLegdpjrr5C6G\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/business-settings\"}', '2022-06-30 02:36:38', '2022-06-30 02:36:38'),
(3239, 1, 'admin/business-settings', 'GET', '119.13.87.178', '[]', '2022-06-30 02:36:38', '2022-06-30 02:36:38'),
(3240, 1, 'admin/business-settings/21/edit', 'GET', '119.13.87.178', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 02:36:43', '2022-06-30 02:36:43'),
(3241, 1, 'admin/business-settings/21', 'PUT', '119.13.87.178', '{\"key\":\"maintenance_mode\",\"content\":\"0\",\"_token\":\"ZNwKpOKYY0pvIDX53EpboEO5x5oPLegdpjrr5C6G\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/business-settings\"}', '2022-06-30 02:36:49', '2022-06-30 02:36:49'),
(3242, 1, 'admin/business-settings', 'GET', '119.13.87.178', '[]', '2022-06-30 02:36:49', '2022-06-30 02:36:49'),
(3243, 1, 'admin/business-settings', 'GET', '119.13.87.178', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2022-06-30 02:36:55', '2022-06-30 02:36:55'),
(3244, 1, 'admin/business-settings', 'GET', '119.13.87.178', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2022-06-30 02:37:02', '2022-06-30 02:37:02'),
(3245, 1, 'admin/business-settings/5/edit', 'GET', '119.13.87.178', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 02:37:06', '2022-06-30 02:37:06'),
(3246, 1, 'admin/business-settings/5', 'PUT', '119.13.87.178', '{\"key\":\"business_name\",\"content\":\"DBfoods\",\"_token\":\"ZNwKpOKYY0pvIDX53EpboEO5x5oPLegdpjrr5C6G\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/business-settings?&page=1\"}', '2022-06-30 02:37:10', '2022-06-30 02:37:10'),
(3247, 1, 'admin/business-settings', 'GET', '119.13.87.178', '{\"page\":\"1\"}', '2022-06-30 02:37:10', '2022-06-30 02:37:10'),
(3248, 1, 'admin/business-settings/5/edit', 'GET', '119.13.87.178', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 02:37:14', '2022-06-30 02:37:14'),
(3249, 1, 'admin/business-settings/5', 'PUT', '119.13.87.178', '{\"key\":\"business_name\",\"content\":\"DBfood\",\"_token\":\"ZNwKpOKYY0pvIDX53EpboEO5x5oPLegdpjrr5C6G\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/testfood.dbestech.com\\/admin\\/business-settings?&page=1\"}', '2022-06-30 02:37:17', '2022-06-30 02:37:17'),
(3250, 1, 'admin/business-settings', 'GET', '119.13.87.178', '{\"page\":\"1\"}', '2022-06-30 02:37:18', '2022-06-30 02:37:18');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'Zone', 'admin.zones', '', '/zones*', '2022-06-15 00:05:18', '2022-06-15 00:05:18');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2021-11-08 03:39:48', '2021-11-08 03:39:48');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 8, NULL, NULL),
(1, 10, NULL, NULL),
(1, 11, NULL, NULL),
(1, 12, NULL, NULL),
(1, 13, NULL, NULL),
(1, 2, NULL, NULL),
(1, 8, NULL, NULL),
(1, 10, NULL, NULL),
(1, 11, NULL, NULL),
(1, 12, NULL, NULL),
(1, 13, NULL, NULL),
(1, 14, NULL, NULL),
(1, 15, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$Y51Zi5Jvqirdbr9n8QaD2uhUPIArCpGIXDa7enW6DcfAzM4aE6KWi', 'Administrator', NULL, 'j2o06aJvWk5agXZakVSIDFNGDFXhQCa6Sn7qdMgkJBC64KwxGcYzWNl1vMkc', '2021-11-08 03:39:48', '2022-06-17 19:36:59');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'currency', 'USD', '2022-02-27 23:05:36', '2022-06-11 02:37:15'),
(4, 'paypal', '{\"status\":\"1\",\"paypal_client_id\":\"AYkWuTf46Z1LRsxr5V1nXXmvplE1Pox0WLJG7JeYPQMQ3RjGtBJ_e7dHzZZO-Pf7dnV5iMhhgMgRhRs5\",\"paypal_secret_id\":\"EMllsYjwRcI3k7TSQjLhH5M8xJb1grRTF7Vrq972dYhzTzIb_j_rVDlEMGiyRhk9eNJuvhk7WdqkMwrR\"}', '2022-02-27 23:29:33', '2022-06-30 02:36:28'),
(5, 'business_name', 'DBfood', NULL, '2022-06-30 02:37:17'),
(6, 'country', 'USA', NULL, '2022-06-25 03:34:27'),
(7, 'cash_on_delivery', '{\"status\":\"1\"}', NULL, NULL),
(8, 'fcm_project_id', 'e-food-9e6e3', NULL, NULL),
(9, 'push_notification_key', 'AAAAfk7yQP4:APA91bFDnCTbGWYBmsXfg4NrO5xYIpSpX3T0AVS1SgBBNfRknugrBNq8rhsR9qJaQwqx9XGLjlk0hNOQBu1Lfhvicgk96JDEBLGV5BKlXDMUemeffIWB0RTFqXiY_ybZCUaRRiHbVwzw', NULL, NULL),
(10, 'order_pending_message', '{\"status\":\"68\",\"message\":\"Your order is successfully placed\"}', NULL, '2022-06-11 02:35:55'),
(11, 'order_confirmation_msg', '{\"status\":1,\"message\":\"Your order is confirmed\"}', NULL, NULL),
(12, 'order_processing_message', '{\"status\":1,\"message\":\"Your order is started for cooking\"}', NULL, NULL),
(13, 'out_for_delivery_message', '{\"status\":1,\"message\":\"Your food is ready for delivery\"}', NULL, NULL),
(14, 'order_delivered_message', '{\"status\":1,\"message\":\"Your order is delivered\"}', NULL, NULL),
(15, 'delivery_boy_assign_message', '{\"status\":1,\"message\":\"Your order has been assigned to a delivery man\"}', NULL, NULL),
(16, 'delivery_boy_start_message', '{\"status\":1,\"message\":\"Your order is picked up by delivery man\"}', NULL, NULL),
(17, 'delivery_boy_delivered_message', '{\"status\":1,\"message\":\"Order delivered successfully\"}', NULL, NULL),
(18, 'order_handover_message', '{\"status\":1,\"message\":\"Delivery man is on the way\"}', NULL, NULL),
(19, 'order_cancled_message', '{\"status\":\"1\",\"message\":\"Order is canceled by your request\"}', NULL, '2022-06-25 03:33:35'),
(20, 'digital_payment', '{\"status\":\"1\"}', NULL, NULL),
(21, 'maintenance_mode', '0', NULL, '2022-06-30 02:36:49'),
(22, 'canceled_by_deliveryman', '1', NULL, NULL),
(23, 'digit_after_decimal_point', '', NULL, NULL),
(24, 'order_confirmation_model', 'deliveryman', NULL, NULL),
(25, 'delivery_boy_push_notification_key', 'AAAAqRzeUuI:APA91bE_MM8ulmk_1CnRh7RigGovPaQSqXVBMdsqkOM5KqMuj_iqNnmoB0vV4ZY6Ikhl0eMFl1lXEjQopBm5oYWTpTrCRD8GSZbI1s1Vz9jkJJ4-ZYvPYMOWHw8F9g1nKkpUQsrsKUYL', NULL, NULL),
(26, 'dm_maximum_orders', '10', NULL, '2022-06-28 19:51:13'),
(27, 'order_delivery_verification', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `country` varchar(255) NOT NULL,
  `currency_code` varchar(255) NOT NULL,
  `currency_symbol` varchar(255) NOT NULL,
  `exchange_rate` decimal(8,2) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `country`, `currency_code`, `currency_symbol`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'USA', 'USD', '$', '1.00', '2022-06-17 08:43:42', '2022-06-17 08:43:42');

-- --------------------------------------------------------

--
-- Table structure for table `customer_addresses`
--

CREATE TABLE `customer_addresses` (
  `id` bigint(20) NOT NULL,
  `address_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `contact_person_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_addresses`
--

INSERT INTO `customer_addresses` (`id`, `address_type`, `contact_person_number`, `address`, `latitude`, `longitude`, `user_id`, `contact_person_name`, `created_at`, `updated_at`) VALUES
(310, NULL, '123456', '300 SW 6th Ave, Portland, OR 97204, USA', '45.521440160939385', '-122.67700038850307', 27, 'Zaminder Ahmed', '2022-05-06 06:33:37', '2022-05-06 06:33:37'),
(311, NULL, '123456', '431 SW Harvey Milk St, Portland, OR 97204, USA', '45.5209264133938', '-122.67611358314753', 27, 'Zaminder Ahmed', '2022-05-06 19:22:35', '2022-05-06 19:22:35'),
(312, NULL, '123456', 'SW 5th Ave &, SW Oak St, Portland, OR 97204, USA', '45.52129475230209', '-122.6760096475482', 27, 'Zaminder Ahmed', '2022-05-06 19:23:37', '2022-05-06 19:23:37'),
(313, NULL, '123456', 'Dhaka Medical College Hospital, Secretariat Road, Dhaka, Bangladesh', '23.726055331002335', '90.39752919226885', 27, 'Zaminder Ahmed', '2022-05-07 05:20:33', '2022-05-07 05:20:33'),
(314, NULL, '123456', 'Dhaka University, Nilkhet Road, Dhaka, Bangladesh', '23.733844890237', '90.39286985993387', 27, 'Zaminder Ahmed', '2022-05-07 05:21:13', '2022-05-07 05:21:13'),
(315, NULL, '123456', 'Dhaka University, Dhaka, Bangladesh', '23.73416991826925', '90.39275016635656', 27, 'Zaminder Ahmed', '2022-05-07 05:21:37', '2022-05-07 05:21:37'),
(316, NULL, '123456', 'P9MV+H78, Dhaka 1205, Bangladesh', '23.733587383977714', '90.39327554404734', 27, 'Zaminder Ahmed', '2022-05-07 07:34:28', '2022-05-07 07:34:28'),
(317, NULL, '123456', 'Zinzira Nadu Byapari Ghat, Keraniganj, Bangladesh', '23.709555115376947', '90.39697095751762', 27, 'Zaminder Ahmed', '2022-05-07 07:34:54', '2022-05-07 07:34:54'),
(318, NULL, '123456', 'P94W+CJ3, Keraniganj, Bangladesh', '23.706057675788557', '90.39652436971664', 27, 'Zaminder Ahmed', '2022-05-07 07:37:17', '2022-05-07 07:37:17'),
(319, NULL, '123456', 'MF8G+RFJ, Fatullah, Bangladesh', '23.66670018679718', '90.4759144037962', 27, 'Zaminder Ahmed', '2022-05-07 08:19:59', '2022-05-07 08:19:59'),
(320, NULL, '123456', 'MFMM+6W8, Siddhirganj, Bangladesh', '23.682568404443895', '90.4848749935627', 27, 'Zaminder Ahmed', '2022-05-07 08:20:22', '2022-05-07 08:20:22'),
(321, NULL, '123456', 'MFJP+X5G, Siddhirganj, Bangladesh', '23.682555508729916', '90.48516836017372', 27, 'Zaminder Ahmed', '2022-05-07 08:29:27', '2022-05-07 08:29:27'),
(322, NULL, '9876543211', '293, Kola St, Balaji Colony, Tirupati, Andhra Pradesh 517501, India', '13.63048971306871', '79.41981263458729', 233, 'bunty', '2022-05-07 10:05:35', '2022-05-07 10:05:35'),
(323, NULL, '1234567899', '2nd floor vasan eye care upstairs, Tata Nagar, Tirupati, Andhra Pradesh 517501, India', '13.634588660683397', '79.42666601389647', 246, 'asdfgh', '2022-05-07 18:27:59', '2022-05-07 18:27:59'),
(324, NULL, '1234567889', 'JCJ9+2QQ, Mallaiah Gunta Katta, Tata Nagar, Tirupati, Andhra Pradesh 517501, India', '13.630084701904188', '79.41968087106943', 247, 'dsdsdss', '2022-05-07 19:08:59', '2022-05-07 19:08:59'),
(325, NULL, '1234567899', 'JCJ9+3P2, GN Mada St, Mallaiah Gunta Katta, Varadaraja Nagar, Tirupati, Andhra Pradesh 517501, India', '13.628753992595302', '79.41898919641972', 246, 'asdfgh', '2022-05-07 19:10:31', '2022-05-07 19:10:31'),
(326, NULL, '1234567899', 'Elk Fountain, 1120 SW 5th Ave, Portland, OR 97204, USA', '45.51563', '-122.677433', 247, 'asdfgh', '2022-05-07 19:11:18', '2022-05-07 19:11:18'),
(327, NULL, '1234567889', 'Elk Fountain, 1120 SW 5th Ave, Portland, OR 97204, USA', '45.51563', '-122.677433', 246, 'dsdsdss', '2022-05-07 19:13:25', '2022-05-07 19:13:25'),
(328, NULL, '1234567899', 'Elk Fountain, 1120 SW 5th Ave, Portland, OR 97204, USA', '45.51563', '-122.677433', 247, 'asdfgh', '2022-05-07 19:14:14', '2022-05-07 19:14:14'),
(329, NULL, '1234567889', 'JCJ9+RW7, Tilak Rd, Varadaraja Nagar, Tirupati, Andhra Pradesh 517501, India', '13.63197713749497', '79.41976770758629', 247, 'dsdsdss', '2022-05-08 00:33:53', '2022-05-08 00:33:53'),
(330, NULL, '123456', 'China, Shang Hai Shi, Pu Dong Xin Qu, Lujiazui, CN 上海市 浦东新区 501 上海中心 邮政编码: 200120', '31.232933932960947', '121.50589697062969', 27, 'Zaminder Ahmed', '2022-05-08 04:33:07', '2022-05-08 04:33:07'),
(331, NULL, '123456', 'Dhaka University, Dhaka, Bangladesh', '23.73416991826925', '90.39275016635656', 27, 'Zaminder Ahmed', '2022-05-08 04:39:38', '2022-05-08 04:39:38'),
(332, NULL, '123456', 'MFJP+X5G, Siddhirganj, Bangladesh', '23.68230005051442', '90.48568334430455', 27, 'Zaminder Ahmed', '2022-05-08 05:23:30', '2022-05-08 05:23:30'),
(333, NULL, '123456', '75692 Painted Desert Dr, Indian Wells, CA 92210, USA', '33.71763097751825', '-116.34075500071047', 27, 'Zaminder Ahmed', '2022-05-08 05:23:54', '2022-05-08 05:23:54'),
(334, NULL, '123456', '47255 Crystal Loop, Indian Wells, CA 92210, USA', '33.70331279135061', '-116.33975587785245', 27, 'Zaminder Ahmed', '2022-05-08 05:45:59', '2022-05-08 05:45:59'),
(335, NULL, '123456', '47300 Crystal Loop Indian Wells 92210 United States', '33.70390187597277', '-116.3397340849042', 27, 'Zaminder Ahmed', '2022-05-08 07:27:21', '2022-05-08 07:27:21'),
(336, NULL, '123456', '75668 Vista Del Rey, Indian Wells, CA 92210, USA', '33.721848053431174', '-116.34220741689207', 27, 'Zaminder Ahmed', '2022-05-08 08:48:52', '2022-05-08 08:48:52'),
(337, NULL, '0183696935', '51, Jln Damansara, Kuala Lumpur Sentral, 50490 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.1391743345314405', '3.1391743345314405', 248, 'Low Jung Xuan', '2022-05-08 10:12:09', '2022-05-08 10:12:09'),
(338, NULL, '0183696935', '51, Jln Damansara, Kuala Lumpur Sentral, 50490 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.1391743345314405', '3.1391743345314405', 248, 'Low Jung Xuan', '2022-05-08 10:12:50', '2022-05-08 10:12:50'),
(339, NULL, '0183696935', '51, Jln Damansara, Kuala Lumpur Sentral, 50490 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.1391743345314405', '3.1391743345314405', 248, 'Low Jung Xuan', '2022-05-08 10:13:46', '2022-05-08 10:13:46'),
(340, NULL, '0183696935', '51, Jln Damansara, Kuala Lumpur Sentral, 50490 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.138938654290104', '3.138938654290104', 248, 'Low Jung Xuan', '2022-05-08 10:18:55', '2022-05-08 10:18:55'),
(341, NULL, '0183696935', '4MQQ+Q3Q, Perdana Botanical Gardens, 50480 Kuala Lumpur, Federal Territory of Kuala Lumpur, Malaysia', '3.138938654290104', '3.138938654290104', 248, 'Low Jung Xuan', '2022-05-08 10:19:06', '2022-05-08 10:19:06'),
(342, NULL, '0183696935', '4MQQ+Q3Q, Perdana Botanical Gardens, 50480 Kuala Lumpur, Federal Territory of Kuala Lumpur, Malaysia', '3.138938654290104', '3.138938654290104', 248, 'Low Jung Xuan', '2022-05-08 10:20:04', '2022-05-08 10:20:04'),
(343, NULL, '0183696935', '4MQQ+Q3Q, Perdana Botanical Gardens, 50480 Kuala Lumpur, Federal Territory of Kuala Lumpur, Malaysia', '3.138938654290104', '3.138938654290104', 248, 'Low Jung Xuan', '2022-05-08 10:20:33', '2022-05-08 10:20:33'),
(344, NULL, '0183696935', '51, Jln Damansara, Kuala Lumpur Sentral, 50490 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.1402121304161326', '3.1402121304161326', 248, 'Low Jung Xuan', '2022-05-08 10:21:10', '2022-05-08 10:21:10'),
(345, NULL, '0183696935', '51, Jln Damansara, Kuala Lumpur Sentral, 50490 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.1410142454966063', '3.1410142454966063', 248, 'Low Jung Xuan', '2022-05-08 10:24:57', '2022-05-08 10:24:57'),
(346, NULL, '0183696935', 'Jalan Kebun Bunga, Tasik Perdana, 50480 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.1410142454966063', '3.1410142454966063', 248, 'Low Jung Xuan', '2022-05-08 10:25:34', '2022-05-08 10:25:34'),
(347, NULL, '0183696935', 'Jalan Kebun Bunga, Tasik Perdana, 50480 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.1410142454966063', '3.1410142454966063', 248, 'Low Jung Xuan', '2022-05-08 10:26:47', '2022-05-08 10:26:47'),
(348, NULL, '0183696935', '51, Jln Damansara, Kuala Lumpur Sentral, 50490 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.1389262676850347', '3.1389262676850347', 248, 'Low Jung Xuan', '2022-05-08 10:28:22', '2022-05-08 10:28:22'),
(349, NULL, '0183696935', '352, Jln Selangor, Bukit Persekutuan, 50480 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.1389262676850347', '3.1389262676850347', 248, 'Low Jung Xuan', '2022-05-08 10:29:23', '2022-05-08 10:29:23'),
(350, NULL, '0183696935', '51, Jln Damansara, Kuala Lumpur Sentral, 50490 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.1391813647650957', '3.1391813647650957', 248, 'Low Jung Xuan', '2022-05-08 10:33:04', '2022-05-08 10:33:04'),
(351, NULL, '0183696935', '51, Jln Damansara, Kuala Lumpur Sentral, 50490 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.1391813647650957', '3.1391813647650957', 248, 'Low Jung Xuan', '2022-05-08 10:34:32', '2022-05-08 10:34:32'),
(352, NULL, '0183696935', '51, Jln Damansara, Kuala Lumpur Sentral, 50490 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.1391813647650957', '3.1391813647650957', 248, 'Low Jung Xuan', '2022-05-08 10:35:06', '2022-05-08 10:35:06'),
(353, NULL, '123456', '46316 Briarwood Dr, Indian Wells, CA 92210, USA', '33.708840600291616', '-116.36325605213642', 27, 'Zaminder Ahmed', '2022-05-08 18:36:14', '2022-05-08 18:36:14'),
(354, NULL, '123456', 'Dhaka New Market, Mirpur Road, Dhaka, Bangladesh', '23.73319360405374', '90.38376644253731', 27, 'Zaminder Ahmed', '2022-05-08 18:39:03', '2022-05-08 18:39:03'),
(355, NULL, '123456', 'Dhaka New Market, Mirpur Road, Dhaka, Bangladesh', '23.713368638999157', '90.38401085883379', 27, 'Zaminder Ahmed', '2022-05-08 19:13:46', '2022-05-08 19:13:46'),
(356, NULL, '123456', 'Mouban, Bir Uttam Samsul Alam RoadDhaka, ঢাকা 1205, Bangladesh', '23.741430814726414', '90.3823609650135', 27, 'Zaminder Ahmed', '2022-05-08 19:21:25', '2022-05-08 19:21:25'),
(357, NULL, '123456', 'Shop No.: 164/1, 2nd Floor, New Super Market (South, New Market Backside Road, Dhaka 1205, Bangladesh', '23.733694499277302', '90.38367357105017', 27, 'Zaminder Ahmed', '2022-05-08 19:22:02', '2022-05-08 19:22:02'),
(358, NULL, '0183696935', '15, Jalan JalakTaman Sri Bahtera56100 Kuala LumpurWilayah Persekutuan Kuala Lumpur', '3.139170652028082', '3.139170652028082', 248, 'Low Jung Xuan', '2022-05-08 19:30:02', '2022-05-08 19:30:02'),
(359, NULL, '0183696935', '4MRP+5M Kuala Lumpur, Federal Territory of Kuala Lumpur, Malaysia', '3.1455463849828664', '3.1455463849828664', 248, 'Low Jung Xuan', '2022-05-08 19:31:14', '2022-05-08 19:31:14'),
(360, NULL, '0183696935', '51, Jln Damansara, Kuala Lumpur Sentral, 50490 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.139984819728298', '3.139984819728298', 248, 'Low Jung Xuan', '2022-05-08 19:33:19', '2022-05-08 19:33:19'),
(361, NULL, '0183696935', '51, Jln Damansara, Kuala Lumpur Sentral, 50490 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.1391565915605804', '3.1391565915605804', 248, 'Low Jung Xuan', '2022-05-08 19:35:30', '2022-05-08 19:35:30'),
(362, NULL, '0183696935', '4MQQ+Q3Q, Perdana Botanical Gardens, 50480 Kuala Lumpur, Federal Territory of Kuala Lumpur, Malaysia', '3.139859949476662', '3.139859949476662', 248, 'Low Jung Xuan', '2022-05-08 19:39:24', '2022-05-08 19:39:24'),
(363, NULL, '0183696935', '1, Jalan Perdana, Tasik Perdana, 50480 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.143391796675992', '3.143391796675992', 248, 'Low Jung Xuan', '2022-05-08 19:39:34', '2022-05-08 19:39:34'),
(364, NULL, '0183696935', 'KL Bird Park, Perdana Botanical Garden, 920, Jalan Cenderawasih, Perdana Botanical Gardens, 50480 Kuala Lumpur, Federal Territory of Kuala Lumpur, Malaysia', '3.143391796675992', '3.143391796675992', 248, 'Low Jung Xuan', '2022-05-08 19:39:37', '2022-05-08 19:39:37'),
(365, NULL, '0183696935', 'Memorial Tun Abdul Razak, Perdana Botanical Gardens, 50480 Kuala Lumpur, Federal Territory of Kuala Lumpur, Malaysia', '3.1434738157343523', '3.1434738157343523', 248, 'Low Jung Xuan', '2022-05-08 19:40:43', '2022-05-08 19:40:43'),
(366, NULL, '0183696935', '51, Jln Damansara, Kuala Lumpur Sentral, 50490 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.1395636754954888', '3.1395636754954888', 248, 'Low Jung Xuan', '2022-05-08 19:45:43', '2022-05-08 19:45:43'),
(367, NULL, '0183696935', '1001, Jln Sultan Ismail, Chow Kit, 50250 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.1604466002609346', '3.1604466002609346', 248, 'Low Jung Xuan', '2022-05-08 19:48:42', '2022-05-08 19:48:42'),
(368, NULL, '0183696935', 'Bangunan Institiut Antara Bangsa, Jalan Parlimen, 50480, Kuala Lumpur, WP Kuala Lumpur, Kuala Lumpur, 50480 Kuala Lumpur, Federal Territory of Kuala Lumpur, Malaysia', '3.15043001271726', '3.15043001271726', 248, 'Low Jung Xuan', '2022-05-08 19:52:58', '2022-05-08 19:52:58'),
(369, NULL, '0183696935', '51, Jln Damansara, Kuala Lumpur Sentral, 50490 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.139002930724832', '3.139002930724832', 248, 'Low Jung Xuan', '2022-05-08 19:59:35', '2022-05-08 19:59:35'),
(370, NULL, '0183696935', 'Tugu Negara, Kuala Lumpur, 50480 Kuala Lumpur, Federal Territory of Kuala Lumpur, Malaysia', '3.1498799864165035', '3.1498799864165035', 248, 'Low Jung Xuan', '2022-05-08 20:02:55', '2022-05-08 20:02:55'),
(371, NULL, '0183696935', '51, Jln Damansara, Kuala Lumpur Sentral, 50490 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.139002930724832', '3.139002930724832', 248, 'Low Jung Xuan', '2022-05-08 20:09:37', '2022-05-08 20:09:37'),
(372, NULL, '0183696935', '51, Jln Damansara, Kuala Lumpur Sentral, 50490 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.139002930724832', '3.139002930724832', 248, 'Low Jung Xuan', '2022-05-08 20:31:53', '2022-05-08 20:31:53'),
(373, NULL, '123456', 'Elk Fountain, 1120 SW 5th Ave, Portland, OR 97204, USA', '45.515630100441165', '-122.67743289470673', 27, 'Zaminder Ahmed', '2022-05-08 21:56:32', '2022-05-08 21:56:32'),
(374, NULL, '123456', 'Elk Fountain, 1120 SW 5th Ave, Portland, OR 97204, USA', '45.515630100441165', '-122.67743289470673', 27, 'Zaminder Ahmed', '2022-05-08 21:59:27', '2022-05-08 21:59:27'),
(375, NULL, '123456', 'Elk Fountain, 1120 SW 5th Ave, Portland, OR 97204, USA', '45.515630100441165', '-122.67743289470673', 27, 'Zaminder Ahmed', '2022-05-08 22:01:59', '2022-05-08 22:01:59'),
(376, NULL, '123456', '300 SW 6th Ave, Portland, OR 97204, USA', '45.521440160939385', '-122.67700038850307', 27, 'Zaminder Ahmed', '2022-05-08 22:11:34', '2022-05-08 22:11:34'),
(377, NULL, '123456', '300 SW 6th Ave, Portland, OR 97204, USA', '45.521440160939385', '-122.67700038850307', 27, 'Zaminder Ahmed', '2022-05-08 22:16:50', '2022-05-08 22:16:50'),
(378, NULL, '123456', 'Elk Fountain, 1120 SW 5th Ave, Portland, OR 97204, USA', '45.515630100441165', '-122.67743289470673', 27, 'Zaminder Ahmed', '2022-05-08 22:28:13', '2022-05-08 22:28:13'),
(379, NULL, '0183696935', '51, Jln Damansara, Kuala Lumpur Sentral, 50490 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.1400922817827714', '3.1400922817827714', 248, 'Low Jung Xuan', '2022-05-08 22:33:55', '2022-05-08 22:33:55'),
(380, NULL, '0183696935', '51, Jln Damansara, Kuala Lumpur Sentral, 50490 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.141772504803649', '101.68700091540813', 248, 'Low Jung Xuan', '2022-05-08 22:35:18', '2022-05-08 22:35:18'),
(381, NULL, '123456', '300 SW 6th Ave, Portland, OR 97204, USA', '45.521440160939385', '-122.67700038850307', 27, 'Zaminder Ahmed', '2022-05-08 22:52:47', '2022-05-08 22:52:47'),
(382, NULL, '123456', '520 SW Oak St, Portland, OR 97204, USA', '45.521440160939385', '-122.6764565706253', 27, 'Zaminder Ahmed', '2022-05-08 23:07:17', '2022-05-08 23:07:17'),
(383, NULL, '0183696935', '51, Jln Damansara, Kuala Lumpur Sentral, 50490 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.1397678869491377', '101.687587313354', 248, 'Low Jung Xuan', '2022-05-08 23:08:25', '2022-05-08 23:08:25'),
(384, NULL, '0183696935', '51, Jln Damansara, Kuala Lumpur Sentral, 50490 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.1415046870097743', '101.6883470490575', 248, 'Low Jung Xuan', '2022-05-08 23:10:36', '2022-05-08 23:10:36'),
(385, NULL, '0183696935', '51, Jln Damansara, Kuala Lumpur Sentral, 50490 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.1394066669900393', '101.68669112026693', 248, 'Low Jung Xuan', '2022-05-08 23:12:24', '2022-05-08 23:12:24'),
(386, NULL, '0183696935', '5, Jalan Perdana, Tasik Perdana, 50480 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.143264918201571', '101.68865449726582', 248, 'Low Jung Xuan', '2022-05-08 23:12:38', '2022-05-08 23:12:38'),
(387, NULL, '0183696935', 'Memorial Tun Abdul Razak, Perdana Botanical Gardens, 50480 Kuala Lumpur, Federal Territory of Kuala Lumpur, Malaysia', '3.1411558542302034', '101.68761011213066', 248, 'Low Jung Xuan', '2022-05-08 23:15:28', '2022-05-08 23:15:28'),
(388, NULL, '0183696935', 'KL1069 Taman Burung, Perdana Botanical Gardens, 50480 Kuala Lumpur, Federal Territory of Kuala Lumpur, Malaysia', '3.1425592191757756', '101.68759569525719', 248, 'Low Jung Xuan', '2022-05-08 23:15:38', '2022-05-08 23:15:38'),
(389, NULL, '0183696935', '5A, Jalan Yap Ah Loy, City Centre, 50050 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.1466461070995453', '101.69708333909512', 248, 'Low Jung Xuan', '2022-05-08 23:21:04', '2022-05-08 23:21:04'),
(390, NULL, '0183696935', '3, Perkarangan Tun Ismail, Kuala Lumpur, 50480 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.1533019956000437', '101.68727114796638', 248, 'Low Jung Xuan', '2022-05-08 23:22:24', '2022-05-08 23:22:24'),
(391, NULL, '0183696935', '9b, Jalan Kota, Bukit Damansara, 50480 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.14779738267799', '101.67360965162514', 248, 'Low Jung Xuan', '2022-05-08 23:25:05', '2022-05-08 23:25:05'),
(392, NULL, '0183696935', '352, Jln Selangor, Bukit Persekutuan, 50480 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.1390956628658815', '101.67941730469465', 248, 'Low Jung Xuan', '2022-05-08 23:26:22', '2022-05-08 23:26:22'),
(393, NULL, '0183696935', 'Planetarium/Muzium Polis, Perdana Botanical Gardens, 50480 Kuala Lumpur, Federal Territory of Kuala Lumpur, Malaysia', '3.1404203590146027', '101.68774958699942', 248, 'Low Jung Xuan', '2022-05-09 02:22:43', '2022-05-09 02:22:43'),
(394, NULL, '0183696935', '763, Jalan Ipoh, 51200 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.2085694579457735', '101.67212169617416', 248, 'Low Jung Xuan', '2022-05-09 02:28:14', '2022-05-09 02:28:14'),
(395, NULL, '0183696935', 'Jalan Kebun Bunga, Tasik Perdana, 50480 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.13958007936783', '101.68605376034975', 248, 'Low Jung Xuan', '2022-05-09 05:04:09', '2022-05-09 05:04:09'),
(396, NULL, '0183696935', 'Memorial Tun Abdul Razak, Perdana Botanical Gardens, 50480 Kuala Lumpur, Federal Territory of Kuala Lumpur, Malaysia', '3.1410226148076354', '101.68766140937805', 248, 'Low Jung Xuan', '2022-05-09 05:18:27', '2022-05-09 05:18:27'),
(397, NULL, '0183696935', '64PVG88F+72', '4.51563', '-122.677433', 248, 'Low Jung Xuan', '2022-05-09 05:20:41', '2022-05-09 05:20:41'),
(398, NULL, '0183696935', 'KL Bird Park, Perdana Botanical Garden, 920, Jalan Cenderawasih, Perdana Botanical Gardens, 50480 Kuala Lumpur, Federal Territory of Kuala Lumpur, Malaysia', '3.1425284201561885', '101.68886572122574', 248, 'Low Jung Xuan', '2022-05-09 05:33:34', '2022-05-09 05:33:34'),
(399, NULL, '0183696935', '4MVR+G9 Kuala Lumpur, Federal Territory of Kuala Lumpur, Malaysia', '3.1425284201561885', '101.68886572122574', 248, 'Low Jung Xuan', '2022-05-09 05:53:16', '2022-05-09 05:53:16'),
(400, NULL, '0183696935', '4MRP+8H Kuala Lumpur, Federal Territory of Kuala Lumpur, Malaysia', '3.1407551315939144', '101.68638300150633', 248, 'Low Jung Xuan', '2022-05-09 07:57:13', '2022-05-09 07:57:13'),
(401, NULL, '0183696935', 'Kuala Lumpur Butterfly Park, Jalan Cenderawasih, Tasik Perdana, 50480 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.145255134182308', '101.68859247118235', 248, 'Low Jung Xuan', '2022-05-09 08:03:22', '2022-05-09 08:03:22'),
(402, NULL, '0965280940', 'A16/1 Đ. Lê Văn Việt, Tăng Nhơn Phú A, Quận 9, Thành phố Hồ Chí Minh, Vietnam', '10.8467138', '106.7918561', 254, 'hoang', '2022-05-10 00:44:00', '2022-05-10 00:44:00'),
(403, NULL, '0965280940', 'A16/1 Đ. Lê Văn Việt, Tăng Nhơn Phú A, Quận 9, Thành phố Hồ Chí Minh, Vietnam', '10.8467138', '106.7918561', 254, 'hoang', '2022-05-10 00:44:01', '2022-05-10 00:44:01'),
(404, NULL, '0965280940', 'A16/1 Đ. Lê Văn Việt, Tăng Nhơn Phú A, Quận 9, Thành phố Hồ Chí Minh, Vietnam', '10.8467138', '106.7918561', 254, 'hoang', '2022-05-10 00:44:07', '2022-05-10 00:44:07'),
(405, NULL, '0965280940', 'A16/1 Đ. Lê Văn Việt, Tăng Nhơn Phú A, Quận 9, Thành phố Hồ Chí Minh, Vietnam', '10.8467138', '106.7918561', 254, 'hoang', '2022-05-10 00:44:13', '2022-05-10 00:44:13'),
(406, NULL, '0965280940', 'A16/1 Đ. Lê Văn Việt, Tăng Nhơn Phú A, Quận 9, Thành phố Hồ Chí Minh, Vietnam', '10.8467138', '106.7918561', 254, 'hoang', '2022-05-10 02:40:53', '2022-05-10 02:40:53'),
(407, NULL, '0965280940', 'A16/1 Đ. Lê Văn Việt, Tăng Nhơn Phú A, Quận 9, Thành phố Hồ Chí Minh, Vietnam', '10.8467138', '106.7918561', 254, 'hoang', '2022-05-10 03:29:05', '2022-05-10 03:29:05'),
(408, NULL, '0965280940', 'A16/1 Đ. Lê Văn Việt, Tăng Nhơn Phú A, Quận 9, Thành phố Hồ Chí Minh, Vietnam', '10.8467138', '106.7918561', 254, 'hoang', '2022-05-10 03:44:50', '2022-05-10 03:44:50'),
(409, NULL, '0965280940', 'A16/1 Đ. Lê Văn Việt, Tăng Nhơn Phú A, Quận 9, Thành phố Hồ Chí Minh, Vietnam', '10.8467138', '106.7918561', 254, 'hoang', '2022-05-10 03:49:03', '2022-05-10 03:49:03'),
(410, NULL, '0965280940', 'A16/1 Đ. Lê Văn Việt, Tăng Nhơn Phú A, Quận 9, Thành phố Hồ Chí Minh, Vietnam', '10.8467138', '106.7918561', 254, 'hoang', '2022-05-10 03:49:19', '2022-05-10 03:49:19'),
(411, NULL, '0965280940', 'A16/1 Đ. Lê Văn Việt, Tăng Nhơn Phú A, Quận 9, Thành phố Hồ Chí Minh, Vietnam', '10.8467138', '106.7918561', 254, 'hoang', '2022-05-10 03:51:08', '2022-05-10 03:51:08'),
(412, NULL, '0965280940', 'A16/1 Đ. Lê Văn Việt, Tăng Nhơn Phú A, Quận 9, Thành phố Hồ Chí Minh, Vietnam', '10.8467138', '106.7918561', 254, 'hoang', '2022-05-10 03:51:09', '2022-05-10 03:51:09'),
(413, NULL, '0965280940', 'A16/1 Đ. Lê Văn Việt, Tăng Nhơn Phú A, Quận 9, Thành phố Hồ Chí Minh, Vietnam', '10.8467138', '106.7918561', 254, 'hoang', '2022-05-10 03:51:31', '2022-05-10 03:51:31'),
(414, NULL, '0965280940', 'A16/1 Đ. Lê Văn Việt, Tăng Nhơn Phú A, Quận 9, Thành phố Hồ Chí Minh, Vietnam', '10.8467138', '106.7918561', 254, 'hoang', '2022-05-10 03:53:00', '2022-05-10 03:53:00'),
(415, NULL, '0965280940', 'A16/1 Đ. Lê Văn Việt, Tăng Nhơn Phú A, Quận 9, Thành phố Hồ Chí Minh, Vietnam', '10.8467138', '106.7918561', 254, 'hoang', '2022-05-10 03:54:25', '2022-05-10 03:54:25'),
(416, NULL, '0965280940', 'A16/1 Đ. Lê Văn Việt, Tăng Nhơn Phú A, Quận 9, Thành phố Hồ Chí Minh, Vietnam', '10.8467138', '106.7918561', 254, 'hoang', '2022-05-10 03:56:18', '2022-05-10 03:56:18'),
(417, NULL, '0965280940', 'A16/1 Đ. Lê Văn Việt, Tăng Nhơn Phú A, Quận 9, Thành phố Hồ Chí Minh, Vietnam', '10.8467138', '106.7918561', 254, 'hoang', '2022-05-10 03:57:34', '2022-05-10 03:57:34'),
(418, NULL, '0183696935', 'Memorial Tun Abdul Razak, Perdana Botanical Gardens, 50480 Kuala Lumpur, Federal Territory of Kuala Lumpur, Malaysia', '3.141525777663528', '101.68678767979145', 248, 'Low Jung Xuan', '2022-05-10 03:59:18', '2022-05-10 03:59:18'),
(419, NULL, '0965280940', 'A16/1 Đ. Lê Văn Việt, Tăng Nhơn Phú A, Quận 9, Thành phố Hồ Chí Minh, Vietnam', '10.8467138', '106.7918561', 254, 'hoang', '2022-05-10 04:01:53', '2022-05-10 04:01:53'),
(420, NULL, '0965280940', 'A16/1 Đ. Lê Văn Việt, Tăng Nhơn Phú A, Quận 9, Thành phố Hồ Chí Minh, Vietnam', '10.8467138', '106.7918561', 254, 'hoang', '2022-05-10 04:23:33', '2022-05-10 04:23:33'),
(421, NULL, '0965280940', 'A16/1 Đ. Lê Văn Việt, Tăng Nhơn Phú A, Quận 9, Thành phố Hồ Chí Minh, Vietnam', '10.8467138', '106.7918561', 254, 'hoang', '2022-05-10 04:24:32', '2022-05-10 04:24:32'),
(422, NULL, '0965280940', 'A16/1 Đ. Lê Văn Việt, Tăng Nhơn Phú A, Quận 9, Thành phố Hồ Chí Minh, Vietnam', '10.8467138', '106.7918561', 254, 'hoang', '2022-05-10 04:27:19', '2022-05-10 04:27:19'),
(423, NULL, '0965280940', 'A16/1 Đ. Lê Văn Việt, Tăng Nhơn Phú A, Quận 9, Thành phố Hồ Chí Minh, Vietnam', '10.8467138', '106.7918561', 254, 'hoang', '2022-05-10 04:39:14', '2022-05-10 04:39:14'),
(424, NULL, '0965280940', 'A16/1 Đ. Lê Văn Việt, Tăng Nhơn Phú A, Quận 9, Thành phố Hồ Chí Minh, Vietnam', '10.8467138', '106.7918561', 254, 'hoang', '2022-05-10 04:41:24', '2022-05-10 04:41:24'),
(425, NULL, '0965280940', '109 Đường 379, Hiệp Phú, Quận 9, Thành phố Hồ Chí Minh, Vietnam', '10.84837638868661', '106.7907028645277', 254, 'hoang', '2022-05-10 04:46:56', '2022-05-10 04:46:56'),
(426, NULL, '0965280940', '109 Đường 379, Hiệp Phú, Quận 9, Thành phố Hồ Chí Minh, Vietnam', '10.84837638868661', '106.7907028645277', 254, 'hoang', '2022-05-10 04:47:20', '2022-05-10 04:47:20'),
(427, NULL, '0965280940', 'A16/1 Đ. Lê Văn Việt, Tăng Nhơn Phú A, Quận 9, Thành phố Hồ Chí Minh, Vietnam', '10.8467138', '106.7918561', 254, 'hoang', '2022-05-10 05:36:27', '2022-05-10 05:36:27'),
(428, NULL, '0965280940', 'A16/1 Đ. Lê Văn Việt, Tăng Nhơn Phú A, Quận 9, Thành phố Hồ Chí Minh, Vietnam', '10.8467138', '106.7918561', 254, 'hoang', '2022-05-10 06:49:15', '2022-05-10 06:49:15'),
(429, NULL, '0965280940', 'A16/1 Đ. Lê Văn Việt, Tăng Nhơn Phú A, Quận 9, Thành phố Hồ Chí Minh, Vietnam', '10.8467138', '106.7918561', 254, 'hoang', '2022-05-10 06:50:58', '2022-05-10 06:50:58'),
(430, NULL, '07370785456', '1600 Mountain View 94043 United States', '37.4219983', '-122.084', 255, 'Az', '2022-05-11 01:17:40', '2022-05-11 01:17:40'),
(431, NULL, '07370785456', '1600 Mountain View 94043 United States', '37.4219983', '-122.084', 255, 'Az', '2022-05-11 02:06:17', '2022-05-11 02:06:17'),
(432, NULL, '0965280940', 'A16/1 Đ. Lê Văn Việt, Tăng Nhơn Phú A, Quận 9, Thành phố Hồ Chí Minh, Vietnam', '10.8467138', '106.7918561', 254, 'hoang', '2022-05-11 02:33:13', '2022-05-11 02:33:13'),
(433, NULL, '0965280940', 'A16/1 Đ. Lê Văn Việt, Tăng Nhơn Phú A, Quận 9, Thành phố Hồ Chí Minh, Vietnam', '10.8467138', '106.7918561', 254, 'hoang', '2022-05-11 02:35:22', '2022-05-11 02:35:22'),
(434, NULL, '0965280940', 'A16/1 Đ. Lê Văn Việt, Tăng Nhơn Phú A, Quận 9, Thành phố Hồ Chí Minh, Vietnam', '10.8467138', '106.7918561', 254, 'hoang', '2022-05-11 02:38:36', '2022-05-11 02:38:36'),
(435, NULL, '0965280940', 'A16/1 Đ. Lê Văn Việt, Tăng Nhơn Phú A, Quận 9, Thành phố Hồ Chí Minh, Vietnam', '10.8467138', '106.7918561', 254, 'hoang', '2022-05-11 02:41:49', '2022-05-11 02:41:49'),
(436, NULL, '07370785456', '1600 Mountain View 94043 United States', '37.4219983', '-122.084', 255, 'Az', '2022-05-11 02:57:13', '2022-05-11 02:57:13'),
(437, NULL, '07370785456', '1600 Mountain View 94043 United States', '37.4219983', '-122.084', 255, 'Az', '2022-05-11 02:58:32', '2022-05-11 02:58:32'),
(438, NULL, '07370785456', '1600 Mountain View 94043 United States', '37.4219983', '-122.084', 255, 'Az', '2022-05-12 06:06:46', '2022-05-12 06:06:46'),
(439, NULL, '0183696935', 'Memorial Tun Abdul Razak, Perdana Botanical Gardens, 50480 Kuala Lumpur, Federal Territory of Kuala Lumpur, Malaysia', '3.141525777663528', '101.68678767979145', 248, 'Low Jung Xuan', '2022-05-12 23:06:56', '2022-05-12 23:06:56'),
(440, NULL, '123456', '520 SW Oak St, Portland, OR 97204, USA', '45.521440160939385', '-122.6764565706253', 27, 'Zaminder Ahmed', '2022-05-13 00:33:15', '2022-05-13 00:33:15'),
(441, NULL, '07370785456', '1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA', '37.4219983', '-122.084', 255, 'Az', '2022-05-13 02:26:02', '2022-05-13 02:26:02'),
(442, NULL, '07370785456', '1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA', '37.4219983', '-122.084', 255, 'Az', '2022-05-13 02:32:51', '2022-05-13 02:32:51'),
(443, NULL, '07370785456', 'Google Building 45, 1585 Charleston Rd, Mountain View, CA 94043, USA', '37.4219983', '-122.084', 255, 'Az', '2022-05-13 02:41:17', '2022-05-13 02:41:17'),
(444, NULL, '07370785456', '1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA', '37.4219983', '-122.084', 255, 'Az', '2022-05-13 02:41:17', '2022-05-13 02:41:17'),
(445, NULL, '07370785456', '1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA', '37.4219983', '-122.084', 255, 'Az', '2022-05-13 02:41:18', '2022-05-13 02:41:18'),
(446, NULL, '07370785456', 'Google Building 45, 1585 Charleston Rd, Mountain View, CA 94043, USA', '37.4219983', '-122.084', 255, 'Az', '2022-05-13 02:44:25', '2022-05-13 02:44:25'),
(447, NULL, '07370785456', '1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA', '37.4219983', '-122.084', 255, 'Az', '2022-05-13 02:45:39', '2022-05-13 02:45:39'),
(448, NULL, '07370785456', '1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA', '37.4219983', '-122.084', 255, 'Az', '2022-05-13 02:56:58', '2022-05-13 02:56:58'),
(449, NULL, '07370785456', '1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA', '37.4219983', '-122.084', 255, 'Az', '2022-05-13 03:34:50', '2022-05-13 03:34:50'),
(450, NULL, '07370785456', '1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA', '37.4219983', '-122.084', 255, 'Az', '2022-05-13 03:41:04', '2022-05-13 03:41:04'),
(451, NULL, '123456', 'Elk Fountain, 1120 SW 5th Ave, Portland, OR 97204, USA', '45.51563', '45.51563', 27, 'ahmed', '2022-05-14 15:02:19', '2022-05-14 15:02:19'),
(452, NULL, '123456', 'GG88+77 Novyi, Republic of Kalmykia, Russia', '45.51563', '45.51563', 27, 'ahmed', '2022-05-14 15:02:41', '2022-05-14 15:02:41'),
(453, NULL, '123456', 'Baghdad International Airport, Airport Street, Baghdad, Iraq', '45.51563', '45.51563', 27, 'ahmed', '2022-05-15 08:08:54', '2022-05-15 08:08:54'),
(454, NULL, '9898989899', 'C859+H47, ADB PWD Colony, Sector 16A, Faridabad, Haryana 121002, India', '28.4089', '77.3178', 267, 'zaz', '2022-05-15 08:55:51', '2022-05-15 08:55:51'),
(455, NULL, '9898989899', 'C859+H47, ADB PWD Colony, Sector 16A, Faridabad, Haryana 121002, India', '28.4089', '77.3178', 267, 'zaz', '2022-05-15 09:14:58', '2022-05-15 09:14:58'),
(456, NULL, '9898989899', 'C859+H47, ADB PWD Colony, Sector 16A, Faridabad, Haryana 121002, India', '28.4089', '77.3178', 267, 'zaz', '2022-05-15 09:14:58', '2022-05-15 09:14:58'),
(457, NULL, '9898989899', 'C859+H47, ADB PWD Colony, Sector 16A, Faridabad, Haryana 121002, India', '28.4089', '77.3178', 267, 'zaz', '2022-05-15 09:16:09', '2022-05-15 09:16:09'),
(458, NULL, '123456', '250 SW Taylor St, Portland, OR 97204, USA', '45.5165578428125', '45.5165578428125', 27, 'ahmed', '2022-05-15 09:53:42', '2022-05-15 09:53:42'),
(459, NULL, '9898989898', '425, ADB PWD Colony, Sector 16A, Faridabad, Haryana 121002, India', '28.408963139249984', '77.31595795601606', 264, 'sas', '2022-05-15 10:09:07', '2022-05-15 10:09:07'),
(460, NULL, '9898989898', 'Sector 16A, Faridabad, Haryana 121002, India', '28.408963139249984', '77.31595795601606', 264, 's@s', '2022-05-15 10:09:45', '2022-05-15 10:09:45'),
(461, NULL, '98989898', '425, ADB PWD Colony, Sector 16A, Faridabad, Haryana 121002, India', '28.408963139249984', '77.31595795601606', 264, 's@s', '2022-05-15 10:10:02', '2022-05-15 10:10:02'),
(462, NULL, '9177149548', 'JCJ9+CJC, Gandhi Rd, Varadaraja Nagar, Tirupati, Andhra Pradesh 517501, India', '13.630880712729823', '79.41899187862873', 270, 'Sai Kumar Reddy', '2022-05-18 00:42:51', '2022-05-18 00:42:51'),
(463, NULL, '01144034188', 'Elk Fountain, 1120 SW 5th Ave, Portland, OR 97204, USA', '45.51563', '-122.677433', 273, '3bdo', '2022-05-19 10:18:05', '2022-05-19 10:18:05'),
(464, NULL, '1111111111', '260/25 Dr Danister De Silva Mawatha, Colombo 00900, Sri Lanka', '6.928056043292056', '79.87832553684711', 268, 'asdaasd', '2022-05-20 13:04:18', '2022-05-20 13:04:18'),
(465, NULL, '1111111111', '260/25 Dr Danister De Silva Mawatha, Colombo 00900, Sri Lanka', '6.928056043292056', '79.87832553684711', 268, 'asdaasd', '2022-05-20 13:04:18', '2022-05-20 13:04:18'),
(466, NULL, '1111111111', '260/25 Dr Danister De Silva Mawatha, Colombo 00900, Sri Lanka', '6.928056043292056', '79.87832553684711', 268, 'asdaasd', '2022-05-20 13:08:17', '2022-05-20 13:08:17'),
(467, NULL, '9177149548', '9-1-15, G M St, Varadaraja Nagar, Tirupati, Andhra Pradesh 517501, India', '13.63235151732671', '79.41759042441845', 270, 'Sai Kumar Reddy', '2022-05-21 18:43:07', '2022-05-21 18:43:07'),
(468, NULL, '123456', 'Shanghai Songjiang University Town Kindergarten （North Gate）, Meijiabang Road, Songjiang District, Shanghai, China', '31.052792094929938', '121.22430492192505', 27, 'ahmed', '2022-05-22 06:26:32', '2022-05-22 06:26:32'),
(469, NULL, '123456', '363J+34X, Meixiang Rd, Song Jiang Qu, Shang Hai Shi, China, 201620', '31.05274355330037', '121.23037744313478', 27, 'ahmed', '2022-05-22 07:43:12', '2022-05-22 07:43:12'),
(470, NULL, '123456', '1701 Meijiabang Rd, Song Jiang Qu, Shang Hai Shi, China, 201613', '31.05167563118511', '121.2233829125762', 27, 'ahmed', '2022-05-22 07:43:25', '2022-05-22 07:43:25'),
(471, NULL, '123456', '300 SW 6th Ave, Portland, OR 97204, USA', '45.521440160939385', '45.521440160939385', 27, 'ahmed', '2022-05-22 07:44:03', '2022-05-22 07:44:03'),
(472, NULL, '123456', 'GGCC+HH Novyi, Republic of Kalmykia, Russia', '45.521440160939385', '45.521440160939385', 27, 'ahmed', '2022-05-22 07:44:43', '2022-05-22 07:44:43'),
(473, NULL, '123456', 'GGCC+HH Novyi, Republic of Kalmykia, Russia', '45.521440160939385', '45.521440160939385', 27, 'ahmed', '2022-05-22 07:46:14', '2022-05-22 07:46:14'),
(474, NULL, '123456', '8988+2C Baghdad, Iraq', '45.521440160939385', '45.521440160939385', 27, 'ahmed', '2022-05-22 07:47:01', '2022-05-22 07:47:01'),
(475, NULL, '123456', '1701 Meijiabang Rd, Song Jiang Qu, Shang Hai Shi, China, 201613', '31.05167563118511', '121.2233829125762', 27, 'ahmed', '2022-05-22 07:57:34', '2022-05-22 07:57:34'),
(476, NULL, '123456', '1701 Meijiabang Rd, Song Jiang Qu, Shang Hai Shi, China, 201613', '31.05167563118511', '121.2233829125762', 27, 'ahmed', '2022-05-22 07:57:41', '2022-05-22 07:57:41'),
(477, NULL, '0548157455', 'Wells Fargo Building, 309 SW 6th Ave, Portland, OR 97204, USA', '45.521563018025006', '-122.67743289470673', 232, 'GOdson Oheneba', '2022-05-23 07:26:43', '2022-05-23 07:26:43'),
(478, NULL, '123456', '1701 Meijiabang Rd, Song Jiang Qu, Shang Hai Shi, China, 201613', '31.051649493080994', '121.22459460049869', 27, 'ahmed', '2022-05-23 17:41:26', '2022-05-23 17:41:26'),
(479, NULL, '123456', '1701 Meijiabang Rd, Song Jiang Qu, Shang Hai Shi, China, 201613', '31.051649493080994', '121.22459460049869', 27, 'ahmed', '2022-05-24 02:28:38', '2022-05-24 02:28:38'),
(480, NULL, '777777', 'Wells Fargo Building, 309 SW 6th Ave, Portland, OR 97204, USA', '45.521563', '-122.677433', 279, 'zaminder', '2022-05-24 06:10:56', '2022-05-24 06:10:56'),
(481, NULL, '777777', 'Wells Fargo Building, 309 SW 6th Ave, Portland, OR 97204, USA', '45.521563', '-122.677433', 279, 'zaminder', '2022-05-24 06:11:35', '2022-05-24 06:11:35'),
(482, NULL, '123456', 'Dhaka New Market, Mirpur Road, Dhaka, Bangladesh', '23.73319360405374', '90.38376644253731', 27, 'ahmed', '2022-05-24 06:31:26', '2022-05-24 06:31:26'),
(483, NULL, '1111111111', 'WVHH+8GP, Colombo 01000, Sri Lanka', '6.928748325176043', '79.8792103305459', 268, 'asdaasd', '2022-05-24 13:18:51', '2022-05-24 13:18:51'),
(484, NULL, '12345678910', '36 Palitha Pl, Colombo 00900, Sri Lanka', '6.928321972847524', '79.88189555704594', 281, 'adad', '2022-05-24 14:01:49', '2022-05-24 14:01:49'),
(485, NULL, '12345678910', '36 Palitha Pl, Colombo 00900, Sri Lanka', '6.928321972847524', '79.88189555704594', 281, 'adad', '2022-05-24 18:07:49', '2022-05-24 18:07:49'),
(486, NULL, '12345678910', '36 Palitha Pl, Colombo 00900, Sri Lanka', '6.928321972847524', '79.88189555704594', 281, 'adad', '2022-05-24 19:24:34', '2022-05-24 19:24:34'),
(487, NULL, '12345678910', 'WVHJ+VVV, Colombo, Sri Lanka', '6.930029376808342', '79.88234784454107', 281, 'adad', '2022-05-24 19:45:05', '2022-05-24 19:45:05'),
(488, NULL, '12345678910', 'WVHJ+VVV, Colombo, Sri Lanka', '6.9299388479426565', '79.88209772855045', 281, 'adad', '2022-05-24 19:48:27', '2022-05-24 19:48:27'),
(489, NULL, '12345678910', 'WVHJ+VVV, Colombo, Sri Lanka', '6.9299388479426565', '79.88209772855045', 281, 'adad', '2022-05-24 19:48:27', '2022-05-24 19:48:27'),
(490, NULL, '12345678910', '169 Sri Dharmarama Mawatha, Colombo, Sri Lanka', '6.931526096012504', '79.88272570073605', 281, 'adad', '2022-05-24 19:58:15', '2022-05-24 19:58:15'),
(491, NULL, 'd d', '43 Jongno 1(il)-ga, Jongno-gu, Seoul, South Korea', '37.57037778', '126.9816417', 286, 'home', '2022-05-25 01:49:13', '2022-05-25 01:49:13'),
(492, NULL, '08135472339', 'Wells Fargo Building, 309 SW 6th Ave, Portland, OR 97204, USA', '45.521563', '-122.677433', 287, 'Itopa', '2022-05-25 02:16:16', '2022-05-25 02:16:16'),
(493, NULL, 'poiuytr', '1100 SW 4th Ave, Portland, OR 97204, USA', '45.515674032876184', '-122.67890576273201', 278, 'jsksk', '2022-05-25 05:50:10', '2022-05-25 05:50:10'),
(494, NULL, 'poiuytr', '1100 SW 2nd Ave, Portland, OR 97204, USA', '45.51523282750633', '-122.67597410827874', 278, 'jsksk', '2022-05-25 06:14:10', '2022-05-25 06:14:10'),
(495, NULL, 'poiuytr', '710 SW 2nd Ave Suite 300, Portland, OR 97204, USA', '45.517751269609086', '-122.67441507428885', 278, 'jsksk', '2022-05-25 06:14:25', '2022-05-25 06:14:25'),
(496, NULL, 'poiuytr', '404 SW Harvey Milk St, Portland, OR 97204, USA', '45.520533641186965', '-122.67579842358829', 278, 'jsksk', '2022-05-25 06:14:37', '2022-05-25 06:14:37'),
(497, NULL, 'd d', '43 Jongno 1(il)-ga, Jongno-gu, Seoul, South Korea', '37.57037778', '126.9816417', 286, 'home', '2022-05-25 11:10:30', '2022-05-25 11:10:30'),
(498, NULL, '12345678910', 'WVMM+369, Kolonnawa, Sri Lanka', '6.931526096012504', '79.88272570073605', 281, 'adad', '2022-05-25 12:10:20', '2022-05-25 12:10:20'),
(499, NULL, '12345678910', '2 Gnanawimala Rd, Colombo, Sri Lanka', '6.931526096012504', '79.88272570073605', 281, 'adad', '2022-05-25 12:12:33', '2022-05-25 12:12:33'),
(500, NULL, '12345678910', 'WVMM+GC7, Kolonnawa Rd, Colombo 10600, Sri Lanka', '6.931526096012504', '79.88272570073605', 281, 'adad', '2022-05-25 12:17:29', '2022-05-25 12:17:29'),
(501, NULL, '12345678910', 'WVJM+Q8C, Colombo, Sri Lanka', '6.9319887234017425', '79.8829959332943', 281, 'adad', '2022-05-25 12:42:43', '2022-05-25 12:42:43'),
(502, NULL, '12345678910', '10 Meethottamulla Rd, Colombo, Sri Lanka', '6.933120660875725', '79.88384049385786', 281, 'adad', '2022-05-25 12:46:37', '2022-05-25 12:46:37'),
(503, NULL, '0983041387', 'Wells Fargo Building, 309 SW 6th Ave, Portland, OR 97204, USA', '45.521563', '-122.677433', 294, 'Ricardo Supe', '2022-05-25 15:22:52', '2022-05-25 15:22:52'),
(504, NULL, '0983041387', 'Wells Fargo Building, 309 SW 6th Ave, Portland, OR 97204, USA', '45.521563', '-122.677433', 294, 'Ricardo Supe', '2022-05-25 15:22:59', '2022-05-25 15:22:59'),
(505, NULL, '0983041387', 'Carihuairazo 514, Ambato 180201, Ecuador', '-1.240619174619504', '-78.6228096485138', 294, 'Ricardo Supe', '2022-05-25 16:13:34', '2022-05-25 16:13:34'),
(506, NULL, '7092846921', 'Wells Fargo Building, 309 SW 6th Ave, Portland, OR 97204, USA', '45.521563', '-122.677433', 295, 'Sivaraj Kumar', '2022-05-25 18:24:21', '2022-05-25 18:24:21'),
(507, NULL, '9803504729', 'H8XF+RG3, सातदोबाटो टिकाभैरब मार्ग, Chapagaon 44700, Nepal', '27.59933185400551', '85.3237583488226', 296, 'User99', '2022-05-25 20:41:41', '2022-05-25 20:41:41'),
(508, NULL, '9803504729', 'H8XF+RG3, सातदोबाटो टिकाभैरब मार्ग, Chapagaon 44700, Nepal', '27.59933185400551', '85.3237583488226', 296, 'User99', '2022-05-25 21:04:46', '2022-05-25 21:04:46'),
(509, NULL, 'poiuytr', 'Elk Fountain, 1120 SW 5th Ave, Portland, OR 97204, USA', '45.51563', '-122.677433', 278, 'jsksk', '2022-05-25 22:27:19', '2022-05-25 22:27:19'),
(510, NULL, 'poiuytr', '101 SW Main St, Portland, OR 97204, USA', '45.51551827227004', '-122.67543632537127', 278, 'jsksk', '2022-05-25 22:43:41', '2022-05-25 22:43:41'),
(511, NULL, 'poiuytr', 'Elk Fountain, 1120 SW 5th Ave, Portland, OR 97204, USA', '45.51563', '-122.677433', 278, 'jsksk', '2022-05-25 23:35:26', '2022-05-25 23:35:26'),
(512, NULL, 'poiuytr', '1100 SW 2nd Ave, Portland, OR 97204, USA', '45.515256790826136', '-122.67603982239963', 278, 'jsksk', '2022-05-26 02:31:18', '2022-05-26 02:31:18'),
(513, NULL, '08123456789', 'Wells Fargo Building, 309 SW 6th Ave, Portland, OR 97204, USA', '45.521563', '-122.677433', 300, 'Bejo', '2022-05-26 03:18:59', '2022-05-26 03:18:59'),
(514, NULL, '9815332934', 'Wells Fargo Building, 309 SW 6th Ave, Portland, OR 97204, USA', '45.521563', '-122.677433', 307, 'Pankaj Dahal', '2022-05-26 17:05:56', '2022-05-26 17:05:56'),
(515, NULL, '1111111111', 'Weerapana South, Sri Lanka', '6.927926905981975', '79.88145668059587', 268, 'asdaasd', '2022-05-26 19:35:04', '2022-05-26 19:35:04'),
(516, NULL, '7007515832', 'Wells Fargo Building, 309 SW 6th Ave, Portland, OR 97204, USA', '45.521563', '-122.677433', 308, 'Vishwa', '2022-05-26 20:04:27', '2022-05-26 20:04:27'),
(517, NULL, '2551515123', 'Wells Fargo Building, 309 SW 6th Ave, Portland, OR 97204, USA', '45.521563', '-122.677433', 309, 'vishwajeet', '2022-05-26 23:45:16', '2022-05-26 23:45:16'),
(518, NULL, '1111111111', '151 Veluwana Rd, Colombo 00900, Sri Lanka', '6.927926905981975', '79.88145668059587', 268, 'asdaasd', '2022-05-27 02:56:20', '2022-05-27 02:56:20'),
(519, NULL, '1111111111', '41 Veluwana Rd, Colombo 00900, Sri Lanka', '6.92947888115803', '79.88000828772783', 268, 'asdaasd', '2022-05-27 03:43:25', '2022-05-27 03:43:25'),
(520, NULL, '1111111111', '41 Veluwana Rd, Colombo 00900, Sri Lanka', '6.92947888115803', '79.88000828772783', 268, 'asdaasd', '2022-05-27 03:44:06', '2022-05-27 03:44:06'),
(521, NULL, '1111111111', '41 Veluwana Rd, Colombo 00900, Sri Lanka', '6.92947888115803', '79.88000828772783', 268, 'asdaasd', '2022-05-27 03:52:47', '2022-05-27 03:52:47'),
(522, NULL, 'poiuytr', 'Elk Fountain, 1120 SW 5th Ave, Portland, OR 97204, USA', '45.51563', '-122.677433', 278, 'jsksk', '2022-05-27 04:38:14', '2022-05-27 04:38:14'),
(523, NULL, 'poiuytr', 'Elk Fountain, 1120 SW 5th Ave, Portland, OR 97204, USA', '45.51563', '-122.677433', 278, 'jsksk', '2022-05-27 06:14:04', '2022-05-27 06:14:04'),
(524, NULL, 'poiuytr', 'G88H+8X Portland, OR, USA', '45.51563', '-122.677433', 278, 'jsksk', '2022-05-27 06:14:25', '2022-05-27 06:14:25'),
(525, NULL, 'poiuytr', 'Elk Fountain, 1120 SW 5th Ave, Portland, OR 97204, USA', '45.51563', '-122.677433', 278, 'jsksk', '2022-05-27 06:14:44', '2022-05-27 06:14:44'),
(526, NULL, 'poiuytr', 'Elk Fountain, 1120 SW 5th Ave, Portland, OR 97204, USA', '45.51563', '-122.677433', 278, 'jsksk', '2022-05-27 06:15:10', '2022-05-27 06:15:10'),
(527, NULL, 'poiuytr', 'SW Main & 6th, Portland, OR 97204, USA', '45.516451654792554', '-122.67982207238674', 278, 'jsksk', '2022-05-27 06:15:27', '2022-05-27 06:15:27'),
(528, NULL, 'poiuytr', 'G88J+J3 Portland, OR, USA', '45.516578516563', '-122.6697775349021', 278, 'jsksk', '2022-05-27 06:15:43', '2022-05-27 06:15:43'),
(529, NULL, 'poiuytr', '417 SW Alder St, Portland, OR 97204, USA', '45.516578516563', '-122.6697775349021', 278, 'jsksk', '2022-05-27 06:16:00', '2022-05-27 06:16:00'),
(530, NULL, 'poiuytr', '1200 SW Alder St, Portland, OR 97205, USA', '45.52086815548846', '-122.68407974392177', 278, 'jsksk', '2022-05-27 06:16:13', '2022-05-27 06:16:13'),
(531, NULL, 'poiuytr', '1200 SW Alder St, Portland, OR 97205, USA', '45.516578516563', '-122.6697775349021', 278, 'jsksk', '2022-05-27 06:16:15', '2022-05-27 06:16:15'),
(532, NULL, 'poiuytr', '1200 SW Alder St, Portland, OR 97205, USA', '45.516578516563', '-122.6697775349021', 278, 'jsksk', '2022-05-27 06:16:15', '2022-05-27 06:16:15'),
(533, NULL, 'poiuytr', '1200 SW Alder St, Portland, OR 97205, USA', '45.516578516563', '-122.6697775349021', 278, 'jsksk', '2022-05-27 06:16:15', '2022-05-27 06:16:15'),
(534, NULL, 'poiuytr', '1200 SW Alder St, Portland, OR 97205, USA', '45.516578516563', '-122.6697775349021', 278, 'jsksk', '2022-05-27 06:16:15', '2022-05-27 06:16:15'),
(535, NULL, 'poiuytr', '625 SW 4th Ave, Portland, OR 97204, USA', '45.51886714775116', '-122.67660476267338', 278, 'jsksk', '2022-05-27 06:16:24', '2022-05-27 06:16:24'),
(536, NULL, '231232312321', 'Elk Fountain, 1120 SW 5th Ave, Portland, OR 97204, USA', '45.51563', '-122.677433', 319, 'ewqewq weqew', '2022-05-27 08:10:23', '2022-05-27 08:10:23'),
(537, NULL, '231232312321', 'Elk Fountain, 1120 SW 5th Ave, Portland, OR 97204, USA', '45.51563', '-122.677433', 319, 'ewqewq weqew', '2022-05-27 09:07:46', '2022-05-27 09:07:46'),
(538, NULL, '231232312321', 'Elk Fountain, 1120 SW 5th Ave, Portland, OR 97204, USA', '45.51563', '-122.677433', 319, 'ewqewq weqew', '2022-05-27 09:52:37', '2022-05-27 09:52:37'),
(539, NULL, '231232312321', 'Elk Fountain, 1120 SW 5th Ave, Portland, OR 97204, USA', '45.51563', '-122.677433', 319, 'ewqewq weqew', '2022-05-27 09:54:43', '2022-05-27 09:54:43'),
(540, NULL, '231232312321', 'Elk Fountain, 1120 SW 5th Ave, Portland, OR 97204, USA', '45.51563', '-122.677433', 319, 'ewqewq weqew', '2022-05-27 09:56:20', '2022-05-27 09:56:20'),
(541, NULL, '123456779877', 'Wells Fargo Building, 309 SW 6th Ave, Portland, OR 97204, USA', '45.52145143655309', '-122.67690550535919', 323, 'nameygtt', '2022-05-27 10:33:48', '2022-05-27 10:33:48'),
(542, NULL, '123456779877', 'Wells Fargo Building, 309 SW 6th Ave, Portland, OR 97204, USA', '45.52148925682417', '-122.67746977508068', 323, 'nameygtt', '2022-05-27 12:03:24', '2022-05-27 12:03:24'),
(543, NULL, '123456779877', 'Wells Fargo Building, 309 SW 6th Ave, Portland, OR 97204, USA', '45.52148925682417', '-122.67746977508068', 323, 'nameygtt', '2022-05-27 12:03:42', '2022-05-27 12:03:42'),
(544, NULL, '63815491629', 'Wells Fargo Building, 309 SW 6th Ave, Portland, OR 97204, USA', '45.521563', '-122.677433', 325, 'polo', '2022-05-27 13:19:28', '2022-05-27 13:19:28'),
(545, NULL, '0763353929', '26 Albion Rd, Colombo, Sri Lanka', '6.931383979449956', '79.8787959292531', 326, 'Amesh', '2022-05-28 03:52:10', '2022-05-28 03:52:10'),
(546, NULL, '5053995433', 'Wells Fargo Building, 309 SW 6th Ave, Portland, OR 97204, USA', '45.521563', '-122.677433', 327, 'Ertan', '2022-05-28 07:14:02', '2022-05-28 07:14:02'),
(547, NULL, '08100230075', 'Wells Fargo Building, 309 SW 6th Ave, Portland, OR 97204, USA', '45.521563', '-122.677433', 328, 'John', '2022-05-28 07:37:32', '2022-05-28 07:37:32'),
(548, NULL, '055638399', '545P+F6G, Tamlouka, Algeria', '36.15865565827145', '7.134968005120754', 331, 'angham', '2022-05-29 17:01:21', '2022-05-29 17:01:21'),
(549, NULL, 'poiuytr', '961 SW Broadway, Portland, OR 97205, USA', '45.517673744621334', '-122.68047116696835', 278, 'jsksk', '2022-05-30 01:50:24', '2022-05-30 01:50:24'),
(550, NULL, 'poiuytr', '621 SW Morrison St, Portland, OR 97205, USA', '45.51930902937867', '-122.67908111214636', 278, 'jsksk', '2022-05-30 06:17:55', '2022-05-30 06:17:55'),
(551, NULL, '01013437329', 'Wells Fargo Building, 309 SW 6th Ave, Portland, OR 97204, USA', '45.521563', '-122.677433', 337, 'amr loksha', '2022-05-30 06:37:26', '2022-05-30 06:37:26'),
(552, NULL, 'poiuytr', '340 SW Morrison St #4305, Portland, OR 97204, USA', '45.518136778643935', '-122.67612397670747', 278, 'jsksk', '2022-05-30 07:10:24', '2022-05-30 07:10:24'),
(553, NULL, 'poiuytr', 'Lahore, Pakistan', '45.518136778643935', '-122.67612397670747', 278, 'jsksk', '2022-05-30 07:54:45', '2022-05-30 07:54:45'),
(554, NULL, 'poiuytr', 'Lahore-Islamabad Motorway, Sabzazar Block E Sabzazar Housing Scheme Phase 1 & 2 Lahore, Pakistan', '45.518136778643935', '-122.67612397670747', 278, 'jsksk', '2022-05-30 07:55:04', '2022-05-30 07:55:04'),
(555, NULL, '7461160077', 'Wells Fargo Building, 309 SW 6th Ave, Portland, OR 97204, USA', '45.521563', '-122.677433', 342, 'MarcialFN', '2022-05-30 14:18:18', '2022-05-30 14:18:18'),
(556, NULL, '888888', '1000 SW 3rd Ave # 401, Portland, OR 97204, USA', '45.51563151003855', '-122.67586581408978', 344, 'zz', '2022-05-31 05:48:54', '2022-05-31 05:48:54'),
(557, NULL, '888888', '998 SW Naito Pkwy, Portland, OR 97204, USA', '45.51568319525135', '-122.67332140356304', 344, 'zz', '2022-05-31 05:49:54', '2022-05-31 05:49:54'),
(558, NULL, '774679198', 'VWC4+PQ7 بئرأحمد  اليَمَن', '12.8716577', '44.9064474', 348, 'hassan', '2022-05-31 20:44:50', '2022-05-31 20:44:50'),
(559, NULL, '13761849017', 'JG67+FP9 مشتول القاضي 7108212 مصر', '30.6114354', '31.5142973', 355, 'Ahmed', '2022-06-01 15:29:43', '2022-06-01 15:29:43'),
(560, NULL, '621720967', 'P5QM+5FF Nzerekore  Guinea', '7.7384254', '-8.8171544', 356, 'Abdoulaye', '2022-06-01 17:51:16', '2022-06-01 17:51:16'),
(561, NULL, '621720967', 'P5QM+5FF Nzerekore  Guinea', '7.7384254', '-8.8171544', 356, 'Abdoulaye', '2022-06-01 17:52:28', '2022-06-01 17:52:28'),
(562, NULL, '0565754599', 'Malabar Gold and Diamonds, Opposite United Arab Bank AL Nakheel - Muntasir, 90320 - السير - إمارة رأس الخيمة - United Arab Emirates', '25.80060325746948', '55.97567506134511', 353, 'bahaa', '2022-06-02 00:26:08', '2022-06-02 00:26:08'),
(563, NULL, '+1918882030533', '111/2 Delhi 110041 India', '28.680604', '77.0705839', 359, 't', '2022-06-02 02:27:58', '2022-06-02 02:27:58'),
(564, NULL, '664682251', '12 Espartinas 41807 Spain', '37.3858217', '-6.1642683', 358, 'Pablo', '2022-06-02 07:00:33', '2022-06-02 07:00:33'),
(565, NULL, '0654259231', 'Route sans nom   Maroc', '29.9552339', '-9.4101579', 362, 'abde', '2022-06-02 10:38:01', '2022-06-02 10:38:01'),
(566, NULL, '0507772237', 'QR75+CRQ الرياض 13221 السعودية', '24.7635685', '46.809575', 363, 'sadaam', '2022-06-02 17:55:19', '2022-06-02 17:55:19'),
(567, NULL, '0507772237', 'QR75+CRQ الرياض 13221 السعودية', '24.7635685', '46.809575', 363, 'sadaam', '2022-06-02 17:56:11', '2022-06-02 17:56:11'),
(568, NULL, '0389444555', '1   Việt Nam', '16.0773096', '108.1733305', 364, '123', '2022-06-02 19:48:19', '2022-06-02 19:48:19');
INSERT INTO `customer_addresses` (`id`, `address_type`, `contact_person_number`, `address`, `latitude`, `longitude`, `user_id`, `contact_person_name`, `created_at`, `updated_at`) VALUES
(569, NULL, '774679198', 'VWC4+PQ7 بئرأحمد  اليَمَن', '12.8716603', '44.9064539', 348, 'hassan', '2022-06-03 12:14:12', '2022-06-03 12:14:12'),
(570, NULL, '774679198', 'VWC4+PQ7 بئرأحمد  اليَمَن', '12.8716603', '44.9064539', 348, 'hassan', '2022-06-03 12:14:14', '2022-06-03 12:14:14'),
(571, NULL, '9098941214', '2nd Floor, Swadesh Bhawan, Press Complex, A.B., AB Rd, Swadesh Bhavan, Press Complex, Indore, Madhya Pradesh 452011, India', '22.7383619', '75.8929571', 311, 'karan', '2022-06-06 09:33:17', '2022-06-06 09:33:17'),
(572, NULL, '9098941214', '2nd Floor, Swadesh Bhawan, Press Complex, A.B., AB Rd, Swadesh Bhavan, Press Complex, Indore, Madhya Pradesh 452011, India', '22.7383619', '75.8929571', 311, 'karan', '2022-06-06 09:34:04', '2022-06-06 09:34:04'),
(573, NULL, '123456', 'Banalata kacha bazar, level- 2, shop# 1, নিউ মার্কেট - পিলখানা রোড, ঢাকা 1205, Bangladesh', '23.732358774402776', '90.38383081555367', 27, 'ahmed', '2022-06-07 00:12:53', '2022-06-07 00:12:53'),
(574, NULL, '989898', 'Wells Fargo Building, 309 SW 6th Ave, Portland, OR 97204, USA', '45.521563018025006', '-122.67743289470673', 385, '123456', '2022-06-17 08:31:34', '2022-06-17 08:31:34'),
(575, NULL, '444444', 'Wells Fargo Building, 309 SW 6th Ave, Portland, OR 97204, USA', '45.521563018025006', '-122.67743289470673', 386, 'ss', '2022-06-17 09:22:54', '2022-06-17 09:22:54'),
(576, NULL, '444444', 'Wells Fargo Building, 309 SW 6th Ave, Portland, OR 97204, USA', '45.521563018025006', '-122.67743289470673', 386, 'ss', '2022-06-17 19:12:32', '2022-06-17 19:12:32'),
(577, NULL, '880074303', '77WF+932 Тошкент  O`zbekiston', '41.2955506', '69.2723083', 388, 'Doston', '2022-06-18 03:59:57', '2022-06-18 03:59:57'),
(578, NULL, '880074303', '77WF+932 Тошкент  O`zbekiston', '41.2955506', '69.2723083', 388, 'Doston', '2022-06-18 04:00:00', '2022-06-18 04:00:00'),
(579, NULL, '880074303', '77WF+932 Тошкент  O`zbekiston', '41.2955506', '69.2723083', 388, 'Doston', '2022-06-18 04:00:07', '2022-06-18 04:00:07'),
(580, NULL, '444444', 'Dhaka Medical College Hospital, Secretariat Road, Dhaka, Bangladesh', '23.726055331002335', '90.39752919226885', 386, 'ss', '2022-06-18 04:23:57', '2022-06-18 04:23:57'),
(581, NULL, '12121234', '455X+G6W Oued Sly  Algeria', '36.1084765', '1.1974199', 390, 'abdo', '2022-06-18 07:27:54', '2022-06-18 07:27:54'),
(582, NULL, '+998908701671', '23 Тошкент 100085 Uzbekistan', '41.2230362', '69.213899', 393, 'Jasurbek', '2022-06-20 03:55:03', '2022-06-20 03:55:03'),
(583, NULL, '+998908701671', '23 Тошкент 100085 Uzbekistan', '41.2230362', '69.213899', 393, 'Jasurbek', '2022-06-20 03:55:04', '2022-06-20 03:55:04'),
(584, NULL, '7977629948', 'Shreeji Sadan A-16 Tarkhad 401202 India', '19.382514', '72.8150452', 394, 'vikram', '2022-06-20 07:30:38', '2022-06-20 07:30:38'),
(585, NULL, '7977629948', 'Shreeji Sadan A-16 Tarkhad 401202 India', '19.382514', '72.8150452', 394, 'vikram', '2022-06-20 07:31:39', '2022-06-20 07:31:39'),
(586, NULL, '0102184', 'Georgia Ave Petworth Station, District of Freedom#8573311~!#, Washington, DC 20036, USA', '38.9071927', '-77.0368719', 396, 'a7medking', '2022-06-21 06:44:50', '2022-06-21 06:44:50'),
(587, NULL, '010123123', 'Georgia Ave Petworth Station, District of Freedom#8573311~!#, Washington, DC 20036, USA', '38.9071927', '-77.0368719', 397, 'aaaananna', '2022-06-21 06:47:32', '2022-06-21 06:47:32'),
(588, NULL, '+998908701671', '66G9+2V7 Тошкент 100085 Uzbekistan', '41.2249374', '69.2190575', 393, 'Jasurbek', '2022-06-21 10:57:51', '2022-06-21 10:57:51'),
(589, NULL, '898989', 'China, 上海 Songjiang District, 九亭鎮', '32.95591446989211', '136.03100191801786', 400, 'Xyz', '2022-06-21 23:14:30', '2022-06-21 23:14:30'),
(590, NULL, '+84935391368', 'Quận 9   Việt Nam', '10.8373255', '106.8304911', 402, 'Dung', '2022-06-22 05:31:49', '2022-06-22 05:31:49'),
(591, NULL, '123456', 'Wells Fargo Building, 309 SW 6th Ave, Portland, OR 97204, USA', '45.521563018025006', '-122.67743289470673', 403, 'ahmed', '2022-06-30 07:15:37', '2022-06-30 07:15:37');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_men`
--

CREATE TABLE `delivery_men` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identity_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identity_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'passport',
  `identity_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zone_id` int(11) DEFAULT '6',
  `assigned_order_count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `earning` tinyint(1) NOT NULL DEFAULT '1',
  `current_orders` int(11) NOT NULL DEFAULT '0',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'zone_wise',
  `application_status` enum('denied','pending','approved') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'approved'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_men`
--

INSERT INTO `delivery_men` (`id`, `name`, `phone`, `email`, `identity_number`, `identity_type`, `identity_image`, `image`, `password`, `auth_token`, `fcm_token`, `zone_id`, `assigned_order_count`, `created_at`, `updated_at`, `status`, `active`, `earning`, `current_orders`, `type`, `application_status`) VALUES
(1, 'ahmed', '01709222197', 'a@a.com', '123456', 'passport', '', '', '$2y$10$4HNDC4q5C2csQD0DzFwkheWH9upu/IX5UK8X2xNP2flgqv/hBRfrS', 'zuVh9XghCWpD6hpv5ROT6UQLDx3bB7rY04cKbRAFXOne1MnapD4Ss5bkS5YvzNhvthx7TvbxeOGeBueaerHFd0HY7RY7vbQVS217X7JYhXBnLX7y4zPsSoR7', 'd8X8lNh9M0-7g7uiQzbht8:APA91bEmVf2hgZUXWCyQWu4MbfU93q-OAxKPi6Zk0pi6UOsOsiLa5dmU5V0uBBopCmh7mqqnx6rYe5SEAh85gZ3V1e703HPbTF_9KLq64prxzcVmpnMg2w-imNzJpxS5sLM5TEEB7kjy', 6, 8, '2022-06-06 09:37:00', '2022-06-29 01:39:28', 1, 1, 1, 5, 'zone_wise', 'approved'),
(14, 'dylanahmed', '13761849016', 'mjdazaa87@yahoo.com', '12345678', 'passport', NULL, NULL, '$2y$10$PCB/SfWuxMZiLKIEUcw8R.Rz9ZHl07cr7XE7.kj1u7EG5dBAB282K', 'fiH7Wujw8LtW5K78FQ0QXl4AnxQS1soliCrrIMdm9PjLXvlOMg08TWPAMX1ztIt9i0gknwR4rNRr1yZzRTYaGeNihFOpnDv7EzbWTDNHK0ujwt65RFFEfEFG', 'cx88IVvEjUk5o3PPkf30if:APA91bEVv3vSwzAzsEQDbOOZW9mDqfBZQXXPTLNnsPe3KRsCq7HfNsBcT-yli-1a8OHbqwQinGSUCsxmNMghzPkFtHIAeddkNpqg5zb8wtAtSbiipHRUYABSyCDyxrnhMwwnLLruX9Mt', 6, 7, '2022-06-20 19:11:40', '2022-06-28 23:40:55', 1, 1, 1, 7, 'zone_wise', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `d_m_reviews`
--

CREATE TABLE `d_m_reviews` (
  `id` bigint(20) NOT NULL,
  `delivery_man_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `comment` mediumtext NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `attachment` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `d_m_reviews`
--

INSERT INTO `d_m_reviews` (`id`, `delivery_man_id`, `user_id`, `order_id`, `comment`, `rating`, `attachment`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 27, 100016, '', 3, '', '2022-06-19 01:44:20', '2022-06-19 01:44:20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stars` int(11) NOT NULL,
  `people` int(11) NOT NULL,
  `selected_people` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `name`, `description`, `price`, `stars`, `people`, `selected_people`, `img`, `location`, `created_at`, `updated_at`, `type_id`) VALUES
(1, 'Nutritious fruit meal in china', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\">This&nbsp;five red bases, two are dedicated to salami (fennel and regular), and there&#39;s a classic capricciosa or beef carpaccio. Blanco options include a mushroom, and a four-cheese extravaganza featuring great lobes of a tangy fior di latte they make in house every day (more on this later). Classic, precise, good.</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\">I think it&#39;s still better to think of this venue not as a pizzeria, but as Pizza, by Di Stasio.</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\">Rinaldo Di Stasio and Mallory Wall&#39;s empire, including the original restaurant and bar in St Kilda, Citta and now Carlton, is a designer label for dining.</p><p><br/></p>', 12, 4, 5, 5, 'images/ea9367e8a16f1d3e41d4a3ae9af2baff.png', 'Canada, British Columbia', '2021-11-17 02:09:08', '2022-05-16 03:48:53', 2),
(2, 'Sweet Dessert', '<p>The best sweet dessert</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull – equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Genesis</em>, goes straight for the jugular of unceded sovereignty.</p><p><br/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull – equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Genesis</em>, goes straight for the jugular of unceded sovereignty.</p><p><br/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull – equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Genesis</em>, goes straight for the jugular of unceded sovereignty.</p><p><br/></p>', 21, 5, 5, 3, 'images/27567f904a64ba79ae95672e4ddf10c8.png', 'Icefields, Alberta', '2021-11-17 02:10:43', '2022-05-16 03:49:07', 2),
(3, 'Chinese Side', '<p style=\"border: 0px; margin-top: 0px; margin-bottom: 1.3em; padding: 0px; line-height: 1.8; color: rgb(58, 58, 58); font-family: Montserrat, sans-serif; font-size: 20px; white-space: normal; background-color: rgb(255, 255, 255);\">Enjoy these flavors any time of day.</p><p><br/></p>', 34, 3, 5, 4, 'images/fe978d4b2a6e311efc53370bad41c302.jpg', 'Moraine Lake, Alberta', '2021-11-17 02:16:31', '2022-05-16 03:49:24', 3),
(4, 'Bitter Orange Marinade', '<p id=\"mntl-sc-block_1-0\" class=\"comp mntl-sc-block mntl-sc-block-html\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; padding: 0px; letter-spacing: -0.1px; counter-reset: section 0; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; white-space: normal; background-color: rgb(255, 255, 255);\">Bitter oranges are often used in Caribbean&nbsp;</p><p><br/></p>', 33, 4, 5, 3, 'images/f38f470cc1972c270320c222c3aca9fb.jpg', 'Killarney Provincial Park', '2021-11-17 02:18:46', '2022-01-01 00:55:05', 3),
(5, 'Creamed Yuca (Cassava)', '<p><span style=\"font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; background-color: rgb(255, 255, 255);\">Commonly used in soups, eaten boiled&nbsp;</span></p>', 10, 5, 5, 4, 'images/acaa4cdee4b8aa7bf33f2140ce36860c.jpg', 'China', '2021-12-08 04:29:53', '2022-01-01 00:55:44', 3),
(6, 'Creole Rice Side Dish Recipe', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull – equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Genesis</em>, goes straight for the jugular of unceded sovereignty.</p><p><br/></p>', 18, 4, 3, 3, 'images/d6648f1f920d6bbc89988d75b3bed5b3.jpg', 'china', '2021-12-23 07:03:24', '2022-01-21 02:28:04', 2),
(7, 'Cuban Fufu', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull – equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Genesis</em>, goes straight for the jugular of unceded sovereignty.</p><p><br/></p>', 10, 5, 0, 0, 'images/f937dbd76381d1c10fdfcfd90688cb96.png', 'Cuba', '2021-12-23 07:04:49', '2022-01-01 00:56:45', 2),
(8, 'Dessert', '<p>Amazing food to eat with.</p>', 5, 4, 3, 2, 'images/34b0eaad01e8a95a02df1d934517591c.png', 'china', '2021-12-25 17:36:29', '2022-01-01 00:57:01', 3),
(9, 'Biriani', '<p style=\"box-sizing: inherit; padding: 0px; margin-top: 16px; margin-bottom: 16px; color: rgb(61, 61, 61); font-family: Raleway, sans-serif; font-size: 18px; white-space: normal;\">Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with fried onions (cheeky easy sub below!), fresh coriander/cilantro, then par boiled lightly spiced rice.</p><p style=\"box-sizing: inherit; padding: 0px; margin-top: 16px; margin-bottom: 16px; color: rgb(61, 61, 61); font-family: Raleway, sans-serif; font-size: 18px; white-space: normal;\">The crowning glory is to finish it off with a drizzle of saffron infused water to give it the signature patches of bright yellow rice, as well as ghee (or melted butter) for buttery richness.</p><p style=\"box-sizing: inherit; padding: 0px; margin-top: 16px; margin-bottom: 16px; color: rgb(61, 61, 61); font-family: Raleway, sans-serif; font-size: 18px; white-space: normal;\">The pot is then covered and cooked over a low heat for about 25 minutes during which time the rice absorbs the aromas and flavours of the curry underneath, whilst still being beautifully fluffy.</p><p><br/></p>', 8, 4, 3, 3, 'images/0f61cb5dd19d38a11e5a9133333eca07.jpeg', 'BD', '2021-12-26 22:27:38', '2022-01-01 00:57:16', 3),
(10, 'Chicken biriani', '<p><span style=\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, メイリオ, Meiryo, &quot;ＭＳ Ｐゴシック&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\">Chicken Biryani Served in a Bowl Close Up Photo. Indian Food, Indian Style Rice and Chicken. #Biryani #ChickenBiryani #IndianFood #StockPhoto</span></p>', 12, 4, 3, 3, 'images/9447a79793a4b7f832d981f975c0abc4.jpeg', 'china', '2021-12-26 22:29:47', '2022-01-01 00:56:33', 2),
(11, 'Hilsha fish', '<p><span style=\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, メイリオ, Meiryo, &quot;ＭＳ Ｐゴシック&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\">Ilish Mach aka Hilsa fish is in the season and needless to say, I cooked it a few times this year as well. This year, however, I have used Ilish mach to make simple delicacies mostly. Ilish Beguner Jhol is probably the simplest of the lot, well, after Ilish Mach Bhaja.</span></p><p><span style=\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, メイリオ, Meiryo, &quot;ＭＳ Ｐゴシック&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, メイリオ, Meiryo, &quot;ＭＳ Ｐゴシック&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\">Ilish Mach aka Hilsa fish is in the season and needless to say, I cooked it a few times this year as well. This year, however, I have used Ilish mach to make simple delicacies mostly. Ilish Beguner Jhol is probably the simplest of the lot, well, after Ilish Mach Bhaja.</span></span></p><p><span style=\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, メイリオ, Meiryo, &quot;ＭＳ Ｐゴシック&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, メイリオ, Meiryo, &quot;ＭＳ Ｐゴシック&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, メイリオ, Meiryo, &quot;ＭＳ Ｐゴシック&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\">Ilish Mach aka Hilsa fish is in the season and needless to say, I cooked it a few times this year as well. This year, however, I have used Ilish mach to make simple delicacies mostly. Ilish Beguner Jhol is probably the simplest of the lot, well, after Ilish Mach Bhaja.</span></span></span></p>', 12, 5, 3, 3, 'images/1343ce6cf6792383dfc071727afd5c46.jpeg', 'china', '2021-12-26 22:35:34', '2022-01-01 00:56:22', 2);

-- --------------------------------------------------------

--
-- Table structure for table `food_types`
--

CREATE TABLE `food_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_types`
--

INSERT INTO `food_types` (`id`, `title`, `parent_id`, `created_at`, `updated_at`, `order`, `description`) VALUES
(1, 'Food', 0, '2022-01-01 00:22:55', '2022-01-01 00:22:55', 1, 'all about food'),
(2, 'Popular food', 1, '2022-01-01 00:23:10', '2022-01-01 00:23:10', 1, 'popular food'),
(3, 'Recommended food', 1, '2022-01-01 00:23:25', '2022-01-01 00:23:25', 1, 'Recommended food');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2016_01_04_173148_create_admin_tables', 2),
(6, '2021_11_08_125401_create_article_types_table', 3),
(7, '2021_11_08_125420_create_articles_table', 3),
(8, '2021_11_17_092846_create_place_table', 4),
(9, '2016_06_01_000001_create_oauth_auth_codes_table', 5),
(10, '2016_06_01_000002_create_oauth_access_tokens_table', 5),
(11, '2016_06_01_000003_create_oauth_refresh_tokens_table', 5),
(12, '2016_06_01_000004_create_oauth_clients_table', 5),
(13, '2016_06_01_000005_create_oauth_personal_access_clients_table', 5),
(14, '2022_01_01_075013_create_food_type_table', 6),
(15, '2022_01_14_150322_create_places_table', 7),
(16, '2022_02_28_061329_create_business_settings_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_id` bigint(20) NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `description`, `status`, `image`, `zone_id`, `target`, `created_at`, `updated_at`) VALUES
(1, 'Confirmed', 'This is a confirmed food notification', 1, '2021-08-14-61176ef4bb031.png', 6, 'customer', '2022-05-23 03:21:18', '2022-05-23 03:21:18'),
(2, 'Confirmed', 'This is a confirmed food notification for delivery', 1, '2021-08-14-61176ef4bb031.png', 6, 'deliveryman', '2022-05-23 03:21:18', '2022-05-23 03:21:18');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('a1f2c15675d5f2d11ed3f19ec8e08ed9b68130c2d33cb558a2fa0ebb92ecea794829dfe4247fc234', 403, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-06-30 07:15:28', '2022-06-30 07:15:28', '2023-06-30 15:15:28');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'ahmed', 'YTU2JKogY8Mo8n14mxL5yLaO5Tc7tjKCWdVtrXDN', NULL, 'http://localhost', 1, 0, 0, '2021-12-28 08:14:11', '2021-12-28 08:14:11');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-12-28 08:14:11', '2021-12-28 08:14:11');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `order_amount` decimal(8,2) NOT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_reference` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `status_id` int(11) DEFAULT NULL,
  `confirmed` timestamp NULL DEFAULT NULL,
  `accepted` timestamp NULL DEFAULT NULL,
  `scheduled` tinyint(1) NOT NULL DEFAULT '0',
  `processing` timestamp NULL DEFAULT NULL,
  `handover` timestamp NULL DEFAULT NULL,
  `failed` timestamp NULL DEFAULT NULL,
  `scheduled_at` timestamp NULL DEFAULT NULL,
  `delivery_address_id` bigint(20) DEFAULT NULL,
  `order_note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_type` varchar(198) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `delivery_charge` decimal(6,2) DEFAULT '0.00',
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `delivery_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pending` timestamp NULL DEFAULT NULL,
  `picked_up` timestamp NULL DEFAULT NULL,
  `delivered` timestamp NULL DEFAULT NULL,
  `canceled` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `food_id` bigint(20) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `food_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `tax_amount` decimal(8,2) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_tracks`
--

CREATE TABLE `order_tracks` (
  `id` int(11) NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_tracks`
--

INSERT INTO `order_tracks` (`id`, `order_status`) VALUES
(1, 'pending'),
(2, 'confirmed'),
(3, 'processing'),
(4, 'picked_up'),
(5, 'handover'),
(6, 'delivered'),
(7, 'success'),
(8, 'failed');

-- --------------------------------------------------------

--
-- Table structure for table `order_transactions`
--

CREATE TABLE `order_transactions` (
  `id` bigint(20) NOT NULL,
  `delivery_man_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `order_amount` decimal(8,2) NOT NULL,
  `received_by` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `delivery_charge` decimal(8,2) NOT NULL,
  `original_delivery_charge` decimal(8,2) NOT NULL,
  `updated_at` timestamp NOT NULL,
  `created_at` timestamp NOT NULL,
  `tax` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_transactions`
--

INSERT INTO `order_transactions` (`id`, `delivery_man_id`, `order_id`, `order_amount`, `received_by`, `status`, `delivery_charge`, `original_delivery_charge`, `updated_at`, `created_at`, `tax`) VALUES
(3, 1, 100016, '24.00', '', 1, '2.00', '3.00', '2022-06-19 02:04:07', '2022-06-19 02:04:07', '1.00');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `cm_firebase_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `f_name`, `phone`, `email`, `image`, `status`, `cm_firebase_token`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `order_count`) VALUES
(403, 'ahmed', '123456', 'a@a.com', NULL, 1, NULL, NULL, '$2y$10$oD/lhwCBlNyr/FmDjRbCR.f2z9GJO/zoJKdApw6OobLwcJm0dgfrm', NULL, '2022-06-30 07:15:28', '2022-06-30 07:15:28', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `vendor_id` int(10) UNSIGNED DEFAULT NULL,
  `delivery_man_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coordinates` polygon NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `restaurant_wise_topic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_wise_topic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deliveryman_wise_topic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`id`, `name`, `coordinates`, `status`, `created_at`, `updated_at`, `restaurant_wise_topic`, `customer_wise_topic`, `deliveryman_wise_topic`) VALUES
(6, 'zone_china', 0x00000000010300000001000000070000001e7331b65cf05c40a4d1e67d23e543406b7331567ef25c409b8090358ce443409d733186f4f15c4026e0e4c4f6e143406372315635f05c408de8a40122e24340507131f63af05c40f93c433df9e343401e7331b65cf05c40a4d1e67d23e543401e7331b65cf05c40a4d1e67d23e54340, 1, '2022-06-15 22:58:01', '2022-06-19 06:35:49', 'test', 'test', 'zone_1_delivery_man'),
(7, 'zone_beijing', 0x000000000103000000010000000b000000a173312098f05c40ddf55e2c5fc143409271312046515d40bbc2711e93a44340f2723120e2965d40fceffe4cecce434042723120449e5d40039d04754718444092713120be8d5d40ceca42d9f54f4440f27231205a4c5d40dbccdc988f5944404272312034095d4014578cf45b4e4440a1733120e8dc5c4039693f80d7274440f2723120dadb5c4025f85dea33ed4340a173312098f05c40ddf55e2c5fc14340a173312098f05c40ddf55e2c5fc14340, 1, '2022-06-19 06:39:58', '2022-06-21 08:05:25', 'test', 'test', 'zone_1_delivery_man');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_men`
--
ALTER TABLE `delivery_men`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d_m_reviews`
--
ALTER TABLE `d_m_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_types`
--
ALTER TABLE `food_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_tracks`
--
ALTER TABLE `order_tracks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_transactions`
--
ALTER TABLE `order_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zones_name_unique` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3251;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=592;

--
-- AUTO_INCREMENT for table `delivery_men`
--
ALTER TABLE `delivery_men`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `d_m_reviews`
--
ALTER TABLE `d_m_reviews`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `food_types`
--
ALTER TABLE `food_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100089;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=694;

--
-- AUTO_INCREMENT for table `order_tracks`
--
ALTER TABLE `order_tracks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_transactions`
--
ALTER TABLE `order_transactions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=404;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
