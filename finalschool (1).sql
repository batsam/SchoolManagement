-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2017 at 09:59 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finalschool`
--

-- --------------------------------------------------------

--
-- Table structure for table `absences`
--

CREATE TABLE `absences` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `Month` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `acadamic_id` int(11) DEFAULT NULL,
  `Permission` int(11) NOT NULL,
  `Non_permission` int(11) NOT NULL,
  `Total` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `absences`
--

INSERT INTO `absences` (`id`, `student_id`, `class_id`, `Month`, `acadamic_id`, `Permission`, `Non_permission`, `Total`, `created_at`, `updated_at`) VALUES
(1, 2102, 1, 'January', 1, 12, 1, '13', '2017-07-14 09:05:00', '2017-07-14 09:06:01'),
(2, 2108, 1, 'July', 1, 32, -2, '52', '2017-09-07 04:58:05', '2017-09-07 04:58:05');

-- --------------------------------------------------------

--
-- Table structure for table `academics`
--

CREATE TABLE `academics` (
  `id` int(10) UNSIGNED NOT NULL,
  `year` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `academics`
--

INSERT INTO `academics` (`id`, `year`, `created_at`, `updated_at`) VALUES
(1, '២០១៧-២០១៨', '2017-07-14 07:54:00', '2017-09-07 04:05:01');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2017-07-13 00:14:54', '2017-07-13 00:14:54'),
(2, NULL, 1, 'Category 2', 'category-2', '2017-07-13 00:14:54', '2017-07-13 00:14:54');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(3, 1, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, NULL, 3),
(4, 1, 'title', 'checkbox', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(5, 1, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(6, 1, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(7, 1, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(8, 1, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 8),
(9, 1, 'meta_description', 'text_area', 'meta_description', 1, 0, 1, 1, 1, 1, NULL, 9),
(10, 1, 'meta_keywords', 'text_area', 'meta_keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(11, 1, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(12, 1, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, NULL, 12),
(13, 1, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, NULL, 13),
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, '', 3),
(29, 3, 'password', 'password', 'password', 1, 0, 0, 1, 1, 0, '', 4),
(30, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, '', 5),
(31, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 6),
(32, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(33, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, '', 8),
(34, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(35, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(36, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(37, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(45, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(46, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(47, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(48, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(49, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(50, 1, 'seo_title', 'text', 'seo_title', 0, 1, 1, 1, 1, 1, NULL, 14),
(51, 1, 'featured', 'checkbox', 'featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(52, 3, 'role_id', 'text', 'role_id', 1, 1, 1, 1, 1, 1, '', 9),
(194, 27, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(195, 27, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, NULL, 2),
(196, 27, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 3),
(197, 27, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(198, 28, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(199, 28, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, NULL, 2),
(200, 28, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 3),
(201, 28, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(202, 29, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(204, 29, 'khan_id', 'select_dropdown', 'Khan Id', 1, 1, 1, 1, 1, 1, '{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 13),
(205, 29, 'sangkat_id', 'select_dropdown', 'Sangkat Id', 1, 1, 1, 1, 1, 1, '{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 14),
(206, 29, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 17),
(207, 29, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 18),
(210, 29, 'PO', 'text', 'POB', 0, 1, 1, 1, 1, 1, NULL, 5),
(211, 29, 'DOB', 'date', 'DOB', 0, 1, 1, 1, 1, 1, NULL, 4),
(212, 29, 'Workdate', 'date', 'Workdate', 0, 1, 1, 1, 1, 1, NULL, 6),
(213, 29, 'House', 'text', 'House', 0, 1, 1, 1, 1, 1, NULL, 9),
(214, 29, 'Street', 'text', 'Street', 0, 1, 1, 1, 1, 1, NULL, 10),
(215, 29, 'Grup', 'text', 'Grup', 0, 1, 1, 1, 1, 1, NULL, 11),
(216, 29, 'Village', 'text', 'Village', 0, 1, 1, 1, 1, 1, NULL, 12),
(218, 29, 'Stopwork', 'date', 'Stopwork', 0, 1, 1, 1, 1, 1, NULL, 16),
(219, 30, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(220, 30, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, NULL, 2),
(221, 30, 'Type', 'text', 'Type', 0, 1, 1, 1, 1, 1, NULL, 3),
(222, 30, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 4),
(223, 30, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(224, 29, 'Phone', 'text', 'Phone', 1, 1, 1, 1, 1, 1, NULL, 8),
(225, 29, 'Image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"500\"},\"quality\":\"70%\",\"upsize\":false,\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"200\",\"height\":\"250\"}}]}', 15),
(231, 34, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(232, 34, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, NULL, 2),
(233, 34, 'employee_id', 'select_dropdown', 'Employee Id', 0, 1, 1, 1, 1, 1, '{\"relationship\":{\"key\":\"id\",\"label\":\"Fullname\"}}', 3),
(234, 34, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 4),
(235, 34, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(236, 29, 'Fullname', 'text', 'Fullname', 1, 1, 1, 1, 1, 1, NULL, 3),
(237, 29, 'position', 'select_dropdown', 'Position', 1, 1, 1, 1, 1, 1, '{\"default\":\"null\",\"options\":{\"Teacher\":\"Teacher\",\"Office Staff\":\"Office Staff\"}}', 7),
(238, 29, 'Title', 'select_dropdown', 'Title', 0, 0, 0, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\",\"Sir\":\"Sir\",\"Miss\":\"Miss\"}}', 2),
(239, 35, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(240, 35, 'year', 'text', 'Year', 0, 1, 1, 1, 1, 1, NULL, 2),
(241, 35, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 3),
(242, 35, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(243, 36, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(245, 36, 'Fullname', 'text', 'Fullname', 0, 1, 1, 1, 1, 1, NULL, 2),
(246, 36, 'DOB', 'date', 'DOB', 0, 1, 1, 1, 1, 1, NULL, 3),
(247, 36, 'POD', 'text', 'POD', 0, 0, 1, 1, 1, 1, NULL, 4),
(248, 36, 'Gender', 'text', 'Gender', 0, 1, 1, 1, 1, 1, NULL, 5),
(249, 36, 'Nationality', 'text', 'Nationality', 0, 0, 1, 1, 1, 1, NULL, 6),
(250, 36, 'House', 'text', 'House', 0, 0, 1, 1, 1, 1, NULL, 7),
(251, 36, 'Street', 'text', 'Street', 0, 0, 1, 1, 1, 1, NULL, 8),
(252, 36, 'Group', 'text', 'Group', 0, 0, 1, 1, 1, 1, NULL, 9),
(253, 36, 'commune_id', 'select_dropdown', 'Commune Id', 0, 0, 1, 1, 1, 1, '{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 10),
(254, 36, 'district_id', 'select_dropdown', 'District Id', 0, 0, 1, 1, 1, 1, '{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 11),
(255, 36, 'Father', 'text', 'Father', 0, 0, 1, 1, 1, 1, NULL, 12),
(256, 36, 'FJob', 'text', 'FJob', 0, 0, 1, 1, 1, 1, NULL, 13),
(257, 36, 'Mother', 'text', 'Mother', 0, 0, 1, 1, 1, 1, NULL, 14),
(258, 36, 'MJob', 'text', 'MJob', 0, 0, 1, 1, 1, 1, NULL, 15),
(259, 36, 'class_id', 'select_dropdown', 'Class Id', 0, 1, 1, 1, 1, 1, '{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 16),
(260, 36, 'academic_id', 'select_dropdown', 'Academic Id', 0, 1, 1, 1, 1, 1, '{\"relationship\":{\"key\":\"id\",\"label\":\"year\"}}', 17),
(261, 36, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 18),
(262, 36, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 19),
(263, 36, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, NULL, 20),
(264, 36, 'enroll_date', 'date', 'Enroll Date', 0, 0, 1, 1, 1, 1, NULL, 21),
(265, 36, 'Health', 'text', 'Health', 0, 0, 1, 1, 1, 1, NULL, 22),
(266, 36, 'Lastyear_result', 'text', 'Lastyear Result', 0, 0, 1, 1, 1, 1, NULL, 23),
(267, 36, 'status', 'select_dropdown', 'Status', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"options\":{\"\":\"None\",\"Studying\":\"Studying\",\"Stop\":\"Stop\"}}', 24),
(268, 36, 'Image', 'image', 'Image', 0, 0, 1, 1, 1, 1, NULL, 25),
(269, 37, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(270, 37, 'Fullname', 'text', 'Fullname', 0, 1, 1, 1, 1, 1, NULL, 2),
(271, 37, 'Job', 'text', 'Job', 0, 1, 1, 1, 1, 1, NULL, 3),
(272, 37, 'House', 'text', 'House', 0, 1, 1, 1, 1, 1, NULL, 4),
(273, 37, 'Street', 'text', 'Street', 0, 1, 1, 1, 1, 1, NULL, 5),
(274, 37, 'Group', 'text', 'Group', 0, 0, 0, 0, 0, 0, NULL, 6),
(275, 37, 'commune_id', 'select_dropdown', 'Commune Id', 1, 1, 1, 1, 1, 1, '{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 7),
(276, 37, 'district_id', 'select_dropdown', 'District Id', 1, 1, 1, 1, 1, 1, '{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 8),
(277, 37, 'Phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, NULL, 9),
(278, 37, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 10),
(279, 37, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 11),
(280, 37, 'student_id', 'select_dropdown', 'Student Id', 0, 1, 1, 1, 1, 1, '{\"relationship\":{\"key\":\"id\",\"label\":\"Fullname\",\"page_slug\":\"admin/students\"}}', 12),
(281, 38, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(282, 38, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(283, 38, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 3),
(284, 38, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(291, 40, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(292, 40, 'student_id', 'select_dropdown', 'Student Id', 0, 1, 1, 1, 1, 1, '{\"relationship\":{\"key\":\"id\",\"label\":\"Fullname\"}}', 2),
(293, 40, 'class_id', 'select_dropdown', 'Class Id', 0, 1, 1, 1, 1, 1, '{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 3),
(294, 40, 'academic_id', 'select_dropdown', 'Academic Id', 0, 1, 1, 1, 1, 1, '{\"relationship\":{\"key\":\"id\",\"label\":\"year\"}}', 4),
(295, 40, 'subject_id', 'select_dropdown', 'Subject Id', 0, 1, 1, 1, 1, 1, '{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 5),
(296, 40, 'Month', 'text', 'Month', 0, 1, 1, 1, 1, 1, NULL, 6),
(297, 40, 'Score_type', 'text', 'Score Type', 0, 1, 1, 1, 1, 1, NULL, 7),
(298, 40, 'Total', 'text', 'Total', 0, 1, 1, 1, 1, 1, NULL, 8),
(299, 40, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 9),
(300, 40, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 10),
(301, 41, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(302, 41, 'student_id', 'select_dropdown', 'Student Id', 0, 1, 1, 1, 1, 1, '{\"relationship\":{\"key\":\"id\",\"label\":\"Fullname\"}}', 2),
(303, 41, 'class_id', 'select_dropdown', 'Class Id', 0, 1, 1, 1, 1, 1, '{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 3),
(304, 41, 'Month', 'select_dropdown', 'Month', 0, 1, 1, 1, 1, 1, '{\"default\":\"\",\"options\":{\"\":\"Please Select\",\"January\":\"January\",\"February\":\"February\",\"March\":\"March\",\"April\":\"April\",\"May\":\"May\",\"June\":\"June\",\"July\":\"July\",\"August\":\"August\",\"September\":\"September\",\"October\":\"October\",\"November\":\"November\",\"December\":\"December\"}}', 4),
(305, 41, 'acadamic_id', 'select_dropdown', 'Acadamic Id', 0, 1, 1, 1, 1, 1, '{\"relationship\":{\"key\":\"id\",\"label\":\"year\"}}', 5),
(306, 41, 'Permission', 'number', 'Permission', 1, 1, 1, 1, 1, 1, NULL, 6),
(307, 41, 'Non_permission', 'number', 'Non Permission', 1, 1, 1, 1, 1, 1, NULL, 7),
(308, 41, 'Total', 'number', 'Total', 1, 1, 1, 1, 1, 1, NULL, 8),
(309, 41, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 9),
(310, 41, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 10),
(311, 36, 'school_id', 'text', 'School Id', 0, 0, 1, 1, 1, 1, NULL, 26),
(312, 44, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(313, 44, 'author_id', 'checkbox', 'Author Id', 1, 1, 1, 1, 1, 1, NULL, 2),
(314, 44, 'title', 'checkbox', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(315, 44, 'excerpt', 'checkbox', 'Excerpt', 0, 1, 1, 1, 1, 1, NULL, 4),
(316, 44, 'body', 'checkbox', 'Body', 0, 1, 1, 1, 1, 1, NULL, 5),
(317, 44, 'image', 'checkbox', 'Image', 0, 1, 1, 1, 1, 1, NULL, 6),
(318, 44, 'slug', 'checkbox', 'Slug', 1, 1, 1, 1, 1, 1, NULL, 7),
(319, 44, 'meta_description', 'checkbox', 'Meta Description', 0, 1, 1, 1, 1, 1, NULL, 8),
(320, 44, 'meta_keywords', 'checkbox', 'Meta Keywords', 0, 1, 1, 1, 1, 1, NULL, 9),
(321, 44, 'status', 'checkbox', 'Status', 1, 1, 1, 1, 1, 1, NULL, 10),
(322, 44, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 11),
(323, 44, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 12);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', NULL, NULL, 1, 0, '2017-07-11 02:22:22', '2017-07-12 07:02:11'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', '', '', 1, 0, '2017-07-11 02:22:22', '2017-07-11 02:22:22'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', '', '', 1, 0, '2017-07-11 02:22:22', '2017-07-11 02:22:22'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', '', '', 1, 0, '2017-07-11 02:22:22', '2017-07-11 02:22:22'),
(27, 'khans', 'khans', 'Khan', 'Khans', NULL, 'App\\Khan', NULL, NULL, 1, 0, '2017-07-13 00:04:02', '2017-07-13 00:04:02'),
(28, 'sangkats', 'sangkats', 'Sangkat', 'Sangkats', NULL, 'App\\Sangkat', NULL, NULL, 1, 0, '2017-07-13 00:04:20', '2017-07-13 00:04:20'),
(29, 'employees', 'employees', 'Employee', 'Employees', NULL, 'App\\Employee', NULL, NULL, 1, 0, '2017-07-13 00:05:51', '2017-07-13 00:05:51'),
(30, 'positions', 'positions', 'Position', 'Positions', NULL, 'App\\Position', NULL, NULL, 1, 0, '2017-07-13 00:39:58', '2017-07-13 00:39:58'),
(34, 'rooms', 'rooms', 'Room', 'Rooms', NULL, 'App\\Room', NULL, NULL, 1, 0, '2017-07-14 05:09:17', '2017-07-14 05:09:17'),
(35, 'academics', 'academics', 'Academic', 'Academics', NULL, 'App\\Academic', NULL, NULL, 1, 0, '2017-07-14 07:54:19', '2017-07-14 07:54:19'),
(36, 'students', 'students', 'Student', 'Students', NULL, 'App\\Student', NULL, NULL, 1, 0, '2017-07-14 08:13:02', '2017-07-14 08:13:02'),
(37, 'guardians', 'guardians', 'Guardian', 'Guardians', NULL, 'App\\Guardian', NULL, NULL, 1, 0, '2017-07-14 08:31:37', '2017-07-14 08:31:37'),
(38, 'subjects', 'subjects', 'Subject', 'Subjects', NULL, 'App\\Subject', NULL, NULL, 1, 0, '2017-07-14 08:48:35', '2017-07-14 08:48:35'),
(40, 'scores', 'scores', 'Score', 'Scores', NULL, 'App\\Score', NULL, NULL, 1, 0, '2017-07-14 08:51:07', '2017-07-14 08:51:07'),
(41, 'absences', 'absences', 'Absence', 'Absences', NULL, 'App\\Absence', NULL, NULL, 1, 0, '2017-07-14 08:56:52', '2017-07-14 08:56:52'),
(44, 'pages', 'pages', 'Page', 'Pages', NULL, 'TCG\\Voyager\\Models\\Page', NULL, NULL, 1, 0, '2017-09-07 02:12:44', '2017-09-07 02:12:44');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `Fullname` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `khan_id` int(11) NOT NULL,
  `sangkat_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `PO` varchar(189) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Workdate` date DEFAULT NULL,
  `House` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Street` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Grup` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Village` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Stopwork` date DEFAULT NULL,
  `Phone` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `Image` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `Fullname`, `khan_id`, `sangkat_id`, `created_at`, `updated_at`, `PO`, `DOB`, `Workdate`, `House`, `Street`, `Grup`, `Village`, `position`, `Stopwork`, `Phone`, `Image`, `Title`) VALUES
(4, 'Ex Soisambat', 1, 1, '2017-07-14 07:06:25', '2017-07-14 07:07:41', 'Phnom Penh', '2017-07-03', '2017-07-03', '21', '278, 21Eo, ph', '21', 'ohh', 'Office Staff', NULL, '86869631', 'employees/July2017/QOaEMY6s6ixQPwGAVuis.jpg', 'Sir'),
(5, 'no name', 1, 1, '2017-07-14 07:19:41', '2017-07-14 07:19:41', NULL, '2017-07-10', NULL, '21', '278, 21Eo, ph', NULL, NULL, 'Teacher', NULL, '86869631', NULL, 'Sir'),
(6, '21', 1, 1, '2017-07-17 01:48:56', '2017-07-17 01:51:58', '21', '2017-06-27', '2017-07-06', '21', '21', '21', NULL, 'Teacher', NULL, '21', 'employees/July2017/NdhaMWTvpIIyBwI2M4sh.jpg', 'Mr'),
(7, 'New Employee', 1, 1, '2017-09-07 04:44:03', '2017-09-07 04:45:40', 'Phnom Penh', '1993-02-10', '2017-09-07', '21', '278, 21Eo, ph', '7', NULL, 'Teacher', NULL, '86869631', 'employees/September2017/Li9LsBSp6GBx3Tm0JOGx.png', 'Mr');

-- --------------------------------------------------------

--
-- Table structure for table `guardians`
--

CREATE TABLE `guardians` (
  `id` int(10) UNSIGNED NOT NULL,
  `Fullname` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Job` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `House` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Street` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Group` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `commune_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `Phone` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `guardians`
--

INSERT INTO `guardians` (`id`, `Fullname`, `Job`, `House`, `Street`, `Group`, `commune_id`, `district_id`, `Phone`, `created_at`, `updated_at`, `student_id`) VALUES
(1, 'qwe', 'qw', '123', '123', NULL, 1, 1, '123', '2017-09-06 00:08:50', '2017-09-06 00:08:50', 2105);

-- --------------------------------------------------------

--
-- Table structure for table `khans`
--

CREATE TABLE `khans` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khans`
--

