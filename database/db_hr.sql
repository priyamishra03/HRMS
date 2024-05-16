-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2023 at 09:44 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hr`
--
CREATE DATABASE IF NOT EXISTS `db_hr` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_hr`;

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

DROP TABLE IF EXISTS `activity_logs`;
CREATE TABLE `activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `date_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `name`, `email`, `description`, `date_time`, `created_at`, `updated_at`) VALUES
(1, 'akashm381@gmail.com', 'akashm381@gmail.com', 'has log in', 'Tue, Dec 19, 2023 4:49 PM', NULL, NULL),
(2, 'Akash Mishra', 'akashm381@gmail.com', 'has logged out', 'Tue, Dec 19, 2023 6:50 PM', NULL, NULL),
(3, 'normaluser@gmail.com', 'normaluser@gmail.com', 'has log in', 'Tue, Dec 19, 2023 6:58 PM', NULL, NULL),
(4, 'normaluser', 'normaluser@gmail.com', 'has logged out', 'Tue, Dec 19, 2023 6:58 PM', NULL, NULL),
(5, 'Employee2@gmail.com', 'Employee2@gmail.com', 'has log in', 'Tue, Dec 19, 2023 6:58 PM', NULL, NULL),
(6, 'Employee2', 'Employee2@gmail.com', 'has logged out', 'Tue, Dec 19, 2023 6:59 PM', NULL, NULL),
(7, 'akashm381@gmail.com', 'akashm381@gmail.com', 'has log in', 'Tue, Dec 19, 2023 6:59 PM', NULL, NULL),
(8, 'Akash Mishra', 'akashm381@gmail.com', 'has logged out', 'Tue, Dec 19, 2023 7:03 PM', NULL, NULL),
(9, 'Employee2@gmail.com', 'Employee2@gmail.com', 'has log in', 'Tue, Dec 19, 2023 7:03 PM', NULL, NULL),
(10, 'Employee2', 'Employee2@gmail.com', 'has logged out', 'Tue, Dec 19, 2023 7:05 PM', NULL, NULL),
(11, 'akashm381@gmail.com', 'akashm381@gmail.com', 'has log in', 'Tue, Dec 19, 2023 7:05 PM', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department`, `created_at`, `updated_at`) VALUES
(1, 'Web Department', NULL, NULL),
(2, 'IT Management', NULL, NULL),
(3, 'Marketing', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `birth_date` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `employee_id` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `birth_date`, `gender`, `employee_id`, `company`, `created_at`, `updated_at`) VALUES
(1, 'Akash Mishra', 'akashm381@gmail.com', '20-12-2000', 'male', 'KHM_0000000001', 'Akash Mishra', '2023-12-19 12:06:54', '2023-12-19 12:06:54'),
(2, 'Employee', 'employee@gmail.com', '13-12-2000', 'Male', 'KHM_0000000002', 'StarGame Kh', '2023-12-19 13:29:47', '2023-12-19 13:29:47'),
(3, 'Employee1', 'Employee1@gmail.com', '13-12-2000', 'male', 'KHM_0000000004', 'Employee1', '2023-12-19 13:30:27', '2023-12-19 13:30:27'),
(4, 'Employee2', 'Employee2@gmail.com', '06-12-2000', 'male', 'KHM_0000000007', 'Employee2', '2023-12-19 13:30:52', '2023-12-19 13:30:52');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
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
-- Table structure for table `holidays`
--

DROP TABLE IF EXISTS `holidays`;
CREATE TABLE `holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_holiday` varchar(255) DEFAULT NULL,
  `date_holiday` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leaves_admins`
--

DROP TABLE IF EXISTS `leaves_admins`;
CREATE TABLE `leaves_admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rec_id` varchar(255) DEFAULT NULL,
  `leave_type` varchar(255) DEFAULT NULL,
  `from_date` varchar(255) DEFAULT NULL,
  `to_date` varchar(255) DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `leave_reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leaves_admins`
--

INSERT INTO `leaves_admins` (`id`, `rec_id`, `leave_type`, `from_date`, `to_date`, `day`, `leave_reason`, `created_at`, `updated_at`) VALUES
(1, 'KHM_0000000001', 'Loss of Pay', '19-12-2023', '20-12-2023', '1', 'rhdhdhdjdjdjdj', '2023-12-19 12:29:03', '2023-12-19 12:29:03'),
(2, 'KHM_0000000007', 'Medical Leave', '06-12-2023', '23-12-2023', '17', 'gsgssgvv', '2023-12-19 13:35:15', '2023-12-19 13:35:15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_04_25_224042_create_user_activity_logs_table', 1),
(5, '2021_04_30_224320_create_activity_logs_table', 1),
(6, '2021_05_03_061844_create_user_types_table', 1),
(7, '2021_05_03_061918_create_role_type_users_table', 1),
(8, '2021_06_04_053627_create_sequence_tbls_table', 1),
(9, '2021_06_04_053741_create_generate_id_tbls_table', 1),
(10, '2021_07_03_161410_create_position_types_table', 1),
(11, '2021_07_03_171244_create_departments_table', 1),
(12, '2021_07_14_054840_create_employees_table', 1),
(13, '2021_07_16_143215_create_module_permissions_table', 1),
(14, '2021_07_27_053429_create_holidays_table', 1),
(15, '2021_08_01_052433_create_permission_lists_table', 1),
(16, '2021_08_08_054847_create_roles_permissions_table', 1),
(17, '2021_08_13_054414_create_profile_information_table', 1),
(18, '2021_08_23_053914_create_leaves_admins_table', 1),
(19, '2021_09_21_054658_create_staff_salaries_table', 1),
(20, '2021_11_06_201850_create_performance_indicator_lists_table', 1),
(21, '2021_11_09_070649_create_performance_indicators_table', 1),
(22, '2021_11_18_055032_create_performance_appraisals_table', 1),
(23, '2021_12_04_055348_create_trainings_table', 1),
(24, '2022_01_07_060821_create_trainers_table', 1),
(25, '2022_02_02_060242_create_training_types_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `module_permissions`
--

DROP TABLE IF EXISTS `module_permissions`;
CREATE TABLE `module_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` varchar(255) DEFAULT NULL,
  `module_permission` varchar(255) DEFAULT NULL,
  `id_count` varchar(255) DEFAULT NULL,
  `read` varchar(255) DEFAULT NULL,
  `write` varchar(255) DEFAULT NULL,
  `create` varchar(255) DEFAULT NULL,
  `delete` varchar(255) DEFAULT NULL,
  `import` varchar(255) DEFAULT NULL,
  `export` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `module_permissions`
--

INSERT INTO `module_permissions` (`id`, `employee_id`, `module_permission`, `id_count`, `read`, `write`, `create`, `delete`, `import`, `export`, `created_at`, `updated_at`) VALUES
(1, 'KHM_0000000001', 'Holidays', '1', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', NULL, NULL),
(2, 'KHM_0000000001', 'Leaves', '2', 'Y', 'Y', 'Y', 'N', 'N', 'N', NULL, NULL),
(3, 'KHM_0000000001', 'Clients', '3', 'Y', 'Y', 'Y', 'N', 'N', 'N', NULL, NULL),
(4, 'KHM_0000000001', 'Projects', '4', 'Y', 'N', 'Y', 'N', 'N', 'N', NULL, NULL),
(5, 'KHM_0000000001', 'Tasks', '5', 'Y', 'Y', 'Y', 'Y', 'N', 'N', NULL, NULL),
(6, 'KHM_0000000001', 'Chats', '6', 'Y', 'Y', 'Y', 'Y', 'N', 'N', NULL, NULL),
(7, 'KHM_0000000001', 'Assets', '7', 'Y', 'Y', 'Y', 'Y', 'N', 'N', NULL, NULL),
(8, 'KHM_0000000001', 'Timing Sheets', '8', 'Y', 'Y', 'Y', 'Y', 'N', 'N', NULL, NULL),
(9, 'KHM_0000000002', 'Holidays', '1', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', NULL, NULL),
(10, 'KHM_0000000002', 'Leaves', '2', 'Y', 'Y', 'Y', 'N', 'N', 'N', NULL, NULL),
(11, 'KHM_0000000002', 'Clients', '3', 'Y', 'Y', 'Y', 'N', 'N', 'N', NULL, NULL),
(12, 'KHM_0000000002', 'Projects', '4', 'Y', 'N', 'Y', 'N', 'N', 'N', NULL, NULL),
(13, 'KHM_0000000002', 'Tasks', '5', 'Y', 'Y', 'Y', 'Y', 'N', 'N', NULL, NULL),
(14, 'KHM_0000000002', 'Chats', '6', 'Y', 'Y', 'Y', 'Y', 'N', 'N', NULL, NULL),
(15, 'KHM_0000000002', 'Assets', '7', 'Y', 'Y', 'Y', 'Y', 'N', 'N', NULL, NULL),
(16, 'KHM_0000000002', 'Timing Sheets', '8', 'Y', 'Y', 'Y', 'Y', 'N', 'N', NULL, NULL),
(17, 'KHM_0000000004', 'Holidays', '1', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', NULL, NULL),
(18, 'KHM_0000000004', 'Leaves', '2', 'Y', 'Y', 'Y', 'N', 'N', 'N', NULL, NULL),
(19, 'KHM_0000000004', 'Clients', '3', 'Y', 'Y', 'Y', 'N', 'N', 'N', NULL, NULL),
(20, 'KHM_0000000004', 'Projects', '4', 'Y', 'N', 'Y', 'N', 'N', 'N', NULL, NULL),
(21, 'KHM_0000000004', 'Tasks', '5', 'Y', 'Y', 'Y', 'Y', 'N', 'N', NULL, NULL),
(22, 'KHM_0000000004', 'Chats', '6', 'Y', 'Y', 'Y', 'Y', 'N', 'N', NULL, NULL),
(23, 'KHM_0000000004', 'Assets', '7', 'Y', 'Y', 'Y', 'Y', 'N', 'N', NULL, NULL),
(24, 'KHM_0000000004', 'Timing Sheets', '8', 'Y', 'Y', 'Y', 'Y', 'N', 'N', NULL, NULL),
(25, 'KHM_0000000007', 'Holidays', '1', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', NULL, NULL),
(26, 'KHM_0000000007', 'Leaves', '2', 'Y', 'Y', 'Y', 'N', 'N', 'N', NULL, NULL),
(27, 'KHM_0000000007', 'Clients', '3', 'Y', 'Y', 'Y', 'N', 'N', 'N', NULL, NULL),
(28, 'KHM_0000000007', 'Projects', '4', 'Y', 'N', 'Y', 'N', 'N', 'N', NULL, NULL),
(29, 'KHM_0000000007', 'Tasks', '5', 'Y', 'Y', 'Y', 'Y', 'N', 'N', NULL, NULL),
(30, 'KHM_0000000007', 'Chats', '6', 'Y', 'Y', 'Y', 'Y', 'N', 'N', NULL, NULL),
(31, 'KHM_0000000007', 'Assets', '7', 'Y', 'Y', 'Y', 'Y', 'N', 'N', NULL, NULL),
(32, 'KHM_0000000007', 'Timing Sheets', '8', 'Y', 'Y', 'Y', 'Y', 'N', 'N', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `performance_appraisals`
--

DROP TABLE IF EXISTS `performance_appraisals`;
CREATE TABLE `performance_appraisals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `rec_id` varchar(255) DEFAULT NULL,
  `customer_experience` varchar(255) DEFAULT NULL,
  `marketing` varchar(255) DEFAULT NULL,
  `management` varchar(255) DEFAULT NULL,
  `administration` varchar(255) DEFAULT NULL,
  `presentation_skill` varchar(255) DEFAULT NULL,
  `quality_of_Work` varchar(255) DEFAULT NULL,
  `efficiency` varchar(255) DEFAULT NULL,
  `integrity` varchar(255) DEFAULT NULL,
  `professionalism` varchar(255) DEFAULT NULL,
  `team_work` varchar(255) DEFAULT NULL,
  `critical_thinking` varchar(255) DEFAULT NULL,
  `conflict_management` varchar(255) DEFAULT NULL,
  `attendance` varchar(255) DEFAULT NULL,
  `ability_to_meet_deadline` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `performance_indicators`
--

DROP TABLE IF EXISTS `performance_indicators`;
CREATE TABLE `performance_indicators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rec_id` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `customer_eperience` varchar(255) DEFAULT NULL,
  `marketing` varchar(255) DEFAULT NULL,
  `management` varchar(255) DEFAULT NULL,
  `administration` varchar(255) DEFAULT NULL,
  `presentation_skill` varchar(255) DEFAULT NULL,
  `quality_of_Work` varchar(255) DEFAULT NULL,
  `efficiency` varchar(255) DEFAULT NULL,
  `integrity` varchar(255) DEFAULT NULL,
  `professionalism` varchar(255) DEFAULT NULL,
  `team_work` varchar(255) DEFAULT NULL,
  `critical_thinking` varchar(255) DEFAULT NULL,
  `conflict_management` varchar(255) DEFAULT NULL,
  `attendance` varchar(255) DEFAULT NULL,
  `ability_to_meet_deadline` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `performance_indicator_lists`
--

DROP TABLE IF EXISTS `performance_indicator_lists`;
CREATE TABLE `performance_indicator_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `per_name_list` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `performance_indicator_lists`
--

INSERT INTO `performance_indicator_lists` (`id`, `per_name_list`, `created_at`, `updated_at`) VALUES
(1, 'None', NULL, NULL),
(2, 'Beginner', NULL, NULL),
(3, 'Intermediate', NULL, NULL),
(4, 'Advanced', NULL, NULL),
(5, 'Expert / Leader', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_lists`
--

DROP TABLE IF EXISTS `permission_lists`;
CREATE TABLE `permission_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_name` varchar(255) DEFAULT NULL,
  `read` varchar(255) DEFAULT NULL,
  `write` varchar(255) DEFAULT NULL,
  `create` varchar(255) DEFAULT NULL,
  `delete` varchar(255) DEFAULT NULL,
  `import` varchar(255) DEFAULT NULL,
  `export` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_lists`
--

INSERT INTO `permission_lists` (`id`, `permission_name`, `read`, `write`, `create`, `delete`, `import`, `export`) VALUES
(1, 'Holidays', 'Y', 'Y', 'Y', 'Y', 'Y', 'N'),
(2, 'Leaves', 'Y', 'Y', 'Y', 'N', 'N', 'N'),
(3, 'Clients', 'Y', 'Y', 'Y', 'N', 'N', 'N'),
(4, 'Projects', 'Y', 'N', 'Y', 'N', 'N', 'N'),
(5, 'Tasks', 'Y', 'Y', 'Y', 'Y', 'N', 'N'),
(6, 'Chats', 'Y', 'Y', 'Y', 'Y', 'N', 'N'),
(7, 'Assets', 'Y', 'Y', 'Y', 'Y', 'N', 'N'),
(8, 'Timing Sheets', 'Y', 'Y', 'Y', 'Y', 'N', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `position_types`
--

DROP TABLE IF EXISTS `position_types`;
CREATE TABLE `position_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `position_types`
--

INSERT INTO `position_types` (`id`, `position`, `created_at`, `updated_at`) VALUES
(1, 'CEO', NULL, NULL),
(2, 'CFO', NULL, NULL),
(3, 'Manager', NULL, NULL),
(4, 'Web Designer', NULL, NULL),
(5, 'Web Developer', NULL, NULL),
(6, 'Android Developer', NULL, NULL),
(7, 'IOS Developer', NULL, NULL),
(8, 'Team Leader', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profile_information`
--

DROP TABLE IF EXISTS `profile_information`;
CREATE TABLE `profile_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rec_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `birth_date` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pin_code` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `reports_to` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile_information`
--

INSERT INTO `profile_information` (`id`, `name`, `rec_id`, `email`, `birth_date`, `gender`, `address`, `state`, `country`, `pin_code`, `phone_number`, `department`, `designation`, `reports_to`, `created_at`, `updated_at`) VALUES
(1, 'Akash Mishra', 'KHM_0000000001', 'akashm381@gmail.com', '14-08-2000', 'Male', 'Not Disclosed', 'UP', 'India', '220000', '+91 1234567890', 'IT Management', 'Web Developer', 'Akash Mishra', '2023-12-19 11:37:36', '2023-12-19 11:37:36');

-- --------------------------------------------------------

--
-- Table structure for table `roles_permissions`
--

DROP TABLE IF EXISTS `roles_permissions`;
CREATE TABLE `roles_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permissions_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles_permissions`
--

INSERT INTO `roles_permissions` (`id`, `permissions_name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', NULL, NULL),
(2, 'CEO', NULL, NULL),
(3, 'Manager', NULL, NULL),
(4, 'Team Leader', NULL, NULL),
(5, 'Accountant', NULL, NULL),
(6, 'Web Developer', NULL, NULL),
(7, 'Web Designer', NULL, NULL),
(8, 'HR', NULL, NULL),
(9, 'UI/UX Developer', NULL, NULL),
(10, 'SEO Analyst', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_type_users`
--

DROP TABLE IF EXISTS `role_type_users`;
CREATE TABLE `role_type_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_type_users`
--

INSERT INTO `role_type_users` (`id`, `role_type`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Super Admin', NULL, NULL),
(3, 'Normal User', NULL, NULL),
(4, 'Client', NULL, NULL),
(5, 'Employee', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sequence_tbls`
--

DROP TABLE IF EXISTS `sequence_tbls`;
CREATE TABLE `sequence_tbls` (
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sequence_tbls`
--

INSERT INTO `sequence_tbls` (`id`) VALUES
(1),
(2),
(4),
(7),
(8),
(9),
(11);

-- --------------------------------------------------------

--
-- Table structure for table `staff_salaries`
--

DROP TABLE IF EXISTS `staff_salaries`;
CREATE TABLE `staff_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rec_id` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `basic` varchar(255) DEFAULT NULL,
  `da` varchar(255) DEFAULT NULL,
  `hra` varchar(255) DEFAULT NULL,
  `conveyance` varchar(255) DEFAULT NULL,
  `allowance` varchar(255) DEFAULT NULL,
  `medical_allowance` varchar(255) DEFAULT NULL,
  `tds` varchar(255) DEFAULT NULL,
  `esi` varchar(255) DEFAULT NULL,
  `pf` varchar(255) DEFAULT NULL,
  `leave` varchar(255) DEFAULT NULL,
  `prof_tax` varchar(255) DEFAULT NULL,
  `labour_welfare` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_salaries`
--

INSERT INTO `staff_salaries` (`id`, `name`, `rec_id`, `salary`, `basic`, `da`, `hra`, `conveyance`, `allowance`, `medical_allowance`, `tds`, `esi`, `pf`, `leave`, `prof_tax`, `labour_welfare`, `created_at`, `updated_at`) VALUES
(1, 'Employee', 'KHM_0000000002', '20000', '15000', '22', '22', '22', '22', '22', '1000', '22', '22', '2222', '22', '22', '2023-12-19 13:32:46', '2023-12-19 13:32:46');

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

DROP TABLE IF EXISTS `trainers`;
CREATE TABLE `trainers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `trainer_id` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

DROP TABLE IF EXISTS `trainings`;
CREATE TABLE `trainings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trainer_id` varchar(255) DEFAULT NULL,
  `employees_id` varchar(255) DEFAULT NULL,
  `training_type` varchar(255) DEFAULT NULL,
  `trainer` varchar(255) DEFAULT NULL,
  `employees` varchar(255) DEFAULT NULL,
  `training_cost` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `training_types`
--

DROP TABLE IF EXISTS `training_types`;
CREATE TABLE `training_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `rec_id` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `join_date` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `rec_id`, `email`, `join_date`, `phone_number`, `status`, `role_name`, `avatar`, `position`, `department`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Akash Mishra', 'KHM_0000000001', 'akashm381@gmail.com', 'Tue, Dec 19, 2023 4:49 PM', NULL, NULL, 'Super Admin', 'photo_defaults.jpg', NULL, NULL, NULL, '$2y$10$6gDHiLJb/hLQapHBZPUGz./YDXrH6Q1/KSMIh3WAfgJHO5FDD1lrK', NULL, '2023-12-19 11:19:40', '2023-12-19 11:19:40'),
(2, 'Employee', 'KHM_0000000002', 'employee@gmail.com', 'Tue, Dec 19, 2023 6:51 PM', NULL, NULL, 'Employee', 'photo_defaults.jpg', NULL, NULL, NULL, '$2y$10$e4L88WAbzweMy4U57CtLWeptrQ2n1lNTBnKTLSgZ4/lBxX97Aueu6', NULL, '2023-12-19 13:21:13', '2023-12-19 13:21:13'),
(4, 'Employee1', 'KHM_0000000004', 'Employee1@gmail.com', 'Tue, Dec 19, 2023 6:52 PM', NULL, NULL, 'Employee', 'photo_defaults.jpg', NULL, NULL, NULL, '$2y$10$/LLLiLhYie8J8q0kvZC0IebO0TdttmVBQsjdY9k4QEWCijp9j8IZS', NULL, '2023-12-19 13:22:09', '2023-12-19 13:22:09'),
(7, 'Employee2', 'KHM_0000000007', 'Employee2@gmail.com', 'Tue, Dec 19, 2023 6:53 PM', NULL, NULL, 'Employee', 'photo_defaults.jpg', NULL, NULL, NULL, '$2y$10$9KJesZ39jWnip7x1qABY.uBLpgTCflq04nHwhnnb1xDY.1dwYVeFy', NULL, '2023-12-19 13:23:25', '2023-12-19 13:23:25'),
(8, 'Admin', 'KHM_0000000008', 'admin@gmail.com', 'Tue, Dec 19, 2023 6:54 PM', NULL, NULL, 'Admin', 'photo_defaults.jpg', NULL, NULL, NULL, '$2y$10$RPjMa278fNiuL3X1YMHwU.JY2/zbyt0LBt4dO2G2gUn88EBnMIdDW', NULL, '2023-12-19 13:24:19', '2023-12-19 13:24:19'),
(9, 'client', 'KHM_0000000009', 'client@gmail.com', 'Tue, Dec 19, 2023 6:57 PM', NULL, NULL, 'Client', 'photo_defaults.jpg', NULL, NULL, NULL, '$2y$10$zU5yMHjjmFIbwqnwUJ6Awu2NET/0Sq7r4XOOwdv..tT6ErSxhcY1a', NULL, '2023-12-19 13:27:01', '2023-12-19 13:27:01'),
(11, 'normaluser', 'KHM_0000000011', 'normaluser@gmail.com', 'Tue, Dec 19, 2023 6:58 PM', NULL, NULL, 'Normal User', 'photo_defaults.jpg', NULL, NULL, NULL, '$2y$10$bJhVIvteKB49zecKTk5pEOPXC7J5J3ZNM015GyKfovND.h2OSne/S', NULL, '2023-12-19 13:28:09', '2023-12-19 13:28:09');

--
-- Triggers `users`
--
DROP TRIGGER IF EXISTS `id_store`;
DELIMITER $$
CREATE TRIGGER `id_store` BEFORE INSERT ON `users` FOR EACH ROW BEGIN
                INSERT INTO sequence_tbls VALUES (NULL);
                SET NEW.rec_id = CONCAT("KHM_", LPAD(LAST_INSERT_ID(), 10, "0"));
            END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user_activity_logs`
--

DROP TABLE IF EXISTS `user_activity_logs`;
CREATE TABLE `user_activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `modify_user` varchar(255) DEFAULT NULL,
  `date_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

DROP TABLE IF EXISTS `user_types`;
CREATE TABLE `user_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `type_name`, `created_at`, `updated_at`) VALUES
(1, 'Active', NULL, NULL),
(2, 'Inactive', NULL, NULL),
(3, 'Disable', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves_admins`
--
ALTER TABLE `leaves_admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_permissions`
--
ALTER TABLE `module_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `performance_appraisals`
--
ALTER TABLE `performance_appraisals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `performance_indicators`
--
ALTER TABLE `performance_indicators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `performance_indicator_lists`
--
ALTER TABLE `performance_indicator_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_lists`
--
ALTER TABLE `permission_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position_types`
--
ALTER TABLE `position_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_information`
--
ALTER TABLE `profile_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_type_users`
--
ALTER TABLE `role_type_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequence_tbls`
--
ALTER TABLE `sequence_tbls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_salaries`
--
ALTER TABLE `staff_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_types`
--
ALTER TABLE `training_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_join_date_unique` (`join_date`);

--
-- Indexes for table `user_activity_logs`
--
ALTER TABLE `user_activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leaves_admins`
--
ALTER TABLE `leaves_admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `module_permissions`
--
ALTER TABLE `module_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `performance_appraisals`
--
ALTER TABLE `performance_appraisals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `performance_indicators`
--
ALTER TABLE `performance_indicators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `performance_indicator_lists`
--
ALTER TABLE `performance_indicator_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permission_lists`
--
ALTER TABLE `permission_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `position_types`
--
ALTER TABLE `position_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `profile_information`
--
ALTER TABLE `profile_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `role_type_users`
--
ALTER TABLE `role_type_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sequence_tbls`
--
ALTER TABLE `sequence_tbls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `staff_salaries`
--
ALTER TABLE `staff_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `training_types`
--
ALTER TABLE `training_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_activity_logs`
--
ALTER TABLE `user_activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
