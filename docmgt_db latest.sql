-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2025 at 06:28 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `docmgt_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `actions`
--

CREATE TABLE `actions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `pageId` char(36) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `modifiedBy` varchar(255) NOT NULL,
  `deletedBy` varchar(255) DEFAULT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `actions`
--

INSERT INTO `actions` (`id`, `name`, `order`, `pageId`, `code`, `createdBy`, `modifiedBy`, `deletedBy`, `isDeleted`, `createdDate`, `modifiedDate`, `deleted_at`) VALUES
('07ad64e9-9a43-40d0-a205-2adb81e238b1', 'Storage Settings', 2, '8fbb83d6-9fde-4970-ac80-8e235cab1ff2', 'SETTINGS_STORAGE_SETTINGS', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('0a2e19fc-d9f2-446c-8ca3-e6b8b73b5f9b', 'Edit User', 3, '324bdc51-d71f-4f80-9f28-a30e8aae4009', 'USER_EDIT_USER', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('18a5a8f6-7cb6-4178-857d-b6a981ea3d4f', 'Delete Role', 4, '090ea443-01c7-4638-a194-ad3416a5ea7a', 'ROLE_DELETE_ROLE', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('18d07817-4b47-4c84-b21f-abe05da5e1ba', 'Archive Document', 4, 'fc97dc8f-b4da-46b1-a179-ab206d8b7efd', 'ASSIGNED_DOCUMENTS_ARCHIVE_DOCUMENT', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('1c7d3e31-08ad-43cf-9cf7-4ffafdda9029', 'View Document Audit Trail', 1, '2396f81c-f8b5-49ac-88d1-94ed57333f49', 'DOCUMENT_AUDIT_TRAIL_VIEW_DOCUMENT_AUDIT_TRAIL', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('229ad778-c7d3-4f5f-ab52-24b537c39514', 'Delete Document', 4, 'eddf9e8e-0c70-4cde-b5f9-117a879747d6', 'ALL_DOCUMENTS_DELETE_DOCUMENT', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('239035d5-cd44-475f-bbc5-9ef51768d389', 'Create Document', 2, 'eddf9e8e-0c70-4cde-b5f9-117a879747d6', 'ALL_DOCUMENTS_CREATE_DOCUMENT', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('260d1089-46c7-4f53-83e6-f80b9b3fb823', 'Archive Document', 4, 'eddf9e8e-0c70-4cde-b5f9-117a879747d6', 'ALL_DOCUMENTS_ARCHIVE_DOCUMENT', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('2ea6ba08-eb36-4e34-92d9-f1984c908b31', 'Share Document', 6, 'eddf9e8e-0c70-4cde-b5f9-117a879747d6', 'ALL_DOCUMENTS_SHARE_DOCUMENT', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('31cb6438-7d4a-4385-8a34-b4e8f6096a48', 'View Users', 1, '324bdc51-d71f-4f80-9f28-a30e8aae4009', 'USER_VIEW_USERS', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('374d74aa-a580-4928-848d-f7553db39914', 'Delete User', 4, '324bdc51-d71f-4f80-9f28-a30e8aae4009', 'USER_DELETE_USER', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('391c1739-1045-4dd4-9705-4a960479f0a0', 'Upload New Version', 4, 'fc97dc8f-b4da-46b1-a179-ab206d8b7efd', 'ASSIGNED_DOCUMENTS_UPLOAD_NEW_VERSION', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('3ccaf408-8864-4815-a3e0-50632d90bcb6', 'Edit Reminder', 3, '97ff6eb0-39b3-4ddd-acf1-43205d5a9bb3', 'REMINDER_EDIT_REMINDER', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('3da78b4d-d263-4b13-8e81-7aa164a3688c', 'Add Reminder', 5, 'eddf9e8e-0c70-4cde-b5f9-117a879747d6', 'ALL_DOCUMENTS_ADD_REMINDER', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('4071ed2e-56fb-4c5a-887d-8a175cac8d71', 'Restore Document', 4, '05edb281-cddb-4281-9ab3-fb90d1833c82', 'ARCHIVE_DOCUMENT_RESTORE_DOCUMENT', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('41f65d07-9023-4cfb-9c7c-0e3247a012e0', 'Manage SMTP Settings', 1, '2e3c07a4-fcac-4303-ae47-0d0f796403c9', 'EMAIL_MANAGE_SMTP_SETTINGS', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('57216dcd-1a1c-4f94-a33d-83a5af2d7a46', 'View Roles', 1, '090ea443-01c7-4638-a194-ad3416a5ea7a', 'ROLE_VIEW_ROLES', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('595a769d-f7ef-45f3-9f9e-60c58c5e1542', 'Send Email', 8, 'eddf9e8e-0c70-4cde-b5f9-117a879747d6', 'ALL_DOCUMENTS_SEND_EMAIL', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('5ea48d56-2ed3-4239-bb90-dd4d70a1b0b2', 'Delete Reminder', 4, '97ff6eb0-39b3-4ddd-acf1-43205d5a9bb3', 'REMINDER_DELETE_REMINDER', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('63ed1277-1db5-4cf7-8404-3e3426cb4bc5', 'View Documents', 1, 'eddf9e8e-0c70-4cde-b5f9-117a879747d6', 'ALL_DOCUMENTS_VIEW_DOCUMENTS', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('6719a065-8a4a-4350-8582-bfc41ce283fb', 'Download Document', 7, 'eddf9e8e-0c70-4cde-b5f9-117a879747d6', 'ALL_DOCUMENTS_DOWNLOAD_DOCUMENT', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('6bc0458e-22f5-4975-b387-4d6a4fb35201', 'Create Reminder', 2, '97ff6eb0-39b3-4ddd-acf1-43205d5a9bb3', 'REMINDER_CREATE_REMINDER', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('6f2717fc-edef-4537-916d-2d527251a5c1', 'View Reminders', 1, '97ff6eb0-39b3-4ddd-acf1-43205d5a9bb3', 'REMINDER_VIEW_REMINDERS', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('72ca5c91-b415-4997-a234-b4d71ba03253', 'Manage Languages', 1, '8fbb83d6-9fde-4970-ac80-8e235cab1ff2', 'SETTING_MANAGE_LANGUAGE', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('7ba630ca-a9d3-42ee-99c8-766e2231fec1', 'View Dashboard', 1, '42e44f15-8e33-423a-ad7f-17edc23d6dd3', 'DASHBOARD_VIEW_DASHBOARD', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('86ce1382-a2b1-48ed-ae81-c9908d00cf3b', 'Create User', 2, '324bdc51-d71f-4f80-9f28-a30e8aae4009', 'USER_CREATE_USER', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('92596605-e49a-4ab6-8a39-60116eba8abe', 'Delete Document', 6, 'fc97dc8f-b4da-46b1-a179-ab206d8b7efd', 'ASSIGNED_DOCUMENTS_DELETE_DOCUMENT', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('a57b1ad5-8fbc-429b-b776-fbb468e5c6a4', 'Manage Company Profile', 2, '8fbb83d6-9fde-4970-ac80-8e235cab1ff2', 'SETTING_MANAGE_PROFILE', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('a737284a-e43b-481d-9fdd-07e1680ffe11', 'Edit Document', 2, 'fc97dc8f-b4da-46b1-a179-ab206d8b7efd', 'ASSIGNED_DOCUMENTS_EDIT_DOCUMENT', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('a8dd972d-e758-4571-8d39-c6fec74b361b', 'Edit Document', 3, 'eddf9e8e-0c70-4cde-b5f9-117a879747d6', 'ALL_DOCUMENTS_EDIT_DOCUMENT', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('ac6d6fbc-6348-4149-9c0c-154ab79d1166', 'Share Document', 3, 'fc97dc8f-b4da-46b1-a179-ab206d8b7efd', 'ASSIGNED_DOCUMENTS_SHARE_DOCUMENT', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('c04a1094-f289-4de7-b788-9f21ee3fe32a', 'Send Email', 5, 'fc97dc8f-b4da-46b1-a179-ab206d8b7efd', 'ASSIGNED_DOCUMENTS_SEND_EMAIL', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('c288b5d3-419d-4dc0-9e5a-083194016d2c', 'Edit Role', 3, '090ea443-01c7-4638-a194-ad3416a5ea7a', 'ROLE_EDIT_ROLE', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('cd46a3a4-ede5-4941-a49b-3df7eaa46428', 'Manage Document Category', 1, '5a5f7cf8-21a6-434a-9330-db91b17d867c', 'DOCUMENT_CATEGORY_MANAGE_DOCUMENT_CATEGORY', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('d4d724fc-fd38-49c4-85bc-73937b219e20', 'Reset Password', 5, '324bdc51-d71f-4f80-9f28-a30e8aae4009', 'USER_RESET_PASSWORD', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('d9067d75-e3b9-4d2d-8f82-567ad5f2b9ca', 'View Documents', 1, '05edb281-cddb-4281-9ab3-fb90d1833c82', 'ARCHIVE_DOCUMENT_VIEW_DOCUMENTS', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('db8825b1-ee4e-49f6-9a08-b0210ed53fd4', 'Create Role', 2, '090ea443-01c7-4638-a194-ad3416a5ea7a', 'ROLE_CREATE_ROLE', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('e506ec48-b99a-45b4-9ec9-6451bc67477b', 'Assign Permission', 7, '324bdc51-d71f-4f80-9f28-a30e8aae4009', 'USER_ASSIGN_PERMISSION', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('f4d8a768-151d-4ec9-a8e3-41216afe0ec0', 'Delete Document', 4, '05edb281-cddb-4281-9ab3-fb90d1833c82', 'ARCHIVE_DOCUMENT_DELETE_DOCUMENTS', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('fa91ffd9-61ee-4bb1-bf86-6a593cdc7be9', 'Create Document', 1, 'fc97dc8f-b4da-46b1-a179-ab206d8b7efd', 'ASSIGNED_DOCUMENTS_CREATE_DOCUMENT', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('fbe77c07-3058-4dbe-9d56-8c75dc879460', 'Assign User Role', 6, '324bdc51-d71f-4f80-9f28-a30e8aae4009', 'USER_ASSIGN_USER_ROLE', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('ff4b3b73-c29f-462a-afa4-94a40e6b2c4a', 'View Login Audit Logs', 1, 'f042bbee-d15f-40fb-b79a-8368f2c2e287', 'LOGIN_AUDIT_VIEW_LOGIN_AUDIT_LOGS', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `parentId` char(36) DEFAULT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `createdBy` varchar(255) NOT NULL,
  `modifiedBy` varchar(255) NOT NULL,
  `deletedBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `parentId`, `isDeleted`, `createdBy`, `modifiedBy`, `deletedBy`, `createdDate`, `modifiedDate`, `deleted_at`) VALUES
('bf4daa4f-ec54-421a-b1b2-915b2b4291ec', 'sample1', NULL, NULL, 0, '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, '2025-07-16 02:21:00', '2025-07-16 02:21:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `companyprofile`
--

CREATE TABLE `companyprofile` (
  `id` char(36) NOT NULL,
  `title` varchar(255) NOT NULL,
  `logoUrl` varchar(255) DEFAULT NULL,
  `bannerUrl` varchar(255) DEFAULT NULL,
  `createdBy` char(36) NOT NULL,
  `modifiedBy` varchar(255) NOT NULL,
  `deletedBy` varchar(255) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `location` varchar(255) DEFAULT 'local'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companyprofile`
--

INSERT INTO `companyprofile` (`id`, `title`, `logoUrl`, `bannerUrl`, `createdBy`, `modifiedBy`, `deletedBy`, `isDeleted`, `createdDate`, `modifiedDate`, `deleted_at`, `location`) VALUES
('26a63af4-9c60-48de-a4d9-7dfc9a4f5452', 'Document Management System', '', NULL, '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 0, '2025-07-16 01:59:15', '2025-07-16 01:59:15', NULL, 'local');

-- --------------------------------------------------------

--
-- Table structure for table `dailyreminders`
--

CREATE TABLE `dailyreminders` (
  `id` char(36) NOT NULL,
  `reminderId` char(36) NOT NULL,
  `dayOfWeek` int(11) NOT NULL,
  `isActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documentaudittrails`
--

CREATE TABLE `documentaudittrails` (
  `id` char(36) NOT NULL,
  `documentId` char(36) NOT NULL,
  `operationName` varchar(255) NOT NULL,
  `assignToUserId` char(36) DEFAULT NULL,
  `assignToRoleId` char(36) DEFAULT NULL,
  `createdBy` char(36) NOT NULL,
  `modifiedBy` varchar(255) NOT NULL,
  `deletedBy` varchar(255) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documentaudittrails`
--

INSERT INTO `documentaudittrails` (`id`, `documentId`, `operationName`, `assignToUserId`, `assignToRoleId`, `createdBy`, `modifiedBy`, `deletedBy`, `isDeleted`, `createdDate`, `modifiedDate`, `deleted_at`) VALUES
('1b744baa-650e-4535-98f5-8315ac74536a', 'eab66519-5943-4f22-b3f3-b9c3cbed8ffd', 'Send_Email', NULL, NULL, '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 0, '2025-07-16 03:11:06', '2025-07-16 03:11:06', NULL),
('2794231c-31ab-4bc6-b7dc-4cf4b7d1fa04', 'eab66519-5943-4f22-b3f3-b9c3cbed8ffd', 'Send_Email', NULL, NULL, '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 0, '2025-07-16 03:35:38', '2025-07-16 03:35:38', NULL),
('3febb17e-e982-45c5-a0c5-9c5e4089888d', 'eab66519-5943-4f22-b3f3-b9c3cbed8ffd', 'Send_Email', NULL, NULL, '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 0, '2025-07-16 04:07:23', '2025-07-16 04:07:23', NULL),
('4a611e27-4977-4e43-b120-5d298f0cf4fd', 'eab66519-5943-4f22-b3f3-b9c3cbed8ffd', 'Send_Email', NULL, NULL, '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 0, '2025-07-16 03:38:48', '2025-07-16 03:38:48', NULL),
('594624d5-20a7-4328-b334-95337e655214', 'eab66519-5943-4f22-b3f3-b9c3cbed8ffd', 'Download', NULL, NULL, '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 0, '2025-07-16 03:35:21', '2025-07-16 03:35:21', NULL),
('81a57ecf-5a44-46ea-ac37-83b1b46be790', 'eab66519-5943-4f22-b3f3-b9c3cbed8ffd', 'Send_Email', NULL, NULL, '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 0, '2025-07-16 03:15:17', '2025-07-16 03:15:17', NULL),
('96df5fe0-c903-438e-8604-6124347a5c18', 'eab66519-5943-4f22-b3f3-b9c3cbed8ffd', 'Send_Email', NULL, NULL, '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 0, '2025-07-16 03:53:32', '2025-07-16 03:53:32', NULL),
('b8e94d53-e6dc-4b9f-9316-51cc8d297e11', 'eab66519-5943-4f22-b3f3-b9c3cbed8ffd', 'Read', NULL, NULL, '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 0, '2025-07-16 03:47:32', '2025-07-16 03:47:32', NULL),
('d9133392-f1b6-404a-a9a5-16eb07b44870', 'eab66519-5943-4f22-b3f3-b9c3cbed8ffd', 'Read', NULL, NULL, '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 0, '2025-07-16 03:46:50', '2025-07-16 03:46:50', NULL),
('dd36b5f9-ba52-45d9-81d9-a32ad60e9e1d', 'eab66519-5943-4f22-b3f3-b9c3cbed8ffd', 'Read', NULL, NULL, '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 0, '2025-07-16 03:10:50', '2025-07-16 03:10:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `documentcomments`
--

CREATE TABLE `documentcomments` (
  `id` char(36) NOT NULL,
  `documentId` char(36) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `createdBy` char(36) NOT NULL,
  `modifiedBy` varchar(255) NOT NULL,
  `deletedBy` varchar(255) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documentcomments`
--

INSERT INTO `documentcomments` (`id`, `documentId`, `comment`, `createdBy`, `modifiedBy`, `deletedBy`, `isDeleted`, `createdDate`, `modifiedDate`, `deleted_at`) VALUES
('2218492e-cebd-4d26-bf3d-4a227bbcaa8d', 'eab66519-5943-4f22-b3f3-b9c3cbed8ffd', 'Hello sir', '4790a668-9c24-4137-b4c2-5bc4625701d4', '4790a668-9c24-4137-b4c2-5bc4625701d4', '', 0, '2025-07-16 03:46:42', '2025-07-16 03:46:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `documentmetadatas`
--

CREATE TABLE `documentmetadatas` (
  `id` char(36) NOT NULL,
  `documentId` char(36) NOT NULL,
  `metatag` varchar(255) DEFAULT NULL,
  `createdBy` varchar(255) NOT NULL,
  `modifiedBy` varchar(255) NOT NULL,
  `deletedBy` varchar(255) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documentrolepermissions`
--

CREATE TABLE `documentrolepermissions` (
  `id` char(36) NOT NULL,
  `documentId` char(36) NOT NULL,
  `roleId` char(36) NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `isTimeBound` tinyint(1) NOT NULL,
  `isAllowDownload` tinyint(1) NOT NULL,
  `createdBy` char(36) NOT NULL,
  `modifiedBy` varchar(255) NOT NULL,
  `deletedBy` varchar(255) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` char(36) NOT NULL,
  `categoryId` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `createdDate` datetime NOT NULL,
  `createdBy` char(36) NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `modifiedBy` varchar(255) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `deletedBy` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `location` varchar(255) DEFAULT 'local',
  `isPermanentDelete` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `categoryId`, `name`, `description`, `url`, `createdDate`, `createdBy`, `modifiedDate`, `modifiedBy`, `isDeleted`, `deletedBy`, `deleted_at`, `location`, `isPermanentDelete`) VALUES
('eab66519-5943-4f22-b3f3-b9c3cbed8ffd', 'bf4daa4f-ec54-421a-b1b2-915b2b4291ec', 'basta.txt', 'zxc', 'documents/2de05b0d-59e2-473f-a2f3-af028b1f798b.txt', '2025-07-16 02:21:29', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '2025-07-16 02:21:29', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 0, NULL, NULL, 'local', 0);

-- --------------------------------------------------------

--
-- Table structure for table `documenttokens`
--

CREATE TABLE `documenttokens` (
  `id` char(36) NOT NULL,
  `createdDate` datetime NOT NULL,
  `documentId` char(36) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documentuserpermissions`
--

CREATE TABLE `documentuserpermissions` (
  `id` char(36) NOT NULL,
  `documentId` char(36) NOT NULL,
  `userId` char(36) NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `isTimeBound` tinyint(1) NOT NULL,
  `isAllowDownload` tinyint(1) NOT NULL,
  `createdBy` char(36) NOT NULL,
  `modifiedBy` varchar(255) NOT NULL,
  `deletedBy` varchar(255) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documentuserpermissions`
--

INSERT INTO `documentuserpermissions` (`id`, `documentId`, `userId`, `startDate`, `endDate`, `isTimeBound`, `isAllowDownload`, `createdBy`, `modifiedBy`, `deletedBy`, `isDeleted`, `createdDate`, `modifiedDate`, `deleted_at`) VALUES
('3446a5e5-f7a8-4aa1-9d21-044713d8bd02', 'eab66519-5943-4f22-b3f3-b9c3cbed8ffd', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 0, '2025-07-16 02:21:29', '2025-07-16 02:21:29', NULL),
('3d0ae2fc-a1ef-4f91-8537-ee3a5813b32e', 'eab66519-5943-4f22-b3f3-b9c3cbed8ffd', '4790a668-9c24-4137-b4c2-5bc4625701d4', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 0, '2025-07-16 02:21:29', '2025-07-16 02:21:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `documentversions`
--

CREATE TABLE `documentversions` (
  `id` char(36) NOT NULL,
  `documentId` char(36) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `createdBy` char(36) NOT NULL,
  `modifiedBy` varchar(255) NOT NULL,
  `deletedBy` varchar(255) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `location` varchar(255) DEFAULT 'local'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emailsmtpsettings`
--

CREATE TABLE `emailsmtpsettings` (
  `id` char(36) NOT NULL,
  `host` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `port` int(11) NOT NULL,
  `isDefault` tinyint(1) NOT NULL,
  `fromName` varchar(255) DEFAULT NULL,
  `encryption` varchar(255) DEFAULT NULL,
  `createdBy` varchar(255) NOT NULL,
  `modifiedBy` varchar(255) NOT NULL,
  `deletedBy` varchar(255) DEFAULT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emailsmtpsettings`
--

INSERT INTO `emailsmtpsettings` (`id`, `host`, `userName`, `password`, `port`, `isDefault`, `fromName`, `encryption`, `createdBy`, `modifiedBy`, `deletedBy`, `isDeleted`, `createdDate`, `modifiedDate`, `deleted_at`) VALUES
('34fc4871-06c6-4489-9abf-b401f316c3c9', 'smtp.gmail.com', 'zjmutolentino58@gmail.com', 'gmiu xhdg adpd gxwu', 456, 1, 'zjmutolentino58@gmail.com', 'ssl', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 02:05:29', '2025-07-16 03:52:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `halfyearlyreminders`
--

CREATE TABLE `halfyearlyreminders` (
  `id` char(36) NOT NULL,
  `reminderId` char(36) NOT NULL,
  `day` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `quarter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` char(36) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `imageUrl` varchar(255) DEFAULT NULL,
  `createdBy` char(36) NOT NULL,
  `modifiedBy` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `deletedBy` varchar(255) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `isRTL` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `name`, `imageUrl`, `createdBy`, `modifiedBy`, `order`, `deletedBy`, `isDeleted`, `createdDate`, `modifiedDate`, `deleted_at`, `isRTL`) VALUES
('04906ab8-15b0-11ee-83f2-d85ed3312c1f', 'ru', 'Russian', 'images/flags/russia.svg', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 5, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0),
('10ac83d1-15b0-11ee-83f2-d85ed3312c1f', 'ja', 'Japanese', 'images/flags/japan.svg', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 6, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0),
('1d9a6233-15b0-11ee-83f2-d85ed3312c1f', 'fr', 'French', 'images/flags/france.svg', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 7, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0),
('9ed7278c-c7e7-4c91-9a83-83833603eb47', 'ko', 'Korean ', 'images/flags/south-korea.svg', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 8, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0),
('df8a9fe2-15af-11ee-83f2-d85ed3312c1f', 'en', 'English', 'images/flags/united-states.svg', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0),
('ef46fe64-15af-11ee-83f2-d85ed3312c1f', 'cn', 'Chinese', 'images/flags/china.svg', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 2, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0),
('f8041d27-15af-11ee-83f2-d85ed3312c1f', 'es', 'Spanish', 'images/flags/france.svg', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 3, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0),
('fe78a067-15af-11ee-83f2-d85ed3312c1f', 'ar', 'Arabic', 'images/flags/saudi-arabia.svg', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 4, '', 0, '0000-00-00 00:00:00', '2025-07-16 01:50:28', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `loginaudits`
--

CREATE TABLE `loginaudits` (
  `id` char(36) NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `loginTime` varchar(255) NOT NULL,
  `remoteIP` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loginaudits`
--

INSERT INTO `loginaudits` (`id`, `userName`, `loginTime`, `remoteIP`, `status`, `provider`, `latitude`, `longitude`) VALUES
('04cfd67c-8091-4f2f-af62-cf5dc6c36141', 'zjmutolentino58@gmail.com', '2025-07-16 02:38:59', '127.0.0.1', 'Success', NULL, NULL, NULL),
('3a7c3527-3632-4704-90ad-6ce0bd4a4b2f', 'mdrakibulhaider.int@gmail.com', '2025-07-16 01:01:05', '127.0.0.1', 'Error', NULL, NULL, NULL),
('40fa78f3-4beb-4f57-9ce2-928dd0cd9c14', 'zjmutolentino58@gmail.com', '2025-07-16 02:57:18', '127.0.0.1', 'Success', NULL, NULL, NULL),
('6c4b8682-7d4b-4f39-942a-14fed11c5e1e', 'sadasd@gmasdsad.com', '2025-07-15 13:49:34', '127.0.0.1', 'Error', NULL, NULL, NULL),
('795e53eb-8789-40a0-8be5-71814c125c34', 'utotfwet@gmail.com', '2025-07-16 02:23:24', '127.0.0.1', 'Success', NULL, NULL, NULL),
('83ece24c-0c26-48fe-9c6c-5fffe01ac57d', 'zjmutolentino@gmail.com', '2025-07-16 02:57:10', '127.0.0.1', 'Error', NULL, NULL, NULL),
('85fc49eb-846c-42d6-bcc7-7a485abb0c7b', 'utotfwet@gmail.com', '2025-07-16 02:38:42', '127.0.0.1', 'Success', NULL, NULL, NULL),
('a6e7e775-6b1b-4ac5-845c-4160c9fdc917', 'utotfwet@gmail.com', '2025-07-16 02:42:35', '127.0.0.1', 'Success', NULL, NULL, NULL),
('a7169da7-67cc-43e6-b40b-6f09cedc7c9b', 'zjmutolentino58@gmail.com', '2025-07-16 02:28:56', '127.0.0.1', 'Success', NULL, NULL, NULL),
('c3ff316d-4a0f-4b35-9819-5d93837ff19e', 'utotfwet@gmail.com', '2025-07-16 03:46:32', '127.0.0.1', 'Success', NULL, NULL, NULL),
('caabd86e-c7f1-4cb1-ba3d-a0772840e102', 'zjmutolentino58@gmail.com', '2025-07-16 01:51:10', '127.0.0.1', 'Success', NULL, NULL, NULL),
('e3428a15-cd95-4741-8590-420ecf19db01', 'zjmutolentino58@gmail.com', '2025-07-16 03:38:19', '127.0.0.1', 'Success', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_12_07_080139_create_users_table', 1),
(3, '2022_12_07_101203_create_roles_table', 1),
(4, '2022_12_08_055649_create_user_roles_table', 1),
(5, '2022_12_08_064517_create_categories_table', 1),
(6, '2023_01_06_103543_create_pages_table', 1),
(7, '2023_01_06_103807_create_actions_table', 1),
(8, '2023_01_07_084251_create_role_claims_table', 1),
(9, '2023_01_07_102537_create_user_claims_table', 1),
(10, '2023_01_23_062456_create_email_s_m_t_p_settings_table', 1),
(11, '2023_01_23_082532_create_documents_table', 1),
(12, '2023_01_25_091840_create_document_meta_datas_table', 1),
(13, '2023_01_26_105856_create_document_versions_table', 1),
(14, '2023_01_26_112250_create_document_role_permissions_table', 1),
(15, '2023_01_26_112318_create_document_user_permissions_table', 1),
(16, '2023_01_28_075359_create_document_comments_table', 1),
(17, '2023_01_31_063051_create_document_audit_trails_table', 1),
(18, '2023_02_07_112502_create_login_audits_table', 1),
(19, '2023_02_08_080324_create_reminders_table', 1),
(20, '2023_02_13_063925_create_reminder_users_table', 1),
(21, '2023_02_13_064215_create_half_yearly_reminders_table', 1),
(22, '2023_02_13_064719_create_quarterly_reminders_table', 1),
(23, '2023_02_13_064914_create_daily_reminders_table', 1),
(24, '2023_02_18_071307_create_reminder_notifications_table', 1),
(25, '2023_02_18_073159_create_user_notifications_table', 1),
(26, '2023_02_18_092637_create_send_emails_table', 1),
(27, '2023_02_18_101836_create_reminder_schedulers_table', 1),
(28, '2023_03_04_073617_create_document_tokens_table', 1),
(29, '2023_07_18_175356_add_encryption_to_email_s_m_t_p_settings_table', 1),
(30, '2023_07_19_084757_create_languages_table', 1),
(31, '2023_07_19_162944_create_company_profile_table', 1),
(32, '2023_12_16_103345_add_location_to_documents_table', 1),
(33, '2023_12_16_103702_add_location_to_document_versions_table', 1),
(34, '2023_12_27_110008_add_location_to_companyprofile_table', 1),
(35, '2024_03_28_044727_add__is_permanent_delete_to__document_table', 1),
(36, '2024_04_05_121019_add__is_r_t_l_to__language_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `modifiedBy` varchar(255) NOT NULL,
  `deletedBy` varchar(255) DEFAULT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `order`, `createdBy`, `modifiedBy`, `deletedBy`, `isDeleted`, `createdDate`, `modifiedDate`, `deleted_at`) VALUES
('05edb281-cddb-4281-9ab3-fb90d1833c82', 'Archived Documents', 4, '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('090ea443-01c7-4638-a194-ad3416a5ea7a', 'Role', 7, '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('2396f81c-f8b5-49ac-88d1-94ed57333f49', 'Document Audit Trail', 5, '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('2e3c07a4-fcac-4303-ae47-0d0f796403c9', 'Email', 8, '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('324bdc51-d71f-4f80-9f28-a30e8aae4009', 'User', 6, '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('42e44f15-8e33-423a-ad7f-17edc23d6dd3', 'Dashboard', 1, '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('5a5f7cf8-21a6-434a-9330-db91b17d867c', 'Document Category', 4, '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('8fbb83d6-9fde-4970-ac80-8e235cab1ff2', 'Settings', 9, '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('97ff6eb0-39b3-4ddd-acf1-43205d5a9bb3', 'Reminder', 9, '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('eddf9e8e-0c70-4cde-b5f9-117a879747d6', 'All Documents', 2, '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('f042bbee-d15f-40fb-b79a-8368f2c2e287', 'Login Audit', 10, '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('fc97dc8f-b4da-46b1-a179-ab206d8b7efd', 'Assigned Documents', 3, '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quarterlyreminders`
--

CREATE TABLE `quarterlyreminders` (
  `id` char(36) NOT NULL,
  `reminderId` char(36) NOT NULL,
  `day` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `quarter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `remindernotifications`
--

CREATE TABLE `remindernotifications` (
  `id` char(36) NOT NULL,
  `reminderId` char(36) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `fetchDateTime` datetime NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `isEmailNotification` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` char(36) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `frequency` int(11) DEFAULT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime DEFAULT NULL,
  `dayOfWeek` int(11) DEFAULT NULL,
  `isRepeated` tinyint(1) NOT NULL,
  `isEmailNotification` tinyint(1) NOT NULL,
  `documentId` char(36) DEFAULT NULL,
  `createdBy` char(36) NOT NULL,
  `modifiedBy` varchar(255) NOT NULL,
  `deletedBy` varchar(255) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reminderschedulers`
--

CREATE TABLE `reminderschedulers` (
  `id` char(36) NOT NULL,
  `duration` datetime NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `frequency` int(11) DEFAULT NULL,
  `createdDate` datetime NOT NULL,
  `documentId` char(36) DEFAULT NULL,
  `userId` char(36) NOT NULL,
  `isRead` tinyint(1) NOT NULL,
  `isEmailNotification` tinyint(1) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reminderusers`
--

CREATE TABLE `reminderusers` (
  `id` char(36) NOT NULL,
  `reminderId` char(36) NOT NULL,
  `userId` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roleclaims`
--

CREATE TABLE `roleclaims` (
  `id` char(36) NOT NULL,
  `actionId` char(36) NOT NULL,
  `roleId` char(36) NOT NULL,
  `claimType` varchar(255) DEFAULT NULL,
  `claimValue` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roleclaims`
--

INSERT INTO `roleclaims` (`id`, `actionId`, `roleId`, `claimType`, `claimValue`) VALUES
('07704354-334b-460f-b9c1-677362f43d25', 'a737284a-e43b-481d-9fdd-07e1680ffe11', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ASSIGNED_DOCUMENTS_EDIT_DOCUMENT', NULL),
('11c1464a-5437-44f5-abcd-44119d24e906', 'cd46a3a4-ede5-4941-a49b-3df7eaa46428', 'ff635a8f-4bb3-4d70-a3ed-c7749030696c', 'DOCUMENT_CATEGORY_MANAGE_DOCUMENT_CATEGORY', NULL),
('12293471-587d-44fe-9098-7da507e86ba0', 'd9067d75-e3b9-4d2d-8f82-567ad5f2b9ca', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ARCHIVE_DOCUMENT_VIEW_DOCUMENTS', NULL),
('14a7b5f4-4869-4d99-b3ed-4039098e7b72', '92596605-e49a-4ab6-8a39-60116eba8abe', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ASSIGNED_DOCUMENTS_DELETE_DOCUMENT', NULL),
('14fb346d-535f-482d-915e-376df10d3990', '1c7d3e31-08ad-43cf-9cf7-4ffafdda9029', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'DOCUMENT_AUDIT_TRAIL_VIEW_DOCUMENT_AUDIT_TRAIL', NULL),
('15fee6ad-418b-41b0-8895-f10ef55ebc6c', '18d07817-4b47-4c84-b21f-abe05da5e1ba', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ASSIGNED_DOCUMENTS_ARCHIVE_DOCUMENT', NULL),
('17e8d74b-956d-4d66-9964-3dffdb633ad7', '6bc0458e-22f5-4975-b387-4d6a4fb35201', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'REMINDER_CREATE_REMINDER', NULL),
('20d2caa0-43ff-4459-bd3d-88449a5b5a94', '6f2717fc-edef-4537-916d-2d527251a5c1', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'REMINDER_VIEW_REMINDERS', NULL),
('2130db5d-693c-4cd0-8886-eb39ca991f2e', '18a5a8f6-7cb6-4178-857d-b6a981ea3d4f', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ROLE_DELETE_ROLE', NULL),
('237ed514-fc8c-46d7-bee3-98647ee07bd6', '86ce1382-a2b1-48ed-ae81-c9908d00cf3b', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'USER_CREATE_USER', NULL),
('2488aa1c-b3b5-40d4-97d1-69dd28a56e89', '595a769d-f7ef-45f3-9f9e-60c58c5e1542', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_SEND_EMAIL', NULL),
('2b7d0d87-1219-4181-b35f-a0c0ed83e890', '4071ed2e-56fb-4c5a-887d-8a175cac8d71', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ARCHIVE_DOCUMENT_RESTORE_DOCUMENT', NULL),
('2c8001f6-0dd3-498c-b79e-708cccbbd599', '5ea48d56-2ed3-4239-bb90-dd4d70a1b0b2', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'REMINDER_DELETE_REMINDER', NULL),
('308d3005-aa13-480c-9796-fe3dad6ee6bd', 'db8825b1-ee4e-49f6-9a08-b0210ed53fd4', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ROLE_CREATE_ROLE', NULL),
('32109fc1-9330-4787-a436-10d292e16eec', 'c04a1094-f289-4de7-b788-9f21ee3fe32a', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ASSIGNED_DOCUMENTS_SEND_EMAIL', NULL),
('326a624e-39b7-4722-bf1f-4bf914545937', '2ea6ba08-eb36-4e34-92d9-f1984c908b31', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_SHARE_DOCUMENT', NULL),
('334d4283-0d64-41e6-9b65-a129d24052a4', 'f4d8a768-151d-4ec9-a8e3-41216afe0ec0', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ARCHIVE_DOCUMENT_DELETE_DOCUMENTS', NULL),
('35cef804-686a-49cd-96dc-2577bef13222', '57216dcd-1a1c-4f94-a33d-83a5af2d7a46', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ROLE_VIEW_ROLES', NULL),
('3a04de1f-4ebe-4cac-aadd-049fd4c188ca', '3da78b4d-d263-4b13-8e81-7aa164a3688c', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ALL_DOCUMENTS_ADD_REMINDER', NULL),
('3ffb376f-6d50-46b9-8ba1-e3f47d8837ab', '6719a065-8a4a-4350-8582-bfc41ce283fb', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ALL_DOCUMENTS_DOWNLOAD_DOCUMENT', NULL),
('433e6248-f33f-4760-bb34-e2adc0897933', 'e506ec48-b99a-45b4-9ec9-6451bc67477b', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'USER_ASSIGN_PERMISSION', NULL),
('4526df72-e37c-4820-b258-38a1d6f1f120', '07ad64e9-9a43-40d0-a205-2adb81e238b1', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'SETTINGS_STORAGE_SETTINGS', NULL),
('4922cf48-8894-4422-8e3c-638b8f7784b3', 'a8dd972d-e758-4571-8d39-c6fec74b361b', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_EDIT_DOCUMENT', NULL),
('4ba5a619-c49a-4070-ba8e-09afefc53323', 'fa91ffd9-61ee-4bb1-bf86-6a593cdc7be9', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ASSIGNED_DOCUMENTS_CREATE_DOCUMENT', NULL),
('4c2212dd-d3b8-4b1b-b407-25db13872173', 'a57b1ad5-8fbc-429b-b776-fbb468e5c6a4', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'SETTING_MANAGE_PROFILE', NULL),
('4f097a06-3422-417c-9536-3690bb0da699', '3ccaf408-8864-4815-a3e0-50632d90bcb6', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'REMINDER_EDIT_REMINDER', NULL),
('511e76ef-f3f4-4c86-97fb-fa3b361c5c09', '92596605-e49a-4ab6-8a39-60116eba8abe', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ASSIGNED_DOCUMENTS_DELETE_DOCUMENT', NULL),
('60353c02-5a52-47a3-ac86-04f5a2f4ad38', '63ed1277-1db5-4cf7-8404-3e3426cb4bc5', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_VIEW_DOCUMENTS', NULL),
('668ccd45-ef08-4d63-8d98-25d7fc01e667', '0a2e19fc-d9f2-446c-8ca3-e6b8b73b5f9b', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'USER_EDIT_USER', NULL),
('6d256566-0dc3-48bc-ad37-331a7ef0568e', 'd9067d75-e3b9-4d2d-8f82-567ad5f2b9ca', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ARCHIVE_DOCUMENT_VIEW_DOCUMENTS', NULL),
('6e74b192-f931-4981-ba37-bd3af5380644', '7ba630ca-a9d3-42ee-99c8-766e2231fec1', 'ff635a8f-4bb3-4d70-a3ed-c7749030696c', 'DASHBOARD_VIEW_DASHBOARD', NULL),
('6eb96bdb-388d-4783-8fa3-c90acfb2b865', 'e506ec48-b99a-45b4-9ec9-6451bc67477b', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'USER_ASSIGN_PERMISSION', NULL),
('6efabfd4-c396-42b1-857d-b369db0cf3b6', '6719a065-8a4a-4350-8582-bfc41ce283fb', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_DOWNLOAD_DOCUMENT', NULL),
('6fadf314-bc6d-4294-a34b-94a7a9c584af', '7ba630ca-a9d3-42ee-99c8-766e2231fec1', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'DASHBOARD_VIEW_DASHBOARD', NULL),
('75c0094d-a748-4c31-a134-b6012f88192a', 'fa91ffd9-61ee-4bb1-bf86-6a593cdc7be9', 'ff635a8f-4bb3-4d70-a3ed-c7749030696c', 'ASSIGNED_DOCUMENTS_CREATE_DOCUMENT', NULL),
('79009f7a-7701-468a-b14c-16b7fd556b3c', 'fa91ffd9-61ee-4bb1-bf86-6a593cdc7be9', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ASSIGNED_DOCUMENTS_CREATE_DOCUMENT', NULL),
('79622bb6-9bdb-4bae-9360-9265fe318346', '7ba630ca-a9d3-42ee-99c8-766e2231fec1', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'DASHBOARD_VIEW_DASHBOARD', NULL),
('7cdd398e-4c89-4081-97a3-01b6586c5422', '229ad778-c7d3-4f5f-ab52-24b537c39514', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_DELETE_DOCUMENT', NULL),
('7e665734-4838-47e8-aae6-a7f750df110d', '374d74aa-a580-4928-848d-f7553db39914', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'USER_DELETE_USER', NULL),
('82530f00-e759-4f46-b82b-c450e2566c81', '260d1089-46c7-4f53-83e6-f80b9b3fb823', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_ARCHIVE_DOCUMENT', NULL),
('83e1ea1e-83e0-48a3-89cd-7e68c36ebdbb', '31cb6438-7d4a-4385-8a34-b4e8f6096a48', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'USER_VIEW_USERS', NULL),
('8748467f-288d-4871-aacc-d9ad58944b3e', 'a8dd972d-e758-4571-8d39-c6fec74b361b', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ALL_DOCUMENTS_EDIT_DOCUMENT', NULL),
('882204ff-12c7-418c-a418-ef67d13e98fb', '6bc0458e-22f5-4975-b387-4d6a4fb35201', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'REMINDER_CREATE_REMINDER', NULL),
('8ee23ccf-eefe-4d67-8781-445a4c658f7f', '391c1739-1045-4dd4-9705-4a960479f0a0', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ASSIGNED_DOCUMENTS_UPLOAD_NEW_VERSION', NULL),
('908d03d9-2394-4f23-8c6f-848e3a30dba2', 'c04a1094-f289-4de7-b788-9f21ee3fe32a', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ASSIGNED_DOCUMENTS_SEND_EMAIL', NULL),
('91ee3849-138f-4dc7-aae3-7bc5e57ccd1c', '595a769d-f7ef-45f3-9f9e-60c58c5e1542', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ALL_DOCUMENTS_SEND_EMAIL', NULL),
('92d4fa3c-6fd2-46ef-9df9-0a3b334dab8c', '391c1739-1045-4dd4-9705-4a960479f0a0', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ASSIGNED_DOCUMENTS_UPLOAD_NEW_VERSION', NULL),
('93a8a46a-d5b9-4ab2-baf8-e89f0fde5733', '239035d5-cd44-475f-bbc5-9ef51768d389', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_CREATE_DOCUMENT', NULL),
('96f39a06-0398-4b30-b9aa-04c1519d445f', '6f2717fc-edef-4537-916d-2d527251a5c1', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'REMINDER_VIEW_REMINDERS', NULL),
('a549bacd-439a-4620-bcd6-af970e267870', 'a737284a-e43b-481d-9fdd-07e1680ffe11', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ASSIGNED_DOCUMENTS_EDIT_DOCUMENT', NULL),
('a822a8dc-aa24-4ca0-84f1-3c88ec64c8bd', 'ac6d6fbc-6348-4149-9c0c-154ab79d1166', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ASSIGNED_DOCUMENTS_SHARE_DOCUMENT', NULL),
('a84870e6-e22c-4e27-9aed-60e855448d0c', '63ed1277-1db5-4cf7-8404-3e3426cb4bc5', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ALL_DOCUMENTS_VIEW_DOCUMENTS', NULL),
('b069205c-da22-4c81-8ee4-3837b28e6cdf', '86ce1382-a2b1-48ed-ae81-c9908d00cf3b', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'USER_CREATE_USER', NULL),
('b22990b5-b2de-4b8d-bcf0-2e95a37af4d1', '3da78b4d-d263-4b13-8e81-7aa164a3688c', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_ADD_REMINDER', NULL),
('b3845e01-64fd-43da-998e-488ca23e70b8', '1c7d3e31-08ad-43cf-9cf7-4ffafdda9029', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'DOCUMENT_AUDIT_TRAIL_VIEW_DOCUMENT_AUDIT_TRAIL', NULL),
('bb96904e-0424-4452-9a0f-624404627483', 'ff4b3b73-c29f-462a-afa4-94a40e6b2c4a', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'LOGIN_AUDIT_VIEW_LOGIN_AUDIT_LOGS', NULL),
('bf6ddf53-aeb8-4f6b-8e36-1bfba4c2af03', 'c288b5d3-419d-4dc0-9e5a-083194016d2c', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ROLE_EDIT_ROLE', NULL),
('bfe2a3dd-f076-4402-a5e7-ba527d8a6d79', 'f4d8a768-151d-4ec9-a8e3-41216afe0ec0', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ARCHIVE_DOCUMENT_DELETE_DOCUMENTS', NULL),
('c190aa4b-2951-4490-b872-70d2967f528f', 'ac6d6fbc-6348-4149-9c0c-154ab79d1166', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ASSIGNED_DOCUMENTS_SHARE_DOCUMENT', NULL),
('c4168022-5b80-4dcf-ae1d-98a8d499a6a5', '5ea48d56-2ed3-4239-bb90-dd4d70a1b0b2', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'REMINDER_DELETE_REMINDER', NULL),
('c7c67b9f-99f7-457c-9299-e825c2a6a7dc', '239035d5-cd44-475f-bbc5-9ef51768d389', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ALL_DOCUMENTS_CREATE_DOCUMENT', NULL),
('ca0761c5-3278-4307-8e90-56dafeb1ddd4', '41f65d07-9023-4cfb-9c7c-0e3247a012e0', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'EMAIL_MANAGE_SMTP_SETTINGS', NULL),
('cb2ef192-2832-4c0e-9c44-0f7dfdd1cbe6', '260d1089-46c7-4f53-83e6-f80b9b3fb823', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ALL_DOCUMENTS_ARCHIVE_DOCUMENT', NULL),
('cb91c84b-02ce-4df5-91ac-88997081ffa2', 'fbe77c07-3058-4dbe-9d56-8c75dc879460', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'USER_ASSIGN_USER_ROLE', NULL),
('cd8cd97f-edea-4ea7-9f89-31d64acb0a2a', 'cd46a3a4-ede5-4941-a49b-3df7eaa46428', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'DOCUMENT_CATEGORY_MANAGE_DOCUMENT_CATEGORY', NULL),
('cf3f8da2-1a6f-400f-9ff7-ea430365d943', '2ea6ba08-eb36-4e34-92d9-f1984c908b31', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ALL_DOCUMENTS_SHARE_DOCUMENT', NULL),
('d0b1249b-2ced-4532-a08e-f460b3573fcb', '18d07817-4b47-4c84-b21f-abe05da5e1ba', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ASSIGNED_DOCUMENTS_ARCHIVE_DOCUMENT', NULL),
('d3b6aa37-ad41-4a5c-92f7-2f2be1016e44', 'cd46a3a4-ede5-4941-a49b-3df7eaa46428', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'DOCUMENT_CATEGORY_MANAGE_DOCUMENT_CATEGORY', NULL),
('da663d41-e188-404d-9d8d-d33953be4a9a', 'd4d724fc-fd38-49c4-85bc-73937b219e20', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'USER_RESET_PASSWORD', NULL),
('e1b25f6e-b983-45d0-baf2-80b22333fa1e', '3ccaf408-8864-4815-a3e0-50632d90bcb6', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'REMINDER_EDIT_REMINDER', NULL),
('e59bd097-9e1f-4e57-9f8c-04d1763faeac', '31cb6438-7d4a-4385-8a34-b4e8f6096a48', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'USER_VIEW_USERS', NULL),
('e664ae19-f164-4879-93d4-799b03dfd3ba', 'fbe77c07-3058-4dbe-9d56-8c75dc879460', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'USER_ASSIGN_USER_ROLE', NULL),
('f112885b-c7da-4b54-ae90-46d1959602dd', '229ad778-c7d3-4f5f-ab52-24b537c39514', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ALL_DOCUMENTS_DELETE_DOCUMENT', NULL),
('f319dec5-c3b5-4a73-b875-5556939efe0d', '4071ed2e-56fb-4c5a-887d-8a175cac8d71', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ARCHIVE_DOCUMENT_RESTORE_DOCUMENT', NULL),
('f5945425-864f-46ad-8a22-2629b696a8a3', '72ca5c91-b415-4997-a234-b4d71ba03253', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'SETTING_MANAGE_LANGUAGE', NULL),
('f7c3841f-acb1-4977-9625-f9bdab0a611d', '0a2e19fc-d9f2-446c-8ca3-e6b8b73b5f9b', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'USER_EDIT_USER', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdBy` varchar(255) NOT NULL,
  `modifiedBy` varchar(255) NOT NULL,
  `deletedBy` varchar(255) DEFAULT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `isDeleted`, `name`, `createdBy`, `modifiedBy`, `deletedBy`, `createdDate`, `modifiedDate`, `deleted_at`) VALUES
('82f60b8f-f019-4201-b693-7b5c4edc2339', 0, 'Admin', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, '2025-07-16 04:14:39', '2025-07-16 04:14:39', NULL),
('f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 0, 'Super Admin', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL),
('ff635a8f-4bb3-4d70-a3ed-c7749030696c', 0, 'Employee', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, '2025-07-16 01:50:28', '2025-07-16 01:50:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sendemails`
--

CREATE TABLE `sendemails` (
  `id` char(36) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `fromEmail` varchar(255) DEFAULT NULL,
  `documentId` char(36) DEFAULT NULL,
  `isSend` tinyint(1) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `createdBy` char(36) NOT NULL,
  `modifiedBy` varchar(255) NOT NULL,
  `deletedBy` varchar(255) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sendemails`
--

INSERT INTO `sendemails` (`id`, `subject`, `message`, `fromEmail`, `documentId`, `isSend`, `email`, `createdBy`, `modifiedBy`, `deletedBy`, `isDeleted`, `createdDate`, `modifiedDate`, `deleted_at`) VALUES
('07d68c5c-4f73-4d9d-86d8-dbb827cf6532', 'aydo', '<p>aydo naman</p>', 'zjmutolentino58@gmail.com', 'eab66519-5943-4f22-b3f3-b9c3cbed8ffd', 0, 'utotfwet@gmail.com', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 0, '2025-07-16 03:53:32', '2025-07-16 03:53:32', NULL),
('19d3d8a0-d9c7-41b8-9d83-bbbb47857fb4', 'zxc', '<p>zxc</p>', 'zjmutolentino58@gmail.com', 'eab66519-5943-4f22-b3f3-b9c3cbed8ffd', 0, 'utotfwet@gmail.com', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 0, '2025-07-16 03:15:17', '2025-07-16 03:15:17', NULL),
('6e677b8f-6116-4e64-a7ab-497e887021bd', 'zxcsad', '<p>zxcasd</p>', 'zjmutolentino58@gmail.com', 'eab66519-5943-4f22-b3f3-b9c3cbed8ffd', 0, 'utotfwet@gmail.com', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 0, '2025-07-16 04:07:23', '2025-07-16 04:07:23', NULL),
('77ca2c78-0628-424f-81eb-b1a6e3eb9a37', 'zxcasdqwe', '<p>zxcasdqwe</p>', 'zjmutolentino58@gmail.com', 'eab66519-5943-4f22-b3f3-b9c3cbed8ffd', 0, 'utotfwet@gmail.com', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 0, '2025-07-16 03:35:37', '2025-07-16 03:35:37', NULL),
('8a3042c6-d060-4d17-a052-859e0ddeb8a7', 'zxcasdqwe', '<p>zxcasdqwe</p>', 'zjmutolentino58@gmail.com', 'eab66519-5943-4f22-b3f3-b9c3cbed8ffd', 0, 'utotfwet@gmail.com', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 0, '2025-07-16 03:11:06', '2025-07-16 03:11:06', NULL),
('8d14945a-7480-4f8c-9386-2729467e674e', 'zxc', '<p>zxc</p>', 'zjmutolentino58@gmail.com', 'eab66519-5943-4f22-b3f3-b9c3cbed8ffd', 0, 'utotfwet@gmail.com', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 0, '2025-07-16 03:38:48', '2025-07-16 03:38:48', NULL),
('fa1b4be1-2932-4e8d-a0d9-6937fff3b37e', 'ggs', '<p>aydamong bugok</p>', 'zjmutolentino58@gmail.com', 'eab66519-5943-4f22-b3f3-b9c3cbed8ffd', 0, 'utotfwet@gmail.com', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 0, '2025-07-16 03:01:11', '2025-07-16 03:01:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userclaims`
--

CREATE TABLE `userclaims` (
  `id` char(36) NOT NULL,
  `actionId` char(36) NOT NULL,
  `userId` char(36) NOT NULL,
  `claimType` varchar(255) DEFAULT NULL,
  `claimValue` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usernotifications`
--

CREATE TABLE `usernotifications` (
  `id` char(36) NOT NULL,
  `userId` char(36) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `isRead` tinyint(1) NOT NULL,
  `documentId` char(36) DEFAULT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usernotifications`
--

INSERT INTO `usernotifications` (`id`, `userId`, `message`, `isRead`, `documentId`, `createdDate`, `modifiedDate`) VALUES
('306b745e-8ac8-4e00-a554-80233099ed84', '4790a668-9c24-4137-b4c2-5bc4625701d4', NULL, 1, 'eab66519-5943-4f22-b3f3-b9c3cbed8ffd', '2025-07-16 02:21:29', '2025-07-16 02:23:34');

-- --------------------------------------------------------

--
-- Table structure for table `userroles`
--

CREATE TABLE `userroles` (
  `id` char(36) NOT NULL,
  `userId` char(36) NOT NULL,
  `roleId` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userroles`
--

INSERT INTO `userroles` (`id`, `userId`, `roleId`) VALUES
('3735c7bc-60ed-44b8-b8c5-c3e16c5bff26', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4'),
('39c122c9-057c-4ee2-a4a2-59e70ddce9a1', '93c7ca87-4623-4758-b547-600e02b0a82a', 'ff635a8f-4bb3-4d70-a3ed-c7749030696c'),
('6ac78f4a-186c-4886-b31a-833d1d9aa176', '3e85b1b4-36dd-4fc4-b500-c00b5c419671', 'ff635a8f-4bb3-4d70-a3ed-c7749030696c'),
('87c141e8-7084-49d5-9e9a-146f4cad22f5', '4790a668-9c24-4137-b4c2-5bc4625701d4', 'ff635a8f-4bb3-4d70-a3ed-c7749030696c');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `normalizedUserName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `normalizedEmail` varchar(255) DEFAULT NULL,
  `emailConfirmed` tinyint(1) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `securityStamp` varchar(255) DEFAULT NULL,
  `concurrencyStamp` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `phoneNumberConfirmed` tinyint(1) NOT NULL,
  `twoFactorEnabled` tinyint(1) NOT NULL,
  `lockoutEnd` timestamp NULL DEFAULT NULL,
  `lockoutEnabled` tinyint(1) NOT NULL,
  `accessFailedCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `isDeleted`, `userName`, `normalizedUserName`, `email`, `normalizedEmail`, `emailConfirmed`, `password`, `securityStamp`, `concurrencyStamp`, `phoneNumber`, `phoneNumberConfirmed`, `twoFactorEnabled`, `lockoutEnd`, `lockoutEnabled`, `accessFailedCount`) VALUES
('05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'zhyrus', 'tolentino ', 0, 'zhyski', NULL, 'zjmutolentino58@gmail.com', NULL, 1, '$2y$10$.CWP0KH8CfHPvLaz0zrNjeDGPpKckCtjFh/pAle4iBInwCG0mNzsG', NULL, NULL, NULL, 1, 0, NULL, 0, 0),
('3e85b1b4-36dd-4fc4-b500-c00b5c419671', 'althea', 'dizon', 1, 'cynthia22gilmoreicc@outlook.com', NULL, 'cynthia22gilmoreicc@outlook.com', NULL, 0, '$2y$10$jYxeV7GH5TIMhODW4m6TO.McuDnnLY2g9r..GoyLf1tiQKbHepPCy', NULL, NULL, '123456789', 0, 0, NULL, 0, 0),
('4790a668-9c24-4137-b4c2-5bc4625701d4', 'zxc', 'cxz', 0, 'utotfwet@gmail.com', NULL, 'utotfwet@gmail.com', NULL, 0, '$2y$10$OfmIVMIXAsSZVg199Bxsb.chqvLzyuRzVj2pkrUJGJlpZiI0IxvwG', NULL, NULL, '123', 0, 0, NULL, 0, 0),
('93c7ca87-4623-4758-b547-600e02b0a82a', 'zarrah', 'tolentino', 1, 'zhyrusutolentino@gmail.com', NULL, 'zhyrusutolentino@gmail.com', NULL, 0, '$2y$10$PJhlw.Snn5LSnPCAHnu.S.sNX8B8lyTIJ8vUknnqwD2UAXl.aMHLS', NULL, NULL, '09675731724', 0, 0, NULL, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `actions_pageid_foreign` (`pageId`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parentid_foreign` (`parentId`);

--
-- Indexes for table `companyprofile`
--
ALTER TABLE `companyprofile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companyprofile_createdby_foreign` (`createdBy`);

--
-- Indexes for table `dailyreminders`
--
ALTER TABLE `dailyreminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dailyreminders_reminderid_foreign` (`reminderId`);

--
-- Indexes for table `documentaudittrails`
--
ALTER TABLE `documentaudittrails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentaudittrails_documentid_foreign` (`documentId`),
  ADD KEY `documentaudittrails_assigntouserid_foreign` (`assignToUserId`),
  ADD KEY `documentaudittrails_assigntoroleid_foreign` (`assignToRoleId`),
  ADD KEY `documentaudittrails_createdby_foreign` (`createdBy`);

--
-- Indexes for table `documentcomments`
--
ALTER TABLE `documentcomments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentcomments_documentid_foreign` (`documentId`),
  ADD KEY `documentcomments_createdby_foreign` (`createdBy`);

--
-- Indexes for table `documentmetadatas`
--
ALTER TABLE `documentmetadatas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentmetadatas_documentid_foreign` (`documentId`);

--
-- Indexes for table `documentrolepermissions`
--
ALTER TABLE `documentrolepermissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentrolepermissions_documentid_foreign` (`documentId`),
  ADD KEY `documentrolepermissions_roleid_foreign` (`roleId`),
  ADD KEY `documentrolepermissions_createdby_foreign` (`createdBy`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_categoryid_foreign` (`categoryId`),
  ADD KEY `documents_createdby_foreign` (`createdBy`);

--
-- Indexes for table `documenttokens`
--
ALTER TABLE `documenttokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documentuserpermissions`
--
ALTER TABLE `documentuserpermissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentuserpermissions_documentid_foreign` (`documentId`),
  ADD KEY `documentuserpermissions_userid_foreign` (`userId`),
  ADD KEY `documentuserpermissions_createdby_foreign` (`createdBy`);

--
-- Indexes for table `documentversions`
--
ALTER TABLE `documentversions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentversions_documentid_foreign` (`documentId`),
  ADD KEY `documentversions_createdby_foreign` (`createdBy`);

--
-- Indexes for table `emailsmtpsettings`
--
ALTER TABLE `emailsmtpsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `halfyearlyreminders`
--
ALTER TABLE `halfyearlyreminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `halfyearlyreminders_reminderid_foreign` (`reminderId`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `languages_createdby_foreign` (`createdBy`);

--
-- Indexes for table `loginaudits`
--
ALTER TABLE `loginaudits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `quarterlyreminders`
--
ALTER TABLE `quarterlyreminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quarterlyreminders_reminderid_foreign` (`reminderId`);

--
-- Indexes for table `remindernotifications`
--
ALTER TABLE `remindernotifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `remindernotifications_reminderid_foreign` (`reminderId`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminders_documentid_foreign` (`documentId`),
  ADD KEY `reminders_createdby_foreign` (`createdBy`);

--
-- Indexes for table `reminderschedulers`
--
ALTER TABLE `reminderschedulers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminderschedulers_documentid_foreign` (`documentId`),
  ADD KEY `reminderschedulers_userid_foreign` (`userId`);

--
-- Indexes for table `reminderusers`
--
ALTER TABLE `reminderusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminderusers_reminderid_foreign` (`reminderId`),
  ADD KEY `reminderusers_userid_foreign` (`userId`);

--
-- Indexes for table `roleclaims`
--
ALTER TABLE `roleclaims`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roleclaims_actionid_foreign` (`actionId`),
  ADD KEY `roleclaims_roleid_foreign` (`roleId`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sendemails`
--
ALTER TABLE `sendemails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sendemails_documentid_foreign` (`documentId`),
  ADD KEY `sendemails_createdby_foreign` (`createdBy`);

--
-- Indexes for table `userclaims`
--
ALTER TABLE `userclaims`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userclaims_actionid_foreign` (`actionId`),
  ADD KEY `userclaims_userid_foreign` (`userId`);

--
-- Indexes for table `usernotifications`
--
ALTER TABLE `usernotifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usernotifications_userid_foreign` (`userId`),
  ADD KEY `usernotifications_documentid_foreign` (`documentId`);

--
-- Indexes for table `userroles`
--
ALTER TABLE `userroles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userroles_userid_foreign` (`userId`),
  ADD KEY `userroles_roleid_foreign` (`roleId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `actions`
--
ALTER TABLE `actions`
  ADD CONSTRAINT `actions_pageid_foreign` FOREIGN KEY (`pageId`) REFERENCES `pages` (`id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parentid_foreign` FOREIGN KEY (`parentId`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `companyprofile`
--
ALTER TABLE `companyprofile`
  ADD CONSTRAINT `companyprofile_createdby_foreign` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`);

--
-- Constraints for table `dailyreminders`
--
ALTER TABLE `dailyreminders`
  ADD CONSTRAINT `dailyreminders_reminderid_foreign` FOREIGN KEY (`reminderId`) REFERENCES `reminders` (`id`);

--
-- Constraints for table `documentaudittrails`
--
ALTER TABLE `documentaudittrails`
  ADD CONSTRAINT `documentaudittrails_assigntoroleid_foreign` FOREIGN KEY (`assignToRoleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `documentaudittrails_assigntouserid_foreign` FOREIGN KEY (`assignToUserId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `documentaudittrails_createdby_foreign` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `documentaudittrails_documentid_foreign` FOREIGN KEY (`documentId`) REFERENCES `documents` (`id`);

--
-- Constraints for table `documentcomments`
--
ALTER TABLE `documentcomments`
  ADD CONSTRAINT `documentcomments_createdby_foreign` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `documentcomments_documentid_foreign` FOREIGN KEY (`documentId`) REFERENCES `documents` (`id`);

--
-- Constraints for table `documentmetadatas`
--
ALTER TABLE `documentmetadatas`
  ADD CONSTRAINT `documentmetadatas_documentid_foreign` FOREIGN KEY (`documentId`) REFERENCES `documents` (`id`);

--
-- Constraints for table `documentrolepermissions`
--
ALTER TABLE `documentrolepermissions`
  ADD CONSTRAINT `documentrolepermissions_createdby_foreign` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `documentrolepermissions_documentid_foreign` FOREIGN KEY (`documentId`) REFERENCES `documents` (`id`),
  ADD CONSTRAINT `documentrolepermissions_roleid_foreign` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`);

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_categoryid_foreign` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `documents_createdby_foreign` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`);

--
-- Constraints for table `documentuserpermissions`
--
ALTER TABLE `documentuserpermissions`
  ADD CONSTRAINT `documentuserpermissions_createdby_foreign` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `documentuserpermissions_documentid_foreign` FOREIGN KEY (`documentId`) REFERENCES `documents` (`id`),
  ADD CONSTRAINT `documentuserpermissions_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `documentversions`
--
ALTER TABLE `documentversions`
  ADD CONSTRAINT `documentversions_createdby_foreign` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `documentversions_documentid_foreign` FOREIGN KEY (`documentId`) REFERENCES `documents` (`id`);

--
-- Constraints for table `halfyearlyreminders`
--
ALTER TABLE `halfyearlyreminders`
  ADD CONSTRAINT `halfyearlyreminders_reminderid_foreign` FOREIGN KEY (`reminderId`) REFERENCES `reminders` (`id`);

--
-- Constraints for table `languages`
--
ALTER TABLE `languages`
  ADD CONSTRAINT `languages_createdby_foreign` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`);

--
-- Constraints for table `quarterlyreminders`
--
ALTER TABLE `quarterlyreminders`
  ADD CONSTRAINT `quarterlyreminders_reminderid_foreign` FOREIGN KEY (`reminderId`) REFERENCES `reminders` (`id`);

--
-- Constraints for table `remindernotifications`
--
ALTER TABLE `remindernotifications`
  ADD CONSTRAINT `remindernotifications_reminderid_foreign` FOREIGN KEY (`reminderId`) REFERENCES `reminders` (`id`);

--
-- Constraints for table `reminders`
--
ALTER TABLE `reminders`
  ADD CONSTRAINT `reminders_createdby_foreign` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `reminders_documentid_foreign` FOREIGN KEY (`documentId`) REFERENCES `documents` (`id`);

--
-- Constraints for table `reminderschedulers`
--
ALTER TABLE `reminderschedulers`
  ADD CONSTRAINT `reminderschedulers_documentid_foreign` FOREIGN KEY (`documentId`) REFERENCES `documents` (`id`),
  ADD CONSTRAINT `reminderschedulers_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `reminderusers`
--
ALTER TABLE `reminderusers`
  ADD CONSTRAINT `reminderusers_reminderid_foreign` FOREIGN KEY (`reminderId`) REFERENCES `reminders` (`id`),
  ADD CONSTRAINT `reminderusers_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `roleclaims`
--
ALTER TABLE `roleclaims`
  ADD CONSTRAINT `roleclaims_actionid_foreign` FOREIGN KEY (`actionId`) REFERENCES `actions` (`id`),
  ADD CONSTRAINT `roleclaims_roleid_foreign` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`);

--
-- Constraints for table `sendemails`
--
ALTER TABLE `sendemails`
  ADD CONSTRAINT `sendemails_createdby_foreign` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sendemails_documentid_foreign` FOREIGN KEY (`documentId`) REFERENCES `documents` (`id`);

--
-- Constraints for table `userclaims`
--
ALTER TABLE `userclaims`
  ADD CONSTRAINT `userclaims_actionid_foreign` FOREIGN KEY (`actionId`) REFERENCES `actions` (`id`),
  ADD CONSTRAINT `userclaims_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `usernotifications`
--
ALTER TABLE `usernotifications`
  ADD CONSTRAINT `usernotifications_documentid_foreign` FOREIGN KEY (`documentId`) REFERENCES `documents` (`id`),
  ADD CONSTRAINT `usernotifications_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `userroles`
--
ALTER TABLE `userroles`
  ADD CONSTRAINT `userroles_roleid_foreign` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userroles_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