INSERT INTO `khans` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '7makara', '2017-07-13 00:07:15', '2017-07-13 00:07:15'),
(2, 'DunPenh', '2017-09-07 03:15:39', '2017-09-07 03:15:39'),
(3, 'Sen Sok', '2017-09-07 03:20:23', '2017-09-07 03:20:23');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2017-07-11 02:22:22', '2017-07-11 02:22:22'),
(2, 'Teacher', '2017-09-07 00:07:27', '2017-09-07 00:07:27'),
(3, 'Director', '2017-09-07 01:17:10', '2017-09-07 01:17:10'),
(4, 'Farther and Monther', '2017-09-07 01:46:54', '2017-09-07 05:06:07');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '/admin', '_self', 'voyager-boat', NULL, NULL, 1, '2017-07-11 02:22:22', '2017-07-11 02:22:22', NULL, NULL),
(4, 1, 'Users', '/admin/users', '_self', 'voyager-person', NULL, NULL, 4, '2017-07-11 02:22:22', '2017-07-14 09:11:55', NULL, NULL),
(7, 1, 'Roles', '/admin/roles', '_self', 'voyager-lock', NULL, NULL, 3, '2017-07-11 02:22:22', '2017-07-14 09:11:55', NULL, NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2017-07-11 02:22:22', '2017-07-11 02:22:22', NULL, NULL),
(9, 1, 'Menu Builder', '/admin/menus', '_self', 'voyager-list', NULL, 8, 1, '2017-07-11 02:22:22', '2017-07-14 09:11:55', NULL, NULL),
(10, 1, 'Database', '/admin/database', '_self', 'voyager-data', NULL, 8, 2, '2017-07-11 02:22:22', '2017-07-14 09:11:55', NULL, NULL),
(11, 1, 'Settings', '/admin/settings', '_self', 'voyager-settings', NULL, NULL, 10, '2017-07-11 02:22:22', '2017-07-14 09:11:55', NULL, NULL),
(13, 1, 'all Students', '/admin/students', '_self', 'voyager-study', '#000000', 12, 1, '2017-07-14 09:12:12', '2017-07-14 09:12:18', NULL, ''),
(14, 2, 'View Students', '/admin/students', '_self', 'voyager-bread', '#000000', NULL, 11, '2017-09-07 00:08:40', '2017-09-07 00:24:06', NULL, ''),
(15, 2, 'Scores', '/admin/scores', '_self', NULL, '#000000', NULL, 12, '2017-09-07 00:09:15', '2017-09-07 00:09:15', NULL, ''),
(16, 2, 'Absences', '/admin/absences', '_self', NULL, '#000000', NULL, 13, '2017-09-07 00:09:37', '2017-09-07 00:09:37', NULL, ''),
(17, 2, 'Rooms', '/admin/rooms', '_self', NULL, '#000000', NULL, 14, '2017-09-07 00:09:57', '2017-09-07 00:10:07', NULL, ''),
(18, 3, 'View Students', '/admin/students', '_self', 'voyager-people', '#000000', NULL, 15, '2017-09-07 01:18:06', '2017-09-07 01:18:06', NULL, ''),
(19, 3, 'Add Academics', '/admin/academics', '_self', 'voyager-study', '#000000', NULL, 16, '2017-09-07 01:19:35', '2017-09-07 01:19:57', NULL, ''),
(20, 3, 'Add Rooms', '/admin/rooms', '_self', 'voyager-home', '#000000', NULL, 17, '2017-09-07 01:21:22', '2017-09-07 01:21:22', NULL, ''),
(21, 3, 'Positions', '/admin/positions', '_self', 'voyager-archive', '#000000', NULL, 18, '2017-09-07 01:23:42', '2017-09-07 01:23:42', NULL, ''),
(22, 3, 'Absences', '/admin/absences', '_self', 'voyager-font', '#000000', NULL, 19, '2017-09-07 01:24:25', '2017-09-07 01:24:25', NULL, ''),
(23, 3, 'Scores', '/admin/scores', '_self', 'voyager-certificate', '#000000', NULL, 20, '2017-09-07 01:24:54', '2017-09-07 01:24:54', NULL, ''),
(25, 3, 'Employees', '/admin/employees', '_self', 'voyager-smile', '#000000', NULL, 22, '2017-09-07 01:26:04', '2017-09-07 01:26:04', NULL, ''),
(26, 4, 'Absences', '/admin/absences', '_self', 'voyager-check', '#000000', NULL, 23, '2017-09-07 01:47:34', '2017-09-07 01:47:34', NULL, ''),
(27, 4, 'Scores', '/admin/scores', '_self', 'voyager-file-text', '#000000', NULL, 24, '2017-09-07 01:48:03', '2017-09-07 01:48:03', NULL, ''),
(28, 1, 'Add Sangkats', '/admin/sangkats', '_self', 'voyager-company', '#000000', NULL, 25, '2017-09-07 03:14:07', '2017-09-07 03:14:07', NULL, ''),
(29, 1, 'Add Khans', '/admin/khans', '_self', NULL, '#000000', NULL, 26, '2017-09-07 03:14:43', '2017-09-07 03:14:43', NULL, '');

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_21_000000_add_order_to_data_rows_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/AAgCCnqHfLlRub9syUdw.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2017-07-13 00:14:54', '2017-07-13 00:14:54');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2017-07-11 02:22:22', '2017-07-11 02:22:22', NULL),
(2, 'browse_database', NULL, '2017-07-11 02:22:22', '2017-07-11 02:22:22', NULL),
(3, 'browse_media', NULL, '2017-07-11 02:22:22', '2017-07-11 02:22:22', NULL),
(4, 'browse_settings', NULL, '2017-07-11 02:22:22', '2017-07-11 02:22:22', NULL),
(5, 'browse_menus', 'menus', '2017-07-11 02:22:22', '2017-07-11 02:22:22', NULL),
(6, 'read_menus', 'menus', '2017-07-11 02:22:22', '2017-07-11 02:22:22', NULL),
(7, 'edit_menus', 'menus', '2017-07-11 02:22:22', '2017-07-11 02:22:22', NULL),
(8, 'add_menus', 'menus', '2017-07-11 02:22:22', '2017-07-11 02:22:22', NULL),
(9, 'delete_menus', 'menus', '2017-07-11 02:22:22', '2017-07-11 02:22:22', NULL),
(15, 'browse_roles', 'roles', '2017-07-11 02:22:22', '2017-07-11 02:22:22', NULL),
(16, 'read_roles', 'roles', '2017-07-11 02:22:22', '2017-07-11 02:22:22', NULL),
(17, 'edit_roles', 'roles', '2017-07-11 02:22:22', '2017-07-11 02:22:22', NULL),
(18, 'add_roles', 'roles', '2017-07-11 02:22:22', '2017-07-11 02:22:22', NULL),
(19, 'delete_roles', 'roles', '2017-07-11 02:22:22', '2017-07-11 02:22:22', NULL),
(20, 'browse_users', 'users', '2017-07-11 02:22:22', '2017-07-11 02:22:22', NULL),
(21, 'read_users', 'users', '2017-07-11 02:22:22', '2017-07-11 02:22:22', NULL),
(22, 'edit_users', 'users', '2017-07-11 02:22:22', '2017-07-11 02:22:22', NULL),
(23, 'add_users', 'users', '2017-07-11 02:22:22', '2017-07-11 02:22:22', NULL),
(24, 'delete_users', 'users', '2017-07-11 02:22:22', '2017-07-11 02:22:22', NULL),
(25, 'browse_posts', 'posts', '2017-07-11 02:22:22', '2017-07-11 02:22:22', NULL),
(26, 'read_posts', 'posts', '2017-07-11 02:22:22', '2017-07-11 02:22:22', NULL),
(27, 'edit_posts', 'posts', '2017-07-11 02:22:22', '2017-07-11 02:22:22', NULL),
(28, 'add_posts', 'posts', '2017-07-11 02:22:22', '2017-07-11 02:22:22', NULL),
(29, 'delete_posts', 'posts', '2017-07-11 02:22:22', '2017-07-11 02:22:22', NULL),
(125, 'browse_khans', 'khans', '2017-07-13 00:04:02', '2017-07-13 00:04:02', NULL),
(126, 'read_khans', 'khans', '2017-07-13 00:04:02', '2017-07-13 00:04:02', NULL),
(127, 'edit_khans', 'khans', '2017-07-13 00:04:02', '2017-07-13 00:04:02', NULL),
(128, 'add_khans', 'khans', '2017-07-13 00:04:02', '2017-07-13 00:04:02', NULL),
(129, 'delete_khans', 'khans', '2017-07-13 00:04:02', '2017-07-13 00:04:02', NULL),
(130, 'browse_sangkats', 'sangkats', '2017-07-13 00:04:20', '2017-07-13 00:04:20', NULL),
(131, 'read_sangkats', 'sangkats', '2017-07-13 00:04:20', '2017-07-13 00:04:20', NULL),
(132, 'edit_sangkats', 'sangkats', '2017-07-13 00:04:20', '2017-07-13 00:04:20', NULL),
(133, 'add_sangkats', 'sangkats', '2017-07-13 00:04:20', '2017-07-13 00:04:20', NULL),
(134, 'delete_sangkats', 'sangkats', '2017-07-13 00:04:20', '2017-07-13 00:04:20', NULL),
(135, 'browse_employees', 'employees', '2017-07-13 00:05:51', '2017-07-13 00:05:51', NULL),
(136, 'read_employees', 'employees', '2017-07-13 00:05:51', '2017-07-13 00:05:51', NULL),
(137, 'edit_employees', 'employees', '2017-07-13 00:05:51', '2017-07-13 00:05:51', NULL),
(138, 'add_employees', 'employees', '2017-07-13 00:05:51', '2017-07-13 00:05:51', NULL),
(139, 'delete_employees', 'employees', '2017-07-13 00:05:51', '2017-07-13 00:05:51', NULL),
(140, 'browse_positions', 'positions', '2017-07-13 00:39:58', '2017-07-13 00:39:58', NULL),
(141, 'read_positions', 'positions', '2017-07-13 00:39:58', '2017-07-13 00:39:58', NULL),
(142, 'edit_positions', 'positions', '2017-07-13 00:39:58', '2017-07-13 00:39:58', NULL),
(143, 'add_positions', 'positions', '2017-07-13 00:39:58', '2017-07-13 00:39:58', NULL),
(144, 'delete_positions', 'positions', '2017-07-13 00:39:58', '2017-07-13 00:39:58', NULL),
(150, 'browse_rooms', 'rooms', '2017-07-14 05:09:17', '2017-07-14 05:09:17', NULL),
(151, 'read_rooms', 'rooms', '2017-07-14 05:09:17', '2017-07-14 05:09:17', NULL),
(152, 'edit_rooms', 'rooms', '2017-07-14 05:09:17', '2017-07-14 05:09:17', NULL),
(153, 'add_rooms', 'rooms', '2017-07-14 05:09:17', '2017-07-14 05:09:17', NULL),
(154, 'delete_rooms', 'rooms', '2017-07-14 05:09:17', '2017-07-14 05:09:17', NULL),
(155, 'browse_academics', 'academics', '2017-07-14 07:54:19', '2017-07-14 07:54:19', NULL),
(156, 'read_academics', 'academics', '2017-07-14 07:54:19', '2017-07-14 07:54:19', NULL),
(157, 'edit_academics', 'academics', '2017-07-14 07:54:19', '2017-07-14 07:54:19', NULL),
(158, 'add_academics', 'academics', '2017-07-14 07:54:19', '2017-07-14 07:54:19', NULL),
(159, 'delete_academics', 'academics', '2017-07-14 07:54:19', '2017-07-14 07:54:19', NULL),
(160, 'browse_students', 'students', '2017-07-14 08:13:02', '2017-07-14 08:13:02', NULL),
(161, 'read_students', 'students', '2017-07-14 08:13:02', '2017-07-14 08:13:02', NULL),
(162, 'edit_students', 'students', '2017-07-14 08:13:02', '2017-07-14 08:13:02', NULL),
(163, 'add_students', 'students', '2017-07-14 08:13:02', '2017-07-14 08:13:02', NULL),
(164, 'delete_students', 'students', '2017-07-14 08:13:02', '2017-07-14 08:13:02', NULL),
(165, 'browse_guardians', 'guardians', '2017-07-14 08:31:37', '2017-07-14 08:31:37', NULL),
(166, 'read_guardians', 'guardians', '2017-07-14 08:31:37', '2017-07-14 08:31:37', NULL),
(167, 'edit_guardians', 'guardians', '2017-07-14 08:31:37', '2017-07-14 08:31:37', NULL),
(168, 'add_guardians', 'guardians', '2017-07-14 08:31:37', '2017-07-14 08:31:37', NULL),
(169, 'delete_guardians', 'guardians', '2017-07-14 08:31:37', '2017-07-14 08:31:37', NULL),
(170, 'browse_subjects', 'subjects', '2017-07-14 08:48:35', '2017-07-14 08:48:35', NULL),
(171, 'read_subjects', 'subjects', '2017-07-14 08:48:35', '2017-07-14 08:48:35', NULL),
(172, 'edit_subjects', 'subjects', '2017-07-14 08:48:35', '2017-07-14 08:48:35', NULL),
(173, 'add_subjects', 'subjects', '2017-07-14 08:48:35', '2017-07-14 08:48:35', NULL),
(174, 'delete_subjects', 'subjects', '2017-07-14 08:48:35', '2017-07-14 08:48:35', NULL),
(175, 'browse_scores', 'scores', '2017-07-14 08:51:07', '2017-07-14 08:51:07', NULL),
(176, 'read_scores', 'scores', '2017-07-14 08:51:07', '2017-07-14 08:51:07', NULL),
(177, 'edit_scores', 'scores', '2017-07-14 08:51:07', '2017-07-14 08:51:07', NULL),
(178, 'add_scores', 'scores', '2017-07-14 08:51:07', '2017-07-14 08:51:07', NULL),
(179, 'delete_scores', 'scores', '2017-07-14 08:51:07', '2017-07-14 08:51:07', NULL),
(180, 'browse_absences', 'absences', '2017-07-14 08:56:52', '2017-07-14 08:56:52', NULL),
(181, 'read_absences', 'absences', '2017-07-14 08:56:52', '2017-07-14 08:56:52', NULL),
(182, 'edit_absences', 'absences', '2017-07-14 08:56:52', '2017-07-14 08:56:52', NULL),
(183, 'add_absences', 'absences', '2017-07-14 08:56:52', '2017-07-14 08:56:52', NULL),
(184, 'delete_absences', 'absences', '2017-07-14 08:56:52', '2017-07-14 08:56:52', NULL),
(185, 'browse_pages', 'pages', '2017-09-07 02:12:44', '2017-09-07 02:12:44', NULL),
(186, 'read_pages', 'pages', '2017-09-07 02:12:44', '2017-09-07 02:12:44', NULL),
(187, 'edit_pages', 'pages', '2017-09-07 02:12:44', '2017-09-07 02:12:44', NULL),
(188, 'add_pages', 'pages', '2017-09-07 02:12:44', '2017-09-07 02:12:44', NULL),
(189, 'delete_pages', 'pages', '2017-09-07 02:12:44', '2017-09-07 02:12:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(1, 4),
(1, 5),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(22, 3),
(22, 4),
(22, 5),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(135, 4),
(136, 1),
(136, 4),
(137, 1),
(137, 4),
(138, 1),
(138, 4),
(139, 1),
(139, 4),
(140, 1),
(140, 4),
(141, 1),
(141, 4),
(142, 1),
(142, 4),
(143, 1),
(143, 4),
(144, 1),
(144, 4),
(150, 1),
(150, 3),
(151, 1),
(151, 3),
(152, 1),
(153, 1),
(153, 4),
(154, 1),
(154, 4),
(155, 1),
(155, 4),
(156, 1),
(156, 4),
(157, 1),
(157, 4),
(158, 1),
(158, 4),
(159, 1),
(159, 4),
(160, 1),
(160, 3),
(160, 4),
(161, 1),
(161, 3),
(161, 4),
(162, 1),
(162, 4),
(163, 1),
(163, 4),
(164, 1),
(164, 4),
(165, 1),
(165, 4),
(166, 1),
(166, 4),
(167, 1),
(167, 4),
(168, 1),
(168, 4),
(169, 1),
(169, 4),
(170, 1),
(170, 4),
(171, 1),
(171, 4),
(172, 1),
(172, 4),
(173, 1),
(173, 4),
(174, 1),
(174, 4),
(175, 1),
(175, 3),
(175, 4),
(175, 5),
(176, 1),
(176, 3),
(176, 4),
(176, 5),
(177, 1),
(178, 1),
(178, 3),
(179, 1),
(180, 1),
(180, 3),
(180, 4),
(180, 5),
(181, 1),
(181, 3),
(181, 4),
(181, 5),
(182, 1),
(182, 3),
(183, 1),
(183, 3),
(184, 1);

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `name`, `Type`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Office', '2017-07-13 00:40:17', '2017-07-13 00:40:17'),
(2, 'Bora', 'Teacher', '2017-09-07 05:27:52', '2017-09-07 05:27:52');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '1', '', 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/nlje9NZQ7bTMYOUG4lF1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2017-07-13 00:14:54', '2017-07-14 09:38:43'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/7uelXHi85YOfZKsoS6Tq.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2017-07-13 00:14:54', '2017-07-13 00:14:54'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/9txUSY6wb7LTBSbDPrD9.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2017-07-13 00:14:54', '2017-07-13 00:14:54'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/yuk1fBwmKKZdY2qR1ZKM.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2017-07-13 00:14:54', '2017-07-13 00:14:54');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2017-07-11 02:22:22', '2017-07-11 02:22:22'),
(2, 'user', 'Normal User', '2017-07-11 02:22:22', '2017-07-11 02:22:22'),
(3, 'Teacher', 'Teacher', '2017-09-07 00:11:16', '2017-09-07 00:11:16'),
(4, 'Director', 'Director', '2017-09-07 00:47:32', '2017-09-07 00:47:32'),
(5, 'Parent', 'Parent', '2017-09-07 01:46:27', '2017-09-07 01:46:27');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `employee_id`, `created_at`, `updated_at`) VALUES
(1, 'One', 4, '2017-07-14 05:56:00', '2017-07-14 07:09:47'),
(2, 'Two', 4, '2017-09-07 03:19:24', '2017-09-07 03:19:24');

