-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2025 at 09:29 AM
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
('604066ce-f693-477c-a89a-103817d8b432', 'c046cb2e-e8e7-4e3f-b4a6-d137cdbba348', 'Send_Email', NULL, NULL, '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 0, '2025-07-18 07:13:15', '2025-07-18 07:13:15', NULL),
('6b6e5098-513d-48fa-88d2-3a198dfcc548', 'c046cb2e-e8e7-4e3f-b4a6-d137cdbba348', 'Created', NULL, NULL, '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 0, '2025-07-18 07:12:20', '2025-07-18 07:12:20', NULL),
('ed73e1ca-75df-4556-8d41-54bae7f9925b', 'c046cb2e-e8e7-4e3f-b4a6-d137cdbba348', 'Add_Permission', '93c7ca87-4623-4758-b547-600e02b0a82a', NULL, '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 0, '2025-07-18 07:12:20', '2025-07-18 07:12:20', NULL);

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
('c046cb2e-e8e7-4e3f-b4a6-d137cdbba348', 'bf4daa4f-ec54-421a-b1b2-915b2b4291ec', 'IP2andIAS1_Collaborative-Project-Guidelines (1).docx', 'gawin mo to', 'documents/9fe69b5c-8325-4bd6-8419-bc906724dd4f.docx', '2025-07-18 07:12:20', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '2025-07-18 07:12:20', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 0, NULL, NULL, 'local', 0);

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
('7662af20-1bfa-4504-bd22-e12dd3e884d8', 'c046cb2e-e8e7-4e3f-b4a6-d137cdbba348', '93c7ca87-4623-4758-b547-600e02b0a82a', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 0, '2025-07-18 07:12:20', '2025-07-18 07:12:20', NULL),
('9269ae92-db2e-4f31-b86d-d4e76367bb2f', 'c046cb2e-e8e7-4e3f-b4a6-d137cdbba348', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 0, '2025-07-18 07:12:20', '2025-07-18 07:12:20', NULL);

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
('34fc4871-06c6-4489-9abf-b401f316c3c9', 'smtp.gmail.com', 'zjmutolentino58@gmail.com', 'gkyd qzkv ieyb wmhd', 465, 1, 'zjmutolentino58@gmail.com', 'ssl', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, 0, '2025-07-16 02:05:29', '2025-07-18 06:24:40', NULL);

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
('06439c95-5670-4d18-983d-cafcfb0ac878', 'zhyrusutolentino@gmail.com', '2025-07-18 06:40:03', '127.0.0.1', 'Success', NULL, NULL, NULL),
('22686d03-ba91-49c5-9c8d-2a240b7bd8d7', 'zhyrusutolentino@gmail.com', '2025-07-18 07:02:17', '127.0.0.1', 'Success', NULL, NULL, NULL),
('22b25502-b49d-4d75-bae2-323a392bc33f', 'zjmutolentino58@gmail.com', '2025-07-18 06:56:21', '127.0.0.1', 'Success', NULL, NULL, NULL),
('3f6665b1-e973-4656-8341-5e92f7549f45', 'zjmutolentino58@gmail.com', '2025-07-18 07:04:29', '127.0.0.1', 'Success', NULL, NULL, NULL),
('42f3ad83-c610-4694-829b-067451efe308', 'zjmutolentino58@gmail.com', '2025-07-18 07:11:37', '127.0.0.1', 'Success', NULL, NULL, NULL),
('4b274a86-f09f-4f91-8541-3827987ca2f8', 'zhyrusutolentino@gmail.com', '2025-07-18 07:12:35', '127.0.0.1', 'Success', NULL, NULL, NULL),
('55ef1bc1-470b-456a-abb2-93c2e6431b26', 'zhyrusutolentino@gmail.com', '2025-07-18 07:01:03', '127.0.0.1', 'Success', NULL, NULL, NULL),
('70c4b9e1-e1e8-466f-a37a-86fd0c9cd1ef', 'zjmutolentino58@gmail.com', '2025-07-18 06:57:49', '127.0.0.1', 'Success', NULL, NULL, NULL),
('7818475c-7a73-4233-b548-af38d59d8b8a', 'zhyrusutolentino@gmail.com', '2025-07-18 06:55:51', '127.0.0.1', 'Success', NULL, NULL, NULL),
('92b4ffc5-a624-4cef-bf23-263efff327a7', 'zhyrusutolentino@gmail.com', '2025-07-18 06:57:25', '127.0.0.1', 'Success', NULL, NULL, NULL),
('9bf0fe30-ad21-4256-ac37-01c2a5613b86', 'zjmutolentino58@gmail.com', '2025-07-18 06:55:12', '127.0.0.1', 'Success', NULL, NULL, NULL),
('9e8c8e7d-b6d7-4add-af35-046534f9926d', 'zhyrusutolentino@gmail.com', '2025-07-18 07:06:23', '127.0.0.1', 'Success', NULL, NULL, NULL),
('a07c3c8a-d7cc-4853-833b-01ed0e229663', 'zhyrusutolentino@gmail.com', '2025-07-18 07:03:35', '127.0.0.1', 'Success', NULL, NULL, NULL),
('b0a993f3-d520-45f3-8fa1-a1bbcb3bce89', 'zjmutolentino58@gmail.com', '2025-07-18 07:02:56', '127.0.0.1', 'Success', NULL, NULL, NULL),
('b36a65f5-7019-497c-8ad0-376de47d18f7', 'zjmutolentino58@gmail.com', '2025-07-18 07:01:39', '127.0.0.1', 'Success', NULL, NULL, NULL),
('f3572bd2-bcaa-43a9-84de-5de994669494', 'zjmutolentino58@gmail.com', '2025-07-18 05:45:56', '127.0.0.1', 'Success', NULL, NULL, NULL),
('f4b0f5be-731a-4f1b-8bd1-7a0789b1b908', 'zhyrusutolentino@gmail.com', '2025-07-18 07:04:22', '127.0.0.1', 'Success', NULL, NULL, NULL);

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

--
-- Dumping data for table `reminders`
--

INSERT INTO `reminders` (`id`, `subject`, `message`, `frequency`, `startDate`, `endDate`, `dayOfWeek`, `isRepeated`, `isEmailNotification`, `documentId`, `createdBy`, `modifiedBy`, `deletedBy`, `isDeleted`, `createdDate`, `modifiedDate`, `deleted_at`) VALUES
('2dd9a560-5e21-4717-86a4-4445accc6e25', 'asdasd', 'etsdsc', 6, '2025-07-18 10:00:20', NULL, 2, 0, 1, NULL, '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 0, '2025-07-18 07:00:51', '2025-07-18 07:00:51', NULL),
('70d9bc23-429f-4049-975f-46f911356555', 'asdas', 'dasdasd', 6, '2025-07-18 07:06:28', NULL, 2, 0, 0, NULL, '93c7ca87-4623-4758-b547-600e02b0a82a', '93c7ca87-4623-4758-b547-600e02b0a82a', '', 0, '2025-07-18 07:07:43', '2025-07-18 07:07:43', NULL);

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

--
-- Dumping data for table `reminderusers`
--

INSERT INTO `reminderusers` (`id`, `reminderId`, `userId`) VALUES
('0fec000b-2004-4cf4-a11b-e88b4796b6cf', '2dd9a560-5e21-4717-86a4-4445accc6e25', '93c7ca87-4623-4758-b547-600e02b0a82a');

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
('080b8539-b715-43e4-ab50-f74c63386b69', 'c04a1094-f289-4de7-b788-9f21ee3fe32a', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ASSIGNED_DOCUMENTS_SEND_EMAIL', NULL),
('0c9c39fd-6b03-4a58-a1ab-14b40403e9f1', 'e506ec48-b99a-45b4-9ec9-6451bc67477b', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'USER_ASSIGN_PERMISSION', NULL),
('0fb876e9-0441-4c09-bc56-4916503946ae', '391c1739-1045-4dd4-9705-4a960479f0a0', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ASSIGNED_DOCUMENTS_UPLOAD_NEW_VERSION', NULL),
('14a7b5f4-4869-4d99-b3ed-4039098e7b72', '92596605-e49a-4ab6-8a39-60116eba8abe', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ASSIGNED_DOCUMENTS_DELETE_DOCUMENT', NULL),
('14fb346d-535f-482d-915e-376df10d3990', '1c7d3e31-08ad-43cf-9cf7-4ffafdda9029', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'DOCUMENT_AUDIT_TRAIL_VIEW_DOCUMENT_AUDIT_TRAIL', NULL),
('19787b61-efaf-4574-991a-32cb3a2e13c3', '6719a065-8a4a-4350-8582-bfc41ce283fb', 'ff635a8f-4bb3-4d70-a3ed-c7749030696c', 'ALL_DOCUMENTS_DOWNLOAD_DOCUMENT', NULL),
('20d2caa0-43ff-4459-bd3d-88449a5b5a94', '6f2717fc-edef-4537-916d-2d527251a5c1', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'REMINDER_VIEW_REMINDERS', NULL),
('2130db5d-693c-4cd0-8886-eb39ca991f2e', '18a5a8f6-7cb6-4178-857d-b6a981ea3d4f', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ROLE_DELETE_ROLE', NULL),
('2488aa1c-b3b5-40d4-97d1-69dd28a56e89', '595a769d-f7ef-45f3-9f9e-60c58c5e1542', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_SEND_EMAIL', NULL),
('26da831b-3c13-4f97-9e44-4e95bbf4fa1b', '3ccaf408-8864-4815-a3e0-50632d90bcb6', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'REMINDER_EDIT_REMINDER', NULL),
('2a9b8c4c-d0b6-48d0-9d38-e21c922f92cf', '92596605-e49a-4ab6-8a39-60116eba8abe', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ASSIGNED_DOCUMENTS_DELETE_DOCUMENT', NULL),
('2b3a48cc-727f-4fcd-926a-aff9d92303ed', '6f2717fc-edef-4537-916d-2d527251a5c1', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'REMINDER_VIEW_REMINDERS', NULL),
('2c7d4461-ce2e-4ed5-9126-67b73fb7fb6f', '86ce1382-a2b1-48ed-ae81-c9908d00cf3b', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'USER_CREATE_USER', NULL),
('2d5a95ee-0ee4-4a51-8fc4-e410f50b70f2', '595a769d-f7ef-45f3-9f9e-60c58c5e1542', 'ff635a8f-4bb3-4d70-a3ed-c7749030696c', 'ALL_DOCUMENTS_SEND_EMAIL', NULL),
('308d3005-aa13-480c-9796-fe3dad6ee6bd', 'db8825b1-ee4e-49f6-9a08-b0210ed53fd4', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ROLE_CREATE_ROLE', NULL),
('30eae809-6081-48f9-99fa-f966cb89ce40', '0a2e19fc-d9f2-446c-8ca3-e6b8b73b5f9b', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'USER_EDIT_USER', NULL),
('32109fc1-9330-4787-a436-10d292e16eec', 'c04a1094-f289-4de7-b788-9f21ee3fe32a', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ASSIGNED_DOCUMENTS_SEND_EMAIL', NULL),
('326a624e-39b7-4722-bf1f-4bf914545937', '2ea6ba08-eb36-4e34-92d9-f1984c908b31', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_SHARE_DOCUMENT', NULL),
('334d4283-0d64-41e6-9b65-a129d24052a4', 'f4d8a768-151d-4ec9-a8e3-41216afe0ec0', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ARCHIVE_DOCUMENT_DELETE_DOCUMENTS', NULL),
('35cef804-686a-49cd-96dc-2577bef13222', '57216dcd-1a1c-4f94-a33d-83a5af2d7a46', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ROLE_VIEW_ROLES', NULL),
('40b7c4f4-7747-49cf-9a81-e6616481e622', '63ed1277-1db5-4cf7-8404-3e3426cb4bc5', 'ff635a8f-4bb3-4d70-a3ed-c7749030696c', 'ALL_DOCUMENTS_VIEW_DOCUMENTS', NULL),
('433e6248-f33f-4760-bb34-e2adc0897933', 'e506ec48-b99a-45b4-9ec9-6451bc67477b', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'USER_ASSIGN_PERMISSION', NULL),
('4526df72-e37c-4820-b258-38a1d6f1f120', '07ad64e9-9a43-40d0-a205-2adb81e238b1', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'SETTINGS_STORAGE_SETTINGS', NULL),
('47a41fe8-36d9-4bfa-92a1-f1a4ab988a99', '7ba630ca-a9d3-42ee-99c8-766e2231fec1', 'ff635a8f-4bb3-4d70-a3ed-c7749030696c', 'DASHBOARD_VIEW_DASHBOARD', NULL),
('4922cf48-8894-4422-8e3c-638b8f7784b3', 'a8dd972d-e758-4571-8d39-c6fec74b361b', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_EDIT_DOCUMENT', NULL),
('496e66ba-75f2-4642-b992-d6d048eac9bc', '63ed1277-1db5-4cf7-8404-3e3426cb4bc5', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ALL_DOCUMENTS_VIEW_DOCUMENTS', NULL),
('4c2212dd-d3b8-4b1b-b407-25db13872173', 'a57b1ad5-8fbc-429b-b776-fbb468e5c6a4', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'SETTING_MANAGE_PROFILE', NULL),
('538111a4-66d2-42bc-b9f8-77c5421bfeab', '3da78b4d-d263-4b13-8e81-7aa164a3688c', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ALL_DOCUMENTS_ADD_REMINDER', NULL),
('5bfc651a-7512-4916-808c-45ca46166ae8', 'cd46a3a4-ede5-4941-a49b-3df7eaa46428', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'DOCUMENT_CATEGORY_MANAGE_DOCUMENT_CATEGORY', NULL),
('60353c02-5a52-47a3-ac86-04f5a2f4ad38', '63ed1277-1db5-4cf7-8404-3e3426cb4bc5', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_VIEW_DOCUMENTS', NULL),
('6a1d27fc-0525-437d-94b5-556e36563de5', '6719a065-8a4a-4350-8582-bfc41ce283fb', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ALL_DOCUMENTS_DOWNLOAD_DOCUMENT', NULL),
('6bc01b8d-ef02-40a8-b86e-f152be07e79b', 'a737284a-e43b-481d-9fdd-07e1680ffe11', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ASSIGNED_DOCUMENTS_EDIT_DOCUMENT', NULL),
('6d256566-0dc3-48bc-ad37-331a7ef0568e', 'd9067d75-e3b9-4d2d-8f82-567ad5f2b9ca', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ARCHIVE_DOCUMENT_VIEW_DOCUMENTS', NULL),
('6efabfd4-c396-42b1-857d-b369db0cf3b6', '6719a065-8a4a-4350-8582-bfc41ce283fb', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_DOWNLOAD_DOCUMENT', NULL),
('6fadf314-bc6d-4294-a34b-94a7a9c584af', '7ba630ca-a9d3-42ee-99c8-766e2231fec1', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'DASHBOARD_VIEW_DASHBOARD', NULL),
('714468cf-027d-406d-b96d-f80b76b68e7d', 'f4d8a768-151d-4ec9-a8e3-41216afe0ec0', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ARCHIVE_DOCUMENT_DELETE_DOCUMENTS', NULL),
('72ac1e88-2c65-4b52-8342-2ff87bb01dc9', '6f2717fc-edef-4537-916d-2d527251a5c1', 'ff635a8f-4bb3-4d70-a3ed-c7749030696c', 'REMINDER_VIEW_REMINDERS', NULL),
('742e484f-8a72-46b1-aaf5-5c664ca94f42', '260d1089-46c7-4f53-83e6-f80b9b3fb823', 'ff635a8f-4bb3-4d70-a3ed-c7749030696c', 'ALL_DOCUMENTS_ARCHIVE_DOCUMENT', NULL),
('79009f7a-7701-468a-b14c-16b7fd556b3c', 'fa91ffd9-61ee-4bb1-bf86-6a593cdc7be9', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ASSIGNED_DOCUMENTS_CREATE_DOCUMENT', NULL),
('7953c25b-4987-42d4-a45d-de6bd6c2f5f1', '260d1089-46c7-4f53-83e6-f80b9b3fb823', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ALL_DOCUMENTS_ARCHIVE_DOCUMENT', NULL),
('7a53f725-5dfb-430e-907a-0bc0f77cb480', '7ba630ca-a9d3-42ee-99c8-766e2231fec1', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'DASHBOARD_VIEW_DASHBOARD', NULL),
('7cdd398e-4c89-4081-97a3-01b6586c5422', '229ad778-c7d3-4f5f-ab52-24b537c39514', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_DELETE_DOCUMENT', NULL),
('7e665734-4838-47e8-aae6-a7f750df110d', '374d74aa-a580-4928-848d-f7553db39914', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'USER_DELETE_USER', NULL),
('82530f00-e759-4f46-b82b-c450e2566c81', '260d1089-46c7-4f53-83e6-f80b9b3fb823', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_ARCHIVE_DOCUMENT', NULL),
('8586a044-076f-4237-9985-9e8427dca4ca', '3da78b4d-d263-4b13-8e81-7aa164a3688c', 'ff635a8f-4bb3-4d70-a3ed-c7749030696c', 'ALL_DOCUMENTS_ADD_REMINDER', NULL),
('882204ff-12c7-418c-a418-ef67d13e98fb', '6bc0458e-22f5-4975-b387-4d6a4fb35201', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'REMINDER_CREATE_REMINDER', NULL),
('8c2f3931-f71b-47fc-8785-cc2706cfbaa4', '595a769d-f7ef-45f3-9f9e-60c58c5e1542', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ALL_DOCUMENTS_SEND_EMAIL', NULL),
('8e5200c1-a37b-4876-9618-7ae7cf6d570e', 'a8dd972d-e758-4571-8d39-c6fec74b361b', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ALL_DOCUMENTS_EDIT_DOCUMENT', NULL),
('8ee23ccf-eefe-4d67-8781-445a4c658f7f', '391c1739-1045-4dd4-9705-4a960479f0a0', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ASSIGNED_DOCUMENTS_UPLOAD_NEW_VERSION', NULL),
('8fbee092-dcac-4e34-bc83-31928d2a5423', 'd9067d75-e3b9-4d2d-8f82-567ad5f2b9ca', 'ff635a8f-4bb3-4d70-a3ed-c7749030696c', 'ARCHIVE_DOCUMENT_VIEW_DOCUMENTS', NULL),
('91f638af-0edd-4c34-bb42-d7968da01992', '5ea48d56-2ed3-4239-bb90-dd4d70a1b0b2', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'REMINDER_DELETE_REMINDER', NULL),
('9252586b-4895-4ce9-91ed-864e986e6bca', 'd9067d75-e3b9-4d2d-8f82-567ad5f2b9ca', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ARCHIVE_DOCUMENT_VIEW_DOCUMENTS', NULL),
('93a8a46a-d5b9-4ab2-baf8-e89f0fde5733', '239035d5-cd44-475f-bbc5-9ef51768d389', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_CREATE_DOCUMENT', NULL),
('99f20c5a-e6a9-4564-bf64-7faef72896fb', '6bc0458e-22f5-4975-b387-4d6a4fb35201', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'REMINDER_CREATE_REMINDER', NULL),
('9d3900ac-891d-4f9a-b512-c37aca1f1cb7', 'fbe77c07-3058-4dbe-9d56-8c75dc879460', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'USER_ASSIGN_USER_ROLE', NULL),
('a50791a4-13ad-4d1a-a362-56c5b4c9d660', 'ac6d6fbc-6348-4149-9c0c-154ab79d1166', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ASSIGNED_DOCUMENTS_SHARE_DOCUMENT', NULL),
('a672b0e0-bd7c-4616-be34-7dba7a44673a', 'a8dd972d-e758-4571-8d39-c6fec74b361b', 'ff635a8f-4bb3-4d70-a3ed-c7749030696c', 'ALL_DOCUMENTS_EDIT_DOCUMENT', NULL),
('b069205c-da22-4c81-8ee4-3837b28e6cdf', '86ce1382-a2b1-48ed-ae81-c9908d00cf3b', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'USER_CREATE_USER', NULL),
('b1f40bef-cbe5-478b-ba81-20be4b10de30', '229ad778-c7d3-4f5f-ab52-24b537c39514', 'ff635a8f-4bb3-4d70-a3ed-c7749030696c', 'ALL_DOCUMENTS_DELETE_DOCUMENT', NULL),
('b2262e89-c377-4145-bb46-f62d9a19272e', 'cd46a3a4-ede5-4941-a49b-3df7eaa46428', 'ff635a8f-4bb3-4d70-a3ed-c7749030696c', 'DOCUMENT_CATEGORY_MANAGE_DOCUMENT_CATEGORY', NULL),
('b22990b5-b2de-4b8d-bcf0-2e95a37af4d1', '3da78b4d-d263-4b13-8e81-7aa164a3688c', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_ADD_REMINDER', NULL),
('bb96904e-0424-4452-9a0f-624404627483', 'ff4b3b73-c29f-462a-afa4-94a40e6b2c4a', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'LOGIN_AUDIT_VIEW_LOGIN_AUDIT_LOGS', NULL),
('bf6ddf53-aeb8-4f6b-8e36-1bfba4c2af03', 'c288b5d3-419d-4dc0-9e5a-083194016d2c', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ROLE_EDIT_ROLE', NULL),
('c190aa4b-2951-4490-b872-70d2967f528f', 'ac6d6fbc-6348-4149-9c0c-154ab79d1166', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ASSIGNED_DOCUMENTS_SHARE_DOCUMENT', NULL),
('c4168022-5b80-4dcf-ae1d-98a8d499a6a5', '5ea48d56-2ed3-4239-bb90-dd4d70a1b0b2', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'REMINDER_DELETE_REMINDER', NULL),
('c74be384-afa0-4907-8a78-3becdcfb4769', '1c7d3e31-08ad-43cf-9cf7-4ffafdda9029', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'DOCUMENT_AUDIT_TRAIL_VIEW_DOCUMENT_AUDIT_TRAIL', NULL),
('ca0761c5-3278-4307-8e90-56dafeb1ddd4', '41f65d07-9023-4cfb-9c7c-0e3247a012e0', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'EMAIL_MANAGE_SMTP_SETTINGS', NULL),
('ce22f29b-643a-4ac6-bc1b-214aee7cbfb7', '239035d5-cd44-475f-bbc5-9ef51768d389', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ALL_DOCUMENTS_CREATE_DOCUMENT', NULL),
('d0b1249b-2ced-4532-a08e-f460b3573fcb', '18d07817-4b47-4c84-b21f-abe05da5e1ba', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ASSIGNED_DOCUMENTS_ARCHIVE_DOCUMENT', NULL),
('d32dfd3a-8481-484b-b66c-023cde745b5e', 'fa91ffd9-61ee-4bb1-bf86-6a593cdc7be9', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ASSIGNED_DOCUMENTS_CREATE_DOCUMENT', NULL),
('d3b6aa37-ad41-4a5c-92f7-2f2be1016e44', 'cd46a3a4-ede5-4941-a49b-3df7eaa46428', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'DOCUMENT_CATEGORY_MANAGE_DOCUMENT_CATEGORY', NULL),
('d60ebe64-a6e8-48d1-b894-4860d64f0b36', '4071ed2e-56fb-4c5a-887d-8a175cac8d71', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ARCHIVE_DOCUMENT_RESTORE_DOCUMENT', NULL),
('d89341a7-ee2f-4139-b45d-abb94601e771', '18d07817-4b47-4c84-b21f-abe05da5e1ba', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ASSIGNED_DOCUMENTS_ARCHIVE_DOCUMENT', NULL),
('da663d41-e188-404d-9d8d-d33953be4a9a', 'd4d724fc-fd38-49c4-85bc-73937b219e20', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'USER_RESET_PASSWORD', NULL),
('de7c6502-6bd5-412f-b57f-fb406e55d298', '239035d5-cd44-475f-bbc5-9ef51768d389', 'ff635a8f-4bb3-4d70-a3ed-c7749030696c', 'ALL_DOCUMENTS_CREATE_DOCUMENT', NULL),
('e1b25f6e-b983-45d0-baf2-80b22333fa1e', '3ccaf408-8864-4815-a3e0-50632d90bcb6', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'REMINDER_EDIT_REMINDER', NULL),
('e59bd097-9e1f-4e57-9f8c-04d1763faeac', '31cb6438-7d4a-4385-8a34-b4e8f6096a48', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'USER_VIEW_USERS', NULL),
('e5c55f2b-0e9d-405b-afef-a2e0b2d2450a', '2ea6ba08-eb36-4e34-92d9-f1984c908b31', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ALL_DOCUMENTS_SHARE_DOCUMENT', NULL),
('e664ae19-f164-4879-93d4-799b03dfd3ba', 'fbe77c07-3058-4dbe-9d56-8c75dc879460', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'USER_ASSIGN_USER_ROLE', NULL),
('f28a6157-7667-47c7-9905-c247f5ea6caf', '229ad778-c7d3-4f5f-ab52-24b537c39514', '82f60b8f-f019-4201-b693-7b5c4edc2339', 'ALL_DOCUMENTS_DELETE_DOCUMENT', NULL),
('f319dec5-c3b5-4a73-b875-5556939efe0d', '4071ed2e-56fb-4c5a-887d-8a175cac8d71', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ARCHIVE_DOCUMENT_RESTORE_DOCUMENT', NULL),
('f3e528a3-5ae2-4c03-b56a-dd8633134cd0', '4071ed2e-56fb-4c5a-887d-8a175cac8d71', 'ff635a8f-4bb3-4d70-a3ed-c7749030696c', 'ARCHIVE_DOCUMENT_RESTORE_DOCUMENT', NULL),
('f5945425-864f-46ad-8a22-2629b696a8a3', '72ca5c91-b415-4997-a234-b4d71ba03253', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'SETTING_MANAGE_LANGUAGE', NULL),
('f606f0bb-ec6c-4e96-8274-27b1dd5cf4b0', '3ccaf408-8864-4815-a3e0-50632d90bcb6', 'ff635a8f-4bb3-4d70-a3ed-c7749030696c', 'REMINDER_EDIT_REMINDER', NULL),
('f7c3841f-acb1-4977-9625-f9bdab0a611d', '0a2e19fc-d9f2-446c-8ca3-e6b8b73b5f9b', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'USER_EDIT_USER', NULL),
('f855fdca-7ea8-4eca-81c1-f5515c6c0cf6', '6bc0458e-22f5-4975-b387-4d6a4fb35201', 'ff635a8f-4bb3-4d70-a3ed-c7749030696c', 'REMINDER_CREATE_REMINDER', NULL),
('fcf63796-c392-4edd-8a0e-fd44545ae87e', '2ea6ba08-eb36-4e34-92d9-f1984c908b31', 'ff635a8f-4bb3-4d70-a3ed-c7749030696c', 'ALL_DOCUMENTS_SHARE_DOCUMENT', NULL);

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
('ff635a8f-4bb3-4d70-a3ed-c7749030696c', 0, 'User', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', NULL, '2025-07-16 01:50:28', '2025-07-18 03:17:24', NULL);

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
('2c453825-7933-4a18-b22b-389eaca5495f', 'zxc', '<p>asdqwe</p>', 'zjmutolentino58@gmail.com', 'c046cb2e-e8e7-4e3f-b4a6-d137cdbba348', 0, 'zhyrusutolentino@gmail.com', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', '', 0, '2025-07-18 07:13:15', '2025-07-18 07:13:15', NULL);

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

--
-- Dumping data for table `userclaims`
--

INSERT INTO `userclaims` (`id`, `actionId`, `userId`, `claimType`, `claimValue`) VALUES
('00832034-1d6c-46e3-9403-ff93ef76776c', '391c1739-1045-4dd4-9705-4a960479f0a0', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'ASSIGNED_DOCUMENTS_UPLOAD_NEW_VERSION', NULL),
('11e8ebe9-5e5b-4721-96af-ea7f3026a95b', '31cb6438-7d4a-4385-8a34-b4e8f6096a48', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'USER_VIEW_USERS', NULL),
('12000f11-3f9e-4578-8fab-d0b760a00caf', 'a8dd972d-e758-4571-8d39-c6fec74b361b', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'ALL_DOCUMENTS_EDIT_DOCUMENT', NULL),
('12e65045-4306-4d90-bd4f-e79e0eab3eec', 'cd46a3a4-ede5-4941-a49b-3df7eaa46428', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'DOCUMENT_CATEGORY_MANAGE_DOCUMENT_CATEGORY', NULL),
('13633052-6595-4b45-8abf-821a124e6598', '2ea6ba08-eb36-4e34-92d9-f1984c908b31', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'ALL_DOCUMENTS_SHARE_DOCUMENT', NULL),
('1b3ada82-37a4-4625-a5ec-a3f7cf676d91', '229ad778-c7d3-4f5f-ab52-24b537c39514', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'ALL_DOCUMENTS_DELETE_DOCUMENT', NULL),
('2964ab57-d9ae-4a02-a60d-dfea24a17269', '374d74aa-a580-4928-848d-f7553db39914', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'USER_DELETE_USER', NULL),
('31febd87-b7e9-4f2e-bbce-d105b76cf8c9', 'e506ec48-b99a-45b4-9ec9-6451bc67477b', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'USER_ASSIGN_PERMISSION', NULL),
('3bbca15b-2514-40f6-b60c-989fffd1b1e9', 'db8825b1-ee4e-49f6-9a08-b0210ed53fd4', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'ROLE_CREATE_ROLE', NULL),
('40a056d3-b582-41a2-b228-d844fe79a567', '0a2e19fc-d9f2-446c-8ca3-e6b8b73b5f9b', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'USER_EDIT_USER', NULL),
('4c08fe3d-3339-4f51-ae9a-000ac653f671', '63ed1277-1db5-4cf7-8404-3e3426cb4bc5', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'ALL_DOCUMENTS_VIEW_DOCUMENTS', NULL),
('4c504104-7334-44f1-b240-188d107110e9', '72ca5c91-b415-4997-a234-b4d71ba03253', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'SETTING_MANAGE_LANGUAGE', NULL),
('546bd1a7-674f-4246-8436-ef6955b0dcf5', '07ad64e9-9a43-40d0-a205-2adb81e238b1', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'SETTINGS_STORAGE_SETTINGS', NULL),
('56943b67-4233-4bc0-9251-7f1dd22d3eb1', 'c04a1094-f289-4de7-b788-9f21ee3fe32a', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'ASSIGNED_DOCUMENTS_SEND_EMAIL', NULL),
('57caed2d-468b-4257-93d7-2abc340e0f70', 'a737284a-e43b-481d-9fdd-07e1680ffe11', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'ASSIGNED_DOCUMENTS_EDIT_DOCUMENT', NULL),
('5cc95669-7a62-40f8-8e19-c2bc72e45bd7', 'f4d8a768-151d-4ec9-a8e3-41216afe0ec0', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'ARCHIVE_DOCUMENT_DELETE_DOCUMENTS', NULL),
('5d932acf-3b77-47c0-a3c5-d7788981dc2d', '5ea48d56-2ed3-4239-bb90-dd4d70a1b0b2', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'REMINDER_DELETE_REMINDER', NULL),
('5ed45497-3307-48ea-a1ab-f3b8b8d727db', '86ce1382-a2b1-48ed-ae81-c9908d00cf3b', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'USER_CREATE_USER', NULL),
('6c18b606-580d-42cd-a8dc-815badffe8c6', '6bc0458e-22f5-4975-b387-4d6a4fb35201', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'REMINDER_CREATE_REMINDER', NULL),
('6fd07fde-0f7f-4e1e-ab86-bc7165d2f480', '41f65d07-9023-4cfb-9c7c-0e3247a012e0', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'EMAIL_MANAGE_SMTP_SETTINGS', NULL),
('71542713-f2aa-49ab-9a67-dfcb12a7c508', '18d07817-4b47-4c84-b21f-abe05da5e1ba', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'ASSIGNED_DOCUMENTS_ARCHIVE_DOCUMENT', NULL),
('754830c2-c524-478e-8cb5-a0b6c61c393a', '6f2717fc-edef-4537-916d-2d527251a5c1', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'REMINDER_VIEW_REMINDERS', NULL),
('7bc2cfb3-4c38-44ae-9859-da0073e2a808', 'c288b5d3-419d-4dc0-9e5a-083194016d2c', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'ROLE_EDIT_ROLE', NULL),
('7faa44ee-be5b-477d-b5f2-1ce94985cc79', '7ba630ca-a9d3-42ee-99c8-766e2231fec1', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'DASHBOARD_VIEW_DASHBOARD', NULL),
('8772ce80-d3b8-45d7-b43e-7d955456dc76', 'fa91ffd9-61ee-4bb1-bf86-6a593cdc7be9', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'ASSIGNED_DOCUMENTS_CREATE_DOCUMENT', NULL),
('8f32994c-63e2-4bbb-8635-ae6ea5244c49', 'd4d724fc-fd38-49c4-85bc-73937b219e20', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'USER_RESET_PASSWORD', NULL),
('9074e9fc-b6cb-449f-ae7a-c100cc1e78cd', '57216dcd-1a1c-4f94-a33d-83a5af2d7a46', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'ROLE_VIEW_ROLES', NULL),
('b10d1ed0-5915-46f9-99a9-f191681cebf6', '4071ed2e-56fb-4c5a-887d-8a175cac8d71', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'ARCHIVE_DOCUMENT_RESTORE_DOCUMENT', NULL),
('b3878523-1c11-47f3-b97d-5068705a00ac', '260d1089-46c7-4f53-83e6-f80b9b3fb823', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'ALL_DOCUMENTS_ARCHIVE_DOCUMENT', NULL),
('bbf92ea9-e5ae-4f16-9f05-2dca2b3e9757', '6719a065-8a4a-4350-8582-bfc41ce283fb', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'ALL_DOCUMENTS_DOWNLOAD_DOCUMENT', NULL),
('bdaf40f7-637e-4399-975b-63583b9ac818', 'a57b1ad5-8fbc-429b-b776-fbb468e5c6a4', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'SETTING_MANAGE_PROFILE', NULL),
('bdf80607-0aa1-4891-817e-e9f85eb15859', 'd9067d75-e3b9-4d2d-8f82-567ad5f2b9ca', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'ARCHIVE_DOCUMENT_VIEW_DOCUMENTS', NULL),
('cc6c106b-af29-4d8a-b7a4-6a46ffb69b8c', 'ac6d6fbc-6348-4149-9c0c-154ab79d1166', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'ASSIGNED_DOCUMENTS_SHARE_DOCUMENT', NULL),
('d5662109-dcf8-4e78-8edf-3a354d09d484', '3da78b4d-d263-4b13-8e81-7aa164a3688c', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'ALL_DOCUMENTS_ADD_REMINDER', NULL),
('d741be7e-1477-4598-aecd-2a6486e43540', '595a769d-f7ef-45f3-9f9e-60c58c5e1542', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'ALL_DOCUMENTS_SEND_EMAIL', NULL),
('e5ee3803-4448-46ae-b9df-739d1b5aca24', '18a5a8f6-7cb6-4178-857d-b6a981ea3d4f', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'ROLE_DELETE_ROLE', NULL),
('e8fc6630-7138-43a2-a55f-e8a6bfa3112d', '1c7d3e31-08ad-43cf-9cf7-4ffafdda9029', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'DOCUMENT_AUDIT_TRAIL_VIEW_DOCUMENT_AUDIT_TRAIL', NULL),
('eb416920-2444-496d-8f0b-9dbf814cc518', 'fbe77c07-3058-4dbe-9d56-8c75dc879460', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'USER_ASSIGN_USER_ROLE', NULL),
('f0d267fa-d7a9-466f-90a9-02acf29e19f4', '92596605-e49a-4ab6-8a39-60116eba8abe', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'ASSIGNED_DOCUMENTS_DELETE_DOCUMENT', NULL),
('f47ca1cf-7a36-4e94-84af-6d7bdd1beebe', '239035d5-cd44-475f-bbc5-9ef51768d389', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'ALL_DOCUMENTS_CREATE_DOCUMENT', NULL),
('fb353085-1b1d-4703-9f2c-44e77465096d', 'ff4b3b73-c29f-462a-afa4-94a40e6b2c4a', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'LOGIN_AUDIT_VIEW_LOGIN_AUDIT_LOGS', NULL),
('ff24b68a-8e69-4dd9-9807-ecee148b827d', '3ccaf408-8864-4815-a3e0-50632d90bcb6', '05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'REMINDER_EDIT_REMINDER', NULL);

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
('34acb4d3-5afc-4a2e-9c45-604a4157b86c', '93c7ca87-4623-4758-b547-600e02b0a82a', NULL, 0, 'c046cb2e-e8e7-4e3f-b4a6-d137cdbba348', '2025-07-18 07:12:20', '2025-07-18 07:12:20');

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
('6836d523-ef49-449e-a0c5-b72a43d44e49', '4790a668-9c24-4137-b4c2-5bc4625701d4', 'ff635a8f-4bb3-4d70-a3ed-c7749030696c'),
('83a58e46-76f9-4ccd-ac55-d0c594c74b23', '93c7ca87-4623-4758-b547-600e02b0a82a', 'ff635a8f-4bb3-4d70-a3ed-c7749030696c');

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
('05b2cb30-7485-4961-8dc4-ddb8369bdd92', 'zhyrus', 'tolentino', 0, 'zhyski', NULL, 'zjmutolentino58@gmail.com', NULL, 1, '$2y$10$.CWP0KH8CfHPvLaz0zrNjeDGPpKckCtjFh/pAle4iBInwCG0mNzsG', NULL, NULL, '09675731724', 1, 0, NULL, 0, 0),
('93c7ca87-4623-4758-b547-600e02b0a82a', 'zarrah', 'tolentino', 0, 'zhyrusutolentino@gmail.com', NULL, 'zhyrusutolentino@gmail.com', NULL, 0, '$2y$10$PJhlw.Snn5LSnPCAHnu.S.sNX8B8lyTIJ8vUknnqwD2UAXl.aMHLS', NULL, NULL, '09675731724', 0, 0, NULL, 0, 0);

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
