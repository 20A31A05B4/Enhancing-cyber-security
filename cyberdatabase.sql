-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 04, 2023 at 06:29 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cyberdatabase`
--
CREATE DATABASE IF NOT EXISTS `cyberdatabase` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cyberdatabase`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add user', 7, 'add_user'),
(26, 'Can change user', 7, 'change_user'),
(27, 'Can delete user', 7, 'delete_user'),
(28, 'Can view user', 7, 'view_user'),
(29, 'Can add dataset', 8, 'add_dataset'),
(30, 'Can change dataset', 8, 'change_dataset'),
(31, 'Can delete dataset', 8, 'delete_dataset'),
(32, 'Can view dataset', 8, 'view_dataset');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dataset_table`
--

DROP TABLE IF EXISTS `dataset_table`;
CREATE TABLE IF NOT EXISTS `dataset_table` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `file` varchar(100) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dataset_table`
--

INSERT INTO `dataset_table` (`id`, `title`, `file`, `uploaded_at`) VALUES
(17, 'intrusion_data.csv', 'datasets/intrusion_data.csv', '2023-09-03 11:35:16.587459');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'userapp', 'user'),
(8, 'adminapp', 'dataset');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-09-01 06:45:37.570076'),
(2, 'auth', '0001_initial', '2023-09-01 06:45:38.593519'),
(3, 'admin', '0001_initial', '2023-09-01 06:45:38.859854'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-09-01 06:45:38.871653'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-09-01 06:45:38.883515'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-09-01 06:45:39.039960'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-09-01 06:45:39.100872'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-09-01 06:45:39.164858'),
(9, 'auth', '0004_alter_user_username_opts', '2023-09-01 06:45:39.174426'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-09-01 06:45:39.236680'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-09-01 06:45:39.239666'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-09-01 06:45:39.251594'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-09-01 06:45:39.310036'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-09-01 06:45:39.366383'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-09-01 06:45:39.421536'),
(16, 'auth', '0011_update_proxy_permissions', '2023-09-01 06:45:39.431472'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-09-01 06:45:39.487877'),
(18, 'sessions', '0001_initial', '2023-09-01 06:45:39.560078'),
(19, 'userapp', '0001_initial', '2023-09-01 06:45:39.573261'),
(20, 'adminapp', '0001_initial', '2023-09-01 11:54:46.414408');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('meqdde4e72b734e3g0gtp88vcdb2hovr', 'eyJ1c2VyX2lkIjoyfQ:1qc16L:ZhlWYaH6jjQlqmEzX2A47o-N4tubDfiq6g8bnxO8Uu0', '2023-09-15 10:10:05.183727'),
('jmjweq3xuj3kfe9tdiyfbqzatpbv5rxp', 'eyJ1c2VyX2lkIjoyM30:1qcT9P:mxMD3aHXOS_lkkKRsajN_bNlnzUdKVIp0zNvuxhMah8', '2023-09-16 16:07:07.949224'),
('110ojk7rhq7yvwkdbgcvda583n7qyb3b', 'eyJ1c2VyX2lkIjoyfQ:1qc1Cm:7Fq6zS8v5leRuy1EM3cuLkzF147rxyFRiBPIRmiB0k0', '2023-09-15 10:16:44.905213'),
('rwhq67q2frchw6of9kubr4p472elygoi', '.eJxlzD0LwjAUheH_cudQbszndSzFLuJQ3CWkIWQwgTQOIv5342bxnZ9zXjBfxpvz_lGdf8IRB0IUig4klLLIrWQwBZ-2VPK1hrCnPU1aGK4l7zFYXF7L_VRq2NoftWQNoZIGhWFwLjFtLfklxK6___uBkVpo4hytkaQ0g7m6NYXcxlL6Lscfzgd8fwD-Fz4I:1qcnWv:qm_fHFm82F4z1vtzPFTqj5HQym9HlrhyJTgyZgqMGTw', '2023-09-17 13:52:45.772185'),
('scdni5jeiis7fevy12gksvnen8ndvlun', '.eJxVjLEKwyAUAP_lzRKeUZ--jKW0S-kQugcxEhwaQZOhlP577dbcese9Ya-xTGmGQfcCrvfT5EPYiw8vGLBjRGW4Z2WMQ-m0gHMMqaa8PkqMx7RBTMpK0rIhYPTrnJ-XXGLd_lLZoYBbXlLdUhjj0vRveJxZTYpYSnRWs6HPF-DzM3c:1qd4Cc:99z2xM0KfrYhMfR5xNzknl7ke0H_fyty5r2R__51X8g', '2023-09-18 07:40:54.271114'),
('i83r0kvdu5el93jqi6tipj7hjp5efb8i', '.eJxljsEKwjAQRP9lz0E2TbbJ9iiiF_FQvJeQhhLQBpL2IOK_G2-WzlxnHu8Np-BjiWm-5xAG5_2anX9Bhweu0ayYGqNI2lbAWkIe4ghdI-ByO27XiIq4YUVkUVotoHfzmJ7nlENZdmDL1jCSNqiMgGuaYlmi78NU1z-b7cHoVrUsJVqjmaqJe9AOiX_9fAGnTz-X:1qdA5l:NfE9nE5Upu4GnqVhsXPnBYinSo5VYY2SKmX_pPxgJVM', '2023-09-18 13:58:13.036763'),
('smwep27z7aaffcozs9nsfrqyas2941at', '.eJxljbEKAjEQRP8ldZCNyWZ3LeXQRiwOewkxHAG9wOUsRPx3Y-fpTPvmzVPtj9tziPE-hfhQG1gJgEVZi0VkMOy0OpQh1znHPg1TqjWXcTkg560XY4DJCXqtuhTzBztNKS3RFhJCNiAOqLnDFX8JNl_Vqg_jpdx2pV3PfzIWJgF0BJZeb2NZO84:1qdD3K:0NLxebp2lpZw6UbUWS9dVUGd0EeaZRwIgOeBQK2DmwY', '2023-09-18 17:07:54.011155'),
('zyc3iyolbc2n9nlx0m4nf3bzwi6vnkmh', '.eJxdjcEKwjAQRP9lz6HsNtl041GKXsRD8S4hhhLQBpJ6EPHfrbfWmeM83rzheN5ffQjP4sMLdtg4RM2udZpZkMQo6GNINeXpUmLcokvYMdmWRMiIgsFPt_w45BLrvEKpQQWnPKY6pzDEcZl_wq2sM1ZbR4TSGcdWgb_z_53Qqp8vUf04lQ:1qdEJ6:q3KX86FJOV8RcQb0Q442vv6FdYKA2MoN3G7kmG5gdqU', '2023-09-18 18:28:16.728498');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
CREATE TABLE IF NOT EXISTS `user_details` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_phone` varchar(50) NOT NULL,
  `user_location` varchar(50) NOT NULL,
  `user_profile` varchar(100) NOT NULL,
  `status` varchar(15) NOT NULL,
  `otp` varchar(6) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `user_name`, `user_email`, `user_password`, `user_phone`, `user_location`, `user_profile`, `status`, `otp`) VALUES
(2, 'upender', 'upenderbala25@gmail.com', '1111', '987977867787', '', 'images/user/person_4.jpg', 'Accepted', '0'),
(46, 'uppi', 'uppi@gmail.com', '123456789', '9666473716', 'hayathnagar', 'images/user/gal_6.jpg', 'Accepted', '8252'),
(45, 'sai', 'sai@gmail.com', '099877656486', '9898989898', 'hayathnagar', 'images/user/person_1.jpg', 'Verified', '4419');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