-- --------------------------------------------------------

--
-- Table structure for table `sangkats`
--

CREATE TABLE `sangkats` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sangkats`
--

INSERT INTO `sangkats` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Tekla', '2017-07-13 00:07:26', '2017-07-13 00:07:26'),
(2, 'Chaktumuk', '2017-09-07 03:14:18', '2017-09-07 03:14:18'),
(3, 'norton 1', '2017-09-07 05:08:30', '2017-09-07 05:08:30');

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `academic_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `Month` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Score_type` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Total` decimal(10,0) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`id`, `student_id`, `class_id`, `academic_id`, `subject_id`, `Month`, `Score_type`, `Total`, `created_at`, `updated_at`) VALUES
(4, 2107, 1, 1, 1, 'January', 'Year', '10', '2017-09-07 05:59:57', '2017-09-07 05:59:57'),
(5, 2106, 1, 1, 1, 'January', 'Month', '10', '2017-09-22 00:58:04', '2017-09-22 00:58:04');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`) VALUES
(1, 'title', 'Site Title', 'សាលាបឋមសិក្សាអនុវត្ត', '', 'text', 1),
(2, 'description', 'Site Description', 'Site Description', '', 'text', 2),
(3, 'logo', 'Site Logo', '', '', 'image', 3),
(4, 'admin_bg_image', 'Admin Background Image', 'settings/July2017/xpkc0BwvxT6h8Tr6BJIu.jpg', '', 'image', 9),
(5, 'admin_title', 'Admin Title', 'សាលាបឋមសិក្សាអនុវត្ត', '', 'text', 4),
(6, 'admin_description', 'Admin Description', 'ស្វាគមន៍មកកាន់ កម្មវិធីគ្រប់គ្រងសាលាបឋមសិក្សា អនុវត្ត', '', 'text', 5),
(7, 'admin_loader', 'Admin Loader', '', '', 'image', 6),
(8, 'admin_icon_image', 'Admin Icon Image', 'settings/July2017/jBBNMQmav7KpLVHOCZId.png', '', 'image', 7),
(9, 'google_analytics_client_id', 'Google Analytics Client ID', '', '', 'text', 9);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `Fullname` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `POD` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Gender` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Nationality` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `House` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Street` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Group` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `commune_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `Father` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FJob` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Mother` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MJob` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `academic_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `enroll_date` date DEFAULT NULL,
  `Health` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Lastyear_result` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `Fullname`, `DOB`, `POD`, `Gender`, `Nationality`, `House`, `Street`, `Group`, `commune_id`, `district_id`, `Father`, `FJob`, `Mother`, `MJob`, `class_id`, `academic_id`, `created_at`, `updated_at`, `deleted_at`, `enroll_date`, `Health`, `Lastyear_result`, `status`, `Image`, `school_id`) VALUES
(2106, 'Dara', '2017-09-07', 'Phnom Penh', 'BOY', 'Khmer', '12', '132', NULL, 1, 1, 'Kakda', 'Police', 'Jak reya', 'House wife', 1, 1, '2017-09-07 03:13:28', '2017-09-07 03:13:28', NULL, '2017-09-07', 'Good', NULL, 'Studying', NULL, NULL),
(2107, 'Marry', '2017-09-07', 'Kompong cham', 'Girl', 'Khmer', NULL, NULL, NULL, 1, 1, 'Mara', NULL, 'Mariya', NULL, 1, 1, '2017-09-07 03:16:39', '2017-09-07 03:16:39', NULL, '2016-09-06', 'Good', NULL, 'Studying', NULL, NULL),
(2108, 'Bophea', '2017-09-14', 'Phnom Penh', 'Girl', 'Khmer', '10', '15', '7', 1, 1, 'Sok', 'Teacher', 'Sampors', 'Saler', 1, 1, '2017-09-07 03:25:40', '2017-09-07 03:26:57', NULL, '2016-07-13', 'Good', NULL, 'Studying', NULL, NULL),
(2109, 'Chea Raksmey', '2017-09-14', 'Phnom Penh', 'Girl', 'Khmer', '12', '12', '4', 2, 1, 'Chea', 'House Keeper', 'Chin', 'CEO at Nu', 1, 1, '2017-09-07 03:30:43', '2017-09-07 03:30:43', NULL, '2017-09-01', 'Good', NULL, 'Studying', NULL, NULL),
(2110, 'Yu', '2017-09-01', 'Phnom Penh', 'Girl', 'Khmer', '11', '14', '6', 1, 1, 'Huy', 'farmer', 'Jan', 'House wife', 1, 1, '2017-09-07 03:58:49', '2017-09-07 03:58:49', NULL, NULL, 'Good', NULL, 'Studying', NULL, NULL),
(2111, 'Miya', '2015-09-07', NULL, 'BOY', 'Khmer', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 1, 1, '2017-09-07 04:00:56', '2017-09-07 04:01:31', NULL, NULL, 'Good', NULL, 'Studying', NULL, NULL),
(2112, 'Ty', '2017-09-01', 'Phnom Penh', 'Girl', 'Khmer', '11', '14', '6', 1, 1, 'Ty Noun', 'House Keeper', 'Chean Rany', 'Worker', 1, 1, '2017-09-07 04:01:49', '2017-09-07 04:01:49', NULL, '2017-09-14', 'Good', NULL, 'Studying', NULL, NULL),
(2113, 'Sey Ha', NULL, NULL, 'BOY', 'Khmer', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 1, 1, '2017-09-07 04:01:55', '2017-09-07 04:01:55', NULL, NULL, 'Good', NULL, 'Studying', NULL, NULL),
(2114, 'Samith', NULL, NULL, 'BOY', 'Khmer', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 1, 1, '2017-09-07 04:02:29', '2017-09-07 04:02:29', NULL, NULL, 'Good', NULL, 'Studying', NULL, NULL),
(2115, 'Kanha', NULL, NULL, 'BOY', 'Khmer', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 1, 1, '2017-09-07 04:02:46', '2017-09-07 04:02:46', NULL, NULL, 'Good', NULL, 'Studying', NULL, NULL),
(2116, 'Sok', '2017-09-07', 'Phnompenh', 'BOY', 'Khmer', '21', '278', '21', 3, 1, 'Sav', 'Police', 'Mom', 'Cooker', 1, 1, '2017-09-07 04:42:27', '2017-09-07 05:08:58', NULL, '2017-09-07', 'Good', 'Pass', 'Studying', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Khmer', '2017-07-14 08:48:53', '2017-07-14 08:48:53'),
(2, 'Math', '2017-09-07 03:16:45', '2017-09-07 03:16:45');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 1, 'pt', 'Post', '2017-07-13 00:14:54', '2017-07-13 00:14:54'),
(3, 'data_types', 'display_name_singular', 3, 'pt', 'Utilizador', '2017-07-13 00:14:54', '2017-07-13 00:14:54'),
(5, 'data_types', 'display_name_singular', 5, 'pt', 'Menu', '2017-07-13 00:14:54', '2017-07-13 00:14:54'),
(6, 'data_types', 'display_name_singular', 6, 'pt', 'Função', '2017-07-13 00:14:54', '2017-07-13 00:14:54'),
(7, 'data_types', 'display_name_plural', 1, 'pt', 'Posts', '2017-07-13 00:14:54', '2017-07-13 00:14:54'),
(9, 'data_types', 'display_name_plural', 3, 'pt', 'Utilizadores', '2017-07-13 00:14:54', '2017-07-13 00:14:54'),
(11, 'data_types', 'display_name_plural', 5, 'pt', 'Menus', '2017-07-13 00:14:54', '2017-07-13 00:14:54'),
(12, 'data_types', 'display_name_plural', 6, 'pt', 'Funções', '2017-07-13 00:14:54', '2017-07-13 00:14:54'),
(13, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2017-07-13 00:14:54', '2017-07-13 00:14:54'),
(14, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2017-07-13 00:14:54', '2017-07-13 00:14:54'),
(15, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2017-07-13 00:14:54', '2017-07-13 00:14:54'),
(16, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2017-07-13 00:14:54', '2017-07-13 00:14:54'),
(19, 'menu_items', 'title', 4, 'pt', 'Utilizadores', '2017-07-13 00:14:54', '2017-07-13 00:14:54'),
(22, 'menu_items', 'title', 7, 'pt', 'Funções', '2017-07-13 00:14:54', '2017-07-13 00:14:54'),
(23, 'menu_items', 'title', 8, 'pt', 'Ferramentas', '2017-07-13 00:14:54', '2017-07-13 00:14:54'),
(24, 'menu_items', 'title', 9, 'pt', 'Menus', '2017-07-13 00:14:54', '2017-07-13 00:14:54'),
(25, 'menu_items', 'title', 10, 'pt', 'Base de dados', '2017-07-13 00:14:54', '2017-07-13 00:14:54'),
(26, 'menu_items', 'title', 11, 'pt', 'Configurações', '2017-07-13 00:14:54', '2017-07-13 00:14:54'),
(27, 'posts', 'title', 1, 'pt', 'Lorem Ipsum Post2', '2017-07-14 09:38:43', '2017-07-14 09:38:43'),
(28, 'posts', 'seo_title', 1, 'pt', '', '2017-07-14 09:38:43', '2017-07-14 09:38:43'),
(29, 'posts', 'excerpt', 1, 'pt', 'This is the excerpt for the Lorem Ipsum Post', '2017-07-14 09:38:43', '2017-07-14 09:38:43'),
(30, 'posts', 'body', 1, 'pt', '<p>This is the body of the lorem ipsum post</p>', '2017-07-14 09:38:43', '2017-07-14 09:38:43'),
(31, 'posts', 'slug', 1, 'pt', 'lorem-ipsum-post2', '2017-07-14 09:38:43', '2017-07-14 09:38:43'),
(32, 'posts', 'meta_description', 1, 'pt', 'This is the meta description', '2017-07-14 09:38:43', '2017-07-14 09:38:43'),
(33, 'posts', 'meta_keywords', 1, 'pt', 'keyword1, keyword2, keyword3', '2017-07-14 09:38:43', '2017-07-14 09:38:43'),
(34, 'academics', 'year', 1, 'pt', '2017-2018', '2017-07-14 09:42:56', '2017-07-14 09:42:56'),
(35, 'data_types', 'display_name_singular', 36, 'pt', 'Student', '2017-07-15 03:47:10', '2017-07-15 03:47:10'),
(36, 'data_types', 'display_name_singular', 36, 'kh', 'Student', '2017-07-15 03:47:10', '2017-07-15 03:47:10'),
(37, 'data_types', 'display_name_plural', 36, 'pt', 'Students', '2017-07-15 03:47:10', '2017-07-15 03:47:10'),
(38, 'data_types', 'display_name_plural', 36, 'kh', 'Students', '2017-07-15 03:47:10', '2017-07-15 03:47:10'),
(39, 'menu_items', 'title', 14, 'pt', '', '2017-09-07 00:08:40', '2017-09-07 00:08:40'),
(40, 'menu_items', 'title', 14, 'kh', '', '2017-09-07 00:08:40', '2017-09-07 00:08:40'),
(41, 'menu_items', 'title', 15, 'pt', '', '2017-09-07 00:09:15', '2017-09-07 00:09:15'),
(42, 'menu_items', 'title', 15, 'kh', '', '2017-09-07 00:09:15', '2017-09-07 00:09:15'),
(43, 'menu_items', 'title', 16, 'pt', '', '2017-09-07 00:09:37', '2017-09-07 00:09:37'),
(44, 'menu_items', 'title', 16, 'kh', '', '2017-09-07 00:09:37', '2017-09-07 00:09:37'),
(45, 'menu_items', 'title', 17, 'pt', '', '2017-09-07 00:09:57', '2017-09-07 00:09:57'),
(46, 'menu_items', 'title', 17, 'kh', '', '2017-09-07 00:09:57', '2017-09-07 00:09:57'),
(47, 'menu_items', 'title', 18, 'pt', '', '2017-09-07 01:18:06', '2017-09-07 01:18:06'),
(48, 'menu_items', 'title', 18, 'kh', '', '2017-09-07 01:18:06', '2017-09-07 01:18:06'),
(49, 'menu_items', 'title', 19, 'pt', '', '2017-09-07 01:19:35', '2017-09-07 01:19:35'),
(50, 'menu_items', 'title', 19, 'kh', '', '2017-09-07 01:19:35', '2017-09-07 01:19:35'),
(51, 'menu_items', 'title', 20, 'pt', '', '2017-09-07 01:21:22', '2017-09-07 01:21:22'),
(52, 'menu_items', 'title', 20, 'kh', '', '2017-09-07 01:21:22', '2017-09-07 01:21:22'),
(53, 'menu_items', 'title', 21, 'pt', '', '2017-09-07 01:23:42', '2017-09-07 01:23:42'),
(54, 'menu_items', 'title', 21, 'kh', '', '2017-09-07 01:23:42', '2017-09-07 01:23:42'),
(55, 'menu_items', 'title', 22, 'pt', '', '2017-09-07 01:24:25', '2017-09-07 01:24:25'),
(56, 'menu_items', 'title', 22, 'kh', '', '2017-09-07 01:24:25', '2017-09-07 01:24:25'),
(57, 'menu_items', 'title', 23, 'pt', '', '2017-09-07 01:24:54', '2017-09-07 01:24:54'),
(58, 'menu_items', 'title', 23, 'kh', '', '2017-09-07 01:24:54', '2017-09-07 01:24:54'),
(61, 'menu_items', 'title', 25, 'pt', '', '2017-09-07 01:26:04', '2017-09-07 01:26:04'),
(62, 'menu_items', 'title', 25, 'kh', '', '2017-09-07 01:26:04', '2017-09-07 01:26:04'),
(63, 'menu_items', 'title', 26, 'pt', '', '2017-09-07 01:47:34', '2017-09-07 01:47:34'),
(64, 'menu_items', 'title', 26, 'kh', '', '2017-09-07 01:47:35', '2017-09-07 01:47:35'),
(65, 'menu_items', 'title', 27, 'pt', '', '2017-09-07 01:48:03', '2017-09-07 01:48:03'),
(66, 'menu_items', 'title', 27, 'kh', '', '2017-09-07 01:48:03', '2017-09-07 01:48:03'),
(67, 'menu_items', 'title', 28, 'pt', '', '2017-09-07 03:14:07', '2017-09-07 03:14:07'),
(68, 'menu_items', 'title', 28, 'kh', '', '2017-09-07 03:14:07', '2017-09-07 03:14:07'),
(69, 'menu_items', 'title', 29, 'pt', '', '2017-09-07 03:14:43', '2017-09-07 03:14:43'),
(70, 'menu_items', 'title', 29, 'kh', '', '2017-09-07 03:14:43', '2017-09-07 03:14:43'),
(71, 'academics', 'year', 1, 'kh', '២០១៧-២០១៨', '2017-09-07 04:04:26', '2017-09-07 04:04:26'),
(72, 'data_types', 'display_name_singular', 41, 'pt', 'Absence', '2017-09-21 23:15:39', '2017-09-21 23:15:39'),
(73, 'data_types', 'display_name_singular', 41, 'kh', 'Absence', '2017-09-21 23:15:39', '2017-09-21 23:15:39'),
(74, 'data_types', 'display_name_plural', 41, 'pt', 'Absences', '2017-09-21 23:15:39', '2017-09-21 23:15:39'),
(75, 'data_types', 'display_name_plural', 41, 'kh', 'Absences', '2017-09-21 23:15:39', '2017-09-21 23:15:39'),
(76, 'data_types', 'display_name_singular', 40, 'pt', 'Score', '2017-09-22 00:53:21', '2017-09-22 00:53:21'),
(77, 'data_types', 'display_name_singular', 40, 'kh', 'Score', '2017-09-22 00:53:21', '2017-09-22 00:53:21'),
(78, 'data_types', 'display_name_plural', 40, 'pt', 'Scores', '2017-09-22 00:53:21', '2017-09-22 00:53:21'),
(79, 'data_types', 'display_name_plural', 40, 'kh', 'Scores', '2017-09-22 00:53:21', '2017-09-22 00:53:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@admin.com', 'users/September2017/XkVBOcuUEpPaeKknhUcK.jpg', '$2y$10$5WMD./PDaRujwiAZgW5l9OSGcHO8X4qjuhwy01WLOoHGoG0YSvtWe', 'S9skgk7vphFFQWp14PSDSs7UFB7OMeManCdVafIJtehB18iEBKuOxtyZzNdK', '2017-07-11 02:23:30', '2017-09-22 00:54:35'),
(2, 3, 'Teacher Test', 'teacher@teacher.com', 'users/default.png', '$2y$10$0qluP2At2k9jDpgOdDilluIbpSEalIHqYPNw1oQppHBIT5yB5A.Ya', 'dQVxsPrbwkFeGhvGtJ5UHWz3jFtfRpRYX4s79efjFQ0XcyMVRajwtrsfEtLH', '2017-09-07 00:12:44', '2017-09-07 00:12:44'),
(3, 4, 'Director', 'director@director.com', 'users/default.png', '$2y$10$NsvAsLMvVN5jF.XRjPA1fueJ3ocUs.vcpUiczRMMkop1ocEziVEpC', 'p9OLdWFpBfz7ELLEh8BA96UpCqAYRaBjHpeLYhEH6OcDFSwj3OutCktchnq5', '2017-09-07 00:48:42', '2017-09-07 00:48:42'),
(4, 5, 'Parent', 'parent@parent.com', 'users/default.png', '$2y$10$5nYhYvMYOVDuj6VenzwT8ub/spxZ3BAbtXSDq1mtCjCWT13BwnnjC', 'CYAw1wBNoY2nf3ZT0ilcgSct7DClKPedk7ivtDF1cKyjuBEaudauODb1PhOO', '2017-09-07 01:48:59', '2017-09-07 01:48:59'),
(5, 4, 'Samith', 'Samith@samith.com', 'users/September2017/ZPDNB1YSRmxFV9rniJlz.JPG', '$2y$10$x6KaYDr3weCGycrCVD8vxuLaU7jaEzSL068nB8YUpfnLW/aQ6YyQK', 'eOt4o1KxeI4uRJVOw5i0ur17AVlj1nzkNfRbrs0NHb9XnrIQCUyUn8CNh2gq', '2017-09-07 03:01:52', '2017-09-07 03:01:52'),
(6, 4, 'samnang@samnang.com', 'samnang@nu.com', 'users/September2017/IsMwK3CryKjNYO21m12n.jpg', '$2y$10$D9bjwVdDaKsNM7mBhfdyM.ACw26z1PVSHxUMxdYWxLW3IFiGoqZXK', 'oiHXe4ehojbEaI1KHw4YhT8c1BNLMpBdyMaIPpnrZPqlor6rVOLPlz09du5Q', '2017-09-07 03:16:39', '2017-09-07 03:20:20'),
(7, 3, 'Samith2', 'Samith2@samith.com', 'users/September2017/NrfzxAFA3ckNuj8hlMb5.JPG', '$2y$10$rTFckU6Lk4xDfGzwz/EVde4CFlQRSIEfqkjZ1G8AlIpdomaanKQXa', NULL, '2017-09-07 03:19:36', '2017-09-07 03:19:36'),
(8, 4, 'Principle', 'principle@principle.com', 'users/September2017/6BEzEKcbCKjkuMjfpZCo.png', '$2y$10$RNbAJmO7fqCOgS3AOJJH7euSQjj/dK/g0u36NORVYJJlbKEa5cdXe', 'NlYzEY6PS2OBWhHieFt4PrzECPoa59XglJuLSuNUzHyM71wh0WokUk66x98D', '2017-09-07 04:40:18', '2017-09-07 04:40:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absences`
--
ALTER TABLE `absences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `absences_sid_index` (`student_id`),
  ADD KEY `absences_class_id_index` (`class_id`),
  ADD KEY `absences_acadamic_id_index` (`acadamic_id`);

--
-- Indexes for table `academics`
--
ALTER TABLE `academics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `academics_year_unique` (`year`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_khan_id_index` (`khan_id`),
  ADD KEY `employees_sangkat_id_index` (`sangkat_id`),
  ADD KEY `Khan_id` (`khan_id`),
  ADD KEY `Sangkat_id` (`sangkat_id`);

--
-- Indexes for table `guardians`
--
ALTER TABLE `guardians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guardians_sid_index` (`student_id`),
  ADD KEY `guardians_commune_id_index` (`commune_id`),
  ADD KEY `guardians_district_id_index` (`district_id`);

--
-- Indexes for table `khans`
--
ALTER TABLE `khans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `classes_name_unique` (`name`);

--
-- Indexes for table `sangkats`
--
ALTER TABLE `sangkats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scores_sid_index` (`student_id`),
  ADD KEY `scores_class_id_index` (`class_id`),
  ADD KEY `scores_academic_id_index` (`academic_id`),
  ADD KEY `scores_subject_id_index` (`subject_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_commune_id_index` (`commune_id`),
  ADD KEY `students_district_id_index` (`district_id`),
  ADD KEY `students_class_id_index` (`class_id`),
  ADD KEY `students_academic_id_index` (`academic_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subjects_name_unique` (`name`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

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
-- AUTO_INCREMENT for table `absences`
--
ALTER TABLE `absences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `academics`
--
ALTER TABLE `academics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;
--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `guardians`
--
ALTER TABLE `guardians`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `khans`
--
ALTER TABLE `khans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;
--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sangkats`
--
ALTER TABLE `sangkats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2117;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
