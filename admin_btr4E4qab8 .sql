-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 10, 2020 at 03:22 PM
-- Server version: 10.1.47-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_btr4E4qab8`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_balances`
--

CREATE TABLE `account_balances` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `balance` decimal(16,4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_notes`
--

CREATE TABLE `app_notes` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `contents` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `app_password_manager`
--

CREATE TABLE `app_password_manager` (
  `id` int(11) UNSIGNED NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `notes` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_password_manager`
--

INSERT INTO `app_password_manager` (`id`, `client_id`, `type`, `name`, `url`, `username`, `password`, `notes`, `created_at`, `updated_at`) VALUES
(4, 294, NULL, 'google 2', 'http://www.google.com', 'test', 'test', '', '2017-12-10 01:28:36', '2017-12-10 02:03:02');

-- --------------------------------------------------------

--
-- Table structure for table `app_sms`
--

CREATE TABLE `app_sms` (
  `id` int(11) NOT NULL,
  `req_time` datetime DEFAULT NULL,
  `sent_time` datetime DEFAULT NULL,
  `sms_from` text,
  `sms_to` text,
  `sms` text,
  `driver` text,
  `resp` text,
  `status` varchar(200) DEFAULT NULL,
  `stype` varchar(200) NOT NULL DEFAULT 'Sent',
  `cid` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `iid` int(11) DEFAULT NULL,
  `trid` int(11) DEFAULT NULL,
  `lid` int(11) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_sms`
--

INSERT INTO `app_sms` (`id`, `req_time`, `sent_time`, `sms_from`, `sms_to`, `sms`, `driver`, `resp`, `status`, `stype`, `cid`, `aid`, `company_id`, `iid`, `trid`, `lid`, `oid`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, '', '738072957', 'CARZRUS | 016 range rover hse. View: https://admin.autohiveinc.com/?ng=tickets/admin/view/3', 'Nexmo', NULL, NULL, 'Sent', NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-07-01 18:34:27', '2020-07-01 18:34:27'),
(2, NULL, NULL, '', '738072957', 'WCGreen_Test | Test. View: https://iah.autohiveinc.com/?ng=tickets/admin/view/4', 'Nexmo', NULL, NULL, 'Sent', NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-07-20 18:58:36', '2020-07-20 18:58:36'),
(3, NULL, NULL, '', '738072957', 'AH-FLEET-3 | STATE INSPECTION . View: https://iah.autohiveinc.com/?ng=tickets/admin/view/5', 'Nexmo', NULL, NULL, 'Sent', NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-08-25 16:24:30', '2020-08-25 16:24:30');

-- --------------------------------------------------------

--
-- Table structure for table `app_sms_drivers`
--

CREATE TABLE `app_sms_drivers` (
  `id` int(11) NOT NULL,
  `dname` varchar(200) DEFAULT NULL,
  `handler` varchar(200) DEFAULT NULL,
  `weburl` varchar(200) DEFAULT NULL,
  `description` text,
  `url` varchar(200) DEFAULT NULL,
  `incoming_url` varchar(200) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `api_key` varchar(200) DEFAULT NULL,
  `api_secret` varchar(200) DEFAULT NULL,
  `route` varchar(200) DEFAULT NULL,
  `sender_id` varchar(100) DEFAULT NULL,
  `balance` decimal(14,2) DEFAULT NULL,
  `placeholder` text,
  `status` varchar(100) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_sms_drivers`
--

INSERT INTO `app_sms_drivers` (`id`, `dname`, `handler`, `weburl`, `description`, `url`, `incoming_url`, `method`, `username`, `password`, `api_key`, `api_secret`, `route`, `sender_id`, `balance`, `placeholder`, `status`, `is_active`, `created_at`, `updated_at`) VALUES
(135, 'custom', 'custom', 'http://www.example.com', 'Your Custom Gateway', 'http://api.example.com', 'http://www.example.com/incoming/', 'GET', 'your_username', 'your_password', 'your_api_key', 'your_api_secret', '1', 'CloudOnex', '1.00', '{{url}}/send.php?username={{username}}&password={{password}}&from={{from}}&to={{to}}&message={{message}}', 'Sandbox', 0, NULL, NULL),
(136, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(137, 'custom', 'custom', 'http://www.example.com', 'Your Custom Gateway', 'http://api.example.com', 'http://www.example.com/incoming/', 'GET', 'your_username', 'your_password', 'your_api_key', 'your_api_secret', '1', 'CloudOnex', '1.00', '{{url}}/send.php?username={{username}}&password={{password}}&from={{from}}&to={{to}}&message={{message}}', 'Sandbox', 0, NULL, NULL),
(138, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(139, 'custom', 'custom', 'http://www.example.com', 'Your Custom Gateway', 'http://api.example.com', 'http://www.example.com/incoming/', 'GET', 'your_username', 'your_password', 'your_api_key', 'your_api_secret', '1', 'CloudOnex', '1.00', '{{url}}/send.php?username={{username}}&password={{password}}&from={{from}}&to={{to}}&message={{message}}', 'Sandbox', 0, NULL, NULL),
(140, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `app_sms_templates`
--

CREATE TABLE `app_sms_templates` (
  `id` int(11) NOT NULL,
  `tpl` varchar(200) DEFAULT NULL,
  `sms` text,
  `status` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_at_2` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_sms_templates`
--

INSERT INTO `app_sms_templates` (`id`, `tpl`, `sms`, `status`, `created_at`, `updated_at`, `updated_at_2`) VALUES
(1, 'Invoice Created', 'Your Invoice- {{invoice_id}} is created. To view your invoice- {{invoice_url}}', NULL, NULL, '2017-11-23 12:59:37', NULL),
(2, 'Invoice Payment Reminder', 'We have not received payment for invoice {{invoice_id}}, dated {{invoice_date}}. To view your invoice- {{invoice_url}}', NULL, NULL, '2017-11-23 13:01:14', NULL),
(3, 'Invoice Overdue Notice', 'Your Invoice- {{invoice_id}} is now overdue. To view your invoice- {{invoice_url}}', NULL, NULL, '2017-11-23 12:59:20', NULL),
(4, 'Invoice Payment Confirmation', 'We have received your Payment for Invoice ID- {{invoice_id}}', NULL, NULL, '2017-11-23 13:02:15', NULL),
(5, 'Invoice Refund Confirmation', 'Your Payment for {{invoice_id}} has been refunded.', NULL, NULL, '2017-11-23 13:03:19', NULL),
(6, 'Quote Created', 'A Quote has been created- {{quote_id}}. You can view this Quote- {{quote_url}}', NULL, NULL, '2017-11-23 13:03:19', NULL),
(7, 'Quote Accepted', 'Thanks for Accepting Quote - {{quote_id}}. You can view this Quote- {{quote_url}}', NULL, NULL, '2017-11-23 13:03:19', NULL),
(8, 'Quote Cancelled', 'Quote has been cancelled - {{quote_id}}. You can view this Quote- {{quote_url}}', NULL, NULL, '2017-11-23 13:03:19', NULL),
(9, 'Quote Accepted: Admin Notification', 'Quote - {{quote_id}} has been accepted. You can view this Quote- {{quote_url}}', NULL, NULL, '2017-11-23 13:03:19', NULL),
(10, 'Quote Cancelled: Admin Notification', 'Quote - {{quote_id}} has been Cancelled. You can view this Quote- {{quote_url}}', NULL, NULL, NULL, NULL),
(12, 'Ticket Assigned: Admin Notification', 'Ticket - {{ticket_id}} has been assigned to you.', NULL, '2018-10-25 00:33:32', '2018-10-25 00:33:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_purchased` date DEFAULT NULL,
  `supported_until` date DEFAULT NULL,
  `price` decimal(16,4) DEFAULT NULL,
  `depreciation` decimal(16,4) DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `employee_id` int(10) UNSIGNED DEFAULT NULL,
  `contact_id` int(10) UNSIGNED DEFAULT NULL,
  `location_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `asset`, `name`, `brand`, `date_purchased`, `supported_until`, `price`, `depreciation`, `serial`, `image`, `status`, `notes`, `category_id`, `employee_id`, `contact_id`, `location_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(8, '', 'Macbook Pro', '', '2018-11-06', '2019-11-06', '1250.0000', NULL, 'SL37289274899', NULL, NULL, '', 6, NULL, NULL, NULL, NULL, '2018-11-06 05:12:09', '2018-11-06 05:12:23'),
(9, '', 'CloudOnex Business Suite', '', '2018-11-06', '2019-11-06', '299.0000', NULL, 'ABC-17284-278487-2222', NULL, NULL, '', 7, NULL, NULL, NULL, NULL, '2018-11-06 05:13:02', '2018-11-06 05:13:02');

-- --------------------------------------------------------

--
-- Table structure for table `asset_categories`
--

CREATE TABLE `asset_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `asset_categories`
--

INSERT INTO `asset_categories` (`id`, `parent_id`, `name`, `api_name`, `plural`, `slug`, `prefix`, `sl`, `is_active`, `is_default`, `sort_order`, `created_at`, `updated_at`) VALUES
(6, 0, 'Electronics', '', '', '', '', '', 1, 0, 1, '2018-11-06 05:11:40', '2018-11-06 05:11:40'),
(7, 0, 'Softwares', '', '', '', '', '', 1, 0, 1, '2018-11-06 05:11:46', '2018-11-06 05:11:46');

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `is_present` tinyint(1) NOT NULL DEFAULT '1',
  `total_time` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_account_id` int(10) UNSIGNED DEFAULT NULL,
  `contact_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `next_date` date NOT NULL,
  `last_paid_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `currency` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `net_amount` decimal(16,8) NOT NULL,
  `recurring_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remind_days_before` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `add_transaction_automatically` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_paid` tinyint(1) NOT NULL DEFAULT '0',
  `is_skipped` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `title`, `from_account_id`, `contact_id`, `category_id`, `start_date`, `next_date`, `last_paid_date`, `end_date`, `currency`, `net_amount`, `recurring_type`, `website`, `remind_days_before`, `add_transaction_automatically`, `is_active`, `is_paid`, `is_skipped`, `created_at`, `updated_at`) VALUES
(1, 'City Of Houston', 51, NULL, 45, NULL, '2020-06-29', NULL, NULL, 'USD', '610.80000000', 'Monthly', 'www.houstonwater.org', 0, 0, 1, 0, 0, '2020-06-30 12:20:53', '2020-06-30 12:21:43'),
(2, 'City Of Houston', 51, NULL, 45, NULL, '2020-07-29', NULL, NULL, 'USD', '123.00000000', 'Monthly', 'www.houstonwater.org', 0, 0, 1, 0, 0, '2020-06-30 12:22:34', '2020-06-30 12:22:34'),
(3, 'city of houston', 51, NULL, 45, NULL, '2020-07-02', NULL, NULL, 'USD', '100.00000000', 'Monthly', NULL, 0, 0, 1, 0, 0, '2020-06-30 13:30:05', '2020-06-30 13:30:05'),
(4, 'Amigo Energy ', 50, 51, 45, NULL, '2020-07-31', NULL, NULL, 'USD', '562.32000000', 'Monthly', NULL, 0, 0, 1, 0, 0, '2020-07-27 13:33:17', '2020-07-27 13:33:17');

-- --------------------------------------------------------

--
-- Table structure for table `clx_integrations`
--

CREATE TABLE `clx_integrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clx_projects`
--

CREATE TABLE `clx_projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `proposal_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `contact_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `project_manager_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `estimate_finish_date` date DEFAULT NULL,
  `actual_finish_date` date DEFAULT NULL,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `currency` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` decimal(16,8) DEFAULT NULL,
  `budget` decimal(16,8) DEFAULT NULL,
  `logged_seconds` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `total_expense` decimal(16,8) DEFAULT NULL,
  `owner_id` int(10) UNSIGNED DEFAULT NULL,
  `manager_id` int(10) UNSIGNED DEFAULT NULL,
  `contact_can_view_task` tinyint(1) NOT NULL DEFAULT '0',
  `contact_can_create_task` tinyint(1) NOT NULL DEFAULT '0',
  `contact_can_edit_task` tinyint(1) NOT NULL DEFAULT '0',
  `contact_can_comment` tinyint(1) NOT NULL DEFAULT '0',
  `contact_can_view_time` tinyint(1) NOT NULL DEFAULT '0',
  `contact_can_upload_file` tinyint(1) NOT NULL DEFAULT '0',
  `contact_can_discuss` tinyint(1) NOT NULL DEFAULT '0',
  `contact_can_view_timesheet` tinyint(1) NOT NULL DEFAULT '0',
  `contact_can_view_activity_log` tinyint(1) NOT NULL DEFAULT '0',
  `contact_can_view_members` tinyint(1) NOT NULL DEFAULT '0',
  `tab_tasks` tinyint(1) NOT NULL DEFAULT '1',
  `tab_timesheet` tinyint(1) NOT NULL DEFAULT '1',
  `tab_milestones` tinyint(1) NOT NULL DEFAULT '1',
  `tab_files` tinyint(1) NOT NULL DEFAULT '1',
  `tab_discussions` tinyint(1) NOT NULL DEFAULT '1',
  `tab_gantt_view` tinyint(1) NOT NULL DEFAULT '1',
  `tab_tickets` tinyint(1) NOT NULL DEFAULT '1',
  `tab_invoices` tinyint(1) NOT NULL DEFAULT '1',
  `tab_proposals` tinyint(1) NOT NULL DEFAULT '1',
  `tab_members` tinyint(1) NOT NULL DEFAULT '1',
  `tab_calendar` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clx_shared_preferences`
--

CREATE TABLE `clx_shared_preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `relation_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relation_id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `credit_cards`
--

CREATE TABLE `credit_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `contact_id` int(10) UNSIGNED NOT NULL,
  `card_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_holder_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_number` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiry_month` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiry_year` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cvv` char(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `credit_cards`
--

INSERT INTO `credit_cards` (`id`, `contact_id`, `card_type`, `card_holder_name`, `card_number`, `expiry_month`, `expiry_year`, `cvv`, `created_at`, `updated_at`) VALUES
(1, 294, '', 'Maria Elizabeth', '424242424242424242', '07', '22', '456', '2018-04-23 14:17:45', '2018-04-23 18:21:36');

-- --------------------------------------------------------

--
-- Table structure for table `crm_accounts`
--

CREATE TABLE `crm_accounts` (
  `id` int(11) NOT NULL,
  `account` varchar(200) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `company` varchar(200) DEFAULT NULL,
  `business_number` varchar(200) DEFAULT NULL,
  `jobtitle` varchar(100) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `o` int(11) DEFAULT '0',
  `phone` varchar(100) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zip` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `balance` decimal(16,2) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `notes` text,
  `options` text,
  `tags` text,
  `password` text,
  `token` text,
  `ts` text,
  `img` varchar(100) DEFAULT NULL,
  `web` varchar(200) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `google` varchar(100) DEFAULT NULL,
  `linkedin` varchar(100) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `skype` varchar(100) DEFAULT NULL,
  `tax_number` varchar(100) DEFAULT NULL,
  `entity_number` varchar(100) DEFAULT NULL,
  `currency` int(11) DEFAULT '0',
  `pmethod` varchar(100) DEFAULT NULL,
  `autologin` varchar(100) DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `lastloginip` varchar(100) DEFAULT NULL,
  `stage` varchar(50) DEFAULT NULL,
  `timezone` varchar(50) DEFAULT NULL,
  `isp` varchar(100) DEFAULT NULL,
  `lat` varchar(50) DEFAULT NULL,
  `lon` varchar(50) DEFAULT NULL,
  `gname` varchar(200) DEFAULT NULL,
  `gid` int(11) NOT NULL DEFAULT '0',
  `sid` varchar(200) DEFAULT NULL,
  `role` varchar(200) DEFAULT NULL,
  `country_code` varchar(20) DEFAULT NULL,
  `country_idd` varchar(20) DEFAULT NULL,
  `signed_up_by` varchar(100) DEFAULT NULL,
  `signed_up_ip` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `ct` varchar(200) DEFAULT NULL,
  `assistant` varchar(200) DEFAULT NULL,
  `asst_phone` varchar(100) DEFAULT NULL,
  `second_email` varchar(100) DEFAULT NULL,
  `second_phone` varchar(100) DEFAULT NULL,
  `taxexempt` varchar(50) DEFAULT NULL,
  `latefeeoveride` varchar(50) DEFAULT NULL,
  `overideduenotices` varchar(50) DEFAULT NULL,
  `separateinvoices` varchar(50) DEFAULT NULL,
  `disableautocc` varchar(50) DEFAULT NULL,
  `billingcid` int(10) NOT NULL DEFAULT '0',
  `securityqid` int(10) NOT NULL DEFAULT '0',
  `securityqans` text,
  `cardtype` varchar(200) DEFAULT NULL,
  `cardlastfour` varchar(20) DEFAULT NULL,
  `cardnum` text,
  `startdate` varchar(50) DEFAULT NULL,
  `expdate` varchar(50) DEFAULT NULL,
  `issuenumber` varchar(200) DEFAULT NULL,
  `bankname` varchar(200) DEFAULT NULL,
  `banktype` varchar(200) DEFAULT NULL,
  `bankcode` varchar(200) DEFAULT NULL,
  `bankacct` varchar(200) DEFAULT NULL,
  `gatewayid` int(10) NOT NULL DEFAULT '0',
  `language` text,
  `pwresetkey` varchar(100) DEFAULT NULL,
  `emailoptout` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `pwresetexpiry` datetime DEFAULT NULL,
  `is_email_verified` int(1) NOT NULL DEFAULT '0',
  `is_phone_veirifed` int(1) NOT NULL DEFAULT '0',
  `photo_id_type` varchar(100) DEFAULT NULL,
  `photo_id` varchar(100) DEFAULT NULL,
  `type` varchar(200) NOT NULL DEFAULT 'Customer',
  `customer_type` varchar(200) NOT NULL DEFAULT '',
  `tax_exempt` int(1) NOT NULL DEFAULT '0',
  `tax_id` varchar(200) NOT NULL DEFAULT '',
  `tax_id_expiry` date DEFAULT NULL,
  `drive` varchar(50) DEFAULT NULL,
  `workspace_id` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(100) DEFAULT NULL,
  `display_name` varchar(200) DEFAULT NULL,
  `secondary_email` varchar(200) DEFAULT NULL,
  `secondary_phone` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_accounts`
--

INSERT INTO `crm_accounts` (`id`, `account`, `fname`, `lname`, `company`, `business_number`, `jobtitle`, `cid`, `o`, `phone`, `fax`, `email`, `username`, `address`, `city`, `state`, `zip`, `country`, `balance`, `status`, `notes`, `options`, `tags`, `password`, `token`, `ts`, `img`, `web`, `facebook`, `google`, `linkedin`, `twitter`, `skype`, `tax_number`, `entity_number`, `currency`, `pmethod`, `autologin`, `lastlogin`, `lastloginip`, `stage`, `timezone`, `isp`, `lat`, `lon`, `gname`, `gid`, `sid`, `role`, `country_code`, `country_idd`, `signed_up_by`, `signed_up_ip`, `dob`, `ct`, `assistant`, `asst_phone`, `second_email`, `second_phone`, `taxexempt`, `latefeeoveride`, `overideduenotices`, `separateinvoices`, `disableautocc`, `billingcid`, `securityqid`, `securityqans`, `cardtype`, `cardlastfour`, `cardnum`, `startdate`, `expdate`, `issuenumber`, `bankname`, `banktype`, `bankcode`, `bankacct`, `gatewayid`, `language`, `pwresetkey`, `emailoptout`, `created_at`, `updated_at`, `pwresetexpiry`, `is_email_verified`, `is_phone_veirifed`, `photo_id_type`, `photo_id`, `type`, `customer_type`, `tax_exempt`, `tax_id`, `tax_id_expiry`, `drive`, `workspace_id`, `parent_id`, `code`, `display_name`, `secondary_email`, `secondary_phone`) VALUES
(1, '1-800-RADIATOR', '', '', '', NULL, '', 0, 0, '713-643-8822', '', 'demo@example.com', '', '3620 WILLOW BEND BLVD', 'Houston', 'Texas', '77054', 'United States', '0.00', 'Active', '', NULL, '', '$2y$10$9xV1gC1UCIuRql71E38l5.ZSCuBz0aNycQUvlH2bLnwb1djlECW8e', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'Supplier', '', 0, '', NULL, NULL, 0, 0, '', NULL, '', NULL),
(2, 'A & K', '', '', '', NULL, '', 0, 0, '281-565-7100', '', 'jane@example.com', '', '4003 GREEN BRIAR STE B', 'Houston', 'Texas', '77477', 'United States', '0.00', 'Active', '', NULL, '', '$2y$10$/ytsuCfpKXnehiPHcJJY9eluKmYxv6ds72CfCPYdDF84PM1g3/Ip.', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'Supplier', '', 0, '', NULL, NULL, 0, 0, '', NULL, '', NULL),
(3, 'ACS OIL RECOVERY', '', '', '', NULL, '', 0, 0, '936-242-6875', '', '', '', '13946 HWY 75 N', 'Houston', 'Texas', '77378', 'United States', '0.00', 'Active', '', NULL, '', '$2y$10$e5F5Kn.FVprmW1AjHh5PC.4K3z5hFIjwsxwdUW6C7dhCISVt5FWxK', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'Supplier', '', 0, '', NULL, NULL, 0, 0, '', NULL, '', NULL),
(4, 'ADVANCE AUTO PARTS', '', '', '', NULL, '', 0, 0, '281-561-9091', '', '', '', '11900 BISSONNET RD', 'Houston', 'Texas', '77099', 'United States', '0.00', 'Active', '', NULL, '', '$2y$10$hXK9LeCS1krthamFBFRhI.2yWzgu1DyM8ZijaSgHiCGaS1wSRah9C', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'Supplier', '', 0, '', NULL, NULL, 0, 0, '', NULL, '', NULL),
(41, 'TIRE HUB', '', '', '', '', '', 0, 0, '713-461-0635', '', '', '', '', 'Houston', 'Texas', '', 'United States', '0.00', 'Active', '', NULL, '', '$2y$10$fMqIa98HFCpySpyECjnFc.OcBCzmKXSPpYnYlD.gkQuLWVakcLAJC', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tires', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'Supplier', '', 0, '', NULL, NULL, 0, 0, '', NULL, '', NULL),
(52, 'NTW', '', '', '', '', '', 0, 3, '', '', '', '', '', '', '', '', 'United States', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tires', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-06-23 13:37:50', NULL, NULL, 0, 0, NULL, NULL, 'Supplier', '', 0, '', NULL, '1592933870qp6yftsfrjnc', 0, 0, 'SUP-00006', NULL, '', NULL),
(55, 'Test Customer', '', '', '', '', '', 0, 1, '', '', '', NULL, '', '', '', '', 'United States', '0.00', 'Active', '', NULL, '', '', 'fc3ci728dr8nom9j1b433b00d9f0442d69d7d581c962c52e4ad3', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 's89misa46vyvjjgbnyj7551594668547', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-07-01 12:13:14', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '', 0, '', NULL, '1593619994dejpxx3bjasf', 0, 0, 'CUS-00001', NULL, '', NULL),
(64, 'Training - Customer', '', '', 'Training - Company', '', '', 59, 2, '', '', 'support@autohiveinc.com', NULL, '9407 Alberne Dr', 'Houston', 'TX', '77074', 'United States', '0.00', 'Active', '', NULL, '', '', '14gk57uizpspj2zxcagmdaa701186ad98524c1d44c8b0280bf3a', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, '9k1otayz5h0gwh4nbl86641595449705', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-07-22 16:25:56', NULL, NULL, 0, 0, NULL, NULL, 'Customer', 'Private account', 0, '123456778', '2020-09-22', '1595449556w2560nypvicj', 0, 0, 'CUS-00001', NULL, '', NULL),
(65, 'Training - Vendor', '', '', 'Training - Vendor', '', '', 60, 2, '', '', 'fezfez23@gmail.com', NULL, '9407 Alberene Dr.', 'Houston', 'TX', '77074', 'United States', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, '6cokpmhmo83h2g56amgu651595449852', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mechanic & Body', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-07-22 16:30:31', NULL, NULL, 0, 0, NULL, NULL, 'Supplier', '', 1, '0', '2020-07-22', '15954498311xorroviqtpj', 0, 0, 'SUP-00003', NULL, '', NULL),
(68, 'Default or missing account', '', '', 'Default or missing account', '', '', 61, 2, '', '', '', NULL, '', '', '', '', 'United States', '0.00', 'Active', '', NULL, '', '$2y$10$PRz96WEyi7/MKsNzrpIFTOGBCySuHMpUXMVQd1c9TxM3ZGlA/z0qa', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-07-28 16:08:30', NULL, NULL, 0, 0, NULL, NULL, 'Supplier', '', 1, '0', '2020-07-28', '15959669106a5rkerfkzkv', 0, 0, 'SUP-00004', NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `crm_customfields`
--

CREATE TABLE `crm_customfields` (
  `id` int(10) NOT NULL,
  `ctype` text,
  `relid` int(10) NOT NULL DEFAULT '0',
  `fieldname` text,
  `fieldtype` text,
  `description` text,
  `fieldoptions` text,
  `regexpr` text,
  `adminonly` text,
  `required` text,
  `showorder` text,
  `showinvoice` text,
  `sorder` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `crm_customfieldsvalues`
--

CREATE TABLE `crm_customfieldsvalues` (
  `id` int(10) NOT NULL,
  `fieldid` int(10) NOT NULL,
  `relid` int(10) NOT NULL,
  `fvalue` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_customfieldsvalues`
--

INSERT INTO `crm_customfieldsvalues` (`id`, `fieldid`, `relid`, `fvalue`) VALUES
(1, 1, 63, ''),
(2, 1, 64, ''),
(3, 1, 65, ''),
(4, 1, 66, ''),
(5, 1, 67, ''),
(6, 1, 68, '');

-- --------------------------------------------------------

--
-- Table structure for table `crm_groups`
--

CREATE TABLE `crm_groups` (
  `id` int(11) NOT NULL,
  `gname` varchar(200) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `discount` varchar(50) DEFAULT NULL,
  `parent` varchar(200) DEFAULT NULL,
  `pid` int(10) DEFAULT NULL,
  `exempt` text,
  `description` text,
  `separateinvoices` text,
  `sorder` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_groups`
--

INSERT INTO `crm_groups` (`id`, `gname`, `color`, `discount`, `parent`, `pid`, `exempt`, `description`, `separateinvoices`, `sorder`, `created_at`, `updated_at`) VALUES
(1, 'Mechanic & Body', '', '', '', 0, '', '', '', 0, NULL, NULL),
(2, 'Dealers', '', '', '', 0, '', '', '', 0, NULL, NULL),
(3, 'Suppliers', '', '', '', 0, '', '', '', 0, NULL, NULL),
(4, 'Tires', '', '', '', 0, '', '', '', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `crm_industries`
--

CREATE TABLE `crm_industries` (
  `id` int(11) NOT NULL,
  `industry` varchar(200) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `is_default` int(1) NOT NULL DEFAULT '0',
  `sorder` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_industries`
--

INSERT INTO `crm_industries` (`id`, `industry`, `is_active`, `is_default`, `sorder`) VALUES
(1, 'Agriculture', 1, 0, 0),
(2, 'Apparel', 1, 0, 0),
(3, 'Banking', 1, 0, 0),
(4, 'Biotechnology', 1, 0, 0),
(5, 'Chemicals', 1, 0, 0),
(6, 'Communications', 1, 0, 0),
(7, 'Construction', 1, 0, 0),
(8, 'Consulting', 1, 0, 0),
(9, 'Education', 1, 0, 0),
(10, 'Electronics', 1, 0, 0),
(11, 'Energy', 1, 0, 0),
(12, 'Engineering', 1, 0, 0),
(13, 'Entertainment', 1, 0, 0),
(14, 'Environmental', 1, 0, 0),
(15, 'Finance', 1, 0, 0),
(16, 'Food & Beverage', 1, 0, 0),
(17, 'Government', 1, 0, 0),
(18, 'Healthcare', 1, 0, 0),
(19, 'Hospitality', 1, 0, 0),
(20, 'Insurance', 1, 0, 0),
(21, 'Machinery', 1, 0, 0),
(22, 'Manufacturing', 1, 0, 0),
(23, 'Media', 1, 0, 0),
(24, 'Not For Profit', 1, 0, 0),
(25, 'Other', 1, 0, 0),
(26, 'Recreation', 1, 0, 0),
(27, 'Retail', 1, 0, 0),
(28, 'Shipping', 1, 0, 0),
(29, 'Technology', 1, 0, 0),
(30, 'Telecommunications', 1, 0, 0),
(31, 'Transportation', 1, 0, 0),
(32, 'Utilities', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `crm_leads`
--

CREATE TABLE `crm_leads` (
  `id` int(11) NOT NULL,
  `secret` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `o` varchar(200) DEFAULT NULL,
  `oid` int(11) NOT NULL DEFAULT '0',
  `salutation` varchar(200) DEFAULT NULL,
  `first_name` varchar(200) DEFAULT NULL,
  `middle_name` varchar(200) DEFAULT NULL,
  `last_name` varchar(200) DEFAULT NULL,
  `suffix` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `company` varchar(200) DEFAULT NULL,
  `company_id` int(11) NOT NULL DEFAULT '0',
  `website` varchar(200) DEFAULT NULL,
  `industry` varchar(200) DEFAULT NULL,
  `employees` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `added_from` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `street` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `viewed_at` datetime DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `iid` int(11) NOT NULL DEFAULT '0',
  `rid` int(11) NOT NULL DEFAULT '0',
  `sorder` int(11) NOT NULL DEFAULT '0',
  `assigned` int(11) NOT NULL DEFAULT '0',
  `last_contact` datetime DEFAULT NULL,
  `last_contact_by` varchar(200) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `public` int(1) NOT NULL DEFAULT '0',
  `ratings` varchar(50) DEFAULT NULL,
  `flag` int(1) NOT NULL DEFAULT '0',
  `lost` int(1) NOT NULL DEFAULT '0',
  `junk` int(1) NOT NULL DEFAULT '0',
  `trash` int(1) NOT NULL DEFAULT '0',
  `archived` int(1) NOT NULL DEFAULT '0',
  `memo` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `crm_lead_sources`
--

CREATE TABLE `crm_lead_sources` (
  `id` int(11) NOT NULL,
  `sname` varchar(200) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `is_default` int(1) NOT NULL DEFAULT '1',
  `sorder` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_lead_sources`
--

INSERT INTO `crm_lead_sources` (`id`, `sname`, `is_active`, `is_default`, `sorder`) VALUES
(1, 'Advertisement', 1, 1, 0),
(2, 'Customer Event', 1, 1, 0),
(3, 'Employee Referral', 1, 1, 0),
(4, 'Google AdWords', 1, 1, 0),
(5, 'Other', 1, 1, 0),
(6, 'Partner', 1, 1, 0),
(7, 'Purchased List', 1, 1, 0),
(8, 'Trade Show', 1, 1, 0),
(9, 'Webinar', 1, 1, 0),
(10, 'Website', 1, 1, 0),
(11, 'Facebook', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `crm_lead_status`
--

CREATE TABLE `crm_lead_status` (
  `id` int(11) NOT NULL,
  `sname` varchar(200) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `is_default` int(1) NOT NULL DEFAULT '0',
  `is_converted` int(1) NOT NULL DEFAULT '0',
  `sorder` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_lead_status`
--

INSERT INTO `crm_lead_status` (`id`, `sname`, `is_active`, `is_default`, `is_converted`, `sorder`) VALUES
(1, 'Unqualified', 1, 0, 0, 0),
(2, 'New', 1, 1, 0, 0),
(3, 'Working', 1, 0, 0, 0),
(4, 'Nurturing', 1, 0, 0, 0),
(5, 'Qualified', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `crm_salutations`
--

CREATE TABLE `crm_salutations` (
  `id` int(11) NOT NULL,
  `sname` varchar(200) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `is_default` int(1) NOT NULL DEFAULT '0',
  `sorder` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_salutations`
--

INSERT INTO `crm_salutations` (`id`, `sname`, `is_active`, `is_default`, `sorder`) VALUES
(1, 'Mr.', 1, 0, 0),
(2, 'Ms.', 1, 0, 0),
(3, 'Mrs.', 1, 0, 0),
(4, 'Dr.', 1, 0, 0),
(5, 'Prof.', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_hired` date DEFAULT NULL,
  `department_id` int(10) UNSIGNED DEFAULT NULL,
  `manager_id` int(10) UNSIGNED DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_frequency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(16,8) NOT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legal_name_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legal_name_first` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legal_name_mi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legal_name_last` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banking_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birht` date DEFAULT NULL,
  `marital_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_citizen` tinyint(1) NOT NULL DEFAULT '1',
  `ethnicity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_i9_form` tinyint(1) DEFAULT NULL,
  `work_authorization_expires` date DEFAULT NULL,
  `address_line_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_name_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_phone_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_relation_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_name_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_phone_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_relation_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_day_worked` date DEFAULT NULL,
  `last_day_on_benefits` date DEFAULT NULL,
  `last_day_on_payroll` date DEFAULT NULL,
  `termination_type` date DEFAULT NULL,
  `termination_reason` date DEFAULT NULL,
  `is_recommended` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `job_title`, `date_hired`, `department_id`, `manager_id`, `image`, `pay_frequency`, `currency`, `amount`, `employee_id`, `legal_name_title`, `legal_name_first`, `legal_name_mi`, `legal_name_last`, `banking_name`, `ssn`, `gender`, `date_of_birht`, `marital_status`, `is_citizen`, `ethnicity`, `has_i9_form`, `work_authorization_expires`, `address_line_1`, `address_line_2`, `city`, `state`, `zip`, `country`, `phone`, `email`, `work_phone`, `work_mobile`, `work_fax`, `cc_email`, `other`, `emergency_contact_name_1`, `emergency_contact_phone_1`, `emergency_contact_relation_1`, `emergency_contact_name_2`, `emergency_contact_phone_2`, `emergency_contact_relation_2`, `last_day_worked`, `last_day_on_benefits`, `last_day_on_payroll`, `termination_type`, `termination_reason`, `is_recommended`, `is_active`, `facebook`, `google`, `linkedin`, `skype`, `twitter`, `summary`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 'Test Staff', 'Mechanic', '2020-06-25', NULL, NULL, NULL, 'Monthly', 'USD', '2500.00000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '9407 Alberene D', NULL, ' Houston', 'Tx', '77074', 'United States', '(832) 672-6690', 'admin@autohiveinc.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, '', NULL, '', '', NULL, '2020-06-25 14:34:48', '2020-06-25 14:34:48');

-- --------------------------------------------------------

--
-- Table structure for table `end_users`
--

CREATE TABLE `end_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_types`
--

CREATE TABLE `expense_types` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sorder` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `ib_assets`
--

CREATE TABLE `ib_assets` (
  `id` int(11) NOT NULL,
  `asset_name` varchar(200) DEFAULT NULL,
  `price` decimal(14,2) NOT NULL DEFAULT '0.00',
  `date_purchased` date DEFAULT NULL,
  `warranty_period` date DEFAULT NULL,
  `image` text,
  `description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ib_doc_rel`
--

CREATE TABLE `ib_doc_rel` (
  `id` int(11) NOT NULL,
  `rtype` varchar(100) NOT NULL DEFAULT 'contact',
  `rid` int(11) NOT NULL DEFAULT '0',
  `did` int(11) NOT NULL DEFAULT '0',
  `can_download` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ib_invoice_access_log`
--

CREATE TABLE `ib_invoice_access_log` (
  `id` int(11) NOT NULL,
  `lid` int(11) NOT NULL DEFAULT '0',
  `cid` int(11) NOT NULL DEFAULT '0',
  `iid` int(11) NOT NULL DEFAULT '0',
  `company_id` int(11) NOT NULL DEFAULT '0',
  `customer` varchar(200) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `browser` varchar(200) DEFAULT NULL,
  `referer` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `postal_code` varchar(50) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `country_iso` varchar(20) DEFAULT NULL,
  `viewed_at` varchar(200) DEFAULT NULL,
  `lat` varchar(100) DEFAULT NULL,
  `lon` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ib_invoice_access_log`
--

INSERT INTO `ib_invoice_access_log` (`id`, `lid`, `cid`, `iid`, `company_id`, `customer`, `ip`, `browser`, `referer`, `city`, `postal_code`, `country`, `country_iso`, `viewed_at`, `lat`, `lon`) VALUES
(1, 0, 0, 1, 0, 'LUCKY MANDANAYAKA', '73.166.178.188', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'https://admin.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-06-22 20:01:28', NULL, NULL),
(2, 0, 0, 6, 0, 'AUTOHIVE', '73.166.178.188', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'https://admin.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-06-30 17:17:01', NULL, NULL),
(3, 0, 0, 12, 0, 'COLONIAL LOGISTICS LLC', '119.153.155.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'https://admin.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-07-01 14:31:46', NULL, NULL),
(4, 0, 0, 8, 0, 'DOC', '73.155.89.182', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:77.0) Gecko/20100101 Firefox/77.0', 'https://admin.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-07-01 18:07:31', NULL, NULL),
(5, 0, 0, 7, 0, 'DOC', '73.155.89.182', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:77.0) Gecko/20100101 Firefox/77.0', 'https://admin.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-07-01 18:07:40', NULL, NULL),
(6, 0, 0, 20, 0, 'CARZRUS', '73.136.102.251', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'https://admin.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-07-01 18:11:41', NULL, NULL),
(7, 0, 0, 20, 0, 'CARZRUS', '73.136.102.251', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'https://admin.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-07-01 18:33:13', NULL, NULL),
(8, 0, 0, 17, 0, 'CARZRUS', '73.136.102.251', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'https://admin.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-07-01 18:33:25', NULL, NULL),
(9, 0, 0, 22, 0, 'COLONIAL LOGISTICS LLC', '111.119.187.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'https://admin.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-07-03 07:42:38', NULL, NULL),
(10, 0, 0, 8, 0, 'DOC', '73.155.89.182', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15', 'https://admin.autohiveinc.com/?ng=client/invoices/', '', NULL, '', NULL, '2020-07-04 18:28:20', NULL, NULL),
(11, 0, 0, 7, 0, 'DOC', '73.155.89.182', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15', 'https://admin.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-07-04 18:29:09', NULL, NULL),
(12, 0, 0, 8, 0, 'DOC', '73.155.89.182', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15', 'https://admin.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-07-04 18:31:34', NULL, NULL),
(13, 0, 0, 37, 0, 'COLONIAL LOGISTICS LLC', '39.46.206.52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'https://admin.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-07-06 10:34:45', NULL, NULL),
(14, 0, 0, 10, 0, 'COLONIAL LOGISTICS LLC', '39.46.206.52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'https://admin.autohiveinc.com/?ng=client/invoices/', '', NULL, '', NULL, '2020-07-06 10:41:59', NULL, NULL),
(15, 0, 0, 9, 0, 'COLONIAL LOGISTICS LLC', '39.46.206.52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'https://admin.autohiveinc.com/?ng=client/invoices/', '', NULL, '', NULL, '2020-07-06 10:43:01', NULL, NULL),
(16, 0, 0, 10, 0, 'COLONIAL LOGISTICS LLC', '39.46.206.52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'https://admin.autohiveinc.com/?ng=client/invoices/', '', NULL, '', NULL, '2020-07-06 10:58:22', NULL, NULL),
(17, 0, 0, 37, 0, 'COLONIAL LOGISTICS LLC', '39.46.206.52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'https://admin.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-07-06 12:28:03', NULL, NULL),
(18, 0, 0, 37, 0, 'COLONIAL LOGISTICS LLC', '39.46.206.52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'https://admin.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-07-06 12:31:02', NULL, NULL),
(19, 0, 0, 60, 0, 'COLONIAL LOGISTICS LLC', '39.46.233.71', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'https://admin.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-07-08 10:06:40', NULL, NULL),
(20, 0, 0, 61, 0, 'CARZRUS', '73.136.102.251', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'https://admin.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-07-10 15:53:22', NULL, NULL),
(21, 0, 0, 98, 0, 'Dr. William Green', '98.200.11.105', 'WhatsApp/2.20.194.16 A', '', '', NULL, '', NULL, '2020-07-22 14:11:02', NULL, NULL),
(22, 0, 0, 98, 0, 'Dr. William Green', '72.255.42.118', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '', '', NULL, '', NULL, '2020-07-22 14:18:27', NULL, NULL),
(23, 0, 0, 123, 0, 'COLONIAL LOGISTICS LLC', '157.55.39.75', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/534+ (KHTML, like Gecko) BingPreview/1.0b', '', '', NULL, '', NULL, '2020-07-31 08:46:14', NULL, NULL),
(24, 0, 0, 123, 0, 'COLONIAL LOGISTICS LLC', '157.55.39.75', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/534+ (KHTML, like Gecko) BingPreview/1.0b', '', '', NULL, '', NULL, '2020-07-31 08:46:27', NULL, NULL),
(25, 0, 0, 123, 0, 'COLONIAL LOGISTICS LLC', '157.55.39.75', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/534+ (KHTML, like Gecko) BingPreview/1.0b', '', '', NULL, '', NULL, '2020-07-31 09:25:35', NULL, NULL),
(26, 0, 0, 145, 0, 'COLONIAL LOGISTICS LLC', '119.153.177.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/invoices/', '', NULL, '', NULL, '2020-08-05 13:59:06', NULL, NULL),
(27, 0, 0, 144, 0, 'COLONIAL LOGISTICS LLC', '119.153.177.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/invoices/', '', NULL, '', NULL, '2020-08-05 14:01:05', NULL, NULL),
(28, 0, 0, 141, 0, 'COLONIAL LOGISTICS LLC', '119.153.177.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/invoices/', '', NULL, '', NULL, '2020-08-05 14:02:59', NULL, NULL),
(29, 0, 0, 128, 0, 'COLONIAL LOGISTICS LLC', '157.55.39.248', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/534+ (KHTML, like Gecko) BingPreview/1.0b', '', '', NULL, '', NULL, '2020-08-06 13:55:02', NULL, NULL),
(30, 0, 0, 135, 0, 'COLONIAL LOGISTICS LLC', '39.46.242.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/invoices/', '', NULL, '', NULL, '2020-08-06 13:55:45', NULL, NULL),
(31, 0, 0, 133, 0, 'COLONIAL LOGISTICS LLC', '39.46.242.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/invoices/', '', NULL, '', NULL, '2020-08-06 13:57:58', NULL, NULL),
(32, 0, 0, 128, 0, 'COLONIAL LOGISTICS LLC', '39.46.242.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/invoices/', '', NULL, '', NULL, '2020-08-06 14:07:42', NULL, NULL),
(33, 0, 0, 128, 0, 'COLONIAL LOGISTICS LLC', '157.55.39.248', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/534+ (KHTML, like Gecko) BingPreview/1.0b', '', '', NULL, '', NULL, '2020-08-06 14:08:25', NULL, NULL),
(34, 0, 0, 119, 0, 'COLONIAL LOGISTICS LLC', '157.55.39.106', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/534+ (KHTML, like Gecko) BingPreview/1.0b', '', '', NULL, '', NULL, '2020-08-06 14:20:45', NULL, NULL),
(35, 0, 0, 123, 0, 'COLONIAL LOGISTICS LLC', '39.46.242.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/invoices/', '', NULL, '', NULL, '2020-08-06 14:28:40', NULL, NULL),
(36, 0, 0, 60, 0, 'COLONIAL LOGISTICS LLC', '39.46.242.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/invoices/', '', NULL, '', NULL, '2020-08-06 14:58:27', NULL, NULL),
(37, 0, 0, 66, 0, 'COLONIAL LOGISTICS LLC', '39.46.242.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/invoices/', '', NULL, '', NULL, '2020-08-06 15:24:21', NULL, NULL),
(38, 0, 0, 119, 0, 'COLONIAL LOGISTICS LLC', '157.55.39.121', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/534+ (KHTML, like Gecko) BingPreview/1.0b', '', '', NULL, '', NULL, '2020-08-07 09:28:52', NULL, NULL),
(39, 0, 0, 119, 0, 'COLONIAL LOGISTICS LLC', '157.55.39.121', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/534+ (KHTML, like Gecko) BingPreview/1.0b', '', '', NULL, '', NULL, '2020-08-07 09:28:55', NULL, NULL),
(40, 0, 0, 119, 0, 'COLONIAL LOGISTICS LLC', '157.55.39.121', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/534+ (KHTML, like Gecko) BingPreview/1.0b', '', '', NULL, '', NULL, '2020-08-07 10:08:09', NULL, NULL),
(41, 0, 0, 128, 0, 'COLONIAL LOGISTICS LLC', '207.46.13.18', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/534+ (KHTML, like Gecko) BingPreview/1.0b', '', '', NULL, '', NULL, '2020-08-07 10:08:12', NULL, NULL),
(42, 0, 0, 119, 0, 'COLONIAL LOGISTICS LLC', '157.55.39.121', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/534+ (KHTML, like Gecko) BingPreview/1.0b', '', '', NULL, '', NULL, '2020-08-07 10:08:12', NULL, NULL),
(43, 0, 0, 162, 0, 'Dr. William Green', '73.155.89.182', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.2 Safari/605.1.15', 'https://iah.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-08-08 18:39:25', NULL, NULL),
(44, 0, 0, 168, 0, 'COLONIAL LOGISTICS LLC', '39.46.197.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-08-11 13:18:41', NULL, NULL),
(45, 0, 0, 150, 0, 'COLONIAL LOGISTICS LLC', '39.46.197.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-08-11 13:20:25', NULL, NULL),
(46, 0, 0, 168, 0, 'COLONIAL LOGISTICS LLC', '39.46.245.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/invoices/', '', NULL, '', NULL, '2020-08-13 11:47:39', NULL, NULL),
(47, 0, 0, 119, 0, 'COLONIAL LOGISTICS LLC', '39.46.245.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/invoices/', '', NULL, '', NULL, '2020-08-13 13:00:22', NULL, NULL),
(48, 0, 0, 144, 0, 'COLONIAL LOGISTICS LLC', '39.46.245.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/invoices/', '', NULL, '', NULL, '2020-08-13 13:00:37', NULL, NULL),
(49, 0, 0, 144, 0, 'COLONIAL LOGISTICS LLC', '39.46.245.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/invoices/', '', NULL, '', NULL, '2020-08-13 13:01:06', NULL, NULL),
(50, 0, 0, 168, 0, 'COLONIAL LOGISTICS LLC', '39.46.245.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/invoices/', '', NULL, '', NULL, '2020-08-13 13:01:16', NULL, NULL),
(51, 0, 0, 177, 0, 'COLONIAL LOGISTICS LLC', '39.46.245.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/invoices/', '', NULL, '', NULL, '2020-08-13 13:05:18', NULL, NULL),
(52, 0, 0, 178, 0, 'COLONIAL LOGISTICS LLC', '39.46.245.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/invoices/', '', NULL, '', NULL, '2020-08-13 13:05:28', NULL, NULL),
(53, 0, 0, 179, 0, 'COLONIAL LOGISTICS LLC', '39.46.245.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/invoices/', '', NULL, '', NULL, '2020-08-13 13:06:11', NULL, NULL),
(54, 0, 0, 179, 0, 'COLONIAL LOGISTICS LLC', '39.46.245.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/invoices/', '', NULL, '', NULL, '2020-08-13 13:07:42', NULL, NULL),
(55, 0, 0, 178, 0, 'COLONIAL LOGISTICS LLC', '39.46.245.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/invoices/', '', NULL, '', NULL, '2020-08-13 13:08:39', NULL, NULL),
(56, 0, 0, 177, 0, 'COLONIAL LOGISTICS LLC', '39.46.245.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/invoices/', '', NULL, '', NULL, '2020-08-13 13:09:13', NULL, NULL),
(57, 0, 0, 168, 0, 'COLONIAL LOGISTICS LLC', '39.46.245.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/invoices/', '', NULL, '', NULL, '2020-08-13 13:11:31', NULL, NULL),
(58, 0, 0, 179, 0, 'COLONIAL LOGISTICS LLC', '39.46.238.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/invoices/', '', NULL, '', NULL, '2020-08-15 13:11:35', NULL, NULL),
(59, 0, 0, 179, 0, 'COLONIAL LOGISTICS LLC', '39.46.238.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/invoices/', '', NULL, '', NULL, '2020-08-15 13:11:45', NULL, NULL),
(60, 0, 0, 177, 0, 'COLONIAL LOGISTICS LLC', '119.153.149.242', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/invoices/', '', NULL, '', NULL, '2020-08-17 13:02:11', NULL, NULL),
(61, 0, 0, 178, 0, 'COLONIAL LOGISTICS LLC', '119.153.149.242', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/invoices/', '', NULL, '', NULL, '2020-08-17 13:02:18', NULL, NULL),
(62, 0, 0, 179, 0, 'COLONIAL LOGISTICS LLC', '119.153.149.242', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/invoices/', '', NULL, '', NULL, '2020-08-17 13:02:25', NULL, NULL),
(63, 0, 0, 180, 0, 'COLONIAL LOGISTICS LLC', '119.153.149.242', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/invoices/', '', NULL, '', NULL, '2020-08-17 13:02:31', NULL, NULL),
(64, 0, 0, 168, 0, 'COLONIAL LOGISTICS LLC', '119.153.187.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/invoices/', '', NULL, '', NULL, '2020-08-18 14:14:44', NULL, NULL),
(65, 0, 0, 197, 0, 'COLONIAL LOGISTICS LLC', '119.153.154.50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-08-21 15:44:33', NULL, NULL),
(66, 0, 0, 196, 0, 'COLONIAL LOGISTICS LLC', '119.153.154.50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-08-21 15:44:39', NULL, NULL),
(67, 0, 0, 195, 0, 'COLONIAL LOGISTICS LLC', '119.153.154.50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-08-21 15:44:46', NULL, NULL),
(68, 0, 0, 197, 0, 'COLONIAL LOGISTICS LLC', '119.153.131.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-08-25 14:50:43', NULL, NULL),
(69, 0, 0, 196, 0, 'COLONIAL LOGISTICS LLC', '119.153.131.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-08-25 14:50:51', NULL, NULL),
(70, 0, 0, 195, 0, 'COLONIAL LOGISTICS LLC', '119.153.131.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-08-25 14:50:56', NULL, NULL),
(71, 0, 0, 230, 0, 'COLONIAL LOGISTICS LLC', '119.153.131.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-08-27 09:26:41', NULL, NULL),
(72, 0, 0, 229, 0, 'COLONIAL LOGISTICS LLC', '119.153.131.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-08-27 09:27:56', NULL, NULL),
(73, 0, 0, 228, 0, 'COLONIAL LOGISTICS LLC', '119.153.131.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-08-27 09:28:33', NULL, NULL),
(74, 0, 0, 227, 0, 'COLONIAL LOGISTICS LLC', '119.153.131.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-08-27 09:29:58', NULL, NULL),
(75, 0, 0, 229, 0, 'COLONIAL LOGISTICS LLC', '119.153.131.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-08-27 09:37:53', NULL, NULL),
(76, 0, 0, 230, 0, 'COLONIAL LOGISTICS LLC', '119.153.131.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-08-27 14:12:38', NULL, NULL),
(77, 0, 0, 235, 0, 'COLONIAL LOGISTICS LLC', '119.153.137.82', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-08-29 12:06:10', NULL, NULL),
(78, 0, 0, 235, 0, 'COLONIAL LOGISTICS LLC', '119.153.137.82', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-08-29 12:32:20', NULL, NULL),
(79, 0, 0, 240, 0, 'COLONIAL LOGISTICS LLC', '119.153.137.82', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-08-29 12:54:53', NULL, NULL),
(80, 0, 0, 235, 0, 'COLONIAL LOGISTICS LLC', '119.153.137.82', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-08-29 12:56:35', NULL, NULL),
(81, 0, 0, 240, 0, 'COLONIAL LOGISTICS LLC', '119.153.137.82', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-08-29 12:58:34', NULL, NULL),
(82, 0, 0, 240, 0, 'COLONIAL LOGISTICS LLC', '119.153.144.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-09-01 07:28:08', NULL, NULL),
(83, 0, 0, 235, 0, 'COLONIAL LOGISTICS LLC', '119.153.144.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-09-01 07:28:23', NULL, NULL),
(84, 0, 0, 240, 0, 'COLONIAL LOGISTICS LLC', '119.153.144.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/invoices/', '', NULL, '', NULL, '2020-09-01 08:36:59', NULL, NULL),
(85, 0, 0, 241, 0, 'COLONIAL LOGISTICS LLC', '119.153.144.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'https://iah.autohiveinc.com/?ng=client/dashboard/', '', NULL, '', NULL, '2020-09-01 13:36:45', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ib_kb`
--

CREATE TABLE `ib_kb` (
  `id` int(11) NOT NULL,
  `gid` int(11) DEFAULT NULL,
  `gname` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `groups` text,
  `title` text,
  `slug` text,
  `description` text,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `is_public` int(1) NOT NULL DEFAULT '1',
  `sorder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ib_kb_groups`
--

CREATE TABLE `ib_kb_groups` (
  `id` int(11) NOT NULL,
  `gname` varchar(200) DEFAULT NULL,
  `description` text,
  `status` varchar(200) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `sorder` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ib_kb_rel`
--

CREATE TABLE `ib_kb_rel` (
  `id` int(11) NOT NULL,
  `kbid` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ib_kb_replies`
--

CREATE TABLE `ib_kb_replies` (
  `id` int(11) NOT NULL,
  `kbid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `reply` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inspections`
--

CREATE TABLE `inspections` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` int(11) NOT NULL,
  `charges` int(11) NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inspections`
--

INSERT INTO `inspections` (`id`, `order_id`, `title`, `value`, `charges`, `updated_at`) VALUES
(1, 1, 'Rear Brakes (RB)', 10, 100, '2020-07-13'),
(2, 1, 'Belt 2', 88, 0, '2020-07-13'),
(3, 1, 'Driver Front (DF)', 90, 0, '2020-07-13'),
(4, 1, 'Passenger Front (PF)', 35, 200, '2020-07-13'),
(5, 1, 'Spare', 1, 100, '2020-07-13');

-- --------------------------------------------------------

--
-- Table structure for table `item_categories`
--

CREATE TABLE `item_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_attachments`
--

CREATE TABLE `order_attachments` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT 'before',
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_attachments`
--

INSERT INTO `order_attachments` (`id`, `order_id`, `description`, `url`) VALUES
(1, 1, 'before', '_6d1e481b514426159466187811046704.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `assigned_to` int(11) NOT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `item_name` varchar(200) DEFAULT NULL,
  `tax_name` varchar(200) DEFAULT NULL,
  `currency_symbol` varchar(20) DEFAULT NULL,
  `quantity` varchar(20) DEFAULT NULL,
  `unit_price` decimal(16,2) DEFAULT NULL,
  `tax_rate` decimal(16,2) DEFAULT NULL,
  `total` decimal(16,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `customer_id`, `order_id`, `assigned_to`, `currency_id`, `tax_id`, `item_id`, `account_id`, `item_name`, `tax_name`, `currency_symbol`, `quantity`, `unit_price`, `tax_rate`, `total`, `created_at`, `updated_at`) VALUES
(10, NULL, 3, 0, NULL, NULL, 3, 1, 'Oil Change', '', '$', '1', '20.00', '1.65', '20.00', NULL, NULL),
(11, NULL, 3, 3, NULL, NULL, 0, 33, 'labor', '', '$', '1', '85.00', '0.00', '7225.00', NULL, NULL),
(12, NULL, 3, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '3.00', '0.00', '3.00', NULL, NULL),
(13, NULL, 3, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '217.35', '0.00', '217.35', NULL, NULL),
(14, NULL, 4, 0, NULL, NULL, 3, 42, 'Oil Change', '', '$', '1', '100.00', '8.25', '100.00', NULL, NULL),
(15, NULL, 4, 0, NULL, NULL, 4, 42, 'Tire service', '', '$', '4', '200.00', '66.00', '800.00', NULL, NULL),
(16, NULL, 4, 8, NULL, NULL, 0, 39, 'labor', '', '$', '4', '5.00', '0.00', '25.00', NULL, NULL),
(17, NULL, 4, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '100.00', '0.00', '100.00', NULL, NULL),
(18, NULL, 4, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '92.50', '0.00', '92.50', NULL, NULL),
(19, NULL, 5, 0, NULL, NULL, 2, 35, 'Oil Change', '', '$', '1', '23.00', '1.90', '23.00', NULL, NULL),
(20, NULL, 5, 2, NULL, NULL, 0, 37, 'labor', '', '$', '1', '45.00', '0.00', '2025.00', NULL, NULL),
(21, NULL, 5, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '3.00', '0.00', '3.00', NULL, NULL),
(22, NULL, 5, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '61.44', '0.00', '61.44', NULL, NULL),
(75, NULL, 28, 0, NULL, NULL, 4, 37, 'Tire service', '', '$', '4', '121.00', '39.93', '484.00', NULL, NULL),
(76, NULL, 28, 11, NULL, NULL, 0, 84, 'labor', '', '$', '4', '25.00', '0.00', '100.00', NULL, NULL),
(77, NULL, 28, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(78, NULL, 28, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(79, NULL, 30, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(80, NULL, 30, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(81, NULL, 26, 0, NULL, NULL, 4, 37, 'Tire service', '', '$', '4', '121.00', '39.93', '484.00', NULL, NULL),
(82, NULL, 26, 0, NULL, NULL, 4, 37, 'Tire service', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(83, NULL, 26, 3, NULL, NULL, 0, 84, 'labor', '', '$', '4', '25.00', '0.00', '100.00', NULL, NULL),
(84, NULL, 26, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(85, NULL, 26, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(94, NULL, 35, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(95, NULL, 35, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(134, NULL, 36, 0, NULL, NULL, 19, 37, 'FUEL SYSTEM CLEANER ', '', '$', '1', '129.99', '10.72', '129.99', NULL, NULL),
(135, NULL, 36, 0, NULL, NULL, 0, 35, 'labor', '', '$', '7.5', '85.00', '0.00', '637.50', NULL, NULL),
(136, NULL, 36, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(137, NULL, 36, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(140, NULL, 32, 0, NULL, NULL, 20, 37, 'MERWINDOWSWTICH', '', '$', '1', '121.00', '9.98', '121.00', NULL, NULL),
(141, NULL, 32, 0, NULL, NULL, 0, 35, 'labor', '', '$', '0', '50.00', '0.00', '0.00', NULL, NULL),
(142, NULL, 32, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(143, NULL, 32, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(156, NULL, 50, 0, NULL, NULL, 28, 0, 'SHELL 15W-40 MOTOR OIL T4', '', '$', '4', '14.25', '4.70', '57.00', NULL, NULL),
(157, NULL, 50, 10, NULL, NULL, 0, 34, 'labor', '', '$', '0', '0.00', '0.00', '0.00', NULL, NULL),
(158, NULL, 50, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(159, NULL, 50, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(186, NULL, 59, 10, NULL, NULL, 0, 34, 'labor', '', '$', '4', '65.00', '0.00', '260.00', NULL, NULL),
(187, NULL, 59, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(188, NULL, 59, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(189, NULL, 60, 0, NULL, NULL, 13, 0, 'part', '', '$', '1', '107.00', '8.83', '107.00', NULL, NULL),
(190, NULL, 60, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(191, NULL, 60, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(192, NULL, 61, 0, NULL, NULL, 35, 46, 'part', '', '$', '1', '385.99', '31.84', '385.99', NULL, NULL),
(193, NULL, 61, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(194, NULL, 61, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(202, NULL, 39, 0, NULL, NULL, 15, 46, 'part', '', '$', '1', '1400.00', '115.50', '1400.00', NULL, NULL),
(203, NULL, 39, 0, NULL, NULL, 15, 46, 'part', '', '$', '1', '1100.00', '90.75', '1100.00', NULL, NULL),
(204, NULL, 39, 0, NULL, NULL, 32, 46, 'part', '', '$', '1', '296.00', '24.42', '296.00', NULL, NULL),
(205, NULL, 39, 0, NULL, NULL, 37, 46, 'part', '', '$', '1', '389.00', '32.09', '389.00', NULL, NULL),
(206, NULL, 39, 0, NULL, NULL, 36, 46, 'part', '', '$', '1', '489.00', '40.34', '489.00', NULL, NULL),
(207, NULL, 39, 0, NULL, NULL, 16, 46, 'part', '', '$', '1', '420.00', '34.65', '420.00', NULL, NULL),
(208, NULL, 39, 0, NULL, NULL, 17, 46, 'part', '', '$', '1', '375.00', '30.94', '375.00', NULL, NULL),
(209, NULL, 39, 10, NULL, NULL, 0, 35, 'labor', '', '$', '1', '1800.00', '0.00', '1800.00', NULL, NULL),
(210, NULL, 39, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(211, NULL, 39, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(221, NULL, 46, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(222, NULL, 46, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(230, NULL, 63, 0, NULL, NULL, 38, 46, 'part', '', '$', '2', '26.95', '4.45', '53.90', NULL, NULL),
(231, NULL, 63, 0, NULL, NULL, 9, 46, 'part', '', '$', '4', '15.00', '4.95', '60.00', NULL, NULL),
(232, NULL, 63, 0, NULL, NULL, 11, 46, 'part', '', '$', '1', '0.01', '0.00', '0.01', NULL, NULL),
(233, NULL, 63, 0, NULL, NULL, 1, 39, 'tire', '', '$', '1', '1.00', '0.08', '1.00', NULL, NULL),
(234, NULL, 63, 10, NULL, NULL, 0, 34, 'labor', '', '$', '2', '85.00', '0.00', '170.00', NULL, NULL),
(235, NULL, 63, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(236, NULL, 63, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(248, NULL, 64, 0, NULL, NULL, 32, 46, 'part', '', '$', '1', '120.00', '9.90', '120.00', NULL, NULL),
(249, NULL, 64, 10, NULL, NULL, 0, 36, 'labor', '', '$', '2', '65.00', '0.00', '130.00', NULL, NULL),
(250, NULL, 64, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(251, NULL, 64, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(252, NULL, 65, 4, NULL, NULL, 0, 34, 'labor', '', '$', '1', '450.00', '0.00', '450.00', NULL, NULL),
(253, NULL, 65, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(254, NULL, 65, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(255, NULL, 58, 4, NULL, NULL, 0, 34, 'labor', '', '$', '1', '1500.00', '0.00', '1500.00', NULL, NULL),
(256, NULL, 58, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(257, NULL, 58, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(258, NULL, 47, 4, NULL, NULL, 0, 34, 'labor', '', '$', '1', '500.00', '0.00', '500.00', NULL, NULL),
(259, NULL, 47, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(260, NULL, 47, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(261, NULL, 37, 0, NULL, NULL, 14, 46, 'part', '', '$', '1', '109.99', '9.07', '109.99', NULL, NULL),
(262, NULL, 37, 0, NULL, NULL, 3, 39, 'tire', '', '$', '2', '121.00', '19.97', '242.00', NULL, NULL),
(263, NULL, 37, 0, NULL, NULL, 0, 35, 'labor', '', '$', '1', '85.00', '0.00', '85.00', NULL, NULL),
(264, NULL, 37, 10, NULL, NULL, 0, 39, 'labor', '', '$', '2', '25.00', '0.00', '50.00', NULL, NULL),
(265, NULL, 37, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(266, NULL, 37, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(275, NULL, 66, 0, NULL, NULL, 39, 46, 'part', '', '$', '1', '296.00', '24.42', '296.00', NULL, NULL),
(276, NULL, 66, 4, NULL, NULL, 0, 35, 'labor', '', '$', '3.5', '85.00', '0.00', '297.50', NULL, NULL),
(277, NULL, 66, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(278, NULL, 66, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(405, NULL, 48, 0, NULL, NULL, 35, 46, 'part', '', '$', '1', '515.89', '42.56', '515.89', NULL, NULL),
(406, NULL, 48, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(407, NULL, 48, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(584, NULL, 68, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(585, NULL, 68, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(586, NULL, 71, 0, NULL, NULL, 51, 46, 'part', '', '$', '1', '529.00', '43.64', '529.00', NULL, NULL),
(587, NULL, 71, 3, NULL, NULL, 0, 35, 'labor', '', '$', '3.5', '85.00', '0.00', '297.50', NULL, NULL),
(588, NULL, 71, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(589, NULL, 71, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(690, NULL, 70, 0, NULL, NULL, 42, 46, 'part', '', '$', '1', '512.00', '42.24', '512.00', NULL, NULL),
(691, NULL, 70, 0, NULL, NULL, 43, 46, 'part', '', '$', '1', '421.00', '34.73', '421.00', NULL, NULL),
(692, NULL, 70, 0, NULL, NULL, 44, 46, 'part', '', '$', '1', '550.00', '45.38', '550.00', NULL, NULL),
(693, NULL, 70, 0, NULL, NULL, 45, 46, 'part', '', '$', '1', '550.00', '45.38', '550.00', NULL, NULL),
(694, NULL, 70, 0, NULL, NULL, 46, 46, 'part', '', '$', '1', '584.00', '48.18', '584.00', NULL, NULL),
(695, NULL, 70, 0, NULL, NULL, 47, 46, 'part', '', '$', '1', '239.00', '19.72', '239.00', NULL, NULL),
(696, NULL, 70, 0, NULL, NULL, 49, 46, 'part', '', '$', '1', '180.00', '14.85', '180.00', NULL, NULL),
(697, NULL, 70, 0, NULL, NULL, 49, 46, 'part', '', '$', '1', '220.00', '18.15', '220.00', NULL, NULL),
(698, NULL, 70, 3, NULL, NULL, 0, 35, 'labor', '', '$', '1', '900.00', '0.00', '900.00', NULL, NULL),
(699, NULL, 70, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(700, NULL, 70, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(701, NULL, 73, 0, NULL, NULL, 0, 35, 'labor', '', '$', '1', '175.00', '0.00', '175.00', NULL, NULL),
(702, NULL, 73, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(703, NULL, 73, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(719, NULL, 38, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(720, NULL, 38, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(721, NULL, 77, 2, NULL, NULL, 0, 34, 'labor', '', '$', '1', '25.00', '0.00', '25.00', NULL, NULL),
(722, NULL, 77, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(723, NULL, 77, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(749, NULL, 79, 0, NULL, NULL, 7, 46, 'part', '', '$', '1', '102.00', '8.42', '102.00', NULL, NULL),
(750, NULL, 79, 0, NULL, NULL, 1, 39, 'tire', '', '$', '1', '89.00', '7.34', '89.00', NULL, NULL),
(751, NULL, 79, 2, NULL, NULL, 0, 35, 'labor', '', '$', '1', '95.00', '0.00', '95.00', NULL, NULL),
(752, NULL, 79, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(753, NULL, 79, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(760, NULL, 80, 0, NULL, NULL, 7, 46, 'part', '', '$', '1', '102.00', '8.42', '102.00', NULL, NULL),
(761, NULL, 80, 0, NULL, NULL, 2, 39, 'tire', '', '$', '1', '500.00', '41.25', '500.00', NULL, NULL),
(762, NULL, 80, 2, NULL, NULL, 0, 39, 'labor', '', '$', '1', '100.00', '0.00', '100.00', NULL, NULL),
(763, NULL, 80, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '18.06', '0.00', '18.06', NULL, NULL),
(764, NULL, 80, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '18.06', '0.00', '18.06', NULL, NULL),
(770, NULL, 82, 0, NULL, NULL, 10, 46, 'part', '', '$', '2', '150.00', '24.75', '300.00', NULL, NULL),
(771, NULL, 82, 0, NULL, NULL, 3, 39, 'tire', '', '$', '4', '121.00', '39.93', '484.00', NULL, NULL),
(772, NULL, 82, 2, NULL, NULL, 0, 36, 'labor', '', '$', '1', '95.00', '0.00', '95.00', NULL, NULL),
(773, NULL, 82, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '7.84', '0.00', '7.84', NULL, NULL),
(774, NULL, 82, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '7.84', '0.00', '7.84', NULL, NULL),
(775, NULL, 83, 0, NULL, NULL, 10, 46, 'part', '', '$', '1', '150.00', '12.38', '150.00', NULL, NULL),
(776, NULL, 83, 0, NULL, NULL, 3, 39, 'tire', '', '$', '2', '121.00', '19.97', '242.00', NULL, NULL),
(777, NULL, 83, 2, NULL, NULL, 0, 34, 'labor', '', '$', '1', '85.00', '0.00', '85.00', NULL, NULL),
(778, NULL, 83, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(779, NULL, 83, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(780, NULL, 84, 0, NULL, NULL, 10, 46, 'part', '', '$', '1', '150.00', '12.38', '150.00', NULL, NULL),
(781, NULL, 84, 0, NULL, NULL, 3, 90, 'tire', '', '$', '1', '121.00', '9.98', '121.00', NULL, NULL),
(782, NULL, 84, 2, NULL, NULL, 0, 37, 'labor', '', '$', '1', '105.00', '0.00', '105.00', NULL, NULL),
(783, NULL, 84, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(784, NULL, 84, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(810, NULL, 85, 0, NULL, NULL, 7, 46, 'part', '', '$', '3', '102.00', '25.25', '306.00', NULL, NULL),
(811, NULL, 85, 0, NULL, NULL, 2, 39, 'tire', '', '$', '3', '500.00', '123.75', '1500.00', NULL, NULL),
(812, NULL, 85, 2, NULL, NULL, 0, 34, 'labor', '', '$', '3', '85.00', '0.00', '255.00', NULL, NULL),
(813, NULL, 85, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '19.16', '0.00', '19.16', NULL, NULL),
(814, NULL, 85, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '19.16', '0.00', '19.16', NULL, NULL),
(815, NULL, 86, 0, NULL, NULL, 7, 46, 'part', '', '$', '1', '102.00', '8.42', '102.00', NULL, NULL),
(816, NULL, 86, 0, NULL, NULL, 1, 39, 'tire', '', '$', '4', '89.00', '29.37', '356.00', NULL, NULL),
(817, NULL, 86, 2, NULL, NULL, 0, 34, 'labor', '', '$', '1', '85.00', '0.00', '85.00', NULL, NULL),
(818, NULL, 86, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(819, NULL, 86, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(820, NULL, 87, 0, NULL, NULL, 37, 46, 'part', '', '$', '1', '389.00', '32.09', '389.00', NULL, NULL),
(821, NULL, 87, 13, NULL, NULL, 0, 34, 'labor', '', '$', '1', '85.00', '0.00', '85.00', NULL, NULL),
(822, NULL, 87, 13, NULL, NULL, 0, 35, 'labor', '', '$', '1', '95.00', '0.00', '95.00', NULL, NULL),
(823, NULL, 87, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(824, NULL, 87, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(825, NULL, 88, 0, NULL, NULL, 7, 0, 'part', '', '$', '4', '102.00', '33.66', '408.00', NULL, NULL),
(826, NULL, 88, 0, NULL, NULL, 1, 39, 'tire', '', '$', '3', '89.00', '22.03', '267.00', NULL, NULL),
(827, NULL, 88, 2, NULL, NULL, 0, 34, 'labor', '', '$', '3', '85.00', '0.00', '255.00', NULL, NULL),
(828, NULL, 88, 13, NULL, NULL, 0, 35, 'labor', '', '$', '2', '95.00', '0.00', '190.00', NULL, NULL),
(829, NULL, 88, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(830, NULL, 88, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(831, NULL, 89, 0, NULL, NULL, 7, 46, 'part', '', '$', '2', '102.00', '16.83', '204.00', NULL, NULL),
(832, NULL, 89, 2, NULL, NULL, 0, 37, 'labor', '', '$', '1', '105.00', '0.00', '105.00', NULL, NULL),
(833, NULL, 89, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(834, NULL, 89, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(835, NULL, 90, 0, NULL, NULL, 9, 46, 'part', '', '$', '1', '89.99', '7.42', '89.99', NULL, NULL),
(836, NULL, 90, 0, NULL, NULL, 1, 39, 'tire', '', '$', '1', '89.00', '7.34', '89.00', NULL, NULL),
(837, NULL, 90, 2, NULL, NULL, 0, 34, 'labor', '', '$', '1', '85.00', '0.00', '85.00', NULL, NULL),
(838, NULL, 90, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(839, NULL, 90, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(858, NULL, 91, 0, NULL, NULL, 42, 46, 'part', '', '$', '3', '512.00', '126.72', '1536.00', NULL, NULL),
(859, NULL, 91, 0, NULL, NULL, 29, 46, 'part', '', '$', '1', '27.06', '2.23', '27.06', NULL, NULL),
(860, NULL, 91, 0, NULL, NULL, 1, 39, 'tire', '', '$', '1', '89.00', '7.34', '89.00', NULL, NULL),
(861, NULL, 91, 2, NULL, NULL, 0, 34, 'labor', '', '$', '1', '85.00', '0.00', '85.00', NULL, NULL),
(862, NULL, 91, 0, NULL, NULL, 0, 0, 'hazmat', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL),
(863, NULL, 91, 0, NULL, NULL, 0, 0, 'supplies', '', '$', '1', '0.00', '0.00', '0.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

CREATE TABLE `relations` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_accounts`
--

CREATE TABLE `sys_accounts` (
  `id` int(11) NOT NULL,
  `account` varchar(100) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `balance` decimal(18,2) NOT NULL DEFAULT '0.00',
  `bank_name` varchar(200) DEFAULT NULL,
  `account_number` varchar(200) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contact_person` varchar(200) DEFAULT NULL,
  `contact_phone` varchar(100) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `ib_url` varchar(200) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `notes` text,
  `sorder` int(11) DEFAULT NULL,
  `e` varchar(200) DEFAULT NULL,
  `token` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `owner_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_accounts`
--

INSERT INTO `sys_accounts` (`id`, `account`, `description`, `balance`, `bank_name`, `account_number`, `currency`, `branch`, `address`, `contact_person`, `contact_phone`, `website`, `ib_url`, `created`, `notes`, `sorder`, `e`, `token`, `status`, `owner_id`, `created_at`, `updated_at`, `price`, `cost`) VALUES
(1, 'Checking Account', '', '-29202.83', NULL, '10000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-29', NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, 0, 0),
(22, 'Payroll Liabilities - FUTA', '', '0.00', NULL, '23030', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-29', NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, 0, 0),
(23, 'Payroll Liabilities - SUTA', '', '0.00', NULL, '23040', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-29', NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, 0, 0),
(29, 'Retaining Earnings', '', '0.00', NULL, '30000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-29', NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, 0, 0),
(30, 'Capital Stock', '', '0.00', NULL, '31000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-29', NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, 0, 0),
(31, 'Paid-in-Capital', '', '0.00', NULL, '32000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-29', NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, 0, 0),
(32, 'Opening Balance Equity', '', '0.00', NULL, '33000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-29', NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, 0, 0),
(33, 'Labor Sales', '', '0.00', NULL, '40000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-29', NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, 0, 0),
(34, 'LAB 1 - Shop Labor', '', '0.00', '', '40011', '', '', '', '', '', '', '', '2020-06-29', '', 1, '', '', '', 1, NULL, NULL, 85, 0),
(35, 'LAB 2 - Fleet Labor', 'Previously called - Labor Sales - Body Labor Sales', '0.00', '', '40012', '', '', '', '', '', '', '', '2020-06-29', '', 1, '', '', '', 1, NULL, NULL, 95, 0),
(36, 'LAB 3 - Carz Labor', '', '0.00', '', '40013', '', '', '', '', '', '', '', '2020-07-15', '', 1, '', '', '', 5, NULL, NULL, 95, 0),
(37, 'LAB 4 - Flat Fee', '', '0.00', '', '40014', '', '', '', '', '', '', '', '2020-07-15', '', 1, '', '', '', 5, NULL, NULL, 105, 0),
(38, 'LAB 5 - Oil Change', '', '0.00', '', '40015', '', '', '', '', '', '', '', '2020-07-15', '', 1, '', '', '', 5, NULL, NULL, 100, 0),
(39, 'TC - Wheel Bal. & Mount', '', '0.00', '', '40016', '', '', '', '', '', '', '', '2020-07-15', '', 1, '', '', '', 5, NULL, NULL, 100, 0),
(46, 'Parts Sales', '', '0.00', NULL, '40040', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-29', NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, 0, 0),
(47, 'Sales Return and Allowance', '', '0.00', NULL, '40060', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-29', NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, 0, 0),
(48, 'Labor Costs ', '', '0.00', NULL, '50000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-29', NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, 0, 0),
(49, 'Labor Costs - Mechanical Labor Cost', '', '0.00', NULL, '50010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-29', NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, 0, 0),
(50, 'Labor Costs - Body Labor Cost', '', '0.00', NULL, '50020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-29', NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, 0, 0),
(51, 'Parts Costs ', '', '0.00', NULL, '50030', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-29', NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, 0, 0),
(52, 'Salaries and Wages', '', '0.00', NULL, '60000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-29', NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, 0, 0),
(53, 'Salaries and Wages Taxes - FICA', '', '0.00', NULL, '60010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-29', NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, 0, 0),
(54, 'Salaries and Wages Taxes - FUTA', '', '0.00', NULL, '60020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-29', NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, 0, 0),
(55, 'Salaries and Wages Taxes - SUTA', '', '0.00', NULL, '60030', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-29', NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, 0, 0),
(67, 'Depreciation Expenses', '', '0.00', NULL, '65000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-29', NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, 0, 0),
(70, 'Meal', '', '0.00', NULL, '65030', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-29', NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, 0, 0),
(71, 'Office Expense', '', '0.00', NULL, '65040', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-29', NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, 0, 0),
(72, 'Taxes', '', '0.00', NULL, '66000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-29', NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, 0, 0),
(78, 'Credit Card Processing Fees', '', '0.00', NULL, '80040', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-29', NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, 0, 0),
(82, 'Rent Expense', '', '0.00', NULL, '80140', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-29', NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, 0, 0),
(84, 'Amazon-Fleet / Independant Contractor', 'Pay Staff through Amazon', '0.00', '', '80110', '', '', '', '', '', '', '', '2020-07-04', '', 1, '', '', '', 3, NULL, NULL, 0, 0),
(90, 'Shop Fleet - Revenue', 'Shop Fleet - Revenue', '0.00', '', '40017', '', '', '', '', '', '', '', '2020-08-11', '', 1, '', '', '', 1, NULL, NULL, 100, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sys_activity`
--

CREATE TABLE `sys_activity` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `msg` text NOT NULL,
  `icon` varchar(100) NOT NULL DEFAULT '',
  `stime` varchar(50) NOT NULL,
  `sdate` date NOT NULL,
  `o` int(11) NOT NULL DEFAULT '0',
  `oname` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_api`
--

CREATE TABLE `sys_api` (
  `id` int(11) NOT NULL,
  `label` text,
  `ip` text,
  `apikey` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_appconfig`
--

CREATE TABLE `sys_appconfig` (
  `id` int(11) NOT NULL,
  `setting` varchar(200) NOT NULL DEFAULT '',
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_appconfig`
--

INSERT INTO `sys_appconfig` (`id`, `setting`, `value`) VALUES
(1, 'CompanyName', 'Topfinaylst'),
(29, 'theme', 'default'),
(37, 'currency_code', '$'),
(56, 'language', 'en'),
(57, 'show-logo', '1'),
(58, 'nstyle', 'purple'),
(63, 'dec_point', '.'),
(64, 'thousands_sep', ','),
(65, 'timezone', 'America/New_York'),
(66, 'country', 'United States'),
(67, 'country_code', 'US'),
(68, 'df', 'Y-m-d'),
(69, 'caddress', '<p>Topfinalyst<br>4321 Kingwood Dr<br>Kingwood, Texas 77339<br>United StateS</p>'),
(70, 'account_search', '1'),
(71, 'redirect_url', 'dashboard'),
(72, 'rtl', '0'),
(73, 'ckey', '0982995697'),
(74, 'networth_goal', '350000'),
(75, 'sysEmail', 'support@topfinalyst.com'),
(76, 'url_rewrite', '0'),
(77, 'build', '451'),
(78, 'animate', '0'),
(79, 'pdf_font', 'dejavusanscondensed'),
(80, 'accounting', '1'),
(81, 'invoicing', '1'),
(82, 'quotes', '0'),
(83, 'client_dashboard', '1'),
(84, 'contact_set_view_mode', 'search'),
(85, 'invoice_terms', ''),
(86, 'console_notify_invoice_created', '0'),
(87, 'i_driver', 'v2'),
(88, 'purchase_key', 'B5VE-SNP4-KB15-1179-7948'),
(89, 'c_cache', ''),
(90, 'mininav', '0'),
(91, 'hide_footer', '1'),
(92, 'design', 'default'),
(93, 'default_landing_page', 'login'),
(94, 'recaptcha', '0'),
(95, 'recaptcha_sitekey', ''),
(96, 'recaptcha_secretkey', ''),
(97, 'home_currency', 'USD'),
(98, 'currency_decimal_digits', 'true'),
(99, 'currency_symbol_position', 'p'),
(100, 'thousand_separator_placement', '3'),
(101, 'dashboard', 'canvas'),
(102, 'header_scripts', ''),
(103, 'footer_scripts', ''),
(104, 'ib_key', 'vLBLfhA6DNi1R2MFHO8IvFWr4Cn9665eHUF+L/sqAKM='),
(105, 'ib_s', 'PNhjeZ0sOFF3JNfzT2mLxvNNKPeh6ltqpE+G5LVSDSvgp/z79Sco7W4tJEoXYIl8'),
(106, 'ib_u_t', '1512841700'),
(107, 'ib_u_a', '0'),
(108, 'momentLocale', 'en'),
(109, 'contentAnimation', 'animated fadeIn'),
(110, 'calendar', '0'),
(111, 'leads', '0'),
(112, 'tasks', '1'),
(113, 'orders', '1'),
(114, 'show_quantity_as', ''),
(115, 'gmap_api_key', ''),
(116, 'license_key', '5FEB-2E39-D4DF-24C0-5DF8-2090-AC98-5962'),
(117, 'local_key', ''),
(118, 'ib_installed_at', '1485170108'),
(119, 'maxmind_installed', '1'),
(120, 'maxmind_db_version', ''),
(121, 'add_fund', '0'),
(122, 'add_fund_minimum_deposit', '100'),
(123, 'add_fund_maximum_deposit', '2500'),
(124, 'add_fund_maximum_balance', '25000'),
(125, 'add_fund_require_active_order', '0'),
(126, 'industry', 'default'),
(127, 'sales_target', '10000'),
(128, 'inventory', '1'),
(129, 'secondary_currency', ''),
(130, 'customer_custom_username', '1'),
(131, 'documents', '1'),
(132, 'projects', '0'),
(133, 'purchase', '1'),
(134, 'suppliers', '1'),
(135, 'support', '1'),
(136, 'hrm', '1'),
(137, 'companies', '1'),
(138, 'plugins', '0'),
(139, 'country_flag_code', 'us'),
(140, 'graph_primary_color', '7CB5EC'),
(141, 'graph_secondary_color', '434348'),
(142, 'expense_type_1', 'Personal'),
(143, 'expense_type_2', 'Business'),
(144, 'edition', 'default'),
(147, 'assets', '1'),
(148, 'kb', '0'),
(149, 'business_id_1', ''),
(150, 'business_id_2', ''),
(151, 'logo_default', 'logo_2105025689.png'),
(152, 'logo_inverse', 'logo_inverse_7627893866.png'),
(153, 'add_fund_client', '1'),
(154, 'order_method', 'default'),
(155, 'purchase_code', ''),
(156, 'invoice_receipt_number', '0'),
(157, 'allow_customer_registration', '1'),
(158, 'fax_field', '0'),
(159, 'show_business_number', '0'),
(160, 'label_business_number', 'Business Number'),
(161, 'sms', '0'),
(162, 'sms_request_method', 'POST'),
(163, 'sms_auth_header', ''),
(164, 'sms_req_url', ''),
(165, 'sms_notify_admin_new_deposit', '0'),
(166, 'sms_notify_customer_signed_up', '0'),
(167, 'sms_notify_customer_invoice_created', '0'),
(168, 'sms_notify_customer_invoice_paid', '0'),
(169, 'sms_notify_customer_payment_received', '0'),
(170, 'sms_api_handler', 'Nexmo'),
(171, 'sms_auth_username', ''),
(172, 'sms_auth_password', ''),
(173, 'sms_sender_name', 'CLX'),
(175, 'sms_http_params', ''),
(176, 'purchase_invoice_payment_status', '0'),
(177, 'quote_confirmation_email', '1'),
(178, 'client_drive', '1'),
(179, 's_version', '7'),
(180, 'latest_file', '4618152936941418.zip'),
(181, 'invoice_show_watermark', '1'),
(183, 'show_country_flag', '0'),
(184, 'drive', '0'),
(185, 'tax_system', 'default'),
(186, 'pos', '1'),
(187, 'password_manager', 'default'),
(188, 'update_manager', '1'),
(189, 'app_credentials', '0'),
(190, 'business_location', ''),
(191, 'hr', '1'),
(192, 'mailgun_api_key', ''),
(193, 'sparkpost_api_key', ''),
(194, 'mailgun_domain', ''),
(195, 'show_sidebar_header', '1'),
(196, 'top_bar_is_dark', '1'),
(198, 'slack_webhook_url', ''),
(199, 'config_recaptcha_in_client_login', '0'),
(200, 'config_recaptcha_in_admin_login', '0'),
(201, 'contact_list_show_company_column', '0'),
(202, 'config_contact_list_show_group_column', '1'),
(203, 'contact_list_show_group_column', '0'),
(208, 'tickets_assigned_sms_notification', '0'),
(209, 'number_pad', '5'),
(210, 'customer_code_prefix', 'CUS-'),
(211, 'customer_code_template', ''),
(212, 'customer_code_current_number', '4'),
(213, 'supplier_code_prefix', 'SUP-'),
(214, 'supplier_code_template', ''),
(215, 'supplier_code_current_number', '11'),
(216, 'income_code_prefix', 'INC-'),
(217, 'income_code_template', ''),
(218, 'income_code_current_number', '6'),
(219, 'expense_code_prefix', 'EXP-'),
(220, 'expense_code_template', ''),
(221, 'expense_code_current_number', '157'),
(222, 'invoice_code_prefix', 'INV-'),
(223, 'invoice_code_template', ''),
(224, 'invoice_code_current_number', '2179'),
(225, 'quotation_code_prefix', 'QUOTE-'),
(226, 'quotation_code_template', ''),
(227, 'quotation_code_current_number', '3'),
(228, 'purchase_code_prefix', 'PO-'),
(229, 'purchase_code_template', ''),
(230, 'purchase_code_current_number', '36094758'),
(231, 'contact_display_name_string', 'Display Name'),
(232, 'contact_extra_field', 'Display Name'),
(233, 'company_code_prefix', 'COMP-'),
(234, 'company_code_template', ''),
(235, 'company_code_current_number', '5'),
(236, 'ticket_code_prefix', ''),
(237, 'ticket_code_template', ''),
(238, 'ticket_code_current_number', ''),
(239, 'new_entry_code_prefix', 'NE-'),
(240, 'new_entry_code_current_number', '2'),
(241, 'tire_code_prefix', 'TI-'),
(242, 'tire_code_current_number', '1'),
(243, 'address_format', 'default'),
(244, 'vat_number', ''),
(245, 'invoice_default_date', 'due_on_receipt'),
(246, 'dashboard_widgets_tasks', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sys_canned_responses`
--

CREATE TABLE `sys_canned_responses` (
  `id` int(11) NOT NULL,
  `title` text,
  `message` text,
  `tags` text,
  `attachments` text,
  `sorder` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_cart`
--

CREATE TABLE `sys_cart` (
  `id` int(11) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `items` text,
  `total` decimal(16,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `ip` varchar(100) DEFAULT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `browser` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `currency` varchar(200) DEFAULT NULL,
  `language` varchar(200) DEFAULT NULL,
  `coupon` varchar(200) DEFAULT NULL,
  `lat` varchar(50) DEFAULT NULL,
  `lon` varchar(50) DEFAULT NULL,
  `item_count` int(11) NOT NULL DEFAULT '0',
  `cid` int(11) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `lid` int(11) NOT NULL DEFAULT '0',
  `currency_id` int(11) NOT NULL DEFAULT '0',
  `company_id` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `expiry` datetime DEFAULT NULL,
  `memo` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_cart`
--

INSERT INTO `sys_cart` (`id`, `secret`, `items`, `total`, `discount`, `ip`, `fullname`, `phone`, `email`, `status`, `browser`, `country`, `currency`, `language`, `coupon`, `lat`, `lon`, `item_count`, `cid`, `aid`, `lid`, `currency_id`, `company_id`, `created_at`, `updated_at`, `expiry`, `memo`) VALUES
(2, '0mqmw0ikq5rn2aueb2la86635b25ec83c851764fd7a6746ced6b', '[{\"id\":\"1\",\"name\":\"Pearl White\",\"price\":\"140.00\",\"qty\":\"3\"}]', '420.00', '0.00', '98.199.190.38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 50, 0, 0, 0, 0, '2020-06-21 19:14:52', '2020-06-21 19:14:52', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_cats`
--

CREATE TABLE `sys_cats` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` enum('Income','Expense') NOT NULL,
  `sorder` int(11) NOT NULL DEFAULT '0',
  `total_amount` decimal(16,4) DEFAULT '0.0000',
  `budget` decimal(16,4) DEFAULT '0.0000',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `total_spend` decimal(16,4) DEFAULT '0.0000',
  `current_month_spend` decimal(16,4) DEFAULT '0.0000',
  `current_year_spend` decimal(16,4) DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_cats`
--

INSERT INTO `sys_cats` (`id`, `name`, `type`, `sorder`, `total_amount`, `budget`, `created_at`, `updated_at`, `total_spend`, `current_month_spend`, `current_year_spend`) VALUES
(14, 'Advertising', 'Expense', 1, '811.8700', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(15, 'Bank and Credit Card Interest', 'Expense', 23, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(16, 'Car and Truck', 'Expense', 24, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(17, 'Commissions and Fees', 'Expense', 25, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(18, 'Contract Labor', 'Expense', 26, '700.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(19, 'Contributions', 'Expense', 27, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(20, 'Cost of Goods Sold', 'Expense', 28, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(21, 'Credit Card Interest', 'Expense', 29, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(22, 'Depreciation', 'Expense', 31, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(23, 'Dividend Payments', 'Expense', 32, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(24, 'Employee Benefit Programs', 'Expense', 33, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(25, 'Entertainment', 'Expense', 34, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(26, 'Gift', 'Expense', 35, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(27, 'Insurance', 'Expense', 36, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(28, 'Legal, Accountant &amp; Other Professional Services', 'Expense', 37, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(29, 'Meals', 'Expense', 38, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(30, 'Mortgage Interest', 'Expense', 39, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(31, 'Non-Deductible Expense', 'Expense', 40, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(33, 'Other Business Property Leasing', 'Expense', 22, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(34, 'Owner Draws', 'Expense', 21, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(35, 'Payroll Taxes', 'Expense', 8, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(37, 'Phone', 'Expense', 9, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(38, 'Postage', 'Expense', 10, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(39, 'Rent', 'Expense', 12, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(40, 'Repairs &amp; Maintenance', 'Expense', 11, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(41, 'Supplies', 'Expense', 13, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(42, 'Taxes and Licenses', 'Expense', 14, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(43, 'Transfer Funds', 'Expense', 15, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(44, 'Travel', 'Expense', 16, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(45, 'Utilities', 'Expense', 17, '550.7600', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(46, 'Vehicle, Machinery &amp; Equipment Rental or Leasing', 'Expense', 18, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(47, 'Wages', 'Expense', 19, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(48, 'Regular Income', 'Income', 1, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(49, 'Owner Contribution', 'Income', 12, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(50, 'Interest Income', 'Income', 11, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(51, 'Expense Refund', 'Income', 10, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(52, 'Other Income', 'Income', 9, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(53, 'Salary', 'Income', 8, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(54, 'Equities', 'Income', 7, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(55, 'Rent &amp; Royalties', 'Income', 6, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(56, 'Home equity', 'Income', 5, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(57, 'Part Time Work', 'Income', 3, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(58, 'Account Transfer', 'Income', 4, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(60, 'Health Care', 'Expense', 20, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(63, 'Loans', 'Expense', 30, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(64, 'Selling Software', 'Income', 2, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(65, 'Software Customization', 'Income', 13, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(67, 'Salary', 'Expense', 7, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(68, 'Paypal', 'Expense', 6, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(69, 'Office Equipment', 'Expense', 5, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(70, 'Staff Entertaining', 'Expense', 3, '0.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(71, 'Uncategorized', 'Income', 0, '0.0000', '0.0000', '2018-04-05 04:59:50', '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(72, 'Paint', 'Expense', 0, '2692.5200', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(73, 'Software Subscription', 'Expense', 0, '99.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(74, 'Parts', 'Expense', 0, '28247.5100', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(75, 'Towing', 'Expense', 0, '815.0000', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(76, 'Uncategorized', 'Expense', 0, '2486.3000', '0.0000', '2020-06-26 16:25:22', '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(77, 'Repairs & Maintenance', 'Expense', 0, '1555.0000', '0.0000', '2020-06-26 16:25:22', '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(78, 'Parts', 'Income', 0, '6024.0800', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(79, 'Labor Income', 'Income', 0, '74618.7500', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000'),
(80, 'Shop Supplies Income', 'Income', 0, '281.6600', '0.0000', NULL, '2020-10-30 21:41:28', '0.0000', '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `sys_companies`
--

CREATE TABLE `sys_companies` (
  `id` int(11) NOT NULL,
  `company_name` varchar(200) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `business_number` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `logo_url` varchar(200) DEFAULT NULL,
  `logo_path` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `emails` text,
  `phones` text,
  `tags` text,
  `description` text,
  `notes` text,
  `address1` varchar(200) DEFAULT NULL,
  `address2` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `added_from` varchar(200) DEFAULT NULL,
  `o` varchar(200) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `oid` int(11) NOT NULL DEFAULT '0',
  `rid` int(11) NOT NULL DEFAULT '0',
  `assigned` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `last_contact` datetime DEFAULT NULL,
  `last_contact_by` varchar(200) DEFAULT NULL,
  `ratings` varchar(50) DEFAULT NULL,
  `trash` int(1) NOT NULL DEFAULT '0',
  `archived` int(1) NOT NULL DEFAULT '0',
  `c1` text,
  `c2` text,
  `c3` text,
  `c4` text,
  `c5` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_companies`
--

INSERT INTO `sys_companies` (`id`, `company_name`, `code`, `business_number`, `url`, `logo_url`, `logo_path`, `email`, `phone`, `emails`, `phones`, `tags`, `description`, `notes`, `address1`, `address2`, `city`, `state`, `zip`, `country`, `source`, `added_from`, `o`, `cid`, `aid`, `pid`, `oid`, `rid`, `assigned`, `created_at`, `created_by`, `updated_at`, `updated_by`, `last_contact`, `last_contact_by`, `ratings`, `trash`, `archived`, `c1`, `c2`, `c3`, `c4`, `c5`) VALUES
(10, 'Acs Oil Recovery ', 'COMP-00009', '', '', '', '', '', '936-242-6875 ', '', '', '', '', '', '13946 HWY 75 N ', '', 'Houston', 'TX', '77378', 'United States', '', '', '', 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '', 0, 0, '', '', '', '', ''),
(20, 'Autozone ', 'COMP-00019', '', '', '', '', '', '713-271-0613 ', '', '', '', '', '', '8495 FONDREN DR ', '', 'Houston', 'TX', '77036', 'United States', '', '', '', 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '', 0, 0, '', '', '', '', ''),
(21, 'Baba Towing ', 'COMP-00020', '', '', '', '', '', '832-646-2333 ', '', '', '', '', '', '6804-E 243 HWY 6 S ', '', 'Houston', 'TX', '77083', 'United States', '', '', '', 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '', 0, 0, '', '', '', '', ''),
(26, 'Express Texas Auto ', 'COMP-00025', '', '', '', '', '', '713-783-5122 ', '', '', '', '', '', '6423 RICHMOND AVE P/Q ', '', 'Houston', 'TX', '77057', 'United States', '', '', '', 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '', 0, 0, '', '', '', '', ''),
(70, 'AHFLEET1', 'AH-FLEET-1', NULL, 'http://', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', NULL, '', '', '', 'United States', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, '2020-08-19 15:31:16', NULL, '2020-08-19 15:31:16', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(71, 'AH-FLEET-2', 'AH-FLEET-2', NULL, 'http://', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', NULL, '', '', '', 'United States', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, '2020-08-19 15:37:37', NULL, '2020-08-19 15:37:37', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(72, 'AH-FLEET-3', 'AH-FLEET-3', NULL, 'http://', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', NULL, '', '', '', 'United States', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, '2020-08-19 15:39:09', NULL, '2020-08-19 15:39:09', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_currencies`
--

CREATE TABLE `sys_currencies` (
  `id` int(11) NOT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `iso_code` varchar(10) DEFAULT NULL,
  `symbol` varchar(20) DEFAULT NULL,
  `rate` decimal(16,8) NOT NULL DEFAULT '1.00000000',
  `prefix` varchar(20) DEFAULT NULL,
  `suffix` varchar(20) DEFAULT NULL,
  `format` varchar(100) DEFAULT NULL,
  `decimal_separator` varchar(10) DEFAULT NULL,
  `thousand_separator` varchar(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `available_in` text,
  `isdefault` int(1) NOT NULL DEFAULT '0',
  `trash` int(1) NOT NULL DEFAULT '0',
  `archived` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_currencies`
--

INSERT INTO `sys_currencies` (`id`, `cname`, `iso_code`, `symbol`, `rate`, `prefix`, `suffix`, `format`, `decimal_separator`, `thousand_separator`, `created_at`, `created_by`, `updated_at`, `updated_by`, `available_in`, `isdefault`, `trash`, `archived`) VALUES
(1, 'USD', 'USD', '$', '1.00000000', NULL, NULL, NULL, NULL, NULL, '2018-11-20 16:57:47', NULL, '2018-11-20 16:57:47', NULL, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sys_documents`
--

CREATE TABLE `sys_documents` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `file_o_name` varchar(200) DEFAULT NULL,
  `file_r_name` varchar(200) DEFAULT NULL,
  `file_mime_type` varchar(200) DEFAULT NULL,
  `file_path` varchar(200) DEFAULT NULL,
  `file_dl_token` varchar(200) DEFAULT NULL,
  `file_owner` int(11) NOT NULL DEFAULT '0',
  `version` varchar(100) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `sha1` varchar(40) DEFAULT NULL,
  `md5` varchar(32) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `company_id` int(11) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `contacts` text,
  `deals` text,
  `leads` text,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `customer_can_download` int(1) NOT NULL DEFAULT '0',
  `trash` int(1) NOT NULL DEFAULT '0',
  `archived` int(1) NOT NULL DEFAULT '0',
  `is_global` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_emailconfig`
--

CREATE TABLE `sys_emailconfig` (
  `id` int(11) NOT NULL,
  `method` varchar(50) NOT NULL,
  `host` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `apikey` varchar(200) NOT NULL,
  `port` varchar(10) NOT NULL,
  `secure` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_emailconfig`
--

INSERT INTO `sys_emailconfig` (`id`, `method`, `host`, `username`, `password`, `apikey`, `port`, `secure`) VALUES
(1, 'phpmail', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sys_email_logs`
--

CREATE TABLE `sys_email_logs` (
  `id` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `sender` varchar(200) NOT NULL,
  `email` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `date` datetime DEFAULT NULL,
  `iid` int(11) NOT NULL DEFAULT '0',
  `rel_type` varchar(100) DEFAULT NULL,
  `rel_id` int(11) NOT NULL DEFAULT '0',
  `purchase_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_email_logs`
--

INSERT INTO `sys_email_logs` (`id`, `userid`, `sender`, `email`, `subject`, `message`, `date`, `iid`, `rel_type`, `rel_id`, `purchase_id`) VALUES
(26, 83, '', '', 'STATE INSPECTION ', '<p>AH-FLEET-3,</p>\n<p>Thank you for contacting our support team. A support ticket has now been opened for your request. You will be notified when a response is made by email. Your ticket ID is #YBS-64490326 and a copy of your original message is included below.</p>\n<p>Subject: STATE INSPECTION  <br /> Message: <br /> TEST TEST TEST&nbsp; <br /> Priority: Medium <br /> Status: Open</p>\n<p>You can view the ticket at any time at https://iah.autohiveinc.com/?ng=client/tickets/view/YBS-64490326/</p>', '2020-08-25 16:24:30', 0, NULL, 0, NULL),
(27, 0, '', 'lucky.m@autohiveinc.com', 'Ticket assigned: YBS-64490326', 'View Ticket- https://iah.autohiveinc.com/?ng=tickets/admin/view/5', '2020-08-25 16:26:06', 0, NULL, 0, NULL),
(28, 0, '', 'info@topfinalyst.com', 'Work Order assigned: 68', 'View Work Order- https://iah.autohiveinc.com/?ng=orders/view/68', '2020-08-26 15:46:48', 0, NULL, 0, NULL),
(29, 0, '', 'info@topfinalyst.com', 'Work Order assigned: 75', 'View Work Order- https://btr.autohiveinc.com/?ng=orders/view/75', '2020-10-21 16:31:14', 0, NULL, 0, NULL),
(30, 0, '', 'info@topfinalyst.com', 'Work Order assigned: 74', 'View Work Order- https://btr.autohiveinc.com/?ng=orders/view/74', '2020-10-28 16:04:23', 0, NULL, 0, NULL),
(31, 0, '', 'info@topfinalyst.com', 'Work Order assigned: 81', 'View Work Order- https://btr.autohiveinc.com/?ng=orders/view/81', '2020-10-28 16:17:12', 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_email_templates`
--

CREATE TABLE `sys_email_templates` (
  `id` int(11) NOT NULL,
  `tplname` varchar(128) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `send` varchar(50) DEFAULT 'Active',
  `core` enum('Yes','No') DEFAULT 'Yes',
  `hidden` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_email_templates`
--

INSERT INTO `sys_email_templates` (`id`, `tplname`, `language_id`, `subject`, `message`, `send`, `core`, `hidden`) VALUES
(3, 'Invoice:Invoice Created', 1, '{{business_name}} Invoice', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding:5px;font-size:11pt;font-weight:bold\">   Greetings,</div>	<div style=\"padding:5px\">		This email serves as your official invoice from <strong>{{business_name}}. </strong>	</div><div style=\"padding:10px 5px\">    Invoice URL: <a href=\"{{invoice_url}}\" target=\"_blank\">{{invoice_url}}</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div><div style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></div><div style=\"padding:0px 5px\">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(7, 'Admin:Password Change Request', 1, '{{business_name}} password change request', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding:5px;font-size:11pt;font-weight:bold\">   Hi {{name}},</div>	<div style=\"padding:5px\">		This is to confirm that we have received a Forgot Password request for your Account Username - {{username}} <br>From the IP Address - {{ip_address}}	</div>	<div style=\"padding:5px\">		Click this linke to reset your password- <br><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{password_reset_link}}\">{{password_reset_link}}</a>	</div><div style=\"padding:5px\">Please note: until your password has been changed, your current password will remain valid. The Forgot Password Link will be available for a limited time only.</div><div style=\"padding:0px 5px\">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(10, 'Admin:New Password', 1, '{{business_name}} New Password for Admin', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">\n\n<div style=\"padding:5px;font-size:11pt;font-weight:bold\">\n   Hello {{name}}\n</div>\n\n\n	<div style=\"padding:5px\">\n		Here is your new password for <strong>{{business_name}}. </strong>\n	</div>\n\n	\n<div style=\"padding:10px 5px\">\n    Log in URL: <a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{login_url}}\">{{login_url}}</a><br>Username: {{username}}<br>Password: {{password}}</div>\n\n<div style=\"padding:5px\">For security reason, Please change your password after login. </div>\n\n<div style=\"padding:0px 5px\">\n	<div>Best Regards,<br>{{business_name}} Team</div>\n\n</div>\n\n</div>', 'Yes', 'Yes', 0),
(12, 'Invoice:Invoice Payment Reminder', 1, '{{business_name}} Invoice Payment Reminder', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding:5px;font-size:11pt;font-weight:bold\">   Greetings,</div>	<div style=\"padding:5px\">		This is a billing reminder that your invoice no. {{invoice_id}} which was generated on {{invoice_date}} is due on {{invoice_due_date}}. 	</div><div style=\"padding:10px 5px\">    Invoice URL: <a href=\"{{invoice_url}}\" target=\"_blank\">{{invoice_url}}</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div><div style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></div><div style=\"padding:0px 5px\">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(13, 'Invoice:Invoice Overdue Notice', 1, '{{business_name}} Invoice Overdue Notice', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding:5px;font-size:11pt;font-weight:bold\">   Greetings,</div>	<div style=\"padding:5px\">		This is the notice that your invoice no. {{invoice_id}} which was generated on {{invoice_date}} is now overdue.	</div>	<div style=\"padding:10px 5px\">    Invoice URL: <a href=\"{{invoice_url}}\" target=\"_blank\">{{invoice_url}}</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div><div style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></div><div style=\"padding:0px 5px\">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(14, 'Invoice:Invoice Payment Confirmation', 1, '{{business_name}} Invoice Payment Confirmation', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">\n\n<div style=\"padding:5px;font-size:11pt;font-weight:bold\">\n   Greetings,\n</div>\n\n\n\n	<div style=\"padding:5px\">\n		This is a payment receipt for Invoice {{invoice_id}} sent on {{invoice_date}}.\n	</div>\n\n\n	<div style=\"padding:5px\">\n		Login to your client Portal to view this invoice.\n	</div>\n\n\n<div style=\"padding:10px 5px\">\n    Invoice URL: <a href=\"{{invoice_url}}\" target=\"_blank\">{{invoice_url}}</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div>\n\n\n<div style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></div>\n\n\n<div style=\"padding:0px 5px\">\n	<div>Best Regards,<br>{{business_name}} Team</div>\n\n\n</div>\n\n\n</div>', 'Yes', 'Yes', 0),
(15, 'Invoice:Invoice Refund Confirmation', 1, '{{business_name}} Invoice Refund Confirmation', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding:5px;font-size:11pt;font-weight:bold\">   Greetings,</div>	<div style=\"padding:5px\">		This is confirmation that a refund has been processed for Invoice {{invoice_id}} sent on {{invoice_date}}.	</div><div style=\"padding:10px 5px\">    Invoice URL: <a href=\"{{invoice_url}}\" target=\"_blank\">{{invoice_url}}</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div><div style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></div><div style=\"padding:0px 5px\">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(16, 'Quote:Quote Created', 1, '{{quote_subject}}', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding:5px;font-size:11pt;font-weight:bold\">   Greetings,</div>	<div style=\"padding:5px\">		Dear {{contact_name}},&nbsp;<br> Here is the quote you requested for.  The quote is valid until {{valid_until}}.	</div><div style=\"padding:10px 5px\">    Quote Unique URL: <a href=\"{{quote_url}}\" target=\"_blank\">{{quote_url}}</a><br></div><div style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">You may view the quote at any time and simply reply to this email with any further questions or requirement.</span><br></div><div style=\"padding:0px 5px\">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(17, 'Client:Client Signup Email', 1, 'Your {{business_name}} Login Info', '<p>Dear {{client_name}},</p>\n<p>Welcome to {{business_name}}.</p>\n<p>You can track your billing, profile, transactions from this portal.</p>\n<p>Your login information is as follows:</p>\n<p>---------------------------------------------------------------------------------------</p>\n<p>Login URL: {{client_login_url}} <br />Email Address: {{client_email}}<br /> Password: Your chosen password.</p>\n<p>----------------------------------------------------------------------------------------</p>\n<p>We very much appreciate you for choosing us.</p>\n<p>{{business_name}} Team</p>', 'Yes', 'Yes', 0),
(18, 'Tickets:Client Ticket Created', 1, '{{subject}}', '<p>{{client_name}},</p>\n<p>Thank you for contacting our support team. A support ticket has now been opened for your request. You will be notified when a response is made by email. Your ticket ID is {{ticket_id}} and a copy of your original message is included below.</p>\n<p>Subject: {{ticket_subject}} <br /> Message: <br /> {{message}} <br /> Priority: {{ticket_priority}} <br /> Status: {{ticket_status}}</p>\n<p>You can view the ticket at any time at {{ticket_link}}</p>', 'Yes', 'Yes', 0),
(19, 'Tickets:Admin Ticket Created', 1, '{{subject}}', '<p>{{admin_view_link}}</p> {{message}}', 'Yes', 'Yes', 0),
(20, 'Tickets:Client Response', 1, '{{subject}}', '<p>{{ticket_message}}</p>\n<p>----------------------------------------------<br /> Ticket ID: #{{ticket_id}}<br /> Subject: {{ticket_subject}}<br /> Status: {{ticket_status}}<br /> Ticket URL: {{ticket_link}}<br /> ----------------------------------------------</p>', 'Yes', 'Yes', 0),
(21, 'Tickets:Admin Response', 1, '{{subject}}', '<p>{{ticket_message}}</p>\n<p>----------------------------------------------<br /> Ticket ID: #{{ticket_id}}<br /> Subject: {{ticket_subject}}<br /> Status: {{ticket_status}}<br /> Ticket URL: {{ticket_link}}<br /> ----------------------------------------------</p>', 'Yes', 'Yes', 0),
(23, 'Purchase Invoice:Invoice Created', 1, '{{business_name}} Invoice', '<div style=\"line-height: 1.6; color: #222; text-align: left; width: 550px; font-size: 10pt; margin: 0px 10px; font-family: verdana,\'droid sans\',\'lucida sans\',sans-serif; padding: 14px; border: 3px solid #d8d8d8; border-top: 3px solid #007bc3;\">\n<div style=\"padding: 5px; font-size: 11pt; font-weight: bold;\">Greetings,</div>\n<div style=\"padding: 5px;\">This email serves as your official invoice from <strong>{{business_name}}. </strong></div>\n<div style=\"padding: 10px 5px;\">Invoice URL: {{invoice_url}}<br />Invoice ID: {{invoice_id}}<br />Invoice Amount: {{invoice_amount}}</div>\n<div style=\"padding: 5px;\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span></div>\n<div style=\"padding: 0px 5px;\">\n<div>Best Regards,<br />{{business_name}} Team</div>\n</div>\n</div>', 'Yes', 'Yes', 0),
(24, 'Quote:Quote Cancelled', 1, '{{business_name}} Quote', '<div style=\"line-height: 1.6; color: #222; text-align: left; width: 550px; font-size: 10pt; margin: 0px 10px; font-family: verdana,sans-serif; padding: 14px; border: 3px solid #d8d8d8; border-top: 3px solid #007bc3;\">\n<div style=\"padding: 5px; font-size: 11pt; font-weight: bold;\">Greetings,</div>\n<div style=\"padding: 5px;\">Dear {{contact_name}},&nbsp;<br />We are sorry to see you go. If you chnage your mind, you can Accept it again from following url. The quote is valid until {{valid_until}}.</div>\n<div style=\"padding: 10px 5px;\">Quote Unique URL: <a href=\"http://stackb.dev/{{quote_url}}\" target=\"_blank\" rel=\"noopener noreferrer\">{{quote_url}}</a></div>\n<div style=\"padding: 5px;\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">You may view the quote at any time and simply reply to this email with any further questions or requirement.</span></div>\n<div style=\"padding: 0px 5px;\">\n<div>Best Regards,<br />{{business_name}} Team</div>\n</div>\n</div>', 'Yes', 'Yes', 0),
(25, 'Quote:Quote Accepted', 1, '{{business_name}} Quote', '<div style=\"line-height: 1.6; color: #222; text-align: left; width: 550px; font-size: 10pt; margin: 0px 10px; font-family: verdana,sans-serif; padding: 14px; border: 3px solid #d8d8d8; border-top: 3px solid #007bc3;\">\n<div style=\"padding: 5px; font-size: 11pt; font-weight: bold;\">Greetings,</div>\n<div style=\"padding: 5px;\">Dear {{contact_name}},&nbsp;<br />Thank you for accepting the Quote.</div>\n<div style=\"padding: 10px 5px;\">Quote: <a href=\"{{quote_url}}\" target=\"_blank\" rel=\"noopener noreferrer\">{{quote_url}}</a></div>\n<div style=\"padding: 5px;\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">You may view the quote at any time and simply reply to this email with any further questions or requirement.</span></div>\n<div style=\"padding: 0px 5px;\">\n<div>Best Regards,<br />{{business_name}} Team</div>\n</div>\n</div>', 'Yes', 'Yes', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sys_events`
--

CREATE TABLE `sys_events` (
  `id` int(11) NOT NULL,
  `title` text,
  `description` text,
  `contacts` text,
  `deals` text,
  `owner` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `etype` varchar(200) DEFAULT NULL,
  `priority` varchar(200) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `o` varchar(200) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `iid` int(11) NOT NULL DEFAULT '0',
  `oid` int(11) NOT NULL DEFAULT '0',
  `rid` int(11) NOT NULL DEFAULT '0',
  `company_id` int(11) NOT NULL DEFAULT '0',
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `allday` int(1) NOT NULL DEFAULT '0',
  `notification` int(1) NOT NULL DEFAULT '0',
  `trash` int(1) NOT NULL DEFAULT '0',
  `archived` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_invoiceitems`
--

CREATE TABLE `sys_invoiceitems` (
  `id` int(10) NOT NULL,
  `invoiceid` int(10) NOT NULL DEFAULT '0',
  `userid` int(10) NOT NULL,
  `type` text NOT NULL,
  `relid` int(10) NOT NULL,
  `itemcode` varchar(100) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_type` varchar(255) NOT NULL,
  `tax_code` varchar(200) DEFAULT NULL,
  `description` text NOT NULL,
  `qty` varchar(20) NOT NULL DEFAULT '1',
  `amount` decimal(14,2) NOT NULL DEFAULT '0.00',
  `taxed` int(1) NOT NULL,
  `tax_name` varchar(200) DEFAULT NULL,
  `tax_rate` decimal(16,3) DEFAULT NULL,
  `taxamount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tax1` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `tax2` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `tax3` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `discount_type` varchar(100) DEFAULT NULL,
  `discount_amount` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(14,2) NOT NULL DEFAULT '0.00',
  `duedate` date DEFAULT NULL,
  `paymentmethod` text NOT NULL,
  `notes` text NOT NULL,
  `business_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_invoiceitems`
--

INSERT INTO `sys_invoiceitems` (`id`, `invoiceid`, `userid`, `type`, `relid`, `itemcode`, `item_id`, `item_type`, `tax_code`, `description`, `qty`, `amount`, `taxed`, `tax_name`, `tax_rate`, `taxamount`, `tax1`, `tax2`, `tax3`, `discount_type`, `discount_amount`, `total`, `duedate`, `paymentmethod`, `notes`, `business_id`, `created_at`, `updated_at`) VALUES
(247, 10, 50, '', 0, '5', 0, '', '', '<p>FLEET LABOUR</p>', '1', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '85.00', '2020-07-08', '', '', NULL, NULL, NULL),
(39, 9, 50, '', 0, '', 0, '', '', '<p>LIQUID GEL BATTERY </p>', '1', '210.00', 1, NULL, '8.250', '17.33', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '210.00', '2020-07-01', '', '', NULL, NULL, NULL),
(40, 9, 50, '', 0, '5', 0, '', '', '<p>FLEET LABOUR</p>', '1', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '85.00', '2020-07-01', '', '', NULL, NULL, NULL),
(246, 10, 50, '', 0, '', 0, '', '', '<p>LIQUID GEL BATTERY </p>', '1', '210.00', 1, NULL, '8.250', '17.33', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '210.00', '2020-07-08', '', '', NULL, NULL, NULL),
(47, 11, 50, '', 0, '5', 0, '', '', '<p>FLEET LABOUR</p>', '1', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '85.00', '2020-07-01', '', '', NULL, NULL, NULL),
(46, 11, 50, '', 0, '', 0, '', '', '<p>REAR BRAKE CALIPER </p>', '1', '180.25', 1, NULL, '8.250', '14.87', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '180.25', '2020-07-01', '', '', NULL, NULL, NULL),
(45, 11, 50, '', 0, '', 0, '', '', '<p>REAR BRAKE PADS </p>', '1', '56.95', 1, NULL, '8.250', '4.70', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '56.95', '2020-07-01', '', '', NULL, NULL, NULL),
(29, 7, 54, '', 0, '', 0, '', '', '<p>labor-replace fuel filter ,replace front passenger tire ,oil change, brake fixed ,rear camera fixed </p>', '1', '310.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '310.00', '2020-06-30', '', '', NULL, NULL, NULL),
(28, 7, 54, '', 0, '', 0, '', '', '<p>VAN NO:11</p><p>Oil and filter $141.82</p><p>fuel filter , $215.26</p><p>PF tire, $139.64</p><p>Brake sensor replace-$11.91</p>', '1', '508.63', 1, NULL, '8.250', '41.96', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '508.63', '2020-06-30', '', '', NULL, NULL, NULL),
(30, 8, 54, '', 0, '', 0, '', '', '<p>FRONT PADS </p>', '1', '79.44', 1, NULL, '8.250', '6.55', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '79.44', '2020-06-30', '', '', NULL, NULL, NULL),
(31, 8, 54, '', 0, '', 0, '', '', '<p>FRONT ROTORS SHAVED</p>', '2', '30.00', 1, NULL, '8.250', '4.95', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '60.00', '2020-06-30', '', '', NULL, NULL, NULL),
(32, 8, 54, '', 0, '', 0, '', '', '<p>FRONT BRAKE LABOUR</p>', '1', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '85.00', '2020-06-30', '', '', NULL, NULL, NULL),
(48, 11, 50, '', 0, '6', 0, '', '', '<p>FORD ROTOR SHAVE</p>', '2', '35.00', 1, NULL, '8.250', '5.78', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '70.00', '2020-07-01', '', '', NULL, NULL, NULL),
(49, 12, 50, '', 0, '', 0, '', '', '<p>FRONT PADS </p>', '1', '47.00', 1, NULL, '8.250', '3.88', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '47.00', '2020-07-01', '', '', NULL, NULL, NULL),
(50, 12, 50, '', 0, '5', 0, '', '', '<p>FLEET LABOUR</p>', '1', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '85.00', '2020-07-01', '', '', NULL, NULL, NULL),
(51, 12, 50, '', 0, '', 0, '', '', '<p>FRONT ROTORS </p>', '2', '52.00', 1, NULL, '8.250', '8.58', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '104.00', '2020-07-01', '', '', NULL, NULL, NULL),
(211, 13, 57, '', 0, '', 0, '', '', '<p>PASSENGER SIDE HEADLIGHT TAPS FIX </p>', '1', '250.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '250.00', '2020-07-06', '', '', NULL, NULL, NULL),
(210, 14, 57, '', 0, '2', 0, '', '', '<p>Oil Change</p>', '1', '25.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '25.00', '2020-07-06', '', '', NULL, NULL, NULL),
(209, 14, 57, '', 0, '', 0, '', '', '<p>FULL SYN OIL & FILTER </p>', '1', '37.89', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '37.89', '2020-07-06', '', '', NULL, NULL, NULL),
(208, 15, 57, '', 0, '', 0, '', '', '<p>HODD AND ROOF FIX AND PAINT </p>', '1', '800.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '800.00', '2020-07-06', '', '', NULL, NULL, NULL),
(207, 16, 57, '', 0, '', 0, '', '', '<p>DRIVER DOOR REPLACE AND PAINT </p>', '1', '350.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '350.00', '2020-07-06', '', '', NULL, NULL, NULL),
(206, 17, 57, '', 0, '', 0, '', '', '<p>AIR FILTER </p>', '1', '22.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '22.00', '2020-07-06', '', '', NULL, NULL, NULL),
(205, 17, 57, '', 0, '', 0, '', '', '<p>AC FILTER REPLACE AND CLEAN THE DRAIN PIPE </p>', '1', '20.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '20.00', '2020-07-06', '', '', NULL, NULL, NULL),
(204, 18, 57, '', 0, '', 0, '', '', '<p>GPS INSTALLED & 1 GALLON COOLANT </p>', '1', '59.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '59.00', '2020-07-06', '', '', NULL, NULL, NULL),
(203, 19, 57, '', 0, '2', 0, '', '', '<p>Oil Change</p>', '1', '25.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '25.00', '2020-07-06', '', '', NULL, NULL, NULL),
(202, 19, 57, '', 0, '', 0, '', '', '<p>FULL SYN OIL </p>', '1', '29.88', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '29.88', '2020-07-06', '', '', NULL, NULL, NULL),
(201, 19, 57, '', 0, '', 0, '', '', '<p>OIL FILTER</p>', '1', '6.98', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '6.98', '2020-07-06', '', '', NULL, NULL, NULL),
(200, 20, 57, '', 0, '', 0, '', '', '<p>FRONT BUMPER FIX AND PAINT </p>', '1', '300.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '300.00', '2020-07-06', '', '', NULL, NULL, NULL),
(64, 21, 50, '', 0, '', 0, '', '', '<p>LIQUID  GEL BATTERY </p>', '1', '210.00', 1, NULL, '8.250', '17.33', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '210.00', '2020-07-02', '', '', NULL, NULL, NULL),
(65, 21, 50, '', 0, '', 0, '', '', '<p>SEAT BELT BUCKLE </p>', '1', '121.00', 1, NULL, '8.250', '9.98', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '121.00', '2020-07-02', '', '', NULL, NULL, NULL),
(66, 21, 50, '', 0, '', 0, '', '', '<p>FLEET LABOUR </p>', '1', '140.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '140.00', '2020-07-02', '', '', NULL, NULL, NULL),
(67, 22, 50, '', 0, '', 0, '', '', '<p>SEAT BLET RETRACTOR </p>', '1', '296.00', 1, NULL, '8.250', '24.42', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '296.00', '2020-07-02', '', '', NULL, NULL, NULL),
(68, 22, 50, '', 0, '', 0, '', '', '<p>DRIVER SIDE RAIL REMOVE AND FIXED AND SEAT BELT REPLACE </p>', '1', '160.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '160.00', '2020-07-02', '', '', NULL, NULL, NULL),
(442, 23, 57, '', 0, '', 0, '', '', '<p>REPLACE BLOWER MOTOR </p>', '2', '65.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '130.00', '2020-07-20', '', '', NULL, NULL, NULL),
(197, 24, 57, '', 0, '', 0, '', '', '<p>FRONT BRAKE AND ROTORS CHANGE  1.5 HR</p><p>REAR BRAKE AND ROTORS CHANGE   1.5 HR</p><p>FIX DRIVER DOOR SWITCH .ROOF SAND AND PAINT </p><p>A/C COMPRESSOR REPLACE 1.8 HR </p>', '5', '65.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '325.00', '2020-07-06', '', '', NULL, NULL, NULL),
(196, 24, 57, '', 0, '', 0, '', '', '<p>A/C REFILL </p>', '1', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '85.00', '2020-07-06', '', '', NULL, NULL, NULL),
(195, 24, 57, '', 0, '', 0, '', '', '<p>A/C COMPRESSOR HAVC</p>', '1', '224.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '224.00', '2020-07-06', '', '', NULL, NULL, NULL),
(194, 24, 57, '', 0, '', 0, '', '', '<p>FULL SYN OIL </p>', '7', '4.98', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '34.86', '2020-07-06', '', '', NULL, NULL, NULL),
(193, 24, 57, '', 0, '', 0, '', '', '<p>OIL FILTER </p>', '1', '8.20', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '8.20', '2020-07-06', '', '', NULL, NULL, NULL),
(192, 24, 57, '', 0, '', 0, '', '', '<p>FRONT ROTORS</p>', '2', '41.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '82.00', '2020-07-06', '', '', NULL, NULL, NULL),
(190, 24, 57, '', 0, '', 0, '', '', '<p>FRONT BRAKE PADS </p>', '1', '34.77', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '34.77', '2020-07-06', '', '', NULL, NULL, NULL),
(191, 24, 57, '', 0, '', 0, '', '', '<p>REAR ROTORS </p>', '2', '63.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '126.00', '2020-07-06', '', '', NULL, NULL, NULL),
(189, 24, 57, '', 0, '', 0, '', '', '<p>REAR BRAKE PADS </p>', '1', '36.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '36.00', '2020-07-06', '', '', NULL, NULL, NULL),
(188, 25, 57, '', 0, '', 0, '', '', '<p>FULL SYN OIL </p>', '8', '4.98', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '39.84', '2020-07-06', '', '', NULL, NULL, NULL),
(187, 25, 57, '', 0, '', 0, '', '', '<p>OIL FILTER </p>', '1', '9.78', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '9.78', '2020-07-06', '', '', NULL, NULL, NULL),
(186, 25, 57, '', 0, '', 0, '', '', '<p>OIL AND FILTER DRIVER SEAT FIX 65</p>', '1', '90.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '90.00', '2020-07-06', '', '', NULL, NULL, NULL),
(185, 26, 57, '', 0, '', 0, '', '', '<p>STATE INSPECTION </p>', '1', '45.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '45.00', '2020-07-06', '', '', NULL, NULL, NULL),
(184, 26, 57, '', 0, '', 0, '', '', '<p>FRONT PADS REPLACE </p>', '1', '65.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '65.00', '2020-07-06', '', '', NULL, NULL, NULL),
(183, 26, 57, '', 0, '', 0, '', '', '<p>FRONT PADS </p>', '1', '39.83', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '39.83', '2020-07-06', '', '', NULL, NULL, NULL),
(153, 27, 59, '', 0, '', 0, '', '', '<p>STRUT ASSEMBLY </p>', '1', '108.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '108.00', '2020-07-03', '', '', NULL, NULL, NULL),
(118, 28, 59, '', 0, '', 0, '', '', '<p>STEERING RACK REPLACE </p>', '1', '200.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '200.00', '2020-07-03', '', '', NULL, NULL, NULL),
(140, 29, 59, '', 0, '', 0, '', '', '<p>A/C REFILL </p>', '1', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '85.00', '2020-07-03', '', '', NULL, NULL, NULL),
(139, 29, 59, '', 0, '', 0, '', '', '<p>A/C COMPPRESSOR REPLACE </p>', '1.9', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '161.50', '2020-07-03', '', '', NULL, NULL, NULL),
(143, 30, 59, '', 0, '', 0, '', '', '<p>REPLACE RAND N PINION </p>', '2.8', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '238.00', '2020-07-03', '', '', NULL, NULL, NULL),
(142, 30, 59, '', 0, '', 0, '', '', '<p>A/C CONDENSER</p>', '1', '89.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '89.00', '2020-07-03', '', '', NULL, NULL, NULL),
(141, 30, 59, '', 0, '', 0, '', '', '<p>RACK N PINION </p>', '1', '198.85', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '198.85', '2020-07-03', '', '', NULL, NULL, NULL),
(147, 31, 59, '', 0, '', 0, '', '', '<p>ENGINE MOUNT </p>', '1', '79.99', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '79.99', '2020-07-03', '', '', NULL, NULL, NULL),
(148, 31, 59, '', 0, '', 0, '', '', '<p>REPLACE ENGINE FRONT MOUNT RIGHT SIDE </p>', '3', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '255.00', '2020-07-03', '', '', NULL, NULL, NULL),
(146, 31, 59, '', 0, '', 0, '', '', '<p>FULYY SYN OIL </p>', '6', '4.35', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '26.10', '2020-07-03', '', '', NULL, NULL, NULL),
(145, 31, 59, '', 0, '2', 0, '', '', '<p>Oil Change</p>', '1', '25.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '25.00', '2020-07-03', '', '', NULL, NULL, NULL),
(144, 31, 59, '', 0, '', 0, '', '', '<p>OIL FILTER </p>', '1', '6.99', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '6.99', '2020-07-03', '', '', NULL, NULL, NULL),
(99, 32, 59, '', 0, '', 0, '', '', '<p>A/C CHECK AND REFILL </p>', '1', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '85.00', '2020-07-03', '', '', NULL, NULL, NULL),
(125, 33, 59, '', 0, '', 0, '', '', '<p>REPLACE FRONT BRAKE PADS </p>', '1', '65.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '65.00', '2020-07-03', '', '', NULL, NULL, NULL),
(124, 33, 59, '', 0, '', 0, '', '', '<p>FRONT BRAKE PADS </p>', '1', '39.85', 1, NULL, '8.250', '3.29', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '39.85', '2020-07-03', '', '', NULL, NULL, NULL),
(149, 34, 59, '', 0, '', 0, '', '', '<p>FRONT SHOCK REPLACE / REPLACE FRONT HUB </p>', '1', '150.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '150.00', '2020-07-03', '', '', NULL, NULL, NULL),
(151, 34, 59, '', 0, '', 0, '', '', '<p>HUB ASSY</p>', '1', '56.65', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '56.65', '2020-07-03', '', '', NULL, NULL, NULL),
(150, 34, 59, '', 0, '', 0, '', '', '<p style=\"margin-left: 20px;\">PASSENGER SHOCK </p>', '1', '80.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '80.00', '2020-07-03', '', '', NULL, NULL, NULL),
(105, 35, 59, '', 0, '', 0, '', '', '<p>FRONT BRAKE PADS </p>', '1', '36.65', 1, NULL, '8.250', '3.02', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '36.65', '2020-07-03', '', '', NULL, NULL, NULL),
(106, 35, 59, '', 0, '5', 0, '', '', '<p>FLEET LABOUR</p>', '1', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '85.00', '2020-07-03', '', '', NULL, NULL, NULL),
(152, 36, 59, '', 0, '', 0, '', '', '<p>ENGINE REPLACE </p>', '1', '500.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '500.00', '2020-07-03', '', '', NULL, NULL, NULL),
(108, 37, 50, '', 0, '', 0, '', '', '<p>SEAT BELT RETRACTOR </p>', '1', '296.00', 1, NULL, '8.250', '24.42', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '296.00', '2020-07-03', '', '', NULL, NULL, NULL),
(109, 37, 50, '', 0, '5', 0, '', '', '<p>FLEET LABOUR</p>', '1', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '85.00', '2020-07-03', '', '', NULL, NULL, NULL),
(110, 37, 50, '', 0, '', 0, '', '', '<p>SEAT BELT BUCKLE </p>', '1', '121.00', 1, NULL, '8.250', '9.98', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '121.00', '2020-07-03', '', '', NULL, NULL, NULL),
(934, 38, 59, '', 0, '', 0, '', '', '<p>FRONT PADS AND ROTORS (PARTS)</p>', '1', '339.99', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '339.99', '2020-08-21', '', '', NULL, NULL, NULL),
(933, 38, 59, '', 0, '', 0, '', '', '<p>FRONT PADS AND ROTORS REPLACE (LABOR CHARGES )</p>', '1', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '85.00', '2020-08-21', '', '', NULL, NULL, NULL),
(154, 27, 59, '', 0, '', 0, '', '', '<p>REPLACE FRONT STRUT ASSEMBLY</p>', '1', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '85.00', '2020-07-03', '', '', NULL, NULL, NULL),
(157, 39, 61, '', 0, '', 0, '', '', '<p>DRIVER SIDE BOTH DOORS FIX AND PAINT</p>', '1', '450.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '450.00', '2020-07-06', '', '', NULL, NULL, NULL),
(158, 40, 61, '', 0, '', 0, '', '', '<p>FRONT BUMPER FIX AND PAINT </p>', '1', '250.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '250.00', '2020-07-06', '', '', NULL, NULL, NULL),
(159, 41, 61, '', 0, '', 0, '', '', '<p>BUMPER TOW COVER </p>', '1', '12.72', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '12.72', '2020-07-06', '', '', NULL, NULL, NULL),
(160, 41, 61, '', 0, '', 0, '', '', '<p>FRONT BUMPER</p>', '1', '300.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '300.00', '2020-07-06', '', '', NULL, NULL, NULL),
(161, 42, 61, '', 0, '', 0, '', '', '<p>REAR BUMPER FIX</p><p>FRONT BUMPER TOUCH-UP </p>', '1', '150.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '150.00', '2020-07-06', '', '', NULL, NULL, NULL),
(162, 43, 62, '', 0, '', 0, '', '', '<p>LABOUR </p>', '4.5', '120.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '540.00', '2020-07-06', '', '', NULL, NULL, NULL),
(163, 43, 62, '', 0, '', 0, '', '', '<p>TOWING CHARGES </p>', '1', '180.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '180.00', '2020-07-06', '', '', NULL, NULL, NULL),
(164, 43, 62, '', 0, '', 0, '', '', '<p>STORAGE CHARGES </p>', '1', '245.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '245.00', '2020-07-06', '', '', NULL, NULL, NULL),
(165, 44, 53, '', 0, '', 0, '', '', '<p>TAIL GATE REAPIR </p>', '1', '200.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '200.00', '2020-07-06', '', '', NULL, NULL, NULL),
(166, 45, 53, '', 0, '', 0, '', '', '<p>PASSENGER REAR DOOR</p><p>PASSENGER REAR QUARTER PANEL</p><p>FRONT BUMPER </p>', '1', '700.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '700.00', '2020-07-06', '', '', NULL, NULL, NULL),
(167, 46, 53, '', 0, '', 0, '', '', '<p>PASSENGER FENDER AND FRONT BUMPER </p>', '1', '400.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '400.00', '2020-07-06', '', '', NULL, NULL, NULL),
(173, 47, 53, '', 0, '', 0, '', '', '<p>FRONT BUMPER </p>', '1', '200.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '200.00', '2020-07-06', '', '', NULL, NULL, NULL),
(174, 48, 53, '', 0, '', 0, '', '', '<p>REAR BUMPER AND TAIL GATE PAINT </p>', '1', '375.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '375.00', '2020-07-06', '', '', NULL, NULL, NULL),
(175, 49, 53, '', 0, '', 0, '', '', '<p>HOOD FIX AND PAINT </p>', '1', '225.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '225.00', '2020-07-06', '', '', NULL, NULL, NULL),
(176, 50, 53, '', 0, '', 0, '', '', '<p>REAR BUMPER </p><p>PASSENGER BOTH DOORS AND FENDER </p>', '1', '800.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '800.00', '2020-07-06', '', '', NULL, NULL, NULL),
(177, 51, 53, '', 0, '', 0, '', '', '<p>FRONT BUMPER </p><p>PASSENGER QUARLTER PANEL AND FENDER </p>', '1', '650.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '650.00', '2020-07-06', '', '', NULL, NULL, NULL),
(178, 52, 53, '', 0, '', 0, '', '', '<p>FRONT HOOD AND FRONT BUMPER </p>', '1', '400.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '400.00', '2020-07-06', '', '', NULL, NULL, NULL),
(218, 53, 57, '', 0, '', 0, '', '', '<p>REPLACE BATTERY </p>', '1', '116.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '116.00', '2020-07-06', '', '', NULL, NULL, NULL),
(480, 85, 54, '', 0, '', 0, '', '', '<p>AH2457516LT</p>', '4', '121.00', 1, NULL, '8.250', '39.93', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '484.00', '2020-07-22', '', '', NULL, NULL, NULL),
(198, 24, 57, '', 0, '2', 0, '', '', '<p>Oil Change</p>', '1', '25.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '25.00', '2020-07-06', '', '', NULL, NULL, NULL),
(217, 55, 50, '', 0, '4', 0, '', '', '<p>Tire service</p>', '1', '25.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '25.00', '2020-07-06', '', '', NULL, NULL, NULL),
(216, 55, 50, '', 0, '', 0, '', '', '<p>TIRE DISPO CHARGES </p>', '1', '4.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '4.00', '2020-07-06', '', '', NULL, NULL, NULL),
(215, 55, 50, '', 0, '', 0, '', '', '<p>TIRE SALE </p>', '1', '128.00', 1, NULL, '8.250', '10.56', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '128.00', '2020-07-06', '', '', NULL, NULL, NULL),
(219, 53, 57, '', 0, '', 0, '', '', '<p>LABOUR</p>', '1', '10.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '10.00', '2020-07-06', '', '', NULL, NULL, NULL),
(227, 56, 50, '', 0, '', 0, '', '', '<p>OIL FILTER </p>', '1', '48.99', 1, NULL, '8.250', '4.04', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '48.99', '2020-07-06', '', '', NULL, NULL, NULL),
(226, 56, 50, '', 0, '', 0, '', '', '<p>1G 15W ROTELLA T4</p>', '4', '42.99', 1, NULL, '8.250', '14.19', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '171.96', '2020-07-06', '', '', NULL, NULL, NULL),
(225, 56, 50, '', 0, '', 0, '', '', '<p>HD FUEL ELEMENT </p>', '1', '88.99', 1, NULL, '8.250', '7.34', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '88.99', '2020-07-06', '', '', NULL, NULL, NULL),
(224, 56, 50, '', 0, '', 0, '', '', '<p>HD FUEL FILTER </p>', '1', '68.99', 1, NULL, '8.250', '5.69', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '68.99', '2020-07-06', '', '', NULL, NULL, NULL),
(445, 57, 57, '', 0, '', 0, '', '', '<p>ALL FRAME BUSHING REMOVE AND REPLACE </p>', '1', '800.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '800.00', '2020-07-20', '', '', NULL, NULL, NULL),
(444, 57, 57, '', 0, '', 0, '', '', '<p>OIL </p>', '13', '4.98', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '64.74', '2020-07-20', '', '', NULL, NULL, NULL),
(231, 58, 50, '', 0, '', 0, '', '', '<p>LEMAN TIRE </p>', '1', '128.00', 1, NULL, '8.250', '10.56', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '128.00', '2020-07-07', '', '', NULL, NULL, NULL),
(232, 58, 50, '', 0, '', 0, '', '', '<p>TIRE DISPO</p>', '1', '4.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '4.00', '2020-07-07', '', '', NULL, NULL, NULL),
(233, 58, 50, '', 0, '4', 0, '', '', '<p>Tire service</p>', '1', '25.00', 1, NULL, '8.250', '2.06', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '25.00', '2020-07-07', '', '', NULL, NULL, NULL),
(234, 59, 50, '', 0, '', 0, '', '', '<p>FRONT BRAKES </p>', '1', '54.99', 1, NULL, '8.250', '4.54', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '54.99', '2020-07-07', '', '', NULL, NULL, NULL),
(235, 59, 50, '', 0, '', 0, '', '', '<p>REAR BRAKE PADS</p>', '1', '52.99', 1, NULL, '8.250', '4.37', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '52.99', '2020-07-07', '', '', NULL, NULL, NULL),
(236, 59, 50, '', 0, '', 0, '', '', '<p>AHNIS2500FCALIPER</p>', '1', '185.00', 1, NULL, '8.250', '15.26', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '185.00', '2020-07-07', '', '', NULL, NULL, NULL),
(237, 59, 50, '', 0, '', 0, '', '', '<p>FRONT ROTOR </p>', '1', '47.00', 1, NULL, '8.250', '3.88', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '47.00', '2020-07-07', '', '', NULL, NULL, NULL),
(238, 59, 50, '', 0, '5', 0, '', '', '<p>FLEET LABOUR</p>', '2', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '170.00', '2020-07-07', '', '', NULL, NULL, NULL),
(250, 60, 50, '', 0, '5', 0, '', '', '<p>FLEET LABOUR</p>', '2', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '170.00', '2020-07-08', '', '', NULL, NULL, NULL),
(249, 60, 50, '', 0, '', 0, '', '', '<p>BANK 2 CAT </p>', '1', '289.00', 1, NULL, '8.250', '23.84', '0.0000', '0.0000', '0.0000', 'p', '8.3521', '280.65', '2020-07-08', '', '', NULL, NULL, NULL),
(248, 60, 50, '', 0, '', 0, '', '', '<p>BANK 1 CAT</p>', '1', '296.00', 1, NULL, '8.250', '24.42', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '296.00', '2020-07-08', '', '', NULL, NULL, NULL),
(443, 57, 57, '', 0, '', 0, '', '', '<p>OIL FILTER </p>', '1', '10.50', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '10.50', '2020-07-20', '', '', NULL, NULL, NULL),
(478, 84, 54, '', 0, '', 0, '', '', '<p>CHECK ENGINE LIGHT RESET AND BRAKE BLEED </p>', '2', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '170.00', '2020-07-22', '', '', NULL, NULL, NULL),
(254, 61, 57, '', 0, '', 0, '', '', '<p>FUEL INJECTOR </p>', '1', '139.47', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '139.47', '2020-07-08', '', '', NULL, NULL, NULL),
(255, 61, 57, '', 0, '', 0, '', '', '<p>FUEL INJECTOR SEALS KIT</p>', '4', '16.85', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '67.40', '2020-07-08', '', '', NULL, NULL, NULL),
(256, 61, 57, '', 0, '', 0, '', '', '<p>GAS </p>', '1', '20.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '20.00', '2020-07-08', '', '', NULL, NULL, NULL),
(257, 61, 57, '', 0, '', 0, '', '', '<p>LABOUR </p>', '3.5', '65.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '227.50', '2020-07-08', '', '', NULL, NULL, NULL),
(258, 61, 57, '', 0, '', 0, '', '', '<p>TOWING CHARGES </p>', '1', '130.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '130.00', '2020-07-08', '', '', NULL, NULL, NULL),
(291, 62, 50, '', 0, '', 0, '', '', '<p>SLINDING DOOR INNER HANDLE ASSY </p>', '1.7', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '144.50', '2020-07-10', '', '', NULL, NULL, NULL),
(292, 62, 50, '', 0, '', 0, '', '', '<p>AAADOOR HANDLE </p>', '1', '41.34', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '41.34', '2020-07-10', '', '', NULL, NULL, NULL),
(429, 63, 50, '', 0, '', 0, '', '', '<p>TRANSPORT CHARGES </p>', '1', '700.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '700.00', '2020-07-18', '', '', NULL, NULL, NULL),
(428, 63, 50, '', 0, '', 0, '', '', '<p>A/C REFILL </p>', '1', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '85.00', '2020-07-18', '', '', NULL, NULL, NULL),
(427, 63, 50, '', 0, '', 0, '', '', '<p>TORQUE CONVERTER BOLTS </p>', '8', '14.67', 1, NULL, '8.250', '9.68', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '117.36', '2020-07-18', '', '', NULL, NULL, NULL),
(426, 63, 50, '', 0, '', 0, '', '', '<p>FUEL FILTER </p>', '1', '180.00', 1, NULL, '8.250', '14.85', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '180.00', '2020-07-18', '', '', NULL, NULL, NULL),
(425, 63, 50, '', 0, '', 0, '', '', '<p>TAIL LIGHT </p>', '1', '121.00', 1, NULL, '8.250', '9.98', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '121.00', '2020-07-18', '', '', NULL, NULL, NULL),
(424, 63, 50, '', 0, '', 0, '', '', '<p>2 OIL CHANGES AND FILTER </p>', '6', '38.00', 1, NULL, '8.250', '18.81', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '228.00', '2020-07-18', '', '', NULL, NULL, NULL),
(423, 63, 50, '', 0, '', 0, '', '', '<p>RADIA 30 A </p>', '1', '21.00', 1, NULL, '8.250', '1.73', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '21.00', '2020-07-18', '', '', NULL, NULL, NULL),
(422, 63, 50, '', 0, '', 0, '', '', '<p>OIL DIP STICK </p>', '1', '36.96', 1, NULL, '8.250', '3.05', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '36.96', '2020-07-18', '', '', NULL, NULL, NULL),
(421, 63, 50, '', 0, '', 0, '', '', '<p>DRAIN PLUG </p>', '1', '24.53', 1, NULL, '8.250', '2.02', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '24.53', '2020-07-18', '', '', NULL, NULL, NULL),
(420, 63, 50, '', 0, '', 0, '', '', '<p>WIRING HARNESS REPAIR </p>', '1', '600.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '600.00', '2020-07-18', '', '', NULL, NULL, NULL),
(419, 63, 50, '', 0, '', 0, '', '', '<p>REPLACE ENGINE </p>', '34', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '2890.00', '2020-07-18', '', '', NULL, NULL, NULL),
(299, 64, 50, '', 0, '4', 0, '', '', '<p>Tire service</p>', '2', '25.00', 1, NULL, '8.250', '4.13', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '50.00', '2020-07-10', '', '', NULL, NULL, NULL),
(298, 64, 50, '', 0, '', 0, '', '', '<p>TIRE DISPO</p>', '2', '4.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '8.00', '2020-07-10', '', '', NULL, NULL, NULL),
(297, 64, 50, '', 0, '', 0, '', '', '<p>FRONT 2 TIRES </p>', '2', '147.00', 1, NULL, '8.250', '24.26', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '294.00', '2020-07-10', '', '', NULL, NULL, NULL),
(296, 65, 50, '', 0, '', 0, '', '', '<p>WRONG FUEL </p>', '1', '650.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '650.00', '2020-07-10', '', '', NULL, NULL, NULL),
(725, 66, 50, '', 0, '5', 0, '', '', '<p>FLEET LABOUR</p>', '2', '85.00', 1, NULL, '8.250', '14.03', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '170.00', '2020-08-06', '', '', NULL, NULL, NULL),
(724, 66, 50, '', 0, '', 0, '', '', '<p>BANK 2 ACT </p>', '1', '286.00', 1, NULL, '8.250', '23.60', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '286.00', '2020-08-06', '', '', NULL, NULL, NULL),
(723, 66, 50, '', 0, '', 0, '', '', '<p>BANK 1 CAT </p>', '1', '296.00', 1, NULL, '8.250', '24.42', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '296.00', '2020-08-06', '', '', NULL, NULL, NULL),
(435, 73, 50, '', 0, '', 0, '', '', '<p>DRIVER RAIL FIXED </p>', '1', '120.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '120.00', '2020-07-18', '', '', NULL, NULL, NULL),
(330, 71, 50, '', 0, '', 0, '', '', '<p>FUEL </p>', '1', '20.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '20.00', '2020-07-13', '', '', NULL, NULL, NULL),
(434, 72, 50, '', 0, '', 0, '', '', '<p>TOW CHARGES </p>', '1', '320.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '320.00', '2020-07-18', '', '', NULL, NULL, NULL),
(433, 72, 50, '', 0, '', 0, '', '', '<p>NEW STARTER </p>', '1', '279.89', 1, NULL, '8.250', '23.09', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '279.89', '2020-07-18', '', '', NULL, NULL, NULL),
(432, 72, 50, '', 0, '', 0, '', '', '<p>STARTER REPLACE </p>', '3', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '255.00', '2020-07-18', '', '', NULL, NULL, NULL),
(329, 71, 50, '', 0, '', 0, '', '', '<p>WRONG FUEL SYSTEM CLEAN </p>', '1', '650.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '650.00', '2020-07-13', '', '', NULL, NULL, NULL),
(467, 100, 50, '', 0, '', 0, '', '', '<p>WIPER BLADE BOTH </p>', '1', '12.99', 1, NULL, '8.250', '1.07', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '12.99', '2020-07-22', '', '', NULL, NULL, NULL),
(488, 104, 54, '', 0, '4', 0, '', '', '<p>Tire service</p>', '2', '25.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '50.00', '2020-07-22', '', '', NULL, NULL, NULL),
(466, 100, 50, '', 0, '', 0, '', '', '<p>WINDOWS SWITCH </p>', '1', '109.00', 1, NULL, '8.250', '8.99', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '109.00', '2020-07-22', '', '', NULL, NULL, NULL),
(487, 104, 54, '', 0, '', 0, '', '', '<p>2 FRONT TIRES </p>', '2', '107.00', 1, NULL, '8.250', '17.66', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '214.00', '2020-07-22', '', '', NULL, NULL, NULL),
(482, 98, 54, '', 0, '', 0, '', '', '<p>labor</p>', '4', '25.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '100.00', '2020-07-22', '', '', NULL, NULL, NULL),
(481, 98, 54, '', 0, '', 0, '', '', '<p>product</p>', '4', '121.00', 1, NULL, '8.250', '39.93', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '484.00', '2020-07-22', '', '', NULL, NULL, NULL),
(372, 78, 57, '', 0, '', 0, '', '', '<p>REAR TOW HOOK </p>', '1', '65.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '65.00', '2020-07-15', '', '', NULL, NULL, NULL),
(378, 79, 57, '', 0, '', 0, '', '', '<p>AC REFILL </p>', '1', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '85.00', '2020-07-15', '', '', NULL, NULL, NULL),
(441, 23, 57, '', 0, '', 0, '', '', '<p>HEADLIGHT BUFF </p>', '1', '50.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '50.00', '2020-07-20', '', '', NULL, NULL, NULL),
(440, 23, 57, '', 0, '', 0, '', '', '<p>BLOWER MOTOR </p>', '1', '86.33', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '86.33', '2020-07-20', '', '', NULL, NULL, NULL),
(439, 23, 57, '', 0, '', 0, '', '', '<p>WHEEL BALANCE AND ROTATE </p>', '1', '40.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '40.00', '2020-07-20', '', '', NULL, NULL, NULL),
(848, 80, 57, '', 0, '', 0, '', '', '<p>FRONT GRILL REMOVE AND REPLACE </p>', '1', '70.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '70.00', '2020-08-11', '', '', NULL, NULL, NULL),
(385, 81, 57, '', 0, '', 0, '', '', '<p>FOG LIGHT </p>', '2', '85.99', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '171.98', '2020-07-15', '', '', NULL, NULL, NULL),
(384, 81, 57, '', 0, '', 0, '', '', '<p>SIDE RAILS INSTALL </p>', '2', '65.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '130.00', '2020-07-15', '', '', NULL, NULL, NULL),
(383, 81, 57, '', 0, '', 0, '', '', '<p>FRONT BUMPER </p>', '1', '200.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '200.00', '2020-07-15', '', '', NULL, NULL, NULL),
(386, 82, 57, '', 0, '', 0, '', '', '<p>POWER STEERING OUT </p>', '1', '120.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '120.00', '2020-07-15', '', '', NULL, NULL, NULL),
(926, 83, 57, '', 0, '', 0, '', '', '<p>TIMING JOB </p>', '1', '1700.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '1700.00', '2020-08-20', '', '', NULL, NULL, NULL),
(925, 83, 57, '', 0, '', 0, '', '', '<p>LABOUR</p>', '1', '65.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '65.00', '2020-08-20', '', '', NULL, NULL, NULL),
(479, 85, 54, '', 0, '', 0, '', '', '<p>BALACED INSTALL AND MOUNT </p>', '4', '25.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '100.00', '2020-07-22', '', '', NULL, NULL, NULL),
(484, 86, 54, '', 0, '', 0, '', '', '<p>MOUNT AND BALANCE INSTALL </p>', '4', '25.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '100.00', '2020-07-22', '', '', NULL, NULL, NULL),
(483, 86, 54, '', 0, '', 0, '', '', '<p>AH2457516LT</p>', '4', '121.00', 1, NULL, '8.250', '39.93', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '484.00', '2020-07-22', '', '', NULL, NULL, NULL),
(486, 87, 54, '', 0, '', 0, '', '', '<p>INSTALL MOUNT AND BALANCE</p>', '3', '25.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '75.00', '2020-07-22', '', '', NULL, NULL, NULL),
(485, 87, 54, '', 0, '', 0, '', '', '<p>AH2457516LT</p>', '3', '121.00', 1, NULL, '8.250', '29.95', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '363.00', '2020-07-22', '', '', NULL, NULL, NULL),
(401, 88, 54, '', 0, '', 0, '', '', '<p>AH2457516LT (DRIVER REAR TIRE)</p>', '1', '121.00', 1, NULL, '8.250', '9.98', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '121.00', '2020-07-17', '', '', NULL, NULL, NULL),
(402, 88, 54, '', 0, '', 0, '', '', '<p>DRIVER RAIL FIX AND TIRE MOUNT AND BALANCE </p>', '1', '110.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '110.00', '2020-07-17', '', '', NULL, NULL, NULL),
(447, 89, 54, '', 0, '', 0, '', '', '<p>MOUNT AND BALNCE AND DRIVER RAIL FIXED</p>', '1', '185.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '185.00', '2020-07-21', '', '', NULL, NULL, NULL),
(446, 89, 54, '', 0, '', 0, '', '', '<p>ALL 4 TIRES </p><p>AH2456516LT </p>', '4', '121.00', 1, NULL, '8.250', '39.93', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '484.00', '2020-07-21', '', '', NULL, NULL, NULL),
(411, 90, 50, '', 0, '', 0, '', '', '<p>AH2457516LT DEMAGE TIRE SIDE WALL </p>', '1', '105.00', 1, NULL, '8.250', '8.66', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '105.00', '2020-07-17', '', '', NULL, NULL, NULL),
(412, 90, 50, '', 0, '', 0, '', '', '<p>MOUNT AND BALANCE</p>', '1', '25.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '25.00', '2020-07-17', '', '', NULL, NULL, NULL),
(436, 95, 50, '', 0, '', 0, '', '', '<p>REAR BRAKE PADS </p>', '1', '52.99', 1, NULL, '8.250', '4.37', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '52.99', '2020-07-18', '', '', NULL, NULL, NULL),
(431, 94, 54, '', 0, '', 0, '', '', '<p>WINDSHEILD REPLACE </p>', '1', '220.00', 1, NULL, '8.250', '18.15', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '220.00', '2020-07-18', '', '', NULL, NULL, NULL),
(437, 95, 50, '', 0, '', 0, '', '', '<p>ROTOR</p>', '1', '47.00', 1, NULL, '8.250', '3.88', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '47.00', '2020-07-18', '', '', NULL, NULL, NULL),
(438, 95, 50, '', 0, '5', 0, '', '', '<p>FLEET LABOUR</p>', '1', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '85.00', '2020-07-18', '', '', NULL, NULL, NULL),
(448, 96, 54, '', 0, '', 0, '', '', '<p>2 REAR TIRES AND 1 DRIVER FRONT TIRE </p>', '3', '121.00', 1, NULL, '8.250', '29.95', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '363.00', '2020-07-21', '', '', NULL, NULL, NULL),
(449, 96, 54, '', 0, '', 0, '', '', '<p>MOUNT BALANCE</p>', '3', '25.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '75.00', '2020-07-21', '', '', NULL, NULL, NULL),
(468, 100, 50, '', 0, '', 0, '', '', '<p>AHMERSBR( SEAT BELT )</p>', '1', '296.00', 1, NULL, '8.250', '24.42', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '296.00', '2020-07-22', '', '', NULL, NULL, NULL),
(469, 100, 50, '', 0, '5', 0, '', '', '<p>FLEET LABOUR</p>', '1', '85.00', 1, NULL, '8.250', '7.01', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '85.00', '2020-07-22', '', '', NULL, NULL, NULL),
(470, 101, 50, '', 0, '', 0, '', '', '<p>CAT CONVERTER  REPLACED </p>', '1', '296.00', 1, NULL, '8.250', '24.42', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '296.00', '2020-07-22', '', '', NULL, NULL, NULL),
(471, 101, 50, '', 0, '5', 0, '', '', '<p>FLEET LABOUR</p>', '1', '85.00', 1, NULL, '8.250', '7.01', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '85.00', '2020-07-22', '', '', NULL, NULL, NULL),
(472, 102, 50, '', 0, '', 0, '', '', '<p>PASSENGER FRONT TIRE </p>', '1', '107.00', 1, NULL, '8.250', '8.83', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '107.00', '2020-07-22', '', '', NULL, NULL, NULL),
(473, 102, 50, '', 0, '', 0, '', '', '<p>REAR BRAKE PADS</p>', '1', '52.99', 1, NULL, '8.250', '4.37', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '52.99', '2020-07-22', '', '', NULL, NULL, NULL),
(474, 102, 50, '', 0, '5', 0, '', '', '<p>FLEET LABOUR</p>', '1', '85.00', 1, NULL, '8.250', '7.01', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '85.00', '2020-07-22', '', '', NULL, NULL, NULL),
(475, 102, 50, '', 0, '4', 0, '', '', '<p>Tire service</p>', '1', '25.00', 1, NULL, '8.250', '2.06', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '25.00', '2020-07-22', '', '', NULL, NULL, NULL),
(476, 103, 50, '', 0, '', 0, '', '', '<p>WRONG FUEL </p>', '1', '650.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '650.00', '2020-07-22', '', '', NULL, NULL, NULL),
(477, 103, 50, '', 0, '', 0, '', '', '<p>SPARK PLUG </p>', '2', '24.00', 1, NULL, '8.250', '3.96', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '48.00', '2020-07-22', '', '', NULL, NULL, NULL),
(887, 184, 50, '', 0, '', 0, '', '', '<p>FLEET LABOR</p>', '1', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '85.00', '2020-08-17', '', '', NULL, NULL, NULL),
(886, 184, 50, '', 0, '', 0, '', '', '<p>REAR ROTORS REPLACED </p>', '2', '47.00', 1, NULL, '8.250', '7.76', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '94.00', '2020-08-17', '', '', NULL, NULL, NULL),
(826, 120, 53, '', 0, '', 0, '', '', '<p>MOTOR REPLACE</p>', '1', '1.00', 1, NULL, '8.250', '0.08', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '1.00', '2020-08-07', '', '', NULL, NULL, NULL),
(703, 118, 50, '', 0, '', 0, '', '', '<p>FUEL INJECTOR CLEANER </p>', '1', '129.99', 1, NULL, '8.250', '10.72', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '129.99', '2020-08-06', '', '', NULL, NULL, NULL),
(704, 118, 50, '', 0, '', 0, '', '', '<p>labor</p>', '7.5', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '637.50', '2020-08-06', '', '', NULL, NULL, NULL),
(699, 119, 50, '', 0, '', 0, '', '', '<p>LEMANLT TIRE</p>', '4', '105.00', 1, NULL, '8.250', '34.65', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '420.00', '2020-08-06', '', '', NULL, NULL, NULL),
(700, 119, 50, '', 0, '', 0, '', '', '<p>labor</p>', '4', '50.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '200.00', '2020-08-06', '', '', NULL, NULL, NULL),
(827, 120, 53, '', 0, '', 0, '', '', '<p>LABOR</p>', '1', '0.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '0.00', '2020-08-07', '', '', NULL, NULL, NULL),
(542, 123, 50, '', 0, '', 0, '', '', '<p>Tires</p>', '32', '109.00', 1, NULL, '8.250', '287.76', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '3488.00', '2020-07-30', '', '', NULL, NULL, NULL),
(810, 122, 57, '', 0, '', 0, '', '', '<p>OIL CHANGE</p>', '1', '25.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '25.00', '2020-08-07', '', '', NULL, NULL, NULL),
(811, 122, 57, '', 0, '', 0, '', '', '<p>LABOR HORN FIXED </p>', '1', '65.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '65.00', '2020-08-07', '', '', NULL, NULL, NULL),
(555, 127, 50, '', 0, '', 0, '', '', '<p>FRONT BRAKE PADS </p>', '1', '52.99', 1, NULL, '8.250', '4.37', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '52.99', '2020-07-31', '', '', NULL, NULL, NULL),
(556, 127, 50, '', 0, '', 0, '', '', '<p>FLEET LABOR </p>', '1', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '85.00', '2020-07-31', '', '', NULL, NULL, NULL),
(557, 128, 50, '', 0, '', 0, '', '', '<p>HD FUEL FILTER </p>', '1', '68.99', 1, NULL, '8.250', '5.69', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '68.99', '2020-07-31', '', '', NULL, NULL, NULL),
(558, 128, 50, '', 0, '', 0, '', '', '<p>HD FUEL FILTER</p>', '1', '88.99', 1, NULL, '8.250', '7.34', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '88.99', '2020-07-31', '', '', NULL, NULL, NULL),
(559, 128, 50, '', 0, '', 0, '', '', '<p>1G 15W ROTELLA T4</p>', '4', '42.99', 1, NULL, '8.250', '14.19', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '171.96', '2020-07-31', '', '', NULL, NULL, NULL),
(560, 128, 50, '', 0, '', 0, '', '', '<p>OIL FILTER </p>', '1', '48.99', 1, NULL, '8.250', '4.04', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '48.99', '2020-07-31', '', '', NULL, NULL, NULL),
(561, 129, 50, '', 0, '', 0, '', '', '<p>BANK1 CAT CONVERTER </p>', '1', '385.00', 1, NULL, '8.250', '31.76', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '385.00', '2020-07-31', '', '', NULL, NULL, NULL),
(562, 129, 50, '', 0, '', 0, '', '', '<p>FLEET LABOR </p>', '1', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '85.00', '2020-07-31', '', '', NULL, NULL, NULL),
(563, 130, 50, '', 0, '', 0, '', '', '<p>REAR CAMERA </p>', '1', '80.00', 1, NULL, '8.250', '6.60', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '80.00', '2020-07-31', '', '', NULL, NULL, NULL),
(564, 130, 50, '', 0, '', 0, '', '', '<p>INSTALL THE CAMERA </p>', '1', '65.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '65.00', '2020-07-31', '', '', NULL, NULL, NULL),
(572, 133, 50, '', 0, '', 0, '', '', '<p>SLIDING DOOR FIX </p>', '3', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '255.00', '2020-07-31', '', '', NULL, NULL, NULL),
(571, 132, 50, '', 0, '', 0, '', '', '<p>TRANSPORT CHARGES </p>', '1', '700.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '700.00', '2020-07-31', '', '', NULL, NULL, NULL),
(570, 132, 50, '', 0, '', 0, '', '', '<p>MAIN FUSE </p>', '1', '139.99', 1, NULL, '8.250', '11.55', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '139.99', '2020-07-31', '', '', NULL, NULL, NULL),
(573, 133, 50, '', 0, '', 0, '', '', '<p>AG657HF BRACKET </p>', '1', '276.00', 1, NULL, '8.250', '22.77', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '276.00', '2020-07-31', '', '', NULL, NULL, NULL),
(574, 134, 50, '', 0, '', 0, '', '', '<p style=\"margin-left: 40px;\">AHMER2500BATT</p>', '1', '220.00', 1, NULL, '8.250', '18.15', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '220.00', '2020-07-31', '', '', NULL, NULL, NULL),
(575, 134, 50, '', 0, '', 0, '', '', '<p>RAIL FIX AND BATT INSTALLATION </p>', '2', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '170.00', '2020-07-31', '', '', NULL, NULL, NULL),
(576, 135, 50, '', 0, '', 0, '', '', '<p>SIDE RAIL CUT AND FIXED </p>', '2', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '170.00', '2020-07-31', '', '', NULL, NULL, NULL),
(878, 137, 57, '', 0, '', 0, '', '', '<p>INSTALL FRONT BUMPER AND REAR BUMPER </p>', '1', '350.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '350.00', '2020-08-14', '', '', NULL, NULL, NULL),
(584, 138, 72, '', 0, '', 0, '', NULL, 'part', '1', '107.00', 0, NULL, NULL, '8.83', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '107.00', '2020-08-01', '', '', NULL, NULL, NULL),
(585, 138, 72, '', 0, '', 0, '', NULL, 'hazmat', '1', '0.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.00', '2020-08-01', '', '', NULL, NULL, NULL),
(586, 138, 72, '', 0, '', 0, '', NULL, 'supplies', '1', '0.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.00', '2020-08-01', '', '', NULL, NULL, NULL),
(825, 139, 53, '', 0, '', 0, '', '', '<p>LABOR</p>', '1', '0.00', 1, NULL, '8.250', '0.00', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '0.00', '2020-08-07', '', '', NULL, NULL, NULL),
(824, 139, 53, '', 0, '', 0, '', '', '<p>FRONT BUMPER </p>', '1', '385.99', 1, NULL, '8.250', '31.84', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '385.99', '2020-08-07', '', '', NULL, NULL, NULL),
(877, 180, 50, '', 0, '', 0, '', '', '<p>RADIO REPLACEMNT </p>', '1', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '85.00', '2020-08-14', '', '', NULL, NULL, NULL),
(611, 141, 50, '', 0, '', 0, '', '', '<p>REAR STEEL BUMPER </p>', '1', '375.00', 1, NULL, '8.250', '30.94', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '375.00', '2020-08-04', '', '', NULL, NULL, NULL),
(610, 141, 50, '', 0, '', 0, '', '', '<p>FRONT STEEL BUMPER</p>', '1', '420.00', 1, NULL, '8.250', '34.65', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '420.00', '2020-08-04', '', '', NULL, NULL, NULL),
(609, 141, 50, '', 0, '', 0, '', '', '<p>PASSENGER SEAT AND AIR BAG</p>', '1', '489.00', 1, NULL, '8.250', '40.34', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '489.00', '2020-08-04', '', '', NULL, NULL, NULL),
(608, 141, 50, '', 0, '', 0, '', '', '<p>CURTAIN AIR BAG</p>', '1', '389.00', 1, NULL, '8.250', '32.09', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '389.00', '2020-08-04', '', '', NULL, NULL, NULL),
(607, 141, 50, '', 0, '', 0, '', '', '<p>PASSENGER SEAT BELT </p>', '1', '296.00', 1, NULL, '8.250', '24.42', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '296.00', '2020-08-04', '', '', NULL, NULL, NULL),
(606, 141, 50, '', 0, '', 0, '', '', '<p style=\"margin-left: 20px;\">PASSENGER FRONT FOOR</p>', '1', '1100.00', 1, NULL, '8.250', '90.75', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '1100.00', '2020-08-04', '', '', NULL, NULL, NULL),
(605, 141, 50, '', 0, '', 0, '', '', '<p>SIDE SLIDING DOOR </p>', '1', '1400.00', 1, NULL, '8.250', '115.50', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '1400.00', '2020-08-04', '', '', NULL, NULL, NULL),
(612, 141, 50, '', 0, '', 0, '', '', '<p>BODY WORK LABOR </p>', '1', '1800.00', 1, NULL, '8.250', '148.50', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '1800.00', '2020-08-04', '', '', NULL, NULL, NULL),
(639, 143, 54, '', 0, '', 0, '', '', '<p>LABOR</p>', '1', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '85.00', '2020-08-04', '', '', NULL, NULL, NULL),
(883, 182, 57, '', 0, '', 0, '', '', '<p>BUMPER FIX AND BUFF </p>', '1', '220.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '220.00', '2020-08-14', '', '', NULL, NULL, NULL),
(884, 183, 50, '', 0, '', 0, '', '', '<p>DEN234-4297 O2 SENSOR</p>', '1', '229.71', 1, NULL, '8.250', '18.95', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '229.71', '2020-08-17', '', '', NULL, NULL, NULL),
(882, 181, 57, '', 0, '', 0, '', '', '<p>LABOUR </p>', '1', '65.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '65.00', '2020-08-14', '', '', NULL, NULL, NULL),
(880, 181, 57, '', 0, '', 0, '', '', '<p>OIL FILTER</p>', '1', '8.96', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '8.96', '2020-08-14', '', '', NULL, NULL, NULL),
(881, 181, 57, '', 0, '', 0, '', '', '<p>FULL SYN OIL </p>', '8', '4.98', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '39.84', '2020-08-14', '', '', NULL, NULL, NULL),
(638, 143, 54, '', 0, '', 0, '', '', '<p>STEP RAIL INSTALLED </p>', '1', '275.00', 1, NULL, '8.250', '22.69', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '275.00', '2020-08-04', '', '', NULL, NULL, NULL),
(930, 146, 59, '', 0, '', 0, '', '', '<p>FRONT & REAR BRAKE PADS</p>', '2', '26.95', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '53.90', '2020-08-21', '', '', NULL, NULL, NULL),
(931, 146, 59, '', 0, '', 0, '', '', '<p>RESURFACE ROTORS </p>', '4', '15.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '60.00', '2020-08-21', '', '', NULL, NULL, NULL);
INSERT INTO `sys_invoiceitems` (`id`, `invoiceid`, `userid`, `type`, `relid`, `itemcode`, `item_id`, `item_type`, `tax_code`, `description`, `qty`, `amount`, `taxed`, `tax_name`, `tax_rate`, `taxamount`, `tax1`, `tax2`, `tax3`, `discount_type`, `discount_amount`, `total`, `duedate`, `paymentmethod`, `notes`, `business_id`, `created_at`, `updated_at`) VALUES
(932, 146, 59, '', 0, '', 0, '', '', '<p>labor</p>', '2', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '170.00', '2020-08-21', '', '', NULL, NULL, NULL),
(797, 147, 57, '', 0, '', 0, '', '', '<p>labor</p>', '2', '65.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '130.00', '2020-08-07', '', '', NULL, NULL, NULL),
(796, 147, 57, '', 0, '', 0, '', '', '<p>STARTER </p>', '1', '120.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '120.00', '2020-08-07', '', '', NULL, NULL, NULL),
(885, 183, 50, '', 0, '', 0, '', '', '<p>SENSOR INSTALL</p>', '1', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '85.00', '2020-08-17', '', '', NULL, NULL, NULL),
(691, 148, 50, '', 0, '', 0, '', '', '<p style=\"margin-left: 20px;\">OIL FILTER</p>', '1', '13.50', 1, NULL, '8.250', '1.11', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '13.50', '2020-08-06', '', '', NULL, NULL, NULL),
(692, 148, 50, '', 0, '', 0, '', '', '<p>OIL FULL SYN </p>', '6', '5.99', 1, NULL, '8.250', '2.97', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '35.94', '2020-08-06', '', '', NULL, NULL, NULL),
(693, 149, 50, '', 0, '', 0, '', '', '<p>OIL FILTER </p>', '1', '13.50', 1, NULL, '8.250', '1.11', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '13.50', '2020-08-06', '', '', NULL, NULL, NULL),
(694, 149, 50, '', 0, '', 0, '', '', '<p style=\"margin-left: 20px;\">OIL FULL SYN </p>', '6', '5.99', 1, NULL, '8.250', '2.97', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '35.94', '2020-08-06', '', '', NULL, NULL, NULL),
(695, 150, 50, '', 0, '', 0, '', '', '<p>ALTERNATOR </p>', '1', '1146.00', 1, NULL, '8.250', '94.55', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '1146.00', '2020-08-06', '', '', NULL, NULL, NULL),
(696, 150, 50, '', 0, '', 0, '', '', '<p>SHIPPING COST </p>', '1', '120.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '120.00', '2020-08-06', '', '', NULL, NULL, NULL),
(701, 151, 50, '', 0, '', 0, '', '', '<p>PIONN 4025 BT STERO</p>', '1', '320.00', 1, NULL, '8.250', '26.40', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '320.00', '2020-08-06', '', '', NULL, NULL, NULL),
(702, 151, 50, '', 0, '', 0, '', '', '<p>LABOR</p>', '1', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '85.00', '2020-08-06', '', '', NULL, NULL, NULL),
(705, 152, 50, '', 0, '', 0, '', '', '<p>WIRING HARNESS REPAIRE </p>', '13', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '1105.00', '2020-08-06', '', '', NULL, NULL, NULL),
(706, 153, 50, '', 0, '', 0, '', '', '<p>DRIVER WINDOW SWITCH </p>', '1', '109.00', 1, NULL, '8.250', '8.99', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '109.00', '2020-08-06', '', '', NULL, NULL, NULL),
(707, 154, 54, '', 0, '', 0, '', '', '<p>9064205185 E-BRAKE </p>', '1', '179.99', 1, NULL, '8.250', '14.85', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '179.99', '2020-08-06', '', '', NULL, NULL, NULL),
(708, 154, 54, '', 0, '', 0, '', '', '<p>LOBOR </p>', '5', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '425.00', '2020-08-06', '', '', NULL, NULL, NULL),
(876, 180, 50, '', 0, '', 0, '', '', '<p>PION RADIO </p>', '1', '239.99', 1, NULL, '8.250', '19.80', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '239.99', '2020-08-14', '', '', NULL, NULL, NULL),
(879, 181, 57, '', 0, '', 0, '', '', '<p>BATTERY</p>', '1', '124.21', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '124.21', '2020-08-14', '', '', NULL, NULL, NULL),
(770, 165, 54, '', 0, '', 0, '', '', '<p>DRIVER FRONT TIRE</p>', '1', '121.00', 1, NULL, '8.250', '9.98', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '121.00', '2020-08-07', '', '', NULL, NULL, NULL),
(737, 161, 54, '', 0, '', 0, '', '', '<p>LABOR</p>', '1', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '85.00', '2020-08-07', '', '', NULL, NULL, NULL),
(736, 161, 54, '', 0, '', 0, '', '', '<p>MERCEDES GEL BATT</p>', '1', '220.00', 1, NULL, '8.250', '18.15', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '220.00', '2020-08-07', '', '', NULL, NULL, NULL),
(771, 165, 54, '', 0, '', 0, '', '', '<p>LABOR</p>', '3', '25.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '75.00', '2020-08-07', '', '', NULL, NULL, NULL),
(769, 165, 54, '', 0, '', 0, '', '', '<p>REAR TIRES</p>', '2', '121.00', 1, NULL, '8.250', '19.97', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '242.00', '2020-08-07', '', '', NULL, NULL, NULL),
(768, 165, 54, '', 0, '', 0, '', '', '<p>ALL FOUR BREAKS</p>', '2', '52.99', 1, NULL, '8.250', '8.74', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '105.98', '2020-08-07', '', '', NULL, NULL, NULL),
(809, 122, 57, '', 0, '', 0, '', '', '<p>OIL FILTER</p>', '1', '6.91', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '6.91', '2020-08-07', '', '', NULL, NULL, NULL),
(807, 122, 57, '', 0, '', 0, '', '', '<p>SHELL 15W-40 MOTOR OIL T4 (GALLON)</p>', '8', '14.25', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '114.00', '2020-08-07', '', '', NULL, NULL, NULL),
(808, 122, 57, '', 0, '31', 0, '', '', '<p>PASSENGER SIDE LOWER SIDE MIRROR</p>', '1', '0.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '0.00', '2020-08-07', '', '', NULL, NULL, NULL),
(772, 165, 54, '', 0, '', 0, '', '', '<p>BRAKE LABOUR </p>', '2', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '170.00', '2020-08-07', '', '', NULL, NULL, NULL),
(798, 166, 57, '', 0, '', 0, '', '', '<p>SUNROOF LABOR</p>', '1', '400.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '400.00', '2020-08-07', '', '', NULL, NULL, NULL),
(806, 167, 57, '', 0, '', 0, '', '', '<p>LABOR</p>', '1', '1.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '1.00', '2020-08-07', '', '', NULL, NULL, NULL),
(805, 167, 57, '', 0, '', 0, '', '', '<p>FULL SYNTHETIC OIL</p>', '1', '1.00', 1, NULL, '8.250', '0.08', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '1.00', '2020-08-07', '', '', NULL, NULL, NULL),
(804, 167, 57, '', 0, '', 0, '', '', '<p>OIL & FILTER CHANGE </p>', '1', '1.00', 1, NULL, '8.250', '0.08', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '1.00', '2020-08-07', '', '', NULL, NULL, NULL),
(791, 168, 50, '', 0, '', 0, '', '', '<p>BATT REPLACED </p>', '1', '220.00', 1, NULL, '8.250', '18.15', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '220.00', '2020-08-07', '', '', NULL, NULL, NULL),
(792, 168, 50, '', 0, '', 0, '', '', '<p>LABOUR </p>', '1', '85.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '85.00', '2020-08-07', '', '', NULL, NULL, NULL),
(831, 169, 57, '', 0, '', 0, '', '', '<p>BATTERY </p>', '2', '124.85', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '249.70', '2020-08-11', '', '', NULL, NULL, NULL),
(832, 169, 57, '', 0, '', 0, '', '', '<p>OIL FILTER </p>', '1', '10.11', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '10.11', '2020-08-11', '', '', NULL, NULL, NULL),
(833, 169, 57, '', 0, '', 0, '', '', '<p>MOTOR OIL </p>', '1', '68.90', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '68.90', '2020-08-11', '', '', NULL, NULL, NULL),
(834, 169, 57, '', 0, '', 0, '', '', '<p>OIL CHANGE </p>', '1', '40.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '40.00', '2020-08-11', '', '', NULL, NULL, NULL),
(835, 169, 57, '', 0, '', 0, '', '', '<p>BATTERY REPLACE, FRONT BUMPER REPLACE,REAR BUMPER REPLACED.</p>', '1', '400.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '400.00', '2020-08-11', '', '', NULL, NULL, NULL),
(836, 170, 57, '', 0, '', 0, '', '', '<p>FRONT BREAK PADS </p>', '1', '46.85', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '46.85', '2020-08-11', '', '', NULL, NULL, NULL),
(837, 170, 57, '', 0, '', 0, '', '', '<p style=\"margin-left: 20px;\">REAR PADS </p>', '1', '39.86', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '39.86', '2020-08-11', '', '', NULL, NULL, NULL),
(838, 170, 57, '', 0, '', 0, '', '', '<p>OIL FILTER </p>', '1', '9.95', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '9.95', '2020-08-11', '', '', NULL, NULL, NULL),
(839, 170, 57, '', 0, '', 0, '', '', '<p>MOBILE ONE OIL </p>', '8', '8.65', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '69.20', '2020-08-11', '', '', NULL, NULL, NULL),
(840, 170, 57, '', 0, '', 0, '', '', '<p>SIDE DOOR MOLDING </p>', '1', '155.99', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '155.99', '2020-08-11', '', '', NULL, NULL, NULL),
(841, 170, 57, '', 0, '', 0, '', '', '<p>REAR BUMPER WIRING KIT </p>', '1', '218.05', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '218.05', '2020-08-11', '', '', NULL, NULL, NULL),
(842, 170, 57, '', 0, '', 0, '', '', '<p>PARKING SENSOR CAP </p>', '4', '8.25', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '33.00', '2020-08-11', '', '', NULL, NULL, NULL),
(843, 170, 57, '', 0, '', 0, '', '', '<p>PARKING SENSOR </p>', '4', '97.43', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '389.72', '2020-08-11', '', '', NULL, NULL, NULL),
(844, 170, 57, '', 0, '', 0, '', '', '<p>BREAKS ,OIL CHANGE, REAR BUMPER PARKING SENSOR INSTALLED </p>', '7', '65.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '455.00', '2020-08-11', '', '', NULL, NULL, NULL),
(846, 171, 57, '', 0, '', 0, '', '', '<p>AIR BAG </p>', '1', '600.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '600.00', '2020-08-11', '', '', NULL, NULL, NULL),
(853, 172, 57, '', 0, '', 0, '', '', '<p>BODY WORK </p>', '1', '600.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '600.00', '2020-08-11', '', '', NULL, NULL, NULL),
(849, 80, 57, '', 0, '', 0, '', '', '<p>HEADLIGHT BUFF</p>', '1', '50.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '50.00', '2020-08-11', '', '', NULL, NULL, NULL),
(850, 80, 57, '', 0, '', 0, '', '', '<p>CABIN AIR FILTER </p>', '1', '13.85', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '13.85', '2020-08-11', '', '', NULL, NULL, NULL),
(851, 80, 57, '', 0, '', 0, '', '', '<p>A/C COMPRESSOR HVAC</p>', '1', '486.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '486.00', '2020-08-11', '', '', NULL, NULL, NULL),
(852, 80, 57, '', 0, '', 0, '', '', '<p>REPLACE A/C COM</p>', '3.5', '65.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '227.50', '2020-08-11', '', '', NULL, NULL, NULL),
(854, 172, 57, '', 0, '', 0, '', '', '<p>OIL FILTER </p>', '1', '14.85', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '14.85', '2020-08-11', '', '', NULL, NULL, NULL),
(855, 172, 57, '', 0, '', 0, '', '', '<p>FULL SYN OIL </p>', '14', '4.98', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '69.72', '2020-08-11', '', '', NULL, NULL, NULL),
(856, 172, 57, '', 0, '', 0, '', '', '<p>OIL CGANGE </p>', '1', '40.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '40.00', '2020-08-11', '', '', NULL, NULL, NULL),
(1260, 256, 64, '', 0, '', 7, 'part', NULL, 'part', '1', '102.00', 0, NULL, NULL, '8.42', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '102.00', '2020-10-30', '', '', NULL, NULL, NULL),
(1261, 256, 64, '', 0, '', 1, 'tire', NULL, 'tire', '4', '89.00', 0, NULL, NULL, '29.37', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '356.00', '2020-10-30', '', '', NULL, NULL, NULL),
(1262, 256, 64, '', 0, '', 0, 'labor', NULL, 'labor', '1', '85.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '85.00', '2020-10-30', '', '', NULL, NULL, NULL),
(1263, 256, 64, '', 0, '', 0, 'hazmat', NULL, 'hazmat', '1', '0.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.00', '2020-10-30', '', '', NULL, NULL, NULL),
(1264, 256, 64, '', 0, '', 0, 'supplies', NULL, 'supplies', '1', '0.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.00', '2020-10-30', '', '', NULL, NULL, NULL),
(1303, 260, 64, '', 0, '', 0, 'supplies', NULL, 'supplies', '1', '0.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.00', '2020-11-08', '', '', NULL, NULL, NULL),
(1302, 260, 64, '', 0, '', 0, 'hazmat', NULL, 'hazmat', '1', '0.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.00', '2020-11-08', '', '', NULL, NULL, NULL),
(1301, 260, 64, '', 0, '', 0, 'labor', NULL, 'labor', '1', '85.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '85.00', '2020-11-08', '', '', NULL, NULL, NULL),
(1300, 260, 64, '', 0, '', 1, 'tire', NULL, 'tire', '1', '89.00', 0, NULL, NULL, '7.34', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '89.00', '2020-11-08', '', '', NULL, NULL, NULL),
(1271, 257, 64, '', 0, '', 0, '', '', '<p>part</p>', '4', '102.00', 1, NULL, '8.250', '33.66', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '408.00', '2020-10-30', '', '', NULL, NULL, NULL),
(1272, 257, 64, '', 0, '', 0, '', '', '<p>tire</p>', '3', '89.00', 1, NULL, '8.250', '22.03', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '267.00', '2020-10-30', '', '', NULL, NULL, NULL),
(1273, 257, 64, '', 0, '', 0, '', '', '<p>labor</p>', '3', '85.00', 1, NULL, '8.250', '21.04', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '255.00', '2020-10-30', '', '', NULL, NULL, NULL),
(1274, 257, 64, '', 0, '', 0, '', '', '<p>labor</p>', '2', '95.00', 1, NULL, '8.250', '15.68', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '190.00', '2020-10-30', '', '', NULL, NULL, NULL),
(1275, 257, 64, '', 0, '', 0, '', '', '<p>hazmat</p>', '1', '0.00', 1, NULL, '8.250', '0.00', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '0.00', '2020-10-30', '', '', NULL, NULL, NULL),
(1276, 257, 64, '', 0, '', 0, '', '', '<p>supplies</p>', '1', '0.00', 1, NULL, '8.250', '0.00', '0.0000', '0.0000', '0.0000', 'f', '0.0000', '0.00', '2020-10-30', '', '', NULL, NULL, NULL),
(1277, 258, 64, '', 0, '', 7, 'part', NULL, 'part', '2', '102.00', 0, NULL, NULL, '16.83', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '204.00', '2020-10-30', '', '', NULL, NULL, NULL),
(1278, 258, 64, '', 0, '', 0, 'labor', NULL, 'labor', '1', '105.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '105.00', '2020-10-30', '', '', NULL, NULL, NULL),
(1279, 258, 64, '', 0, '', 0, 'hazmat', NULL, 'hazmat', '1', '0.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.00', '2020-10-30', '', '', NULL, NULL, NULL),
(1280, 258, 64, '', 0, '', 0, 'supplies', NULL, 'supplies', '1', '0.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.00', '2020-10-30', '', '', NULL, NULL, NULL),
(1281, 259, 64, '', 0, '', 9, 'part', NULL, 'part', '1', '89.99', 0, NULL, NULL, '7.42', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '89.99', '2020-11-07', '', '', NULL, NULL, NULL),
(1282, 259, 64, '', 0, '', 1, 'tire', NULL, 'tire', '1', '89.00', 0, NULL, NULL, '7.34', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '89.00', '2020-11-07', '', '', NULL, NULL, NULL),
(1283, 259, 64, '', 0, '', 0, 'labor', NULL, 'labor', '1', '85.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '85.00', '2020-11-07', '', '', NULL, NULL, NULL),
(1284, 259, 64, '', 0, '', 0, 'hazmat', NULL, 'hazmat', '1', '0.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.00', '2020-11-07', '', '', NULL, NULL, NULL),
(1285, 259, 64, '', 0, '', 0, 'supplies', NULL, 'supplies', '1', '0.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.00', '2020-11-07', '', '', NULL, NULL, NULL),
(1299, 260, 64, '', 0, '', 29, 'part', NULL, 'part', '1', '27.06', 0, NULL, NULL, '2.23', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '27.06', '2020-11-08', '', '', NULL, NULL, NULL),
(1298, 260, 64, '', 0, '', 42, 'part', NULL, 'part', '3', '512.00', 0, NULL, NULL, '126.72', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '1536.00', '2020-11-08', '', '', NULL, NULL, NULL),
(927, 83, 57, '', 0, '', 0, '', '', '<p>HEAD RESURFACE RE-SEAL </p>', '1', '300.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '300.00', '2020-08-20', '', '', NULL, NULL, NULL),
(924, 83, 57, '', 0, '', 0, '', '', '<p>FRONT PADS</p>', '1', '76.65', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '76.65', '2020-08-20', '', '', NULL, NULL, NULL),
(928, 83, 57, '', 0, '41', 0, '', '', '<p>TIMING KIT RANGEROVER</p>', '1', '346.00', 0, NULL, '0.000', '0.00', '0.0000', '0.0000', '0.0000', 'p', '0.0000', '346.00', '2020-08-20', '', '', NULL, NULL, NULL),
(1221, 253, 64, '', 0, '', 3, 'tire', NULL, 'tire', '2', '121.00', 0, NULL, NULL, '19.97', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '242.00', '2020-10-28', '', '', NULL, NULL, NULL),
(1220, 253, 64, '', 0, '', 10, 'part', NULL, 'part', '1', '150.00', 0, NULL, NULL, '12.38', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '150.00', '2020-10-28', '', '', NULL, NULL, NULL),
(1218, 252, 64, '', 0, '', 0, 'hazmat', NULL, 'hazmat', '1', '7.84', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '7.84', '2020-10-28', '', '', NULL, NULL, NULL),
(1219, 252, 64, '', 0, '', 0, 'supplies', NULL, 'supplies', '1', '7.84', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '7.84', '2020-10-28', '', '', NULL, NULL, NULL),
(1217, 252, 64, '', 0, '', 0, 'labor', NULL, 'labor', '1', '95.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '95.00', '2020-10-28', '', '', NULL, NULL, NULL),
(1216, 252, 64, '', 0, '', 3, 'tire', NULL, 'tire', '4', '121.00', 0, NULL, NULL, '39.93', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '484.00', '2020-10-28', '', '', NULL, NULL, NULL),
(1172, 246, 55, '', 0, '', 0, 'supplies', NULL, 'supplies', '1', '0.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.00', '2020-10-21', '', '', NULL, NULL, NULL),
(1171, 246, 55, '', 0, '', 0, 'hazmat', NULL, 'hazmat', '1', '0.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.00', '2020-10-21', '', '', NULL, NULL, NULL),
(1170, 246, 55, '', 0, '', 0, 'labor', NULL, 'labor', '1', '25.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '25.00', '2020-10-21', '', '', NULL, NULL, NULL),
(1198, 249, 64, '', 0, '', 0, 'supplies', NULL, 'supplies', '1', '0.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.00', '2020-10-27', '', '', NULL, NULL, NULL),
(1197, 249, 64, '', 0, '', 0, 'hazmat', NULL, 'hazmat', '1', '0.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.00', '2020-10-27', '', '', NULL, NULL, NULL),
(1194, 249, 64, '', 0, '', 7, 'part', NULL, 'part', '1', '102.00', 0, NULL, NULL, '8.42', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '102.00', '2020-10-27', '', '', NULL, NULL, NULL),
(1195, 249, 64, '', 0, '', 1, 'tire', NULL, 'tire', '1', '89.00', 0, NULL, NULL, '7.34', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '89.00', '2020-10-27', '', '', NULL, NULL, NULL),
(1196, 249, 64, '', 0, '', 0, 'labor', NULL, 'labor', '1', '95.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '95.00', '2020-10-27', '', '', NULL, NULL, NULL),
(1215, 252, 64, '', 0, '', 10, 'part', NULL, 'part', '2', '150.00', 0, NULL, NULL, '24.75', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '300.00', '2020-10-28', '', '', NULL, NULL, NULL),
(1205, 250, 64, '', 0, '', 7, 'part', NULL, 'part', '1', '102.00', 0, NULL, NULL, '8.42', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '102.00', '2020-10-28', '', '', NULL, NULL, NULL),
(1206, 250, 64, '', 0, '', 2, 'tire', NULL, 'tire', '1', '500.00', 0, NULL, NULL, '41.25', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '500.00', '2020-10-28', '', '', NULL, NULL, NULL),
(1207, 250, 64, '', 0, '', 0, 'labor', NULL, 'labor', '1', '100.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '100.00', '2020-10-28', '', '', NULL, NULL, NULL),
(1208, 250, 64, '', 0, '', 0, 'hazmat', NULL, 'hazmat', '1', '18.06', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '18.06', '2020-10-28', '', '', NULL, NULL, NULL),
(1209, 250, 64, '', 0, '', 0, 'supplies', NULL, 'supplies', '1', '18.06', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '18.06', '2020-10-28', '', '', NULL, NULL, NULL),
(1225, 254, 64, '', 0, '', 10, 'part', NULL, 'part', '1', '150.00', 0, NULL, NULL, '12.38', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '150.00', '2020-10-28', '', '', NULL, NULL, NULL),
(1224, 253, 64, '', 0, '', 0, 'supplies', NULL, 'supplies', '1', '0.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.00', '2020-10-28', '', '', NULL, NULL, NULL),
(1223, 253, 64, '', 0, '', 0, 'hazmat', NULL, 'hazmat', '1', '0.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.00', '2020-10-28', '', '', NULL, NULL, NULL),
(1222, 253, 64, '', 0, '', 0, 'labor', NULL, 'labor', '1', '85.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '85.00', '2020-10-28', '', '', NULL, NULL, NULL),
(1226, 254, 64, '', 0, '', 3, 'tire', NULL, 'tire', '1', '121.00', 0, NULL, NULL, '9.98', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '121.00', '2020-10-28', '', '', NULL, NULL, NULL),
(1227, 254, 64, '', 0, '', 0, 'labor', NULL, 'labor', '1', '105.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '105.00', '2020-10-28', '', '', NULL, NULL, NULL),
(1228, 254, 64, '', 0, '', 0, 'hazmat', NULL, 'hazmat', '1', '0.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.00', '2020-10-28', '', '', NULL, NULL, NULL),
(1229, 254, 64, '', 0, '', 0, 'supplies', NULL, 'supplies', '1', '0.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.00', '2020-10-28', '', '', NULL, NULL, NULL),
(1259, 255, 64, '', 0, '', 0, 'supplies', NULL, 'supplies', '1', '19.16', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '19.16', '2020-10-30', '', '', NULL, NULL, NULL),
(1255, 255, 64, '', 0, '', 7, 'part', NULL, 'part', '3', '102.00', 0, NULL, NULL, '25.25', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '306.00', '2020-10-30', '', '', NULL, NULL, NULL),
(1256, 255, 64, '', 0, '', 2, 'tire', NULL, 'tire', '3', '500.00', 0, NULL, NULL, '123.75', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '1500.00', '2020-10-30', '', '', NULL, NULL, NULL),
(1257, 255, 64, '', 0, '', 0, 'labor', NULL, 'labor', '3', '85.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '255.00', '2020-10-30', '', '', NULL, NULL, NULL),
(1258, 255, 64, '', 0, '', 0, 'hazmat', NULL, 'hazmat', '1', '19.16', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '19.16', '2020-10-30', '', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_invoices`
--

CREATE TABLE `sys_invoices` (
  `id` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `account` varchar(200) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `cn` varchar(100) NOT NULL DEFAULT '',
  `invoicenum` text NOT NULL,
  `date` date DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `datepaid` datetime DEFAULT NULL,
  `subtotal` decimal(18,2) NOT NULL,
  `discount_type` varchar(1) NOT NULL DEFAULT 'f',
  `discount_value` decimal(14,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(14,2) NOT NULL DEFAULT '0.00',
  `credit` decimal(10,2) NOT NULL DEFAULT '0.00',
  `taxname` varchar(100) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `tax2` decimal(10,2) NOT NULL,
  `tax_total` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(18,2) NOT NULL DEFAULT '0.00',
  `taxrate` decimal(10,2) NOT NULL,
  `taxrate2` decimal(10,2) NOT NULL,
  `status` text NOT NULL,
  `paymentmethod` text NOT NULL,
  `notes` text NOT NULL,
  `vtoken` varchar(20) NOT NULL,
  `ptoken` varchar(20) NOT NULL,
  `r` varchar(100) NOT NULL DEFAULT '0',
  `nd` date DEFAULT NULL,
  `eid` int(10) NOT NULL DEFAULT '0',
  `ename` varchar(200) NOT NULL DEFAULT '',
  `vid` int(11) NOT NULL DEFAULT '0',
  `quote_id` int(11) NOT NULL DEFAULT '0',
  `ticket_id` int(11) DEFAULT '0',
  `currency` int(11) NOT NULL DEFAULT '0',
  `currency_iso_code` char(3) DEFAULT NULL,
  `currency_symbol` varchar(10) DEFAULT NULL,
  `currency_prefix` varchar(10) DEFAULT NULL,
  `currency_suffix` varchar(10) DEFAULT NULL,
  `currency_rate` decimal(11,4) NOT NULL DEFAULT '1.0000',
  `recurring` tinyint(1) NOT NULL DEFAULT '0',
  `recurring_ends` date DEFAULT NULL,
  `last_recurring_date` date DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `sale_agent` int(11) NOT NULL DEFAULT '0',
  `last_overdue_reminder` date DEFAULT NULL,
  `allowed_payment_methods` text,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(50) DEFAULT NULL,
  `billing_country` varchar(100) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` varchar(100) DEFAULT NULL,
  `q_hide` tinyint(1) NOT NULL DEFAULT '0',
  `show_quantity_as` varchar(100) DEFAULT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `is_credit_invoice` int(1) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `aname` varchar(200) DEFAULT NULL,
  `receipt_number` varchar(200) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `workspace_id` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `c1` varchar(255) DEFAULT NULL,
  `c2` varchar(255) DEFAULT NULL,
  `c3` varchar(255) DEFAULT NULL,
  `c4` varchar(255) DEFAULT NULL,
  `c5` text,
  `signature_data_source` text,
  `signature_data_base64` text,
  `signature_data_svg` text,
  `is_same_state` tinyint(1) DEFAULT '1',
  `code` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_invoices`
--

INSERT INTO `sys_invoices` (`id`, `userid`, `account`, `title`, `cn`, `invoicenum`, `date`, `duedate`, `datepaid`, `subtotal`, `discount_type`, `discount_value`, `discount`, `credit`, `taxname`, `tax`, `tax2`, `tax_total`, `total`, `taxrate`, `taxrate2`, `status`, `paymentmethod`, `notes`, `vtoken`, `ptoken`, `r`, `nd`, `eid`, `ename`, `vid`, `quote_id`, `ticket_id`, `currency`, `currency_iso_code`, `currency_symbol`, `currency_prefix`, `currency_suffix`, `currency_rate`, `recurring`, `recurring_ends`, `last_recurring_date`, `source`, `sale_agent`, `last_overdue_reminder`, `allowed_payment_methods`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `q_hide`, `show_quantity_as`, `pid`, `is_credit_invoice`, `aid`, `aname`, `receipt_number`, `updated_at`, `created_at`, `workspace_id`, `parent_id`, `c1`, `c2`, `c3`, `c4`, `c5`, `signature_data_source`, `signature_data_base64`, `signature_data_svg`, `is_same_state`, `code`) VALUES
(142, 54, 'Dr. William Green', '', '02175', 'ONTC35', '2020-08-12', '2020-08-12', '2020-08-12 16:55:23', '486.99', 'f', '0.00', '0.00', '486.99', '', '0.00', '0.00', '0.0000', '486.99', '0.00', '0.00', 'Paid', '', '', '9739458261', '3571336798', '0', '2020-08-12', 0, '', 0, 0, 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, 3, NULL, '', '2020-08-06 13:21:01', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(143, 54, 'Dr. William Green', '', '02174', 'ONTC13', '2020-08-04', '2020-08-04', '2020-08-04 17:36:41', '360.00', 'f', '0.00', '0.00', '382.69', '', '22.69', '0.00', '0.0000', '382.69', '0.00', '0.00', 'Paid', '', '', '3521031298', '3554184277', '0', '2020-08-04', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, 3, NULL, '', '2020-08-04 17:36:41', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(259, 64, 'Training - Customer', NULL, '02175', 'INV-', '2020-11-07', '2020-11-07', '2020-11-07 16:50:20', '263.99', 'f', '0.00', '0.00', '0.00', '', '14.77', '0.00', '0.0000', '278.76', '0.00', '0.00', 'Unpaid', '', '', '5055390028', '1109317032', '0', '2020-11-07', 0, '', 0, 0, 0, 0, NULL, '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(260, 64, 'Training - Customer', NULL, '02176', 'INV-', '2020-11-08', '2020-11-08', '2020-11-08 15:53:35', '1737.06', 'f', '0.00', '0.00', '0.00', '', '136.29', '0.00', '0.0000', '1873.35', '0.00', '0.00', 'Unpaid', '', '', '9625926406', '6610831725', '0', '2020-11-08', 0, '', 0, 0, 0, 0, NULL, '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(256, 64, 'Training - Customer', NULL, '02172', 'INV-', '2020-10-30', '2020-10-30', '2020-10-30 15:57:22', '543.00', 'f', '0.00', '0.00', '0.00', '', '37.79', '0.00', '0.0000', '580.79', '0.00', '0.00', 'Paid', '', '', '2800192120', '4674883023', '0', '2020-10-30', 0, '', 0, 0, 0, 0, NULL, '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL, '2020-10-30 21:41:28', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(257, 64, 'Training - Customer', '', '02173', 'INV-', '2020-10-30', '2020-10-30', '2020-10-30 16:22:39', '1120.00', 'f', '0.00', '0.00', '0.00', '', '92.40', '0.00', '0.0000', '1212.40', '0.00', '0.00', 'Unpaid', '', '', '6994585210', '1185863691', '0', '2020-10-30', 0, '', 0, 0, 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, 2, NULL, '', '2020-10-30 16:22:39', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(258, 64, 'Training - Customer', NULL, '02174', 'INV-', '2020-10-30', '2020-10-30', '2020-10-30 16:24:31', '309.00', 'f', '0.00', '0.00', '0.00', '', '16.83', '0.00', '0.0000', '325.83', '0.00', '0.00', 'Unpaid', '', '', '6119709187', '9167287803', '0', '2020-10-30', 0, '', 0, 0, 0, 0, NULL, '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(252, 64, 'Training - Customer', NULL, '02163', 'INV-', '2020-10-28', '2020-10-28', '2020-10-28 16:50:50', '894.68', 'f', '0.00', '0.00', '0.00', '', '64.68', '0.00', '0.0000', '959.36', '0.00', '0.00', 'Unpaid', '', '', '4914435160', '7995871406', '0', '2020-10-28', 0, '', 0, 0, 0, 0, NULL, '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(246, 55, 'Test Customer', NULL, '02152', 'INV-', '2020-10-21', '2020-10-21', '2020-10-21 16:43:15', '25.00', 'f', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '25.00', '0.00', '0.00', 'Unpaid', '', '', '9072347668', '6020028831', '0', '2020-10-21', 0, '', 0, 0, 0, 0, NULL, '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(249, 64, 'Training - Customer', NULL, '02159', 'INV-', '2020-10-27', '2020-10-27', '2020-10-27 18:08:40', '286.00', 'f', '0.00', '0.00', '0.00', '', '15.76', '0.00', '0.0000', '301.76', '0.00', '0.00', 'Unpaid', '', '', '2870793438', '5027632474', '0', '2020-10-27', 0, '', 0, 0, 0, 0, NULL, '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(250, 64, 'Training - Customer', NULL, '02161', 'INV-', '2020-10-28', '2020-10-28', '2020-10-28 16:08:37', '738.12', 'f', '0.00', '0.00', '0.00', '', '49.67', '0.00', '0.0000', '787.79', '0.00', '0.00', 'Unpaid', '', '', '5439497970', '1035986763', '0', '2020-10-28', 0, '', 0, 0, 0, 0, NULL, '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(253, 64, 'Training - Customer', NULL, '02164', 'INV-', '2020-10-28', '2020-10-28', '2020-10-28 16:59:55', '477.00', 'f', '0.00', '0.00', '0.00', '', '32.34', '0.00', '0.0000', '509.34', '0.00', '0.00', 'Unpaid', '', '', '2153769677', '0465736286', '0', '2020-10-28', 0, '', 0, 0, 0, 0, NULL, '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(254, 64, 'Training - Customer', NULL, '02165', 'INV-', '2020-10-28', '2020-10-28', '2020-10-28 17:04:17', '376.00', 'f', '0.00', '0.00', '0.00', '', '22.36', '0.00', '0.0000', '398.36', '0.00', '0.00', 'Unpaid', '', '', '9585076334', '5613087513', '0', '2020-10-28', 0, '', 0, 0, 0, 0, NULL, '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(255, 64, 'Training - Customer', NULL, '02166', 'INV-', '2020-10-30', '2020-10-30', '2020-10-30 12:27:14', '2099.32', 'f', '0.00', '0.00', '2248.32', '', '149.00', '0.00', '0.0000', '2248.32', '0.00', '0.00', 'Paid', '', '', '3999189677', '3820603492', '0', '2020-10-30', 0, '', 0, 0, 0, 0, NULL, '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_items`
--

CREATE TABLE `sys_items` (
  `id` int(11) NOT NULL,
  `name` mediumtext NOT NULL,
  `unit` varchar(100) NOT NULL DEFAULT '',
  `sales_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `inventory` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `weight` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `width` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `length` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `height` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `sku` varchar(50) DEFAULT NULL,
  `upc` varchar(50) DEFAULT NULL,
  `ean` varchar(50) DEFAULT NULL,
  `mpn` varchar(50) DEFAULT NULL,
  `isbn` varchar(50) DEFAULT NULL,
  `sid` int(11) NOT NULL DEFAULT '0',
  `supplier` varchar(200) DEFAULT NULL,
  `bid` int(11) NOT NULL DEFAULT '0',
  `brand` varchar(200) DEFAULT NULL,
  `sell_account` int(11) NOT NULL DEFAULT '0',
  `purchase_account` int(11) NOT NULL DEFAULT '0',
  `inventory_account` int(11) NOT NULL DEFAULT '0',
  `taxable` int(1) NOT NULL DEFAULT '0',
  `location` varchar(200) DEFAULT NULL,
  `item_number` varchar(100) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `type` enum('Service','Product') NOT NULL,
  `track_inventroy` enum('Yes','No') NOT NULL DEFAULT 'No',
  `negative_stock` enum('Yes','No') NOT NULL DEFAULT 'No',
  `available` int(11) NOT NULL DEFAULT '0',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `added` date DEFAULT NULL,
  `last_sold` date DEFAULT NULL,
  `e` mediumtext NOT NULL,
  `sorder` int(11) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `supplier_id` int(11) NOT NULL DEFAULT '0',
  `gname` varchar(100) DEFAULT NULL,
  `product_id` varchar(100) DEFAULT NULL,
  `size` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `expire_days` int(11) NOT NULL DEFAULT '0',
  `image` text,
  `flag` int(1) NOT NULL DEFAULT '0',
  `is_service` int(1) NOT NULL DEFAULT '0',
  `commission_percent` decimal(16,2) NOT NULL DEFAULT '0.00',
  `commission_percent_type` varchar(100) DEFAULT NULL,
  `commission_fixed` decimal(16,2) NOT NULL DEFAULT '0.00',
  `trash` int(1) NOT NULL DEFAULT '0',
  `payterm` varchar(200) DEFAULT NULL,
  `cost_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `unit_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `promo_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `setup` decimal(16,2) NOT NULL DEFAULT '0.00',
  `onetime` decimal(16,2) NOT NULL DEFAULT '0.00',
  `monthly` decimal(16,2) NOT NULL DEFAULT '0.00',
  `monthlysetup` decimal(16,2) NOT NULL DEFAULT '0.00',
  `quarterly` decimal(16,2) NOT NULL DEFAULT '0.00',
  `quarterlysetup` decimal(16,2) NOT NULL DEFAULT '0.00',
  `halfyearly` decimal(16,2) NOT NULL DEFAULT '0.00',
  `halfyearlysetup` decimal(16,2) NOT NULL DEFAULT '0.00',
  `annually` decimal(16,2) NOT NULL DEFAULT '0.00',
  `annuallysetup` decimal(16,2) NOT NULL DEFAULT '0.00',
  `biennially` decimal(16,2) NOT NULL DEFAULT '0.00',
  `bienniallysetup` decimal(16,2) NOT NULL DEFAULT '0.00',
  `triennially` decimal(16,2) NOT NULL DEFAULT '0.00',
  `trienniallysetup` decimal(16,2) NOT NULL DEFAULT '0.00',
  `has_domain` varchar(100) DEFAULT NULL,
  `free_domain` varchar(100) DEFAULT NULL,
  `email_rel` int(11) NOT NULL DEFAULT '0',
  `tags` text,
  `sold_count` decimal(16,4) DEFAULT '0.0000',
  `total_amount` decimal(16,4) DEFAULT '0.0000',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `tax_code` varchar(200) DEFAULT NULL,
  `min_stock` int(11) NOT NULL DEFAULT '0',
  `vin` varchar(200) NOT NULL DEFAULT '',
  `make` varchar(100) NOT NULL DEFAULT '',
  `model` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_items`
--

INSERT INTO `sys_items` (`id`, `name`, `unit`, `sales_price`, `inventory`, `weight`, `width`, `length`, `height`, `sku`, `upc`, `ean`, `mpn`, `isbn`, `sid`, `supplier`, `bid`, `brand`, `sell_account`, `purchase_account`, `inventory_account`, `taxable`, `location`, `item_number`, `description`, `type`, `track_inventroy`, `negative_stock`, `available`, `status`, `added`, `last_sold`, `e`, `sorder`, `gid`, `category_id`, `supplier_id`, `gname`, `product_id`, `size`, `start_date`, `end_date`, `expire_date`, `expire_days`, `image`, `flag`, `is_service`, `commission_percent`, `commission_percent_type`, `commission_fixed`, `trash`, `payterm`, `cost_price`, `unit_price`, `promo_price`, `setup`, `onetime`, `monthly`, `monthlysetup`, `quarterly`, `quarterlysetup`, `halfyearly`, `halfyearlysetup`, `annually`, `annuallysetup`, `biennially`, `bienniallysetup`, `triennially`, `trienniallysetup`, `has_domain`, `free_domain`, `email_rel`, `tags`, `sold_count`, `total_amount`, `created_at`, `updated_at`, `tax_code`, `min_stock`, `vin`, `make`, `model`) VALUES
(7, 'SAIL-5544061', '', '102.00', '2.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, 'SAILUN 23555R19', '<p>This is part description , we are testing</p>', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '88.31', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 2, '', '', ''),
(8, 'SAIL-12341234', '', '1.00', '5.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, '0008', '', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '0.10', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 5, '', '', ''),
(9, 'brake rotor', '', '89.99', '3.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, 'PDRBR900764', '', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '44.99', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '3.0000', '269.9700', NULL, '2020-10-30 16:03:32', '', 0, '', '', ''),
(10, 'Training - Part', '', '150.00', '50.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, '0010', '', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '100.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 10, '', '', ''),
(12, 'Training - Oil', '', '35.00', '11.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, '0012', '', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '20.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '4.0000', '35.0000', NULL, '2020-09-16 13:02:00', '', 5, '', '', ''),
(13, 'STRUT', '', '199.95', '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, 'FCS 1333719R', '', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '99.95', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 0, '', '', ''),
(14, 'BREAK PAD SET', '', '109.99', '7.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, 'WP932863', '<p>DODGE PROMASTER 2500 BRAKE PADS FRONT </p>', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '79.99', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '8.0000', '439.9600', NULL, '2020-10-30 16:03:32', '', 0, '', '', ''),
(15, 'DOOR', '', '1000.00', '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, '120-60700AR', '', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '1000.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, 'TX/32059253354*18', 1, '', '', ''),
(16, 'PASSENGER FRONT SEAT AIRBAG', '', '200.00', '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, '202-54119BR', '', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '200.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, 'TX/32059253354*18', 1, '', '', ''),
(17, 'RIGHT PASSENGER AIR BAG', '', '200.00', '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, '253-55677R', '', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '200.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, 'TX/32059253354*18', 1, '', '', ''),
(18, 'FUSE', '', '34.67', '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, 'BK2Z*14526*B', '', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '24.35', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 1, '', '', ''),
(19, 'FUEL SYSTEM CLEANER ', '', '129.99', '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, '0019', '', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '5.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 1, '', '', ''),
(20, 'MERWINDOWSWTICH', '', '121.00', '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, '0020', '', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '109.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 1, '', '', ''),
(21, 'WIRING BUMPER', '', '218.05', '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, 'LR053997', '', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '196.24', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 1, '', '', ''),
(22, 'PARKING SENSOR', '', '121.79', '4.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, 'LR038084', '', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '97.43', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 4, '', '', ''),
(23, 'PARKING SENSOR CAP', '', '9.06', '4.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, 'LR011193', '', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '7.25', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 4, '', '', ''),
(24, 'PRIME GUARD OW-20 FULL SYNTHETIC MOTOR OIL', '', '52.00', '24.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, 'PGSYN020', '<p><strong>4</strong> CASES IN TOTAL</p><p><strong>6</strong> BOTTLES IN EACH CASE</p><p><strong>COST</strong> & <strong>SALES</strong><span class=\"redactor-invisible-space\"><strong> PRICE </strong><span class=\"redactor-invisible-space\">REFERS TO <strong>ONE</strong><span class=\"redactor-invisible-space\"> CASE</span></span></span></p>', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '_12b668a1963146159612898710568754.jpg', 0, 0, '0.00', NULL, '0.00', 0, NULL, '14.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 24, '', '', ''),
(25, 'PRIME GUARD 5W-30 FULL SYNTHETIC MOTOR OIL', '', '52.00', '24.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, 'PGSYN530', '<p><strong>4</strong> CASES IN TOTAL</p><p><strong>6</strong> BOTTLES IN EACH CASE</p><p><strong>COST </strong>& <strong>SALES PRICE</strong><span class=\"redactor-invisible-space\"> REFERS TO <strong>ONE</strong><span class=\"redactor-invisible-space\"> CASE</span></span><br></p>', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '_f19ec2b8672901159612890510137903.jpeg', 0, 0, '0.00', NULL, '0.00', 0, NULL, '14.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 24, '', '', ''),
(26, 'PUREGUARD 10W-30 SYNTHETIC BLEND MOTOR OIL', '', '59.98', '12.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, 'P015', '<p><strong>MINIMUM STOCK</strong> NUMBER REP. QTY. <strong>INSIDE </strong>BOX</p><p>COST & SALES PRICE<span class=\"redactor-invisible-space\"> REP. <strong>ONE </strong>WHOLE CASE PRICE.</span></p>', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '_a3a3e8b3071517159613145010858889.jpg', 0, 0, '0.00', NULL, '0.00', 0, NULL, '22.85', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 12, '', '', ''),
(27, 'HEADLAMP', '', '11.98', '5.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, 'H7', '', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '4.23', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 5, '', '', ''),
(28, 'SHELL 15W-40 MOTOR OIL T4', '', '46.99', '4.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, '0218', '', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '14.25', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 4, '', '', ''),
(29, 'OIL FILTER', '', '27.06', '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, 'POF6128', '', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '6.91', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 1, '', '', ''),
(30, 'WINDOW SWITCH', '', '144.00', '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, '906 545 12 13', '<p>FREIGHT: $11.42</p>', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '_59b85c25707021159614359310448919.jpg', 0, 0, '0.00', NULL, '0.00', 0, NULL, '86.13', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 1, '', '', ''),
(31, 'PASSENGER SIDE LOWER SIDE MIRROR ', '', '85.20', '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, 'FL3Z-17K707-K', '', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '63.90', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '32059253354', 1, '', '', ''),
(32, 'PART', '', '0.00', '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, '0032', '', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 5, '', '', ''),
(33, 'MOBIL 1 10W30 SYNTHETIC MOTOR OIL (1 qt.)', '', '17.99', '9.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, 'MOB 98HC65', '', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '8.35', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 9, '', '', ''),
(34, 'OIL FILTER', '', '13.99', '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, 'PFL PO5277', '', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '7.19', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 1, '', '', ''),
(35, 'FRONT BUMPER', '', '515.89', '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, '620222-6HH0H ', '', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '385.99', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 1, '', '', ''),
(36, 'STEP BUMPER ASS REAR ', '', '489.00', '3.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, '0036', '', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '369.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 3, '', '', ''),
(37, 'NV FRONT BUMPER ', '', '389.00', '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, '0037', '', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '281.95', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 1, '', '', ''),
(38, 'CRV PADS F/R ', '', '26.95', '3.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, '0038AB ', '<p>CRV PADS F/R TESTING</p>', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '23.99', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '3.0000', '80.8500', NULL, '2020-10-30 16:03:32', '', 2, '', '', ''),
(39, 'SPRINTER DOOR LOCK', '', '296.00', '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, '9068204100', '', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '220.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '0000', 1, '', '', ''),
(40, 'DH01 -WEEK30', '', '147.99', '6.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, '2245592721', '', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '80.86', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 6, '', '', ''),
(41, 'TIMING KIT RANGEROVER', '', '346.00', '6.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, 'LR037089C7', '', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '190.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '5.0000', '346.0000', NULL, '2020-10-26 15:09:05', '', 1, '', '', ''),
(42, '36095613', '', '512.00', '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, '103417GE', '<p>RADIATOR WITH OIL COOLER</p>', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '127.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 1, '', '', ''),
(43, '36094748', '', '421.00', '2.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, '303529AP', '<p>A/C CONDENSOR </p>', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '95.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '1.0000', '421.0000', NULL, '2020-09-30 17:05:35', '', 1, '', '', ''),
(44, 'H0824200713', '', '550.00', '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, 'BZSR17-14A1', '<p>RIGHT HEADLIGHT </p>', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '169.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 1, '', '', ''),
(45, 'H0824200713', '', '550.00', '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, 'BZSR17-14A2', '<p>LEFT HEADLIGHT </p>', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '169.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 1, '', '', ''),
(46, 'H0824200713', '', '584.00', '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, 'BZSR04-14A', '<p>FRONT BUMPER </p>', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '199.95', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 1, '', '', ''),
(47, '548674', '', '239.00', '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, '9068800403', '<p>CORE SUPPORT </p>', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '116.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '2.0000', '360.0000', NULL, '2020-10-22 16:32:19', '', 1, '', '', ''),
(48, '548674', '', '239.00', '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, '9068800523', '<p>FRONT INNER GRILL </p>', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '144.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 1, '', '', ''),
(49, '548674', '', '180.00', '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, '9068880051', '<p>FRONT GRILL OUTER</p>', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '86.40', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 1, '', '', ''),
(50, 'Towing Cost', '', '200.00', '100.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, '0050', '<p>Towing Charges for the vehicle</p>', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '100.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 2, '', '', ''),
(51, '133458', '', '529.00', '3.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, '33209', '', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '206.97', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '2.0000', '1058.0000', NULL, '2020-10-30 16:14:22', '', 1, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sys_item_cats`
--

CREATE TABLE `sys_item_cats` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `description` text,
  `sorder` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_leads`
--

CREATE TABLE `sys_leads` (
  `id` int(11) NOT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `company` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `added_from` varchar(200) DEFAULT NULL,
  `o` varchar(200) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `iid` int(11) NOT NULL DEFAULT '0',
  `oid` int(11) NOT NULL DEFAULT '0',
  `rid` int(11) NOT NULL DEFAULT '0',
  `sorder` int(11) NOT NULL DEFAULT '0',
  `assigned` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `last_contact` datetime DEFAULT NULL,
  `last_contact_by` varchar(200) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `public` int(1) NOT NULL DEFAULT '0',
  `ratings` varchar(50) DEFAULT NULL,
  `flag` int(1) NOT NULL DEFAULT '0',
  `lost` int(1) NOT NULL DEFAULT '0',
  `junk` int(1) NOT NULL DEFAULT '0',
  `trash` int(1) NOT NULL DEFAULT '0',
  `archived` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_logs`
--

CREATE TABLE `sys_logs` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `userid` int(10) NOT NULL,
  `ip` text NOT NULL,
  `related_to` varchar(100) DEFAULT NULL,
  `related_id` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_logs`
--

INSERT INTO `sys_logs` (`id`, `date`, `type`, `description`, `userid`, `ip`, `related_to`, `related_id`) VALUES
(1542, '2020-11-10 10:19:37', 'Admin', 'Login Successful info@topfinalyst.com', 2, '98.199.190.38', NULL, NULL),
(1541, '2020-11-09 16:07:58', 'Admin', 'Login Successful info@topfinalyst.com', 2, '98.199.190.38', NULL, NULL),
(1540, '2020-11-08 15:49:28', 'Admin', 'Login Successful info@topfinalyst.com', 2, '98.199.190.38', NULL, NULL),
(1539, '2020-11-07 16:09:04', 'Admin', 'Login Successful info@topfinalyst.com', 2, '119.160.119.126', NULL, NULL),
(1538, '2020-11-07 14:25:09', 'Admin', 'Login Successful info@topfinalyst.com', 2, '119.160.119.126', NULL, NULL),
(1537, '2020-11-05 16:52:48', 'Admin', 'Login Successful info@topfinalyst.com', 2, '98.199.190.38', NULL, NULL),
(1536, '2020-11-05 16:40:48', 'Admin', 'Login Successful info@topfinalyst.com', 2, '98.199.190.38', NULL, NULL),
(1535, '2020-11-05 16:40:43', 'Admin', 'Failed Login info@topfinalyst.com', 0, '98.199.190.38', NULL, NULL),
(1534, '2020-11-05 16:40:36', 'Admin', 'Failed Login info@topfinalyst.com', 0, '98.199.190.38', NULL, NULL),
(1533, '2020-11-04 23:18:48', 'Admin', 'Login Successful info@topfinalyst.com', 2, '98.199.190.38', NULL, NULL),
(1532, '2020-11-03 10:38:06', 'Admin', 'Login Successful info@topfinalyst.com', 2, '98.199.190.38', NULL, NULL),
(1531, '2020-11-03 10:38:01', 'Admin', 'Failed Login info@topfinalyst.com', 0, '98.199.190.38', NULL, NULL),
(1530, '2020-11-02 14:08:12', 'Admin', 'Login Successful info@topfinalyst.com', 2, '98.199.190.38', NULL, NULL),
(1529, '2020-11-02 08:25:11', 'Admin', 'Login Successful info@topfinalyst.com', 2, '98.199.190.38', NULL, NULL),
(1528, '2020-11-02 08:24:21', 'Admin', 'Login Successful info@topfinalyst.com', 2, '98.199.190.38', NULL, NULL),
(1527, '2020-11-02 08:24:16', 'Admin', 'Failed Login info@topfinalyst.com', 0, '98.199.190.38', NULL, NULL),
(1526, '2020-10-31 08:07:08', 'Admin', 'Login Successful info@topfinalyst.com', 2, '98.199.190.38', NULL, NULL),
(1525, '2020-10-31 00:23:06', 'Admin', 'Login Successful info@topfinalyst.com', 2, '98.199.190.38', NULL, NULL),
(1524, '2020-10-31 00:22:29', 'Admin', 'Login Successful info@topfinalyst.com', 2, '98.199.190.38', NULL, NULL),
(1520, '2020-10-30 16:25:19', 'Admin', 'Failed Login lucky.m@autohiveinc.com', 0, '73.166.178.188', NULL, NULL),
(1521, '2020-10-30 19:03:22', 'Admin', 'Login Successful info@topfinalyst.com', 2, '98.199.190.38', NULL, NULL),
(1522, '2020-10-30 21:41:20', 'Admin', 'Login Successful info@topfinalyst.com', 2, '98.199.190.38', NULL, NULL),
(1523, '2020-10-30 21:41:28', 'Admin', 'Transaction deleted: [TrID: 354]', 2, '98.199.190.38', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_orders`
--

CREATE TABLE `sys_orders` (
  `id` int(11) NOT NULL,
  `ordernum` varchar(50) DEFAULT NULL,
  `work_order_type` varchar(255) NOT NULL,
  `source` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `inspected` int(11) NOT NULL DEFAULT '-1',
  `sales_person` varchar(100) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `vid` int(11) NOT NULL,
  `bid` int(11) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `date_expiry` date DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `stitle` varchar(200) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `iid` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `tid` int(11) NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `recurring` decimal(16,2) NOT NULL DEFAULT '0.00',
  `setup_fee` decimal(16,2) NOT NULL DEFAULT '0.00',
  `billing_cycle` text,
  `mileage_in` int(11) NOT NULL,
  `mileage_out` int(11) NOT NULL,
  `addon_ids` text,
  `related_orders` text,
  `description` text,
  `upgrade_ids` text,
  `xdata` text,
  `xsecret` varchar(100) DEFAULT NULL,
  `promo_code` text,
  `promo_type` text,
  `promo_value` text,
  `payment_method` text,
  `ipaddress` text,
  `fraud_module` text,
  `fraud_output` text,
  `activation_subject` text,
  `activation_message` text,
  `trash` int(1) NOT NULL DEFAULT '0',
  `archived` int(1) NOT NULL DEFAULT '0',
  `comments` text NOT NULL,
  `inspection_comments` text NOT NULL,
  `c1` text,
  `c2` text,
  `c3` text,
  `c4` text,
  `c5` text,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_orders`
--

INSERT INTO `sys_orders` (`id`, `ordernum`, `work_order_type`, `source`, `status`, `inspected`, `sales_person`, `branch_name`, `cname`, `cid`, `contract_id`, `vid`, `bid`, `date_added`, `date_expiry`, `pid`, `stitle`, `sid`, `iid`, `aid`, `tid`, `amount`, `recurring`, `setup_fee`, `billing_cycle`, `mileage_in`, `mileage_out`, `addon_ids`, `related_orders`, `description`, `upgrade_ids`, `xdata`, `xsecret`, `promo_code`, `promo_type`, `promo_value`, `payment_method`, `ipaddress`, `fraud_module`, `fraud_output`, `activation_subject`, `activation_message`, `trash`, `archived`, `comments`, `inspection_comments`, `c1`, `c2`, `c3`, `c4`, `c5`, `created_at`, `updated_at`) VALUES
(3, '8076530975', 'Repair', NULL, 'Cancelled', -1, NULL, NULL, 'Dr. William Green', 54, NULL, 1, NULL, '2020-07-13', NULL, NULL, NULL, NULL, 69, NULL, 0, '7465.35', '0.00', '0.00', 'One Time', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(4, '5867365274', 'Steam-Clean', NULL, 'Cancelled', -1, NULL, NULL, 'KHAN GUFRAN', 62, NULL, 2, NULL, '2020-07-13', NULL, NULL, NULL, NULL, 70, NULL, 0, '1117.50', '0.00', '0.00', 'One Time', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'no comments', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(5, '5413497242', 'Repair', NULL, 'Cancelled', -1, NULL, NULL, 'Dr. William Green', 54, NULL, 4, NULL, '2020-07-13', NULL, NULL, NULL, NULL, 74, NULL, 0, '2112.44', '0.00', '0.00', 'One Time', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(26, 'WO-8719417535', 'Repair', NULL, 'Cancelled', -1, NULL, NULL, 'Dr. William Green', 54, NULL, 9, NULL, '2020-07-23', NULL, NULL, NULL, NULL, 0, NULL, 38, '584.00', '0.00', '0.00', 'One Time', 16250, 16250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '4 TIRE REPLACED ', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(28, 'WO-0416303792', 'Repair', NULL, 'Cancelled', -1, NULL, NULL, 'Dr. William Green', 54, NULL, 9, NULL, '2020-07-22', NULL, NULL, NULL, NULL, 99, NULL, 40, '584.00', '0.00', '0.00', 'One Time', 16250, 16250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '4 TIRES REPLACE', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(30, 'WO-9602835045', 'Inspection', NULL, 'Cancelled', -1, NULL, NULL, 'Dr. William Green', 54, NULL, 9, NULL, '2020-07-22', NULL, NULL, NULL, NULL, 0, NULL, 42, '0.00', '0.00', '0.00', 'One Time', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(32, 'WO-5055309646', 'Repair', NULL, 'Completed', -1, NULL, NULL, 'COLONIAL LOGISTICS LLC', 50, NULL, 13, NULL, '2020-07-29', NULL, NULL, NULL, NULL, 119, NULL, 44, '121.00', '0.00', '0.00', 'One Time', 50464, 50464, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'REPLACED DRIVER SIDE WINDOW SWITCH', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(35, 'WO-0206986359', 'Repair', NULL, 'Cancelled', -1, NULL, NULL, 'Dr. William Green', 54, NULL, 16, NULL, '2020-07-28', NULL, NULL, NULL, NULL, 0, NULL, 47, '0.00', '0.00', '0.00', 'One Time', 30560, 30560, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'BREAKS', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(36, 'WO-5242908830', 'Repair', NULL, 'Completed', -1, NULL, NULL, 'COLONIAL LOGISTICS LLC', 50, NULL, 17, NULL, '2020-07-29', NULL, NULL, NULL, NULL, 118, NULL, 48, '767.49', '0.00', '0.00', 'One Time', 41037, 41037, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'WRONG FUEL', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(37, 'WO-8272023066', 'Repair', NULL, 'Completed', -1, NULL, NULL, 'Dr. William Green', 54, NULL, 16, NULL, '2020-08-12', NULL, NULL, NULL, NULL, 142, NULL, 49, '486.99', '0.00', '0.00', 'One Time', 30560, 30560, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'BREAKS', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(38, 'WO-0480587577', 'Body-Paint', NULL, 'Active', -1, NULL, NULL, 'COLONIAL LOGISTICS LLC', 50, NULL, 18, NULL, '2020-10-21', NULL, NULL, NULL, NULL, 0, NULL, 50, '0.00', '0.00', '0.00', 'One Time', 65802, 65802, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(39, 'WO-9014137249', 'Body-Paint', NULL, 'Completed', -1, NULL, NULL, 'COLONIAL LOGISTICS LLC', 50, NULL, 19, NULL, '2020-08-04', NULL, NULL, NULL, NULL, 141, NULL, 51, '6269.00', '0.00', '0.00', 'One Time', 63570, 63570, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'DRIVER AND SIDE DOOR REPLACE', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(46, 'WO-6524398362', 'Repair', NULL, 'Completed', -1, NULL, NULL, 'Dr. William Green', 54, NULL, 28, NULL, '2020-08-04', NULL, NULL, NULL, NULL, 143, NULL, 58, '0.00', '0.00', '0.00', 'One Time', 37793, 37793, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'REAR RAIL', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(47, 'WO-3611438048', 'Repair', NULL, 'Completed', -1, NULL, NULL, 'AUTO MALL 59', 53, NULL, 29, NULL, '2020-08-12', NULL, NULL, NULL, NULL, 0, NULL, 59, '500.00', '0.00', '0.00', 'One Time', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'MOTOR REPLACE', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(48, 'WO-0315201717', 'Body-Paint', NULL, 'Pending', -1, NULL, NULL, 'HONEYWELL', 61, NULL, 30, NULL, '2020-08-25', NULL, NULL, NULL, NULL, 121, NULL, 60, '0.00', '0.00', '0.00', 'One Time', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'FRONT BUMPER REAR BUMPER BODY WORK', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(50, 'WO-7812432956', 'Repair', NULL, 'Pending', -1, NULL, NULL, 'CARZRUS', 57, NULL, 32, NULL, '2020-07-30', NULL, NULL, NULL, NULL, 122, NULL, 62, '57.00', '0.00', '0.00', 'One Time', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'HORN, OIL CHANGE,PASSENGER SIDE, LOWER SIDE MIRROR', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(58, 'WO-5933961870', 'Body-Paint', NULL, 'Pending', -1, NULL, NULL, 'AUTO SELECTION /MIKE', 59, NULL, 37, NULL, '2020-08-12', NULL, NULL, NULL, NULL, 0, NULL, 70, '1500.00', '0.00', '0.00', 'One Time', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'BODY WORK', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(59, 'WO-3210145902', 'Repair', NULL, 'Pending', -1, NULL, NULL, 'CARZRUS', 57, NULL, 32, NULL, '2020-08-01', NULL, NULL, NULL, NULL, 137, NULL, 71, '260.00', '0.00', '0.00', 'One Time', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'FRONT AND REAR BUMPER REPLACEMENT', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(60, 'WO-4069885460', 'Body-Paint', NULL, 'Pending', -1, NULL, NULL, 'MOHAMMED ', 72, NULL, 15, NULL, '2020-08-01', NULL, NULL, NULL, NULL, 138, NULL, 72, '107.00', '0.00', '0.00', 'One Time', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'BODY WORK:\r\nPASSENGER SIDE DOOR, FENDER, & ROCKER PANEL\r\nREPAIR: \r\nPASSENGER SIDE STRUT (COMPLETE)', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(61, 'WO-8501473344', 'Repair', NULL, 'Pending', -1, NULL, NULL, 'AUTO MALL 59', 53, NULL, 39, NULL, '2020-08-04', NULL, NULL, NULL, NULL, 139, NULL, 73, '385.99', '0.00', '0.00', 'One Time', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'FRONT BUMPER REPLACEMENT', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(63, 'WO-4943524342', 'Repair', NULL, 'Pending', -1, NULL, NULL, 'AUTO SELECTION /MIKE', 59, NULL, 41, NULL, '2020-08-05', NULL, NULL, NULL, NULL, 146, NULL, 75, '284.91', '0.00', '0.00', 'One Time', 1111, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '0', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(64, 'WO-5687789633', 'Repair', NULL, 'Completed', -1, NULL, NULL, 'CARZRUS', 57, NULL, 42, NULL, '2020-08-06', NULL, NULL, NULL, NULL, 147, NULL, 76, '250.00', '0.00', '0.00', 'One Time', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(65, 'WO-2093887450', 'Body-Paint', NULL, 'Pending', -1, NULL, NULL, 'HONEYWELL', 76, NULL, 43, NULL, '2020-08-12', NULL, NULL, NULL, NULL, 0, NULL, 77, '450.00', '0.00', '0.00', 'One Time', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(66, 'WO-7635988987', 'Repair', NULL, 'Completed', -1, NULL, NULL, 'COLONIAL LOGISTICS LLC', 50, NULL, 44, NULL, '2020-08-12', NULL, NULL, NULL, NULL, 0, NULL, 78, '593.50', '0.00', '0.00', 'One Time', 34429, 34429, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(68, 'WO-6702923500', 'Repair', NULL, 'Active', -1, NULL, NULL, 'Training - Customer', 64, NULL, 46, NULL, '2020-08-26', NULL, NULL, NULL, NULL, 0, NULL, 80, '0.00', '0.00', '0.00', 'One Time', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(70, 'WO-0738536677', 'Body-Paint', NULL, 'Active', -1, NULL, NULL, 'Dr. William Green', 54, NULL, 48, NULL, '2020-08-27', NULL, NULL, NULL, NULL, 232, NULL, 82, '4156.00', '0.00', '0.00', 'One Time', 0, -1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(71, 'WO-6049983912', 'Repair', NULL, 'Completed', -1, NULL, NULL, 'COLONIAL LOGISTICS LLC', 50, NULL, 49, NULL, '2020-08-26', NULL, NULL, NULL, NULL, 228, NULL, 83, '826.50', '0.00', '0.00', 'One Time', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(73, 'WO-6784027254', 'Repair', NULL, 'Completed', -1, NULL, NULL, 'COLONIAL LOGISTICS LLC', 50, NULL, 98, NULL, '2020-09-01', NULL, NULL, NULL, NULL, 241, NULL, 85, '175.00', '0.00', '0.00', 'One Time', 34047, 34047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(77, 'WO-7606796136', 'Repair', NULL, 'Active', -1, NULL, NULL, 'Test Customer', 55, NULL, 140, NULL, '2020-10-21', NULL, NULL, NULL, NULL, 246, NULL, 89, '25.00', '0.00', '0.00', 'One Time', 123, 456, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(79, 'WO-0075714276', 'Repair', NULL, 'Active', -1, NULL, NULL, 'Training - Customer', 64, NULL, 10, NULL, '2020-10-27', NULL, NULL, NULL, NULL, 249, NULL, 91, '286.00', '0.00', '0.00', 'One Time', 123456, 1234567, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(80, 'WO-6308129223', 'Repair', NULL, 'Active', -1, NULL, NULL, 'Training - Customer', 64, NULL, 10, NULL, '2020-10-28', NULL, NULL, NULL, NULL, 250, NULL, 92, '738.12', '0.00', '0.00', 'One Time', 123, 1234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(82, 'WO-0869633479', 'Repair', NULL, 'Active', -1, NULL, NULL, 'Training - Customer', 64, NULL, 12, NULL, '2020-10-28', NULL, NULL, NULL, NULL, 252, NULL, 94, '894.68', '0.00', '0.00', 'One Time', 123, 1234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(83, 'WO-9774891058', 'Repair', NULL, 'Active', -1, NULL, NULL, 'Training - Customer', 64, NULL, 46, NULL, '2020-10-28', NULL, NULL, NULL, NULL, 253, NULL, 95, '477.00', '0.00', '0.00', 'One Time', 12, 123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(84, 'WO-4607658605', 'Repair', NULL, 'Pending', -1, NULL, NULL, 'Training - Customer', 64, NULL, 12, NULL, '2020-10-28', NULL, NULL, NULL, NULL, 254, NULL, 96, '376.00', '0.00', '0.00', 'One Time', 12, 122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(85, 'WO-5125587333', 'Repair', NULL, 'Active', -1, NULL, NULL, 'Training - Customer', 64, NULL, 10, NULL, '2020-10-30', NULL, NULL, NULL, NULL, 255, NULL, 97, '2099.32', '0.00', '0.00', 'One Time', 123, 1235, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(86, 'WO-1372862046', 'Repair', NULL, 'Pending', -1, NULL, NULL, 'Training - Customer', 64, NULL, 10, NULL, '2020-10-30', NULL, NULL, NULL, NULL, 256, NULL, 98, '543.00', '0.00', '0.00', 'One Time', 123, 1234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(87, 'WO-2356052862', 'Repair', NULL, 'Active', -1, NULL, NULL, 'Training - Customer', 64, NULL, 12, NULL, '2020-10-30', NULL, NULL, NULL, NULL, 0, NULL, 99, '569.00', '0.00', '0.00', 'One Time', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(88, 'WO-0167952842', 'Repair', NULL, 'Active', -1, NULL, NULL, 'Training - Customer', 64, NULL, 11, NULL, '2020-10-30', NULL, NULL, NULL, NULL, 257, NULL, 100, '1120.00', '0.00', '0.00', 'One Time', 12, 123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(89, 'WO-9981974775', 'Repair', NULL, 'Pending', -1, NULL, NULL, 'Training - Customer', 64, NULL, 11, NULL, '2020-10-30', NULL, NULL, NULL, NULL, 258, NULL, 101, '309.00', '0.00', '0.00', 'One Time', 12, 123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(90, 'WO-1966193523', 'Repair', NULL, 'Pending', -1, NULL, NULL, 'Training - Customer', 64, NULL, 10, NULL, '2020-11-07', NULL, NULL, NULL, NULL, 259, NULL, 102, '263.99', '0.00', '0.00', 'One Time', 23, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(91, 'WO-9597365401', 'Repair', NULL, 'Active', -1, NULL, NULL, 'Training - Customer', 64, NULL, 10, NULL, '2020-11-08', NULL, NULL, NULL, NULL, 260, NULL, 103, '1737.06', '0.00', '0.00', 'One Time', 123, 1234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `sys_part_vendor`
--

CREATE TABLE `sys_part_vendor` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `type` enum('Tire','Service','Product') DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_part_vendor`
--

INSERT INTO `sys_part_vendor` (`id`, `item_id`, `vendor_id`, `type`, `qty`, `created_at`, `updated_at`) VALUES
(5, 8, 52, 'Product', 0, '2020-07-17 21:31:38', NULL),
(6, 9, 43, 'Product', 0, '2020-07-21 17:58:48', NULL),
(7, 10, 65, 'Product', 0, '2020-07-22 20:32:41', NULL),
(9, 12, 65, 'Product', 0, '2020-07-22 20:36:00', NULL),
(10, 1, 65, 'Tire', 0, '2020-07-22 20:37:05', NULL),
(11, 2, 65, 'Tire', 0, '2020-07-22 20:40:37', NULL),
(14, 14, 42, 'Product', 0, '2020-07-28 22:53:24', NULL),
(15, 15, 26, 'Product', 0, '2020-07-29 20:26:03', NULL),
(16, 16, 26, 'Product', 0, '2020-07-29 20:28:12', NULL),
(17, 17, 26, 'Product', 0, '2020-07-29 20:29:31', NULL),
(19, 19, 68, 'Product', 0, '2020-07-29 21:29:29', NULL),
(20, 3, 52, 'Tire', 0, '2020-07-29 21:34:16', NULL),
(21, 20, 68, 'Product', 0, '2020-07-29 22:39:08', NULL),
(50, 37, 11, 'Product', 0, '2020-08-04 20:54:02', NULL),
(51, 35, 74, 'Product', 0, '2020-08-05 15:55:15', NULL),
(52, 34, 43, 'Product', 0, '2020-08-05 15:55:58', NULL),
(54, 36, 11, 'Product', 0, '2020-08-05 16:01:44', NULL),
(55, 31, 22, 'Product', 0, '2020-08-05 16:02:34', NULL),
(56, 33, 43, 'Product', 0, '2020-08-05 16:03:00', NULL),
(57, 30, 42, 'Product', 0, '2020-08-05 16:05:26', NULL),
(58, 28, 2, 'Product', 0, '2020-08-05 16:09:09', NULL),
(59, 27, 2, 'Product', 0, '2020-08-05 16:09:22', NULL),
(60, 26, 2, 'Product', 0, '2020-08-05 16:09:52', NULL),
(61, 25, 2, 'Product', 0, '2020-08-05 16:10:31', NULL),
(62, 24, 2, 'Product', 0, '2020-08-05 16:11:43', NULL),
(63, 23, 70, 'Product', 0, '2020-08-05 16:11:58', NULL),
(64, 22, 70, 'Product', 0, '2020-08-05 16:45:43', NULL),
(65, 21, 70, 'Product', 0, '2020-08-05 16:46:03', NULL),
(66, 18, 36, 'Product', 0, '2020-08-05 16:46:21', NULL),
(67, 13, 43, 'Product', 0, '2020-08-05 16:46:44', NULL),
(69, 11, 65, 'Product', 0, '2020-08-09 21:48:03', NULL),
(70, 39, 27, 'Product', 0, '2020-08-12 21:08:02', NULL),
(71, 40, 52, 'Product', 0, '2020-08-19 22:02:44', NULL),
(72, 41, 70, 'Product', 0, '2020-08-20 16:05:36', NULL),
(84, 46, 11, 'Product', 0, '2020-08-26 18:05:01', NULL),
(85, 45, 11, 'Product', 0, '2020-08-26 18:05:12', NULL),
(87, 43, 80, 'Product', 0, '2020-08-26 18:05:38', NULL),
(90, 50, 14, 'Product', 0, '2020-08-26 20:07:53', NULL),
(91, 51, 78, 'Product', 0, '2020-08-26 21:01:41', NULL),
(92, 44, 11, 'Product', 0, '2020-08-27 23:03:28', NULL),
(97, 42, 80, 'Product', 0, '2020-08-27 23:04:48', NULL),
(99, 48, 27, 'Product', 0, '2020-08-27 23:06:20', NULL),
(100, 47, 27, 'Product', 0, '2020-08-27 23:06:24', NULL),
(102, 49, 27, 'Product', 0, '2020-08-27 23:41:18', NULL),
(104, 7, 52, 'Product', 0, '2020-10-30 20:24:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_permissions`
--

CREATE TABLE `sys_permissions` (
  `id` int(11) NOT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `shortname` varchar(200) DEFAULT NULL,
  `available` int(1) NOT NULL DEFAULT '0',
  `core` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_permissions`
--

INSERT INTO `sys_permissions` (`id`, `pname`, `shortname`, `available`, `core`) VALUES
(1, 'Customers', 'customers', 0, 1),
(2, 'Companies', 'companies', 0, 1),
(3, 'Transactions', 'transactions', 0, 1),
(4, 'Sales', 'sales', 0, 1),
(5, 'Bank & Cash', 'bank_n_cash', 0, 1),
(7, 'Reports', 'reports', 0, 1),
(8, 'Utilities', 'utilities', 0, 1),
(9, 'Appearance', 'appearance', 0, 1),
(10, 'Plugins', 'plugins', 0, 1),
(11, 'Calendar', 'calendar', 0, 1),
(12, 'Leads', 'leads', 0, 1),
(13, 'Tasks', 'tasks', 0, 1),
(14, 'Contracts', 'contracts', 0, 1),
(15, 'Orders', 'orders', 0, 1),
(16, 'Settings', 'settings', 0, 1),
(17, 'Documents', 'documents', 0, 1),
(18, 'Purchase', 'purchase', 0, 1),
(19, 'Suppliers', 'suppliers', 0, 1),
(20, 'SMS', 'sms', 0, 1),
(21, 'Support', 'support', 0, 1),
(22, 'Knowledgebase', 'kb', 0, 1),
(23, 'Password Manager', 'password_manager', 0, 1),
(24, 'HRM', 'hrm', 0, 1),
(25, 'Deposit & Expense', 'deposit_n_expense', 0, 1),
(26, 'View Transaction & uncleared Transaction', 'viewTransaction_n_unclearedTransaction', 0, 1),
(27, 'Accounts', 'accounts', 0, 1),
(28, 'New Accounts', 'new_accounts', 0, 1),
(29, 'Assests', 'assests', 0, 1),
(30, 'Reports > Transactions', 'report_transactions', 0, 1),
(31, 'Reports > Invoices', 'report_invoices', 0, 1),
(32, 'Reports > Purchases', 'report_purchases', 0, 1),
(33, 'Reports > Customers', 'report_customers', 0, 1),
(34, 'Reports > Vendors', 'report_vendors', 0, 1),
(35, 'Reports > Account Statement', 'report_account_statement', 0, 1),
(36, 'Reports > Income Reports', 'report_income_report', 0, 1),
(37, 'Reports > Expense Reports', 'report_expense_report', 0, 1),
(38, 'Reports > Income Vs Expense', 'report_income_vs_expense', 0, 1),
(39, 'Reports > Reports by Date', 'report_by_date', 0, 1),
(40, 'Reports > Reports by Category', 'report_by_category', 0, 1),
(41, 'Reports > All Income', 'report_all_income', 0, 1),
(42, 'Reports > All Expense', 'report_all_expense', 0, 1),
(43, 'Reports > Sales', 'report_sales', 0, 1),
(44, 'Reports > Invoices VS Expense', 'report_invoices_vs_expense', 0, 1),
(45, 'Reports > Export', 'report_export', 0, 1),
(46, 'Reports > Trial Balance', 'trial_balance', 0, 1),
(47, 'Reports > Balance Sheet', 'balance_sheet', 0, 1),
(48, 'Reports > Income Statement', 'income_statement', 0, 1),
(49, 'Inventory > Parts', 'inventory_parts', 0, 1),
(50, 'Inventory > Tires', 'inventory_tires', 0, 1),
(51, 'Services', 'services', 0, 1),
(52, 'Fleet', 'fleet', 0, 1),
(53, 'Fleet > Inspection', 'inspection', 0, 1),
(54, 'Fleet > Vehicle', 'vehicle', 0, 1),
(55, 'View Tasks', 'view_tasks', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sys_pg`
--

CREATE TABLE `sys_pg` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `settings` text NOT NULL,
  `value` text NOT NULL,
  `processor` text NOT NULL,
  `ins` text NOT NULL,
  `c1` text NOT NULL,
  `c2` text NOT NULL,
  `c3` text NOT NULL,
  `c4` text NOT NULL,
  `c5` text NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `sorder` int(2) NOT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `mode` varchar(200) DEFAULT NULL,
  `account_id` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_pg`
--

INSERT INTO `sys_pg` (`id`, `name`, `settings`, `value`, `processor`, `ins`, `c1`, `c2`, `c3`, `c4`, `c5`, `status`, `sorder`, `logo`, `mode`, `account_id`, `created_at`, `updated_at`) VALUES
(2, 'Stripe', 'API Key', 'sk_test_ARblMczqDw61NusMMs7o1RVK', 'stripe', '', 'USD', '', '', '', '', 'Inactive', 3, NULL, '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_pl`
--

CREATE TABLE `sys_pl` (
  `id` int(11) NOT NULL,
  `c` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `sorder` int(11) NOT NULL DEFAULT '0',
  `build` int(10) DEFAULT '1',
  `c1` text,
  `c2` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_pmethods`
--

CREATE TABLE `sys_pmethods` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sorder` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_pmethods`
--

INSERT INTO `sys_pmethods` (`id`, `name`, `sorder`) VALUES
(1, 'Cash', 1),
(2, 'Check', 2),
(3, 'Credit Card', 3),
(4, 'Debit', 4),
(5, 'Electronic Transfer', 7),
(9, 'Paypal', 5),
(10, 'ATM Withdrawals', 6);

-- --------------------------------------------------------

--
-- Table structure for table `sys_purchaseitems`
--

CREATE TABLE `sys_purchaseitems` (
  `id` int(10) NOT NULL,
  `invoiceid` int(10) NOT NULL DEFAULT '0',
  `userid` int(10) NOT NULL,
  `type` text NOT NULL,
  `relid` int(10) NOT NULL,
  `itemcode` varchar(100) NOT NULL,
  `tax_code` varchar(200) DEFAULT NULL,
  `description` text NOT NULL,
  `qty` varchar(20) NOT NULL DEFAULT '1',
  `amount` decimal(14,2) NOT NULL DEFAULT '0.00',
  `taxed` int(1) NOT NULL,
  `tax_rate` decimal(16,2) DEFAULT NULL,
  `tax_name` varchar(200) DEFAULT NULL,
  `taxamount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tax1` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `tax2` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `tax3` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `discount_type` varchar(100) DEFAULT NULL,
  `discount_amount` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(14,2) NOT NULL DEFAULT '0.00',
  `duedate` date DEFAULT NULL,
  `paymentmethod` text NOT NULL,
  `notes` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_purchaseitems`
--

INSERT INTO `sys_purchaseitems` (`id`, `invoiceid`, `userid`, `type`, `relid`, `itemcode`, `tax_code`, `description`, `qty`, `amount`, `taxed`, `tax_rate`, `tax_name`, `taxamount`, `tax1`, `tax2`, `tax3`, `discount_type`, `discount_amount`, `total`, `duedate`, `paymentmethod`, `notes`, `created_at`, `updated_at`) VALUES
(42, 18, 32, '', 0, '', NULL, 'HIGH PERFORMANCE EURO CLEANER 5L', '1', '65.00', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '65.00', '2020-08-17', '', '', NULL, NULL),
(43, 18, 32, '', 0, '', NULL, 'SLOW EURO ACTIVATOR 2.5L', '1', '45.00', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '45.00', '2020-08-17', '', '', NULL, NULL),
(44, 19, 32, '', 0, '', NULL, 'SLOW URETHANE REDUCER ', '1', '25.00', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '25.00', '2020-08-17', '', '', NULL, NULL),
(45, 19, 32, '', 0, '', NULL, 'QT\' MIXING CUP LIDS', '20', '23.00', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '460.00', '2020-08-17', '', '', NULL, NULL),
(46, 19, 32, '', 0, '', NULL, 'MASKING PAPER, GREEN 12\"', '1', '9.99', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '9.99', '2020-08-17', '', '', NULL, NULL),
(47, 19, 32, '', 0, '', NULL, 'PAPER GREEN 18\" ROLL X750', '1', '35.00', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '35.00', '2020-08-17', '', '', NULL, NULL),
(48, 19, 32, '', 0, '', NULL, 'TACK CLOTHS', '1', '13.50', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '13.50', '2020-08-17', '', '', NULL, NULL),
(49, 19, 32, '', 0, '', NULL, 'PINSTRIPE BRUSHES #0', '1', '11.00', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '11.00', '2020-08-17', '', '', NULL, NULL),
(50, 19, 32, '', 0, '', NULL, 'GRAY SCUFF PADS 10/BX', '1', '12.00', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '12.00', '2020-08-17', '', '', NULL, NULL),
(51, 19, 32, '', 0, '', NULL, '391766 BASE HIGH SOLID WHITE', '1', '196.86', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '196.86', '2020-08-17', '', '', NULL, NULL),
(52, 20, 32, '', 0, '', NULL, '391726 BASE METALLIC BRILHANT COARSE', '1', '72.06', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '72.06', '2020-08-17', '', '', NULL, NULL),
(53, 20, 32, '', 0, '', NULL, '391754 BASE BLACK ', '1', '181.67', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '181.67', '2020-08-17', '', '', NULL, NULL),
(54, 20, 32, '', 0, '', NULL, '391758 BASE PEARL RED', '1', '77.08', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '77.08', '2020-08-17', '', '', NULL, NULL),
(55, 20, 32, '', 0, '', NULL, '482026 RADIANT RED (NEW 6/24)', '1', '224.16', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '224.16', '2020-08-17', '', '', NULL, NULL),
(56, 21, 27, '', 0, '', NULL, '906-420-51-85 BRAKE 114', '1', '31.60', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '31.60', '2020-08-17', '', '', NULL, NULL),
(57, 22, 41, '', 0, '', NULL, '2256517 LM TOURING ', '4', '67.99', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '271.96', '2020-08-17', '', '', NULL, NULL),
(58, 23, 43, '', 0, '', NULL, '2008 CHEVY SUBURBAN 1500 <br>OIL FILTER', '1', '1.99', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '1.99', '2020-08-17', '', '', NULL, NULL),
(59, 24, 70, '', 0, '', NULL, 'LR051013 BLADE', '2', '61.37', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '122.74', '2020-08-17', '', '', NULL, NULL),
(60, 24, 70, '', 0, '', NULL, 'LR095472 TENSIONE', '2', '79.69', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '159.38', '2020-08-17', '', '', NULL, NULL),
(61, 25, 52, '', 0, '', NULL, '245/75R16', '7', '92.35', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '646.45', '2020-08-17', '', '', NULL, NULL),
(62, 25, 52, '', 0, '', NULL, '0.75oz', '1', '6.07', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '6.07', '2020-08-17', '', '', NULL, NULL),
(63, 25, 52, '', 0, '', NULL, '1.17oz', '1', '13.19', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '13.19', '2020-08-17', '', '', NULL, NULL),
(64, 25, 52, '', 0, '', NULL, '2.00oz', '1', '14.76', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '14.76', '2020-08-17', '', '', NULL, NULL),
(65, 26, 77, '', 0, '', NULL, 'STERIO SYSTEM', '2', '159.00', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '318.00', '2020-08-17', '', '', NULL, NULL),
(66, 27, 78, '', 0, '', NULL, '3/ BRAKE PAD-FT', '8', '24.10', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '192.80', '2020-08-17', '', '', NULL, NULL),
(67, 27, 78, '', 0, '', NULL, '3/ BRAKE PAD-RR', '10', '24.10', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '241.00', '2020-08-17', '', '', NULL, NULL),
(68, 28, 78, '', 0, '', NULL, '2/BRAKE PAD-RR', '1', '35.64', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '35.64', '2020-08-17', '', '', NULL, NULL),
(69, 28, 78, '', 0, '', NULL, '2018 PROMASTER 2500 BRAKE PAD SEMI ', '2', '54.00', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '108.00', '2020-08-17', '', '', NULL, NULL),
(71, 29, 52, '', 0, '', NULL, 'WILD SPRIT-HST2356516', '6', '80.86', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '485.16', '2020-08-19', '', '', NULL, NULL),
(72, 30, 52, '', 0, '', NULL, 'WEEK30-LT2457017', '7', '89.61', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '627.27', '2020-08-24', '', '', NULL, NULL),
(73, 30, 52, '', 0, '', NULL, 'WEEK30-LT2457516', '3', '100.49', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '301.47', '2020-08-24', '', '', NULL, NULL),
(74, 30, 52, '', 0, '', NULL, 'WEEK30-LT2356516', '1', '119.09', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '119.09', '2020-08-24', '', '', NULL, NULL),
(75, 31, 11, '', 0, '', NULL, 'BZSR17-14A1', '1', '169.95', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '169.95', '2020-08-25', '', '', NULL, NULL),
(76, 31, 11, '', 0, '', NULL, 'BZSR17-14A2', '1', '169.95', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '169.95', '2020-08-25', '', '', NULL, NULL),
(77, 31, 11, '', 0, '', NULL, 'BZSR04-14A', '1', '199.95', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '199.95', '2020-08-25', '', '', NULL, NULL),
(78, 32, 11, '', 0, '', NULL, '303529AP', '1', '95.00', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '95.00', '2020-08-25', '', '', NULL, NULL),
(79, 32, 11, '', 0, '', NULL, '103417GE', '1', '127.00', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '127.00', '2020-08-25', '', '', NULL, NULL),
(80, 33, 65, 'Product', 0, '0011', NULL, 'Training Parts - 01', '1', '75.00', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '75.00', '2020-09-16', '', '', NULL, NULL),
(83, 34, 65, 'Product', 0, '0012', NULL, 'Training - Oil', '4', '35.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '140.00', '2020-09-16', '', '', NULL, NULL),
(85, 35, 80, 'Product', 0, '303529AP', NULL, '36094748', '1', '421.00', 0, NULL, NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '421.00', '2020-09-30', '', '', NULL, NULL),
(86, 36, 65, 'Product', 0, '49', NULL, '548674', '1', '180.00', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '180.00', '2020-10-22', '', '', NULL, NULL),
(87, 36, 65, 'Product', 0, '9', NULL, 'brake rotor', '1', '89.99', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '89.99', '2020-10-22', '', '', NULL, NULL),
(88, 36, 65, 'Product', 0, '14', NULL, 'BREAK PAD SET', '1', '109.99', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '109.99', '2020-10-22', '', '', NULL, NULL),
(89, 36, 65, 'Product', 0, '38', NULL, 'CRV PADS F/R', '1', '26.95', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '26.95', '2020-10-22', '', '', NULL, NULL),
(90, 37, 65, 'Product', 0, '49', NULL, '548674', '1', '180.00', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '180.00', '2020-10-22', '', '', NULL, NULL),
(91, 37, 65, 'Product', 0, '9', NULL, 'brake rotor', '1', '89.99', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '89.99', '2020-10-22', '', '', NULL, NULL),
(92, 37, 65, 'Product', 0, '14', NULL, 'BREAK PAD SET', '1', '109.99', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '109.99', '2020-10-22', '', '', NULL, NULL),
(93, 37, 65, 'Product', 0, '38', NULL, 'CRV PADS F/R', '1', '26.95', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '26.95', '2020-10-22', '', '', NULL, NULL),
(94, 38, 65, 'Product', 0, 'LR037089C7', NULL, 'TIMING KIT RANGEROVER', '5', '346.00', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '1730.00', '2020-10-26', '', '', NULL, NULL),
(95, 39, 65, 'Product', 0, 'WP932863', NULL, 'BREAK PAD SET', '5', '109.99', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '549.95', '2020-10-26', '', '', NULL, NULL),
(96, 40, 65, 'Product', 0, 'PDRBR900764', NULL, 'brake rotor', '1', '89.99', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '89.99', '2020-10-30', '', '', NULL, NULL),
(97, 40, 65, 'Product', 0, 'WP932863', NULL, 'BREAK PAD SET', '1', '109.99', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '109.99', '2020-10-30', '', '', NULL, NULL),
(98, 40, 65, 'Product', 0, '0038AB ', NULL, 'CRV PADS F/R', '1', '26.95', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '26.95', '2020-10-30', '', '', NULL, NULL),
(99, 41, 65, 'Product', 0, '33209', NULL, '133458', '1', '529.00', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '529.00', '2020-10-30', '', '', NULL, NULL),
(100, 42, 65, 'Product', 0, '33209', NULL, '133458', '1', '529.00', 0, '0.00', NULL, '0.00', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '529.00', '2020-10-30', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_purchases`
--

CREATE TABLE `sys_purchases` (
  `id` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `supplier_id` int(10) DEFAULT NULL,
  `supplier_name` varchar(200) DEFAULT NULL,
  `account` varchar(200) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `cn` varchar(100) NOT NULL DEFAULT '',
  `invoicenum` text NOT NULL,
  `date` date DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `datepaid` datetime DEFAULT NULL,
  `subtotal` decimal(18,2) NOT NULL,
  `discount_type` varchar(1) NOT NULL DEFAULT 'f',
  `discount_value` decimal(14,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(14,2) NOT NULL DEFAULT '0.00',
  `credit` decimal(10,2) NOT NULL DEFAULT '0.00',
  `taxname` varchar(100) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `tax2` decimal(10,2) DEFAULT NULL,
  `tax1_total` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `tax2_total` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `tax3_total` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `tax_total` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(18,2) NOT NULL DEFAULT '0.00',
  `taxrate` decimal(10,2) DEFAULT NULL,
  `taxrate2` decimal(10,2) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `paymentmethod` text NOT NULL,
  `notes` text NOT NULL,
  `vtoken` varchar(20) NOT NULL,
  `ptoken` varchar(20) NOT NULL,
  `r` varchar(100) NOT NULL DEFAULT '0',
  `nd` date DEFAULT NULL,
  `eid` int(10) NOT NULL DEFAULT '0',
  `ename` varchar(200) NOT NULL DEFAULT '',
  `vid` int(11) NOT NULL DEFAULT '0',
  `currency` int(11) NOT NULL DEFAULT '0',
  `currency_iso_code` char(3) DEFAULT NULL,
  `currency_symbol` varchar(10) DEFAULT NULL,
  `currency_prefix` varchar(10) DEFAULT NULL,
  `currency_suffix` varchar(10) DEFAULT NULL,
  `currency_rate` decimal(11,4) NOT NULL DEFAULT '1.0000',
  `recurring` tinyint(1) NOT NULL DEFAULT '0',
  `recurring_ends` date DEFAULT NULL,
  `last_recurring_date` date DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `sale_agent` int(11) NOT NULL DEFAULT '0',
  `last_overdue_reminder` date DEFAULT NULL,
  `allowed_payment_methods` text,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(50) DEFAULT NULL,
  `billing_country` varchar(100) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` varchar(100) DEFAULT NULL,
  `q_hide` tinyint(1) NOT NULL DEFAULT '0',
  `show_quantity_as` varchar(100) DEFAULT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `is_credit_invoice` int(1) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `aname` varchar(200) DEFAULT NULL,
  `receipt_number` varchar(200) DEFAULT NULL,
  `stage` varchar(200) DEFAULT 'Pending',
  `subject` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `pdf_location` varchar(200) DEFAULT '0',
  `p_o_number` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_purchases`
--

INSERT INTO `sys_purchases` (`id`, `userid`, `supplier_id`, `supplier_name`, `account`, `title`, `cn`, `invoicenum`, `date`, `duedate`, `datepaid`, `subtotal`, `discount_type`, `discount_value`, `discount`, `credit`, `taxname`, `tax`, `tax2`, `tax1_total`, `tax2_total`, `tax3_total`, `tax_total`, `total`, `taxrate`, `taxrate2`, `status`, `paymentmethod`, `notes`, `vtoken`, `ptoken`, `r`, `nd`, `eid`, `ename`, `vid`, `currency`, `currency_iso_code`, `currency_symbol`, `currency_prefix`, `currency_suffix`, `currency_rate`, `recurring`, `recurring_ends`, `last_recurring_date`, `source`, `sale_agent`, `last_overdue_reminder`, `allowed_payment_methods`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `q_hide`, `show_quantity_as`, `pid`, `is_credit_invoice`, `aid`, `aname`, `receipt_number`, `stage`, `subject`, `created_at`, `updated_at`, `code`, `pdf_location`, `p_o_number`) VALUES
(4, 52, NULL, NULL, 'NTW', NULL, '00004', 'PO-', '2020-06-23', '2020-06-23', '2020-06-23 13:40:36', '0.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '0.00', '0.00', '0.00', 'Unpaid', '', '', '5204241131', '6094852788', '0', '2020-06-23', 0, '', 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Pending', 'DH01 JUN22 WORK ORDER', NULL, NULL, NULL, '0', NULL),
(5, 6, NULL, NULL, 'ALL PAINTS', NULL, '00005', 'PO-', '2020-06-23', '2020-06-23', '2020-06-23 14:33:24', '120.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '120.00', '0.00', '0.00', 'Unpaid', '', '', '2536129782', '7763203874', '0', '2020-06-23', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Pending', '', NULL, NULL, NULL, '0', NULL),
(6, 42, NULL, NULL, 'WORLD PAC', NULL, '00006', 'PO-', '2020-06-23', '2020-06-23', '2020-06-23 17:25:01', '165.71', 'p', '0.00', '0.00', '165.71', '', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '165.71', '0.00', '0.00', 'Paid', '', '', '8258192506', '0383845801', '0', '2020-06-23', 0, '', 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Accepted', 'DH01 JUN22 WORK ORDER', NULL, '2020-06-23 17:25:16', NULL, '0', NULL),
(9, 17, NULL, NULL, 'COSANI ENGINE', NULL, '2445', 'PO-', '2020-08-07', '2020-08-07', '2020-08-11 16:54:15', '65.00', 'p', '0.00', '0.00', '0.00', '', '5.36', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '70.36', '0.00', '0.00', 'Unpaid', '', '', '6422573205', '0628291180', '0', '2020-08-07', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty1', 0, 0, 0, NULL, '', 'Pending', '', NULL, NULL, NULL, '0', ''),
(10, 75, NULL, NULL, 'AUTOSTAR', NULL, '4500', 'PO-', '2020-08-11', '2020-08-11', '2020-08-11 17:03:58', '89.99', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '89.99', '0.00', '0.00', 'Unpaid', '', '', '0021524719', '2848922812', '0', '2020-08-11', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, 0, 0, NULL, '', 'Pending', '', NULL, NULL, NULL, '0', 'ABID'),
(11, 75, NULL, NULL, 'AUTOSTAR', NULL, '4576', 'PO-', '2020-07-27', '2020-07-27', '2020-08-11 17:05:00', '89.99', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '89.99', '0.00', '0.00', 'Unpaid', '', '', '5447163417', '7347548090', '0', '2020-07-27', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, 0, 0, NULL, '', 'Pending', '', NULL, NULL, NULL, '0', 'ABID'),
(12, 75, NULL, NULL, 'AUTOSTAR', NULL, '4650', 'PO-', '2020-08-11', '2020-08-11', '2020-08-11 17:06:34', '179.98', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '179.98', '0.00', '0.00', 'Unpaid', '', '', '0026863320', '7897871442', '0', '2020-08-11', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2', 0, 0, 0, NULL, '', 'Pending', '', NULL, NULL, NULL, '0', 'ABID'),
(13, 52, NULL, NULL, 'NTW', NULL, '9048790360 ', 'PO-', '2020-08-17', '2020-08-17', '2020-08-17 10:56:40', '69.60', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '69.60', '0.00', '0.00', 'Unpaid', '', '', '6340447239', '9171535778', '0', '2020-08-17', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Pending', '', NULL, NULL, NULL, 'storage/invoice_pdf/_f6e06644690385159767981710556212.pdf', '08112020'),
(15, 16, NULL, NULL, 'CONTINENTAL BATTERY', NULL, '9048790362', 'PO-', '2020-08-03', '2020-08-03', '2020-08-17 11:24:57', '440.91', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '440.91', '0.00', '0.00', 'Unpaid', '', '', '1854163899', '9915795178', '0', '2020-08-03', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Pending', '', NULL, NULL, NULL, 'storage/invoice_pdf/_4ef42b32317101159767973610924869.pdf', ''),
(16, 32, NULL, NULL, 'PAL Z AUTOMOTIVE', NULL, '82045-0021', 'PO-', '2020-08-13', '2020-08-13', '2020-08-17 11:50:34', '736.73', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '736.73', '0.00', '0.00', 'Unpaid', '', '', '7365024991', '7726957835', '0', '2020-08-13', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Pending', '', NULL, NULL, NULL, 'storage/invoice_pdf/_bc9c8c70734132159767972710097334.pdf', ''),
(17, 32, NULL, NULL, 'PAL Z AUTOMOTIVE', NULL, '82047-0021', 'PO-', '2020-08-13', '2020-08-13', '2020-08-17 11:54:50', '24.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '24.00', '0.00', '0.00', 'Unpaid', '', '', '1394600754', '0756880232', '0', '2020-08-13', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Pending', '', NULL, NULL, NULL, 'storage/invoice_pdf/_8767bccb749620159767990510605692.pdf', ''),
(18, 32, NULL, NULL, 'PAL Z AUTOMOTIVE', NULL, '82048-0021', 'PO-', '2020-08-13', '2020-08-13', '2020-08-17 12:02:00', '140.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '140.00', '0.00', '0.00', 'Unpaid', '', '', '5331943261', '5162793158', '0', '2020-08-13', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Pending', '', NULL, NULL, NULL, 'storage/invoice_pdf/_af5d5ef2057037159768018110766106.pdf', ''),
(19, 32, NULL, NULL, 'PAL Z AUTOMOTIVE', NULL, '81996-0021', 'PO-', '2020-08-12', '2020-08-12', '2020-08-17 12:11:39', '763.35', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '763.35', '0.00', '0.00', 'Unpaid', '', '', '8251727560', '4701728752', '0', '2020-08-12', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Pending', '', NULL, NULL, NULL, 'storage/invoice_pdf/_551cb23808653415976807551081116.pdf', ''),
(20, 32, NULL, NULL, 'PAL Z AUTOMOTIVE', NULL, '81738-0021', 'PO-', '2020-08-04', '2020-08-04', '2020-08-17 12:19:23', '554.97', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '554.97', '0.00', '0.00', 'Unpaid', '', '', '9922331568', '6188412128', '0', '2020-08-04', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Pending', '', NULL, NULL, NULL, 'storage/invoice_pdf/_44012e79502506159768121410275678.pdf', ''),
(21, 27, NULL, NULL, 'MERCEDES-BENZ SUGAR LAND', NULL, '547830', 'PO-', '2020-08-12', '2020-08-12', '2020-08-17 12:26:35', '31.60', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '31.60', '0.00', '0.00', 'Unpaid', '', '', '6074162127', '8126469680', '0', '2020-08-12', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Pending', 'ONTC14', NULL, NULL, NULL, 'storage/invoice_pdf/_0bd65e79366652159768206110658365.pdf', '2297'),
(22, 41, NULL, NULL, 'TIRE HUB', NULL, '15363612', 'PO-', '2020-08-13', '2020-08-13', '2020-08-17 12:37:37', '271.96', 'p', '0.00', '0.00', '271.96', '', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '271.96', '0.00', '0.00', 'Paid', '', '', '0871867970', '8502749948', '0', '2020-08-13', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Accepted', '', NULL, '2020-08-20 12:07:55', NULL, 'storage/invoice_pdf/_20371daa835861159768231011064307.pdf', ''),
(23, 43, NULL, NULL, 'XL PARTS', NULL, '0010OS9976', 'PO-', '2020-08-13', '2020-08-13', '2020-08-17 12:40:36', '1.99', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '1.99', '0.00', '0.00', 'Unpaid', '', '', '5877651816', '9142804900', '0', '2020-08-13', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Pending', 'J002301', NULL, NULL, NULL, 'storage/invoice_pdf/_f2f44698945133159768248110024582.pdf', 'J002301'),
(24, 70, NULL, NULL, 'LAND ROVER OF SW-HOUSTON ', NULL, '156443L', 'PO-', '2020-08-13', '2020-08-13', '2020-08-17 12:44:26', '282.12', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '282.12', '0.00', '0.00', 'Unpaid', '', '', '2218472625', '6883862355', '0', '2020-08-13', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Pending', 'J002256', NULL, NULL, NULL, 'storage/invoice_pdf/_b49d4455257976159768272610482229.pdf', 'J002256'),
(25, 52, NULL, NULL, 'NTW', NULL, '9048744228', 'PO-', '2020-08-12', '2020-08-12', '2020-08-17 12:49:18', '680.47', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '680.47', '0.00', '0.00', 'Unpaid', '', '', '5782036673', '5425381649', '0', '2020-08-12', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Pending', 'ONTC08/12/20', NULL, NULL, NULL, 'storage/invoice_pdf/_5f0ad4db699128159768304010194080.pdf', 'ONTC'),
(26, 77, NULL, NULL, 'Falcon Electronics', NULL, '20026', 'PO-', '2020-08-13', '2020-08-13', '2020-08-17 12:57:15', '318.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '318.00', '0.00', '0.00', 'Unpaid', '', '', '8177414469', '9555006366', '0', '2020-08-13', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Pending', '', NULL, NULL, NULL, 'storage/invoice_pdf/_ef8f9439728137159768348810072950.pdf', ''),
(27, 78, NULL, NULL, 'A & K Distributors', NULL, '133294', 'PO-', '2020-08-11', '2020-08-11', '2020-08-17 13:05:16', '433.80', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '433.80', '0.00', '0.00', 'Unpaid', '', '', '3158749477', '0232079135', '0', '2020-08-11', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Pending', '', NULL, NULL, NULL, 'storage/invoice_pdf/_ebe4bab9529698159768424610532093.pdf', ''),
(28, 78, NULL, NULL, 'A & K Distributors', NULL, '133295', 'PO-', '2020-08-11', '2020-08-11', '2020-08-17 13:18:53', '143.64', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '143.64', '0.00', '0.00', 'Unpaid', '', '', '7045860529', '7234049212', '0', '2020-08-11', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Pending', '', NULL, NULL, NULL, 'storage/invoice_pdf/_97785e05638950159768477310633137.pdf', ''),
(29, 52, NULL, NULL, 'NTW', NULL, '133296', '9048948576', '2020-08-19', '2020-08-19', '2020-08-19 17:53:46', '485.16', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '485.16', '0.00', '0.00', 'Unpaid', '', '', '9159341169', '2905732625', '0', '2020-08-19', 0, '', 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Accepted', 'DH01 WEEK30', NULL, '2020-08-19 17:54:36', NULL, '0', ''),
(30, 52, NULL, NULL, 'NTW', NULL, '9049011393', 'PO-WEEK30', '2020-08-24', '2020-08-24', '2020-08-24 17:40:24', '1047.83', 'p', '0.00', '0.00', '1047.83', '', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '1047.83', '0.00', '0.00', 'Paid', '', '', '3210129479', '7324408297', '0', '2020-08-24', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Accepted', 'DH01-WEEK30', NULL, '2020-08-24 17:40:29', NULL, '0', ''),
(31, 11, NULL, NULL, 'AUTOFIT', NULL, '9049011394', 'H0824200713', '2020-08-25', '2020-08-25', '2020-08-25 14:42:31', '539.85', 'p', '0.00', '0.00', '539.85', '', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '539.85', '0.00', '0.00', 'Paid', '', '<p>CK NO-8100 PAID-8-25-20</p>', '1482793204', '3822971582', '0', '2020-08-25', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Accepted', 'AUTOFIT', NULL, '2020-08-25 14:42:41', NULL, '0', ''),
(32, 11, NULL, NULL, 'AUTOFIT', NULL, '36094748', 'ONTC14', '2020-08-25', '2020-08-25', '2020-08-25 15:02:06', '222.00', 'p', '0.00', '0.00', '222.00', '', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '222.00', '0.00', '0.00', 'Paid', '', '', '0192276998', '0737944923', '0', '2020-08-25', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Accepted', 'ONTC14', NULL, '2020-08-25 15:02:10', NULL, '0', 'ONTC14'),
(33, 65, NULL, NULL, 'Training - Vendor', NULL, '36094749', 'PO-', '2020-09-16', '2020-09-16', '2020-09-16 13:00:36', '75.00', 'p', '0.00', '0.00', '0.00', '', '6.19', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '81.19', '0.00', '0.00', 'Unpaid', '', '', '6160369981', '2262498817', '0', '2020-09-16', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Pending', '', NULL, NULL, NULL, '0', ''),
(34, 65, NULL, NULL, 'Training - Vendor', NULL, '36094750', 'PO-', '2020-09-16', '2020-09-16', '2020-09-16 13:02:00', '140.00', 'p', '0.00', '0.00', '0.00', '', '11.55', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '140.00', '0.00', '0.00', 'Unpaid', '', '', '0634873091', '0105724081', '0', '2020-09-16', 0, '', 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Pending', '', NULL, NULL, NULL, '0', ''),
(35, 80, NULL, NULL, '1-800-RADIATOR', NULL, '36094751', 'PO-', '2020-09-30', '2020-09-30', '2020-09-30 17:05:35', '421.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '421.00', '0.00', '0.00', 'Unpaid', '', '', '2702326556', '5363433227', '0', '2020-09-30', 0, '', 0, 1, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Pending', '', NULL, NULL, NULL, '0', ''),
(36, 65, NULL, NULL, 'Training - Vendor', NULL, '36094752', 'PO-', '2020-10-22', '2020-10-22', '2020-10-22 16:03:47', '406.93', 'p', '0.00', '0.00', '440.50', '', '33.57', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '440.50', '0.00', '0.00', 'Paid', '', '', '5908843919', '7358124156', '0', '2020-10-22', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Pending', '', NULL, NULL, NULL, '0', ''),
(37, 65, NULL, NULL, 'Training - Vendor', NULL, '36094753', 'PO-', '2020-10-22', '2020-10-22', '2020-10-22 16:32:19', '406.93', 'p', '0.00', '0.00', '440.50', '', '33.57', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '440.50', '0.00', '0.00', 'Paid', '', '', '2391936942', '7542190318', '0', '2020-10-22', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Accepted', '', NULL, '2020-10-22 16:33:53', NULL, '0', ''),
(38, 65, NULL, NULL, 'Training - Vendor', NULL, '36094754', 'PO-', '2020-10-26', '2020-10-26', '2020-10-26 15:09:05', '1730.00', 'p', '0.00', '0.00', '0.00', '', '142.73', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '1872.73', '0.00', '0.00', 'Unpaid', '', '', '1730469642', '5316718645', '0', '2020-10-26', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Pending', '', NULL, NULL, NULL, '0', ''),
(39, 65, NULL, NULL, 'Training - Vendor', NULL, '36094755', 'PO-', '2020-10-26', '2020-10-26', '2020-10-26 15:20:02', '549.95', 'p', '0.00', '0.00', '0.00', '', '45.37', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '595.32', '0.00', '0.00', 'Unpaid', '', '', '9779529390', '9847696337', '0', '2020-10-26', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Pending', '', NULL, NULL, NULL, '0', ''),
(40, 65, NULL, NULL, 'Training - Vendor', NULL, '36094756', 'PO-', '2020-10-30', '2020-10-30', '2020-10-30 16:03:32', '226.93', 'p', '0.00', '0.00', '0.00', '', '18.72', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '245.65', '0.00', '0.00', 'Unpaid', '', '', '4550525242', '4568505943', '0', '2020-10-30', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Pending', '', NULL, NULL, NULL, '0', ''),
(41, 65, NULL, NULL, 'Training - Vendor', NULL, '36094757', 'PO-', '2020-10-30', '2020-10-30', '2020-10-30 16:14:20', '529.00', 'p', '0.00', '0.00', '0.00', '', '43.64', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '572.64', '0.00', '0.00', 'Unpaid', '', '', '4404988667', '3295432678', '0', '2020-10-30', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Pending', '', NULL, NULL, NULL, '0', ''),
(42, 65, NULL, NULL, 'Training - Vendor', NULL, '36094757', 'PO-', '2020-10-30', '2020-10-30', '2020-10-30 16:14:22', '529.00', 'p', '0.00', '0.00', '0.00', '', '43.64', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '572.64', '0.00', '0.00', 'Unpaid', '', '', '4382194319', '1490150384', '0', '2020-10-30', 0, '', 0, 0, 'USD', '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Pending', '', NULL, NULL, NULL, '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `sys_quoteitems`
--

CREATE TABLE `sys_quoteitems` (
  `id` int(10) NOT NULL,
  `qid` int(10) NOT NULL,
  `itemcode` text NOT NULL,
  `description` text NOT NULL,
  `qty` text NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `total` decimal(18,2) NOT NULL,
  `taxable` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_quoteitems`
--

INSERT INTO `sys_quoteitems` (`id`, `qid`, `itemcode`, `description`, `qty`, `amount`, `discount`, `total`, `taxable`) VALUES
(2, 1, '', 'Invoice Mgmnt System', '1', '1800.00', '0.00', '1800.00', 0),
(3, 2, '', 'Paymetn', '1', '15000.00', '0.00', '15000.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sys_quotes`
--

CREATE TABLE `sys_quotes` (
  `id` int(10) NOT NULL,
  `subject` text NOT NULL,
  `stage` enum('Draft','Delivered','On Hold','Accepted','Lost','Dead') NOT NULL,
  `validuntil` date NOT NULL,
  `userid` int(10) NOT NULL,
  `invoicenum` text NOT NULL,
  `cn` text NOT NULL,
  `account` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `companyname` text NOT NULL,
  `email` text NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `postcode` text NOT NULL,
  `country` text NOT NULL,
  `phonenumber` text NOT NULL,
  `currency` int(10) NOT NULL,
  `subtotal` decimal(18,2) NOT NULL,
  `discount_type` text NOT NULL,
  `discount_value` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `taxname` text NOT NULL,
  `taxrate` decimal(10,2) NOT NULL,
  `tax1` decimal(10,2) NOT NULL,
  `tax2` decimal(10,2) NOT NULL,
  `total` decimal(18,2) NOT NULL,
  `proposal` text NOT NULL,
  `customernotes` text NOT NULL,
  `adminnotes` text NOT NULL,
  `datecreated` date NOT NULL,
  `lastmodified` date NOT NULL,
  `datesent` date NOT NULL,
  `dateaccepted` date NOT NULL,
  `vtoken` text NOT NULL,
  `code` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_quotes`
--

INSERT INTO `sys_quotes` (`id`, `subject`, `stage`, `validuntil`, `userid`, `invoicenum`, `cn`, `account`, `firstname`, `lastname`, `companyname`, `email`, `address1`, `address2`, `city`, `state`, `postcode`, `country`, `phonenumber`, `currency`, `subtotal`, `discount_type`, `discount_value`, `discount`, `taxname`, `taxrate`, `tax1`, `tax2`, `total`, `proposal`, `customernotes`, `adminnotes`, `datecreated`, `lastmodified`, `datesent`, `dateaccepted`, `vtoken`, `code`) VALUES
(1, 'IMS - Invoice Mgmt System', 'Accepted', '2020-06-24', 3, 'QUOTE-', '00001', 'Lucky M.', '', '', '', '', '', '', '', '', '', '', '', 1, '1800.00', 'p', '0.00', '0.00', '', '0.00', '0.00', '0.00', '1800.00', '<p>-Setting up invoice mgmt system</p><p>-The setup is going to be at client\'s server.</p><p>-The functionality is to add invoice which will eletronically create submission in the client\'s admin panel so client can keep track of their billing activities on a weekly basis.</p><p>-The system has multiple user roles so client can provide access to their staff with ease. </p><p>-Client will have multiple vendors so all invoices are sorted according to the vendors. In addition, client has the option to view invoices on a weekly basis. </p><p>-Custom report is added according to client\'s need.</p>', '', '', '2020-05-22', '2020-05-30', '2020-05-30', '2020-05-30', '0316433757', NULL),
(2, 'A1 Wholesale - ERP System', 'Delivered', '2020-07-01', 9, 'QUOTE-', '00002', 'Ahmed Salehji', '', '', '', '', '', '', '', '', '', '', '', 1, '15000.00', 'p', '0.00', '0.00', '', '0.00', '0.00', '0.00', '15000.00', '<ul><li>Website</li><li>CRM/VRM/HRM/Stock Mgmt</li><li>User Access (Super Admin/Admin/Manager/Account Executives/Drivers/Store Staff)</li><li>Sales (POS)</li><li>Online portal for customer to place order/ check status/ Invoices/ Transactions/ Tickets/ Profile</li><li>Server setup</li><li>Email accounts</li><li>Domain</li><li>Custom Reporting (MSA)</li><li>Payment solution (Online for new customers)</li><li>Pricing tiers (3 levels, so for low cr. risk gets better price, med. cr. risk gets diff price; high cr. risk gets other price)</li><li>Uraan</li><li>App (Hybrid)</li><li>EDI vs. Online vendor platform</li><li>Delivery System for drivers</li><li>Accounting</li></ul>', '', '', '2020-05-30', '2020-05-31', '2020-05-31', '2020-05-31', '7009579630', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_roles`
--

CREATE TABLE `sys_roles` (
  `id` int(11) NOT NULL,
  `rname` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_roles`
--

INSERT INTO `sys_roles` (`id`, `rname`) VALUES
(3, 'Employee'),
(4, 'aAdmin'),
(5, 'Owner'),
(6, 'Accountant'),
(7, 'Manager'),
(8, 'Assistant');

-- --------------------------------------------------------

--
-- Table structure for table `sys_sales`
--

CREATE TABLE `sys_sales` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `oid` int(11) NOT NULL DEFAULT '0',
  `oname` varchar(200) NOT NULL,
  `description` mediumtext NOT NULL,
  `amount` decimal(14,2) NOT NULL,
  `term` varchar(100) NOT NULL,
  `milestone` varchar(100) NOT NULL,
  `p` int(11) NOT NULL,
  `o` int(11) NOT NULL,
  `open` date NOT NULL,
  `close` date NOT NULL,
  `status` enum('New','In Progress','Won','Lost') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_schedule`
--

CREATE TABLE `sys_schedule` (
  `id` int(11) NOT NULL,
  `cname` mediumtext NOT NULL,
  `val` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_schedule`
--

INSERT INTO `sys_schedule` (`id`, `cname`, `val`) VALUES
(1, 'accounting_snapshot', 'Active'),
(2, 'recurring_invoice', 'Active'),
(3, 'notify', 'Active'),
(4, 'notifyemail', 'demo@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `sys_schedulelogs`
--

CREATE TABLE `sys_schedulelogs` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `logs` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_schedulelogs`
--

INSERT INTO `sys_schedulelogs` (`id`, `date`, `logs`) VALUES
(4, '2015-03-14', '2015-03-14 20:17:15 : Schedule Jobs Started....... <br>2015-03-14 20:17:15 : Creating Accounting Snapshot <br>2015-03-14 20:17:15 : Accounting Snapshot created! <br>=============== Accounting Snaphsot ==================== <br>Accounting Snaphsot - Date: 2015-03-13<br>Total Income: Tk. 0.00<br>Total Expense: Tk. 0.00<br>================================================== <br>2015-03-14 20:17:15 : Creating Recurring Invoice <br>2015-03-14 20:17:15 : 1 Invoice created! <br>================================================== <br>'),
(5, '2018-07-24', '================================================== <br>2018-07-24 13:27:38 : Schedule Jobs Started....... <br>2018-07-24 13:27:38 : Creating Accounting Snapshot <br>2018-07-24 13:27:38 : Accounting Snapshot created! <br>=============== Accounting Snaphsot ==================== <br>Accounting Snaphsot - Date: 2018-07-23<br>Total Income: $ 13,800.00<br>Total Expense: $ 0.00<br>================================================== <br>2018-07-24 13:27:38 : Creating Recurring Invoice <br>2018-07-24 13:27:38 : 0 Invoice created! <br>================================================== <br>');

-- --------------------------------------------------------

--
-- Table structure for table `sys_staffpermissions`
--

CREATE TABLE `sys_staffpermissions` (
  `id` int(11) NOT NULL,
  `rid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `shortname` varchar(50) DEFAULT NULL,
  `can_view` int(1) NOT NULL DEFAULT '0',
  `can_edit` int(1) NOT NULL DEFAULT '0',
  `can_create` int(1) NOT NULL DEFAULT '0',
  `can_delete` int(1) NOT NULL DEFAULT '0',
  `all_data` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_staffpermissions`
--

INSERT INTO `sys_staffpermissions` (`id`, `rid`, `pid`, `shortname`, `can_view`, `can_edit`, `can_create`, `can_delete`, `all_data`) VALUES
(3374, 7, 1, 'customers', 1, 1, 1, 0, 1),
(3375, 7, 2, 'companies', 0, 0, 0, 0, 0),
(3376, 7, 3, 'transactions', 0, 0, 0, 0, 0),
(3377, 7, 4, 'sales', 1, 1, 1, 0, 1),
(3378, 7, 5, 'bank_n_cash', 0, 0, 0, 0, 0),
(3379, 7, 7, 'reports', 0, 0, 0, 0, 0),
(3380, 7, 8, 'utilities', 0, 0, 0, 0, 0),
(3381, 7, 9, 'appearance', 0, 0, 0, 0, 0),
(3382, 7, 10, 'plugins', 0, 0, 0, 0, 0),
(3383, 7, 11, 'calendar', 0, 0, 0, 0, 0),
(3384, 7, 12, 'leads', 0, 0, 0, 0, 0),
(3385, 7, 13, 'tasks', 1, 1, 1, 0, 1),
(3386, 7, 14, 'contracts', 0, 0, 0, 0, 0),
(3387, 7, 15, 'orders', 1, 1, 1, 0, 1),
(3388, 7, 16, 'settings', 0, 0, 0, 0, 0),
(3389, 7, 17, 'documents', 1, 1, 1, 0, 1),
(3390, 7, 18, 'purchase', 1, 1, 1, 0, 1),
(3391, 7, 19, 'suppliers', 1, 1, 1, 0, 1),
(3392, 7, 20, 'sms', 0, 0, 0, 0, 0),
(3393, 7, 21, 'support', 1, 1, 1, 0, 1),
(3394, 7, 22, 'kb', 0, 0, 0, 0, 0),
(3395, 7, 23, 'password_manager', 0, 0, 0, 0, 0),
(3396, 7, 24, 'hrm', 0, 0, 0, 0, 0),
(3397, 7, 25, 'deposit_n_expense', 0, 1, 1, 0, 1),
(3398, 7, 26, 'viewTransaction_n_unclearedTransaction', 0, 1, 1, 0, 1),
(3399, 7, 27, 'accounts', 0, 1, 1, 0, 1),
(3400, 7, 28, 'new_accounts', 0, 1, 1, 0, 1),
(3401, 7, 29, 'assests', 0, 1, 1, 0, 1),
(3402, 7, 30, 'report_transactions', 0, 0, 0, 0, 0),
(3403, 7, 31, 'report_invoices', 0, 0, 0, 0, 0),
(3404, 7, 32, 'report_purchases', 0, 0, 0, 0, 0),
(3405, 7, 33, 'report_customers', 0, 0, 0, 0, 0),
(3406, 7, 34, 'report_vendors', 0, 0, 0, 0, 0),
(3407, 7, 35, 'report_account_statement', 0, 0, 0, 0, 0),
(3408, 7, 36, 'report_income_report', 0, 0, 0, 0, 0),
(3409, 7, 37, 'report_expense_report', 0, 0, 0, 0, 0),
(3410, 7, 38, 'report_income_vs_expense', 0, 0, 0, 0, 0),
(3411, 7, 39, 'report_by_date', 0, 0, 0, 0, 0),
(3412, 7, 40, 'report_by_category', 0, 0, 0, 0, 0),
(3413, 7, 41, 'report_all_income', 0, 0, 0, 0, 0),
(3414, 7, 42, 'report_all_expense', 0, 0, 0, 0, 0),
(3415, 7, 43, 'report_sales', 0, 0, 0, 0, 0),
(3416, 7, 44, 'report_invoices_vs_expense', 0, 0, 0, 0, 0),
(3417, 7, 45, 'report_export', 0, 0, 0, 0, 0),
(3418, 7, 46, 'trial_balance', 0, 0, 0, 0, 0),
(3419, 7, 47, 'balance_sheet', 0, 0, 0, 0, 0),
(3420, 7, 48, 'income_statement', 0, 0, 0, 0, 0),
(3421, 7, 49, 'inventory_parts', 0, 0, 0, 0, 0),
(3422, 7, 50, 'inventory_tires', 0, 0, 0, 0, 0),
(3423, 7, 51, 'services', 0, 0, 0, 0, 0),
(3424, 7, 52, 'fleet', 0, 0, 0, 0, 0),
(3425, 7, 53, 'inspection', 0, 0, 0, 0, 0),
(3426, 7, 54, 'vehicle', 0, 0, 0, 0, 0),
(3851, 6, 1, 'customers', 0, 0, 0, 0, 0),
(3852, 6, 2, 'companies', 0, 0, 0, 0, 0),
(3853, 6, 3, 'transactions', 1, 0, 0, 0, 1),
(3854, 6, 4, 'sales', 1, 0, 0, 0, 1),
(3855, 6, 5, 'bank_n_cash', 1, 0, 0, 0, 1),
(3856, 6, 7, 'reports', 0, 0, 0, 0, 0),
(3857, 6, 8, 'utilities', 0, 0, 0, 0, 0),
(3858, 6, 9, 'appearance', 0, 0, 0, 0, 0),
(3859, 6, 10, 'plugins', 0, 0, 0, 0, 0),
(3860, 6, 11, 'calendar', 0, 0, 0, 0, 0),
(3861, 6, 12, 'leads', 0, 0, 0, 0, 0),
(3862, 6, 13, 'tasks', 0, 0, 0, 0, 0),
(3863, 6, 14, 'contracts', 0, 0, 0, 0, 0),
(3864, 6, 15, 'orders', 0, 0, 0, 0, 0),
(3865, 6, 16, 'settings', 0, 0, 0, 0, 0),
(3866, 6, 17, 'documents', 0, 0, 0, 0, 0),
(3867, 6, 18, 'purchase', 0, 0, 0, 0, 0),
(3868, 6, 19, 'suppliers', 0, 0, 0, 0, 0),
(3869, 6, 20, 'sms', 0, 0, 0, 0, 0),
(3870, 6, 21, 'support', 0, 0, 0, 0, 0),
(3871, 6, 22, 'kb', 0, 0, 0, 0, 0),
(3872, 6, 23, 'password_manager', 0, 0, 0, 0, 0),
(3873, 6, 24, 'hrm', 0, 0, 0, 0, 0),
(3874, 6, 25, 'deposit_n_expense', 1, 1, 1, 0, 1),
(3875, 6, 26, 'viewTransaction_n_unclearedTransaction', 1, 1, 1, 0, 1),
(3876, 6, 27, 'accounts', 1, 1, 1, 0, 1),
(3877, 6, 28, 'new_accounts', 1, 1, 1, 0, 1),
(3878, 6, 29, 'assests', 1, 1, 1, 0, 1),
(3879, 6, 30, 'report_transactions', 1, 1, 1, 0, 1),
(3880, 6, 31, 'report_invoices', 1, 1, 1, 0, 1),
(3881, 6, 32, 'report_purchases', 0, 0, 0, 0, 0),
(3882, 6, 33, 'report_customers', 0, 0, 0, 0, 0),
(3883, 6, 34, 'report_vendors', 0, 0, 0, 0, 0),
(3884, 6, 35, 'report_account_statement', 1, 1, 1, 0, 1),
(3885, 6, 36, 'report_income_report', 1, 1, 1, 0, 1),
(3886, 6, 37, 'report_expense_report', 1, 1, 1, 0, 1),
(3887, 6, 38, 'report_income_vs_expense', 0, 0, 0, 0, 0),
(3888, 6, 39, 'report_by_date', 1, 1, 1, 0, 1),
(3889, 6, 40, 'report_by_category', 1, 1, 1, 0, 1),
(3890, 6, 41, 'report_all_income', 1, 1, 1, 0, 1),
(3891, 6, 42, 'report_all_expense', 1, 1, 1, 0, 1),
(3892, 6, 43, 'report_sales', 1, 1, 1, 0, 1),
(3893, 6, 44, 'report_invoices_vs_expense', 1, 1, 1, 0, 1),
(3894, 6, 45, 'report_export', 0, 0, 0, 0, 0),
(3895, 6, 46, 'trial_balance', 1, 1, 1, 0, 1),
(3896, 6, 47, 'balance_sheet', 1, 1, 1, 0, 1),
(3897, 6, 48, 'income_statement', 1, 1, 1, 0, 1),
(3898, 6, 49, 'inventory_parts', 0, 0, 0, 0, 0),
(3899, 6, 50, 'inventory_tires', 0, 0, 0, 0, 0),
(3900, 6, 51, 'services', 0, 0, 0, 0, 0),
(3901, 6, 52, 'fleet', 0, 0, 0, 0, 0),
(3902, 6, 53, 'inspection', 0, 0, 0, 0, 0),
(3903, 6, 54, 'vehicle', 0, 0, 0, 0, 0),
(3957, 8, 1, 'customers', 1, 1, 1, 0, 1),
(3958, 8, 2, 'companies', 0, 0, 0, 0, 0),
(3959, 8, 3, 'transactions', 0, 0, 0, 0, 0),
(3960, 8, 4, 'sales', 1, 1, 1, 0, 1),
(3961, 8, 5, 'bank_n_cash', 0, 0, 0, 0, 0),
(3962, 8, 7, 'reports', 0, 0, 0, 0, 0),
(3963, 8, 8, 'utilities', 0, 0, 0, 0, 0),
(3964, 8, 9, 'appearance', 0, 0, 0, 0, 0),
(3965, 8, 10, 'plugins', 0, 0, 0, 0, 0),
(3966, 8, 11, 'calendar', 0, 0, 0, 0, 0),
(3967, 8, 12, 'leads', 0, 0, 0, 0, 0),
(3968, 8, 13, 'tasks', 1, 1, 1, 0, 1),
(3969, 8, 14, 'contracts', 0, 0, 0, 0, 0),
(3970, 8, 15, 'orders', 1, 1, 1, 0, 1),
(3971, 8, 16, 'settings', 0, 0, 0, 0, 0),
(3972, 8, 17, 'documents', 0, 0, 0, 0, 0),
(3973, 8, 18, 'purchase', 1, 1, 1, 0, 1),
(3974, 8, 19, 'suppliers', 0, 0, 0, 0, 0),
(3975, 8, 20, 'sms', 0, 0, 0, 0, 0),
(3976, 8, 21, 'support', 0, 1, 1, 0, 1),
(3977, 8, 22, 'kb', 0, 0, 0, 0, 0),
(3978, 8, 23, 'password_manager', 0, 0, 0, 0, 0),
(3979, 8, 24, 'hrm', 0, 0, 0, 0, 0),
(3980, 8, 25, 'deposit_n_expense', 0, 0, 0, 0, 0),
(3981, 8, 26, 'viewTransaction_n_unclearedTransaction', 0, 0, 0, 0, 0),
(3982, 8, 27, 'accounts', 0, 0, 0, 0, 0),
(3983, 8, 28, 'new_accounts', 0, 0, 0, 0, 0),
(3984, 8, 29, 'assests', 0, 0, 0, 0, 0),
(3985, 8, 30, 'report_transactions', 0, 0, 0, 0, 0),
(3986, 8, 31, 'report_invoices', 0, 0, 0, 0, 0),
(3987, 8, 32, 'report_purchases', 0, 0, 0, 0, 0),
(3988, 8, 33, 'report_customers', 0, 0, 0, 0, 0),
(3989, 8, 34, 'report_vendors', 0, 0, 0, 0, 0),
(3990, 8, 35, 'report_account_statement', 0, 0, 0, 0, 0),
(3991, 8, 36, 'report_income_report', 0, 0, 0, 0, 0),
(3992, 8, 37, 'report_expense_report', 0, 0, 0, 0, 0),
(3993, 8, 38, 'report_income_vs_expense', 0, 0, 0, 0, 0),
(3994, 8, 39, 'report_by_date', 0, 0, 0, 0, 0),
(3995, 8, 40, 'report_by_category', 0, 0, 0, 0, 0),
(3996, 8, 41, 'report_all_income', 0, 0, 0, 0, 0),
(3997, 8, 42, 'report_all_expense', 0, 0, 0, 0, 0),
(3998, 8, 43, 'report_sales', 0, 0, 0, 0, 0),
(3999, 8, 44, 'report_invoices_vs_expense', 0, 0, 0, 0, 0),
(4000, 8, 45, 'report_export', 0, 0, 0, 0, 0),
(4001, 8, 46, 'trial_balance', 0, 0, 0, 0, 0),
(4002, 8, 47, 'balance_sheet', 0, 0, 0, 0, 0),
(4003, 8, 48, 'income_statement', 0, 0, 0, 0, 0),
(4004, 8, 49, 'inventory_parts', 1, 1, 1, 0, 1),
(4005, 8, 50, 'inventory_tires', 1, 1, 1, 0, 1),
(4006, 8, 51, 'services', 0, 0, 0, 0, 0),
(4007, 8, 52, 'fleet', 1, 1, 1, 0, 1),
(4008, 8, 53, 'inspection', 1, 1, 1, 0, 1),
(4009, 8, 54, 'vehicle', 1, 1, 1, 0, 1),
(4276, 4, 1, 'customers', 1, 1, 1, 1, 1),
(4277, 4, 2, 'companies', 1, 1, 1, 1, 1),
(4278, 4, 3, 'transactions', 1, 1, 1, 0, 1),
(4279, 4, 4, 'sales', 1, 0, 1, 1, 1),
(4280, 4, 5, 'bank_n_cash', 1, 1, 1, 1, 1),
(4281, 4, 7, 'reports', 1, 1, 1, 1, 1),
(4282, 4, 8, 'utilities', 0, 0, 0, 0, 0),
(4283, 4, 9, 'appearance', 0, 0, 0, 0, 0),
(4284, 4, 10, 'plugins', 0, 0, 0, 0, 0),
(4285, 4, 11, 'calendar', 0, 1, 1, 0, 1),
(4286, 4, 12, 'leads', 0, 1, 1, 0, 1),
(4287, 4, 13, 'tasks', 1, 1, 1, 0, 1),
(4288, 4, 14, 'contracts', 0, 1, 1, 0, 1),
(4289, 4, 15, 'orders', 1, 1, 1, 1, 1),
(4290, 4, 16, 'settings', 0, 0, 0, 0, 0),
(4291, 4, 17, 'documents', 0, 1, 1, 0, 1),
(4292, 4, 18, 'purchase', 1, 1, 1, 0, 1),
(4293, 4, 19, 'suppliers', 1, 1, 1, 0, 1),
(4294, 4, 20, 'sms', 0, 0, 0, 0, 0),
(4295, 4, 21, 'support', 1, 1, 1, 0, 1),
(4296, 4, 22, 'kb', 0, 0, 0, 0, 0),
(4297, 4, 23, 'password_manager', 0, 0, 0, 0, 0),
(4298, 4, 24, 'hrm', 1, 1, 1, 1, 1),
(4299, 4, 25, 'deposit_n_expense', 1, 1, 1, 0, 1),
(4300, 4, 26, 'viewTransaction_n_unclearedTransaction', 1, 1, 1, 0, 1),
(4301, 4, 27, 'accounts', 1, 1, 1, 0, 1),
(4302, 4, 28, 'new_accounts', 1, 1, 1, 0, 1),
(4303, 4, 29, 'assests', 1, 1, 1, 0, 1),
(4304, 4, 30, 'report_transactions', 0, 0, 0, 0, 0),
(4305, 4, 31, 'report_invoices', 0, 0, 0, 0, 0),
(4306, 4, 32, 'report_purchases', 1, 1, 1, 0, 1),
(4307, 4, 33, 'report_customers', 0, 0, 0, 0, 0),
(4308, 4, 34, 'report_vendors', 0, 0, 0, 0, 0),
(4309, 4, 35, 'report_account_statement', 0, 0, 0, 0, 0),
(4310, 4, 36, 'report_income_report', 0, 0, 0, 0, 0),
(4311, 4, 37, 'report_expense_report', 0, 0, 0, 0, 0),
(4312, 4, 38, 'report_income_vs_expense', 0, 0, 0, 0, 0),
(4313, 4, 39, 'report_by_date', 0, 0, 0, 0, 0),
(4314, 4, 40, 'report_by_category', 0, 0, 0, 0, 0),
(4315, 4, 41, 'report_all_income', 0, 0, 0, 0, 0),
(4316, 4, 42, 'report_all_expense', 0, 0, 0, 0, 0),
(4317, 4, 43, 'report_sales', 0, 0, 0, 0, 0),
(4318, 4, 44, 'report_invoices_vs_expense', 0, 0, 0, 0, 0),
(4319, 4, 45, 'report_export', 0, 0, 0, 0, 0),
(4320, 4, 46, 'trial_balance', 1, 1, 1, 0, 1),
(4321, 4, 47, 'balance_sheet', 1, 1, 1, 0, 1),
(4322, 4, 48, 'income_statement', 1, 1, 1, 0, 1),
(4323, 4, 49, 'inventory_parts', 1, 1, 1, 0, 1),
(4324, 4, 50, 'inventory_tires', 1, 1, 1, 0, 1),
(4325, 4, 51, 'services', 1, 1, 1, 0, 1),
(4326, 4, 52, 'fleet', 1, 1, 1, 0, 1),
(4327, 4, 53, 'inspection', 1, 1, 1, 0, 1),
(4328, 4, 54, 'vehicle', 1, 1, 1, 0, 1),
(4329, 4, 55, 'view_tasks', 1, 1, 1, 0, 1),
(4492, 5, 1, 'customers', 1, 1, 1, 1, 1),
(4493, 5, 2, 'companies', 1, 1, 1, 1, 1),
(4494, 5, 3, 'transactions', 1, 1, 1, 1, 1),
(4495, 5, 4, 'sales', 1, 1, 1, 1, 1),
(4496, 5, 5, 'bank_n_cash', 1, 1, 1, 1, 1),
(4497, 5, 7, 'reports', 1, 1, 1, 1, 1),
(4498, 5, 8, 'utilities', 0, 0, 0, 0, 0),
(4499, 5, 9, 'appearance', 0, 0, 0, 0, 0),
(4500, 5, 10, 'plugins', 0, 0, 0, 0, 0),
(4501, 5, 11, 'calendar', 0, 1, 1, 1, 1),
(4502, 5, 12, 'leads', 0, 1, 1, 1, 1),
(4503, 5, 13, 'tasks', 1, 1, 1, 1, 1),
(4504, 5, 14, 'contracts', 0, 1, 1, 1, 1),
(4505, 5, 15, 'orders', 1, 1, 1, 1, 1),
(4506, 5, 16, 'settings', 0, 0, 0, 0, 0),
(4507, 5, 17, 'documents', 1, 1, 1, 1, 1),
(4508, 5, 18, 'purchase', 1, 1, 1, 1, 1),
(4509, 5, 19, 'suppliers', 1, 1, 1, 1, 1),
(4510, 5, 20, 'sms', 0, 0, 0, 0, 0),
(4511, 5, 21, 'support', 1, 1, 1, 1, 1),
(4512, 5, 22, 'kb', 0, 1, 1, 1, 1),
(4513, 5, 23, 'password_manager', 0, 1, 1, 1, 1),
(4514, 5, 24, 'hrm', 1, 1, 1, 1, 1),
(4515, 5, 25, 'deposit_n_expense', 1, 1, 1, 1, 1),
(4516, 5, 26, 'viewTransaction_n_unclearedTransaction', 1, 1, 1, 1, 1),
(4517, 5, 27, 'accounts', 1, 1, 1, 1, 1),
(4518, 5, 28, 'new_accounts', 1, 1, 1, 1, 1),
(4519, 5, 29, 'assests', 1, 1, 1, 1, 1),
(4520, 5, 30, 'report_transactions', 0, 0, 0, 0, 0),
(4521, 5, 31, 'report_invoices', 0, 0, 0, 0, 0),
(4522, 5, 32, 'report_purchases', 1, 1, 1, 0, 1),
(4523, 5, 33, 'report_customers', 0, 0, 0, 0, 0),
(4524, 5, 34, 'report_vendors', 0, 0, 0, 0, 0),
(4525, 5, 35, 'report_account_statement', 0, 0, 0, 0, 0),
(4526, 5, 36, 'report_income_report', 1, 1, 0, 0, 1),
(4527, 5, 37, 'report_expense_report', 1, 1, 0, 0, 1),
(4528, 5, 38, 'report_income_vs_expense', 1, 1, 0, 0, 1),
(4529, 5, 39, 'report_by_date', 1, 1, 0, 0, 1),
(4530, 5, 40, 'report_by_category', 1, 1, 0, 0, 1),
(4531, 5, 41, 'report_all_income', 0, 0, 0, 0, 0),
(4532, 5, 42, 'report_all_expense', 1, 1, 0, 0, 1),
(4533, 5, 43, 'report_sales', 1, 1, 1, 0, 1),
(4534, 5, 44, 'report_invoices_vs_expense', 1, 1, 1, 0, 1),
(4535, 5, 45, 'report_export', 1, 1, 1, 0, 1),
(4536, 5, 46, 'trial_balance', 1, 1, 1, 0, 1),
(4537, 5, 47, 'balance_sheet', 1, 1, 1, 0, 1),
(4538, 5, 48, 'income_statement', 1, 1, 1, 0, 1),
(4539, 5, 49, 'inventory_parts', 1, 1, 1, 0, 1),
(4540, 5, 50, 'inventory_tires', 1, 1, 1, 0, 1),
(4541, 5, 51, 'services', 1, 1, 1, 0, 1),
(4542, 5, 52, 'fleet', 1, 1, 1, 1, 1),
(4543, 5, 53, 'inspection', 1, 1, 1, 1, 1),
(4544, 5, 54, 'vehicle', 1, 1, 1, 1, 1),
(4545, 5, 55, 'view_tasks', 1, 1, 1, 1, 1),
(4654, 3, 1, 'customers', 0, 1, 1, 0, 0),
(4655, 3, 2, 'companies', 0, 0, 0, 0, 0),
(4656, 3, 3, 'transactions', 0, 0, 0, 0, 0),
(4657, 3, 4, 'sales', 0, 1, 1, 0, 1),
(4658, 3, 5, 'bank_n_cash', 0, 0, 0, 0, 0),
(4659, 3, 7, 'reports', 0, 0, 0, 0, 0),
(4660, 3, 8, 'utilities', 0, 0, 0, 0, 0),
(4661, 3, 9, 'appearance', 0, 0, 0, 0, 0),
(4662, 3, 10, 'plugins', 0, 0, 0, 0, 0),
(4663, 3, 11, 'calendar', 1, 0, 0, 0, 1),
(4664, 3, 12, 'leads', 0, 0, 0, 0, 0),
(4665, 3, 13, 'tasks', 1, 1, 1, 0, 1),
(4666, 3, 14, 'contracts', 1, 1, 0, 0, 0),
(4667, 3, 15, 'orders', 0, 0, 0, 0, 0),
(4668, 3, 16, 'settings', 0, 0, 0, 0, 0),
(4669, 3, 17, 'documents', 0, 0, 0, 0, 0),
(4670, 3, 18, 'purchase', 0, 0, 0, 0, 0),
(4671, 3, 19, 'suppliers', 0, 0, 0, 0, 0),
(4672, 3, 20, 'sms', 0, 0, 0, 0, 0),
(4673, 3, 21, 'support', 1, 1, 1, 0, 1),
(4674, 3, 22, 'kb', 0, 0, 0, 0, 0),
(4675, 3, 23, 'password_manager', 0, 0, 0, 0, 0),
(4676, 3, 24, 'hrm', 0, 0, 0, 0, 0),
(4677, 3, 25, 'deposit_n_expense', 0, 0, 0, 0, 0),
(4678, 3, 26, 'viewTransaction_n_unclearedTransaction', 0, 0, 0, 0, 0),
(4679, 3, 27, 'accounts', 0, 0, 0, 0, 0),
(4680, 3, 28, 'new_accounts', 0, 0, 0, 0, 0),
(4681, 3, 29, 'assests', 0, 0, 0, 0, 0),
(4682, 3, 30, 'report_transactions', 0, 0, 0, 0, 0),
(4683, 3, 31, 'report_invoices', 0, 0, 0, 0, 0),
(4684, 3, 32, 'report_purchases', 0, 0, 0, 0, 0),
(4685, 3, 33, 'report_customers', 0, 0, 0, 0, 0),
(4686, 3, 34, 'report_vendors', 0, 0, 0, 0, 0),
(4687, 3, 35, 'report_account_statement', 0, 0, 0, 0, 0),
(4688, 3, 36, 'report_income_report', 0, 0, 0, 0, 0),
(4689, 3, 37, 'report_expense_report', 0, 0, 0, 0, 0),
(4690, 3, 38, 'report_income_vs_expense', 0, 0, 0, 0, 0),
(4691, 3, 39, 'report_by_date', 0, 0, 0, 0, 0),
(4692, 3, 40, 'report_by_category', 0, 0, 0, 0, 0),
(4693, 3, 41, 'report_all_income', 0, 0, 0, 0, 0),
(4694, 3, 42, 'report_all_expense', 0, 0, 0, 0, 0),
(4695, 3, 43, 'report_sales', 0, 0, 0, 0, 0),
(4696, 3, 44, 'report_invoices_vs_expense', 0, 0, 0, 0, 0),
(4697, 3, 45, 'report_export', 0, 0, 0, 0, 0),
(4698, 3, 46, 'trial_balance', 0, 0, 0, 0, 0),
(4699, 3, 47, 'balance_sheet', 0, 0, 0, 0, 0),
(4700, 3, 48, 'income_statement', 0, 0, 0, 0, 0),
(4701, 3, 49, 'inventory_parts', 0, 0, 0, 0, 0),
(4702, 3, 50, 'inventory_tires', 0, 0, 0, 0, 0),
(4703, 3, 51, 'services', 0, 0, 0, 0, 0),
(4704, 3, 52, 'fleet', 0, 0, 0, 0, 0),
(4705, 3, 53, 'inspection', 0, 0, 0, 0, 0),
(4706, 3, 54, 'vehicle', 0, 0, 0, 0, 0),
(4707, 3, 55, 'view_tasks', 1, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sys_status`
--

CREATE TABLE `sys_status` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `sorder` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_status`
--

INSERT INTO `sys_status` (`id`, `type`, `name`, `sorder`, `created_at`, `updated_at`) VALUES
(1, 'Purchase Invoice', 'Pending', NULL, NULL, NULL),
(2, 'Purchase Invoice', 'Accepted', NULL, NULL, NULL),
(3, 'Purchase Invoice', 'Declined', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_tags`
--

CREATE TABLE `sys_tags` (
  `id` int(11) NOT NULL,
  `text` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_tags`
--

INSERT INTO `sys_tags` (`id`, `text`, `type`) VALUES
(1, 'Pal-Z Paints', 'Expense'),
(2, 'J002141', 'Income'),
(3, 'labor', 'Income'),
(4, 'labor', 'Expense'),
(5, 'TK', 'Contacts');

-- --------------------------------------------------------

--
-- Table structure for table `sys_tasks`
--

CREATE TABLE `sys_tasks` (
  `id` int(11) NOT NULL,
  `title` text,
  `description` text,
  `status` varchar(200) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `oid` int(11) NOT NULL DEFAULT '0',
  `iid` int(11) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `tid` int(11) NOT NULL DEFAULT '0',
  `eid` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `did` int(11) NOT NULL DEFAULT '0',
  `company_id` int(11) NOT NULL DEFAULT '0',
  `subscribers` text,
  `assigned_to` text,
  `priority` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `vtoken` varchar(50) DEFAULT NULL,
  `ptoken` varchar(50) DEFAULT NULL,
  `started` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `stime` varchar(50) DEFAULT NULL,
  `dtime` varchar(50) DEFAULT NULL,
  `time_spent` varchar(50) DEFAULT NULL,
  `date_finished` date DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `flag` int(1) NOT NULL DEFAULT '0',
  `finished` int(1) NOT NULL DEFAULT '0',
  `ratings` varchar(50) DEFAULT NULL,
  `rel_type` varchar(50) DEFAULT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `is_public` int(1) NOT NULL DEFAULT '0',
  `billable` int(1) NOT NULL DEFAULT '0',
  `billed` int(1) NOT NULL DEFAULT '0',
  `hourly_rate` decimal(14,2) NOT NULL DEFAULT '0.00',
  `milestone` int(11) DEFAULT NULL,
  `progress` int(3) DEFAULT NULL,
  `visible_to_client` int(1) NOT NULL DEFAULT '0',
  `notification` int(1) NOT NULL DEFAULT '0',
  `trash` int(1) NOT NULL DEFAULT '0',
  `archived` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_tasks`
--

INSERT INTO `sys_tasks` (`id`, `title`, `description`, `status`, `cid`, `oid`, `iid`, `aid`, `tid`, `eid`, `pid`, `did`, `company_id`, `subscribers`, `assigned_to`, `priority`, `created_at`, `created_by`, `updated_at`, `updated_by`, `vtoken`, `ptoken`, `started`, `due_date`, `stime`, `dtime`, `time_spent`, `date_finished`, `source`, `flag`, `finished`, `ratings`, `rel_type`, `rel_id`, `parent`, `is_public`, `billable`, `billed`, `hourly_rate`, `milestone`, `progress`, `visible_to_client`, `notification`, `trash`, `archived`) VALUES
(86, 'WEEK30', '', 'Not Started', 83, 74, 0, 2, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2020-09-30 08:40:15', NULL, '2020-09-30 08:40:15', NULL, NULL, NULL, '2020-10-28', '2020-10-28', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, '0.00', NULL, NULL, 0, 0, 0, 0),
(87, 'Van - Test', '', 'In Progress', 55, 75, 0, 2, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2020-10-21 16:30:52', NULL, '2020-10-21 16:30:52', NULL, NULL, NULL, '2020-10-21', '2020-10-21', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, '0.00', NULL, NULL, 0, 0, 0, 0),
(88, 'Van - Test', '', 'In Progress', 55, 76, 0, 2, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2020-10-21 16:38:00', NULL, '2020-10-21 16:38:00', NULL, NULL, NULL, '2020-10-21', '2020-10-21', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, '0.00', NULL, NULL, 0, 0, 0, 0),
(89, 'Van - Test', '', 'In Progress', 55, 77, 0, 2, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2020-10-21 16:40:13', NULL, '2020-10-21 16:40:13', NULL, NULL, NULL, '2020-10-21', '2020-10-21', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, '0.00', NULL, NULL, 0, 0, 0, 0),
(90, '2', '', 'In Progress', 64, 78, 0, 2, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2020-10-27 17:55:06', NULL, '2020-10-27 17:55:06', NULL, NULL, NULL, '2020-10-27', '2020-10-27', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, '0.00', NULL, NULL, 0, 0, 0, 0),
(91, '2', '', 'In Progress', 64, 79, 0, 2, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2020-10-27 18:08:40', NULL, '2020-10-27 18:08:40', NULL, NULL, NULL, '2020-10-27', '2020-10-27', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, '0.00', NULL, NULL, 0, 0, 0, 0),
(92, '2', '', 'In Progress', 64, 80, 0, 2, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2020-10-28 16:08:37', NULL, '2020-10-28 16:08:37', NULL, NULL, NULL, '2020-10-28', '2020-10-28', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, '0.00', NULL, NULL, 0, 0, 0, 0),
(93, 'ls600hl', '', 'In Progress', 64, 81, 0, 2, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2020-10-28 16:14:20', NULL, '2020-10-28 16:14:20', NULL, NULL, NULL, '2020-10-28', '2020-10-28', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, '0.00', NULL, NULL, 0, 0, 0, 0),
(94, 'ls600hl', '', 'In Progress', 64, 82, 0, 2, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2020-10-28 16:50:50', NULL, '2020-10-28 16:50:50', NULL, NULL, NULL, '2020-10-28', '2020-10-28', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, '0.00', NULL, NULL, 0, 0, 0, 0),
(95, '12345678', '', 'In Progress', 64, 83, 0, 2, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2020-10-28 16:59:55', NULL, '2020-10-28 16:59:55', NULL, NULL, NULL, '2020-10-28', '2020-10-28', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, '0.00', NULL, NULL, 0, 0, 0, 0),
(96, 'ls600hl', '', 'Not Started', 64, 84, 0, 2, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2020-10-28 17:04:17', NULL, '2020-10-28 17:04:17', NULL, NULL, NULL, '2020-10-28', '2020-10-28', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, '0.00', NULL, NULL, 0, 0, 0, 0),
(97, '2', '', 'In Progress', 64, 85, 0, 2, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2020-10-30 12:17:43', NULL, '2020-10-30 12:17:43', NULL, NULL, NULL, '2020-10-30', '2020-10-30', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, '0.00', NULL, NULL, 0, 0, 0, 0),
(98, '2', '', 'Not Started', 64, 86, 0, 2, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2020-10-30 15:57:22', NULL, '2020-10-30 15:57:22', NULL, NULL, NULL, '2020-10-30', '2020-10-30', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, '0.00', NULL, NULL, 0, 0, 0, 0),
(99, 'ls600hl', '', 'In Progress', 64, 87, 0, 13, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2020-10-30 16:21:27', NULL, '2020-10-30 16:21:27', NULL, NULL, NULL, '2020-10-30', '2020-10-30', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, '0.00', NULL, NULL, 0, 0, 0, 0),
(100, '1111', '', 'In Progress', 64, 88, 0, 2, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2020-10-30 16:21:34', NULL, '2020-10-30 16:21:34', NULL, NULL, NULL, '2020-10-30', '2020-10-30', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, '0.00', NULL, NULL, 0, 0, 0, 0),
(101, '1111', '', 'Not Started', 64, 89, 0, 2, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2020-10-30 16:24:31', NULL, '2020-10-30 16:24:31', NULL, NULL, NULL, '2020-10-30', '2020-10-30', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, '0.00', NULL, NULL, 0, 0, 0, 0),
(102, '2', '', 'Not Started', 64, 90, 0, 2, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2020-11-07 16:50:20', NULL, '2020-11-07 16:50:20', NULL, NULL, NULL, '2020-11-07', '2020-11-07', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, '0.00', NULL, NULL, 0, 0, 0, 0),
(103, '2', '', 'In Progress', 64, 91, 0, 2, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2020-11-08 15:51:13', NULL, '2020-11-08 15:51:13', NULL, NULL, NULL, '2020-11-08', '2020-11-08', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, '0.00', NULL, NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sys_tax`
--

CREATE TABLE `sys_tax` (
  `id` int(10) NOT NULL,
  `name` text,
  `state` text,
  `country` text,
  `rate` decimal(10,2) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `bal` decimal(10,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_default` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_tax`
--

INSERT INTO `sys_tax` (`id`, `name`, `state`, `country`, `rate`, `aid`, `bal`, `created_at`, `updated_at`, `is_default`) VALUES
(1, 'Sales Tax', NULL, NULL, '8.25', NULL, '0.00', '2018-11-21 00:57:47', '2018-11-21 00:57:47', 1),
(3, 'None', NULL, NULL, '0.00', NULL, '0.00', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_ticketdepartments`
--

CREATE TABLE `sys_ticketdepartments` (
  `id` int(11) NOT NULL,
  `dname` varchar(200) DEFAULT NULL,
  `description` text,
  `email` varchar(200) DEFAULT NULL,
  `hidden` int(1) NOT NULL DEFAULT '0',
  `delete_after_import` int(1) NOT NULL DEFAULT '0',
  `host` varchar(200) DEFAULT NULL,
  `port` varchar(50) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `encryption` varchar(100) DEFAULT NULL,
  `calendar_id` varchar(200) DEFAULT NULL,
  `sorder` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_ticketdepartments`
--

INSERT INTO `sys_ticketdepartments` (`id`, `dname`, `description`, `email`, `hidden`, `delete_after_import`, `host`, `port`, `username`, `password`, `encryption`, `calendar_id`, `sorder`, `created_at`, `updated_at`) VALUES
(1, 'Sales', NULL, '', 0, 0, '', '', '', '', 'no', NULL, 1, NULL, NULL),
(2, 'Support', NULL, '', 0, 0, '', '', '', '', 'no', NULL, 1, NULL, NULL),
(3, 'Billing', NULL, '', 0, 0, '', '', '', '', 'no', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_ticketmaillog`
--

CREATE TABLE `sys_ticketmaillog` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `account` varchar(200) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `message` text,
  `status` varchar(100) DEFAULT NULL,
  `attachments` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_ticketpredefinedreplies`
--

CREATE TABLE `sys_ticketpredefinedreplies` (
  `id` int(11) NOT NULL,
  `rname` varchar(200) DEFAULT NULL,
  `reply` text,
  `tags` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `attachments` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_ticketreplies`
--

CREATE TABLE `sys_ticketreplies` (
  `id` int(11) NOT NULL,
  `tid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `account` varchar(200) DEFAULT NULL,
  `reply_type` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `message` text,
  `replied_by` varchar(200) DEFAULT NULL,
  `admin` varchar(100) DEFAULT NULL,
  `attachments` text,
  `client_read` varchar(100) DEFAULT NULL,
  `admin_read` varchar(100) DEFAULT NULL,
  `rating` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_tickets`
--

CREATE TABLE `sys_tickets` (
  `id` int(11) NOT NULL,
  `tid` varchar(100) DEFAULT NULL,
  `did` int(10) DEFAULT NULL,
  `aid` int(10) DEFAULT NULL,
  `pid` int(10) DEFAULT NULL,
  `sid` int(10) DEFAULT NULL,
  `lid` int(10) DEFAULT NULL,
  `oid` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `dname` varchar(100) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `account` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `cc` varchar(200) DEFAULT NULL,
  `bcc` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subject` text,
  `message` text,
  `status` varchar(100) DEFAULT NULL,
  `urgency` varchar(100) DEFAULT NULL,
  `admin` varchar(100) DEFAULT NULL,
  `attachments` text,
  `last_reply` varchar(100) DEFAULT NULL,
  `flag` int(1) DEFAULT NULL,
  `escalated` int(1) DEFAULT NULL,
  `replying` int(1) DEFAULT NULL,
  `is_spam` int(1) DEFAULT NULL,
  `rating` int(2) DEFAULT NULL,
  `client_read` varchar(100) DEFAULT NULL,
  `admin_read` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `ttype` varchar(100) DEFAULT NULL,
  `tstart` varchar(100) DEFAULT NULL,
  `tend` varchar(100) DEFAULT NULL,
  `ttotal` varchar(100) DEFAULT NULL,
  `todo` text,
  `tags` text,
  `notes` text,
  `c1` varchar(255) DEFAULT NULL,
  `c2` varchar(255) DEFAULT NULL,
  `c3` varchar(255) DEFAULT NULL,
  `c4` varchar(255) DEFAULT NULL,
  `c5` text,
  `end_user_id` int(10) UNSIGNED DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_tickets`
--

INSERT INTO `sys_tickets` (`id`, `tid`, `did`, `aid`, `pid`, `sid`, `lid`, `oid`, `company_id`, `dname`, `userid`, `account`, `email`, `cc`, `bcc`, `created_at`, `updated_at`, `subject`, `message`, `status`, `urgency`, `admin`, `attachments`, `last_reply`, `flag`, `escalated`, `replying`, `is_spam`, `rating`, `client_read`, `admin_read`, `source`, `ttype`, `tstart`, `tend`, `ttotal`, `todo`, `tags`, `notes`, `c1`, `c2`, `c3`, `c4`, `c5`, `end_user_id`, `model`) VALUES
(3, 'SPH-89969274', 0, 11, NULL, NULL, NULL, NULL, NULL, '', 57, 'CARZRUS', 'INFO@CARZ4US.COM', NULL, NULL, '2020-07-01 18:34:27', '2020-07-23 10:51:29', '016 range rover hse', '<p>Vehicle is driving rough.&nbsp;</p><p>tail light needs replacement. tail light in-house already.</p>', 'Closed', 'Medium', '0', '', 'CARZRUS', 0, NULL, NULL, 0, NULL, 'No', 'No', 'Web', '', '', '', '', '', '', '<p>Vehicle is driving rough. </p><p>tail light needs replacement. tail light in-house already.</p>', '', '', NULL, NULL, NULL, NULL, NULL),
(4, 'SDA-75829991', 1, 2, NULL, NULL, NULL, NULL, NULL, 'Sales', 60, 'WCGreen_Test', 'admin@autohiveinc.com', NULL, NULL, '2020-07-20 18:58:36', '2020-07-20 18:58:36', 'Test', '<p>test from fez</p>', 'Open', 'Medium', '2', '', 'WCGreen_Test', 0, NULL, NULL, 0, NULL, 'No', 'No', 'Web', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL),
(5, 'YBS-64490326', 3, 3, NULL, NULL, NULL, NULL, NULL, 'Billing', 83, 'AH-FLEET-3', '', NULL, NULL, '2020-08-25 16:24:30', '2020-08-25 16:26:35', 'STATE INSPECTION ', 'TEST TEST TEST&nbsp;', 'Closed', 'Medium', '0', '', 'AH-FLEET-3', 0, NULL, NULL, 0, NULL, 'No', 'No', 'Web', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_tires`
--

CREATE TABLE `sys_tires` (
  `id` int(11) NOT NULL,
  `name` mediumtext NOT NULL,
  `unit` varchar(100) NOT NULL DEFAULT '',
  `sales_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `inventory` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `weight` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `width` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `length` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `height` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `sku` varchar(50) DEFAULT NULL,
  `upc` varchar(50) DEFAULT NULL,
  `ean` varchar(50) DEFAULT NULL,
  `mpn` varchar(50) DEFAULT NULL,
  `isbn` varchar(50) DEFAULT NULL,
  `sid` int(11) NOT NULL DEFAULT '0',
  `supplier` varchar(200) DEFAULT NULL,
  `bid` int(11) NOT NULL DEFAULT '0',
  `brand` varchar(200) DEFAULT NULL,
  `sell_account` int(11) NOT NULL DEFAULT '0',
  `purchase_account` int(11) NOT NULL DEFAULT '0',
  `inventory_account` int(11) NOT NULL DEFAULT '0',
  `taxable` int(1) NOT NULL DEFAULT '0',
  `location` varchar(200) DEFAULT NULL,
  `item_number` varchar(100) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `type` enum('Service','Tire') NOT NULL,
  `track_inventroy` enum('Yes','No') NOT NULL DEFAULT 'No',
  `negative_stock` enum('Yes','No') NOT NULL DEFAULT 'No',
  `available` int(11) NOT NULL DEFAULT '0',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `added` date DEFAULT NULL,
  `last_sold` date DEFAULT NULL,
  `e` mediumtext NOT NULL,
  `sorder` int(11) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `supplier_id` int(11) NOT NULL DEFAULT '0',
  `gname` varchar(100) DEFAULT NULL,
  `product_id` varchar(100) DEFAULT NULL,
  `size` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `expire_days` int(11) NOT NULL DEFAULT '0',
  `image` text,
  `flag` int(1) NOT NULL DEFAULT '0',
  `is_service` int(1) NOT NULL DEFAULT '0',
  `commission_percent` decimal(16,2) NOT NULL DEFAULT '0.00',
  `commission_percent_type` varchar(100) DEFAULT NULL,
  `commission_fixed` decimal(16,2) NOT NULL DEFAULT '0.00',
  `trash` int(1) NOT NULL DEFAULT '0',
  `payterm` varchar(200) DEFAULT NULL,
  `cost_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `unit_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `promo_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `setup` decimal(16,2) NOT NULL DEFAULT '0.00',
  `onetime` decimal(16,2) NOT NULL DEFAULT '0.00',
  `monthly` decimal(16,2) NOT NULL DEFAULT '0.00',
  `monthlysetup` decimal(16,2) NOT NULL DEFAULT '0.00',
  `quarterly` decimal(16,2) NOT NULL DEFAULT '0.00',
  `quarterlysetup` decimal(16,2) NOT NULL DEFAULT '0.00',
  `halfyearly` decimal(16,2) NOT NULL DEFAULT '0.00',
  `halfyearlysetup` decimal(16,2) NOT NULL DEFAULT '0.00',
  `annually` decimal(16,2) NOT NULL DEFAULT '0.00',
  `annuallysetup` decimal(16,2) NOT NULL DEFAULT '0.00',
  `biennially` decimal(16,2) NOT NULL DEFAULT '0.00',
  `bienniallysetup` decimal(16,2) NOT NULL DEFAULT '0.00',
  `triennially` decimal(16,2) NOT NULL DEFAULT '0.00',
  `trienniallysetup` decimal(16,2) NOT NULL DEFAULT '0.00',
  `has_domain` varchar(100) DEFAULT NULL,
  `free_domain` varchar(100) DEFAULT NULL,
  `email_rel` int(11) NOT NULL DEFAULT '0',
  `tags` text,
  `sold_count` decimal(16,4) DEFAULT '0.0000',
  `total_amount` decimal(16,4) DEFAULT '0.0000',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `tax_code` varchar(200) DEFAULT NULL,
  `min_stock` int(11) NOT NULL DEFAULT '0',
  `vin` varchar(200) NOT NULL DEFAULT '',
  `make` varchar(100) NOT NULL DEFAULT '',
  `model` varchar(200) NOT NULL DEFAULT '',
  `profile` varchar(100) NOT NULL DEFAULT '',
  `rim` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_tires`
--

INSERT INTO `sys_tires` (`id`, `name`, `unit`, `sales_price`, `inventory`, `weight`, `width`, `length`, `height`, `sku`, `upc`, `ean`, `mpn`, `isbn`, `sid`, `supplier`, `bid`, `brand`, `sell_account`, `purchase_account`, `inventory_account`, `taxable`, `location`, `item_number`, `description`, `type`, `track_inventroy`, `negative_stock`, `available`, `status`, `added`, `last_sold`, `e`, `sorder`, `gid`, `category_id`, `supplier_id`, `gname`, `product_id`, `size`, `start_date`, `end_date`, `expire_date`, `expire_days`, `image`, `flag`, `is_service`, `commission_percent`, `commission_percent_type`, `commission_fixed`, `trash`, `payterm`, `cost_price`, `unit_price`, `promo_price`, `setup`, `onetime`, `monthly`, `monthlysetup`, `quarterly`, `quarterlysetup`, `halfyearly`, `halfyearlysetup`, `annually`, `annuallysetup`, `biennially`, `bienniallysetup`, `triennially`, `trienniallysetup`, `has_domain`, `free_domain`, `email_rel`, `tags`, `sold_count`, `total_amount`, `created_at`, `updated_at`, `tax_code`, `min_stock`, `vin`, `make`, `model`, `profile`, `rim`) VALUES
(1, 'Training - Tires - 1', '', '89.00', '8.0000', '0.0000', '75.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, '0001', '', 'Tire', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '82.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 4, '', '', '', '10', '5'),
(2, 'Training - Tire - 02', '', '500.00', '3.0000', '0.0000', '275.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, '0002', '', 'Tire', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '250.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 2, '', '', '', '60', 'R20'),
(3, 'LT225/75R16', '', '121.00', '2.0000', '0.0000', '75.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, 'SAIL-5542792', '', 'Tire', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, 0, '0.00', NULL, '0.00', 0, NULL, '76.36', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, '0.0000', '0.0000', NULL, NULL, '', 0, '', '', '', '', '16');

-- --------------------------------------------------------

--
-- Table structure for table `sys_transactions`
--

CREATE TABLE `sys_transactions` (
  `id` int(11) NOT NULL,
  `account` varchar(200) NOT NULL,
  `account_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(200) DEFAULT NULL,
  `sub_type` varchar(200) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `payer` varchar(200) DEFAULT NULL,
  `payee` varchar(200) DEFAULT NULL,
  `payerid` int(11) NOT NULL DEFAULT '0',
  `payeeid` int(11) NOT NULL DEFAULT '0',
  `method` varchar(200) DEFAULT NULL,
  `ref` varchar(200) DEFAULT NULL,
  `status` enum('Cleared','Uncleared','Reconciled','Void') NOT NULL DEFAULT 'Cleared',
  `description` text,
  `tags` text,
  `tax` decimal(18,2) NOT NULL DEFAULT '0.00',
  `date` date DEFAULT NULL,
  `dr` decimal(18,2) NOT NULL DEFAULT '0.00',
  `cr` decimal(18,2) NOT NULL DEFAULT '0.00',
  `bal` decimal(18,2) NOT NULL DEFAULT '0.00',
  `iid` int(11) NOT NULL DEFAULT '0',
  `currency_iso_code` char(3) DEFAULT NULL,
  `currency` int(11) NOT NULL DEFAULT '0',
  `currency_symbol` varchar(10) DEFAULT NULL,
  `currency_prefix` varchar(10) DEFAULT NULL,
  `currency_suffix` varchar(10) DEFAULT NULL,
  `currency_rate` decimal(11,4) NOT NULL DEFAULT '1.0000',
  `base_amount` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `company_id` int(11) NOT NULL DEFAULT '0',
  `vid` int(11) NOT NULL DEFAULT '0',
  `aid` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `attachments` text,
  `source` varchar(200) DEFAULT NULL,
  `rid` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `archived` int(1) NOT NULL DEFAULT '0',
  `trash` int(1) NOT NULL DEFAULT '0',
  `flag` int(1) NOT NULL DEFAULT '0',
  `comments` text,
  `c1` text,
  `c2` text,
  `c3` text,
  `c4` text,
  `c5` text,
  `purchase_id` int(11) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_transactions`
--

INSERT INTO `sys_transactions` (`id`, `account`, `account_id`, `type`, `sub_type`, `cat_id`, `category`, `amount`, `payer`, `payee`, `payerid`, `payeeid`, `method`, `ref`, `status`, `description`, `tags`, `tax`, `date`, `dr`, `cr`, `bal`, `iid`, `currency_iso_code`, `currency`, `currency_symbol`, `currency_prefix`, `currency_suffix`, `currency_rate`, `base_amount`, `company_id`, `vid`, `aid`, `staff_id`, `created_at`, `updated_at`, `updated_by`, `attachments`, `source`, `rid`, `pid`, `archived`, `trash`, `flag`, `comments`, `c1`, `c2`, `c3`, `c4`, `c5`, `purchase_id`, `code`) VALUES
(1, 'Parts Costs ', 42, 'Expense', '', 74, 'Parts', '185.95', '', '', 0, 43, 'Debit', '', 'Cleared', '0010OJ0645', '', '0.00', '2020-04-20', '185.95', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 67623635, 1, 1, NULL, '2020-06-30 12:13:36', 0, '_ad067202681132159353293610108679.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00003'),
(2, 'Parts Costs ', 42, 'Expense', '', 74, 'Parts', '5.99', '', '', 0, 43, 'Debit', '', 'Cleared', '0010OJ0171', '', '0.00', '2020-04-18', '5.99', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 39751070, 1, 1, NULL, '2020-06-30 12:13:06', 0, '_3a61ed71708631159353320210295689.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00004'),
(3, 'Parts Costs ', 42, 'Expense', '', 74, 'Parts', '18.21', '', '', 0, 43, 'Credit Card', '1234', 'Cleared', '0010019998', '', '0.00', '2020-04-18', '18.21', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 50416380, 3, 3, NULL, '2020-06-30 13:16:45', 0, '', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00005'),
(4, 'Parts Costs ', 42, 'Expense', '', 74, 'Parts', '510.00', '', '', 0, 0, 'Cash', '', 'Cleared', 'WINDSHIELD', '', '0.00', '2020-07-01', '510.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 5, 33446518, 1, 1, NULL, '2020-07-01 11:48:37', 0, '', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00006'),
(6, 'Parts Sales', 37, 'Expense', '', 72, 'Paint', '24.00', '', '', 0, 51, 'Check', '', 'Cleared', '650287', '', '0.00', '2020-07-02', '24.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 0, 83450685, 1, 1, NULL, '2020-07-08 13:03:15', 0, '_3341f6f0910344159370977810729919.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00007'),
(7, 'Repair and Maintenance', 53, 'Expense', '', 77, 'Repairs & Maintenance', '500.00', '', '', 0, 0, 'Cash', '', 'Cleared', 'LIFT REPAIR', '', '0.00', '2020-07-02', '500.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 7, 6768860, 3, 0, NULL, '2020-07-02 17:29:10', 0, '_ea50fb37191904159372532710311668.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00008'),
(8, 'Checking Account', 1, 'Income', NULL, 79, 'Labor Income', '1500.00', '', '', 50, 0, 'Credit Card', '09500C', 'Cleared', 'AH MOBILE FLEET PAY', '', '0.00', '2020-07-02', '0.00', '1500.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 1, 40853891, 3, 3, NULL, '2020-07-02 17:35:47', 0, '', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INC-00001'),
(9, 'Checking Account', 1, 'Income', NULL, 79, 'Labor Income', '421.44', '', '', 50, 0, 'Credit Card', 'J002126', 'Cleared', 'INVOICE J0021265', '', '0.00', '2020-07-02', '0.00', '421.44', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 1, 93261920, 3, 3, NULL, '2020-07-02 17:44:31', 0, '', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INC-00002'),
(10, 'Checking Account', 1, 'Income', NULL, 79, 'Labor Income', '421.44', '', '', 50, 0, 'Credit Card', 'J002126', 'Cleared', 'INVOICE J002126', '', '0.00', '2020-07-02', '0.00', '421.44', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 1, 50041572, 3, 3, NULL, '2020-07-02 17:42:34', 0, '', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INC-00003'),
(11, 'Outside Services/independent contractors', 75, 'Expense', '', 18, 'Contract Labor', '700.00', '', '', 0, 51, 'Check', '7877', 'Cleared', 'CHECK #7877', '', '0.00', '2020-07-03', '700.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 0, 58325476, 1, 4, NULL, '2020-07-03 12:09:08', 0, '', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00009'),
(12, 'Checking Account', 1, 'Income', NULL, 79, 'Labor Income', '1800.00', '', '', 50, 0, 'Credit Card', '4TH WEEK OF JUNE 2020', 'Cleared', 'FLEET LABOUR', 'J002141', '0.00', '2020-07-03', '0.00', '1800.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 1, 84627381, 3, 3, NULL, '2020-07-03 14:48:36', 0, '', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INC-00004'),
(13, 'Checking Account', 1, 'Income', NULL, 79, 'Labor Income', '1800.00', '', '', 50, 0, 'Credit Card', 'FLEET1 4TH WEEK OF JUNE 2020', 'Cleared', 'FLEET LABOUR', '', '0.00', '2020-07-03', '0.00', '1800.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 1, 29523906, 3, 3, NULL, '2020-07-03 14:49:43', 0, '', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INC-00005'),
(14, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '193.00', 'AUTO SELECTION /MIKE', '', 59, 0, 'Cash', '', 'Cleared', '2010 nissan altima', '', '0.00', '2020-07-03', '0.00', '193.00', '0.00', 27, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 39468212, 3, NULL, NULL, '2020-07-03 17:52:44', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '424.99', 'AUTO SELECTION /MIKE', '', 59, 0, 'Cash', '', 'Cleared', 'Invoice 38 Payment', '', '0.00', '2020-07-03', '0.00', '424.99', '0.00', 38, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 31640143, 3, NULL, NULL, '2020-07-03 18:04:14', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '500.00', 'AUTO SELECTION /MIKE', '', 59, 0, 'Cash', '', 'Cleared', '2009 TOYOTA CAMRY', '', '0.00', '2020-07-03', '0.00', '500.00', '0.00', 36, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 28303476, 3, NULL, NULL, '2020-07-03 18:05:06', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '124.67', 'AUTO SELECTION /MIKE', '', 59, 0, 'Cash', '', 'Cleared', 'Invoice 35 Payment', '', '0.00', '2020-07-03', '0.00', '124.67', '0.00', 35, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 92705087, 3, NULL, NULL, '2020-07-03 18:05:35', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '286.65', 'AUTO SELECTION /MIKE', '', 59, 0, 'Cash', '', 'Cleared', 'Invoice 34 Payment', '', '0.00', '2020-07-03', '0.00', '286.65', '0.00', 34, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 20403164, 3, NULL, NULL, '2020-07-03 18:06:03', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '108.14', 'AUTO SELECTION /MIKE', '', 59, 0, 'Cash', '', 'Cleared', 'Invoice 33 Payment', '', '0.00', '2020-07-03', '0.00', '108.14', '0.00', 33, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 82644105, 3, NULL, NULL, '2020-07-03 18:06:27', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '85.00', 'AUTO SELECTION /MIKE', '', 59, 0, 'Cash', '', 'Cleared', 'Invoice 32 Payment', '', '0.00', '2020-07-03', '0.00', '85.00', '0.00', 32, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 40620346, 3, NULL, NULL, '2020-07-03 18:06:51', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '393.08', 'AUTO SELECTION /MIKE', '', 59, 0, 'Cash', '', 'Cleared', 'Invoice 31 Payment', '', '0.00', '2020-07-03', '0.00', '393.08', '0.00', 31, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 58489462, 3, NULL, NULL, '2020-07-03 18:07:18', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '525.85', 'AUTO SELECTION /MIKE', '', 59, 0, 'Cash', '', 'Cleared', 'Invoice 30 Payment', '', '0.00', '2020-07-03', '0.00', '525.85', '0.00', 30, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 23665570, 3, NULL, NULL, '2020-07-03 18:07:48', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '200.00', 'AUTO SELECTION /MIKE', '', 59, 0, 'Cash', '', 'Cleared', 'Invoice 28 Payment', '', '0.00', '2020-07-03', '0.00', '200.00', '0.00', 28, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 147682, 3, NULL, NULL, '2020-07-03 18:08:13', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '246.50', 'AUTO SELECTION /MIKE', '', 59, 0, 'Cash', '', 'Cleared', 'Invoice 29 Payment', '', '0.00', '2020-07-03', '0.00', '246.50', '0.00', 29, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 63789456, 3, NULL, NULL, '2020-07-03 18:08:35', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '417.54', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 11 Payment', '', '0.00', '2020-07-05', '0.00', '417.54', '0.00', 11, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 65219732, 3, NULL, NULL, '2020-07-05 17:50:47', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '248.46', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 12 Payment', '', '0.00', '2020-07-05', '0.00', '248.46', '0.00', 12, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 48648374, 3, NULL, NULL, '2020-07-05 17:51:25', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '498.31', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'invoice', '', '0.00', '2020-07-05', '0.00', '498.31', '0.00', 21, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 15059884, 3, NULL, NULL, '2020-07-05 17:52:24', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '480.42', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 22 Payment', '', '0.00', '2020-07-05', '0.00', '480.42', '0.00', 22, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 46152316, 3, NULL, NULL, '2020-07-05 17:52:52', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '536.40', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 37 Payment', '', '0.00', '2020-07-05', '0.00', '536.40', '0.00', 37, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 3721664, 3, NULL, NULL, '2020-07-05 17:53:20', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '450.00', 'HONEYWELL', '', 61, 0, 'Check', '', 'Cleared', 'CHECK NO-13838', '', '0.00', '2020-07-06', '0.00', '450.00', '0.00', 39, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 78874091, 3, NULL, NULL, '2020-07-06 13:33:03', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '250.00', 'HONEYWELL', '', 61, 0, 'Check', '', 'Cleared', 'CHECK NO -13838', '', '0.00', '2020-07-06', '0.00', '250.00', '0.00', 40, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 61239785, 3, NULL, NULL, '2020-07-06 13:36:03', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '312.72', 'HONEYWELL', '', 61, 0, 'Check', '', 'Cleared', 'CHECK NO 13838', '', '0.00', '2020-07-06', '0.00', '312.72', '0.00', 41, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 50381835, 3, NULL, NULL, '2020-07-06 13:38:59', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '150.00', 'HONEYWELL', '', 61, 0, 'Check', '', 'Cleared', 'CHECK NO--13838', '', '0.00', '2020-07-06', '0.00', '150.00', '0.00', 42, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 81905795, 3, NULL, NULL, '2020-07-06 13:43:32', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '965.00', 'KHAN GUFRAN', '', 62, 0, 'Check', '', 'Cleared', 'Invoice 43 Payment', '', '0.00', '2020-07-06', '0.00', '965.00', '0.00', 43, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 79229360, 3, NULL, NULL, '2020-07-06 15:40:33', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '860.59', 'Dr. William Green', '', 54, 0, 'Credit Card', '', 'Cleared', 'Invoice 7 Payment', '', '0.00', '2020-07-07', '0.00', '860.59', '0.00', 7, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 54699631, 3, NULL, NULL, '2020-07-07 17:34:00', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '235.94', 'Dr. William Green', '', 54, 0, 'Credit Card', '', 'Cleared', 'Invoice 8 Payment', '', '0.00', '2020-07-07', '0.00', '235.94', '0.00', 8, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 78694131, 3, NULL, NULL, '2020-07-07 17:34:32', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '312.33', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 10 Payment', '', '0.00', '2020-07-08', '0.00', '312.33', '0.00', 10, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 36265343, 3, NULL, NULL, '2020-07-08 11:53:12', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '794.22', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 60 Payment', '', '0.00', '2020-07-08', '0.00', '794.22', '0.00', 60, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 64655795, 3, NULL, NULL, '2020-07-08 11:54:09', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '538.03', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 59 Payment', '', '0.00', '2020-07-08', '0.00', '538.03', '0.00', 59, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 16785237, 3, NULL, NULL, '2020-07-08 11:54:42', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '169.62', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 58 Payment', '', '0.00', '2020-07-08', '0.00', '169.62', '0.00', 58, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 92617333, 3, NULL, NULL, '2020-07-08 11:55:10', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '410.19', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 56 Payment', '', '0.00', '2020-07-08', '0.00', '410.19', '0.00', 56, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 61223161, 3, NULL, NULL, '2020-07-08 11:55:46', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '167.56', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 55 Payment', '', '0.00', '2020-07-08', '0.00', '167.56', '0.00', 55, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 777169, 3, NULL, NULL, '2020-07-08 11:56:52', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '312.33', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 9 Payment', '', '0.00', '2020-07-08', '0.00', '312.33', '0.00', 9, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 22615558, 3, NULL, NULL, '2020-07-08 11:57:30', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'Parts Sales', 37, 'Expense', '', 74, 'Parts', '258.39', '', '', 0, 51, 'Credit Card', '', 'Cleared', '84946494', '', '0.00', '2020-07-07', '258.39', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 49, 5687972, 1, 1, NULL, '2020-07-08 13:22:50', 0, '_3546ab44818617159422790711022264.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00010'),
(45, 'Uniforms', 67, 'Expense', '', 76, 'Uncategorized', '410.70', '', '', 0, 51, 'Credit Card', '', 'Cleared', '4053368526', '', '0.00', '2020-06-17', '410.70', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 52, 26455464, 1, 1, NULL, '2020-07-08 13:29:25', 0, '_2835acf1516377159422919410396272.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00011'),
(46, 'Uniforms', 67, 'Expense', '', 76, 'Uncategorized', '295.16', '', '', 0, 51, 'Credit Card', '', 'Cleared', '4052847977', '', '0.00', '2020-06-10', '295.16', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 52, 24642236, 1, 1, NULL, '2020-07-08 13:37:16', 0, '', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00012'),
(47, 'Uniforms', 67, 'Expense', '', 76, 'Uncategorized', '209.85', '', '', 0, 51, 'Credit Card', '', 'Cleared', '4052135548', '', '0.00', '2020-06-03', '209.85', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 52, 56988736, 1, 1, NULL, '2020-07-08 13:41:33', 0, '_1f74a54f86584515942300561033533.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00013'),
(48, 'Parts Sales', 37, 'Expense', '', 76, 'Uncategorized', '90.00', '', '', 0, 51, 'Check', 'CHECK #7899', 'Cleared', 'upholstery 1695', '', '0.00', '2020-07-07', '90.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 53, 25201688, 1, 1, NULL, '2020-07-08 13:47:08', 0, '_252a3dba350695159423042310922023.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00014'),
(49, 'Parts Sales', 37, 'Expense', '', 74, 'Parts', '185.76', '', '', 0, 51, 'Credit Card', '', 'Cleared', '757030', '', '0.00', '2020-07-08', '185.76', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 43, 29644563, 1, 1, NULL, '2020-07-08 15:01:33', 0, '', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00015'),
(50, 'Parts Sales', 37, 'Expense', '', 74, 'Parts', '102.75', '', '', 0, 51, 'Credit Card', '', 'Cleared', '757061', '', '0.00', '2020-07-07', '102.75', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 43, 28960386, 1, 1, NULL, '2020-07-08 15:04:44', 0, '_376c6b9f708312159423504310725896.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00016'),
(51, 'Parts Sales', 37, 'Expense', '', 74, 'Parts', '47.79', '', '', 0, 51, 'Credit Card', '', 'Cleared', '0010OP4827', '', '0.00', '2020-07-08', '47.79', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 18000796, 1, 1, NULL, '2020-07-08 15:13:00', 0, '_9bdb8b1f481706159423522810037899.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00017'),
(52, 'Parts Sales', 37, 'Expense', '', 74, 'Parts', '86.13', '', '', 0, 51, 'Credit Card', '', 'Cleared', '84926160', '', '0.00', '2020-07-07', '86.13', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 49, 34027542, 1, 1, NULL, '2020-07-08 15:18:57', 0, '_e894d787434885159423585010072675.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00018'),
(53, 'Parts Sales', 37, 'Expense', '', 72, 'Paint', '67.00', '', '', 0, 51, 'Credit Card', '', 'Cleared', '651742', '', '0.00', '2020-07-07', '67.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 13, 15916175, 1, 1, NULL, '2020-07-08 15:21:46', 0, '_62176515946326159423610411041268.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00019'),
(54, 'Parts Sales', 37, 'Expense', '', 74, 'Parts', '51.88', '', '', 0, 51, 'Credit Card', '', 'Cleared', '0010OP5524', '', '0.00', '2020-07-07', '51.88', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 37845766, 1, 1, NULL, '2020-07-08 15:24:28', 0, '_78679495718853159423625510393022.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00020'),
(55, 'Parts Sales', 37, 'Expense', '', 74, 'Parts', '61.92', '', '', 0, 51, 'Credit Card', '', 'Cleared', '0010OP4855', '', '0.00', '2020-07-08', '61.92', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 32328638, 1, 1, NULL, '2020-07-08 15:27:28', 0, '_b05bf587634846159423637710091446.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00021'),
(56, 'Parts Sales', 37, 'Expense', '', 74, 'Parts', '61.92', '', '', 0, 51, 'Credit Card', '', 'Cleared', '0010OP4882', '', '0.00', '2020-07-07', '61.92', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 11775369, 1, 0, NULL, '2020-07-08 15:30:34', 0, '_b2ab0019539159159423660911054209.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00022'),
(57, 'Parts Sales', 37, 'Expense', '', 74, 'Parts', '14.87', '', '', 0, 51, 'Credit Card', '', 'Cleared', '0010OP4780', '', '0.00', '2020-07-07', '14.87', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 48491669, 1, 1, NULL, '2020-07-08 15:32:57', 0, '_54e36c5f133176159423675010507623.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00023'),
(58, 'Parts Sales', 37, 'Expense', '', 74, 'Parts', '53.60', '', '', 0, 51, 'Credit Card', '', 'Cleared', '545037', '', '0.00', '2020-07-07', '53.60', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 34, 1889465, 1, 1, NULL, '2020-07-08 15:34:42', 0, '_1dba5eed941627159423685610309475.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00024'),
(59, 'Parts Sales', 37, 'Expense', '', 74, 'Parts', '31.24', '', '', 0, 51, 'Credit Card', '', 'Cleared', '84897772', '', '0.00', '2020-07-07', '31.24', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 49, 97729735, 1, 1, NULL, '2020-07-08 15:36:48', 0, '_ae816a80012805159423700510237032.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00025'),
(60, 'Parts Sales', 37, 'Expense', '', 74, 'Parts', '3.99', '', '', 0, 51, 'Credit Card', '', 'Cleared', '0010OP4615', '', '0.00', '2020-07-07', '3.99', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 84684237, 1, 1, NULL, '2020-07-08 15:42:13', 0, '_819c9fbf163820159423732010174583.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00026'),
(61, 'Parts Sales', 37, 'Expense', '', 74, 'Parts', '1099.54', '', '', 0, 51, 'Credit Card', '', 'Cleared', '9047438388', '', '0.00', '2020-07-01', '1099.54', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 54, 55727069, 1, 1, NULL, '2020-07-08 15:58:39', 0, '_281683d0380849159423828710659759.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00027'),
(62, 'Parts Sales', 37, 'Expense', '', 74, 'Parts', '199.98', '', '', 0, 51, '', '', 'Cleared', '4436', '', '0.00', '2020-07-06', '199.98', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 55, 47611660, 1, 1, NULL, '2020-07-08 16:02:53', 0, '_8169e05e352754159423848610627606.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00028'),
(63, 'Parts Sales', 37, 'Expense', '', 72, 'Paint', '717.66', '', '', 0, 51, 'Check', '', 'Cleared', '81134-0021', '', '0.00', '2020-07-08', '717.66', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 39, 65242855, 1, 1, NULL, '2020-07-09 11:42:37', 0, '_39dcaf7a64102615943093151071145.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00029'),
(64, 'Parts Sales', 37, 'Expense', '', 74, 'Parts', '31.40', '', '', 0, 51, 'Credit Card', '', 'Cleared', '826499', '', '0.00', '2020-07-08', '31.40', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 29, 58113274, 1, 1, NULL, '2020-07-09 11:46:10', 0, '', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00030'),
(65, 'Parts Sales', 37, 'Expense', '', 74, 'Parts', '1503.85', '', '', 0, 51, 'Credit Card', '', 'Cleared', '9047652774', '', '0.00', '2020-07-08', '1503.85', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 56, 66117960, 1, 1, NULL, '2020-07-09 12:25:36', 0, '_a18aa23e262558159431189110577754.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00031'),
(66, 'Parts Sales', 37, 'Expense', '', 74, 'Parts', '375.00', '', '', 0, 51, 'Check', '', 'Cleared', '4414', '', '0.00', '2020-07-02', '375.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 55, 49937780, 1, 1, NULL, '2020-07-09 12:31:32', 0, '_cd63a3ee088028159431209410463200.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00032'),
(67, 'Parts Sales', 37, 'Expense', '', 74, 'Parts', '98.00', '', '', 0, 51, 'Check', '', 'Cleared', '200708152816', '', '0.00', '2020-07-08', '98.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 19, 74482261, 1, 1, NULL, '2020-07-09 12:34:48', 0, '_1145a30f40060615943124551102250.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00033'),
(68, 'Utilities - Electricity', 50, 'Expense', '', 45, 'Utilities', '550.76', '', '', 0, 51, 'Credit Card', '', 'Cleared', '07012020', '', '0.00', '2020-07-09', '550.76', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 57, 34597021, 1, 1, NULL, '2020-07-09 12:40:48', 0, '_0a7d83f0627412159431281711114334.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00034'),
(69, 'Parts Sales', 37, 'Expense', '', 74, 'Parts', '165.60', '', '', 0, 51, 'Credit Card', '', 'Cleared', '0301CG6837', '', '0.00', '2020-07-01', '165.60', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 80843959, 1, 1, NULL, '2020-07-09 12:44:19', 0, '_a87d27f7436098159431302210875316.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00035'),
(70, 'Parts Sales', 37, 'Expense', '', 74, 'Parts', '138.00', '', '', 0, 51, 'Credit Card', '', 'Cleared', '12200702-210', '', '0.00', '2020-07-02', '138.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 22, 21087414, 1, 1, NULL, '2020-07-09 12:49:42', 0, '_fc4ddc15721120159431333011085678.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00036'),
(71, 'Parts Sales', 37, 'Expense', '', 74, 'Parts', '149.00', '', '', 0, 51, 'Credit Card', '', 'Cleared', '12200702-208', '', '0.00', '2020-07-02', '149.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 22, 53917474, 1, 1, NULL, '2020-07-09 12:57:48', 0, '_5531a583454369159431366410714862.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00037'),
(72, 'Parts Sales', 37, 'Expense', '', 74, 'Parts', '99.00', '', '', 0, 51, 'Credit Card', '', 'Cleared', '12200702-032', '', '0.00', '2020-07-02', '99.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 22, 87907326, 1, 1, NULL, '2020-07-09 13:00:24', 0, '_9d741ec3458971159431398510525182.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00038'),
(73, 'Parts Sales', 37, 'Expense', '', 74, 'Parts', '329.98', '', '', 0, 51, 'Credit Card', '', 'Cleared', '0010OP2584', '', '0.00', '2020-07-03', '329.98', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 27032738, 1, 1, NULL, '2020-07-09 13:02:53', 0, '_68897f19223504159431414410158026.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00039'),
(74, 'Parts Sales', 37, 'Expense', '', 72, 'Paint', '110.00', '', '', 0, 51, 'Check', '', 'Cleared', '81029-0021', '', '0.00', '2020-07-03', '110.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 39, 8261754, 1, 1, NULL, '2020-07-09 13:05:07', 0, '_962e56a8839828159431427910933045.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00040'),
(75, 'Parts Sales', 37, 'Expense', '', 74, 'Parts', '99.95', '', '', 0, 51, 'Credit Card', '', 'Cleared', '0010OP1674', '', '0.00', '2020-07-02', '99.95', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 10312839, 1, 1, NULL, '2020-07-09 13:55:32', 0, '_a0161022639408159431731010477894.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00041'),
(76, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '185.84', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 62 Payment', '', '0.00', '2020-07-10', '0.00', '185.84', '0.00', 62, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 21503347, 3, NULL, NULL, '2020-07-10 16:38:06', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '814.04', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 66 Payment', '', '0.00', '2020-07-10', '0.00', '814.04', '0.00', 66, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 67322443, 3, NULL, NULL, '2020-07-10 16:38:38', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '650.00', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 65 Payment', '', '0.00', '2020-07-10', '0.00', '650.00', '0.00', 65, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 52001647, 3, NULL, NULL, '2020-07-10 16:39:11', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '380.38', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 64 Payment', '', '0.00', '2020-07-10', '0.00', '380.38', '0.00', 64, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 43441629, 3, NULL, NULL, '2020-07-10 16:39:38', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '5063.98', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 63 Payment', '', '0.00', '2020-07-10', '0.00', '5063.98', '0.00', 63, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 74509218, 3, NULL, NULL, '2020-07-10 16:40:18', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '120.00', 'CARZRUS', '', 57, 0, 'Credit Card', '', 'Cleared', 'Invoice 82 Payment', '', '0.00', '2020-07-20', '0.00', '120.00', '0.00', 82, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 70465747, 3, NULL, NULL, '2020-07-20 16:58:55', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '501.98', 'CARZRUS', '', 57, 0, 'Credit Card', '', 'Cleared', 'Invoice 81 Payment', '', '0.00', '2020-07-20', '0.00', '501.98', '0.00', 81, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 28070047, 3, NULL, NULL, '2020-07-20 16:59:39', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '85.00', 'CARZRUS', '', 57, 0, 'Credit Card', '', 'Cleared', 'Invoice 79 Payment', '', '0.00', '2020-07-20', '0.00', '85.00', '0.00', 79, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 52762033, 3, NULL, NULL, '2020-07-20 17:00:13', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '65.00', 'CARZRUS', '', 57, 0, 'Credit Card', '', 'Cleared', 'Invoice 78 Payment', '', '0.00', '2020-07-20', '0.00', '65.00', '0.00', 78, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 95214842, 3, NULL, NULL, '2020-07-20 17:00:57', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '584.37', 'CARZRUS', '', 57, 0, 'Credit Card', '', 'Cleared', 'Invoice 61 Payment', '', '0.00', '2020-07-20', '0.00', '584.37', '0.00', 61, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 32016121, 3, NULL, NULL, '2020-07-20 17:01:46', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '126.00', 'CARZRUS', '', 57, 0, 'Credit Card', '', 'Cleared', 'Invoice 53 Payment', '', '0.00', '2020-07-20', '0.00', '126.00', '0.00', 53, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 47869517, 3, NULL, NULL, '2020-07-20 17:02:27', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '149.83', 'CARZRUS', '', 57, 0, 'Credit Card', '', 'Cleared', 'Invoice 26 Payment', '', '0.00', '2020-07-20', '0.00', '149.83', '0.00', 26, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 90813606, 3, NULL, NULL, '2020-07-20 17:03:15', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '139.62', 'CARZRUS', '', 57, 0, 'Credit Card', '', 'Cleared', 'Invoice 25 Payment', '', '0.00', '2020-07-20', '0.00', '139.62', '0.00', 25, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 59584575, 3, NULL, NULL, '2020-07-20 17:04:01', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '980.83', 'CARZRUS', '', 57, 0, 'Credit Card', '', 'Cleared', 'Invoice 24 Payment', '', '0.00', '2020-07-20', '0.00', '980.83', '0.00', 24, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 65704706, 3, NULL, NULL, '2020-07-20 17:04:48', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '306.33', 'CARZRUS', '', 57, 0, 'Credit Card', '', 'Cleared', 'Invoice 23 Payment', '', '0.00', '2020-07-20', '0.00', '306.33', '0.00', 23, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 84070020, 3, NULL, NULL, '2020-07-20 17:05:37', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '300.00', 'CARZRUS', '', 57, 0, 'Credit Card', '', 'Cleared', 'Invoice 20 Payment', '', '0.00', '2020-07-20', '0.00', '300.00', '0.00', 20, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 85587724, 3, NULL, NULL, '2020-07-20 17:06:13', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '61.86', 'CARZRUS', '', 57, 0, 'Credit Card', '', 'Cleared', 'Invoice 19 Payment', '', '0.00', '2020-07-20', '0.00', '61.86', '0.00', 19, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 46341275, 3, NULL, NULL, '2020-07-20 17:07:24', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '59.00', 'CARZRUS', '', 57, 0, 'Credit Card', '', 'Cleared', 'Invoice 18 Payment', '', '0.00', '2020-07-20', '0.00', '59.00', '0.00', 18, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 50786697, 3, NULL, NULL, '2020-07-20 17:08:26', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '42.00', 'CARZRUS', '', 57, 0, 'Credit Card', '', 'Cleared', 'Invoice 17 Payment', '', '0.00', '2020-07-20', '0.00', '42.00', '0.00', 17, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 63781463, 3, NULL, NULL, '2020-07-20 17:09:05', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '350.00', 'CARZRUS', '', 57, 0, 'Credit Card', '', 'Cleared', 'Invoice 16 Payment', '', '0.00', '2020-07-20', '0.00', '350.00', '0.00', 16, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 93006842, 3, NULL, NULL, '2020-07-20 17:09:46', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '800.00', 'CARZRUS', '', 57, 0, 'Credit Card', '', 'Cleared', 'Invoice 15 Payment', '', '0.00', '2020-07-20', '0.00', '800.00', '0.00', 15, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 30288200, 3, NULL, NULL, '2020-07-20 17:10:19', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '62.89', 'CARZRUS', '', 57, 0, 'Credit Card', '', 'Cleared', 'Invoice 14 Payment', '', '0.00', '2020-07-20', '0.00', '62.89', '0.00', 14, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 25540087, 3, NULL, NULL, '2020-07-20 17:10:53', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '250.00', 'CARZRUS', '', 57, 0, 'Credit Card', '', 'Cleared', 'Invoice 13 Payment', '', '0.00', '2020-07-20', '0.00', '250.00', '0.00', 13, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 10452969, 3, NULL, NULL, '2020-07-20 17:11:24', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '875.24', 'CARZRUS', '', 57, 0, 'Credit Card', '', 'Cleared', 'Invoice 57 Payment', '', '0.00', '2020-07-20', '0.00', '875.24', '0.00', 57, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 235648, 3, NULL, NULL, '2020-07-20 17:12:16', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '814.04', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 66 Payment', '', '0.00', '2020-07-22', '0.00', '814.04', '0.00', 66, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 46728434, 3, NULL, NULL, '2020-07-22 18:43:39', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '877.98', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 72 Payment', '', '0.00', '2020-07-22', '0.00', '877.98', '0.00', 72, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 25168536, 3, NULL, NULL, '2020-07-22 18:44:10', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '670.00', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 71 Payment', '', '0.00', '2020-07-22', '0.00', '670.00', '0.00', 71, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 98111400, 3, NULL, NULL, '2020-07-22 18:45:04', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '120.00', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 73 Payment', '', '0.00', '2020-07-22', '0.00', '120.00', '0.00', 73, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 75398159, 3, NULL, NULL, '2020-07-22 18:45:26', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '544.49', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 100 Payment', '', '0.00', '2020-07-22', '0.00', '544.49', '0.00', 100, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 74101561, 3, NULL, NULL, '2020-07-22 18:45:49', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '138.66', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 90 Payment', '', '0.00', '2020-07-22', '0.00', '138.66', '0.00', 90, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 73096268, 3, NULL, NULL, '2020-07-22 18:46:13', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '193.24', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 95 Payment', '', '0.00', '2020-07-22', '0.00', '193.24', '0.00', 95, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 13444935, 3, NULL, NULL, '2020-07-22 18:46:36', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '412.43', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 101 Payment', '', '0.00', '2020-07-22', '0.00', '412.43', '0.00', 101, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 72298924, 3, NULL, NULL, '2020-07-22 18:46:56', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '292.26', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 102 Payment', '', '0.00', '2020-07-22', '0.00', '292.26', '0.00', 102, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 81926651, 3, NULL, NULL, '2020-07-22 18:47:16', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '701.96', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 103 Payment', '', '0.00', '2020-07-22', '0.00', '701.96', '0.00', 103, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 2355003, 3, NULL, NULL, '2020-07-22 18:47:39', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '170.00', 'Dr. William Green', '', 54, 0, 'Credit Card', '', 'Cleared', 'Invoice 84 Payment', '', '0.00', '2020-07-24', '0.00', '170.00', '0.00', 84, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 55069039, 3, NULL, NULL, '2020-07-24 16:48:15', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '623.93', 'Dr. William Green', '', 54, 0, 'Credit Card', '', 'Cleared', 'Invoice 98 Payment', '', '0.00', '2020-07-24', '0.00', '623.93', '0.00', 98, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 90582545, 3, NULL, NULL, '2020-07-24 16:48:44', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'Checking Account', 1, 'Income', NULL, NULL, 'Shop Supplies Income', '281.66', 'Dr. William Green', '', 54, 0, 'Credit Card', '', 'Cleared', 'Invoice 104 Payment', '', '0.00', '2020-07-24', '0.00', '281.66', '0.00', 104, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 5197429, 3, NULL, NULL, '2020-07-24 16:49:13', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '623.93', 'Dr. William Green', '', 54, 0, 'Credit Card', '', 'Cleared', 'Invoice 85 Payment', '', '0.00', '2020-07-24', '0.00', '623.93', '0.00', 85, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 74223945, 3, NULL, NULL, '2020-07-24 16:49:40', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '623.93', 'Dr. William Green', '', 54, 0, 'Credit Card', '', 'Cleared', 'Invoice 86 Payment', '', '0.00', '2020-07-24', '0.00', '623.93', '0.00', 86, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 7880865, 3, NULL, NULL, '2020-07-24 16:50:06', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '467.95', 'Dr. William Green', '', 54, 0, 'Credit Card', '', 'Cleared', 'Invoice 87 Payment', '', '0.00', '2020-07-24', '0.00', '467.95', '0.00', 87, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 84832103, 3, NULL, NULL, '2020-07-24 16:50:39', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '240.98', 'Dr. William Green', '', 54, 0, 'Credit Card', '', 'Cleared', 'Invoice 88 Payment', '', '0.00', '2020-07-24', '0.00', '240.98', '0.00', 88, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 11824900, 3, NULL, NULL, '2020-07-24 16:51:18', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '708.93', 'Dr. William Green', '', 54, 0, 'Credit Card', '', 'Cleared', 'Invoice 89 Payment', '', '0.00', '2020-07-24', '0.00', '708.93', '0.00', 89, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 62400940, 3, NULL, NULL, '2020-07-24 16:51:46', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '238.15', 'Dr. William Green', '', 54, 0, 'Credit Card', '', 'Cleared', 'Invoice 94 Payment', '', '0.00', '2020-07-24', '0.00', '238.15', '0.00', 94, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 8903182, 3, NULL, NULL, '2020-07-24 16:52:37', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '467.95', 'Dr. William Green', '', 54, 0, 'Credit Card', '', 'Cleared', 'Invoice 96 Payment', '', '0.00', '2020-07-24', '0.00', '467.95', '0.00', 96, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 79510662, 3, NULL, NULL, '2020-07-24 16:52:59', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '778.21', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 118 Payment', '', '0.00', '2020-07-29', '0.00', '778.21', '0.00', 118, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 96206551, 3, NULL, NULL, '2020-07-29 19:02:37', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '180.98', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 119 Payment', '', '0.00', '2020-07-29', '0.00', '180.98', '0.00', 119, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 9831254, 3, NULL, NULL, '2020-07-29 19:03:10', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'Checking Account', 1, 'Income', NULL, NULL, 'Parts', '3775.76', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 123 Payment', '', '0.00', '2020-07-31', '0.00', '3775.76', '0.00', 123, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 57217305, 3, NULL, NULL, '2020-07-31 13:44:14', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '473.67', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 119 Payment', '', '0.00', '2020-07-31', '0.00', '473.67', '0.00', 119, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 30344792, 3, NULL, NULL, '2020-07-31 18:17:32', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '142.36', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 127 Payment', '', '0.00', '2020-07-31', '0.00', '142.36', '0.00', 127, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 66834463, 3, NULL, NULL, '2020-07-31 18:17:53', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '410.19', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 128 Payment', '', '0.00', '2020-07-31', '0.00', '410.19', '0.00', 128, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 11470162, 3, NULL, NULL, '2020-07-31 18:18:17', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '501.76', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 129 Payment', '', '0.00', '2020-07-31', '0.00', '501.76', '0.00', 129, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 27695537, 3, NULL, NULL, '2020-07-31 18:18:42', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '151.60', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 130 Payment', '', '0.00', '2020-07-31', '0.00', '151.60', '0.00', 130, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 20593970, 3, NULL, NULL, '2020-07-31 18:19:09', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '851.54', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 132 Payment', '', '0.00', '2020-07-31', '0.00', '851.54', '0.00', 132, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 32628562, 3, NULL, NULL, '2020-07-31 18:19:35', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_transactions` (`id`, `account`, `account_id`, `type`, `sub_type`, `cat_id`, `category`, `amount`, `payer`, `payee`, `payerid`, `payeeid`, `method`, `ref`, `status`, `description`, `tags`, `tax`, `date`, `dr`, `cr`, `bal`, `iid`, `currency_iso_code`, `currency`, `currency_symbol`, `currency_prefix`, `currency_suffix`, `currency_rate`, `base_amount`, `company_id`, `vid`, `aid`, `staff_id`, `created_at`, `updated_at`, `updated_by`, `attachments`, `source`, `rid`, `pid`, `archived`, `trash`, `flag`, `comments`, `c1`, `c2`, `c3`, `c4`, `c5`, `purchase_id`, `code`) VALUES
(144, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '553.77', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 133 Payment', '', '0.00', '2020-07-31', '0.00', '553.77', '0.00', 133, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 64843321, 3, NULL, NULL, '2020-07-31 18:20:36', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '408.15', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 134 Payment', '', '0.00', '2020-07-31', '0.00', '408.15', '0.00', 134, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 28021409, 3, NULL, NULL, '2020-07-31 18:20:55', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '170.00', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 135 Payment', '', '0.00', '2020-07-31', '0.00', '170.00', '0.00', 135, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 86849816, 3, NULL, NULL, '2020-07-31 18:21:46', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '6786.19', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 141 Payment', '', '0.00', '2020-08-06', '0.00', '6786.19', '0.00', 141, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 81235119, 3, NULL, NULL, '2020-08-06 11:58:21', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 'Petty Cash', 3, 'Expense', '', 75, 'Towing', '190.00', '', '', 0, 51, 'Cash', '', 'Cleared', '12468', '', '0.00', '2020-07-28', '190.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 21, 65173961, 1, 1, NULL, '2020-08-06 14:09:33', 0, '_5adaacd4516563159673732110439540.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00008'),
(151, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '431.40', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 151 Payment', '', '0.00', '2020-08-07', '0.00', '431.40', '0.00', 151, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 8835580, 3, NULL, NULL, '2020-08-07 14:31:52', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '1105.00', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 152 Payment', '', '0.00', '2020-08-07', '0.00', '1105.00', '0.00', 152, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 6385005, 3, NULL, NULL, '2020-08-07 14:32:24', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 'Shop Fleet - Revenue', 90, 'Income', NULL, 79, 'Labor Income', '6637.20', '', '', 50, 0, 'Credit Card', '022415400063', 'Cleared', 'DHO4 7/06 DLB1 7/28', '', '0.00', '2020-08-11', '0.00', '6637.20', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 0, 34009683, 1, 1, NULL, '2020-08-11 13:07:25', 0, '_220c77af028533159716553210035344.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INC-00005'),
(154, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '53.52', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 148 Payment', '', '0.00', '2020-08-11', '0.00', '53.52', '0.00', 148, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 76506479, 3, NULL, NULL, '2020-08-11 18:58:13', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '53.52', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 149 Payment', '', '0.00', '2020-08-11', '0.00', '53.52', '0.00', 149, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 88253243, 3, NULL, NULL, '2020-08-11 18:58:36', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '1360.55', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 150 Payment', '', '0.00', '2020-08-11', '0.00', '1360.55', '0.00', 150, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 29741678, 3, NULL, NULL, '2020-08-11 18:59:00', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '117.99', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', 'Invoice 153 Payment', '', '0.00', '2020-08-11', '0.00', '117.99', '0.00', 153, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 9109331, 3, NULL, NULL, '2020-08-11 18:59:22', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '486.99', 'Dr. William Green', '', 54, 0, 'Credit Card', '', 'Cleared', 'Invoice 142 Payment', '', '0.00', '2020-08-12', '0.00', '486.99', '0.00', 142, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 32609832, 3, NULL, NULL, '2020-08-12 17:27:15', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '382.69', 'Dr. William Green', '', 54, 0, 'Credit Card', '', 'Cleared', 'Invoice 143 Payment', '', '0.00', '2020-08-12', '0.00', '382.69', '0.00', 143, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 83239928, 3, NULL, NULL, '2020-08-12 17:28:17', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '619.84', 'Dr. William Green', '', 54, 0, 'Credit Card', '', 'Cleared', 'Invoice 154 Payment', '', '0.00', '2020-08-12', '0.00', '619.84', '0.00', 154, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 65375436, 3, NULL, NULL, '2020-08-12 17:28:55', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '323.15', 'Dr. William Green', '', 54, 0, 'Credit Card', '', 'Cleared', 'Invoice 161 Payment', '', '0.00', '2020-08-12', '0.00', '323.15', '0.00', 161, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 79096274, 1, NULL, NULL, '2020-08-12 17:39:00', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '752.67', 'Dr. William Green', '', 54, 0, 'Credit Card', '', 'Cleared', 'Invoice 165 Payment', '', '0.00', '2020-08-12', '0.00', '752.67', '0.00', 165, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 8664666, 1, NULL, NULL, '2020-08-12 17:39:59', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, 'Checking Account', 1, 'Expense', '', 76, 'Uncategorized', '176.23', '', '', 0, 51, 'Credit Card', '', 'Uncleared', 'uniforms', '', '0.00', '2020-08-12', '176.23', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 52, 40917624, 1, 1, NULL, '2020-08-17 11:07:34', 0, '_1b486d7a372375159767652210584136.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00009'),
(172, 'Fixed Assets - Equipment', 9, 'Expense', '', 77, 'Repairs & Maintenance', '275.00', '', '', 0, 51, 'Check', '', 'Cleared', 'hydraulic hose', '', '0.00', '2020-08-17', '275.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 7, 30358712, 1, 1, NULL, '2020-08-17 15:56:37', 0, '_cf9a063b464702159769415511106000.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00010'),
(173, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '47.12', '', '', 0, 51, 'Credit Card', '', 'Cleared', 'INV357637792', '', '0.00', '2020-07-29', '47.12', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 67, 74444876, 1, 1, NULL, '2020-08-17 16:16:50', 0, '_0950ca92107670159769538210896444.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00011'),
(174, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '24.89', '', '', 0, 51, 'Check', '', 'Cleared', '133319', '', '0.00', '2020-08-12', '24.89', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 93369664, 1, 1, NULL, '2020-08-17 16:40:14', 0, '_86d7c8a0096582159769675110558816.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00012'),
(175, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '23.75', '', '', 0, 51, 'Check', '', 'Cleared', '133318', '', '0.00', '2020-08-12', '23.75', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 14875330, 1, 1, NULL, '2020-08-17 16:42:01', 0, '_b02d46e8846168159769689110519538.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00013'),
(176, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '86.13', '', '', 0, 51, 'Credit Card', '', 'Cleared', '85864323', '', '0.00', '2020-07-23', '86.13', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 49, 71173004, 1, 1, NULL, '2020-08-17 16:45:17', 0, '', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00014'),
(177, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '364.48', '', '', 0, 51, 'Credit Card', '', 'Cleared', '35912950', '', '0.00', '2020-07-23', '364.48', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 49, 65396429, 1, 1, NULL, '2020-08-17 17:31:17', 0, '', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00015'),
(178, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '214.97', '', '', 0, 51, 'Credit Card', '', 'Cleared', '0301CH3644', '', '0.00', '2020-07-30', '214.97', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 62835359, 1, 1, NULL, '2020-08-17 17:41:30', 0, '_6a61d423223470159770046911066400.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00016'),
(179, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '19.10', '', '', 0, 51, 'Credit Card', '', 'Cleared', '0301CH4066', '', '0.00', '2020-07-31', '19.10', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 71864079, 1, 1, NULL, '2020-08-17 17:43:27', 0, '_d3890178937009159770058610035080.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00017'),
(180, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '109.99', '', '', 0, 51, 'Check', '', 'Cleared', '4576', '', '0.00', '2020-07-27', '109.99', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 55, 24811020, 1, 1, NULL, '2020-08-17 17:45:49', 0, '_4de1ed74088013159770069810688723.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00018'),
(181, 'Parts Costs ', 51, 'Expense', '', 76, 'Uncategorized', '549.95', '', '', 0, 51, 'Check', '', 'Cleared', '4577', '', '0.00', '2020-07-27', '549.95', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 55, 65128302, 1, 1, NULL, '2020-08-17 17:47:29', 0, '_f81dee4224046315977008291030403.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00019'),
(182, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '99.95', '', '', 0, 51, 'Credit Card', '', 'Cleared', '0010OR5104', '', '0.00', '2020-08-28', '99.95', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 17015770, 1, 1, NULL, '2020-08-17 17:49:24', 0, '_ce60ff16780084159770093610813212.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00020'),
(183, 'Parts Costs ', 51, 'Expense', '', 76, 'Uncategorized', '9.55', '', '', 0, 51, 'Credit Card', '', 'Cleared', '0010OR1661', '', '0.00', '2020-07-23', '9.55', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 5634681, 1, 1, NULL, '2020-08-17 17:53:12', 0, '_b74084f6701860159770117710221793.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00021'),
(184, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '50.64', '', '', 0, 51, 'Check', 'check#7973', 'Cleared', 'J002235', '', '0.00', '2020-07-24', '50.64', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 29, 21810146, 1, 1, NULL, '2020-08-18 12:40:31', 0, '_42299f0640646215977687811019124.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00022'),
(185, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '35.64', '', '', 0, 51, 'Credit Card', '', 'Cleared', '133307', '', '0.00', '2020-08-12', '35.64', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 35648670, 1, 1, NULL, '2020-08-18 12:48:52', 0, '_84a955d5665074159776929611021596.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00023'),
(186, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '22.05', '', '', 0, 51, 'Credit Card', '', 'Cleared', '133323', '', '0.00', '2020-08-13', '22.05', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 38806927, 1, 1, NULL, '2020-08-18 12:50:18', 0, '', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00024'),
(187, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '155.02', '', '', 0, 51, 'Check', '', 'Cleared', '155946L', '', '0.00', '2020-07-22', '155.02', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 62, 31375965, 1, 1, NULL, '2020-08-18 12:55:43', 0, '_93661c1025057715977697171065552.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00025'),
(188, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '617.60', '', '', 0, 51, 'Credit Card', '', 'Cleared', '133144', '', '0.00', '2020-07-22', '617.60', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 20335843, 1, 1, NULL, '2020-08-18 12:57:21', 0, '_65f148c8861714159776982110168763.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00026'),
(189, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '185.12', '', '', 0, 51, 'Credit Card', '', 'Cleared', '0010OR0096', '', '0.00', '2020-07-22', '185.12', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 45191957, 1, 1, NULL, '2020-08-18 12:59:05', 0, '_3e9928ec179559159776992510024735.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00027'),
(190, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '224.46', '', '', 0, 51, 'Credit Card', '', 'Cleared', '27136', '', '0.00', '2020-08-23', '224.46', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 68, 57932932, 1, 1, NULL, '2020-08-18 13:05:12', 0, '_99f16d38609160159777029210532188.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00028'),
(191, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '119.00', '', '', 0, 51, 'Credit Card', '', 'Cleared', '200721122227', '', '0.00', '2020-08-21', '119.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 19, 30364711, 1, 1, NULL, '2020-08-18 13:06:59', 0, '_0004d0b5758663159777039011003375.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00029'),
(192, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '115.05', '', '', 0, 51, 'Check', '', 'Cleared', '146098', '', '0.00', '2020-08-21', '115.05', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 42, 3485704, 1, 1, NULL, '2020-08-18 13:10:00', 0, '_983a33a9184003159777057510355319.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00030'),
(193, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '153.60', '', '', 0, 51, 'Credit Card', '', 'Cleared', '546104', '', '0.00', '2020-07-22', '153.60', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 34, 92972838, 1, 1, NULL, '2020-08-18 13:12:55', 0, '_5f8e2fa192300015977707471065593.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00031'),
(194, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '69.98', '', '', 0, 51, 'Credit Card', '', 'Cleared', '0010OQ8434', '', '0.00', '2020-07-20', '69.98', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 623953, 1, 1, NULL, '2020-08-18 13:14:37', 0, '_92b78b60547134159777086010295657.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00032'),
(195, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '152.72', '', '', 0, 51, 'Credit Card', '', 'Cleared', '9048087930 ONTC', '', '0.00', '2020-07-22', '152.72', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 56, 56364283, 1, 1, NULL, '2020-08-18 13:16:37', 0, '_cb8da676679138159777096810818837.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00033'),
(196, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '387.59', '', '', 0, 51, 'Credit Card', '', 'Cleared', '9048087931', '', '0.00', '2020-07-22', '387.59', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 56, 82645059, 1, 1, NULL, '2020-08-18 13:18:22', 0, '_a4380923836965159777108210347314.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00034'),
(197, 'Towing Service', 85, 'Expense', '', 74, 'Parts', '190.00', '', '', 0, 51, 'Check', '', 'Cleared', '12462', '', '0.00', '2020-07-20', '190.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 21, 81409717, 1, 1, NULL, '2020-08-18 13:20:30', 0, '_81e5f81d572488159777120910271938.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00035'),
(198, 'Parts Costs ', 51, 'Expense', '', 72, 'Paint', '623.46', '', '', 0, 51, 'Check', '', 'Cleared', '81399-0021', '', '0.00', '2020-07-21', '623.46', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 39, 34225701, 1, 1, NULL, '2020-08-18 13:22:46', 0, '_b2945042576663159777134810505319.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00036'),
(199, 'Parts Costs ', 51, 'Expense', '', 72, 'Paint', '110.00', '', '', 0, 51, 'Check', '', 'Cleared', '81413-0021', '', '0.00', '2020-07-21', '110.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 39, 41730810, 1, 1, NULL, '2020-08-18 13:24:42', 0, '_e655c771224084159777146510893862.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00037'),
(200, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '89.99', '', '', 0, 51, 'Check', '', 'Cleared', '4500', '', '0.00', '2020-07-14', '89.99', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 55, 79850119, 1, 1, NULL, '2020-08-18 13:26:15', 0, '_9f4768b4438948159777155710287370.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00038'),
(201, 'Uniforms', 76, 'Expense', '', 76, 'Uncategorized', '170.08', '', '', 0, 51, 'Credit Card', '', 'Cleared', '4056599564', '', '0.00', '2020-07-22', '170.08', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 52, 67998045, 1, 1, NULL, '2020-08-18 13:28:51', 0, '_18a4e136737220159777169110853662.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00039'),
(202, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '49.00', '', '', 0, 51, 'Cash', '', 'Cleared', '200717170549', '', '0.00', '2020-07-17', '49.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 19, 98058718, 1, 1, NULL, '2020-08-18 13:30:57', 0, '_120ca817702596159777182110218406.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00040'),
(203, 'Parts Costs ', 51, 'Expense', '', 72, 'Paint', '54.83', '', '', 0, 51, 'Check', '', 'Cleared', '81386-0021', '', '0.00', '2020-07-21', '54.83', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 39, 2366472, 1, 1, NULL, '2020-08-18 13:54:29', 0, '_f52db9f7210490159777324810924041.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00041'),
(204, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '89.98', '', '', 0, 51, 'Credit Card', '', 'Cleared', '0010OQ9081', '', '0.00', '2020-07-21', '89.98', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 92788436, 1, 1, NULL, '2020-08-18 13:56:40', 0, '_c97e7a51387728159777338210748049.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00042'),
(205, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '69.00', '', '', 0, 51, 'Check', '', 'Cleared', '200718113600', '', '0.00', '2020-07-18', '69.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 19, 52424701, 1, 1, NULL, '2020-08-18 14:05:26', 0, '_56352739946350159777389310088843.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00043'),
(206, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '1270.95', '', '', 0, 51, 'Credit Card', '', 'Cleared', '904799323', '', '0.00', '2020-07-20', '1270.95', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 56, 67467071, 1, 1, NULL, '2020-08-18 16:53:13', 0, '_1ce3e6e3805787159778397410251919.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00044'),
(207, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '3.69', '', '', 0, 51, 'Credit Card', '', 'Cleared', '0010OQ6586', '', '0.00', '2020-07-17', '3.69', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 4515898, 1, 1, NULL, '2020-08-18 16:55:51', 0, '_6ad4174e552396159778413410074684.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00045'),
(208, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '17.95', '', '', 0, 51, 'Credit Card', '', 'Cleared', '0010OQ6560', '', '0.00', '2020-07-17', '17.95', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 17561354, 1, 1, NULL, '2020-08-18 16:58:10', 0, '_6fae4e79961677159778427010534790.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00046'),
(209, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '90.00', '', '', 0, 51, 'Check', 'check #8071', 'Cleared', '1874', '', '0.00', '2020-08-18', '90.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 53, 31313784, 1, 1, NULL, '2020-08-18 17:05:12', 0, '_155fa095823437159778463310946142.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00047'),
(210, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '11.84', '', '', 0, 51, 'Credit Card', '', 'Cleared', '9048941393', '', '0.00', '2020-08-18', '11.84', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 56, 54869953, 1, 1, NULL, '2020-08-19 11:54:12', 0, '_d594b1a9142829159785236210222646.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00048'),
(211, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '94.00', '', '', 0, 51, 'Credit Card', '', 'Cleared', '36017365', '', '0.00', '2020-07-18', '94.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 69, 69006145, 1, 1, NULL, '2020-08-19 11:56:04', 0, '_349f8e80295511159785253710844007.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00049'),
(212, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '176.62', '', '', 0, 51, 'Credit Card', '', 'Cleared', '9047941748', '', '0.00', '2020-07-17', '176.62', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 56, 49427818, 1, 1, NULL, '2020-08-19 11:58:17', 0, '_baeabb8f170921159785266910881422.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00050'),
(213, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '419.52', '', '', 0, 51, 'Check', '', 'Cleared', '828056', '', '0.00', '2020-07-21', '419.52', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 29, 63616412, 1, 1, NULL, '2020-08-19 12:00:44', 0, '_b7ab1aac87174015978528141042141.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00051'),
(214, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '24.62', '', '', 0, 51, 'Credit Card', '', 'Cleared', '0010OQ3101', '', '0.00', '2020-07-14', '24.62', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 70744452, 1, 1, NULL, '2020-08-19 12:06:59', 0, '_fbb5d2cf547321159785296610628735.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00052'),
(215, 'Parts Costs ', 51, 'Expense', '', 72, 'Paint', '102.00', '', '', 0, 51, 'Credit Card', '', 'Cleared', '653873', '', '0.00', '2020-07-15', '102.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 13, 66004954, 1, 1, NULL, '2020-08-19 12:16:16', 0, '_d3f5d4de576994159785367410588926.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00053'),
(216, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '1031.87', '', '', 0, 51, 'Credit Card', '', 'Cleared', '9048532253', '', '0.00', '2020-08-05', '1031.87', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 56, 2180400, 1, 1, NULL, '2020-08-19 12:30:19', 0, '_943b5fd1197765159785450810716560.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00054'),
(217, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '110.00', '', '', 0, 51, 'Check', '', 'Cleared', '1809', '', '0.00', '2020-08-05', '110.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 53, 4073528, 1, 1, NULL, '2020-08-19 12:31:49', 0, '_182e6c2d95048115978546891027330.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00055'),
(218, 'Towing Service', 85, 'Expense', '', 75, 'Towing', '100.00', '', '', 0, 51, 'Check', '', 'Cleared', '12470', '', '0.00', '2020-07-30', '100.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 21, 87638003, 1, 1, NULL, '2020-08-19 12:34:05', 0, '_c6224c1b449290159785482510413862.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00056'),
(219, 'Uniforms', 76, 'Expense', '', 76, 'Uncategorized', '134.28', '', '', 0, 51, 'Credit Card', '', 'Cleared', '4057233972', '', '0.00', '2020-07-29', '134.28', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 52, 92636132, 1, 1, NULL, '2020-08-19 12:36:10', 0, '_6b5ce5a5859487159785494610753078.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00057'),
(220, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '440.91', '', '', 0, 51, 'Credit Card', '', 'Cleared', '4 invs', '', '0.00', '2020-07-01', '440.91', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 23, 65717200, 1, 1, NULL, '2020-08-19 12:38:47', 0, '_801fd8c2200913159785510811109435.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00058'),
(221, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '3072.96', '', '', 0, 51, 'Credit Card', '', 'Cleared', '15100938', '', '0.00', '2020-07-30', '3072.96', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 48, 36269031, 1, 1, NULL, '2020-08-19 12:49:26', 0, '_22b1cd16121423159785574510737496.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00059'),
(222, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '57.40', '', '', 0, 51, 'Credit Card', '', 'Cleared', '0010OR2225', '', '0.00', '2020-07-24', '57.40', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 52423787, 1, 1, NULL, '2020-08-19 13:04:49', 0, '_e992111e935284159785667510082503.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00060'),
(223, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '44.93', '', '', 0, 51, 'Credit Card', '', 'Cleared', '0010OR2790', '', '0.00', '2020-07-24', '44.93', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 25790099, 1, 1, NULL, '2020-08-19 13:06:41', 0, '_04f19115610958159785678210982190.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00061'),
(224, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '28.99', '', '', 0, 51, 'Credit Card', '', 'Cleared', '0010OR2325', '', '0.00', '2020-07-24', '28.99', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 20244078, 1, 1, NULL, '2020-08-19 13:08:49', 0, '_9824f9c1226822159785691210422650.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00062'),
(225, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '4.04', '', '', 0, 51, 'Credit Card', '', 'Cleared', '9048119312', '', '0.00', '2020-07-23', '4.04', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 56, 65802891, 1, 1, NULL, '2020-08-19 13:12:13', 0, '_4feb2371099754159785710810657384.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00063'),
(226, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '3.39', '', '', 0, 51, 'Credit Card', '', 'Cleared', '9048119688', '', '0.00', '2020-07-23', '3.39', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 56, 893650, 1, 1, NULL, '2020-08-19 13:19:19', 0, '_bf764716363716159785753311116117.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00064'),
(227, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '62.29', '', '', 0, 51, 'Credit Card', '', 'Cleared', '9048119506', '', '0.00', '2020-07-23', '62.29', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 56, 81425240, 1, 1, NULL, '2020-08-19 13:23:13', 0, '_96b250a9176529159785771710877682.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00065'),
(228, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '120.00', '', '', 0, 51, 'Check', '', 'Cleared', '12476', '', '0.00', '2020-08-04', '120.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 21, 75417194, 1, 1, NULL, '2020-08-19 13:25:26', 0, '_752356ce146261159785790311022664.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00066'),
(229, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '55.00', '', '', 0, 51, 'Credit Card', '', 'Cleared', '12200804-124', '', '0.00', '2020-08-04', '55.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 22, 62132229, 1, 1, NULL, '2020-08-19 13:28:04', 0, '_234a1273741636159785806110631191.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00067'),
(230, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '21.15', '', '', 0, 51, 'Check', '', 'Cleared', '133228', '', '0.00', '2020-07-30', '21.15', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 71629135, 1, 1, NULL, '2020-08-19 13:31:11', 0, '_b14573b9945034159785823711115760.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00068'),
(231, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '1400.00', '', '', 0, 51, 'Credit Card', '', 'Cleared', '14771', '', '0.00', '2020-07-28', '1400.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 33, 46722285, 1, 1, NULL, '2020-08-19 13:33:29', 0, '_e45823af510432159785839610342144.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00069'),
(232, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '35.59', '', '', 0, 51, 'Credit Card', '', 'Cleared', '0010OR6379', '', '0.00', '2020-07-29', '35.59', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 11540037, 1, 1, NULL, '2020-08-19 13:37:34', 0, '_a35f4223576285159785861311102226.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00070'),
(233, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '24.35', '', '', 0, 51, 'Credit Card', '', 'Cleared', '757890', '', '0.00', '2020-07-29', '24.35', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 43, 86161525, 1, 1, NULL, '2020-08-19 13:40:17', 0, '_35ec2538974098159785879811075890.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00071'),
(234, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '69.00', '', '', 0, 51, 'Credit Card', '', 'Cleared', '12200727-216', '', '0.00', '2020-07-27', '69.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 22, 21427003, 1, 1, NULL, '2020-08-19 13:42:45', 0, '_ea3502c3975850159785894010479979.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00072'),
(235, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '109.00', '', '', 0, 51, 'Credit Card', '', 'Cleared', '12200730-074', '', '0.00', '2020-07-30', '109.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 22, 17827880, 1, 1, NULL, '2020-08-19 13:45:03', 0, '_532b81fa329684159785908311084259.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00073'),
(236, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '79.99', '', '', 0, 51, 'Credit Card', '', 'Cleared', '86119267', '', '0.00', '2020-07-28', '79.99', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 49, 23294358, 1, 1, NULL, '2020-08-19 13:47:44', 0, '_2c2fb9ef253642159785917910754382.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00074'),
(237, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '344.79', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', '00569G', '', '0.00', '2020-08-19', '0.00', '344.79', '0.00', 180, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 74680425, 3, NULL, NULL, '2020-08-19 18:33:48', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(238, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '333.66', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', '00569G', '', '0.00', '2020-08-19', '0.00', '333.66', '0.00', 183, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 18705084, 3, NULL, NULL, '2020-08-19 18:34:34', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(239, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '186.76', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', '00569G', '', '0.00', '2020-08-19', '0.00', '186.76', '0.00', 184, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 37801973, 3, NULL, NULL, '2020-08-19 18:35:03', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(240, 'Checking Account', 1, 'Income', NULL, NULL, 'Labor Income', '323.15', 'COLONIAL LOGISTICS LLC', '', 50, 0, 'Credit Card', '', 'Cleared', '00569G', '', '0.00', '2020-08-19', '0.00', '323.15', '0.00', 168, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 38439640, 3, NULL, NULL, '2020-08-19 18:35:32', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, 'Parts Costs ', 51, 'Expense', NULL, NULL, 'Parts', '271.96', '', 'TIRE HUB', 0, 41, 'Credit Card', '', 'Cleared', '15363612', '', '0.00', '2020-08-20', '271.96', '0.00', '0.00', 0, NULL, 0, '', NULL, NULL, '1.0000', '0.0000', 0, 35323114, 0, NULL, NULL, '2020-08-20 12:10:35', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL),
(248, 'Parts Costs ', 51, 'Expense', NULL, NULL, 'Parts', '1047.83', '', 'NTW', 0, 52, 'Credit Card', '', 'Cleared', 'PAID CC', '', '0.00', '2020-08-24', '1047.83', '0.00', '0.00', 0, NULL, 0, '', NULL, NULL, '1.0000', '0.0000', 0, 81887493, 0, NULL, NULL, '2020-08-24 17:41:34', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 30, NULL),
(249, 'Checking Account', 1, 'Expense', '', 75, 'Towing', '175.00', '', '', 0, 51, 'Check', '8099', 'Cleared', 'ONTC14 TOWING', '', '0.00', '2020-08-25', '175.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 21, 82860860, 3, 0, NULL, '2020-08-25 14:09:04', 0, '', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00075'),
(250, 'Checking Account', 1, 'Expense', NULL, NULL, 'Parts', '539.85', '', 'AUTOFIT', 0, 11, 'Credit Card', '', 'Cleared', 'CKNO8100', '', '0.00', '2020-08-25', '539.85', '0.00', '0.00', 0, NULL, 0, '', NULL, NULL, '1.0000', '0.0000', 0, 42595106, 0, NULL, NULL, '2020-08-25 14:43:09', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 31, NULL),
(251, 'Checking Account', 1, 'Expense', NULL, NULL, 'Parts', '222.00', '', 'AUTOFIT', 0, 11, 'Check', '', 'Cleared', 'CKNO 8098-8100', '', '0.00', '2020-08-25', '222.00', '0.00', '0.00', 0, NULL, 0, '', NULL, NULL, '1.0000', '0.0000', 0, 65433971, 0, NULL, NULL, '2020-08-25 15:04:46', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 32, NULL),
(252, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '27.57', '', '', 0, 51, 'Check', '', 'Cleared', '133019', '', '0.00', '2020-07-08', '27.57', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 7245498, 1, 1, NULL, '2020-08-26 12:19:02', 0, '_6d1e481b235671159845871810021677.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00076'),
(253, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '12.27', '', '', 0, 51, 'Check', '', 'Cleared', '133027', '', '0.00', '2020-07-08', '12.27', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 67324014, 1, 1, NULL, '2020-08-26 12:28:07', 0, '_b0285cbf071553159845925810815006.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00077'),
(254, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '96.00', '', '', 0, 51, 'Check', '', 'Cleared', '133026', '', '0.00', '2020-07-08', '96.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 81794508, 1, 1, NULL, '2020-08-26 12:39:27', 0, '_630b7d8d848203159845993810031493.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00078'),
(255, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '3.50', '', '', 0, 51, 'Check', '', 'Cleared', '133089', '', '0.00', '2020-07-15', '3.50', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 56270651, 1, 1, NULL, '2020-08-26 12:41:02', 0, '_dea9ddb210754615984600391099903.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00079'),
(256, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '138.90', '', '', 0, 51, 'Check', '', 'Cleared', '133028', '', '0.00', '2020-07-08', '138.90', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 76400532, 1, 1, NULL, '2020-08-26 14:23:55', 0, '', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00080'),
(257, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '206.97', '', '', 0, 51, 'Check', '', 'Cleared', '133042', '', '0.00', '2020-07-10', '206.97', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 7300431, 1, 1, NULL, '2020-08-26 14:25:50', 0, '_2c463dfd236652159846631110333257.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00081'),
(258, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '71.34', '', '', 0, 51, 'Check', '', 'Cleared', '133075', '', '0.00', '2020-07-14', '71.34', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 18236642, 1, 1, NULL, '2020-08-26 14:28:37', 0, '_c37a2122334166159846644410044093.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00082'),
(259, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '20.99', '', '', 0, 51, 'Check', '', 'Cleared', '133117', '', '0.00', '2020-07-18', '20.99', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 4586034, 1, 1, NULL, '2020-08-26 14:30:36', 0, '_3b777b77891317159846660610656988.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00083'),
(260, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '91.84', '', '', 0, 51, 'Check', '', 'Cleared', '133112', '', '0.00', '2020-07-18', '91.84', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 59067689, 1, 1, NULL, '2020-08-26 14:35:17', 0, '_d85b63ef043123159846687010297804.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00084'),
(261, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '207.20', '', '', 0, 51, 'Check', '', 'Cleared', '133098', '', '0.00', '2020-07-16', '207.20', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 28722857, 1, 1, NULL, '2020-08-26 14:37:44', 0, '_0a49e3c3169329159846703810638213.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00085'),
(262, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '352.38', '', '', 0, 51, 'Check', '', 'Cleared', '133154', '', '0.00', '2020-07-23', '352.38', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 44562122, 1, 1, NULL, '2020-08-26 15:56:37', 0, '_45d6637b311828159847168310537027.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00086'),
(263, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '206.97', '', '', 0, 51, 'Check', '', 'Cleared', '133143', '', '0.00', '2020-07-22', '206.97', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 52268448, 1, 1, NULL, '2020-08-26 15:58:26', 0, '_5d8c6ee0367019159847188010004383.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00087'),
(264, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '48.45', '', '', 0, 51, 'Check', '', 'Cleared', '133176', '', '0.00', '2020-07-24', '48.45', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 72206441, 1, 1, NULL, '2020-08-26 16:00:49', 0, '_1e932f24165121159847202810346973.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00088'),
(265, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '80.77', '', '', 0, 51, 'Check', '', 'Cleared', '133189', '', '0.00', '2020-07-25', '80.77', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 21139742, 1, 1, NULL, '2020-08-26 16:02:56', 0, '_98e6f172303486159847214510924004.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00089'),
(266, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '86.06', '', '', 0, 51, 'Check', '', 'Cleared', '133170', '', '0.00', '2020-07-24', '86.06', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 40307045, 1, 1, NULL, '2020-08-26 16:06:25', 0, '_f02208a0994642159847236210111496.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00090'),
(267, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '32.12', '', '', 0, 51, 'Check', '', 'Cleared', '133197', '', '0.00', '2020-07-27', '32.12', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 25434269, 1, 1, NULL, '2020-08-26 16:07:54', 0, '_b16e8712464370159847245110019886.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00091'),
(268, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '723.48', '', '', 0, 51, 'Check', '', 'Cleared', '133156', '', '0.00', '2020-07-23', '723.48', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 53140196, 1, 1, NULL, '2020-08-26 16:10:32', 0, '_5c843bd8637212159847261211056520.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00092'),
(269, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '118.37', '', '', 0, 51, 'Check', '', 'Cleared', '133086', '', '0.00', '2020-07-15', '118.37', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 22829173, 1, 1, NULL, '2020-08-26 16:15:45', 0, '_0b846c55303346159847287210038039.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00093'),
(270, 'Towing Service', 85, 'Expense', '', 75, 'Towing', '350.00', '', '', 0, 51, 'Check', '8104', 'Cleared', 'colo van', '', '0.00', '2020-08-26', '350.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 21, 6592840, 3, 3, NULL, '2020-08-26 16:24:45', 0, '', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00094'),
(278, 'Fixed Assets - Building', 10, 'Expense', '', 14, 'Advertising', '811.87', '', '', 0, 51, 'Check', '', 'Cleared', '26\' truck 3 sides graphics', '', '0.00', '2020-07-27', '811.87', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 61, 42628909, 1, 1, NULL, '2020-08-28 14:07:18', 0, '', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00095'),
(279, 'Other Investments', 7, 'Expense', '', 73, 'Software Subscription', '99.00', '', '', 0, 51, 'Credit Card', '', 'Cleared', 'B9429120-0001', '', '0.00', '2020-07-08', '99.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 73, 21883800, 1, 1, NULL, '2020-08-28 14:12:09', 0, '_861dc9bd192559159863830710774949.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00096'),
(280, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '138.85', '', '', 0, 51, 'Check', '', 'Cleared', '133219', '', '0.00', '2020-07-29', '138.85', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 22738446, 1, 1, NULL, '2020-08-28 15:29:40', 0, '', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00097'),
(281, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '63.91', '', '', 0, 51, 'Check', '', 'Cleared', '133231', '', '0.00', '2020-07-30', '63.91', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 34278882, 1, 1, NULL, '2020-08-28 15:33:00', 0, '_0e3a37aa285145159864312310241042.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00098'),
(282, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '418.72', '', '', 0, 51, 'Check', '', 'Cleared', '155950L', '', '0.00', '2020-07-24', '418.72', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 62, 4666889, 1, 1, NULL, '2020-08-28 15:35:43', 0, '_75e33da9415219159864331110507310.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00099'),
(283, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '196.24', '', '', 0, 51, 'Check', '', 'Cleared', '156072L', '', '0.00', '2020-07-28', '196.24', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 62, 4774843, 1, 1, NULL, '2020-08-28 15:38:49', 0, '_0b7a9d54752501159864350810501829.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00100'),
(284, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '97.55', '', '', 0, 51, 'Credit Card', '', 'Cleared', '86048150', '', '0.00', '2020-07-27', '97.55', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 49, 30128866, 1, 1, NULL, '2020-08-28 15:43:46', 0, '_c55d22f5285605159864371710585685.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00101'),
(285, 'Parts Costs ', 51, 'Expense', '', 77, 'Repairs & Maintenance', '90.00', '', '', 0, 51, 'Check', '', 'Cleared', '1879 VAN#2009', '', '0.00', '2020-08-19', '90.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 53, 54517848, 1, 1, NULL, '2020-08-28 16:33:05', 0, '_43f8e83d442012159864673910985241.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00102'),
(286, 'Parts Costs ', 51, 'Expense', '', 72, 'Paint', '122.00', '', '', 0, 51, 'Check', '', 'Cleared', '81861-0021', '', '0.00', '2020-08-07', '122.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 39, 59734748, 1, 1, NULL, '2020-08-28 16:39:29', 0, '_4b85256c377402159864696310201315.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00103'),
(287, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '75.00', '', '', 0, 51, 'Credit Card', '', 'Cleared', '36059667', '', '0.00', '2020-08-07', '75.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 69, 21958722, 1, 1, NULL, '2020-08-28 16:43:46', 0, '_007d4a1269755215986473291095625.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00104'),
(288, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '97.00', '', '', 0, 51, 'Check', '', 'Cleared', '133275 J002286', '', '0.00', '2020-08-07', '97.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 15251064, 1, 1, NULL, '2020-08-28 16:45:46', 0, '_1e00746c817277159864752110257237.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00105'),
(289, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '32.50', '', '', 0, 51, 'Check', '', 'Cleared', '133277 DHO4', '', '0.00', '2020-08-07', '32.50', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 62450094, 1, 1, NULL, '2020-08-28 16:48:24', 0, '_d7f6db68303678159864768210442080.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00106'),
(290, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '247.50', '', '', 0, 51, 'Check', '', 'Cleared', '133287 DH01', '', '0.00', '2020-08-07', '247.50', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 92377899, 1, 1, NULL, '2020-08-28 16:50:39', 0, '', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00107'),
(291, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '168.84', '', '', 0, 51, 'Check', '', 'Cleared', '133281', '', '0.00', '2020-08-08', '168.84', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 45450698, 1, 1, NULL, '2020-08-28 16:52:54', 0, '_d5da28d4084692159864794710693467.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00108'),
(292, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '18.14', '', '', 0, 51, 'Credit Card', '', 'Cleared', '0010OS5588 J002147', '', '0.00', '2020-08-08', '18.14', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 46834714, 1, 1, NULL, '2020-08-28 16:57:30', 0, '_c59b469d001630159864822410825240.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00109'),
(293, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '5.19', '', '', 0, 51, 'Credit Card', '', 'Cleared', '0010OS6809 J002289', '', '0.00', '2020-08-10', '5.19', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 50836207, 1, 1, NULL, '2020-08-28 17:01:46', 0, '_53f0d7c5518249159864841810767021.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00110');
INSERT INTO `sys_transactions` (`id`, `account`, `account_id`, `type`, `sub_type`, `cat_id`, `category`, `amount`, `payer`, `payee`, `payerid`, `payeeid`, `method`, `ref`, `status`, `description`, `tags`, `tax`, `date`, `dr`, `cr`, `bal`, `iid`, `currency_iso_code`, `currency`, `currency_symbol`, `currency_prefix`, `currency_suffix`, `currency_rate`, `base_amount`, `company_id`, `vid`, `aid`, `staff_id`, `created_at`, `updated_at`, `updated_by`, `attachments`, `source`, `rid`, `pid`, `archived`, `trash`, `flag`, `comments`, `c1`, `c2`, `c3`, `c4`, `c5`, `purchase_id`, `code`) VALUES
(294, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '42.75', '', '', 0, 51, 'Check', '', 'Cleared', '133287 J002289', '', '0.00', '2020-08-10', '42.75', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 10267953, 1, 1, NULL, '2020-08-28 17:10:49', 0, '_f4f691ac852708159864887010652153.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00111'),
(295, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '86.00', '', '', 0, 51, 'Credit Card', '', 'Cleared', '36066183 J002290', '', '0.00', '2020-08-11', '86.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 69, 22059637, 1, 1, NULL, '2020-08-28 17:13:08', 0, '_6048ff4e538051159864915310003277.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00112'),
(296, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '3.12', '', '', 0, 51, 'Check', '', 'Cleared', '133280 J002292', '', '0.00', '2020-08-08', '3.12', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 84914712, 1, 1, NULL, '2020-08-28 17:21:15', 0, '_56468d56530044159864964610971519.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00113'),
(297, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '40.99', '', '', 0, 51, 'Credit Card', '', 'Cleared', '00100OS7066 J002231', '', '0.00', '2020-08-10', '40.99', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 6661425, 1, 1, NULL, '2020-08-28 17:23:47', 0, '_1aa05731530487159864980010852658.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00114'),
(298, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '22.47', '', '', 0, 51, 'Credit Card', '', 'Cleared', '0010OS6925 ', '', '0.00', '2020-08-10', '22.47', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 78205902, 1, 1, NULL, '2020-08-28 17:36:04', 0, '_bac4cbb684220315986505371032473.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00115'),
(299, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '57.40', '', '', 0, 51, 'Credit Card', '', 'Cleared', '0010OS6385 J002291', '', '0.00', '2020-08-10', '57.40', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 88713976, 1, 1, NULL, '2020-08-28 17:39:00', 0, '_29000b02959568159865072410758356.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00116'),
(300, 'Parts Costs ', 51, 'Expense', '', 72, 'Paint', '162.30', '', '', 0, 51, 'Credit Card', '', 'Cleared', '661868', '', '0.00', '2020-08-11', '162.30', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 13, 15699553, 1, 1, NULL, '2020-08-29 11:54:23', 0, '_778609db549379159871644010163819.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00117'),
(301, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '220.80', '', '', 0, 51, 'Credit Card', '', 'Cleared', '847714 j002293', '', '0.00', '2020-08-11', '220.80', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 34, 9753923, 1, 1, NULL, '2020-08-29 11:57:56', 0, '_aecad423893730159871665910925974.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00118'),
(302, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '9.42', '', '', 0, 51, 'Credit Card', '', 'Cleared', '1490188B J002308', '', '0.00', '2020-08-14', '9.42', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 35, 83770088, 1, 1, NULL, '2020-08-29 11:59:53', 0, '_357cfba1316248159871677510328541.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00119'),
(303, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '9.99', '', '', 0, 51, 'Credit Card', '', 'Cleared', '0010OT0805 J002310', '', '0.00', '2020-08-14', '9.99', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 37625187, 1, 1, NULL, '2020-08-29 12:01:56', 0, '_c165ed49820268159871689010703201.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00120'),
(304, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '18.35', '', '', 0, 51, 'Credit Card', '', 'Cleared', '133350 J002314', '', '0.00', '2020-08-14', '18.35', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 95851624, 1, 1, NULL, '2020-08-29 12:36:06', 0, '_331609c9785197159871700110312368.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00121'),
(305, 'Parts Costs ', 51, 'Expense', '', 72, 'Paint', '94.76', '', '', 0, 51, 'Credit Card', '', 'Cleared', '664162 ', '', '0.00', '2020-08-19', '94.76', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 13, 6844140, 1, 1, NULL, '2020-08-29 12:41:25', 0, '_f18a6d1c836809159871925010637053.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00122'),
(306, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '23.99', '', '', 0, 51, 'Credit Card', '', 'Cleared', '0010OT4317 J002325', '', '0.00', '2020-08-18', '23.99', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 50951623, 1, 1, NULL, '2020-08-29 12:46:58', 0, '_2f25f6e362513515987196001104719.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00123'),
(307, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '239.96', '', '', 0, 51, 'Credit Card', '', 'Cleared', '15454523 J002326', '', '0.00', '2020-08-18', '239.96', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 48, 7542659, 1, 1, NULL, '2020-08-29 13:14:58', 0, '_8462a7c2065943159872126910875146.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00124'),
(308, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '59.99', '', '', 0, 51, 'Credit Card', '', 'Cleared', '15455784 j002326', '', '0.00', '2020-08-18', '59.99', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 48, 83916655, 1, 1, NULL, '2020-08-29 13:18:57', 0, '_a85edfa2893914159872151710514911.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00125'),
(309, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '137.67', '', '', 0, 51, 'Credit Card', '', 'Cleared', '133365 j002321', '', '0.00', '2020-08-17', '137.67', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 3218004, 1, 1, NULL, '2020-08-29 13:22:01', 0, '_77ee3bc5134196159872170110217606.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00126'),
(310, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '299.72', '', '', 0, 51, 'Credit Card', '', 'Cleared', '133367 j002320', '', '0.00', '2020-08-17', '299.72', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 5097328, 1, 1, NULL, '2020-08-29 13:26:22', 0, '_cb8da676737548159872195411006452.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00127'),
(311, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '53.10', '', '', 0, 51, 'Credit Card', '', 'Cleared', '133371 j002323', '', '0.00', '2020-08-17', '53.10', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 73404500, 1, 1, NULL, '2020-08-29 13:27:59', 0, '_c055dcc7316823159872206110705445.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00128'),
(312, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '360.67', '', '', 0, 51, 'Check', '', 'Cleared', '6901 j002324', '', '0.00', '2020-08-17', '360.67', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 29, 53814502, 1, 1, NULL, '2020-08-29 13:30:04', 0, '_de4d0312145271159872218010751447.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00129'),
(313, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '28.84', '', '', 0, 51, 'Credit Card', '', 'Cleared', '428289 j002321', '', '0.00', '2020-08-17', '28.84', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 46, 74367833, 1, 1, NULL, '2020-08-29 13:33:47', 0, '_7f5fc754305607159872238110407195.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00130'),
(314, 'Parts Costs ', 51, 'Expense', '', 72, 'Paint', '54.00', '', '', 0, 51, 'Check', '', 'Cleared', '663800 ', '', '0.00', '2020-08-18', '54.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 13, 86652291, 1, 1, NULL, '2020-08-29 13:36:02', 0, '_2000f632789752159872253510305877.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00131'),
(315, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '436.00', '', '', 0, 51, 'Credit Card', '', 'Cleared', '548196 ', '', '0.00', '2020-08-17', '436.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 34, 46782369, 1, 1, NULL, '2020-08-29 13:38:36', 0, '_9d033331650389159872269610163672.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00132'),
(316, 'Parts Costs ', 51, 'Expense', '', 72, 'Paint', '301.75', '', '', 0, 51, 'Check', '', 'Cleared', '82286-0021', '', '0.00', '2020-08-24', '301.75', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 39, 8873747, 1, 1, NULL, '2020-08-29 13:41:45', 0, '_7792a050869094159872288510525972.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00133'),
(317, 'Parts Costs ', 51, 'Expense', '', 77, 'Repairs & Maintenance', '110.00', '', '', 0, 51, 'Check', '', 'Cleared', '10002', '', '0.00', '2020-08-25', '110.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 53, 2803537, 1, 1, NULL, '2020-08-29 13:46:56', 0, '_e17a5a39694346159872318910366271.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00134'),
(318, 'Parts Costs ', 51, 'Expense', '', 77, 'Repairs & Maintenance', '90.00', '', '', 0, 51, 'Check', '', 'Cleared', '10003', '', '0.00', '2020-08-25', '90.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 53, 18279690, 1, 1, NULL, '2020-08-29 13:49:21', 0, '_0d352b4d565699159872333211118006.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00135'),
(319, 'Parts Costs ', 51, 'Expense', '', 77, 'Repairs & Maintenance', '90.00', '', '', 0, 51, 'Check', '', 'Cleared', '10004', '', '0.00', '2020-08-25', '90.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 53, 41646707, 1, 1, NULL, '2020-08-29 13:52:01', 0, '_440924c5734968159872347311106900.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00136'),
(320, 'Parts Costs ', 51, 'Expense', '', 77, 'Repairs & Maintenance', '90.00', '', '', 0, 51, 'Check', '', 'Cleared', '10005', '', '0.00', '2020-08-25', '90.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 53, 15646750, 1, 1, NULL, '2020-08-29 13:57:17', 0, '_ce059ef4126682159872381510059328.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00137'),
(321, 'Parts Costs ', 51, 'Expense', '', 77, 'Repairs & Maintenance', '110.00', '', '', 0, 51, 'Check', '', 'Cleared', '10006', '', '0.00', '2020-08-25', '110.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 53, 12420582, 1, 1, NULL, '2020-08-29 13:58:51', 0, '_72e6d323605899159872391310517610.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00138'),
(322, 'Parts Costs ', 51, 'Expense', '', 77, 'Repairs & Maintenance', '110.00', '', '', 0, 51, 'Check', '', 'Cleared', '10007', '', '0.00', '2020-08-25', '110.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 53, 87600469, 1, 1, NULL, '2020-08-29 14:00:44', 0, '_908c9a56944227159872400810969548.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00139'),
(323, 'Parts Costs ', 51, 'Expense', '', 77, 'Repairs & Maintenance', '90.00', '', '', 0, 51, 'Check', '', 'Cleared', '10008', '', '0.00', '2020-08-24', '90.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 53, 44027267, 1, 1, NULL, '2020-08-31 11:08:00', 0, '_8c9a14ff784357159888644810109879.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00140'),
(324, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '221.72', '', '', 0, 51, 'Check', '', 'Cleared', '133387 J002320', '', '0.00', '2020-08-31', '221.72', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 52510813, 1, 1, NULL, '2020-08-31 11:10:49', 0, '_85e5526a842996159888660210889540.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00141'),
(325, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '23.63', '', '', 0, 51, 'Check', '', 'Cleared', '133380', '', '0.00', '2020-08-18', '23.63', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 83092758, 1, 1, NULL, '2020-08-31 11:14:47', 0, '_402b0702911488159888683810348639.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00142'),
(326, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '23.46', '', '', 0, 51, 'Check', '', 'Cleared', '133386 J002299', '', '0.00', '2020-08-19', '23.46', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 76536925, 1, 1, NULL, '2020-08-31 11:20:56', 0, '_b7087c1f382613159888723710584142.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00143'),
(327, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '77.00', '', '', 0, 51, 'Credit Card', '', 'Cleared', '36079934 J002322', '', '0.00', '2020-08-17', '77.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 69, 4802044, 1, 1, NULL, '2020-08-31 11:58:38', 0, '_50f3f8c4401332159888949210437068.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00144'),
(328, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '80.86', '', '', 0, 51, 'Credit Card', '', 'Cleared', '9048991310', '', '0.00', '2020-08-20', '80.86', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 56, 93570865, 1, 1, NULL, '2020-08-31 12:42:57', 0, '_639d79cc646058159889214410502928.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00145'),
(329, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '45.10', '', '', 0, 51, 'Check', '', 'Cleared', '133408 J002331', '', '0.00', '2020-08-20', '45.10', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 66, 19604007, 1, 1, NULL, '2020-08-31 16:03:14', 0, '', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00146'),
(330, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '23.99', '', '', 0, 51, 'Credit Card', '', 'Cleared', '00100OT5748 J002320', '', '0.00', '2020-08-19', '23.99', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 13557209, 1, 1, NULL, '2020-08-31 16:06:42', 0, '_b67fb336175894159890435710408150.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00147'),
(331, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '38.34', '', '', 0, 51, 'Credit Card', '', 'Cleared', '0010OT6313 J002332', '', '0.00', '2020-08-20', '38.34', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 28964719, 1, 1, NULL, '2020-08-31 16:09:41', 0, '_16002f7a029559159890454111069052.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00148'),
(332, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '69.62', '', '', 0, 51, 'Credit Card', '', 'Cleared', '428488 DHO1', '', '0.00', '2020-08-20', '69.62', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 46, 78539598, 1, 1, NULL, '2020-08-31 17:05:10', 0, '_86b3e165921305159890788510455787.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00149'),
(333, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '25.00', '', '', 0, 51, 'Credit Card', '', 'Cleared', '12200820-059 J002334', '', '0.00', '2020-08-20', '25.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 22, 69317822, 1, 1, NULL, '2020-08-31 17:07:12', 0, '', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00150'),
(334, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '13.44', '', '', 0, 51, 'Cash', '', 'Cleared', '156512l j002256', '', '0.00', '2020-08-18', '13.44', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 62, 34257189, 1, 1, NULL, '2020-08-31 17:11:08', 0, '_31c97cbb772015159890819310687883.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00151'),
(335, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '57.06', '', '', 0, 51, 'Check', '', 'Cleared', '156622L J002258', '', '0.00', '2020-08-20', '57.06', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 62, 53923006, 1, 1, NULL, '2020-08-31 17:14:27', 0, '_c74214a3551418159890844310464522.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00152'),
(336, 'Parts Costs ', 51, 'Expense', '', 72, 'Paint', '148.76', '', '', 0, 51, 'Check', '', 'Cleared', '660735', '', '0.00', '2020-08-06', '148.76', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 13, 15146221, 1, 1, NULL, '2020-08-31 17:17:05', 0, '', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00153'),
(337, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '99.00', '', '', 0, 51, 'Credit Card', '', 'Cleared', '200806102329 J002273', '', '0.00', '2020-08-06', '99.00', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 19, 70562965, 1, 1, NULL, '2020-08-31 17:21:06', 0, '_dd055f53762690159890884410032621.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00154'),
(338, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '48.60', '', '', 0, 51, 'Check', '', 'Cleared', '6846 J00281', '', '0.00', '2020-08-06', '48.60', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 29, 92144002, 1, 1, NULL, '2020-08-31 17:45:47', 0, '_2e5ac40b062818159891031710548001.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00155'),
(339, 'Parts Costs ', 51, 'Expense', '', 74, 'Parts', '26.14', '', '', 0, 51, 'Credit Card', '', 'Cleared', '0010OS3293 J002282', '', '0.00', '2020-08-06', '26.14', '0.00', '0.00', 0, 'USD', 0, NULL, NULL, NULL, '1.0000', '0.0000', 2, 46868779, 1, 1, NULL, '2020-08-31 17:48:18', 0, '_8d9fc230812592159891048410189575.pdf', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00156'),
(350, 'Checking Account', 1, 'Expense', NULL, NULL, 'Parts', '0.00', '', 'Training - Vendor', 0, 65, 'Cash', '', 'Cleared', 'Purchase 36 Payment', '', '0.00', '2020-10-22', '0.00', '0.00', '0.00', 0, NULL, 0, '', NULL, NULL, '1.0000', '0.0000', 0, 9298456, 0, NULL, NULL, '2020-10-22 16:28:31', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 36, NULL),
(351, 'Checking Account', 1, 'Expense', NULL, NULL, 'Uncategorized', '440.50', '', 'Training - Vendor', 0, 65, 'Cash', '', 'Cleared', 'Purchase 36 Payment', '', '0.00', '2020-10-22', '440.50', '0.00', '0.00', 0, NULL, 0, '', NULL, NULL, '1.0000', '0.0000', 0, 39703113, 0, NULL, NULL, '2020-10-22 16:29:43', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 36, NULL),
(352, 'Checking Account', 1, 'Expense', NULL, NULL, 'Parts', '440.50', '', 'Training - Vendor', 0, 65, 'Cash', '', 'Cleared', 'Purchase 37 Payment', '', '0.00', '2020-10-22', '440.50', '0.00', '0.00', 0, NULL, 0, '', NULL, NULL, '1.0000', '0.0000', 0, 44877604, 0, NULL, NULL, '2020-10-22 16:32:57', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 37, NULL),
(353, 'Checking Account', 1, 'Income', NULL, NULL, 'Parts', '2248.32', 'Training - Customer', '', 64, 0, 'Cash', '', 'Cleared', 'Invoice 255 Payment', '', '0.00', '2020-10-30', '0.00', '2248.32', '0.00', 255, 'USD', 0, '', NULL, NULL, '1.0000', '0.0000', 0, 21670108, 2, NULL, NULL, '2020-10-30 12:29:07', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_units`
--

CREATE TABLE `sys_units` (
  `id` int(11) NOT NULL,
  `type` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `reference` varchar(200) DEFAULT NULL,
  `conversion_factor` decimal(16,2) NOT NULL DEFAULT '0.00',
  `sorder` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_units`
--

INSERT INTO `sys_units` (`id`, `type`, `name`, `reference`, `conversion_factor`, `sorder`) VALUES
(1, 'Weight', '900gm', NULL, '0.00', 0),
(2, 'Weight', '3785.41', NULL, '0.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sys_users`
--

CREATE TABLE `sys_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `phonenumber` varchar(20) DEFAULT NULL,
  `password` text,
  `user_type` varchar(50) NOT NULL DEFAULT 'Full Access',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `last_login` datetime DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `creationdate` datetime NOT NULL,
  `otp` enum('Yes','No') NOT NULL DEFAULT 'No',
  `pin_enabled` enum('Yes','No') NOT NULL DEFAULT 'No',
  `pin` mediumtext NOT NULL,
  `img` text NOT NULL,
  `api` enum('Yes','No') DEFAULT 'No',
  `pwresetkey` varchar(100) NOT NULL,
  `keyexpire` varchar(100) NOT NULL,
  `roleid` int(11) NOT NULL DEFAULT '0',
  `role` varchar(200) DEFAULT NULL,
  `last_activity` datetime DEFAULT NULL,
  `autologin` varchar(200) DEFAULT NULL,
  `at` varchar(200) DEFAULT NULL,
  `landing_page` varchar(200) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `notes` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `sms_notify` int(1) DEFAULT NULL,
  `email_notify` int(1) DEFAULT NULL,
  `slack_notify` int(1) DEFAULT NULL,
  `job_title` varchar(150) DEFAULT NULL,
  `date_hired` date DEFAULT NULL,
  `department_id` int(11) DEFAULT '0',
  `manager_id` int(11) DEFAULT '0',
  `pay_frequency` varchar(150) DEFAULT NULL,
  `currency` char(3) DEFAULT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `employee_id` varchar(150) DEFAULT NULL,
  `legal_name_title` varchar(150) DEFAULT NULL,
  `legal_name_first` varchar(150) DEFAULT NULL,
  `legal_name_mi` varchar(150) DEFAULT NULL,
  `legal_name_last` varchar(150) DEFAULT NULL,
  `banking_name` varchar(150) DEFAULT NULL,
  `ssn` varchar(150) DEFAULT NULL,
  `gender` varchar(150) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `marital_status` varchar(150) DEFAULT NULL,
  `ethnicity` varchar(150) DEFAULT NULL,
  `is_citizen` tinyint(1) NOT NULL DEFAULT '1',
  `has_i9_form` varchar(150) DEFAULT NULL,
  `work_authorization_expires` date DEFAULT NULL,
  `address_line_1` varchar(150) DEFAULT NULL,
  `address_line_2` varchar(150) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `state` varchar(150) DEFAULT NULL,
  `zip` varchar(150) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `work_phone` varchar(150) DEFAULT NULL,
  `work_mobile` varchar(150) DEFAULT NULL,
  `work_fax` varchar(150) DEFAULT NULL,
  `cc_email` varchar(150) DEFAULT NULL,
  `other` varchar(150) DEFAULT NULL,
  `emergency_contact_name_1` varchar(150) DEFAULT NULL,
  `emergency_contact_phone_1` varchar(150) DEFAULT NULL,
  `emergency_contact_relation_1` varchar(150) DEFAULT NULL,
  `emergency_contact_name_2` varchar(150) DEFAULT NULL,
  `emergency_contact_phone_2` varchar(150) DEFAULT NULL,
  `emergency_contact_relation_2` varchar(150) DEFAULT NULL,
  `last_day_worked` date DEFAULT NULL,
  `last_day_on_benefits` date DEFAULT NULL,
  `last_day_on_payroll` date DEFAULT NULL,
  `termination_type` varchar(150) DEFAULT NULL,
  `termination_reason` varchar(150) DEFAULT NULL,
  `is_recommended` tinyint(1) NOT NULL DEFAULT '1',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `facebook` varchar(150) DEFAULT NULL,
  `google` varchar(150) DEFAULT NULL,
  `linkedin` varchar(150) DEFAULT NULL,
  `skype` varchar(150) DEFAULT NULL,
  `twitter` varchar(150) DEFAULT NULL,
  `summary` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_users`
--

INSERT INTO `sys_users` (`id`, `username`, `fullname`, `phonenumber`, `password`, `user_type`, `status`, `last_login`, `email`, `creationdate`, `otp`, `pin_enabled`, `pin`, `img`, `api`, `pwresetkey`, `keyexpire`, `roleid`, `role`, `last_activity`, `autologin`, `at`, `landing_page`, `language`, `notes`, `created_at`, `updated_at`, `sms_notify`, `email_notify`, `slack_notify`, `job_title`, `date_hired`, `department_id`, `manager_id`, `pay_frequency`, `currency`, `amount`, `employee_id`, `legal_name_title`, `legal_name_first`, `legal_name_mi`, `legal_name_last`, `banking_name`, `ssn`, `gender`, `date_of_birth`, `marital_status`, `ethnicity`, `is_citizen`, `has_i9_form`, `work_authorization_expires`, `address_line_1`, `address_line_2`, `city`, `state`, `zip`, `country`, `work_phone`, `work_mobile`, `work_fax`, `cc_email`, `other`, `emergency_contact_name_1`, `emergency_contact_phone_1`, `emergency_contact_relation_1`, `emergency_contact_name_2`, `emergency_contact_phone_2`, `emergency_contact_relation_2`, `last_day_worked`, `last_day_on_benefits`, `last_day_on_payroll`, `termination_type`, `termination_reason`, `is_recommended`, `is_active`, `facebook`, `google`, `linkedin`, `skype`, `twitter`, `summary`) VALUES
(1, 'admin@autohiveinc.com', 'Admin', '738072957', '$2y$10$zozBeZUSJIWy0I6dvNvwd.ZgOZNQMGVuRZNC4czNbrBZEJKnGQX7C', 'aAdmin', 'Active', '2020-08-31 16:02:45', '', '2014-10-20 01:43:07', 'No', 'No', 'Y6AOTKNSQ5D7J4FU', '', 'No', '', '0', 4, 'aAdmin', NULL, 'fabrqohv2619drh41v771', NULL, NULL, 'en', 'test', NULL, '2020-07-22 13:49:34', 1, 1, NULL, '', NULL, 0, 0, 'Weekly', 'USD', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', '', '', 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, ''),
(2, 'info@topfinalyst.com', 'Fez', '', '$2y$10$EeGFcUzGUrAU1iifmoyP8eVj3ro9Spyrt83w97HieSEbO7/66dizy', 'Admin', 'Active', '2020-11-10 10:19:37', '', '2020-06-13 18:08:38', 'No', 'No', '', '', 'No', '', '', 0, '', NULL, 'dc7dcllabqw1iwev32jv2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Weekly', NULL, '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'fez@topfinalyst.com', 'feztest', '', '$2y$10$dCEl7lCYzIH63V2w7oJysOJexviHTvBicNIfrNOoZPRoWh0WU7r16', 'Employee', 'Active', '2020-10-27 01:30:09', '', '2020-07-13 12:52:36', 'No', 'No', '', '', 'No', '', '', 3, 'Employee', NULL, '', NULL, NULL, 'en', NULL, NULL, '2020-10-30 12:57:10', NULL, NULL, NULL, '', NULL, 0, 0, 'Monthly', 'USD', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', '', '', 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `id` int(10) NOT NULL,
  `cid` int(11) NOT NULL,
  `van` varchar(255) DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `make` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `sub_model` varchar(255) DEFAULT NULL,
  `engine` varchar(255) DEFAULT NULL,
  `license` varchar(255) DEFAULT NULL,
  `vin` varchar(255) DEFAULT NULL,
  `mileage` varchar(255) DEFAULT NULL,
  `mileage_reminder` varchar(255) DEFAULT NULL,
  `mileage_reminder_date` date NOT NULL,
  `transmission` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`id`, `cid`, `van`, `year`, `make`, `model`, `sub_model`, `engine`, `license`, `vin`, `mileage`, `mileage_reminder`, `mileage_reminder_date`, `transmission`, `comments`, `image`) VALUES
(4, 54, 'Van 9', 2018, 'Mercedes', 'Sprinter', 'Sub-Sprinter', '123', 'LKV5874', '123', '41719', '45719', '2020-09-13', 'Automatic', 'as', ''),
(5, 54, 'Van 14', 2018, 'Mercedes', 'Sprinter', 'Sub-Sprinter', '123', 'LKV5606', '123', '40978', '45789', '2020-09-13', 'Automatic', 'Last service on july 13, 2020', ''),
(6, 54, '31', 2019, 'Ford', 'promoter 2500', '2500', '3.6 flex', 'LTS0972 ', '3C6TRVCG6KE503722', '34277', '35000', '2020-07-15', 'Automatic', 'CK ENGINE LIGHT BRAKE BLEED', ''),
(7, 63, 'NONE', 2020, 'Mercedes', 'TRUCK', 'SPORTAGE 2WD', '2.4L', 'NONE', 'KNDPC3A27D7470272', '0', 'NONE', '2020-07-18', 'Automatic', 'FOG LIGHT FIX', ''),
(8, 54, '19', 2018, 'Mercedes', 'sprinter', '2500', '3.8', '1478', '147', '124', '135', '2020-07-31', 'Automatic', ' this is comment', ''),
(9, 54, 'ONTC22', 2019, 'Mercedes', 'SPRINTER ', '2500', '3', 'MVL6089', '0', '16250', '0', '2020-07-21', 'Automatic', ' ALL 4 TIRES ', ''),
(10, 64, '2', 2020, 'Mercedes', 'Sprinter', '2500', '3.6', 'HUY-0988', '123456789', '50000', '55000', '2020-07-22', 'Automatic', ' ', ''),
(11, 64, '1111', 2020, 'Mercedes', 'test', '1', '1', '11111111', '1111jh255252', '0', '1', '2020-07-24', 'Automatic', ' ', ''),
(12, 64, 'ls600hl', 2008, 'Lexus', 'LS 600', 'HL', '5', 'NONE', 'NONE', '90000', 'NONE', '2020-07-27', 'Automatic', ' ', ''),
(13, 50, '2020', 2018, 'Mercedes', 'Sprinter', 'NONE', '3L', 'MMV8120 TX', 'WD3PE7CD9JP633087	', '50464', 'none', '2020-07-27', 'Automatic', ' ', ''),
(14, 57, 'NONE', 2016, 'Cadillac', 'Escalade', 'NONE', '6.2 L', 'NONE', '1GYS4KKJ1GR342345', '0', '0', '2020-07-27', 'Automatic', ' ', ''),
(15, 72, '-', 2017, 'Toyota', 'Corolla', 'SE', '1.8L', 'JTF5248 TX', '5YFBURHE6HP702584	', '-', '-', '2020-07-28', 'Automatic', ' ', ''),
(16, 54, 'ONTC 35', 2019, 'Dodge', 'Promaster ', '2500', '3.6L', 'LWF7257', '3C6TRVCG1KE507631', '30560', 'NONE', '2020-07-28', 'Automatic', ' 2 FRONT TIRES \r\nFRONT BRAKE PADS ', ''),
(17, 50, '1044', 2018, 'Mercedes', 'Sprinter', '0', '3L', 'LKV5721 TX', 'WD3PE7CD2JP639152', '41037', '0', '2020-07-28', 'Automatic', ' WRONG FUEL', ''),
(18, 50, '4006', 2017, 'Nissan', 'NV', 'NONE', '4.0L', 'KGJ5779 TX', '1N6BF0LY6HN809829	', '65802', 'NONE', '2020-07-28', 'Automatic', ' ', ''),
(19, 50, '1003', 2017, 'Nissan', 'NV', '-', '4.0L', 'KDW0962', '1N6BF0LY7HN809709', '63570', '-', '2020-07-29', 'Automatic', ' ', ''),
(20, 50, '1007', 2017, 'Nissan', 'NV', '-', '4.0L', 'JZY8017', '1N6BF0LY9HN809551	', '61752', '-', '2020-07-29', 'Automatic', ' ', ''),
(21, 50, '1007', 2017, 'Nissan', 'NV', '-', '4.0L', 'JZY8017', '1N6BF0LY9HN809551	', '61752', '-', '2020-07-29', 'Automatic', ' ', ''),
(22, 50, '1007', 2017, 'Nissan', 'NV', '2500', '4', 'JZY8017', '1N6BF0LY9HN809551', '61752', 'NONE', '2020-07-29', 'Automatic', ' BODY WORK ', ''),
(23, 57, '-', 2016, 'Land Rover', 'Range Rover', '-', '5L', '-', 'SALGS2EF2GA316837	', '-', '-', '2020-07-29', 'Automatic', ' BLACK', ''),
(24, 57, '-', 2017, 'Ford', 'F-250', '-', '6.7L', '-', '1FT7W2BT2HEB16878', '0', '-', '2020-07-29', 'Automatic', ' WHITE', ''),
(25, 50, '3322', 2019, 'Ford', 'Transit', 'van', '3.7L', 'MTD7269 TX', '1FTYR3XMXKKB13335	', '2074', '-', '2020-07-29', 'Automatic', ' BLUE', ''),
(26, 57, '-', 2016, 'Land Rover', 'Range Rover', '-', '5L', '-', 'SALGV2EF7GA284345	', '0', '-', '2020-07-29', 'Automatic', ' BLACK', ''),
(27, 54, 'ONTC 4', 2017, 'Mercedes', 'SPRINTER 2500', '-', '3.0L', 'LKV4017 TX', 'WD3PE7CDXJP634524', '37042', '-', '2020-07-29', 'Automatic', ' ', ''),
(28, 54, 'ONTC 13', 2018, 'Mercedes', 'SPRNTER', '-', '3L', 'LJM7360 TX', 'WD3PE7CD4JP633577', '37793', '-', '2020-07-29', 'Automatic', ' BLUE', ''),
(29, 53, '-', 2015, 'Chrysler', '200', '-', '2.4L', '-', '1c3cccfb6fn531928	', '0', '-', '2020-07-30', 'Automatic', ' RED', ''),
(30, 61, '-', 2015, 'Mitsubishi', 'Mirage', '-', '1.2L', '-', 'ML32A3HJ5FH038969	', '0', '-', '2020-07-30', 'Automatic', ' GREY', ''),
(31, 54, 'ONTC 05', 2018, 'Mercedes', 'Sprinter', '2500', '3L', 'LKV4923 ', 'WD3PE7CD8JP641374', '42032', '-', '2020-07-30', 'Automatic', ' BLUE', ''),
(32, 57, 'BO7531', 2018, 'Ford', 'F-250	', '-', '6.7L', '-', '1FT7W2BTXJEB07531	', '0', '-', '2020-07-30', 'Automatic', ' ', ''),
(34, 50, '1048', 2020, 'Mercedes', 'Sprinter', '-', '3L', 'LKV5368 TX', 'WD3PE7CD6JP632981	', '48238', '-', '2020-07-31', 'Automatic', ' BLUE', ''),
(35, 63, '-', 2007, 'Ford', 'MUSTANG', '-', '4.0L', '-', '1ZVFT80N275336836	', '0', '-', '2020-07-31', 'Automatic', ' BLACK', ''),
(36, 71, '-', 2011, 'Mercedes', 'E-Class', '-', '3.50l', 'GSJ1489', 'WDDKJ5GB8BF100220', '0', '-', '2020-07-31', 'Automatic', ' silver', ''),
(37, 59, '-', 2018, 'Nissan', 'SENTRA', '-', '1.8L', 'NBS7948 TX', '3N1AB7AP0JY339841	', '0', '-', '2020-08-01', 'Automatic', ' BLACK', ''),
(38, 73, '-', 2020, 'Abarth', 'E-250	', '-', '4.6L	', 'GLT1628', '1FTNE2EW2BDB16229', '0', '0', '2020-08-01', 'Automatic', ' HEAD JOB', ''),
(39, 53, '-', 2020, 'Infiniti', 'Q50', '-', '3L	', '0', 'JN1EV7AP9LM203108', '0', '0', '2020-08-03', 'Automatic', 'METALLIC BABY BLUE', ''),
(40, 54, 'ONTC 4', 2018, 'Mercedes', 'Mercedes', 'Sprinter', '3L', 'LKV4017', 'WD3PE7CDXJP634524', '37415', '2012-01-06', '2020-08-04', 'Automatic', ' ', ''),
(41, 59, 'CRV', 2006, 'Honda', 'CRV', 'VAN ', '2.4', 'BPR8660', 'JHLRD78886C009862', '1', '2', '2020-08-05', 'Automatic', ' ', ''),
(42, 57, '2013XC60', 2013, 'Volvo', 'XC', '60', '3.0L ', 'N/A', 'YV4902DZ5D2438175', '0', '0', '2020-08-06', 'Automatic', ' STARTING ISSUE ', ''),
(43, 76, '2018-SENTRA', 2018, 'Nissan', 'SENTRA', 'L4', '1.8', 'NONE', '3N1AB7APOJL640025', '0', '0', '2020-08-12', 'Automatic', ' BODY WORK- HOOD,FRONT BUMPER 450=PLARTS', ''),
(44, 50, '1038', 2018, 'Mercedes', 'sprinter', '2500', '3', 'LKV5752', 'WD3PE7CD6JP632009', '34429', '0', '2020-08-12', 'Automatic', ' SIDE DOOR LOCK', ''),
(45, 83, 'WEEK30', 2020, 'Abarth', 'DH01', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '0', '2020-08-19', 'Automatic', ' TIRES:7 BRAKES REAR:5 FRONT:3 ', ''),
(46, 64, '12345678', 2006, 'Toyota', 'SEINNA', 'LE', '3.5L', '0', '773566', '0', '0', '2020-08-19', 'Automatic', ' RADIATOR REPLACE ', ''),
(47, 83, 'WEEK30-DH01', 2020, 'Abarth', '0', '0', '0', '0', '0', '0', '0', '2020-08-19', 'Automatic', ' TIRES:9 BRAKES: 3-FRONT 6-REAR : ', ''),
(48, 54, 'ONTC14', 2018, 'Mercedes', 'SPRINTER', '2500', '3.0L', 'ONTC14', '0', '0', '0', '2020-08-25', 'Automatic', ' BODY WORK', ''),
(49, 50, '1017', 2018, 'Mercedes', 'sprinter', '2500', '3.0l', 'KDW0964', '1N6BF0LY9HN809730', '47255', '0', '2020-08-26', 'Automatic', ' ', ''),
(50, 50, '1065', 2019, 'Ford', 'TRANSIT-250', 'XL', '3.7L', 'MVL4171', '1FTYR3XM3KKB89768', '', '', '2020-11-28', 'Automatic', '', ''),
(51, 50, '1064', 2019, 'Ford', 'TRANSIT-250', 'XL', '3.7L', 'MVL5990', '1FTYR3XM1KKB90384', '', '', '2020-11-28', 'Automatic', '', ''),
(52, 50, '1063', 2019, 'Ford', 'TRANSIT-250', 'XL', '3.7L', 'MVL4187', '1FTYR3XM9KKB90407', '', '', '2020-11-28', 'Automatic', '', ''),
(53, 50, '1062', 2019, 'Ford', 'TRANSIT-250', 'XL', '3.7L', 'MXH8753', '1FTYR3XM1KKB90403', '', '', '2020-11-28', 'Automatic', '', ''),
(54, 50, '1061', 2019, 'Ford', 'TRANSIT-250', 'XL', '3.7L', 'MVL5795', '1FTYR3XM9KKB89774', '', '', '2020-11-28', 'Automatic', '', ''),
(55, 50, '1060', 2019, 'Ford', 'TRANSIT-250', 'XL', '3.7L', 'MVL4619', '1FTYR3XM9KKB90388', '', '', '2020-11-28', 'Automatic', '', ''),
(56, 50, '4011', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'N478237', 'WD3PE7CD5JP630784', '', '', '2020-11-28', 'Automatic', '', ''),
(57, 50, '2026', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LLF2203', 'WD3PE7CD4JP632266', '', '', '2020-11-28', 'Automatic', '', ''),
(58, 50, '2024', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LKV5960', 'WD3PE7CD8JP638832', '', '', '2020-11-28', 'Automatic', '', ''),
(59, 50, '2023', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LKV6450', 'WD3PE7CD6JP639154', '', '', '2020-11-28', 'Automatic', '', ''),
(60, 50, '2022', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LLF2103', 'WD3PE7CD3JP632016', '', '', '2020-11-28', 'Automatic', '', ''),
(61, 50, '2021', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LKV6989', 'WD3PE7CD5JP632017', '', '', '2020-11-28', 'Automatic', '', ''),
(62, 50, '2020', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LLF2107', 'WD3PE7CD9JP633087', '', '', '2020-11-28', 'Automatic', '', ''),
(63, 50, '2019', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LKV6581', 'WD3PE7CD5JP633300', '', '', '2020-11-28', 'Automatic', '', ''),
(64, 50, '2018', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LKV5658', 'WD3PE7CDXJP632269', '', '', '2020-11-28', 'Automatic', '', ''),
(65, 50, '2017', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LKV6988', 'WD3PE7CD4JP632378', '', '', '2020-11-28', 'Automatic', '', ''),
(66, 50, '2016', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LKV6684', 'WD3PE7CD2JP632394', '', '', '2020-11-28', 'Automatic', '', ''),
(67, 50, '2015', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LKV6246', 'WD3PE7CD9JP638421', '', '', '2020-11-28', 'Automatic', '', ''),
(68, 50, '2014', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LLF2204', 'WD3PE7CD4JP632414', '', '', '2020-11-28', 'Automatic', '', ''),
(69, 50, '2013', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LKV6685', 'WD3PE7CD1JP632418', '', '', '2020-11-28', 'Automatic', '', ''),
(70, 50, '2011', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LKV6451', 'WD3PE7CD1JP630782', '', '', '2020-11-28', 'Automatic', '', ''),
(71, 50, '2010', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LKV5531', 'WD3PE7CD0JP632748', '', '', '2020-11-28', 'Automatic', '', ''),
(72, 50, '2009', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LKV5530', 'WD3PE7CD2JP639149', '', '', '2020-11-28', 'Automatic', '', ''),
(73, 50, '2008', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LKV6245', 'WD3PE7CD4JP637645', '', '', '2020-11-28', 'Automatic', '', ''),
(74, 50, '2007', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LKV5433', 'WD3PE7CDXJP638833', '', '', '2020-11-28', 'Automatic', '', ''),
(75, 50, '2006', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LLF2108', 'WD3PE7CD6JP632401', '', '', '2020-11-28', 'Automatic', '', ''),
(76, 50, '2005', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LKV5432', 'WD3PE7CD3JP639130', '', '', '2020-11-28', 'Automatic', '', ''),
(77, 50, '2004', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LKV5659', 'WD3PE7CD6JP632267', '', '', '2020-11-28', 'Automatic', '', ''),
(78, 50, '2003', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LKV5959', 'WD3PE7CD4JP639136', '', '', '2020-11-28', 'Automatic', '', ''),
(79, 50, '2002', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LFX1980', 'WD3PE7CD5JP638822', '', '', '2020-11-28', 'Automatic', '', ''),
(80, 50, '2001', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LKV4920', 'WD3PE7CD8JP639401', '', '', '2020-11-28', 'Automatic', '', ''),
(81, 50, '1055', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LPD9259', 'WD3PE7CD8JP632979', '', '', '2020-11-28', 'Automatic', '', ''),
(82, 50, '1050', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LKV4395', 'WD3PE7CD9JP639150', '', '', '2020-11-28', 'Automatic', '', ''),
(83, 50, '1048', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LKV5368', 'WD3PE7CD6JP632981', '', '', '2020-11-28', 'Automatic', '', ''),
(84, 50, '1047', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LKV5722', 'WD3PE7CDXJP632434', '', '', '2020-11-28', 'Automatic', '', ''),
(85, 50, '1045', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LKV4919', 'WD3PE7CD6JP639400', '', '', '2020-11-28', 'Automatic', '', ''),
(86, 50, '1044', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LKV5721', 'WD3PE7CD2JP639152', '', '', '2020-11-28', 'Automatic', '', ''),
(87, 50, '1043', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LKV5396', 'WD3PE7CD2JP635859', '', '', '2020-11-28', 'Automatic', '', ''),
(88, 50, '1042', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LKV5230', 'WD3PE7CDXJP635561', '', '', '2020-11-28', 'Automatic', '', ''),
(89, 50, '1041', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LKV5717', 'WD3PE7CD1JP635030', '', '', '2020-11-28', 'Automatic', '', ''),
(90, 50, '1040', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LKV5397', 'WD3PE7CD6JP635010', '', '', '2020-11-28', 'Automatic', '', ''),
(91, 50, '1037', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LKV5229', 'WD3PE7CD2JP639409', '', '', '2020-11-28', 'Automatic', '', ''),
(92, 50, '1036', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LLF2102', 'WD3PE7CD9JP632747', '', '', '2020-11-28', 'Automatic', '', ''),
(93, 50, '1035', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LFX1989', 'WD3PE7CD1JP632273', '', '', '2020-11-28', 'Automatic', '', ''),
(94, 50, '1034', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LCK9265', 'WD3PE7CD8JP621772', '', '', '2020-11-28', 'Automatic', '', ''),
(95, 50, '1033', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LFW5031', 'WD3PE7CDXJP621787', '', '', '2020-11-28', 'Automatic', '', ''),
(96, 50, '1031', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LFW5360', 'WD3PE7CD3JP622442', '', '', '2020-11-28', 'Automatic', '', ''),
(97, 50, '1030', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LCK9536', 'WD3PE7CD6JP621771', '', '', '2020-11-28', 'Automatic', '', ''),
(98, 50, '1029', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LCL7541', 'WD3PE7CDXJP622440', '', '', '2020-11-28', 'Automatic', '', ''),
(99, 50, '1028', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LCK9822', 'WD3PE7CD3JP621775', '', '', '2020-11-28', 'Automatic', '', ''),
(100, 50, '1027', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LCK9292', 'WD3PE7CD4JP621784', '', '', '2020-11-28', 'Automatic', '', ''),
(101, 50, '1026', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LCK9535', 'WD3PE7CD3JP621856', '', '', '2020-11-28', 'Automatic', '', ''),
(102, 50, '1025', 2018, 'Mercedes', 'Sprinter 2500', 'TX', '3.0L', 'LCK9071', 'WD3PE7CD9JP621859', '', '', '2020-11-28', 'Automatic', '', ''),
(103, 50, '1001', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'KDW0966', '1N6BF0LY4HN809702', '', '', '2020-11-28', 'Automatic', '', ''),
(104, 50, '1054', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'KDW1390', '1N6BF0LY8HN810271', '', '', '2020-11-28', 'Automatic', '', ''),
(105, 50, '1023', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'JZY8022', '1N6BF0LY1HN808538', '', '', '2020-11-28', 'Automatic', '', ''),
(106, 50, '1022', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'KDW0963', '1N6BF0LY9HN809744', '', '', '2020-11-28', 'Automatic', '', ''),
(107, 50, '0016', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'KNF3377', '1N6BF0LY3JN802620', '', '', '2020-11-28', 'Automatic', '', ''),
(108, 50, '1021', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'KLB3163', '1N6BF0LY3HN809299', '', '', '2020-11-28', 'Automatic', '', ''),
(109, 50, '1020', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'KLV5072', '1N6BF0LY2HN811044', '', '', '2020-11-28', 'Automatic', '', ''),
(110, 50, '0010', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'KLV5071', '1N6BF0LY6JN800408', '', '', '2020-11-28', 'Automatic', '', ''),
(111, 50, '3008', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', '72V9498', '1N6BF0LY2HN811822', '', '', '2020-11-28', 'Automatic', '', ''),
(112, 50, '4001', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'KKC3056', '1N6BF0LY1HN810631', '', '', '2020-11-28', 'Automatic', '', ''),
(113, 50, '0005', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'KKC3766', '1N6BF0LY1JN800137', '', '', '2020-11-28', 'Automatic', '', ''),
(114, 50, '3004', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'KKB5192', '1N6BF0LY5HN811409', '', '', '2020-11-28', 'Automatic', '', ''),
(115, 50, '1019', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'KKB5197', '1N6BF0LY6HN809653', '', '', '2020-11-28', 'Automatic', '', ''),
(116, 50, '1056', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'KKB5191', '1N6BF0LY9HN809839', '', '', '2020-11-28', 'Automatic', '', ''),
(117, 50, '3001', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'KKB5190', '1N6BF0LY3HN810467', '', '', '2020-11-28', 'Automatic', '', ''),
(118, 50, '3240', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'KLV5074', '1N6BF0LYXJN801271', '', '', '2020-11-28', 'Automatic', '', ''),
(119, 50, '1016', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'KDW2414', '1N6BF0LYXHN809669', '', '', '2020-11-28', 'Automatic', '', ''),
(120, 50, '4007', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'KDB1889', '1N6BF0LY8HN810593', '', '', '2020-11-28', 'Automatic', '', ''),
(121, 50, '4006', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'KGJ5779', '1N6BF0LY6HN809829', '', '', '2020-11-28', 'Automatic', '', ''),
(122, 50, '1014', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'KDB1891', '1N6BF0LY4HN809795', '', '', '2020-11-28', 'Automatic', '', ''),
(123, 50, '4005', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'KGJ5817', '1N6BF0LY7HN811430', '', '', '2020-11-28', 'Automatic', '', ''),
(124, 50, '1012', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'KGH4221', '1N6BF0LY5HN803083', '', '', '2020-11-28', 'Automatic', '', ''),
(125, 50, '1053', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'KGH4222', '1N6BF0LY1HN802982', '', '', '2020-11-28', 'Automatic', '', ''),
(126, 50, '1011', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'KGH4223', '1N6BF0LY4HN810316', '', '', '2020-11-28', 'Automatic', '', ''),
(127, 50, '1010', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'KFS1702', '1N6BF0LY3HN809268', '', '', '2020-11-28', 'Automatic', '', ''),
(128, 50, '1009', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'JZY8023', '1N6BF0LYXHN807906', '', '', '2020-11-28', 'Automatic', '', ''),
(129, 50, '1008', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'JJY2126', '1N6BF0LY9HN809503', '', '', '2020-11-28', 'Automatic', '', ''),
(130, 50, '4004', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'JJY2125', '1N6BF0LY5HN809482', '', '', '2020-11-28', 'Automatic', '', ''),
(131, 50, '1006', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'JZY8016', '1N6BF0LY1HN809396', '', '', '2020-11-28', 'Automatic', '', ''),
(132, 50, '1005', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'KBH9382', '1N6BF0LYXHN808862', '', '', '2020-11-28', 'Automatic', '', ''),
(133, 50, '1004', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'JZY8018', '1N6BF0LY1HN809561', '', '', '2020-11-28', 'Automatic', '', ''),
(134, 50, '4003', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'JZY8019', '1N6BF0LY7HN809368', '', '', '2020-11-28', 'Automatic', '', ''),
(135, 50, 'FL45566', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'JPT335555', 'N44556676666', '', '', '2020-11-28', 'Automatic', '', ''),
(136, 50, 'FL45566', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'JPT33', 'N4455667', '', '', '2020-11-28', 'Automatic', '', ''),
(137, 50, '1002', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'KDW0965', '1N6BF0LY4HN809683', '', '', '2020-11-28', 'Automatic', '', ''),
(138, 50, '1058', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'MVG9115', '1N6BF0LY8HN810545', '', '', '2020-11-28', 'Automatic', '', ''),
(139, 50, '4002', 2017, 'Nissan', 'NV 2500', 'HD', '4.0L', 'KDW1219', '1N6BF0LYXHN809803', '', '', '2020-11-28', 'Automatic', '', ''),
(140, 55, 'Van - Test', 2021, 'Mercedes', 'Sprinter', 'S', 'V6', 'LKV5874', '5YFBURHE8GP483576', '40978', '45789', '2020-10-21', 'Automatic', ' ', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_notes`
--
ALTER TABLE `app_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_password_manager`
--
ALTER TABLE `app_password_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_sms`
--
ALTER TABLE `app_sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_sms_drivers`
--
ALTER TABLE `app_sms_drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_sms_templates`
--
ALTER TABLE `app_sms_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_categories`
--
ALTER TABLE `asset_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clx_integrations`
--
ALTER TABLE `clx_integrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clx_projects`
--
ALTER TABLE `clx_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clx_shared_preferences`
--
ALTER TABLE `clx_shared_preferences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credit_cards`
--
ALTER TABLE `credit_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_accounts`
--
ALTER TABLE `crm_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_customfields`
--
ALTER TABLE `crm_customfields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_customfieldsvalues`
--
ALTER TABLE `crm_customfieldsvalues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_groups`
--
ALTER TABLE `crm_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_industries`
--
ALTER TABLE `crm_industries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_leads`
--
ALTER TABLE `crm_leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_lead_sources`
--
ALTER TABLE `crm_lead_sources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_lead_status`
--
ALTER TABLE `crm_lead_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_salutations`
--
ALTER TABLE `crm_salutations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `end_users`
--
ALTER TABLE `end_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_types`
--
ALTER TABLE `expense_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ib_assets`
--
ALTER TABLE `ib_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ib_doc_rel`
--
ALTER TABLE `ib_doc_rel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ib_invoice_access_log`
--
ALTER TABLE `ib_invoice_access_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ib_kb`
--
ALTER TABLE `ib_kb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ib_kb_groups`
--
ALTER TABLE `ib_kb_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ib_kb_rel`
--
ALTER TABLE `ib_kb_rel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ib_kb_replies`
--
ALTER TABLE `ib_kb_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inspections`
--
ALTER TABLE `inspections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_categories`
--
ALTER TABLE `item_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_attachments`
--
ALTER TABLE `order_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relations`
--
ALTER TABLE `relations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_accounts`
--
ALTER TABLE `sys_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_activity`
--
ALTER TABLE `sys_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_api`
--
ALTER TABLE `sys_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_appconfig`
--
ALTER TABLE `sys_appconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_canned_responses`
--
ALTER TABLE `sys_canned_responses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_cart`
--
ALTER TABLE `sys_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_cats`
--
ALTER TABLE `sys_cats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_companies`
--
ALTER TABLE `sys_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_currencies`
--
ALTER TABLE `sys_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_documents`
--
ALTER TABLE `sys_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_emailconfig`
--
ALTER TABLE `sys_emailconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_email_logs`
--
ALTER TABLE `sys_email_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_email_templates`
--
ALTER TABLE `sys_email_templates`
  ADD PRIMARY KEY (`id`,`language_id`),
  ADD KEY `tplname` (`tplname`(32));

--
-- Indexes for table `sys_events`
--
ALTER TABLE `sys_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_invoiceitems`
--
ALTER TABLE `sys_invoiceitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoiceid` (`invoiceid`);

--
-- Indexes for table `sys_invoices`
--
ALTER TABLE `sys_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `status` (`status`(3));

--
-- Indexes for table `sys_items`
--
ALTER TABLE `sys_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_item_cats`
--
ALTER TABLE `sys_item_cats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_leads`
--
ALTER TABLE `sys_leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_logs`
--
ALTER TABLE `sys_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_orders`
--
ALTER TABLE `sys_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_part_vendor`
--
ALTER TABLE `sys_part_vendor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_permissions`
--
ALTER TABLE `sys_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_pg`
--
ALTER TABLE `sys_pg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gateway_setting` (`name`(32),`processor`(32)),
  ADD KEY `setting_value` (`processor`(32),`ins`(32));

--
-- Indexes for table `sys_pl`
--
ALTER TABLE `sys_pl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_pmethods`
--
ALTER TABLE `sys_pmethods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_purchaseitems`
--
ALTER TABLE `sys_purchaseitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_purchases`
--
ALTER TABLE `sys_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_quoteitems`
--
ALTER TABLE `sys_quoteitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_quotes`
--
ALTER TABLE `sys_quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_roles`
--
ALTER TABLE `sys_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_sales`
--
ALTER TABLE `sys_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_schedule`
--
ALTER TABLE `sys_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_schedulelogs`
--
ALTER TABLE `sys_schedulelogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_staffpermissions`
--
ALTER TABLE `sys_staffpermissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_status`
--
ALTER TABLE `sys_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_tags`
--
ALTER TABLE `sys_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_tasks`
--
ALTER TABLE `sys_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_tax`
--
ALTER TABLE `sys_tax`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state_country` (`state`(32),`country`(2));

--
-- Indexes for table `sys_ticketdepartments`
--
ALTER TABLE `sys_ticketdepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_ticketmaillog`
--
ALTER TABLE `sys_ticketmaillog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_ticketpredefinedreplies`
--
ALTER TABLE `sys_ticketpredefinedreplies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_ticketreplies`
--
ALTER TABLE `sys_ticketreplies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_tickets`
--
ALTER TABLE `sys_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_tires`
--
ALTER TABLE `sys_tires`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_transactions`
--
ALTER TABLE `sys_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_units`
--
ALTER TABLE `sys_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_users`
--
ALTER TABLE `sys_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_notes`
--
ALTER TABLE `app_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_password_manager`
--
ALTER TABLE `app_password_manager`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app_sms`
--
ALTER TABLE `app_sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `app_sms_drivers`
--
ALTER TABLE `app_sms_drivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `app_sms_templates`
--
ALTER TABLE `app_sms_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `asset_categories`
--
ALTER TABLE `asset_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `clx_integrations`
--
ALTER TABLE `clx_integrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clx_projects`
--
ALTER TABLE `clx_projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clx_shared_preferences`
--
ALTER TABLE `clx_shared_preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `credit_cards`
--
ALTER TABLE `credit_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `crm_accounts`
--
ALTER TABLE `crm_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `crm_customfields`
--
ALTER TABLE `crm_customfields`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_customfieldsvalues`
--
ALTER TABLE `crm_customfieldsvalues`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `crm_groups`
--
ALTER TABLE `crm_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `crm_industries`
--
ALTER TABLE `crm_industries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `crm_leads`
--
ALTER TABLE `crm_leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_lead_sources`
--
ALTER TABLE `crm_lead_sources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `crm_lead_status`
--
ALTER TABLE `crm_lead_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `crm_salutations`
--
ALTER TABLE `crm_salutations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `end_users`
--
ALTER TABLE `end_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_types`
--
ALTER TABLE `expense_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ib_assets`
--
ALTER TABLE `ib_assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ib_doc_rel`
--
ALTER TABLE `ib_doc_rel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ib_invoice_access_log`
--
ALTER TABLE `ib_invoice_access_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `ib_kb`
--
ALTER TABLE `ib_kb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ib_kb_groups`
--
ALTER TABLE `ib_kb_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ib_kb_rel`
--
ALTER TABLE `ib_kb_rel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ib_kb_replies`
--
ALTER TABLE `ib_kb_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inspections`
--
ALTER TABLE `inspections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `item_categories`
--
ALTER TABLE `item_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_attachments`
--
ALTER TABLE `order_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=864;

--
-- AUTO_INCREMENT for table `relations`
--
ALTER TABLE `relations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_accounts`
--
ALTER TABLE `sys_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `sys_activity`
--
ALTER TABLE `sys_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_api`
--
ALTER TABLE `sys_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_appconfig`
--
ALTER TABLE `sys_appconfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `sys_canned_responses`
--
ALTER TABLE `sys_canned_responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_cart`
--
ALTER TABLE `sys_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sys_cats`
--
ALTER TABLE `sys_cats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `sys_companies`
--
ALTER TABLE `sys_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `sys_currencies`
--
ALTER TABLE `sys_currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sys_documents`
--
ALTER TABLE `sys_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sys_emailconfig`
--
ALTER TABLE `sys_emailconfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sys_email_logs`
--
ALTER TABLE `sys_email_logs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `sys_email_templates`
--
ALTER TABLE `sys_email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sys_events`
--
ALTER TABLE `sys_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_invoiceitems`
--
ALTER TABLE `sys_invoiceitems`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1304;

--
-- AUTO_INCREMENT for table `sys_invoices`
--
ALTER TABLE `sys_invoices`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT for table `sys_items`
--
ALTER TABLE `sys_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `sys_item_cats`
--
ALTER TABLE `sys_item_cats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_leads`
--
ALTER TABLE `sys_leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_logs`
--
ALTER TABLE `sys_logs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1543;

--
-- AUTO_INCREMENT for table `sys_orders`
--
ALTER TABLE `sys_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `sys_part_vendor`
--
ALTER TABLE `sys_part_vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `sys_permissions`
--
ALTER TABLE `sys_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `sys_pg`
--
ALTER TABLE `sys_pg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sys_pl`
--
ALTER TABLE `sys_pl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_pmethods`
--
ALTER TABLE `sys_pmethods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sys_purchaseitems`
--
ALTER TABLE `sys_purchaseitems`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `sys_purchases`
--
ALTER TABLE `sys_purchases`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `sys_quoteitems`
--
ALTER TABLE `sys_quoteitems`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sys_quotes`
--
ALTER TABLE `sys_quotes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sys_roles`
--
ALTER TABLE `sys_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sys_sales`
--
ALTER TABLE `sys_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_schedule`
--
ALTER TABLE `sys_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sys_schedulelogs`
--
ALTER TABLE `sys_schedulelogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sys_staffpermissions`
--
ALTER TABLE `sys_staffpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4708;

--
-- AUTO_INCREMENT for table `sys_status`
--
ALTER TABLE `sys_status`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sys_tags`
--
ALTER TABLE `sys_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sys_tasks`
--
ALTER TABLE `sys_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `sys_tax`
--
ALTER TABLE `sys_tax`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sys_ticketdepartments`
--
ALTER TABLE `sys_ticketdepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sys_ticketmaillog`
--
ALTER TABLE `sys_ticketmaillog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_ticketpredefinedreplies`
--
ALTER TABLE `sys_ticketpredefinedreplies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_ticketreplies`
--
ALTER TABLE `sys_ticketreplies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_tickets`
--
ALTER TABLE `sys_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sys_tires`
--
ALTER TABLE `sys_tires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sys_transactions`
--
ALTER TABLE `sys_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;

--
-- AUTO_INCREMENT for table `sys_units`
--
ALTER TABLE `sys_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sys_users`
--
ALTER TABLE `sys_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
