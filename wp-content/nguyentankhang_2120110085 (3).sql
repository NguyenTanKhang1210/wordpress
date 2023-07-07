-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 30, 2023 lúc 01:17 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nguyentankhang_2120110085`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ntk_commentmeta`
--

CREATE TABLE `ntk_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ntk_comments`
--

CREATE TABLE `ntk_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `ntk_comments`
--

INSERT INTO `ntk_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(2, 40, 'admin', 'nguyentankhang1412@gmail.com', 'http://localhost/nguyentankhang_2120110085', '::1', '2023-04-27 12:23:52', '2023-04-27 05:23:52', 'dfghj', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36 Edg/112.0.1722.58', 'comment', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ntk_links`
--

CREATE TABLE `ntk_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ntk_options`
--

CREATE TABLE `ntk_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `ntk_options`
--

INSERT INTO `ntk_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/nguyentankhang_2120110085', 'yes'),
(2, 'home', 'http://localhost/nguyentankhang_2120110085', 'yes'),
(3, 'blogname', 'Bóng Đá', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'nguyentankhang1412@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd/m/Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:174:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:11:\"san-pham/?$\";s:27:\"index.php?post_type=product\";s:41:\"san-pham/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:36:\"san-pham/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:28:\"san-pham/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:9:\"slider/?$\";s:26:\"index.php?post_type=slider\";s:39:\"slider/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=slider&feed=$matches[1]\";s:34:\"slider/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=slider&feed=$matches[1]\";s:26:\"slider/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=slider&paged=$matches[1]\";s:62:\"(ngoai-hang-anh/arsenal)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:45:\"(ngoai-hang-anh/arsenal)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"(ngoai-hang-anh/arsenal)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:63:\"(la-liga/atletico-madrid)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:46:\"(la-liga/atletico-madrid)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:28:\"(la-liga/atletico-madrid)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:57:\"(la-liga/barcelona)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:40:\"(la-liga/barcelona)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:22:\"(la-liga/barcelona)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:62:\"(ngoai-hang-anh/chelsea)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:45:\"(ngoai-hang-anh/chelsea)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"(ngoai-hang-anh/chelsea)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:47:\"(la-liga)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:30:\"(la-liga)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:12:\"(la-liga)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:47:\"(ligue-1)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:30:\"(ligue-1)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:12:\"(ligue-1)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:70:\"(ngoai-hang-anh/manchester-city)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:53:\"(ngoai-hang-anh/manchester-city)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:35:\"(ngoai-hang-anh/manchester-city)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:72:\"(ngoai-hang-anh/manchester-united)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:55:\"(ngoai-hang-anh/manchester-united)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:37:\"(ngoai-hang-anh/manchester-united)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"(ngoai-hang-anh)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:37:\"(ngoai-hang-anh)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:19:\"(ngoai-hang-anh)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:67:\"(ligue-1/paris-saint-germain)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:50:\"(ligue-1/paris-saint-germain)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"(ligue-1/paris-saint-germain)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:59:\"(la-liga/real-madrid)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"(la-liga/real-madrid)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:24:\"(la-liga/real-madrid)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:64:\"(ngoai-hang-anh/tottenham)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:47:\"(ngoai-hang-anh/tottenham)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:29:\"(ngoai-hang-anh/tottenham)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:14:\"category/(.*)$\";s:39:\"index.php?category_redirect=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"san-pham/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"san-pham/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"san-pham/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"san-pham/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"san-pham/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"san-pham/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"san-pham/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:29:\"san-pham/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:49:\"san-pham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:44:\"san-pham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:37:\"san-pham/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:44:\"san-pham/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"san-pham/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:25:\"san-pham/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"san-pham/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"san-pham/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"san-pham/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"san-pham/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"san-pham/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:58:\"danh-muc-san-pham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?product-category=$matches[1]&feed=$matches[2]\";s:53:\"danh-muc-san-pham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?product-category=$matches[1]&feed=$matches[2]\";s:34:\"danh-muc-san-pham/([^/]+)/embed/?$\";s:49:\"index.php?product-category=$matches[1]&embed=true\";s:46:\"danh-muc-san-pham/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?product-category=$matches[1]&paged=$matches[2]\";s:28:\"danh-muc-san-pham/([^/]+)/?$\";s:38:\"index.php?product-category=$matches[1]\";s:34:\"slider/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"slider/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"slider/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"slider/([^/]+)/embed/?$\";s:39:\"index.php?slider=$matches[1]&embed=true\";s:27:\"slider/([^/]+)/trackback/?$\";s:33:\"index.php?slider=$matches[1]&tb=1\";s:47:\"slider/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?slider=$matches[1]&feed=$matches[2]\";s:42:\"slider/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?slider=$matches[1]&feed=$matches[2]\";s:35:\"slider/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?slider=$matches[1]&paged=$matches[2]\";s:42:\"slider/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?slider=$matches[1]&cpage=$matches[2]\";s:31:\"slider/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?slider=$matches[1]&page=$matches[2]\";s:23:\"slider/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"slider/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"slider/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:33:\"classic-editor/classic-editor.php\";i:1;s:35:\"classic-widgets/classic-widgets.php\";i:2;s:27:\"ntk-product/ntk-product.php\";i:3;s:75:\"recent-posts-widget-with-thumbnails/recent-posts-widget-with-thumbnails.php\";i:4;s:43:\"remove-category-url/remove-category-url.php\";i:5;s:37:\"tinymce-advanced/tinymce-advanced.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '7', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'nguyentankhang', 'yes'),
(41, 'stylesheet', 'nguyentankhang', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:3:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:13:\"Chuyên mục\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:8:\"dropdown\";i:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:43:\"remove-category-url/remove-category-url.php\";a:2:{i:0;s:13:\"Admin_Notices\";i:1;s:9:\"uninstall\";}}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '77', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1698078018', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'ntk_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'vi', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:6:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:17:\"recent-comments-2\";i:1;s:13:\"custom_html-2\";}s:12:\"main-sidebar\";a:4:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:12:\"categories-2\";i:3;s:10:\"calendar-2\";}s:16:\"sidebar-footer-1\";a:1:{i:0;s:13:\"custom_html-3\";}s:16:\"sidebar-footer-2\";a:1:{i:0;s:13:\"custom_html-4\";}s:12:\"sidebar-home\";a:1:{i:0;s:16:\"product_widget-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:6:{i:1688124019;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1688142019;a:5:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1688142070;a:3:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1688142073;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1688660419;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:2:{i:2;a:1:{s:5:\"title\";s:6:\"Lịch\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:11:\"Tìm kiếm\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:2:{i:2;a:3:{s:5:\"title\";s:17:\"Bài viết mới\";s:6:\"number\";i:5;s:9:\"show_date\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:24:\"Phản hồi gần đây\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:4:{i:2;a:2:{s:5:\"title\";s:15:\"Blog Bóng Đá\";s:7:\"content\";s:37:\"<p>\r\n	Chia sẻ về bóng đá\r\n</p>\";}i:3;a:2:{s:5:\"title\";s:10:\"Liên Hệ\";s:7:\"content\";s:72:\"Tại nhà Khangk20 tìm nhé\r\nLâu lâu có nhà thôi\r\nSDT: 0345805083\";}i:4;a:2:{s:5:\"title\";s:10:\"Chi tiết\";s:7:\"content\";s:184:\"Báo tiếng Việt nhiều người xem nhất\r\n                        Thuộc Bộ Khoa học Công nghệ\r\n                        Số giấy phép: 548/GP-BTTTT ngày 24/08/2021 \";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, 'recovery_keys', 'a:0:{}', 'yes'),
(123, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1682526591;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(124, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:36:\"Xác thực SSL không thành công.\";}}', 'yes'),
(142, 'can_compress_scripts', '1', 'no'),
(157, 'finished_updating_comment_type', '1', 'yes'),
(167, 'current_theme', 'Nguyễn Tấn Khang Theme', 'yes'),
(168, 'theme_mods_blogway', 'a:9:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:11;s:6:\"footer\";i:11;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1683707990;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:23:\"front-left-page-sidebar\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:24:\"front-right-page-sidebar\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:18:\"front-page-content\";a:0:{}s:18:\"footer_widget_area\";a:1:{i:0;s:13:\"custom_html-2\";}}}s:11:\"custom_logo\";i:77;s:22:\"newses_title_font_size\";s:2:\"40\";s:12:\"header_image\";s:121:\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/z4332944645912_f28f02a2691ef247aac3538d9dbc69ae.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:83;s:3:\"url\";s:121:\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/z4332944645912_f28f02a2691ef247aac3538d9dbc69ae.jpg\";s:13:\"thumbnail_url\";s:121:\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/z4332944645912_f28f02a2691ef247aac3538d9dbc69ae.jpg\";s:6:\"height\";i:170;s:5:\"width\";i:524;}s:16:\"you_missed_title\";s:12:\"Đề xuất\";}', 'yes'),
(169, 'theme_switched', '', 'yes'),
(173, 'recently_activated', 'a:0:{}', 'yes'),
(183, 'wbcr_rmcaturl__activated_on', '1682526965', 'yes'),
(184, 'tadv_settings', 'a:7:{s:7:\"options\";s:44:\"menubar,advlist,menubar_block,merge_toolbars\";s:7:\"plugins\";s:104:\"anchor,code,insertdatetime,nonbreaking,print,searchreplace,table,visualblocks,visualchars,advlist,wptadv\";s:9:\"toolbar_1\";s:106:\"formatselect,bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,undo,redo\";s:9:\"toolbar_2\";s:103:\"fontselect,fontsizeselect,outdent,indent,pastetext,removeformat,charmap,wp_more,forecolor,table,wp_help\";s:9:\"toolbar_3\";s:0:\"\";s:9:\"toolbar_4\";s:0:\"\";s:21:\"toolbar_classic_block\";s:123:\"formatselect,bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,forecolor,backcolor,table,wp_help\";}', 'yes'),
(185, 'tadv_admin_settings', 'a:1:{s:7:\"options\";s:86:\"classic_paragraph_block,table_resize_bars,table_grid,table_tab_navigation,table_advtab\";}', 'yes'),
(186, 'tadv_version', '5900', 'yes'),
(187, 'new_admin_email', 'nguyentankhang1412@gmail.com', 'yes'),
(190, 'wbcr_rmcaturl__dismissed_suggestions_on', '1682527122', 'yes'),
(194, 'theme_mods_mh-magazine-lite', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1682527828;s:4:\"data\";a:14:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:7:\"sidebar\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:6:\"home-1\";a:0:{}s:6:\"home-2\";a:0:{}s:6:\"home-3\";a:0:{}s:6:\"home-4\";a:0:{}s:6:\"home-5\";a:0:{}s:6:\"home-6\";a:0:{}s:7:\"posts-1\";a:0:{}s:7:\"posts-2\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(195, 'widget_mh_custom_posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(196, 'widget_mh_slider_hp', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(197, 'widget_mh_magazine_lite_tabbed', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(198, 'widget_mh_magazine_lite_posts_large', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(199, 'widget_mh_magazine_lite_posts_focus', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(200, 'widget_mh_magazine_lite_posts_stacked', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(206, 'category_color_1', 'a:1:{s:21:\"color_class_term_meta\";s:16:\"category-color-1\";}', 'yes'),
(217, 'category_color_2', 'a:1:{s:21:\"color_class_term_meta\";s:16:\"category-color-1\";}', 'yes'),
(219, 'category_color_3', 'a:1:{s:21:\"color_class_term_meta\";s:16:\"category-color-1\";}', 'yes'),
(221, 'category_color_4', 'a:1:{s:21:\"color_class_term_meta\";s:16:\"category-color-1\";}', 'yes'),
(223, 'category_color_5', 'a:1:{s:21:\"color_class_term_meta\";s:16:\"category-color-1\";}', 'yes'),
(225, 'category_color_6', 'a:1:{s:21:\"color_class_term_meta\";s:16:\"category-color-1\";}', 'yes'),
(227, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(234, 'category_color_7', 'a:1:{s:21:\"color_class_term_meta\";s:16:\"category-color-1\";}', 'yes'),
(236, 'category_color_8', 'a:1:{s:21:\"color_class_term_meta\";s:16:\"category-color-1\";}', 'yes'),
(238, 'category_color_9', 'a:1:{s:21:\"color_class_term_meta\";s:16:\"category-color-1\";}', 'yes'),
(240, 'category_color_10', 'a:1:{s:21:\"color_class_term_meta\";s:16:\"category-color-1\";}', 'yes'),
(267, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":5,\"critical\":2}', 'yes'),
(304, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(306, 'site_logo', '157', 'yes'),
(325, 'widget_recent-posts-widget-with-thumbnails', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(339, 'theme_mods_newses', 'a:7:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:11;s:6:\"footer\";i:11;}s:16:\"flash_news_title\";s:17:\"Bài Viết Mới\";s:19:\"trending_post_title\";s:11:\"Xu Hướng\";s:16:\"you_missed_title\";s:12:\"Đề Xuất\";s:11:\"custom_logo\";i:157;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1686058738;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:13:\"custom_html-2\";}s:9:\"sidebar-1\";a:0:{}s:18:\"front-page-content\";a:0:{}s:18:\"front-page-sidebar\";a:0:{}s:18:\"footer_widget_area\";a:0:{}}}}', 'yes'),
(361, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:28:\"nguyentankhang1412@gmail.com\";s:7:\"version\";s:5:\"6.2.2\";s:9:\"timestamp\";i:1684759889;}', 'no'),
(380, 'theme_mods_nguyentankhang', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:8:\"mainmenu\";i:11;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1686058726;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:13:\"custom_html-2\";}}}s:11:\"custom_logo\";i:77;}', 'yes'),
(382, 'recovery_mode_email_last_sent', '1686127398', 'yes'),
(598, 'category_children', 'a:3:{i:1;a:5:{i:0;i:2;i:1;i:3;i:2;i:4;i:3;i:5;i:4;i:6;}i:7;a:3:{i:0;i:8;i:1;i:9;i:2;i:10;}i:12;a:1:{i:0;i:13;}}', 'yes'),
(607, 'theme_switched_via_customizer', '', 'yes'),
(608, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(614, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-6.2.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-6.2.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.2.2\";s:7:\"version\";s:5:\"6.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1688120621;s:15:\"version_checked\";s:5:\"6.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(616, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1688120621;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:37:\"tinymce-advanced/tinymce-advanced.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:30:\"w.org/plugins/tinymce-advanced\";s:4:\"slug\";s:16:\"tinymce-advanced\";s:6:\"plugin\";s:37:\"tinymce-advanced/tinymce-advanced.php\";s:11:\"new_version\";s:5:\"5.9.0\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/tinymce-advanced/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/tinymce-advanced.5.9.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-256x256.png?rev=971511\";s:2:\"1x\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-128x128.png?rev=971511\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/tinymce-advanced/assets/banner-1544x500.png?rev=2390186\";s:2:\"1x\";s:71:\"https://ps.w.org/tinymce-advanced/assets/banner-772x250.png?rev=2390186\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:35:\"classic-widgets/classic-widgets.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/classic-widgets\";s:4:\"slug\";s:15:\"classic-widgets\";s:6:\"plugin\";s:35:\"classic-widgets/classic-widgets.php\";s:11:\"new_version\";s:3:\"0.3\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/classic-widgets/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/classic-widgets.0.3.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:59:\"https://s.w.org/plugins/geopattern-icon/classic-widgets.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:75:\"recent-posts-widget-with-thumbnails/recent-posts-widget-with-thumbnails.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:49:\"w.org/plugins/recent-posts-widget-with-thumbnails\";s:4:\"slug\";s:35:\"recent-posts-widget-with-thumbnails\";s:6:\"plugin\";s:75:\"recent-posts-widget-with-thumbnails/recent-posts-widget-with-thumbnails.php\";s:11:\"new_version\";s:5:\"7.1.1\";s:3:\"url\";s:66:\"https://wordpress.org/plugins/recent-posts-widget-with-thumbnails/\";s:7:\"package\";s:84:\"https://downloads.wordpress.org/plugin/recent-posts-widget-with-thumbnails.7.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:88:\"https://ps.w.org/recent-posts-widget-with-thumbnails/assets/icon-256x256.png?rev=2478511\";s:2:\"1x\";s:88:\"https://ps.w.org/recent-posts-widget-with-thumbnails/assets/icon-128x128.png?rev=2478511\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:91:\"https://ps.w.org/recent-posts-widget-with-thumbnails/assets/banner-1544x500.jpg?rev=2480188\";s:2:\"1x\";s:90:\"https://ps.w.org/recent-posts-widget-with-thumbnails/assets/banner-772x250.jpg?rev=2480188\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:43:\"remove-category-url/remove-category-url.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/remove-category-url\";s:4:\"slug\";s:19:\"remove-category-url\";s:6:\"plugin\";s:43:\"remove-category-url/remove-category-url.php\";s:11:\"new_version\";s:5:\"1.1.6\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/remove-category-url/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/remove-category-url.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:64:\"https://ps.w.org/remove-category-url/assets/icon.svg?rev=1032792\";s:3:\"svg\";s:64:\"https://ps.w.org/remove-category-url/assets/icon.svg?rev=1032792\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/remove-category-url/assets/banner-1544x500.png?rev=1032792\";s:2:\"1x\";s:74:\"https://ps.w.org/remove-category-url/assets/banner-772x250.png?rev=1032792\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.1\";}}s:7:\"checked\";a:6:{s:37:\"tinymce-advanced/tinymce-advanced.php\";s:5:\"5.9.0\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.3\";s:35:\"classic-widgets/classic-widgets.php\";s:3:\"0.3\";s:27:\"ntk-product/ntk-product.php\";s:5:\"1.0.0\";s:75:\"recent-posts-widget-with-thumbnails/recent-posts-widget-with-thumbnails.php\";s:5:\"7.1.1\";s:43:\"remove-category-url/remove-category-url.php\";s:5:\"1.1.6\";}}', 'no'),
(693, 'widget_product_widget', 'a:2:{i:3;a:2:{s:5:\"title\";s:7:\"Áo epl\";s:6:\"number\";s:1:\"5\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(749, '_site_transient_timeout_php_check_ce267f3653936506950ae9448202043a', '1688171932', 'no'),
(750, '_site_transient_php_check_ce267f3653936506950ae9448202043a', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(770, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1688120621;s:7:\"checked\";a:7:{s:7:\"blogway\";s:3:\"0.2\";s:16:\"mh-magazine-lite\";s:5:\"2.9.2\";s:6:\"newses\";s:8:\"1.2.9.77\";s:14:\"nguyentankhang\";s:3:\"1.0\";s:15:\"twentytwentyone\";s:3:\"1.8\";s:17:\"twentytwentythree\";s:3:\"1.1\";s:15:\"twentytwentytwo\";s:3:\"1.4\";}s:8:\"response\";a:1:{s:6:\"newses\";a:6:{s:5:\"theme\";s:6:\"newses\";s:11:\"new_version\";s:8:\"1.2.9.79\";s:3:\"url\";s:36:\"https://wordpress.org/themes/newses/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/theme/newses.1.2.9.79.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:5:\"5.6.1\";}}s:9:\"no_update\";a:5:{s:7:\"blogway\";a:6:{s:5:\"theme\";s:7:\"blogway\";s:11:\"new_version\";s:3:\"0.2\";s:3:\"url\";s:37:\"https://wordpress.org/themes/blogway/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/theme/blogway.0.2.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.4\";}s:16:\"mh-magazine-lite\";a:6:{s:5:\"theme\";s:16:\"mh-magazine-lite\";s:11:\"new_version\";s:5:\"2.9.2\";s:3:\"url\";s:46:\"https://wordpress.org/themes/mh-magazine-lite/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/theme/mh-magazine-lite.2.9.2.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.1.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(772, 'product-category_children', 'a:0:{}', 'yes'),
(775, '_site_transient_timeout_browser_c2e8770a57bb05f02fa99fc10237a511', '1688658721', 'no'),
(776, '_site_transient_browser_c2e8770a57bb05f02fa99fc10237a511', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"113.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(790, '_site_transient_theme_roots', 'a:8:{s:7:\"blogway\";s:7:\"/themes\";s:16:\"mh-magazine-lite\";s:7:\"/themes\";s:6:\"newses\";s:7:\"/themes\";s:14:\"nguyentankhang\";s:7:\"/themes\";s:25:\"nguyentankhang_2120110085\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(791, '_site_transient_timeout_theme_roots', '1688122418', 'no');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ntk_postmeta`
--

CREATE TABLE `ntk_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `ntk_postmeta`
--

INSERT INTO `ntk_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(10, 8, '_edit_last', '1'),
(11, 8, '_wp_page_template', 'default'),
(12, 8, '_edit_lock', '1682527922:1'),
(13, 10, '_edit_last', '1'),
(14, 10, '_wp_page_template', 'default'),
(15, 10, '_edit_lock', '1682527961:1'),
(22, 18, '_edit_last', '1'),
(23, 18, '_edit_lock', '1682528383:1'),
(24, 18, '_wp_page_template', 'default'),
(25, 20, '_edit_last', '1'),
(26, 20, '_edit_lock', '1682528408:1'),
(27, 20, '_wp_page_template', 'default'),
(30, 23, '_wp_attached_file', '2023/04/1-2604163734.jpg'),
(31, 23, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:630;s:6:\"height\";i:354;s:4:\"file\";s:24:\"2023/04/1-2604163734.jpg\";s:8:\"filesize\";i:73638;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(40, 27, '_edit_last', '1'),
(41, 27, '_edit_lock', '1682529385:1'),
(42, 27, '_thumbnail_id', '23'),
(48, 32, '_edit_last', '1'),
(49, 32, '_edit_lock', '1682566912:1'),
(50, 32, '_wp_page_template', 'default'),
(51, 34, '_edit_last', '1'),
(52, 34, '_edit_lock', '1682567192:1'),
(53, 35, '_wp_attached_file', '2023/04/man-city-arsenal-526-0955.jpg'),
(54, 35, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:37:\"2023/04/man-city-arsenal-526-0955.jpg\";s:8:\"filesize\";i:384693;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(55, 36, '_wp_attached_file', '2023/04/de-bruyne-man-city-arsenal-527-0955.jpg'),
(56, 36, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:47:\"2023/04/de-bruyne-man-city-arsenal-527-0955.jpg\";s:8:\"filesize\";i:410379;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(57, 34, '_thumbnail_id', '36'),
(63, 38, '_edit_last', '1'),
(64, 38, '_edit_lock', '1682567294:1'),
(65, 38, '_wp_page_template', 'default'),
(66, 40, '_edit_last', '1'),
(67, 40, '_edit_lock', '1682567455:1'),
(68, 41, '_wp_attached_file', '2023/04/1-jpeg-1682383762-1682383776-3863-1682383813.jpg'),
(69, 41, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:612;s:4:\"file\";s:56:\"2023/04/1-jpeg-1682383762-1682383776-3863-1682383813.jpg\";s:8:\"filesize\";i:238899;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:7:\"REUTERS\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:198:\"Soccer Football - Premier League - Newcastle United v Tottenham Hotspur - St James\' Park, Newcastle, Britain - April 23, 2023 Tottenham Hotspur manager Cristian Stellini reacts REUTERS/Scott Heppell\";s:17:\"created_timestamp\";s:10:\"1682312734\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:53:\"Premier League - Newcastle United v Tottenham Hotspur\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:2:{i:0;s:34:\"optaUUID:86wbm9amnb65rhye76n0u2rkk\";i:1;s:19:\"optaMatchId:2293129\";}}}'),
(70, 40, '_thumbnail_id', '41'),
(73, 43, '_edit_last', '1'),
(74, 43, '_wp_page_template', 'default'),
(75, 43, '_edit_lock', '1682567540:1'),
(76, 45, '_edit_last', '1'),
(77, 45, '_edit_lock', '1682567575:1'),
(78, 45, '_wp_page_template', 'default'),
(79, 47, '_edit_last', '1'),
(80, 47, '_edit_lock', '1682567599:1'),
(81, 47, '_wp_page_template', 'default'),
(82, 49, '_edit_last', '1'),
(83, 49, '_edit_lock', '1682567655:1'),
(84, 49, '_wp_page_template', 'default'),
(87, 52, '_edit_last', '1'),
(88, 52, '_edit_lock', '1682570760:1'),
(89, 53, '_wp_attached_file', '2023/04/v1-0851.jpg'),
(90, 53, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:19:\"2023/04/v1-0851.jpg\";s:8:\"filesize\";i:153210;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(91, 54, '_wp_attached_file', '2023/04/v2-0851.jpg'),
(92, 54, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:19:\"2023/04/v2-0851.jpg\";s:8:\"filesize\";i:94681;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(93, 52, '_thumbnail_id', '54'),
(103, 59, '_edit_last', '1'),
(104, 59, '_edit_lock', '1682573503:1'),
(105, 60, '_wp_attached_file', '2023/04/lampard-chelsea-wolvesjpg-1-1680925907-063255.jpeg'),
(106, 60, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1050;s:6:\"height\";i:630;s:4:\"file\";s:58:\"2023/04/lampard-chelsea-wolvesjpg-1-1680925907-063255.jpeg\";s:8:\"filesize\";i:83300;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(107, 59, '_thumbnail_id', '60'),
(115, 65, '_menu_item_type', 'post_type'),
(116, 65, '_menu_item_menu_item_parent', '0'),
(117, 65, '_menu_item_object_id', '43'),
(118, 65, '_menu_item_object', 'page'),
(119, 65, '_menu_item_target', ''),
(120, 65, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(121, 65, '_menu_item_xfn', ''),
(122, 65, '_menu_item_url', ''),
(124, 66, '_menu_item_type', 'post_type'),
(125, 66, '_menu_item_menu_item_parent', '65'),
(126, 66, '_menu_item_object_id', '49'),
(127, 66, '_menu_item_object', 'page'),
(128, 66, '_menu_item_target', ''),
(129, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(130, 66, '_menu_item_xfn', ''),
(131, 66, '_menu_item_url', ''),
(133, 67, '_menu_item_type', 'post_type'),
(134, 67, '_menu_item_menu_item_parent', '65'),
(135, 67, '_menu_item_object_id', '47'),
(136, 67, '_menu_item_object', 'page'),
(137, 67, '_menu_item_target', ''),
(138, 67, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(139, 67, '_menu_item_xfn', ''),
(140, 67, '_menu_item_url', ''),
(142, 68, '_menu_item_type', 'post_type'),
(143, 68, '_menu_item_menu_item_parent', '65'),
(144, 68, '_menu_item_object_id', '45'),
(145, 68, '_menu_item_object', 'page'),
(146, 68, '_menu_item_target', ''),
(147, 68, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(148, 68, '_menu_item_xfn', ''),
(149, 68, '_menu_item_url', ''),
(151, 69, '_menu_item_type', 'post_type'),
(152, 69, '_menu_item_menu_item_parent', '0'),
(153, 69, '_menu_item_object_id', '8'),
(154, 69, '_menu_item_object', 'page'),
(155, 69, '_menu_item_target', ''),
(156, 69, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(157, 69, '_menu_item_xfn', ''),
(158, 69, '_menu_item_url', ''),
(160, 70, '_menu_item_type', 'post_type'),
(161, 70, '_menu_item_menu_item_parent', '69'),
(162, 70, '_menu_item_object_id', '38'),
(163, 70, '_menu_item_object', 'page'),
(164, 70, '_menu_item_target', ''),
(165, 70, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(166, 70, '_menu_item_xfn', ''),
(167, 70, '_menu_item_url', ''),
(169, 71, '_menu_item_type', 'post_type'),
(170, 71, '_menu_item_menu_item_parent', '69'),
(171, 71, '_menu_item_object_id', '32'),
(172, 71, '_menu_item_object', 'page'),
(173, 71, '_menu_item_target', ''),
(174, 71, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(175, 71, '_menu_item_xfn', ''),
(176, 71, '_menu_item_url', ''),
(178, 72, '_menu_item_type', 'post_type'),
(179, 72, '_menu_item_menu_item_parent', '69'),
(180, 72, '_menu_item_object_id', '20'),
(181, 72, '_menu_item_object', 'page'),
(182, 72, '_menu_item_target', ''),
(183, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(184, 72, '_menu_item_xfn', ''),
(185, 72, '_menu_item_url', ''),
(187, 73, '_menu_item_type', 'post_type'),
(188, 73, '_menu_item_menu_item_parent', '69'),
(189, 73, '_menu_item_object_id', '18'),
(190, 73, '_menu_item_object', 'page'),
(191, 73, '_menu_item_target', ''),
(192, 73, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(193, 73, '_menu_item_xfn', ''),
(194, 73, '_menu_item_url', ''),
(196, 74, '_menu_item_type', 'post_type'),
(197, 74, '_menu_item_menu_item_parent', '69'),
(198, 74, '_menu_item_object_id', '10'),
(199, 74, '_menu_item_object', 'page'),
(200, 74, '_menu_item_target', ''),
(201, 74, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(202, 74, '_menu_item_xfn', ''),
(203, 74, '_menu_item_url', ''),
(205, 75, '_wp_attached_file', '2023/05/1618474617-ong-hut-cojpg_.jpg'),
(206, 75, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:37:\"2023/05/1618474617-ong-hut-cojpg_.jpg\";s:8:\"filesize\";i:528140;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(207, 76, '_wp_attached_file', '2023/05/1-2604163734.jpg'),
(208, 76, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:630;s:6:\"height\";i:354;s:4:\"file\";s:24:\"2023/05/1-2604163734.jpg\";s:8:\"filesize\";i:73638;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(209, 77, '_wp_attached_file', '2023/05/Premier-League.png'),
(210, 77, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:320;s:6:\"height\";i:319;s:4:\"file\";s:26:\"2023/05/Premier-League.png\";s:8:\"filesize\";i:134788;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(218, 77, '_wp_attachment_custom_header_last_used_blogway', '1683700665'),
(219, 77, '_wp_attachment_is_custom_header', 'blogway'),
(220, 82, '_wp_attached_file', '2023/05/logo-cac-doi-bong-ngoai-hang-anh.png'),
(221, 82, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:640;s:6:\"height\";i:355;s:4:\"file\";s:44:\"2023/05/logo-cac-doi-bong-ngoai-hang-anh.png\";s:8:\"filesize\";i:407095;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(222, 82, '_wp_attachment_custom_header_last_used_blogway', '1683700748'),
(223, 82, '_wp_attachment_is_custom_header', 'blogway'),
(224, 83, '_wp_attached_file', '2023/05/z4332944645912_f28f02a2691ef247aac3538d9dbc69ae.jpg'),
(225, 83, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:524;s:6:\"height\";i:170;s:4:\"file\";s:59:\"2023/05/z4332944645912_f28f02a2691ef247aac3538d9dbc69ae.jpg\";s:8:\"filesize\";i:73126;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(226, 83, '_wp_attachment_custom_header_last_used_blogway', '1683701326'),
(227, 83, '_wp_attachment_is_custom_header', 'blogway'),
(228, 84, '_wp_attached_file', '2023/05/R.png'),
(229, 84, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:5179;s:6:\"height\";i:942;s:4:\"file\";s:13:\"2023/05/R.png\";s:8:\"filesize\";i:91134;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(230, 85, '_wp_attached_file', '2023/05/R-1.png'),
(231, 85, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:5179;s:6:\"height\";i:942;s:4:\"file\";s:15:\"2023/05/R-1.png\";s:8:\"filesize\";i:91134;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(236, 87, '_edit_last', '1'),
(237, 87, '_edit_lock', '1683701989:1'),
(238, 88, '_wp_attached_file', '2023/05/New-Project-3-7829-1683065580.jpg'),
(239, 88, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:680;s:4:\"file\";s:41:\"2023/05/New-Project-3-7829-1683065580.jpg\";s:8:\"filesize\";i:558124;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(240, 87, '_thumbnail_id', '88'),
(245, 92, '_wp_attached_file', '2023/05/fcb-4077-1683065580.jpg'),
(246, 92, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:680;s:4:\"file\";s:31:\"2023/05/fcb-4077-1683065580.jpg\";s:8:\"filesize\";i:89575;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(247, 93, '_wp_attached_file', '2023/05/New-Project-4-1835-1683065580.jpg'),
(248, 93, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:680;s:4:\"file\";s:41:\"2023/05/New-Project-4-1835-1683065580.jpg\";s:8:\"filesize\";i:689429;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(251, 95, '_edit_last', '1'),
(252, 95, '_edit_lock', '1683731133:1'),
(253, 96, '_wp_attached_file', '2023/05/2023_04_16t182956z_1748550313_up1ej4g1fducy_rtrmadp_3_soccer_spain_atm_uda_report-0723.jpg'),
(254, 96, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:960;s:6:\"height\";i:656;s:4:\"file\";s:98:\"2023/05/2023_04_16t182956z_1748550313_up1ej4g1fducy_rtrmadp_3_soccer_spain_atm_uda_report-0723.jpg\";s:8:\"filesize\";i:173309;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(255, 95, '_thumbnail_id', '96'),
(258, 98, '_edit_last', '1'),
(259, 98, '_edit_lock', '1683703142:1'),
(260, 99, '_wp_attached_file', '2023/05/real-madrid-jpeg-1683662583-8533-1683662782.jpg'),
(261, 99, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:612;s:4:\"file\";s:55:\"2023/05/real-madrid-jpeg-1683662583-8533-1683662782.jpg\";s:8:\"filesize\";i:141925;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(262, 100, '_wp_attached_file', '2023/05/de-bruyne-0-jpeg-1683665988-8002-1683666375.jpg'),
(263, 100, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:612;s:4:\"file\";s:55:\"2023/05/de-bruyne-0-jpeg-1683665988-8002-1683666375.jpg\";s:8:\"filesize\";i:205319;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(266, 102, '_wp_attached_file', '2023/05/R-2.png'),
(267, 102, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:5179;s:6:\"height\";i:942;s:4:\"file\";s:15:\"2023/05/R-2.png\";s:8:\"filesize\";i:91134;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(268, 104, '_wp_attached_file', '2023/05/de-bruyne-jpeg-7458-1683666375.jpg'),
(269, 104, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:680;s:4:\"file\";s:42:\"2023/05/de-bruyne-jpeg-7458-1683666375.jpg\";s:8:\"filesize\";i:187080;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(270, 98, '_thumbnail_id', '99'),
(292, 69, '_wp_old_date', '2023-05-10'),
(293, 74, '_wp_old_date', '2023-05-10'),
(294, 71, '_wp_old_date', '2023-05-10'),
(295, 70, '_wp_old_date', '2023-05-10'),
(296, 72, '_wp_old_date', '2023-05-10'),
(297, 73, '_wp_old_date', '2023-05-10'),
(298, 65, '_wp_old_date', '2023-05-10'),
(299, 66, '_wp_old_date', '2023-05-10'),
(300, 67, '_wp_old_date', '2023-05-10'),
(301, 68, '_wp_old_date', '2023-05-10'),
(309, 125, '_wp_attached_file', '2023/05/aa.jpg'),
(310, 125, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1600;s:6:\"height\";i:902;s:4:\"file\";s:14:\"2023/05/aa.jpg\";s:8:\"filesize\";i:51137;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(311, 126, '_wp_attached_file', '2023/05/bb.jpg'),
(312, 126, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:500;s:4:\"file\";s:14:\"2023/05/bb.jpg\";s:8:\"filesize\";i:87293;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(313, 127, '_wp_attached_file', '2023/05/cc.jpg'),
(314, 127, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:474;s:6:\"height\";i:272;s:4:\"file\";s:14:\"2023/05/cc.jpg\";s:8:\"filesize\";i:17945;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(331, 130, '_edit_last', '1'),
(332, 130, '_thumbnail_id', '125'),
(333, 130, '_edit_lock', '1685861326:1'),
(334, 131, '_edit_last', '1'),
(335, 131, '_edit_lock', '1685517335:1'),
(336, 131, '_thumbnail_id', '126'),
(337, 132, '_edit_last', '1'),
(338, 132, '_edit_lock', '1685861331:1'),
(339, 132, '_thumbnail_id', '102'),
(345, 135, '_edit_last', '1'),
(346, 135, '_edit_lock', '1685862517:1'),
(349, 135, '_wp_trash_meta_status', 'publish'),
(350, 135, '_wp_trash_meta_time', '1685862669'),
(351, 135, '_wp_desired_post_slug', 'fsdfdsfds'),
(352, 137, '_edit_last', '1'),
(353, 137, '_edit_lock', '1685862621:1'),
(356, 137, '_wp_trash_meta_status', 'publish'),
(357, 137, '_wp_trash_meta_time', '1685862768'),
(358, 137, '_wp_desired_post_slug', 'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee'),
(359, 140, '_menu_item_type', 'post_type'),
(360, 140, '_menu_item_menu_item_parent', '0'),
(361, 140, '_menu_item_object_id', '132'),
(362, 140, '_menu_item_object', 'slider'),
(363, 140, '_menu_item_target', ''),
(364, 140, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(365, 140, '_menu_item_xfn', ''),
(366, 140, '_menu_item_url', ''),
(367, 140, '_menu_item_orphaned', '1685862962'),
(368, 141, '_menu_item_type', 'post_type'),
(369, 141, '_menu_item_menu_item_parent', '0'),
(370, 141, '_menu_item_object_id', '131'),
(371, 141, '_menu_item_object', 'slider'),
(372, 141, '_menu_item_target', ''),
(373, 141, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(374, 141, '_menu_item_xfn', ''),
(375, 141, '_menu_item_url', ''),
(376, 141, '_menu_item_orphaned', '1685862962'),
(377, 142, '_menu_item_type', 'post_type'),
(378, 142, '_menu_item_menu_item_parent', '0'),
(379, 142, '_menu_item_object_id', '130'),
(380, 142, '_menu_item_object', 'slider'),
(381, 142, '_menu_item_target', ''),
(382, 142, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(383, 142, '_menu_item_xfn', ''),
(384, 142, '_menu_item_url', ''),
(385, 142, '_menu_item_orphaned', '1685862962'),
(386, 143, '_menu_item_type', 'taxonomy'),
(387, 143, '_menu_item_menu_item_parent', '0'),
(388, 143, '_menu_item_object_id', '12'),
(389, 143, '_menu_item_object', 'category'),
(390, 143, '_menu_item_target', ''),
(391, 143, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(392, 143, '_menu_item_xfn', ''),
(393, 143, '_menu_item_url', ''),
(395, 69, '_wp_old_date', '2023-05-24'),
(396, 74, '_wp_old_date', '2023-05-24'),
(397, 71, '_wp_old_date', '2023-05-24'),
(398, 70, '_wp_old_date', '2023-05-24'),
(399, 72, '_wp_old_date', '2023-05-24'),
(400, 73, '_wp_old_date', '2023-05-24'),
(401, 65, '_wp_old_date', '2023-05-24'),
(402, 66, '_wp_old_date', '2023-05-24'),
(403, 67, '_wp_old_date', '2023-05-24'),
(404, 68, '_wp_old_date', '2023-05-24'),
(405, 144, '_edit_last', '1'),
(406, 144, '_edit_lock', '1685863341:1'),
(409, 144, '_wp_trash_meta_status', 'publish'),
(410, 144, '_wp_trash_meta_time', '1685863489'),
(411, 144, '_wp_desired_post_slug', 'dcscsdc'),
(412, 146, '_edit_lock', '1685864365:1'),
(413, 146, '_wp_trash_meta_status', 'publish'),
(414, 146, '_wp_trash_meta_time', '1685864379'),
(415, 147, '_wp_trash_meta_status', 'publish'),
(416, 147, '_wp_trash_meta_time', '1685864496'),
(417, 148, '_edit_last', '1'),
(418, 148, '_edit_lock', '1685864911:1'),
(419, 149, '_wp_attached_file', '2023/06/2023-02-01t201535z708072379up1ej211k9ya6rtrmadp3soccer-france-mpl-psg-report-167529681618116481546.jpg'),
(420, 149, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:684;s:6:\"height\";i:451;s:4:\"file\";s:110:\"2023/06/2023-02-01t201535z708072379up1ej211k9ya6rtrmadp3soccer-france-mpl-psg-report-167529681618116481546.jpg\";s:8:\"filesize\";i:98304;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(421, 150, '_wp_attached_file', '2023/06/2023-02-01t202416z637809232up1ej211koeb3rtrmadp3soccer-france-mpl-psg-report-16752968162021885826688.jpg'),
(422, 150, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:684;s:6:\"height\";i:482;s:4:\"file\";s:112:\"2023/06/2023-02-01t202416z637809232up1ej211koeb3rtrmadp3soccer-france-mpl-psg-report-16752968162021885826688.jpg\";s:8:\"filesize\";i:111333;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(423, 151, '_wp_attached_file', '2023/06/2023-02-01t214013z697594511up1ej211o70fortrmadp3soccer-france-mpl-psg-report-16752968163621922051912.jpg'),
(424, 151, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:684;s:6:\"height\";i:478;s:4:\"file\";s:112:\"2023/06/2023-02-01t214013z697594511up1ej211o70fortrmadp3soccer-france-mpl-psg-report-16752968163621922051912.jpg\";s:8:\"filesize\";i:87329;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(425, 148, '_thumbnail_id', '151'),
(428, 154, '_menu_item_type', 'taxonomy'),
(429, 154, '_menu_item_menu_item_parent', '143'),
(430, 154, '_menu_item_object_id', '13'),
(431, 154, '_menu_item_object', 'category'),
(432, 154, '_menu_item_target', ''),
(433, 154, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(434, 154, '_menu_item_xfn', ''),
(435, 154, '_menu_item_url', ''),
(437, 155, '_edit_last', '1'),
(438, 155, '_edit_lock', '1685871127:1'),
(439, 157, '_wp_attached_file', '2023/06/Premier-League.png'),
(440, 157, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:88;s:6:\"height\";i:87;s:4:\"file\";s:26:\"2023/06/Premier-League.png\";s:8:\"filesize\";i:16713;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(441, 158, '_edit_lock', '1685871666:1'),
(442, 158, '_wp_trash_meta_status', 'publish'),
(443, 158, '_wp_trash_meta_time', '1685871680'),
(444, 69, '_wp_old_date', '2023-06-04'),
(445, 74, '_wp_old_date', '2023-06-04'),
(446, 70, '_wp_old_date', '2023-06-04'),
(447, 71, '_wp_old_date', '2023-06-04'),
(448, 72, '_wp_old_date', '2023-06-04'),
(449, 73, '_wp_old_date', '2023-06-04'),
(450, 65, '_wp_old_date', '2023-06-04'),
(451, 66, '_wp_old_date', '2023-06-04'),
(452, 67, '_wp_old_date', '2023-06-04'),
(453, 68, '_wp_old_date', '2023-06-04'),
(454, 143, '_wp_old_date', '2023-06-04'),
(455, 154, '_wp_old_date', '2023-06-04'),
(488, 172, 'product_price', '3232'),
(489, 172, 'product_pricesale', '323'),
(490, 172, 'product_qty', '2'),
(491, 172, '_edit_last', '1'),
(492, 172, '_edit_lock', '1686128329:1'),
(493, 172, '_wp_trash_meta_status', 'publish'),
(494, 172, '_wp_trash_meta_time', '1686128480'),
(495, 172, '_wp_desired_post_slug', 'ao-mu'),
(496, 173, '_edit_last', '1'),
(497, 173, '_edit_lock', '1686728833:1'),
(498, 175, '_menu_item_type', 'post_type'),
(499, 175, '_menu_item_menu_item_parent', '0'),
(500, 175, '_menu_item_object_id', '173'),
(501, 175, '_menu_item_object', 'page'),
(502, 175, '_menu_item_target', ''),
(503, 175, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(504, 175, '_menu_item_xfn', ''),
(505, 175, '_menu_item_url', ''),
(506, 175, '_menu_item_orphaned', '1686728995'),
(507, 176, '_menu_item_type', 'post_type'),
(508, 176, '_menu_item_menu_item_parent', '0'),
(509, 176, '_menu_item_object_id', '173'),
(510, 176, '_menu_item_object', 'page'),
(511, 176, '_menu_item_target', ''),
(512, 176, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(513, 176, '_menu_item_xfn', ''),
(514, 176, '_menu_item_url', ''),
(516, 69, '_wp_old_date', '2023-06-07'),
(517, 74, '_wp_old_date', '2023-06-07'),
(518, 70, '_wp_old_date', '2023-06-07'),
(519, 71, '_wp_old_date', '2023-06-07'),
(520, 72, '_wp_old_date', '2023-06-07'),
(521, 73, '_wp_old_date', '2023-06-07'),
(522, 65, '_wp_old_date', '2023-06-07'),
(523, 66, '_wp_old_date', '2023-06-07'),
(524, 67, '_wp_old_date', '2023-06-07'),
(525, 68, '_wp_old_date', '2023-06-07'),
(526, 143, '_wp_old_date', '2023-06-07'),
(527, 154, '_wp_old_date', '2023-06-07'),
(528, 178, 'product_price', '345'),
(529, 178, 'product_pricesale', '5345'),
(530, 178, 'product_qty', '34534'),
(531, 178, '_edit_last', '1'),
(532, 178, '_edit_lock', '1686909962:1'),
(533, 179, 'product_price', '43543'),
(534, 179, 'product_pricesale', '5345'),
(535, 179, 'product_qty', '5345'),
(536, 179, '_edit_last', '1'),
(537, 179, '_edit_lock', '1686910010:1'),
(538, 179, '_thumbnail_id', '96'),
(539, 178, '_wp_trash_meta_status', 'publish'),
(540, 178, '_wp_trash_meta_time', '1686910163'),
(541, 178, '_wp_desired_post_slug', 'dfgdfg'),
(542, 179, '_wp_trash_meta_status', 'publish'),
(543, 179, '_wp_trash_meta_time', '1686910164'),
(544, 179, '_wp_desired_post_slug', 'regrdg'),
(545, 180, 'product_price', '100.000'),
(546, 180, 'product_pricesale', '120.000'),
(547, 180, 'product_qty', '10000'),
(548, 180, '_edit_last', '1'),
(549, 180, '_edit_lock', '1688052415:1'),
(550, 181, '_wp_attached_file', '2023/06/Ao-bong-da-manchester-united-san-nha-hang-viet-nam-1-1.jpg'),
(551, 181, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:900;s:6:\"height\";i:900;s:4:\"file\";s:66:\"2023/06/Ao-bong-da-manchester-united-san-nha-hang-viet-nam-1-1.jpg\";s:8:\"filesize\";i:337651;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(552, 180, '_thumbnail_id', '221'),
(553, 182, 'product_price', '100.000'),
(554, 182, 'product_pricesale', '120.000'),
(555, 182, 'product_qty', '1000'),
(556, 182, '_edit_last', '1'),
(557, 182, '_edit_lock', '1688052517:1'),
(558, 183, '_wp_attached_file', '2023/06/Ao-bong-da-mu-san-khach-mau-ba-hang-viet-nam-0.jpg'),
(559, 183, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:900;s:6:\"height\";i:900;s:4:\"file\";s:58:\"2023/06/Ao-bong-da-mu-san-khach-mau-ba-hang-viet-nam-0.jpg\";s:8:\"filesize\";i:364703;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(560, 182, '_thumbnail_id', '224'),
(561, 184, 'product_price', '100.000'),
(562, 184, 'product_pricesale', '120.000'),
(563, 184, 'product_qty', '10000'),
(564, 184, '_edit_last', '1'),
(565, 184, '_edit_lock', '1688052594:1'),
(566, 185, '_wp_attached_file', '2023/06/Ao-bong-da-man-city-trang-hang-viet-nam-0.png'),
(567, 185, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:800;s:4:\"file\";s:53:\"2023/06/Ao-bong-da-man-city-trang-hang-viet-nam-0.png\";s:8:\"filesize\";i:446841;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(568, 186, '_wp_attached_file', '2023/06/Ao-bong-da-mu-san-khach-hang-viet-nam-0.jpg'),
(569, 186, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:900;s:6:\"height\";i:900;s:4:\"file\";s:51:\"2023/06/Ao-bong-da-mu-san-khach-hang-viet-nam-0.jpg\";s:8:\"filesize\";i:295122;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(570, 184, '_thumbnail_id', '225'),
(571, 187, 'product_price', '100.000'),
(572, 187, 'product_pricesale', '120.000'),
(573, 187, 'product_qty', '1000'),
(574, 187, '_edit_last', '1'),
(575, 187, '_edit_lock', '1688052793:1'),
(576, 187, '_thumbnail_id', '185'),
(580, 189, 'product_price', '100.000'),
(581, 189, 'product_pricesale', '120.000'),
(582, 189, 'product_qty', '1000'),
(583, 189, '_edit_last', '1'),
(584, 189, '_edit_lock', '1688052990:1'),
(585, 190, '_wp_attached_file', '2023/06/Ao-bong-da-barca-san-khach-0.jpg'),
(586, 190, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:900;s:6:\"height\";i:900;s:4:\"file\";s:40:\"2023/06/Ao-bong-da-barca-san-khach-0.jpg\";s:8:\"filesize\";i:316194;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(587, 191, '_wp_attached_file', '2023/06/Ao-bong-da-real-madrid-san-khach-mau-ba-hang-viet-nam-0.jpg'),
(588, 191, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:900;s:6:\"height\";i:900;s:4:\"file\";s:67:\"2023/06/Ao-bong-da-real-madrid-san-khach-mau-ba-hang-viet-nam-0.jpg\";s:8:\"filesize\";i:372099;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(589, 192, '_wp_attached_file', '2023/06/Ao-bong-da-real-madrid-san-khach-hang-viet-nam-0.jpg'),
(590, 192, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:900;s:6:\"height\";i:900;s:4:\"file\";s:60:\"2023/06/Ao-bong-da-real-madrid-san-khach-hang-viet-nam-0.jpg\";s:8:\"filesize\";i:468874;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(591, 189, '_thumbnail_id', '226'),
(592, 193, 'product_price', '100.000'),
(593, 193, 'product_pricesale', '120.000'),
(594, 193, 'product_qty', '10000'),
(595, 193, '_edit_last', '1'),
(596, 193, '_edit_lock', '1688053375:1'),
(597, 193, '_thumbnail_id', '230'),
(598, 194, 'product_price', '100.000'),
(599, 194, 'product_pricesale', '120.000'),
(600, 194, 'product_qty', '10000'),
(601, 194, '_edit_last', '1'),
(602, 194, '_edit_lock', '1688053465:1'),
(603, 194, '_thumbnail_id', '231'),
(604, 195, 'product_price', '100.000'),
(605, 195, 'product_pricesale', '120.000'),
(606, 195, 'product_qty', '10000'),
(607, 195, '_edit_last', '1'),
(608, 195, '_edit_lock', '1688053533:1'),
(609, 196, '_wp_attached_file', '2023/06/Ao-bong-da-barca-soc-0.png'),
(610, 196, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:800;s:4:\"file\";s:34:\"2023/06/Ao-bong-da-barca-soc-0.png\";s:8:\"filesize\";i:415659;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(611, 195, '_thumbnail_id', '196'),
(612, 197, '_menu_item_type', 'taxonomy'),
(613, 197, '_menu_item_menu_item_parent', '0'),
(614, 197, '_menu_item_object_id', '15'),
(615, 197, '_menu_item_object', 'product-category'),
(616, 197, '_menu_item_target', ''),
(617, 197, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(618, 197, '_menu_item_xfn', ''),
(619, 197, '_menu_item_url', ''),
(621, 198, '_menu_item_type', 'taxonomy'),
(622, 198, '_menu_item_menu_item_parent', '0'),
(623, 198, '_menu_item_object_id', '16'),
(624, 198, '_menu_item_object', 'product-category'),
(625, 198, '_menu_item_target', ''),
(626, 198, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(627, 198, '_menu_item_xfn', ''),
(628, 198, '_menu_item_url', ''),
(630, 69, '_wp_old_date', '2023-06-14'),
(631, 74, '_wp_old_date', '2023-06-14'),
(632, 70, '_wp_old_date', '2023-06-14'),
(633, 71, '_wp_old_date', '2023-06-14'),
(634, 72, '_wp_old_date', '2023-06-14'),
(635, 73, '_wp_old_date', '2023-06-14'),
(636, 65, '_wp_old_date', '2023-06-14'),
(637, 66, '_wp_old_date', '2023-06-14'),
(638, 67, '_wp_old_date', '2023-06-14'),
(639, 68, '_wp_old_date', '2023-06-14'),
(640, 143, '_wp_old_date', '2023-06-14'),
(641, 154, '_wp_old_date', '2023-06-14'),
(642, 176, '_wp_old_date', '2023-06-14'),
(643, 199, '_menu_item_type', 'taxonomy'),
(644, 199, '_menu_item_menu_item_parent', '0'),
(645, 199, '_menu_item_object_id', '15'),
(646, 199, '_menu_item_object', 'product-category'),
(647, 199, '_menu_item_target', ''),
(648, 199, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(649, 199, '_menu_item_xfn', ''),
(650, 199, '_menu_item_url', ''),
(652, 200, '_menu_item_type', 'taxonomy'),
(653, 200, '_menu_item_menu_item_parent', '0'),
(654, 200, '_menu_item_object_id', '16'),
(655, 200, '_menu_item_object', 'product-category'),
(656, 200, '_menu_item_target', ''),
(657, 200, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(658, 200, '_menu_item_xfn', ''),
(659, 200, '_menu_item_url', ''),
(664, 204, '_menu_item_type', 'post_type'),
(665, 204, '_menu_item_menu_item_parent', '198'),
(666, 204, '_menu_item_object_id', '195'),
(667, 204, '_menu_item_object', 'product'),
(668, 204, '_menu_item_target', ''),
(669, 204, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(670, 204, '_menu_item_xfn', ''),
(671, 204, '_menu_item_url', ''),
(673, 205, '_menu_item_type', 'post_type'),
(674, 205, '_menu_item_menu_item_parent', '198'),
(675, 205, '_menu_item_object_id', '194'),
(676, 205, '_menu_item_object', 'product'),
(677, 205, '_menu_item_target', ''),
(678, 205, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(679, 205, '_menu_item_xfn', ''),
(680, 205, '_menu_item_url', ''),
(682, 206, '_menu_item_type', 'post_type'),
(683, 206, '_menu_item_menu_item_parent', '198'),
(684, 206, '_menu_item_object_id', '193'),
(685, 206, '_menu_item_object', 'product'),
(686, 206, '_menu_item_target', ''),
(687, 206, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(688, 206, '_menu_item_xfn', ''),
(689, 206, '_menu_item_url', ''),
(691, 207, '_menu_item_type', 'post_type'),
(692, 207, '_menu_item_menu_item_parent', '198'),
(693, 207, '_menu_item_object_id', '189'),
(694, 207, '_menu_item_object', 'product'),
(695, 207, '_menu_item_target', ''),
(696, 207, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(697, 207, '_menu_item_xfn', ''),
(698, 207, '_menu_item_url', ''),
(700, 208, '_menu_item_type', 'post_type'),
(701, 208, '_menu_item_menu_item_parent', '197'),
(702, 208, '_menu_item_object_id', '187'),
(703, 208, '_menu_item_object', 'product'),
(704, 208, '_menu_item_target', ''),
(705, 208, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(706, 208, '_menu_item_xfn', ''),
(707, 208, '_menu_item_url', ''),
(709, 209, '_menu_item_type', 'post_type'),
(710, 209, '_menu_item_menu_item_parent', '197'),
(711, 209, '_menu_item_object_id', '184'),
(712, 209, '_menu_item_object', 'product'),
(713, 209, '_menu_item_target', ''),
(714, 209, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(715, 209, '_menu_item_xfn', ''),
(716, 209, '_menu_item_url', ''),
(718, 210, '_menu_item_type', 'post_type'),
(719, 210, '_menu_item_menu_item_parent', '197'),
(720, 210, '_menu_item_object_id', '182'),
(721, 210, '_menu_item_object', 'product'),
(722, 210, '_menu_item_target', ''),
(723, 210, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(724, 210, '_menu_item_xfn', ''),
(725, 210, '_menu_item_url', ''),
(727, 211, '_menu_item_type', 'post_type'),
(728, 211, '_menu_item_menu_item_parent', '197'),
(729, 211, '_menu_item_object_id', '180'),
(730, 211, '_menu_item_object', 'product'),
(731, 211, '_menu_item_target', ''),
(732, 211, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(733, 211, '_menu_item_xfn', ''),
(734, 211, '_menu_item_url', ''),
(736, 69, '_wp_old_date', '2023-06-16'),
(737, 74, '_wp_old_date', '2023-06-16'),
(738, 70, '_wp_old_date', '2023-06-16'),
(739, 71, '_wp_old_date', '2023-06-16'),
(740, 72, '_wp_old_date', '2023-06-16'),
(741, 73, '_wp_old_date', '2023-06-16'),
(742, 65, '_wp_old_date', '2023-06-16'),
(743, 66, '_wp_old_date', '2023-06-16'),
(744, 67, '_wp_old_date', '2023-06-16'),
(745, 68, '_wp_old_date', '2023-06-16'),
(746, 143, '_wp_old_date', '2023-06-16'),
(747, 154, '_wp_old_date', '2023-06-16'),
(748, 176, '_wp_old_date', '2023-06-16'),
(749, 197, '_wp_old_date', '2023-06-16'),
(750, 198, '_wp_old_date', '2023-06-16'),
(751, 213, 'product_price', '100.000'),
(752, 213, 'product_pricesale', '120.000'),
(753, 213, 'product_qty', '1000'),
(754, 213, '_edit_last', '1'),
(755, 213, '_edit_lock', '1688053683:1'),
(756, 214, '_wp_attached_file', '2023/06/Ao-bong-da-psg-san-khach-0.jpg'),
(757, 214, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:900;s:6:\"height\";i:900;s:4:\"file\";s:38:\"2023/06/Ao-bong-da-psg-san-khach-0.jpg\";s:8:\"filesize\";i:350910;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(758, 213, '_thumbnail_id', '232'),
(759, 215, 'product_price', '100.000'),
(760, 215, 'product_pricesale', '120.000'),
(761, 215, 'product_qty', '1000'),
(762, 215, '_edit_last', '1'),
(763, 215, '_edit_lock', '1688053605:1'),
(764, 216, '_wp_attached_file', '2023/06/Ao-bong-da-psg-xanh-den-hang-viet-nam-0.png'),
(765, 216, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:800;s:4:\"file\";s:51:\"2023/06/Ao-bong-da-psg-xanh-den-hang-viet-nam-0.png\";s:8:\"filesize\";i:491864;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(766, 215, '_thumbnail_id', '216'),
(767, 220, 'product_price', NULL),
(768, 220, 'product_pricesale', NULL),
(769, 220, 'product_qty', NULL),
(770, 221, '_wp_attached_file', '2023/06/Ao-bong-da-manchester-united-do-0.png'),
(771, 221, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:800;s:4:\"file\";s:45:\"2023/06/Ao-bong-da-manchester-united-do-0.png\";s:8:\"filesize\";i:479976;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(772, 223, '_wp_attached_file', '2023/06/Ao-bong-da-mu-san-khach-mau-ba-hang-viet-nam-0-1.jpg'),
(773, 223, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:900;s:6:\"height\";i:900;s:4:\"file\";s:60:\"2023/06/Ao-bong-da-mu-san-khach-mau-ba-hang-viet-nam-0-1.jpg\";s:8:\"filesize\";i:364703;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(774, 224, '_wp_attached_file', '2023/06/Ao-bong-da-man-city-den-hang-viet-nam-0.png'),
(775, 224, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:800;s:4:\"file\";s:51:\"2023/06/Ao-bong-da-man-city-den-hang-viet-nam-0.png\";s:8:\"filesize\";i:524876;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(776, 225, '_wp_attached_file', '2023/06/Ao-bong-da-arsenal-do-hang-viet-nam-0.png'),
(777, 225, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:800;s:4:\"file\";s:49:\"2023/06/Ao-bong-da-arsenal-do-hang-viet-nam-0.png\";s:8:\"filesize\";i:483365;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(778, 226, '_wp_attached_file', '2023/06/Ao-bong-da-real-madrid-trang-hang-viet-nam-0.png'),
(779, 226, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:800;s:4:\"file\";s:56:\"2023/06/Ao-bong-da-real-madrid-trang-hang-viet-nam-0.png\";s:8:\"filesize\";i:435780;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(780, 227, '_wp_attached_file', '2023/06/Ao-bong-da-inter-san-nha-hang-viet-nam-0-768x768-1.jpg'),
(781, 227, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:62:\"2023/06/Ao-bong-da-inter-san-nha-hang-viet-nam-0-768x768-1.jpg\";s:8:\"filesize\";i:75477;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(782, 228, '_wp_attached_file', '2023/06/Ao-bong-da-juventus-san-nha-hang-viet-nam-1.jpg'),
(783, 228, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:900;s:6:\"height\";i:900;s:4:\"file\";s:55:\"2023/06/Ao-bong-da-juventus-san-nha-hang-viet-nam-1.jpg\";s:8:\"filesize\";i:410576;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(784, 230, '_wp_attached_file', '2023/06/Ao-bong-da-bayern-do-0.png'),
(785, 230, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:800;s:4:\"file\";s:34:\"2023/06/Ao-bong-da-bayern-do-0.png\";s:8:\"filesize\";i:357531;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(786, 231, '_wp_attached_file', '2023/06/Ao-bong-da-man-city-xanh-bien-hang-viet-nam-0.png');
INSERT INTO `ntk_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(787, 231, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:800;s:4:\"file\";s:57:\"2023/06/Ao-bong-da-man-city-xanh-bien-hang-viet-nam-0.png\";s:8:\"filesize\";i:349858;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(788, 232, '_wp_attached_file', '2023/06/Ao-bong-da-arsenal-xanh-ly-0.png'),
(789, 232, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:800;s:4:\"file\";s:40:\"2023/06/Ao-bong-da-arsenal-xanh-ly-0.png\";s:8:\"filesize\";i:381008;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(817, 69, '_wp_old_date', '2023-06-21'),
(818, 74, '_wp_old_date', '2023-06-21'),
(819, 70, '_wp_old_date', '2023-06-21'),
(820, 71, '_wp_old_date', '2023-06-21'),
(821, 72, '_wp_old_date', '2023-06-21'),
(822, 73, '_wp_old_date', '2023-06-21'),
(823, 65, '_wp_old_date', '2023-06-21'),
(824, 66, '_wp_old_date', '2023-06-21'),
(825, 67, '_wp_old_date', '2023-06-21'),
(826, 68, '_wp_old_date', '2023-06-21'),
(827, 143, '_wp_old_date', '2023-06-21'),
(828, 154, '_wp_old_date', '2023-06-21'),
(829, 176, '_wp_old_date', '2023-06-21'),
(830, 197, '_wp_old_date', '2023-06-21'),
(831, 211, '_wp_old_date', '2023-06-21'),
(832, 208, '_wp_old_date', '2023-06-21'),
(833, 209, '_wp_old_date', '2023-06-21'),
(834, 210, '_wp_old_date', '2023-06-21'),
(835, 198, '_wp_old_date', '2023-06-21'),
(836, 204, '_wp_old_date', '2023-06-21'),
(837, 205, '_wp_old_date', '2023-06-21'),
(838, 206, '_wp_old_date', '2023-06-21'),
(839, 207, '_wp_old_date', '2023-06-21'),
(840, 69, '_wp_old_date', '2023-06-29'),
(841, 74, '_wp_old_date', '2023-06-29'),
(842, 70, '_wp_old_date', '2023-06-29'),
(843, 71, '_wp_old_date', '2023-06-29'),
(844, 72, '_wp_old_date', '2023-06-29'),
(845, 73, '_wp_old_date', '2023-06-29'),
(846, 65, '_wp_old_date', '2023-06-29'),
(847, 66, '_wp_old_date', '2023-06-29'),
(848, 67, '_wp_old_date', '2023-06-29'),
(849, 68, '_wp_old_date', '2023-06-29'),
(850, 143, '_wp_old_date', '2023-06-29'),
(851, 154, '_wp_old_date', '2023-06-29'),
(852, 176, '_wp_old_date', '2023-06-29'),
(853, 197, '_wp_old_date', '2023-06-29'),
(854, 211, '_wp_old_date', '2023-06-29'),
(855, 208, '_wp_old_date', '2023-06-29'),
(856, 209, '_wp_old_date', '2023-06-29'),
(857, 210, '_wp_old_date', '2023-06-29'),
(858, 198, '_wp_old_date', '2023-06-29'),
(859, 204, '_wp_old_date', '2023-06-29'),
(860, 205, '_wp_old_date', '2023-06-29'),
(861, 206, '_wp_old_date', '2023-06-29'),
(862, 207, '_wp_old_date', '2023-06-29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ntk_posts`
--

CREATE TABLE `ntk_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `ntk_posts`
--

INSERT INTO `ntk_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(8, 1, '2023-04-26 23:53:43', '2023-04-26 16:53:43', '', 'Ngoại Hạng Anh', '', 'publish', 'closed', 'closed', '', 'ngoai-hang-anh', '', '', '2023-04-26 23:53:43', '2023-04-26 16:53:43', '', 0, 'http://localhost/nguyentankhang_2120110085/?page_id=8', 0, 'page', '', 0),
(9, 1, '2023-04-26 23:53:43', '2023-04-26 16:53:43', '', 'Ngoại Hạng Anh', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-04-26 23:53:43', '2023-04-26 16:53:43', '', 8, 'http://localhost/nguyentankhang_2120110085/?p=9', 0, 'revision', '', 0),
(10, 1, '2023-04-26 23:54:42', '2023-04-26 16:54:42', '', 'Manchester United', '', 'publish', 'closed', 'closed', '', 'manchester-united', '', '', '2023-04-26 23:54:42', '2023-04-26 16:54:42', '', 8, 'http://localhost/nguyentankhang_2120110085/?page_id=10', 0, 'page', '', 0),
(11, 1, '2023-04-26 23:54:42', '2023-04-26 16:54:42', '', 'Manchester United', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-04-26 23:54:42', '2023-04-26 16:54:42', '', 10, 'http://localhost/nguyentankhang_2120110085/?p=11', 0, 'revision', '', 0),
(18, 1, '2023-04-27 00:00:19', '2023-04-26 17:00:19', '', 'Tottenham', '', 'publish', 'closed', 'closed', '', 'tottenham', '', '', '2023-04-27 00:00:19', '2023-04-26 17:00:19', '', 8, 'http://localhost/nguyentankhang_2120110085/?page_id=18', 0, 'page', '', 0),
(19, 1, '2023-04-27 00:00:19', '2023-04-26 17:00:19', '', 'Tottenham', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2023-04-27 00:00:19', '2023-04-26 17:00:19', '', 18, 'http://localhost/nguyentankhang_2120110085/?p=19', 0, 'revision', '', 0),
(20, 1, '2023-04-27 00:02:29', '2023-04-26 17:02:29', '', 'Chelsea', '', 'publish', 'closed', 'closed', '', 'chelsea', '', '', '2023-04-27 00:02:29', '2023-04-26 17:02:29', '', 8, 'http://localhost/nguyentankhang_2120110085/?page_id=20', 0, 'page', '', 0),
(21, 1, '2023-04-27 00:02:29', '2023-04-26 17:02:29', '', 'Chelsea', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2023-04-27 00:02:29', '2023-04-26 17:02:29', '', 20, 'http://localhost/nguyentankhang_2120110085/?p=21', 0, 'revision', '', 0),
(23, 1, '2023-04-27 00:04:28', '2023-04-26 17:04:28', '', '1-2604163734', '', 'inherit', 'open', 'closed', '', '1-2604163734', '', '', '2023-04-27 00:04:28', '2023-04-26 17:04:28', '', 10, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/04/1-2604163734.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2023-04-27 00:17:39', '2023-04-26 17:17:39', 'Không chỉ để Sevilla cầm hòa 2-2 trên sân nhà ở tứ kết lượt đi Europa League 2022/23, MU còn mất nguyên cặp trung vệ số 1 là Raphael Varane và Lisandro Martinez vì chấn thương. Varane phải rời sân sớm, nhường vị trí cho đội trưởng Harry Maguire.\r\n\r\nLisandro Martinez thậm chí phải nhờ sự trợ giúp của các cầu thủ Sevilla mới có thể rời sân trong hiệp thi đấu thứ 2. Martinez đã bị gãy xương thứ 5 của bàn chân phải và nghỉ hết mùa, trong khi đó Varane gặp chấn thương Achilles, anh chỉ có cơ hội tham dự trận chung kết FA Cup với Man City vào đầu tháng 6 tới.\r\n\r\n<img class=\"alignnone size-full wp-image-23\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/04/1-2604163734.jpg\" alt=\"\" width=\"630\" height=\"354\" />\r\n\r\nKhông có Lisandro Martinez và Raphael Varane, bây giờ Harry Maguire và Victor Lindelof sẽ trở thành cặp trung vệ số 1 của MU từ nay đến cuối mùa. Mới nhất, HLV Erik ten Hag đã đôn cầu thủ trẻ 18 tuổi Willy Kambwala lên đội 1, anh có thể có tên trong danh sách thi đấu trước Tottenham.\r\n\r\nKambwala đến Old Trafford vào năm 2020 từ Sochaux với giá 3,5 triệu bảng. Cầu thủ người Pháp được Ole Gunnar Solskjaer đưa về Old Trafford. Trung vệ 18 tuổi đã có cơ hội được tập luyện với các đàn anh ở đội 1, qua đó tích lũy kinh nghiệm.\r\n\r\nAnh rất khó đá chính trước Tottenham, nhưng sẵn sàng vào sân từ băng ghế dự bị nếu được HLV Ten Hag yêu cầu. MU hiện đang xếp thứ 4 trên BXH Ngoại hạng Anh, hơn Spurs xếp thứ 5 khoảng cách 6 điểm và còn đá ít hơn 2 trận.', 'Erik ten Hag bổ sung trung vệ trước trận gặp Tottenham', '', 'publish', 'open', 'open', '', 'erik-ten-hag-bo-sung-trung-ve-truoc-tran-gap-tottenham', '', '', '2023-04-27 00:17:39', '2023-04-26 17:17:39', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=27', 0, 'post', '', 0),
(28, 1, '2023-04-27 00:17:39', '2023-04-26 17:17:39', 'Không chỉ để Sevilla cầm hòa 2-2 trên sân nhà ở tứ kết lượt đi Europa League 2022/23, MU còn mất nguyên cặp trung vệ số 1 là Raphael Varane và Lisandro Martinez vì chấn thương. Varane phải rời sân sớm, nhường vị trí cho đội trưởng Harry Maguire.\r\n\r\nLisandro Martinez thậm chí phải nhờ sự trợ giúp của các cầu thủ Sevilla mới có thể rời sân trong hiệp thi đấu thứ 2. Martinez đã bị gãy xương thứ 5 của bàn chân phải và nghỉ hết mùa, trong khi đó Varane gặp chấn thương Achilles, anh chỉ có cơ hội tham dự trận chung kết FA Cup với Man City vào đầu tháng 6 tới.\r\n\r\n<img class=\"alignnone size-full wp-image-23\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/04/1-2604163734.jpg\" alt=\"\" width=\"630\" height=\"354\" />\r\n\r\nKhông có Lisandro Martinez và Raphael Varane, bây giờ Harry Maguire và Victor Lindelof sẽ trở thành cặp trung vệ số 1 của MU từ nay đến cuối mùa. Mới nhất, HLV Erik ten Hag đã đôn cầu thủ trẻ 18 tuổi Willy Kambwala lên đội 1, anh có thể có tên trong danh sách thi đấu trước Tottenham.\r\n\r\nKambwala đến Old Trafford vào năm 2020 từ Sochaux với giá 3,5 triệu bảng. Cầu thủ người Pháp được Ole Gunnar Solskjaer đưa về Old Trafford. Trung vệ 18 tuổi đã có cơ hội được tập luyện với các đàn anh ở đội 1, qua đó tích lũy kinh nghiệm.\r\n\r\nAnh rất khó đá chính trước Tottenham, nhưng sẵn sàng vào sân từ băng ghế dự bị nếu được HLV Ten Hag yêu cầu. MU hiện đang xếp thứ 4 trên BXH Ngoại hạng Anh, hơn Spurs xếp thứ 5 khoảng cách 6 điểm và còn đá ít hơn 2 trận.', 'Erik ten Hag bổ sung trung vệ trước trận gặp Tottenham', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2023-04-27 00:17:39', '2023-04-26 17:17:39', '', 27, 'http://localhost/nguyentankhang_2120110085/?p=28', 0, 'revision', '', 0),
(32, 1, '2023-04-27 10:42:47', '2023-04-27 03:42:47', '', 'Arsenal', '', 'publish', 'closed', 'closed', '', 'arsenal', '', '', '2023-04-27 10:42:47', '2023-04-27 03:42:47', '', 8, 'http://localhost/nguyentankhang_2120110085/?page_id=32', 0, 'page', '', 0),
(33, 1, '2023-04-27 10:42:47', '2023-04-27 03:42:47', '', 'Arsenal', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2023-04-27 10:42:47', '2023-04-27 03:42:47', '', 32, 'http://localhost/nguyentankhang_2120110085/?p=33', 0, 'revision', '', 0),
(34, 1, '2023-04-27 10:47:45', '2023-04-27 03:47:45', '\"Chung kết\" Premier League 2022-23 không cân bằng như mọi người dự đoán, mà trở thành cuộc chiến một chiều khi nhà ĐKVĐ <a class=\"hyperlink\" href=\"https://www.bongda.com.vn/Manchester+City-search/\" target=\"_blank\" rel=\"noopener\">Man City</a> vượt trước đội khách <a class=\"hyperlink\" href=\"https://www.bongda.com.vn/Arsenal-search/\" target=\"_blank\" rel=\"noopener\">Arsenal</a>.\r\n\r\n<img class=\"alignnone size-full wp-image-35\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/04/man-city-arsenal-526-0955.jpg\" alt=\"\" width=\"1620\" height=\"1080\" />\r\n\r\n<strong>- Edersen, 6 điểm:</strong> Một trận đấu mà thủ môn người Brazil giống khán giả hơn. Anh không tham gia nhiều vào lối chơi, chỉ có 1 pha cản phá và nhận 1 bàn thua khi mọi người nghĩ rằng Man City có trận giữ sạch lưới.\r\n\r\n<strong>- Manuel Akanji, 7 điểm:</strong> Cầu thủ người Thụy Sĩ giành vị trí đá chính của Aymeric Laporte trong bối cảnh Nathan Ake vắng mặt vì chấn thương.\r\n\r\nAkanji được xếp đá cánh trái trong ngày Pep Guardiola đưa Man City về lại hàng thủ 4 người. Anh đá nổi bật và khiến Bukayo Saka buộc phải rời sân sớm.\r\n\r\n<img class=\"alignnone size-full wp-image-36\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/04/de-bruyne-man-city-arsenal-527-0955.jpg\" alt=\"\" width=\"1620\" height=\"1080\" />\r\n\r\n<strong>- Kevin de Bruyne, điểm 9,5:</strong> Đây là khác biệt lớn nhất giữa nhà ĐKVĐ với đội bóng đang mơ về chức vô địch bóng đá Anh đầu tiên sau 19 năm.\r\n\r\nDe Bruyne ghi dấu vào 3 bàn thắng đầu tiên trong trận đấu, trong đó anh trực tiếp mở tỷ số và nâng cách biệt lên 3-0. Cầu thủ người Bỉ khiến Arsenal hoàn toàn sụp đổ.\r\n\r\n<strong>- Erling Haaland, điểm 9:</strong> Ngôi sao người Na Uy <a class=\"hyperlink\" href=\"https://www.bongda.com.vn/haaland-xoa-toc-truoc-khi-di-vao-lich-su-premier-league-d682058.html\" target=\"_blank\" rel=\"noopener\">kiến tạo cả hai bàn thắng</a> của De Bruyne, sự đảo người vai trò giữa hai cầu thủ tấn công tốt nhất trong tay Pep Guardiola. Sau đó, anh lập công ấn định kết quả 4-1.\r\n\r\nHaaland tham gia vào 59 bàn sau 43 trận trên mọi đấu trường mùa này với Man City, với 49 bàn và 8 kiến tạo. Cột mốc 50 bàn chỉ còn cách anh một bước chân.', 'Chấm điểm Man City 4-1 Arsenal: Song tấu De Bruyne - Haaland', '', 'publish', 'open', 'open', '', 'cham-diem-man-city-4-1-arsenal-song-tau-de-bruyne-haaland', '', '', '2023-04-27 10:47:45', '2023-04-27 03:47:45', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=34', 0, 'post', '', 0),
(35, 1, '2023-04-27 10:45:56', '2023-04-27 03:45:56', '', 'man-city-arsenal-526-0955', '', 'inherit', 'open', 'closed', '', 'man-city-arsenal-526-0955', '', '', '2023-04-27 10:45:56', '2023-04-27 03:45:56', '', 34, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/04/man-city-arsenal-526-0955.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2023-04-27 10:47:15', '2023-04-27 03:47:15', '', 'de-bruyne-man-city-arsenal-527-0955', '', 'inherit', 'open', 'closed', '', 'de-bruyne-man-city-arsenal-527-0955', '', '', '2023-04-27 10:47:15', '2023-04-27 03:47:15', '', 34, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/04/de-bruyne-man-city-arsenal-527-0955.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2023-04-27 10:47:45', '2023-04-27 03:47:45', '\"Chung kết\" Premier League 2022-23 không cân bằng như mọi người dự đoán, mà trở thành cuộc chiến một chiều khi nhà ĐKVĐ <a class=\"hyperlink\" href=\"https://www.bongda.com.vn/Manchester+City-search/\" target=\"_blank\" rel=\"noopener\">Man City</a> vượt trước đội khách <a class=\"hyperlink\" href=\"https://www.bongda.com.vn/Arsenal-search/\" target=\"_blank\" rel=\"noopener\">Arsenal</a>.\r\n\r\n<img class=\"alignnone size-full wp-image-35\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/04/man-city-arsenal-526-0955.jpg\" alt=\"\" width=\"1620\" height=\"1080\" />\r\n\r\n<strong>- Edersen, 6 điểm:</strong> Một trận đấu mà thủ môn người Brazil giống khán giả hơn. Anh không tham gia nhiều vào lối chơi, chỉ có 1 pha cản phá và nhận 1 bàn thua khi mọi người nghĩ rằng Man City có trận giữ sạch lưới.\r\n\r\n<strong>- Manuel Akanji, 7 điểm:</strong> Cầu thủ người Thụy Sĩ giành vị trí đá chính của Aymeric Laporte trong bối cảnh Nathan Ake vắng mặt vì chấn thương.\r\n\r\nAkanji được xếp đá cánh trái trong ngày Pep Guardiola đưa Man City về lại hàng thủ 4 người. Anh đá nổi bật và khiến Bukayo Saka buộc phải rời sân sớm.\r\n\r\n<img class=\"alignnone size-full wp-image-36\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/04/de-bruyne-man-city-arsenal-527-0955.jpg\" alt=\"\" width=\"1620\" height=\"1080\" />\r\n\r\n<strong>- Kevin de Bruyne, điểm 9,5:</strong> Đây là khác biệt lớn nhất giữa nhà ĐKVĐ với đội bóng đang mơ về chức vô địch bóng đá Anh đầu tiên sau 19 năm.\r\n\r\nDe Bruyne ghi dấu vào 3 bàn thắng đầu tiên trong trận đấu, trong đó anh trực tiếp mở tỷ số và nâng cách biệt lên 3-0. Cầu thủ người Bỉ khiến Arsenal hoàn toàn sụp đổ.\r\n\r\n<strong>- Erling Haaland, điểm 9:</strong> Ngôi sao người Na Uy <a class=\"hyperlink\" href=\"https://www.bongda.com.vn/haaland-xoa-toc-truoc-khi-di-vao-lich-su-premier-league-d682058.html\" target=\"_blank\" rel=\"noopener\">kiến tạo cả hai bàn thắng</a> của De Bruyne, sự đảo người vai trò giữa hai cầu thủ tấn công tốt nhất trong tay Pep Guardiola. Sau đó, anh lập công ấn định kết quả 4-1.\r\n\r\nHaaland tham gia vào 59 bàn sau 43 trận trên mọi đấu trường mùa này với Man City, với 49 bàn và 8 kiến tạo. Cột mốc 50 bàn chỉ còn cách anh một bước chân.', 'Chấm điểm Man City 4-1 Arsenal: Song tấu De Bruyne - Haaland', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2023-04-27 10:47:45', '2023-04-27 03:47:45', '', 34, 'http://localhost/nguyentankhang_2120110085/?p=37', 0, 'revision', '', 0),
(38, 1, '2023-04-27 10:49:14', '2023-04-27 03:49:14', '', 'Manchester City', '', 'publish', 'closed', 'closed', '', 'manchester-city', '', '', '2023-04-27 10:49:14', '2023-04-27 03:49:14', '', 8, 'http://localhost/nguyentankhang_2120110085/?page_id=38', 0, 'page', '', 0),
(39, 1, '2023-04-27 10:49:14', '2023-04-27 03:49:14', '', 'Manchester City', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2023-04-27 10:49:14', '2023-04-27 03:49:14', '', 38, 'http://localhost/nguyentankhang_2120110085/?p=39', 0, 'revision', '', 0),
(40, 1, '2023-04-27 10:52:01', '2023-04-27 03:52:01', '<p class=\"description\">Thất bại 1-6 dưới tay Newcastle ngày 23/4 khiến HLV tạm quyền Cristian Stellini bị Tottenham cho thôi việc.</p>\r\n\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">Trong thông báo ngày 24/4, chủ tịch Tottenham Daniel Levy gọi thất bại trước Newcastle là \"kết quả tàn khốc, không thể chấp nhận\".</p>\r\n<p class=\"Normal\">\"Chúng ta có thể xem xét nhiều lý do khiến nó xảy ra, và trong khi tôi, ban lãnh đạo, các HLV, cầu thủ phải chịu trách nhiệm chung, trách nhiệm cuối cùng phải thuộc về tôi, Cristian sẽ rời vị trí hiện tại cùng ê-kíp của ông\", Levy cho biết thêm.</p>\r\n\r\n</article>\r\n\r\n[caption id=\"attachment_41\" align=\"alignnone\" width=\"1020\"]<img class=\"size-full wp-image-41\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/04/1-jpeg-1682383762-1682383776-3863-1682383813.jpg\" alt=\"\" width=\"1020\" height=\"612\" /> Soccer Football - Premier League - Newcastle United v Tottenham Hotspur - St James\' Park, Newcastle, Britain - April 23, 2023 Tottenham Hotspur manager Cristian Stellini reacts REUTERS/Scott Heppell[/caption]\r\n<p class=\"Normal\">Stellini được bổ nhiệm làm HLV tạm quyền sau khi Tottenham <a href=\"https://vnexpress.net/tottenham-sa-thai-hlv-conte-4585817.html\" rel=\"dofollow\" data-itm-source=\"#vn_source=Detail-TheThao_BongDa_GiaiNgoaiHangAnh-4597639&amp;vn_campaign=Box-InternalLink&amp;vn_medium=Link-SaThaiAntonioConte&amp;vn_term=Desktop&amp;vn_thumb=0\" data-itm-added=\"1\">sa thải Antonio Conte</a> cuối tháng Ba. Ông chỉ mới dẫn đội bốn trận, lần lượt hoà Everton 1-1, thắng Brighton 2-1, thua Bournemouth 2-3 và thua Newcastle 1-6.</p>\r\n<p class=\"Normal\">Sau khi chia tay Stellini, Tottenham bổ nhiệm cựu tiền vệ Ryan Mason làm HLV tạm quyền đến hết mùa. Hồi năm 2021, sau khi Tottenham sa thải Jose Mourinho, Mason cũng nhận vai trò này và trở thành HLV trẻ nhất cầm quân tại Ngoại hạng Anh ở tuổi 29.</p>\r\n<p class=\"Normal\">\"Cristian nhận trách nhiệm trong thời điểm khó khăn của mùa giải và tôi muốn cảm ơn ông vì cách hành xử đầy chuyên nghiệp. Cristian và đội ngũ huấn luyện của ông duy trì cách làm việc đúng đắn trong thời điểm thử thách và tôi cầu chúc họ những điều tốt đẹp\", Levy nói.</p>\r\n<p class=\"Normal\">Dẫn dắt Tottenham, dù chỉ trong vai trò tạm quyền, là lần đầu Stellini làm HLV một CLB. Trước đó, ông chủ yếu làm trợ lý cho Conte. Kế hoạch ban đầu của Tottenham là giữ Stellini ở vị trí tạm quyền cho đến hết mùa. Trong thời gian đó, Levy và các cộng sự sẽ tìm kiếm một HLV giỏi. Mauricio Pochettino và Julian Nagelsmann là những ứng viên hàng đầu.</p>\r\n<p class=\"Normal\">Tuy nhiên, thất bại muối mặt trước Newcastle khiến ban lãnh đạo Tottenham phải đổi dự định và đẩy nhanh quá trình tìm kiếm HLV mới. Tottenham đang đứng thứ năm Ngoại hạng Anh, kém đội thứ tư Man Utd sáu điểm và đá nhiều hơn hai trận. Họ vẫn còn cơ hội tranh suất dự Champions League mùa tới và cần đánh bại Man Utd trong trận đấu cuối tuần này nếu muốn làm điều đó.</p>', 'Tottenham sa thải HLV', '', 'publish', 'open', 'open', '', 'tottenham-sa-thai-hlv', '', '', '2023-04-27 10:52:01', '2023-04-27 03:52:01', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=40', 0, 'post', '', 1),
(41, 1, '2023-04-27 10:51:14', '2023-04-27 03:51:14', '', 'Premier League - Newcastle United v Tottenham Hotspur', 'Soccer Football - Premier League - Newcastle United v Tottenham Hotspur - St James\' Park, Newcastle, Britain - April 23, 2023 Tottenham Hotspur manager Cristian Stellini reacts REUTERS/Scott Heppell', 'inherit', 'open', 'closed', '', 'premier-league-newcastle-united-v-tottenham-hotspur', '', '', '2023-04-27 10:51:14', '2023-04-27 03:51:14', '', 40, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/04/1-jpeg-1682383762-1682383776-3863-1682383813.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2023-04-27 10:52:01', '2023-04-27 03:52:01', '<p class=\"description\">Thất bại 1-6 dưới tay Newcastle ngày 23/4 khiến HLV tạm quyền Cristian Stellini bị Tottenham cho thôi việc.</p>\r\n\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">Trong thông báo ngày 24/4, chủ tịch Tottenham Daniel Levy gọi thất bại trước Newcastle là \"kết quả tàn khốc, không thể chấp nhận\".</p>\r\n<p class=\"Normal\">\"Chúng ta có thể xem xét nhiều lý do khiến nó xảy ra, và trong khi tôi, ban lãnh đạo, các HLV, cầu thủ phải chịu trách nhiệm chung, trách nhiệm cuối cùng phải thuộc về tôi, Cristian sẽ rời vị trí hiện tại cùng ê-kíp của ông\", Levy cho biết thêm.</p>\r\n\r\n</article>\r\n\r\n[caption id=\"attachment_41\" align=\"alignnone\" width=\"1020\"]<img class=\"size-full wp-image-41\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/04/1-jpeg-1682383762-1682383776-3863-1682383813.jpg\" alt=\"\" width=\"1020\" height=\"612\" /> Soccer Football - Premier League - Newcastle United v Tottenham Hotspur - St James\' Park, Newcastle, Britain - April 23, 2023 Tottenham Hotspur manager Cristian Stellini reacts REUTERS/Scott Heppell[/caption]\r\n<p class=\"Normal\">Stellini được bổ nhiệm làm HLV tạm quyền sau khi Tottenham <a href=\"https://vnexpress.net/tottenham-sa-thai-hlv-conte-4585817.html\" rel=\"dofollow\" data-itm-source=\"#vn_source=Detail-TheThao_BongDa_GiaiNgoaiHangAnh-4597639&amp;vn_campaign=Box-InternalLink&amp;vn_medium=Link-SaThaiAntonioConte&amp;vn_term=Desktop&amp;vn_thumb=0\" data-itm-added=\"1\">sa thải Antonio Conte</a> cuối tháng Ba. Ông chỉ mới dẫn đội bốn trận, lần lượt hoà Everton 1-1, thắng Brighton 2-1, thua Bournemouth 2-3 và thua Newcastle 1-6.</p>\r\n<p class=\"Normal\">Sau khi chia tay Stellini, Tottenham bổ nhiệm cựu tiền vệ Ryan Mason làm HLV tạm quyền đến hết mùa. Hồi năm 2021, sau khi Tottenham sa thải Jose Mourinho, Mason cũng nhận vai trò này và trở thành HLV trẻ nhất cầm quân tại Ngoại hạng Anh ở tuổi 29.</p>\r\n<p class=\"Normal\">\"Cristian nhận trách nhiệm trong thời điểm khó khăn của mùa giải và tôi muốn cảm ơn ông vì cách hành xử đầy chuyên nghiệp. Cristian và đội ngũ huấn luyện của ông duy trì cách làm việc đúng đắn trong thời điểm thử thách và tôi cầu chúc họ những điều tốt đẹp\", Levy nói.</p>\r\n<p class=\"Normal\">Dẫn dắt Tottenham, dù chỉ trong vai trò tạm quyền, là lần đầu Stellini làm HLV một CLB. Trước đó, ông chủ yếu làm trợ lý cho Conte. Kế hoạch ban đầu của Tottenham là giữ Stellini ở vị trí tạm quyền cho đến hết mùa. Trong thời gian đó, Levy và các cộng sự sẽ tìm kiếm một HLV giỏi. Mauricio Pochettino và Julian Nagelsmann là những ứng viên hàng đầu.</p>\r\n<p class=\"Normal\">Tuy nhiên, thất bại muối mặt trước Newcastle khiến ban lãnh đạo Tottenham phải đổi dự định và đẩy nhanh quá trình tìm kiếm HLV mới. Tottenham đang đứng thứ năm Ngoại hạng Anh, kém đội thứ tư Man Utd sáu điểm và đá nhiều hơn hai trận. Họ vẫn còn cơ hội tranh suất dự Champions League mùa tới và cần đánh bại Man Utd trong trận đấu cuối tuần này nếu muốn làm điều đó.</p>', 'Tottenham sa thải HLV', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2023-04-27 10:52:01', '2023-04-27 03:52:01', '', 40, 'http://localhost/nguyentankhang_2120110085/?p=42', 0, 'revision', '', 0),
(43, 1, '2023-04-27 10:54:34', '2023-04-27 03:54:34', '', 'La Liga', '', 'publish', 'closed', 'closed', '', 'la-liga', '', '', '2023-04-27 10:54:34', '2023-04-27 03:54:34', '', 0, 'http://localhost/nguyentankhang_2120110085/?page_id=43', 0, 'page', '', 0),
(44, 1, '2023-04-27 10:54:34', '2023-04-27 03:54:34', '', 'La Liga', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2023-04-27 10:54:34', '2023-04-27 03:54:34', '', 43, 'http://localhost/nguyentankhang_2120110085/?p=44', 0, 'revision', '', 0),
(45, 1, '2023-04-27 10:55:17', '2023-04-27 03:55:17', '', 'Barcelona', '', 'publish', 'closed', 'closed', '', 'barcelona', '', '', '2023-04-27 10:55:17', '2023-04-27 03:55:17', '', 43, 'http://localhost/nguyentankhang_2120110085/?page_id=45', 0, 'page', '', 0),
(46, 1, '2023-04-27 10:55:17', '2023-04-27 03:55:17', '', 'Barcelona', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2023-04-27 10:55:17', '2023-04-27 03:55:17', '', 45, 'http://localhost/nguyentankhang_2120110085/?p=46', 0, 'revision', '', 0),
(47, 1, '2023-04-27 10:55:41', '2023-04-27 03:55:41', '', 'Atletico Madrid', '', 'publish', 'closed', 'closed', '', 'atletico-madrid', '', '', '2023-04-27 10:55:41', '2023-04-27 03:55:41', '', 43, 'http://localhost/nguyentankhang_2120110085/?page_id=47', 0, 'page', '', 0),
(48, 1, '2023-04-27 10:55:41', '2023-04-27 03:55:41', '', 'Atletico Madrid', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2023-04-27 10:55:41', '2023-04-27 03:55:41', '', 47, 'http://localhost/nguyentankhang_2120110085/?p=48', 0, 'revision', '', 0),
(49, 1, '2023-04-27 10:56:12', '2023-04-27 03:56:12', '', 'Real Madrid', '', 'publish', 'closed', 'closed', '', 'real-madrid', '', '', '2023-04-27 10:56:12', '2023-04-27 03:56:12', '', 43, 'http://localhost/nguyentankhang_2120110085/?page_id=49', 0, 'page', '', 0),
(50, 1, '2023-04-27 10:56:12', '2023-04-27 03:56:12', '', 'Real Madrid', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2023-04-27 10:56:12', '2023-04-27 03:56:12', '', 49, 'http://localhost/nguyentankhang_2120110085/?p=50', 0, 'revision', '', 0),
(52, 1, '2023-04-27 11:01:05', '2023-04-27 04:01:05', '<p class=\"sapo_detail fontbold\">Ở vòng 31 La Liga, Real Madrid bị chủ nhà Girona đánh bại 4-2 và Carlo Ancelotti chỉ trích hàng thủ thi đấu không tốt.</p>\r\n\r\n<article id=\"content_detail\">\r\n<div class=\"exp_content news_details\" data-io-article-url=\"https://www.bongda.com.vn/real-madrid-thua-mat-mat-ancelotti-mang-hang-thu-d681931.html\">\r\n\r\nReal Madrid có <a class=\"hyperlink\" href=\"https://www.bongda.com.vn/castellanos-lap-poker-xe-luoi-real-madrid-d681903.html\" target=\"_blank\" rel=\"noopener\">màn trình diễn thảm họa</a> trên sân Montilivi khiến huấn luyện viên Carlo Ancelotti đầy thất vọng, nhất là về khía cạnh phòng ngự.\r\n\r\n<em>\"Khi không có bóng, chúng tôi không đủ sự mạnh mẽ như những trận đấu khác. Đó là sự nhiệt tình\"</em>, nhà cầm quân người Italy lên tiếng sau khi Real Madrid bị đội chủ nhà Girona hạ gục 4-2.\r\n\r\n<img class=\"alignnone size-full wp-image-53\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/04/v1-0851.jpg\" alt=\"\" width=\"600\" height=\"400\" />\r\n\r\nAncelotti một lần nữa nhắc về nguyên nhân dẫn đến thất bại nặng nề của nhà ĐKVĐ bóng đá Tây Ban Nha: \"thiếu sự gắn kết\".\r\n\r\nSau chuỗi 4 chiến thắng và giữ sạch lưới, <a class=\"hyperlink\" href=\"https://www.bongda.com.vn/Real+Madrid-search/\" target=\"_blank\" rel=\"noopener\">Real Madrid</a> thi đấu rệu rã một cách khó hiểu.\r\n\r\nValentin Castellanos giúp Girona dẫn 2-0 khi hiệp một mới bước sang phút 24, trước khi Vinicius Junior rút ngắn tỷ số.\r\n\r\nNgay sau giờ nghỉ, Castellanos tiếp tục trận đấu để đời với liên tiếp 2 pha lập công khác. Tiền đạo 24 tuổi trở thành cầu thủ đầu tiên ghi \"poker\" vào lưới Real Madrid trong một trận La Liga ở thế kỷ 21 (Lucas Vazquez ghi bàn thứ 2 cho đội khách).\r\n\r\nTrong nhiều tuần, Ancelotti công khai trước truyền thông, sau khi nói riêng trong các buổi làm việc ở Valdebebas, rằng điều cần thiết là Real Madrid phải phòng ngự tốt.\r\n\r\nĐiều duy nhất để đạt hiệu quả phòng ngự là sự kết nối tập thể, và Ancelotti muốn các cầu thủ phải làm được điều đó.\r\n\r\nVài ngày trước, vị HLV 63 tuổi thậm chí còn nhấn mạnh chìa khóa thành công mùa trước là sức mạnh tập thể.\r\n\r\n</div>\r\n</article>', 'Real Madrid thua mất mặt, Ancelotti mắng hàng thủ', '', 'publish', 'open', 'open', '', 'real-madrid-thua-mat-mat-ancelotti-mang-hang-thu', '', '', '2023-04-27 11:01:05', '2023-04-27 04:01:05', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=52', 0, 'post', '', 0),
(53, 1, '2023-04-27 11:00:33', '2023-04-27 04:00:33', '', 'v1-0851', '', 'inherit', 'open', 'closed', '', 'v1-0851', '', '', '2023-04-27 11:00:33', '2023-04-27 04:00:33', '', 52, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/04/v1-0851.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2023-04-27 11:01:01', '2023-04-27 04:01:01', '', 'v2-0851', '', 'inherit', 'open', 'closed', '', 'v2-0851', '', '', '2023-04-27 11:01:01', '2023-04-27 04:01:01', '', 52, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/04/v2-0851.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2023-04-27 11:01:05', '2023-04-27 04:01:05', '<p class=\"sapo_detail fontbold\">Ở vòng 31 La Liga, Real Madrid bị chủ nhà Girona đánh bại 4-2 và Carlo Ancelotti chỉ trích hàng thủ thi đấu không tốt.</p>\r\n\r\n<article id=\"content_detail\">\r\n<div class=\"exp_content news_details\" data-io-article-url=\"https://www.bongda.com.vn/real-madrid-thua-mat-mat-ancelotti-mang-hang-thu-d681931.html\">\r\n\r\nReal Madrid có <a class=\"hyperlink\" href=\"https://www.bongda.com.vn/castellanos-lap-poker-xe-luoi-real-madrid-d681903.html\" target=\"_blank\" rel=\"noopener\">màn trình diễn thảm họa</a> trên sân Montilivi khiến huấn luyện viên Carlo Ancelotti đầy thất vọng, nhất là về khía cạnh phòng ngự.\r\n\r\n<em>\"Khi không có bóng, chúng tôi không đủ sự mạnh mẽ như những trận đấu khác. Đó là sự nhiệt tình\"</em>, nhà cầm quân người Italy lên tiếng sau khi Real Madrid bị đội chủ nhà Girona hạ gục 4-2.\r\n\r\n<img class=\"alignnone size-full wp-image-53\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/04/v1-0851.jpg\" alt=\"\" width=\"600\" height=\"400\" />\r\n\r\nAncelotti một lần nữa nhắc về nguyên nhân dẫn đến thất bại nặng nề của nhà ĐKVĐ bóng đá Tây Ban Nha: \"thiếu sự gắn kết\".\r\n\r\nSau chuỗi 4 chiến thắng và giữ sạch lưới, <a class=\"hyperlink\" href=\"https://www.bongda.com.vn/Real+Madrid-search/\" target=\"_blank\" rel=\"noopener\">Real Madrid</a> thi đấu rệu rã một cách khó hiểu.\r\n\r\nValentin Castellanos giúp Girona dẫn 2-0 khi hiệp một mới bước sang phút 24, trước khi Vinicius Junior rút ngắn tỷ số.\r\n\r\nNgay sau giờ nghỉ, Castellanos tiếp tục trận đấu để đời với liên tiếp 2 pha lập công khác. Tiền đạo 24 tuổi trở thành cầu thủ đầu tiên ghi \"poker\" vào lưới Real Madrid trong một trận La Liga ở thế kỷ 21 (Lucas Vazquez ghi bàn thứ 2 cho đội khách).\r\n\r\nTrong nhiều tuần, Ancelotti công khai trước truyền thông, sau khi nói riêng trong các buổi làm việc ở Valdebebas, rằng điều cần thiết là Real Madrid phải phòng ngự tốt.\r\n\r\nĐiều duy nhất để đạt hiệu quả phòng ngự là sự kết nối tập thể, và Ancelotti muốn các cầu thủ phải làm được điều đó.\r\n\r\nVài ngày trước, vị HLV 63 tuổi thậm chí còn nhấn mạnh chìa khóa thành công mùa trước là sức mạnh tập thể.\r\n\r\n</div>\r\n</article>', 'Real Madrid thua mất mặt, Ancelotti mắng hàng thủ', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2023-04-27 11:01:05', '2023-04-27 04:01:05', '', 52, 'http://localhost/nguyentankhang_2120110085/?p=55', 0, 'revision', '', 0),
(59, 1, '2023-04-27 12:30:58', '2023-04-27 05:30:58', '<h3>Rõ số phận của HLV Lampard tại Chelsea</h3>\r\nTrận thua Brentford đêm qua đánh dấu 5 thất bại liên tiếp của HLV Lampard trong lần trở lại Chelsea. Tuy nhiên, BLĐ The Blues hiện tại không có ý định sa thải huyền thoại này.\r\n\r\n<img class=\"alignnone size-full wp-image-60\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/04/lampard-chelsea-wolvesjpg-1-1680925907-063255.jpeg\" alt=\"\" width=\"1050\" height=\"630\" />\\\r\n\r\nTheo đó, ông vẫn sẽ dẫn dắt Chelsea tới cuối mùa như giao kèo đã ký. Trong khi đó theo talkSPORT, <a class=\"\" href=\"https://thethao247.vn/449-nong-chelsea-dat-thoa-thuan-voi-hlv-xuat-sac-lo-thoi-gian-cong-bo-chinh-thuc-d285178.html\" target=\"_blank\" rel=\"noopener\">CLB đã đạt thỏa thuận miệng với HLV Mauricio Pochettino</a> và sẽ bổ nhiệm ngay khi mùa giải khép lại.\r\n\r\nTừ đây, chân đèn bắt đầu cuộc đua trụ hạng.', 'Tin chuyển nhượng 27/4: Messi về CLB mới rồi đi luôn, Lampard bị sa thải?', '', 'publish', 'open', 'open', '', 'tin-chuyen-nhuong-27-4-messi-ve-clb-moi-roi-di-luon-lampard-bi-sa-thai', '', '', '2023-04-27 12:31:42', '2023-04-27 05:31:42', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=59', 0, 'post', '', 0),
(60, 1, '2023-04-27 12:30:27', '2023-04-27 05:30:27', '', 'lampard-chelsea-wolvesjpg-1-1680925907-063255', '', 'inherit', 'open', 'closed', '', 'lampard-chelsea-wolvesjpg-1-1680925907-063255', '', '', '2023-04-27 12:30:27', '2023-04-27 05:30:27', '', 59, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/04/lampard-chelsea-wolvesjpg-1-1680925907-063255.jpeg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2023-04-27 12:30:58', '2023-04-27 05:30:58', '<h3>Rõ số phận của HLV Lampard tại Chelsea</h3>\r\nTrận thua Brentford đêm qua đánh dấu 5 thất bại liên tiếp của HLV Lampard trong lần trở lại Chelsea. Tuy nhiên, BLĐ The Blues hiện tại không có ý định sa thải huyền thoại này.\r\n\r\n<img class=\"alignnone size-full wp-image-60\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/04/lampard-chelsea-wolvesjpg-1-1680925907-063255.jpeg\" alt=\"\" width=\"1050\" height=\"630\" />\\\r\n\r\nTheo đó, ông vẫn sẽ dẫn dắt Chelsea tới cuối mùa như giao kèo đã ký. Trong khi đó theo talkSPORT, <a class=\"\" href=\"https://thethao247.vn/449-nong-chelsea-dat-thoa-thuan-voi-hlv-xuat-sac-lo-thoi-gian-cong-bo-chinh-thuc-d285178.html\" target=\"_blank\" rel=\"noopener\">CLB đã đạt thỏa thuận miệng với HLV Mauricio Pochettino</a> và sẽ bổ nhiệm ngay khi mùa giải khép lại.', 'Tin chuyển nhượng 27/4: Messi về CLB mới rồi đi luôn, Lampard bị sa thải?', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2023-04-27 12:30:58', '2023-04-27 05:30:58', '', 59, 'http://localhost/nguyentankhang_2120110085/?p=61', 0, 'revision', '', 0),
(62, 1, '2023-04-27 12:31:42', '2023-04-27 05:31:42', '<h3>Rõ số phận của HLV Lampard tại Chelsea</h3>\r\nTrận thua Brentford đêm qua đánh dấu 5 thất bại liên tiếp của HLV Lampard trong lần trở lại Chelsea. Tuy nhiên, BLĐ The Blues hiện tại không có ý định sa thải huyền thoại này.\r\n\r\n<img class=\"alignnone size-full wp-image-60\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/04/lampard-chelsea-wolvesjpg-1-1680925907-063255.jpeg\" alt=\"\" width=\"1050\" height=\"630\" />\\\r\n\r\nTheo đó, ông vẫn sẽ dẫn dắt Chelsea tới cuối mùa như giao kèo đã ký. Trong khi đó theo talkSPORT, <a class=\"\" href=\"https://thethao247.vn/449-nong-chelsea-dat-thoa-thuan-voi-hlv-xuat-sac-lo-thoi-gian-cong-bo-chinh-thuc-d285178.html\" target=\"_blank\" rel=\"noopener\">CLB đã đạt thỏa thuận miệng với HLV Mauricio Pochettino</a> và sẽ bổ nhiệm ngay khi mùa giải khép lại.\r\n\r\nTừ đây, chân đèn bắt đầu cuộc đua trụ hạng.', 'Tin chuyển nhượng 27/4: Messi về CLB mới rồi đi luôn, Lampard bị sa thải?', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2023-04-27 12:31:42', '2023-04-27 05:31:42', '', 59, 'http://localhost/nguyentankhang_2120110085/?p=62', 0, 'revision', '', 0),
(65, 1, '2023-06-30 17:30:53', '2023-05-10 06:17:05', ' ', '', '', 'publish', 'closed', 'closed', '', '65', '', '', '2023-06-30 17:30:53', '2023-06-30 10:30:53', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=65', 7, 'nav_menu_item', '', 0),
(66, 1, '2023-06-30 17:30:53', '2023-05-10 06:17:05', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2023-06-30 17:30:53', '2023-06-30 10:30:53', '', 43, 'http://localhost/nguyentankhang_2120110085/?p=66', 8, 'nav_menu_item', '', 0),
(67, 1, '2023-06-30 17:30:53', '2023-05-10 06:17:05', ' ', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2023-06-30 17:30:53', '2023-06-30 10:30:53', '', 43, 'http://localhost/nguyentankhang_2120110085/?p=67', 9, 'nav_menu_item', '', 0),
(68, 1, '2023-06-30 17:30:53', '2023-05-10 06:17:05', ' ', '', '', 'publish', 'closed', 'closed', '', '68', '', '', '2023-06-30 17:30:53', '2023-06-30 10:30:53', '', 43, 'http://localhost/nguyentankhang_2120110085/?p=68', 10, 'nav_menu_item', '', 0),
(69, 1, '2023-06-30 17:30:53', '2023-05-10 06:17:05', ' ', '', '', 'publish', 'closed', 'closed', '', '69', '', '', '2023-06-30 17:30:53', '2023-06-30 10:30:53', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=69', 1, 'nav_menu_item', '', 0),
(70, 1, '2023-06-30 17:30:53', '2023-05-10 06:17:05', ' ', '', '', 'publish', 'closed', 'closed', '', '70', '', '', '2023-06-30 17:30:53', '2023-06-30 10:30:53', '', 8, 'http://localhost/nguyentankhang_2120110085/?p=70', 3, 'nav_menu_item', '', 0),
(71, 1, '2023-06-30 17:30:53', '2023-05-10 06:17:05', ' ', '', '', 'publish', 'closed', 'closed', '', '71', '', '', '2023-06-30 17:30:53', '2023-06-30 10:30:53', '', 8, 'http://localhost/nguyentankhang_2120110085/?p=71', 4, 'nav_menu_item', '', 0),
(72, 1, '2023-06-30 17:30:53', '2023-05-10 06:17:05', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2023-06-30 17:30:53', '2023-06-30 10:30:53', '', 8, 'http://localhost/nguyentankhang_2120110085/?p=72', 5, 'nav_menu_item', '', 0),
(73, 1, '2023-06-30 17:30:53', '2023-05-10 06:17:05', ' ', '', '', 'publish', 'closed', 'closed', '', '73', '', '', '2023-06-30 17:30:53', '2023-06-30 10:30:53', '', 8, 'http://localhost/nguyentankhang_2120110085/?p=73', 6, 'nav_menu_item', '', 0),
(74, 1, '2023-06-30 17:30:53', '2023-05-10 06:17:05', ' ', '', '', 'publish', 'closed', 'closed', '', '74', '', '', '2023-06-30 17:30:53', '2023-06-30 10:30:53', '', 8, 'http://localhost/nguyentankhang_2120110085/?p=74', 2, 'nav_menu_item', '', 0),
(75, 1, '2023-05-10 13:29:49', '2023-05-10 06:29:49', '', '1618474617-ong-hut-cojpg_', '', 'inherit', 'open', 'closed', '', '1618474617-ong-hut-cojpg_', '', '', '2023-05-10 13:29:49', '2023-05-10 06:29:49', '', 0, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/1618474617-ong-hut-cojpg_.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2023-05-10 13:30:07', '2023-05-10 06:30:07', '', '1-2604163734', '', 'inherit', 'open', 'closed', '', '1-2604163734-2', '', '', '2023-05-10 13:30:07', '2023-05-10 06:30:07', '', 0, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/1-2604163734.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2023-05-10 13:32:59', '2023-05-10 06:32:59', '', 'Premier League', '', 'inherit', 'open', 'closed', '', 'premier-league', '', '', '2023-05-10 13:32:59', '2023-05-10 06:32:59', '', 0, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/Premier-League.png', 0, 'attachment', 'image/png', 0),
(82, 1, '2023-05-10 13:38:15', '2023-05-10 06:38:15', '', 'logo-cac-doi-bong-ngoai-hang-anh', '', 'inherit', 'open', 'closed', '', 'logo-cac-doi-bong-ngoai-hang-anh', '', '', '2023-05-10 13:38:15', '2023-05-10 06:38:15', '', 0, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/logo-cac-doi-bong-ngoai-hang-anh.png', 0, 'attachment', 'image/png', 0),
(83, 1, '2023-05-10 13:41:11', '2023-05-10 06:41:11', '', 'z4332944645912_f28f02a2691ef247aac3538d9dbc69ae', '', 'inherit', 'open', 'closed', '', 'z4332944645912_f28f02a2691ef247aac3538d9dbc69ae', '', '', '2023-05-10 13:41:11', '2023-05-10 06:41:11', '', 0, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/z4332944645912_f28f02a2691ef247aac3538d9dbc69ae.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2023-05-10 13:47:52', '2023-05-10 06:47:52', '', 'R', '', 'inherit', 'open', 'closed', '', 'r', '', '', '2023-05-10 13:47:52', '2023-05-10 06:47:52', '', 0, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/R.png', 0, 'attachment', 'image/png', 0),
(85, 1, '2023-05-10 13:48:07', '2023-05-10 06:48:07', '', 'R', '', 'inherit', 'open', 'closed', '', 'r-2', '', '', '2023-05-10 13:48:07', '2023-05-10 06:48:07', '', 0, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/R-1.png', 0, 'attachment', 'image/png', 0),
(87, 1, '2023-05-10 13:54:47', '2023-05-10 06:54:47', '<p class=\"Normal\">Barca sớm nắm thế chủ động trong trận đấu trên sân Camp Nou tối 2/5. Khoảng nửa hiệp một, họ đáng ra có thể mở tỷ số nếu Pedri tận dụng tốt cơ hội, trong đó có cú đệm bóng chệch khung thành gang tấc từ quả tạt như đặt của Alejandro Balde.</p>\r\n<p class=\"Normal\">Từ phút 27, Barca còn được chơi hơn người. Do phạm lỗi trong tình huống Pedri băng xuống đối mặt thủ môn Aitor Fernandez, trung vệ Jorge Herrando phải nhận thẻ đỏ trực tiếp.</p>\r\n\r\n<figure class=\"tplCaption action_thumb_added\" data-size=\"true\">\r\n<div class=\"fig-picture\"><picture data-inimage=\"done\"><img class=\"alignnone size-full wp-image-88\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/New-Project-3-7829-1683065580.jpg\" alt=\"\" width=\"1020\" height=\"680\" /></picture></div></figure>\r\n&nbsp;\r\n<p class=\"Normal\">Lợi thế quân số giúp Barca tiếp tục ép sân. Nhưng trong ngày kém duyên, cơ hội cứ đến rồi đi với Robert Lewandowski và đồng đội. Phút 55, Frenkie De Jong bỏ lỡ pha kiến tạo của Pedri khi băng xuống trống trải rồi vô lê vào tay thủ môn Fernandez. Phút 61, Ousmane Dembele cũng sút chệch khung thành Osasuna trong gang tấc. Phút 70, sau khi đảo bóng qua hai hậu vệ Osasuna, Lewandowski cũng sút trúng tay thủ môn Fernandez. Bốn phút sau đó, anh đưa bóng vào lưới đội khách, nhưng không được công nhận. VAR bắt lỗi việt vị đối với Ferran Torres. Thành tích của Lewandowski mùa này vẫn dừng ở con số 19 bàn sau 33 vòng La Liga.</p>\r\n<p class=\"Normal\">Việc mất người khiến các đợt tấn công của Osasuna ít lại càng ít. Đội khách tập trung sút xa, nhưng thường đưa bóng chệch cột hoặc vào tay thủ môn Ter Stegen.</p>\r\n\r\n<figure class=\"tplCaption action_thumb_added\" data-size=\"true\">\r\n<div class=\"fig-picture\"><picture><source srcset=\"https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=kO7jIvAcDoqlRU5ujugweQ 1x, https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=bhW3WrI8hpCQ14QqTOGbTg 1.5x, https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=fXJDFR-OHfmRQj4XDe1-KA 2x\" data-srcset=\"https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=kO7jIvAcDoqlRU5ujugweQ 1x, https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=bhW3WrI8hpCQ14QqTOGbTg 1.5x, https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=fXJDFR-OHfmRQj4XDe1-KA 2x\" /><img class=\"alignnone size-full wp-image-92\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/fcb-4077-1683065580.jpg\" alt=\"\" width=\"1020\" height=\"680\" /></picture></div>\r\n<figcaption>\r\n<p class=\"Image\">Osasuna (áo trắng) liên tục gặp may trong chuyến làm khách trên sân Camp Nou tối 2/5. Ảnh: <em>EFE</em></p>\r\n\r\n</figcaption></figure>\r\n<p class=\"Normal\">Kiên trì ép sân, rốt cuộc Barca cũng thành công. Phút 85, Lewandowski tạt vào vòng cấm để De Jong đánh đầu kiến tạo cho Jordi Alba. Hậu vệ trái đội trưởng vô lê bật thủ môn Fernandez đưa bóng vào khung thành.</p>\r\n<p class=\"Normal\"><a href=\"https://vnexpress.net/the-thao/du-lieu-bong-da/doi-bong/barca-529\" rel=\"dofollow\">Barca</a> có thể đã thắng đậm hơn nếu triệt để tận dụng các cơ hội, trong trận đấu họ tung ra 21 cú dứt điểm - nhiều hơn ba lần so với đội khách. Phút 90+3, họ tạo ra cơ hội năm đánh ba, nhưng Ansu Fati cứa lòng chệch cột. Cầu thủ mang áo số 10 của Barca mới chỉ có bốn bàn trong 31 trận La Liga và bảy bàn trong 46 trận trên mọi đấu trường mùa này.</p>\r\n\r\n<figure class=\"tplCaption action_thumb_added\" data-size=\"true\">\r\n<div class=\"fig-picture\"><picture><source srcset=\"https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=b8XThsmHtf9AjigPoiVxDw 1x, https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=IkAJJICC9mlP8OSKpmhtDA 1.5x, https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=iwUkwQpd8H21jYm7uoHUKg 2x\" data-srcset=\"https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=b8XThsmHtf9AjigPoiVxDw 1x, https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=IkAJJICC9mlP8OSKpmhtDA 1.5x, https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=iwUkwQpd8H21jYm7uoHUKg 2x\" /><img class=\"alignnone size-full wp-image-93\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/New-Project-4-1835-1683065580.jpg\" alt=\"\" width=\"1020\" height=\"680\" /></picture></div>\r\n<figcaption>\r\n<p class=\"Image\">Jordi Alba (phải) mừng bàn cùng đồng đội trong trận Barca - Osasuna. Ảnh: <em>FCB</em></p>\r\n\r\n</figcaption></figure>\r\n<p class=\"Normal\">Trận thắng Osasuna giúp Barca nâng số điểm lên 82. Do Real thua Sociedad 0-2 trong trận cùng vòng, Barca nâng khoảng cách lên 14 điểm. Nếu thắng trên sân đối thủ cùng thành phố Espanyol vào ngày 14/5, thầy trò Xavi sẽ vô địch <a href=\"https://vnexpress.net/chu-de/la-liga-41\" rel=\"dofollow\" data-itm-source=\"#vn_source=Detail-TheThao_BongDa_LaLiga-4600551&amp;vn_campaign=Box-InternalLink&amp;vn_medium=Link-LaLiga&amp;vn_term=Desktop&amp;vn_thumb=0\" data-itm-added=\"1\">La Liga</a> sớm bốn vòng.</p>', 'Barca chỉ còn cách ngôi vương La Liga một trận thắng', '', 'publish', 'open', 'open', '', 'barca-chi-con-cach-ngoi-vuong-la-liga-mot-tran-thang', '', '', '2023-05-10 13:59:57', '2023-05-10 06:59:57', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=87', 0, 'post', '', 0),
(88, 1, '2023-05-10 13:52:50', '2023-05-10 06:52:50', '', 'New-Project-3-7829-1683065580', '', 'inherit', 'open', 'closed', '', 'new-project-3-7829-1683065580', '', '', '2023-05-10 13:52:50', '2023-05-10 06:52:50', '', 87, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/New-Project-3-7829-1683065580.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `ntk_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(89, 1, '2023-05-10 13:54:47', '2023-05-10 06:54:47', '<p class=\"Normal\">Barca sớm nắm thế chủ động trong trận đấu trên sân Camp Nou tối 2/5. Khoảng nửa hiệp một, họ đáng ra có thể mở tỷ số nếu Pedri tận dụng tốt cơ hội, trong đó có cú đệm bóng chệch khung thành gang tấc từ quả tạt như đặt của Alejandro Balde.</p>\r\n<p class=\"Normal\">Từ phút 27, Barca còn được chơi hơn người. Do phạm lỗi trong tình huống Pedri băng xuống đối mặt thủ môn Aitor Fernandez, trung vệ Jorge Herrando phải nhận thẻ đỏ trực tiếp.</p>\r\n\r\n<figure class=\"tplCaption action_thumb_added\" data-size=\"true\">\r\n<div class=\"fig-picture\"><picture data-inimage=\"done\"><img class=\"lazy lazied\" src=\"https://i1-thethao.vnecdn.net/2023/05/03/New-Project-3-7829-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=rV94yP-Y7rTqq8khgD5Npw\" alt=\"Herrando ngăn Pedri đối mặt thủ môn ở phút 27 trận Barca - Osasuna tối 2/5. Ảnh: EFE\" data-src=\"https://i1-thethao.vnecdn.net/2023/05/03/New-Project-3-7829-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=rV94yP-Y7rTqq8khgD5Npw\" data-ll-status=\"loaded\" data-adbro-processed=\"true\" /></picture></div></figure>\r\n&nbsp;\r\n<p class=\"Normal\">Lợi thế quân số giúp Barca tiếp tục ép sân. Nhưng trong ngày kém duyên, cơ hội cứ đến rồi đi với Robert Lewandowski và đồng đội. Phút 55, Frenkie De Jong bỏ lỡ pha kiến tạo của Pedri khi băng xuống trống trải rồi vô lê vào tay thủ môn Fernandez. Phút 61, Ousmane Dembele cũng sút chệch khung thành Osasuna trong gang tấc. Phút 70, sau khi đảo bóng qua hai hậu vệ Osasuna, Lewandowski cũng sút trúng tay thủ môn Fernandez. Bốn phút sau đó, anh đưa bóng vào lưới đội khách, nhưng không được công nhận. VAR bắt lỗi việt vị đối với Ferran Torres. Thành tích của Lewandowski mùa này vẫn dừng ở con số 19 bàn sau 33 vòng La Liga.</p>\r\n<p class=\"Normal\">Việc mất người khiến các đợt tấn công của Osasuna ít lại càng ít. Đội khách tập trung sút xa, nhưng thường đưa bóng chệch cột hoặc vào tay thủ môn Ter Stegen.</p>\r\n\r\n<figure class=\"tplCaption action_thumb_added\" data-size=\"true\">\r\n<div class=\"fig-picture\"><picture><source srcset=\"https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=kO7jIvAcDoqlRU5ujugweQ 1x, https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=bhW3WrI8hpCQ14QqTOGbTg 1.5x, https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=fXJDFR-OHfmRQj4XDe1-KA 2x\" data-srcset=\"https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=kO7jIvAcDoqlRU5ujugweQ 1x, https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=bhW3WrI8hpCQ14QqTOGbTg 1.5x, https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=fXJDFR-OHfmRQj4XDe1-KA 2x\" /><img class=\"lazy lazied\" src=\"https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=kO7jIvAcDoqlRU5ujugweQ\" alt=\"Osasuna (áo trắng) liên tục gặp may trong chuyến làm khách trên sân Camp Nou tối 2/5. Ảnh: EFE\" data-src=\"https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=kO7jIvAcDoqlRU5ujugweQ\" data-ll-status=\"loaded\" /></picture></div>\r\n<figcaption>\r\n<p class=\"Image\">Osasuna (áo trắng) liên tục gặp may trong chuyến làm khách trên sân Camp Nou tối 2/5. Ảnh: <em>EFE</em></p>\r\n\r\n</figcaption></figure>\r\n<p class=\"Normal\">Kiên trì ép sân, rốt cuộc Barca cũng thành công. Phút 85, Lewandowski tạt vào vòng cấm để De Jong đánh đầu kiến tạo cho Jordi Alba. Hậu vệ trái đội trưởng vô lê bật thủ môn Fernandez đưa bóng vào khung thành.</p>\r\n<p class=\"Normal\"><a href=\"https://vnexpress.net/the-thao/du-lieu-bong-da/doi-bong/barca-529\" rel=\"dofollow\">Barca</a> có thể đã thắng đậm hơn nếu triệt để tận dụng các cơ hội, trong trận đấu họ tung ra 21 cú dứt điểm - nhiều hơn ba lần so với đội khách. Phút 90+3, họ tạo ra cơ hội năm đánh ba, nhưng Ansu Fati cứa lòng chệch cột. Cầu thủ mang áo số 10 của Barca mới chỉ có bốn bàn trong 31 trận La Liga và bảy bàn trong 46 trận trên mọi đấu trường mùa này.</p>\r\n\r\n<figure class=\"tplCaption action_thumb_added\" data-size=\"true\">\r\n<div class=\"fig-picture\"><picture><source srcset=\"https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=b8XThsmHtf9AjigPoiVxDw 1x, https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=IkAJJICC9mlP8OSKpmhtDA 1.5x, https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=iwUkwQpd8H21jYm7uoHUKg 2x\" data-srcset=\"https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=b8XThsmHtf9AjigPoiVxDw 1x, https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=IkAJJICC9mlP8OSKpmhtDA 1.5x, https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=iwUkwQpd8H21jYm7uoHUKg 2x\" /><img class=\"lazy lazied\" src=\"https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=b8XThsmHtf9AjigPoiVxDw\" alt=\"Jordi Alba (phải) mừng bàn cùng đồng đội trong trận Barca - Osasuna. Ảnh: FCB\" data-src=\"https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=b8XThsmHtf9AjigPoiVxDw\" data-ll-status=\"loaded\" /></picture></div>\r\n<figcaption>\r\n<p class=\"Image\">Jordi Alba (phải) mừng bàn cùng đồng đội trong trận Barca - Osasuna. Ảnh: <em>FCB</em></p>\r\n\r\n</figcaption></figure>\r\n<p class=\"Normal\">Trận thắng Osasuna giúp Barca nâng số điểm lên 82. Do Real thua Sociedad 0-2 trong trận cùng vòng, Barca nâng khoảng cách lên 14 điểm. Nếu thắng trên sân đối thủ cùng thành phố Espanyol vào ngày 14/5, thầy trò Xavi sẽ vô địch <a href=\"https://vnexpress.net/chu-de/la-liga-41\" rel=\"dofollow\" data-itm-source=\"#vn_source=Detail-TheThao_BongDa_LaLiga-4600551&amp;vn_campaign=Box-InternalLink&amp;vn_medium=Link-LaLiga&amp;vn_term=Desktop&amp;vn_thumb=0\" data-itm-added=\"1\">La Liga</a> sớm bốn vòng.</p>', 'Barca chỉ còn cách ngôi vương La Liga một trận thắng', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2023-05-10 13:54:47', '2023-05-10 06:54:47', '', 87, 'http://localhost/nguyentankhang_2120110085/?p=89', 0, 'revision', '', 0),
(90, 1, '2023-05-10 13:57:49', '2023-05-10 06:57:49', '<p class=\"Normal\">Barca sớm nắm thế chủ động trong trận đấu trên sân Camp Nou tối 2/5. Khoảng nửa hiệp một, họ đáng ra có thể mở tỷ số nếu Pedri tận dụng tốt cơ hội, trong đó có cú đệm bóng chệch khung thành gang tấc từ quả tạt như đặt của Alejandro Balde.</p>\n<p class=\"Normal\">Từ phút 27, Barca còn được chơi hơn người. Do phạm lỗi trong tình huống Pedri băng xuống đối mặt thủ môn Aitor Fernandez, trung vệ Jorge Herrando phải nhận thẻ đỏ trực tiếp.</p>\n\n<figure class=\"tplCaption action_thumb_added\" data-size=\"true\">\n<div class=\"fig-picture\"><picture data-inimage=\"done\"><img class=\"alignnone size-full wp-image-88\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/New-Project-3-7829-1683065580.jpg\" alt=\"\" width=\"1020\" height=\"680\" /></picture></div></figure>\n&nbsp;\n<p class=\"Normal\">Lợi thế quân số giúp Barca tiếp tục ép sân. Nhưng trong ngày kém duyên, cơ hội cứ đến rồi đi với Robert Lewandowski và đồng đội. Phút 55, Frenkie De Jong bỏ lỡ pha kiến tạo của Pedri khi băng xuống trống trải rồi vô lê vào tay thủ môn Fernandez. Phút 61, Ousmane Dembele cũng sút chệch khung thành Osasuna trong gang tấc. Phút 70, sau khi đảo bóng qua hai hậu vệ Osasuna, Lewandowski cũng sút trúng tay thủ môn Fernandez. Bốn phút sau đó, anh đưa bóng vào lưới đội khách, nhưng không được công nhận. VAR bắt lỗi việt vị đối với Ferran Torres. Thành tích của Lewandowski mùa này vẫn dừng ở con số 19 bàn sau 33 vòng La Liga.</p>\n<p class=\"Normal\">Việc mất người khiến các đợt tấn công của Osasuna ít lại càng ít. Đội khách tập trung sút xa, nhưng thường đưa bóng chệch cột hoặc vào tay thủ môn Ter Stegen.</p>\n\n<figure class=\"tplCaption action_thumb_added\" data-size=\"true\">\n<div class=\"fig-picture\"><picture><source srcset=\"https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=kO7jIvAcDoqlRU5ujugweQ 1x, https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=bhW3WrI8hpCQ14QqTOGbTg 1.5x, https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=fXJDFR-OHfmRQj4XDe1-KA 2x\" data-srcset=\"https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=kO7jIvAcDoqlRU5ujugweQ 1x, https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=bhW3WrI8hpCQ14QqTOGbTg 1.5x, https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=fXJDFR-OHfmRQj4XDe1-KA 2x\" /><img class=\"lazy lazied\" src=\"https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=kO7jIvAcDoqlRU5ujugweQ\" alt=\"Osasuna (áo trắng) liên tục gặp may trong chuyến làm khách trên sân Camp Nou tối 2/5. Ảnh: EFE\" data-src=\"https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=kO7jIvAcDoqlRU5ujugweQ\" data-ll-status=\"loaded\" /></picture></div>\n<figcaption>\n<p class=\"Image\">Osasuna (áo trắng) liên tục gặp may trong chuyến làm khách trên sân Camp Nou tối 2/5. Ảnh: <em>EFE</em></p>\n\n</figcaption></figure>\n<p class=\"Normal\">Kiên trì ép sân, rốt cuộc Barca cũng thành công. Phút 85, Lewandowski tạt vào vòng cấm để De Jong đánh đầu kiến tạo cho Jordi Alba. Hậu vệ trái đội trưởng vô lê bật thủ môn Fernandez đưa bóng vào khung thành.</p>\n<p class=\"Normal\"><a href=\"https://vnexpress.net/the-thao/du-lieu-bong-da/doi-bong/barca-529\" rel=\"dofollow\">Barca</a> có thể đã thắng đậm hơn nếu triệt để tận dụng các cơ hội, trong trận đấu họ tung ra 21 cú dứt điểm - nhiều hơn ba lần so với đội khách. Phút 90+3, họ tạo ra cơ hội năm đánh ba, nhưng Ansu Fati cứa lòng chệch cột. Cầu thủ mang áo số 10 của Barca mới chỉ có bốn bàn trong 31 trận La Liga và bảy bàn trong 46 trận trên mọi đấu trường mùa này.</p>\n\n<figure class=\"tplCaption action_thumb_added\" data-size=\"true\">\n<div class=\"fig-picture\"><picture><source srcset=\"https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=b8XThsmHtf9AjigPoiVxDw 1x, https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=IkAJJICC9mlP8OSKpmhtDA 1.5x, https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=iwUkwQpd8H21jYm7uoHUKg 2x\" data-srcset=\"https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=b8XThsmHtf9AjigPoiVxDw 1x, https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=IkAJJICC9mlP8OSKpmhtDA 1.5x, https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=iwUkwQpd8H21jYm7uoHUKg 2x\" /><img class=\"lazy lazied\" src=\"https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=b8XThsmHtf9AjigPoiVxDw\" alt=\"Jordi Alba (phải) mừng bàn cùng đồng đội trong trận Barca - Osasuna. Ảnh: FCB\" data-src=\"https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=b8XThsmHtf9AjigPoiVxDw\" data-ll-status=\"loaded\" /></picture></div>\n<figcaption>\n<p class=\"Image\">Jordi Alba (phải) mừng bàn cùng đồng đội trong trận Barca - Osasuna. Ảnh: <em>FCB</em></p>\n\n</figcaption></figure>\n<p class=\"Normal\">Trận thắng Osasuna giúp Barca nâng số điểm lên 82. Do Real thua Sociedad 0-2 trong trận cùng vòng, Barca nâng khoảng cách lên 14 điểm. Nếu thắng trên sân đối thủ cùng thành phố Espanyol vào ngày 14/5, thầy trò Xavi sẽ vô địch <a href=\"https://vnexpress.net/chu-de/la-liga-41\" rel=\"dofollow\" data-itm-source=\"#vn_source=Detail-TheThao_BongDa_LaLiga-4600551&amp;vn_campaign=Box-InternalLink&amp;vn_medium=Link-LaLiga&amp;vn_term=Desktop&amp;vn_thumb=0\" data-itm-added=\"1\">La Liga</a> sớm bốn vòng.</p>', 'Barca chỉ còn cách ngôi vương La Liga một trận thắng', '', 'inherit', 'closed', 'closed', '', '87-autosave-v1', '', '', '2023-05-10 13:57:49', '2023-05-10 06:57:49', '', 87, 'http://localhost/nguyentankhang_2120110085/?p=90', 0, 'revision', '', 0),
(91, 1, '2023-05-10 13:58:39', '2023-05-10 06:58:39', '<p class=\"Normal\">Barca sớm nắm thế chủ động trong trận đấu trên sân Camp Nou tối 2/5. Khoảng nửa hiệp một, họ đáng ra có thể mở tỷ số nếu Pedri tận dụng tốt cơ hội, trong đó có cú đệm bóng chệch khung thành gang tấc từ quả tạt như đặt của Alejandro Balde.</p>\r\n<p class=\"Normal\">Từ phút 27, Barca còn được chơi hơn người. Do phạm lỗi trong tình huống Pedri băng xuống đối mặt thủ môn Aitor Fernandez, trung vệ Jorge Herrando phải nhận thẻ đỏ trực tiếp.</p>\r\n\r\n<figure class=\"tplCaption action_thumb_added\" data-size=\"true\">\r\n<div class=\"fig-picture\"><picture data-inimage=\"done\"><img class=\"alignnone size-full wp-image-88\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/New-Project-3-7829-1683065580.jpg\" alt=\"\" width=\"1020\" height=\"680\" /></picture></div></figure>\r\n&nbsp;\r\n<p class=\"Normal\">Lợi thế quân số giúp Barca tiếp tục ép sân. Nhưng trong ngày kém duyên, cơ hội cứ đến rồi đi với Robert Lewandowski và đồng đội. Phút 55, Frenkie De Jong bỏ lỡ pha kiến tạo của Pedri khi băng xuống trống trải rồi vô lê vào tay thủ môn Fernandez. Phút 61, Ousmane Dembele cũng sút chệch khung thành Osasuna trong gang tấc. Phút 70, sau khi đảo bóng qua hai hậu vệ Osasuna, Lewandowski cũng sút trúng tay thủ môn Fernandez. Bốn phút sau đó, anh đưa bóng vào lưới đội khách, nhưng không được công nhận. VAR bắt lỗi việt vị đối với Ferran Torres. Thành tích của Lewandowski mùa này vẫn dừng ở con số 19 bàn sau 33 vòng La Liga.</p>\r\n<p class=\"Normal\">Việc mất người khiến các đợt tấn công của Osasuna ít lại càng ít. Đội khách tập trung sút xa, nhưng thường đưa bóng chệch cột hoặc vào tay thủ môn Ter Stegen.</p>\r\n\r\n<figure class=\"tplCaption action_thumb_added\" data-size=\"true\">\r\n<div class=\"fig-picture\"><picture><source srcset=\"https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=kO7jIvAcDoqlRU5ujugweQ 1x, https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=bhW3WrI8hpCQ14QqTOGbTg 1.5x, https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=fXJDFR-OHfmRQj4XDe1-KA 2x\" data-srcset=\"https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=kO7jIvAcDoqlRU5ujugweQ 1x, https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=bhW3WrI8hpCQ14QqTOGbTg 1.5x, https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=fXJDFR-OHfmRQj4XDe1-KA 2x\" /><img class=\"lazy lazied\" src=\"https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=kO7jIvAcDoqlRU5ujugweQ\" alt=\"Osasuna (áo trắng) liên tục gặp may trong chuyến làm khách trên sân Camp Nou tối 2/5. Ảnh: EFE\" data-src=\"https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=kO7jIvAcDoqlRU5ujugweQ\" data-ll-status=\"loaded\" /></picture></div>\r\n<figcaption>\r\n<p class=\"Image\">Osasuna (áo trắng) liên tục gặp may trong chuyến làm khách trên sân Camp Nou tối 2/5. Ảnh: <em>EFE</em></p>\r\n\r\n</figcaption></figure>\r\n<p class=\"Normal\">Kiên trì ép sân, rốt cuộc Barca cũng thành công. Phút 85, Lewandowski tạt vào vòng cấm để De Jong đánh đầu kiến tạo cho Jordi Alba. Hậu vệ trái đội trưởng vô lê bật thủ môn Fernandez đưa bóng vào khung thành.</p>\r\n<p class=\"Normal\"><a href=\"https://vnexpress.net/the-thao/du-lieu-bong-da/doi-bong/barca-529\" rel=\"dofollow\">Barca</a> có thể đã thắng đậm hơn nếu triệt để tận dụng các cơ hội, trong trận đấu họ tung ra 21 cú dứt điểm - nhiều hơn ba lần so với đội khách. Phút 90+3, họ tạo ra cơ hội năm đánh ba, nhưng Ansu Fati cứa lòng chệch cột. Cầu thủ mang áo số 10 của Barca mới chỉ có bốn bàn trong 31 trận La Liga và bảy bàn trong 46 trận trên mọi đấu trường mùa này.</p>\r\n\r\n<figure class=\"tplCaption action_thumb_added\" data-size=\"true\">\r\n<div class=\"fig-picture\"><picture><source srcset=\"https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=b8XThsmHtf9AjigPoiVxDw 1x, https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=IkAJJICC9mlP8OSKpmhtDA 1.5x, https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=iwUkwQpd8H21jYm7uoHUKg 2x\" data-srcset=\"https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=b8XThsmHtf9AjigPoiVxDw 1x, https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=IkAJJICC9mlP8OSKpmhtDA 1.5x, https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=iwUkwQpd8H21jYm7uoHUKg 2x\" /><img class=\"lazy lazied\" src=\"https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=b8XThsmHtf9AjigPoiVxDw\" alt=\"Jordi Alba (phải) mừng bàn cùng đồng đội trong trận Barca - Osasuna. Ảnh: FCB\" data-src=\"https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=b8XThsmHtf9AjigPoiVxDw\" data-ll-status=\"loaded\" /></picture></div>\r\n<figcaption>\r\n<p class=\"Image\">Jordi Alba (phải) mừng bàn cùng đồng đội trong trận Barca - Osasuna. Ảnh: <em>FCB</em></p>\r\n\r\n</figcaption></figure>\r\n<p class=\"Normal\">Trận thắng Osasuna giúp Barca nâng số điểm lên 82. Do Real thua Sociedad 0-2 trong trận cùng vòng, Barca nâng khoảng cách lên 14 điểm. Nếu thắng trên sân đối thủ cùng thành phố Espanyol vào ngày 14/5, thầy trò Xavi sẽ vô địch <a href=\"https://vnexpress.net/chu-de/la-liga-41\" rel=\"dofollow\" data-itm-source=\"#vn_source=Detail-TheThao_BongDa_LaLiga-4600551&amp;vn_campaign=Box-InternalLink&amp;vn_medium=Link-LaLiga&amp;vn_term=Desktop&amp;vn_thumb=0\" data-itm-added=\"1\">La Liga</a> sớm bốn vòng.</p>', 'Barca chỉ còn cách ngôi vương La Liga một trận thắng', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2023-05-10 13:58:39', '2023-05-10 06:58:39', '', 87, 'http://localhost/nguyentankhang_2120110085/?p=91', 0, 'revision', '', 0),
(92, 1, '2023-05-10 13:59:42', '2023-05-10 06:59:42', '', 'fcb-4077-1683065580', '', 'inherit', 'open', 'closed', '', 'fcb-4077-1683065580', '', '', '2023-05-10 13:59:42', '2023-05-10 06:59:42', '', 87, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/fcb-4077-1683065580.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2023-05-10 13:59:54', '2023-05-10 06:59:54', '', 'New-Project-4-1835-1683065580', '', 'inherit', 'open', 'closed', '', 'new-project-4-1835-1683065580', '', '', '2023-05-10 13:59:54', '2023-05-10 06:59:54', '', 87, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/New-Project-4-1835-1683065580.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2023-05-10 13:59:57', '2023-05-10 06:59:57', '<p class=\"Normal\">Barca sớm nắm thế chủ động trong trận đấu trên sân Camp Nou tối 2/5. Khoảng nửa hiệp một, họ đáng ra có thể mở tỷ số nếu Pedri tận dụng tốt cơ hội, trong đó có cú đệm bóng chệch khung thành gang tấc từ quả tạt như đặt của Alejandro Balde.</p>\r\n<p class=\"Normal\">Từ phút 27, Barca còn được chơi hơn người. Do phạm lỗi trong tình huống Pedri băng xuống đối mặt thủ môn Aitor Fernandez, trung vệ Jorge Herrando phải nhận thẻ đỏ trực tiếp.</p>\r\n\r\n<figure class=\"tplCaption action_thumb_added\" data-size=\"true\">\r\n<div class=\"fig-picture\"><picture data-inimage=\"done\"><img class=\"alignnone size-full wp-image-88\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/New-Project-3-7829-1683065580.jpg\" alt=\"\" width=\"1020\" height=\"680\" /></picture></div></figure>\r\n&nbsp;\r\n<p class=\"Normal\">Lợi thế quân số giúp Barca tiếp tục ép sân. Nhưng trong ngày kém duyên, cơ hội cứ đến rồi đi với Robert Lewandowski và đồng đội. Phút 55, Frenkie De Jong bỏ lỡ pha kiến tạo của Pedri khi băng xuống trống trải rồi vô lê vào tay thủ môn Fernandez. Phút 61, Ousmane Dembele cũng sút chệch khung thành Osasuna trong gang tấc. Phút 70, sau khi đảo bóng qua hai hậu vệ Osasuna, Lewandowski cũng sút trúng tay thủ môn Fernandez. Bốn phút sau đó, anh đưa bóng vào lưới đội khách, nhưng không được công nhận. VAR bắt lỗi việt vị đối với Ferran Torres. Thành tích của Lewandowski mùa này vẫn dừng ở con số 19 bàn sau 33 vòng La Liga.</p>\r\n<p class=\"Normal\">Việc mất người khiến các đợt tấn công của Osasuna ít lại càng ít. Đội khách tập trung sút xa, nhưng thường đưa bóng chệch cột hoặc vào tay thủ môn Ter Stegen.</p>\r\n\r\n<figure class=\"tplCaption action_thumb_added\" data-size=\"true\">\r\n<div class=\"fig-picture\"><picture><source srcset=\"https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=kO7jIvAcDoqlRU5ujugweQ 1x, https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=bhW3WrI8hpCQ14QqTOGbTg 1.5x, https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=fXJDFR-OHfmRQj4XDe1-KA 2x\" data-srcset=\"https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=kO7jIvAcDoqlRU5ujugweQ 1x, https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=bhW3WrI8hpCQ14QqTOGbTg 1.5x, https://i1-thethao.vnecdn.net/2023/05/03/fcb-4077-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=fXJDFR-OHfmRQj4XDe1-KA 2x\" /><img class=\"alignnone size-full wp-image-92\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/fcb-4077-1683065580.jpg\" alt=\"\" width=\"1020\" height=\"680\" /></picture></div>\r\n<figcaption>\r\n<p class=\"Image\">Osasuna (áo trắng) liên tục gặp may trong chuyến làm khách trên sân Camp Nou tối 2/5. Ảnh: <em>EFE</em></p>\r\n\r\n</figcaption></figure>\r\n<p class=\"Normal\">Kiên trì ép sân, rốt cuộc Barca cũng thành công. Phút 85, Lewandowski tạt vào vòng cấm để De Jong đánh đầu kiến tạo cho Jordi Alba. Hậu vệ trái đội trưởng vô lê bật thủ môn Fernandez đưa bóng vào khung thành.</p>\r\n<p class=\"Normal\"><a href=\"https://vnexpress.net/the-thao/du-lieu-bong-da/doi-bong/barca-529\" rel=\"dofollow\">Barca</a> có thể đã thắng đậm hơn nếu triệt để tận dụng các cơ hội, trong trận đấu họ tung ra 21 cú dứt điểm - nhiều hơn ba lần so với đội khách. Phút 90+3, họ tạo ra cơ hội năm đánh ba, nhưng Ansu Fati cứa lòng chệch cột. Cầu thủ mang áo số 10 của Barca mới chỉ có bốn bàn trong 31 trận La Liga và bảy bàn trong 46 trận trên mọi đấu trường mùa này.</p>\r\n\r\n<figure class=\"tplCaption action_thumb_added\" data-size=\"true\">\r\n<div class=\"fig-picture\"><picture><source srcset=\"https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=b8XThsmHtf9AjigPoiVxDw 1x, https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=IkAJJICC9mlP8OSKpmhtDA 1.5x, https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=iwUkwQpd8H21jYm7uoHUKg 2x\" data-srcset=\"https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=b8XThsmHtf9AjigPoiVxDw 1x, https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=IkAJJICC9mlP8OSKpmhtDA 1.5x, https://i1-thethao.vnecdn.net/2023/05/03/New-Project-4-1835-1683065580.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=iwUkwQpd8H21jYm7uoHUKg 2x\" /><img class=\"alignnone size-full wp-image-93\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/New-Project-4-1835-1683065580.jpg\" alt=\"\" width=\"1020\" height=\"680\" /></picture></div>\r\n<figcaption>\r\n<p class=\"Image\">Jordi Alba (phải) mừng bàn cùng đồng đội trong trận Barca - Osasuna. Ảnh: <em>FCB</em></p>\r\n\r\n</figcaption></figure>\r\n<p class=\"Normal\">Trận thắng Osasuna giúp Barca nâng số điểm lên 82. Do Real thua Sociedad 0-2 trong trận cùng vòng, Barca nâng khoảng cách lên 14 điểm. Nếu thắng trên sân đối thủ cùng thành phố Espanyol vào ngày 14/5, thầy trò Xavi sẽ vô địch <a href=\"https://vnexpress.net/chu-de/la-liga-41\" rel=\"dofollow\" data-itm-source=\"#vn_source=Detail-TheThao_BongDa_LaLiga-4600551&amp;vn_campaign=Box-InternalLink&amp;vn_medium=Link-LaLiga&amp;vn_term=Desktop&amp;vn_thumb=0\" data-itm-added=\"1\">La Liga</a> sớm bốn vòng.</p>', 'Barca chỉ còn cách ngôi vương La Liga một trận thắng', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2023-05-10 13:59:57', '2023-05-10 06:59:57', '', 87, 'http://localhost/nguyentankhang_2120110085/?p=94', 0, 'revision', '', 0),
(95, 1, '2023-05-10 14:03:28', '2023-05-10 07:03:28', '<a class=\"hyperlink\" href=\"https://www.bongda.com.vn/Atletico+Madrid-search/\" target=\"_blank\" rel=\"noopener\">Atletico Madrid</a> từng có thời gian vật lộn ngoài top 4. Tuy nhiên, thầy trò HLV Diego Simeone đã kịp lấy lại phong độ ở giai đoạn quan trọng nhất của mùa giải. Trong 10 vòng gần nhất tại La Liga, \"Rojiblancos\" thắng đến 9 và chỉ thua đội đầu bảng Barcelona.\r\n\r\nMàn bứt tốc ấn tượng giúp Atletico chiếm vị trí thứ hai từ tay kình địch cùng thành phố (69 so với 68 điểm). Tuy nhiên, kết quả này không làm ảnh hưởng đến cuộc đua vô địch. Barca (82 điểm) chỉ cần thắng Espanyol ở vòng sau là sẽ lên ngôi bất chấp phần còn lại của mùa giải diễn ra thế nào.\r\n\r\nChuỗi trận thành công của Atletico Madrid <a class=\"hyperlink\" href=\"https://www.bongda.com.vn/griezmann-qua-toan-dien-d682646.html\" target=\"_blank\" rel=\"noopener\">có công không nhỏ</a> của <a class=\"hyperlink\" href=\"https://www.bongda.com.vn/Antoine+Griezmann-search/\" target=\"_blank\" rel=\"noopener\">Antoine Griezmann</a>. Rạng sáng nay (4/5), tiền đạo người Pháp một lần nữa tỏa sáng với cú đúp ngay trong hiệp một, đều sau những pha dứt điểm hiểm hóc trong vùng cấm. \"Grizou\" đã góp công vào 8 bàn thắng (4 bàn, 4 kiến tạo) chỉ trong 5 lần ra sân gần nhất.\r\n\r\nLợi thế lớn giúp Atletico thoải mái triển khai thế trận áp đặt trong hiệp hai. Đội chủ sân Wanda Metropolitano tận dụng sơ hở của hàng thủ Cadiz để ghi thêm 3 bàn, lần lượt do công của Alvaro Morata, Yannick Carrasco (penalty) và Nahuel Molina. Những gì đội khách làm được chỉ là bàn danh dự được ghi bởi Choco Lozano.\r\n\r\nỞ vòng tiếp theo, Atletico Madrid sẽ gặp Elche trong khi Real chạm trán Getafe. Kể từ mùa 2012/13 đến nay, đội bóng của HLV Simeone chưa từng kết thúc mùa giải ngoài top 4 La Liga, trong đó có hai lần vô địch.', 'Real Madrid mất vị trí thứ hai vào tay Atletico', '', 'publish', 'open', 'open', '', 'real-madrid-mat-vi-tri-thu-hai-vao-tay-atletico', '', '', '2023-05-10 14:03:28', '2023-05-10 07:03:28', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=95', 0, 'post', '', 0),
(96, 1, '2023-05-10 14:03:24', '2023-05-10 07:03:24', '', '2023_04_16t182956z_1748550313_up1ej4g1fducy_rtrmadp_3_soccer_spain_atm_uda_report-0723', '', 'inherit', 'open', 'closed', '', '2023_04_16t182956z_1748550313_up1ej4g1fducy_rtrmadp_3_soccer_spain_atm_uda_report-0723', '', '', '2023-05-10 14:03:24', '2023-05-10 07:03:24', '', 95, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/2023_04_16t182956z_1748550313_up1ej4g1fducy_rtrmadp_3_soccer_spain_atm_uda_report-0723.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2023-05-10 14:03:28', '2023-05-10 07:03:28', '<a class=\"hyperlink\" href=\"https://www.bongda.com.vn/Atletico+Madrid-search/\" target=\"_blank\" rel=\"noopener\">Atletico Madrid</a> từng có thời gian vật lộn ngoài top 4. Tuy nhiên, thầy trò HLV Diego Simeone đã kịp lấy lại phong độ ở giai đoạn quan trọng nhất của mùa giải. Trong 10 vòng gần nhất tại La Liga, \"Rojiblancos\" thắng đến 9 và chỉ thua đội đầu bảng Barcelona.\r\n\r\nMàn bứt tốc ấn tượng giúp Atletico chiếm vị trí thứ hai từ tay kình địch cùng thành phố (69 so với 68 điểm). Tuy nhiên, kết quả này không làm ảnh hưởng đến cuộc đua vô địch. Barca (82 điểm) chỉ cần thắng Espanyol ở vòng sau là sẽ lên ngôi bất chấp phần còn lại của mùa giải diễn ra thế nào.\r\n\r\nChuỗi trận thành công của Atletico Madrid <a class=\"hyperlink\" href=\"https://www.bongda.com.vn/griezmann-qua-toan-dien-d682646.html\" target=\"_blank\" rel=\"noopener\">có công không nhỏ</a> của <a class=\"hyperlink\" href=\"https://www.bongda.com.vn/Antoine+Griezmann-search/\" target=\"_blank\" rel=\"noopener\">Antoine Griezmann</a>. Rạng sáng nay (4/5), tiền đạo người Pháp một lần nữa tỏa sáng với cú đúp ngay trong hiệp một, đều sau những pha dứt điểm hiểm hóc trong vùng cấm. \"Grizou\" đã góp công vào 8 bàn thắng (4 bàn, 4 kiến tạo) chỉ trong 5 lần ra sân gần nhất.\r\n\r\nLợi thế lớn giúp Atletico thoải mái triển khai thế trận áp đặt trong hiệp hai. Đội chủ sân Wanda Metropolitano tận dụng sơ hở của hàng thủ Cadiz để ghi thêm 3 bàn, lần lượt do công của Alvaro Morata, Yannick Carrasco (penalty) và Nahuel Molina. Những gì đội khách làm được chỉ là bàn danh dự được ghi bởi Choco Lozano.\r\n\r\nỞ vòng tiếp theo, Atletico Madrid sẽ gặp Elche trong khi Real chạm trán Getafe. Kể từ mùa 2012/13 đến nay, đội bóng của HLV Simeone chưa từng kết thúc mùa giải ngoài top 4 La Liga, trong đó có hai lần vô địch.', 'Real Madrid mất vị trí thứ hai vào tay Atletico', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2023-05-10 14:03:28', '2023-05-10 07:03:28', '', 95, 'http://localhost/nguyentankhang_2120110085/?p=97', 0, 'revision', '', 0),
(98, 1, '2023-05-10 14:18:21', '2023-05-10 07:18:21', 'Tiền đạo Vinicius Junior và tiền vệ Kevin de Bruyne thay nhau lập siêu phẩm ở mỗi hiệp, trong trận cầu chặt chẽ và chuyên môn cao. Karim Benzema và Erling Haaland cũng được trao vài cơ hội đáng chú ý nhưng không tận dụng được, nên hai đội sẽ làm lại từ đầu trên sân Etihad sau đây một tuần.\r\n\r\n<img class=\"alignnone size-full wp-image-99\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/real-madrid-jpeg-1683662583-8533-1683662782.jpg\" alt=\"\" width=\"1020\" height=\"612\" />\r\n<figure class=\"tplCaption action_thumb_added\" data-size=\"true\"><figcaption>\r\n<p class=\"Image\">Vinicius mừng tuyệt phẩm mở tỷ số cho Real Madrid trước Man City, tại bán kết lượt đi Champions League trên sân Bernabeu, thành phố Madrid, Tây Ban Nha tối 9/3/2023. Ảnh: <em>Reuters</em></p>\r\n\r\n</figcaption></figure>\r\n<p class=\"Normal\">Man City chơi tốt hơn trong nửa đầu hiệp một, khiến thủ môn Thibaut Courtois phải cứu thua bốn lần trong 16 phút đầu. Tình huống khó nhất với thủ thành Bỉ là cú sút xa của Rodri đưa bóng đi căng và sát cột, nhưng anh vẫn đẩy ra được. Sự chắc chắn của Courtois phần nào giúp Real chơi tự tin hơn để đẩy cao đội hình gây áp lực, khiến đội khách gặp khó khi triển khai bóng.</p>\r\n<p class=\"Normal\">Courtois là điểm tựa hàng thủ, còn Vinicius Junior lĩnh xướng tuyến công của chủ nhà. Phút 25, tiền đạo Brazil cướp bóng từ đường chuyền về non của Rodri, rồi căng ngang nhưng trung vệ Ruben Dias kịp chuồi người cắt bóng trước khi tới chân Karim Benzema. Sau tình huống này, Vinicus hô hào khán giả Bernabeu cổ vũ nhiệt tình hơn.</p>\r\n<p class=\"Normal\">Cũng chỉnh Vinicius phá thế quân bình với tuyệt phẩm sút xa ở phút 36, nhưng công đầu thuộc về hậu vệ trái Eduardo Camavinga. Anh bật tường với lão tướng Luka Modric ở sân nhà, rồi leo biên và chuyền vào trung lộ cho Vinicius thoáng. Từ cự ly khoảng 25 m, tiền đạo Brazil sút căng về góc cao không cho thủ môn Ederson cơ hội nào cản phá. Đây là bàn thứ 15 của Vinicius tại Champions League, gần một nửa trong đó đến ở vòng knock-out.</p>\r\n<p class=\"Normal\">Cách điều hành trận đấu của trọng tài người Bồ Đào Nha Artur Dias cũng không được lòng cầu thủ Man City, khi họ cho rằng Real Madrid thoát nhiều tình huống đáng phải nhận thẻ vàng. Chủ nhà thường phạm lỗi chống phản công, nhưng đến phút bù hiệp một mới phải nhận thẻ vàng đầu tiên.</p>\r\n<p class=\"Normal\">Sau giờ giải lao, tình thế lại đảo chiều khi Man City chơi lấn sân, tạo ra cơ hội tốt. Phút 56, Ilkay Gundogan chọc khe cho Haaland thoát xuống bên trái cấm địa, nhưng cú sút của tiền đạo Na Uy bị David Alaba chuồi người chắn lại.</p>\r\n<p class=\"Normal\">Gundogan chơi không tốt trong trận này khi nhiều lần mất bóng nguy hiểm, nhưng ở khoảnh khắc quan trọng anh lại quyết định hợp lý. Phút 67, tiền vệ người Đức nhận bóng trong cấm địa, xoay người che chắn rồi thả bóng về tuyến hai của De Bruyne sút căng cháy lưới Courtois. Bàn thắng này đẹp mắt không kém so với pha mở tỷ số của Vinicius.</p>\r\n<img class=\"alignnone size-full wp-image-100\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/de-bruyne-0-jpeg-1683665988-8002-1683666375.jpg\" alt=\"\" width=\"1020\" height=\"612\" />\r\n\r\nCú sút xa trái phá của Kevin de Bruyne (phải)...\r\n\r\n<img class=\"alignnone size-full wp-image-104\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/de-bruyne-jpeg-7458-1683666375.jpg\" alt=\"\" width=\"1020\" height=\"680\" />\r\n<p class=\"Normal\">Hiệp hai đến lượt Real phàn nàn với trọng tài, khi chủ nhà cho rằng đáng lẽ họ phải được phạt đền vì tình huống bóng chạm tay John Stones trong cấm địa. Ngay sau đó, De Bruyne ghi bàn, càng khiến ban huấn luyện Real nổi giận. Sau phản ứng thái quá, HLV Carlo Ancelotti phải nhận thẻ vàng. Trọng tài người Bồ Đào Nha cũng không rút thẻ vàng nào cho Rodri dù anh ba lần phạm lỗi ngăn đối thủ tấn công.</p>\r\n<p class=\"Normal\">Trong những phút còn lại, Real lại chơi tốt hơn, trong đó có cú đánh đầu cận thành của Benzema và pha sút xa từ chân Aurelien Tchouameni, nhưng thủ môn Ederson đều đổ người cản phá được.</p>\r\nHLV Pep Guardiola không thay người nào trong trận này, dù họ chỉ được nghỉ bốn ngày trước khi chơi trận tiếp theo ở Ngoại hạng Anh gặp chủ nhà Everton. Trong khi đó, Real không còn mục tiêu nào khác ngoài Champions League, nên có thể giữ sức cho các trụ cột ở lượt về.', 'Man City \'hút chết\' trên sân Real Madrid', '', 'publish', 'open', 'open', '', 'man-city-hut-chet-tren-san-real-madrid', '', '', '2023-05-10 14:21:14', '2023-05-10 07:21:14', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=98', 0, 'post', '', 0),
(99, 1, '2023-05-10 14:15:28', '2023-05-10 07:15:28', '', 'real-madrid-jpeg-1683662583-8533-1683662782', '', 'inherit', 'open', 'closed', '', 'real-madrid-jpeg-1683662583-8533-1683662782', '', '', '2023-05-10 14:15:28', '2023-05-10 07:15:28', '', 98, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/real-madrid-jpeg-1683662583-8533-1683662782.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2023-05-10 14:18:14', '2023-05-10 07:18:14', '', 'de-bruyne-0-jpeg-1683665988-8002-1683666375', '', 'inherit', 'open', 'closed', '', 'de-bruyne-0-jpeg-1683665988-8002-1683666375', '', '', '2023-05-10 14:18:14', '2023-05-10 07:18:14', '', 98, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/de-bruyne-0-jpeg-1683665988-8002-1683666375.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2023-05-10 14:18:21', '2023-05-10 07:18:21', 'Tiền đạo Vinicius Junior và tiền vệ Kevin de Bruyne thay nhau lập siêu phẩm ở mỗi hiệp, trong trận cầu chặt chẽ và chuyên môn cao. Karim Benzema và Erling Haaland cũng được trao vài cơ hội đáng chú ý nhưng không tận dụng được, nên hai đội sẽ làm lại từ đầu trên sân Etihad sau đây một tuần.\r\n\r\n<img class=\"alignnone size-full wp-image-99\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/real-madrid-jpeg-1683662583-8533-1683662782.jpg\" alt=\"\" width=\"1020\" height=\"612\" />\r\n<figure class=\"tplCaption action_thumb_added\" data-size=\"true\"><figcaption>\r\n<p class=\"Image\">Vinicius mừng tuyệt phẩm mở tỷ số cho Real Madrid trước Man City, tại bán kết lượt đi Champions League trên sân Bernabeu, thành phố Madrid, Tây Ban Nha tối 9/3/2023. Ảnh: <em>Reuters</em></p>\r\n\r\n</figcaption></figure>\r\n<p class=\"Normal\">Man City chơi tốt hơn trong nửa đầu hiệp một, khiến thủ môn Thibaut Courtois phải cứu thua bốn lần trong 16 phút đầu. Tình huống khó nhất với thủ thành Bỉ là cú sút xa của Rodri đưa bóng đi căng và sát cột, nhưng anh vẫn đẩy ra được. Sự chắc chắn của Courtois phần nào giúp Real chơi tự tin hơn để đẩy cao đội hình gây áp lực, khiến đội khách gặp khó khi triển khai bóng.</p>\r\n<p class=\"Normal\">Courtois là điểm tựa hàng thủ, còn Vinicius Junior lĩnh xướng tuyến công của chủ nhà. Phút 25, tiền đạo Brazil cướp bóng từ đường chuyền về non của Rodri, rồi căng ngang nhưng trung vệ Ruben Dias kịp chuồi người cắt bóng trước khi tới chân Karim Benzema. Sau tình huống này, Vinicus hô hào khán giả Bernabeu cổ vũ nhiệt tình hơn.</p>\r\n<p class=\"Normal\">Cũng chỉnh Vinicius phá thế quân bình với tuyệt phẩm sút xa ở phút 36, nhưng công đầu thuộc về hậu vệ trái Eduardo Camavinga. Anh bật tường với lão tướng Luka Modric ở sân nhà, rồi leo biên và chuyền vào trung lộ cho Vinicius thoáng. Từ cự ly khoảng 25 m, tiền đạo Brazil sút căng về góc cao không cho thủ môn Ederson cơ hội nào cản phá. Đây là bàn thứ 15 của Vinicius tại Champions League, gần một nửa trong đó đến ở vòng knock-out.</p>\r\n<p class=\"Normal\">Cách điều hành trận đấu của trọng tài người Bồ Đào Nha Artur Dias cũng không được lòng cầu thủ Man City, khi họ cho rằng Real Madrid thoát nhiều tình huống đáng phải nhận thẻ vàng. Chủ nhà thường phạm lỗi chống phản công, nhưng đến phút bù hiệp một mới phải nhận thẻ vàng đầu tiên.</p>\r\n<p class=\"Normal\">Sau giờ giải lao, tình thế lại đảo chiều khi Man City chơi lấn sân, tạo ra cơ hội tốt. Phút 56, Ilkay Gundogan chọc khe cho Haaland thoát xuống bên trái cấm địa, nhưng cú sút của tiền đạo Na Uy bị David Alaba chuồi người chắn lại.</p>\r\n<p class=\"Normal\">Gundogan chơi không tốt trong trận này khi nhiều lần mất bóng nguy hiểm, nhưng ở khoảnh khắc quan trọng anh lại quyết định hợp lý. Phút 67, tiền vệ người Đức nhận bóng trong cấm địa, xoay người che chắn rồi thả bóng về tuyến hai của De Bruyne sút căng cháy lưới Courtois. Bàn thắng này đẹp mắt không kém so với pha mở tỷ số của Vinicius.</p>\r\n<img class=\"alignnone size-full wp-image-100\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/de-bruyne-0-jpeg-1683665988-8002-1683666375.jpg\" alt=\"\" width=\"1020\" height=\"612\" />', 'Man City \'hút chết\' trên sân Real Madrid', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2023-05-10 14:18:21', '2023-05-10 07:18:21', '', 98, 'http://localhost/nguyentankhang_2120110085/?p=101', 0, 'revision', '', 0),
(102, 1, '2023-05-10 14:18:41', '2023-05-10 07:18:41', '', 'R', '', 'inherit', 'open', 'closed', '', 'r-3', '', '', '2023-05-10 14:18:41', '2023-05-10 07:18:41', '', 0, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/R-2.png', 0, 'attachment', 'image/png', 0),
(104, 1, '2023-05-10 14:19:50', '2023-05-10 07:19:50', '', 'de-bruyne-jpeg-7458-1683666375', '', 'inherit', 'open', 'closed', '', 'de-bruyne-jpeg-7458-1683666375', '', '', '2023-05-10 14:19:50', '2023-05-10 07:19:50', '', 98, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/de-bruyne-jpeg-7458-1683666375.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2023-05-10 14:20:21', '2023-05-10 07:20:21', 'Tiền đạo Vinicius Junior và tiền vệ Kevin de Bruyne thay nhau lập siêu phẩm ở mỗi hiệp, trong trận cầu chặt chẽ và chuyên môn cao. Karim Benzema và Erling Haaland cũng được trao vài cơ hội đáng chú ý nhưng không tận dụng được, nên hai đội sẽ làm lại từ đầu trên sân Etihad sau đây một tuần.\n\n<img class=\"alignnone size-full wp-image-99\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/real-madrid-jpeg-1683662583-8533-1683662782.jpg\" alt=\"\" width=\"1020\" height=\"612\" />\n<figure class=\"tplCaption action_thumb_added\" data-size=\"true\"><figcaption>\n<p class=\"Image\">Vinicius mừng tuyệt phẩm mở tỷ số cho Real Madrid trước Man City, tại bán kết lượt đi Champions League trên sân Bernabeu, thành phố Madrid, Tây Ban Nha tối 9/3/2023. Ảnh: <em>Reuters</em></p>\n\n</figcaption></figure>\n<p class=\"Normal\">Man City chơi tốt hơn trong nửa đầu hiệp một, khiến thủ môn Thibaut Courtois phải cứu thua bốn lần trong 16 phút đầu. Tình huống khó nhất với thủ thành Bỉ là cú sút xa của Rodri đưa bóng đi căng và sát cột, nhưng anh vẫn đẩy ra được. Sự chắc chắn của Courtois phần nào giúp Real chơi tự tin hơn để đẩy cao đội hình gây áp lực, khiến đội khách gặp khó khi triển khai bóng.</p>\n<p class=\"Normal\">Courtois là điểm tựa hàng thủ, còn Vinicius Junior lĩnh xướng tuyến công của chủ nhà. Phút 25, tiền đạo Brazil cướp bóng từ đường chuyền về non của Rodri, rồi căng ngang nhưng trung vệ Ruben Dias kịp chuồi người cắt bóng trước khi tới chân Karim Benzema. Sau tình huống này, Vinicus hô hào khán giả Bernabeu cổ vũ nhiệt tình hơn.</p>\n<p class=\"Normal\">Cũng chỉnh Vinicius phá thế quân bình với tuyệt phẩm sút xa ở phút 36, nhưng công đầu thuộc về hậu vệ trái Eduardo Camavinga. Anh bật tường với lão tướng Luka Modric ở sân nhà, rồi leo biên và chuyền vào trung lộ cho Vinicius thoáng. Từ cự ly khoảng 25 m, tiền đạo Brazil sút căng về góc cao không cho thủ môn Ederson cơ hội nào cản phá. Đây là bàn thứ 15 của Vinicius tại Champions League, gần một nửa trong đó đến ở vòng knock-out.</p>\n<p class=\"Normal\">Cách điều hành trận đấu của trọng tài người Bồ Đào Nha Artur Dias cũng không được lòng cầu thủ Man City, khi họ cho rằng Real Madrid thoát nhiều tình huống đáng phải nhận thẻ vàng. Chủ nhà thường phạm lỗi chống phản công, nhưng đến phút bù hiệp một mới phải nhận thẻ vàng đầu tiên.</p>\n<p class=\"Normal\">Sau giờ giải lao, tình thế lại đảo chiều khi Man City chơi lấn sân, tạo ra cơ hội tốt. Phút 56, Ilkay Gundogan chọc khe cho Haaland thoát xuống bên trái cấm địa, nhưng cú sút của tiền đạo Na Uy bị David Alaba chuồi người chắn lại.</p>\n<p class=\"Normal\">Gundogan chơi không tốt trong trận này khi nhiều lần mất bóng nguy hiểm, nhưng ở khoảnh khắc quan trọng anh lại quyết định hợp lý. Phút 67, tiền vệ người Đức nhận bóng trong cấm địa, xoay người che chắn rồi thả bóng về tuyến hai của De Bruyne sút căng cháy lưới Courtois. Bàn thắng này đẹp mắt không kém so với pha mở tỷ số của Vinicius.</p>\n<img class=\"alignnone size-full wp-image-100\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/de-bruyne-0-jpeg-1683665988-8002-1683666375.jpg\" alt=\"\" width=\"1020\" height=\"612\" />\n\nCú sút xa trái phá của Kevin de Bruyne (phải)...\n\n<img class=\"alignnone size-full wp-image-104\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/de-bruyne-jpeg-7458-1683666375.jpg\" alt=\"\" width=\"1020\" height=\"680\" />\n<p class=\"Normal\">Hiệp hai đến lượt Real phàn nàn với trọng tài, khi chủ nhà cho rằng đáng lẽ họ phải được phạt đền vì tình huống bóng chạm tay John Stones trong cấm địa. Ngay sau đó, De Bruyne ghi bàn, càng khiến ban huấn luyện Real nổi giận. Sau phản ứng thái quá, HLV Carlo Ancelotti phải nhận thẻ vàng. Trọng tài người Bồ Đào Nha cũng không rút thẻ vàng nào cho Rodri dù anh ba lần phạm lỗi ngăn đối thủ tấn công.</p>\n<p class=\"Normal\">Trong những phút còn lại, Real lại chơi tốt hơn, trong đó có cú đánh đầu cận thành của Benzema và pha sút xa từ chân Aurelien Tchouameni, nhưng thủ môn Ederson đều đổ người cản phá được.</p>', 'Man City \'hút chết\' trên sân Real Madrid', '', 'inherit', 'closed', 'closed', '', '98-autosave-v1', '', '', '2023-05-10 14:20:21', '2023-05-10 07:20:21', '', 98, 'http://localhost/nguyentankhang_2120110085/?p=105', 0, 'revision', '', 0);
INSERT INTO `ntk_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(106, 1, '2023-05-10 14:20:57', '2023-05-10 07:20:57', 'Tiền đạo Vinicius Junior và tiền vệ Kevin de Bruyne thay nhau lập siêu phẩm ở mỗi hiệp, trong trận cầu chặt chẽ và chuyên môn cao. Karim Benzema và Erling Haaland cũng được trao vài cơ hội đáng chú ý nhưng không tận dụng được, nên hai đội sẽ làm lại từ đầu trên sân Etihad sau đây một tuần.\r\n\r\n<img class=\"alignnone size-full wp-image-99\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/real-madrid-jpeg-1683662583-8533-1683662782.jpg\" alt=\"\" width=\"1020\" height=\"612\" />\r\n<figure class=\"tplCaption action_thumb_added\" data-size=\"true\"><figcaption>\r\n<p class=\"Image\">Vinicius mừng tuyệt phẩm mở tỷ số cho Real Madrid trước Man City, tại bán kết lượt đi Champions League trên sân Bernabeu, thành phố Madrid, Tây Ban Nha tối 9/3/2023. Ảnh: <em>Reuters</em></p>\r\n\r\n</figcaption></figure>\r\n<p class=\"Normal\">Man City chơi tốt hơn trong nửa đầu hiệp một, khiến thủ môn Thibaut Courtois phải cứu thua bốn lần trong 16 phút đầu. Tình huống khó nhất với thủ thành Bỉ là cú sút xa của Rodri đưa bóng đi căng và sát cột, nhưng anh vẫn đẩy ra được. Sự chắc chắn của Courtois phần nào giúp Real chơi tự tin hơn để đẩy cao đội hình gây áp lực, khiến đội khách gặp khó khi triển khai bóng.</p>\r\n<p class=\"Normal\">Courtois là điểm tựa hàng thủ, còn Vinicius Junior lĩnh xướng tuyến công của chủ nhà. Phút 25, tiền đạo Brazil cướp bóng từ đường chuyền về non của Rodri, rồi căng ngang nhưng trung vệ Ruben Dias kịp chuồi người cắt bóng trước khi tới chân Karim Benzema. Sau tình huống này, Vinicus hô hào khán giả Bernabeu cổ vũ nhiệt tình hơn.</p>\r\n<p class=\"Normal\">Cũng chỉnh Vinicius phá thế quân bình với tuyệt phẩm sút xa ở phút 36, nhưng công đầu thuộc về hậu vệ trái Eduardo Camavinga. Anh bật tường với lão tướng Luka Modric ở sân nhà, rồi leo biên và chuyền vào trung lộ cho Vinicius thoáng. Từ cự ly khoảng 25 m, tiền đạo Brazil sút căng về góc cao không cho thủ môn Ederson cơ hội nào cản phá. Đây là bàn thứ 15 của Vinicius tại Champions League, gần một nửa trong đó đến ở vòng knock-out.</p>\r\n<p class=\"Normal\">Cách điều hành trận đấu của trọng tài người Bồ Đào Nha Artur Dias cũng không được lòng cầu thủ Man City, khi họ cho rằng Real Madrid thoát nhiều tình huống đáng phải nhận thẻ vàng. Chủ nhà thường phạm lỗi chống phản công, nhưng đến phút bù hiệp một mới phải nhận thẻ vàng đầu tiên.</p>\r\n<p class=\"Normal\">Sau giờ giải lao, tình thế lại đảo chiều khi Man City chơi lấn sân, tạo ra cơ hội tốt. Phút 56, Ilkay Gundogan chọc khe cho Haaland thoát xuống bên trái cấm địa, nhưng cú sút của tiền đạo Na Uy bị David Alaba chuồi người chắn lại.</p>\r\n<p class=\"Normal\">Gundogan chơi không tốt trong trận này khi nhiều lần mất bóng nguy hiểm, nhưng ở khoảnh khắc quan trọng anh lại quyết định hợp lý. Phút 67, tiền vệ người Đức nhận bóng trong cấm địa, xoay người che chắn rồi thả bóng về tuyến hai của De Bruyne sút căng cháy lưới Courtois. Bàn thắng này đẹp mắt không kém so với pha mở tỷ số của Vinicius.</p>\r\n<img class=\"alignnone size-full wp-image-100\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/de-bruyne-0-jpeg-1683665988-8002-1683666375.jpg\" alt=\"\" width=\"1020\" height=\"612\" />\r\n\r\nCú sút xa trái phá của Kevin de Bruyne (phải)...\r\n\r\n<img class=\"alignnone size-full wp-image-104\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/de-bruyne-jpeg-7458-1683666375.jpg\" alt=\"\" width=\"1020\" height=\"680\" />\r\n<p class=\"Normal\">Hiệp hai đến lượt Real phàn nàn với trọng tài, khi chủ nhà cho rằng đáng lẽ họ phải được phạt đền vì tình huống bóng chạm tay John Stones trong cấm địa. Ngay sau đó, De Bruyne ghi bàn, càng khiến ban huấn luyện Real nổi giận. Sau phản ứng thái quá, HLV Carlo Ancelotti phải nhận thẻ vàng. Trọng tài người Bồ Đào Nha cũng không rút thẻ vàng nào cho Rodri dù anh ba lần phạm lỗi ngăn đối thủ tấn công.</p>\r\n<p class=\"Normal\">Trong những phút còn lại, Real lại chơi tốt hơn, trong đó có cú đánh đầu cận thành của Benzema và pha sút xa từ chân Aurelien Tchouameni, nhưng thủ môn Ederson đều đổ người cản phá được.</p>\r\nHLV Pep Guardiola không thay người nào trong trận này, dù họ chỉ được nghỉ bốn ngày trước khi chơi trận tiếp theo ở Ngoại hạng Anh gặp chủ nhà Everton. Trong khi đó, Real không còn mục tiêu nào khác ngoài Champions League, nên có thể giữ sức cho các trụ cột ở lượt về.', 'Man City \'hút chết\' trên sân Real Madrid', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2023-05-10 14:20:57', '2023-05-10 07:20:57', '', 98, 'http://localhost/nguyentankhang_2120110085/?p=106', 0, 'revision', '', 0),
(125, 1, '2023-05-30 10:10:02', '2023-05-30 03:10:02', '', 'aa', '', 'inherit', 'open', 'closed', '', 'aa', '', '', '2023-05-30 10:10:02', '2023-05-30 03:10:02', '', 0, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/aa.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2023-05-30 10:10:18', '2023-05-30 03:10:18', '', 'bb', '', 'inherit', 'open', 'closed', '', 'bb', '', '', '2023-05-30 10:10:18', '2023-05-30 03:10:18', '', 0, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/bb.jpg', 0, 'attachment', 'image/jpeg', 0),
(127, 1, '2023-05-30 10:10:18', '2023-05-30 03:10:18', '', 'cc', '', 'inherit', 'open', 'closed', '', 'cc', '', '', '2023-05-30 10:10:18', '2023-05-30 03:10:18', '', 0, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/05/cc.jpg', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2023-05-31 08:19:44', '2023-05-31 01:19:44', '', 'slider 1', '', 'publish', 'closed', 'closed', '', 'slider-1', '', '', '2023-05-31 08:19:44', '2023-05-31 01:19:44', '', 0, 'http://localhost/nguyentankhang_2120110085/?post_type=slider&#038;p=130', 0, 'slider', '', 0),
(131, 1, '2023-05-31 08:20:03', '2023-05-31 01:20:03', '', 'slider 2', '', 'publish', 'closed', 'closed', '', 'slider-2', '', '', '2023-05-31 08:20:03', '2023-05-31 01:20:03', '', 0, 'http://localhost/nguyentankhang_2120110085/?post_type=slider&#038;p=131', 0, 'slider', '', 0),
(132, 1, '2023-05-31 08:20:17', '2023-05-31 01:20:17', '', 'slider 3', '', 'publish', 'closed', 'closed', '', 'slider-3', '', '', '2023-05-31 14:30:32', '2023-05-31 07:30:32', '', 0, 'http://localhost/nguyentankhang_2120110085/?post_type=slider&#038;p=132', 0, 'slider', '', 0),
(135, 1, '2023-06-04 14:06:46', '2023-06-04 07:06:46', 'sdsfdsf', 'fsdfdsfds', '', 'trash', 'open', 'open', '', 'fsdfdsfds__trashed', '', '', '2023-06-04 14:11:09', '2023-06-04 07:11:09', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=135', 0, 'post', '', 0),
(136, 1, '2023-06-04 14:06:46', '2023-06-04 07:06:46', 'sdsfdsf', 'fsdfdsfds', '', 'inherit', 'closed', 'closed', '', '135-revision-v1', '', '', '2023-06-04 14:06:46', '2023-06-04 07:06:46', '', 135, 'http://localhost/nguyentankhang_2120110085/?p=136', 0, 'revision', '', 0),
(137, 1, '2023-06-04 14:12:30', '2023-06-04 07:12:30', 'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', 'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', '', 'trash', 'open', 'open', '', 'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee__trashed', '', '', '2023-06-04 14:12:48', '2023-06-04 07:12:48', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=137', 0, 'post', '', 0),
(138, 1, '2023-06-04 14:12:30', '2023-06-04 07:12:30', 'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', 'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', '', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2023-06-04 14:12:30', '2023-06-04 07:12:30', '', 137, 'http://localhost/nguyentankhang_2120110085/?p=138', 0, 'revision', '', 0),
(140, 1, '2023-06-04 14:16:02', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-06-04 14:16:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=140', 1, 'nav_menu_item', '', 0),
(141, 1, '2023-06-04 14:16:02', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-06-04 14:16:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=141', 1, 'nav_menu_item', '', 0),
(142, 1, '2023-06-04 14:16:02', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-06-04 14:16:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=142', 1, 'nav_menu_item', '', 0),
(143, 1, '2023-06-30 17:30:53', '2023-06-04 07:17:31', ' ', '', '', 'publish', 'closed', 'closed', '', '143', '', '', '2023-06-30 17:30:53', '2023-06-30 10:30:53', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=143', 11, 'nav_menu_item', '', 0),
(144, 1, '2023-06-04 14:20:45', '2023-06-04 07:20:45', 'dscsdc', 'dcscsdc', '', 'trash', 'open', 'open', '', 'dcscsdc__trashed', '', '', '2023-06-04 14:24:49', '2023-06-04 07:24:49', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=144', 0, 'post', '', 0),
(145, 1, '2023-06-04 14:20:45', '2023-06-04 07:20:45', 'dscsdc', 'dcscsdc', '', 'inherit', 'closed', 'closed', '', '144-revision-v1', '', '', '2023-06-04 14:20:45', '2023-06-04 07:20:45', '', 144, 'http://localhost/nguyentankhang_2120110085/?p=145', 0, 'revision', '', 0),
(146, 1, '2023-06-04 14:39:39', '2023-06-04 07:39:39', '{\n    \"nav_menu_item[71]\": {\n        \"value\": {\n            \"menu_item_parent\": 69,\n            \"object_id\": 32,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Trang\",\n            \"url\": \"http://localhost/nguyentankhang_2120110085/ngoai-hang-anh/arsenal/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 11,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"Arsenal\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-04 07:39:39\"\n    },\n    \"nav_menu_item[-8847087883189842000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-04 07:35:49\"\n    },\n    \"nav_menu_item[-2791937088000450600]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-04 07:35:49\"\n    },\n    \"nav_menu_item[74]\": {\n        \"value\": {\n            \"menu_item_parent\": 69,\n            \"object_id\": 10,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Trang\",\n            \"url\": \"http://localhost/nguyentankhang_2120110085/ngoai-hang-anh/manchester-united/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 11,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"Manchester United\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-04 07:37:54\"\n    },\n    \"nav_menu_item[70]\": {\n        \"value\": {\n            \"menu_item_parent\": 69,\n            \"object_id\": 38,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Trang\",\n            \"url\": \"http://localhost/nguyentankhang_2120110085/ngoai-hang-anh/manchester-city/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 11,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"Manchester City\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-04 07:39:39\"\n    },\n    \"nav_menu_item[72]\": {\n        \"value\": {\n            \"menu_item_parent\": 69,\n            \"object_id\": 20,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Trang\",\n            \"url\": \"http://localhost/nguyentankhang_2120110085/ngoai-hang-anh/chelsea/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 11,\n            \"position\": 4,\n            \"status\": \"publish\",\n            \"original_title\": \"Chelsea\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-04 07:38:13\"\n    },\n    \"nav_menu_item[73]\": {\n        \"value\": {\n            \"menu_item_parent\": 69,\n            \"object_id\": 18,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Trang\",\n            \"url\": \"http://localhost/nguyentankhang_2120110085/ngoai-hang-anh/tottenham/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 11,\n            \"position\": 5,\n            \"status\": \"publish\",\n            \"original_title\": \"Tottenham\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-04 07:38:13\"\n    },\n    \"nav_menu_item[65]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 43,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Trang\",\n            \"url\": \"http://localhost/nguyentankhang_2120110085/la-liga/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 11,\n            \"position\": 8,\n            \"status\": \"publish\",\n            \"original_title\": \"La Liga\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-04 07:37:54\"\n    },\n    \"nav_menu_item[143]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 12,\n            \"object\": \"category\",\n            \"type\": \"taxonomy\",\n            \"type_label\": \"Chuy\\u00ean m\\u1ee5c\",\n            \"url\": \"http://localhost/nguyentankhang_2120110085/ligue-1/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 11,\n            \"position\": 10,\n            \"status\": \"publish\",\n            \"original_title\": \"Ligue 1\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-04 07:39:39\"\n    },\n    \"nav_menu_item[66]\": {\n        \"value\": {\n            \"menu_item_parent\": 65,\n            \"object_id\": 49,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Trang\",\n            \"url\": \"http://localhost/nguyentankhang_2120110085/la-liga/real-madrid/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 11,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"Real Madrid\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-04 07:39:39\"\n    },\n    \"nav_menu_item[67]\": {\n        \"value\": {\n            \"menu_item_parent\": 65,\n            \"object_id\": 47,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Trang\",\n            \"url\": \"http://localhost/nguyentankhang_2120110085/la-liga/atletico-madrid/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 11,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"Atletico Madrid\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-04 07:39:39\"\n    },\n    \"nav_menu_item[68]\": {\n        \"value\": {\n            \"menu_item_parent\": 65,\n            \"object_id\": 45,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Trang\",\n            \"url\": \"http://localhost/nguyentankhang_2120110085/la-liga/barcelona/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 11,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"Barcelona\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-04 07:39:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8714a8cb-8316-4da8-b597-3118b8063f7b', '', '', '2023-06-04 14:39:39', '2023-06-04 07:39:39', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=146', 0, 'customize_changeset', '', 0),
(147, 1, '2023-06-04 14:41:36', '2023-06-04 07:41:36', '{\n    \"nav_menu_item[70]\": {\n        \"value\": {\n            \"menu_item_parent\": 69,\n            \"object_id\": 38,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Trang\",\n            \"url\": \"http://localhost/nguyentankhang_2120110085/ngoai-hang-anh/manchester-city/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 11,\n            \"position\": 4,\n            \"status\": \"publish\",\n            \"original_title\": \"Manchester City\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-04 07:41:36\"\n    },\n    \"nav_menu_item[71]\": {\n        \"value\": {\n            \"menu_item_parent\": 69,\n            \"object_id\": 32,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Trang\",\n            \"url\": \"http://localhost/nguyentankhang_2120110085/ngoai-hang-anh/arsenal/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 11,\n            \"position\": 5,\n            \"status\": \"publish\",\n            \"original_title\": \"Arsenal\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-04 07:41:36\"\n    },\n    \"nav_menu_item[72]\": {\n        \"value\": {\n            \"menu_item_parent\": 69,\n            \"object_id\": 20,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Trang\",\n            \"url\": \"http://localhost/nguyentankhang_2120110085/ngoai-hang-anh/chelsea/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 11,\n            \"position\": 6,\n            \"status\": \"publish\",\n            \"original_title\": \"Chelsea\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-04 07:41:36\"\n    },\n    \"nav_menu_item[73]\": {\n        \"value\": {\n            \"menu_item_parent\": 69,\n            \"object_id\": 18,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Trang\",\n            \"url\": \"http://localhost/nguyentankhang_2120110085/ngoai-hang-anh/tottenham/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 11,\n            \"position\": 7,\n            \"status\": \"publish\",\n            \"original_title\": \"Tottenham\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-04 07:41:36\"\n    },\n    \"nav_menu_item[65]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 43,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Trang\",\n            \"url\": \"http://localhost/nguyentankhang_2120110085/la-liga/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 11,\n            \"position\": 11,\n            \"status\": \"publish\",\n            \"original_title\": \"La Liga\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-04 07:41:36\"\n    },\n    \"nav_menu_item[143]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 12,\n            \"object\": \"category\",\n            \"type\": \"taxonomy\",\n            \"type_label\": \"Chuy\\u00ean m\\u1ee5c\",\n            \"url\": \"http://localhost/nguyentankhang_2120110085/ligue-1/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 11,\n            \"position\": 12,\n            \"status\": \"publish\",\n            \"original_title\": \"Ligue 1\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-04 07:41:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b016086d-417a-4e61-ad95-ec30c8a4dfe0', '', '', '2023-06-04 14:41:36', '2023-06-04 07:41:36', '', 0, 'http://localhost/nguyentankhang_2120110085/b016086d-417a-4e61-ad95-ec30c8a4dfe0/', 0, 'customize_changeset', '', 0),
(148, 1, '2023-06-04 14:50:30', '2023-06-04 07:50:30', '<h2 class=\"sapo-detail\" data-field=\"sapo\">(NLĐO) - Nhà vô địch nước Pháp - PSG đã tìm lại được niềm vui chiến thắng tại Ligue 1 vào rạng sáng 2-2. Lionel Messi là nhân tố nổi bật giúp \"gã nhà giàu\" đại thắng 3-1 trong chuyến làm khách trước Montpellier.</h2>\r\n<div>\r\n<div id=\"content-id\" class=\"contentbody\">\r\n<div class=\"content-news-detail old-news\" data-field=\"body\">\r\n\r\nPSG hành quân đến sân Mosson của Montpellier tại vòng 21 Ligue 1 với phong độ không tốt, khi không thắng trong 2 vòng liên tiếp trước đó. Ở trận này, đội bóng nhà giàu nước Pháp cũng không có sự góp mặt của Neymar vì chấn thương.\r\n\r\nNgay phút thứ 8, đội khách PSG đã có cơ hội rất tốt để mở tỉ số khi được hưởng 1 quả phạt đền. Tuy nhiên, Kylian Mbappe gây thất vọng khi thất bại trong cả 2 lần sút.\r\n\r\nCú dứt điểm của tiền đạo người Pháp bị thủ thành Lecomte cản phá ở lần sút đầu tiên. Sau khi check VAR, trọng tài Pignard cho Mbappe thực hiện lại pha sút penalty do lỗi di chuyển của thủ môn đội nhà. Dẫu vậy, lần sút thứ 2 của Mbappe vẫn không thành công.\r\n\r\n<img class=\"alignnone size-full wp-image-149\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/06/2023-02-01t201535z708072379up1ej211k9ya6rtrmadp3soccer-france-mpl-psg-report-167529681618116481546.jpg\" alt=\"\" width=\"684\" height=\"451\" />\r\n\r\nPhút 34, Messi đưa được bóng vào lưới Montpellier nhưng bàn thắng không được công nhận vì lỗi việt vị. Đến phút 72, \"El Pulga\" một lần nữa hạ gục thủ thành của đội chủ nhà, sau khi tận dụng thành công cú chọc khe của Fabian Ruiz. Lần này, pha làm bàn của Messi là hoàn toàn hợp lệ.\r\n\r\n<img class=\"alignnone size-full wp-image-150\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/06/2023-02-01t202416z637809232up1ej211koeb3rtrmadp3soccer-france-mpl-psg-report-16752968162021885826688.jpg\" alt=\"\" width=\"684\" height=\"482\" />\r\n\r\n</div>\r\n</div>\r\n</div>', 'Mbappe nhạt nhòa, Messi lập công giúp PSG vượt khó', '', 'publish', 'open', 'open', '', 'mbappe-nhat-nhoa-messi-lap-cong-giup-psg-vuot-kho', '', '', '2023-06-04 14:50:30', '2023-06-04 07:50:30', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=148', 0, 'post', '', 0),
(149, 1, '2023-06-04 14:49:37', '2023-06-04 07:49:37', '', '2023-02-01t201535z708072379up1ej211k9ya6rtrmadp3soccer-france-mpl-psg-report-167529681618116481546', '', 'inherit', 'open', 'closed', '', '2023-02-01t201535z708072379up1ej211k9ya6rtrmadp3soccer-france-mpl-psg-report-167529681618116481546', '', '', '2023-06-04 14:49:37', '2023-06-04 07:49:37', '', 148, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/06/2023-02-01t201535z708072379up1ej211k9ya6rtrmadp3soccer-france-mpl-psg-report-167529681618116481546.jpg', 0, 'attachment', 'image/jpeg', 0),
(150, 1, '2023-06-04 14:50:09', '2023-06-04 07:50:09', '', '2023-02-01t202416z637809232up1ej211koeb3rtrmadp3soccer-france-mpl-psg-report-16752968162021885826688', '', 'inherit', 'open', 'closed', '', '2023-02-01t202416z637809232up1ej211koeb3rtrmadp3soccer-france-mpl-psg-report-16752968162021885826688', '', '', '2023-06-04 14:50:09', '2023-06-04 07:50:09', '', 148, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/06/2023-02-01t202416z637809232up1ej211koeb3rtrmadp3soccer-france-mpl-psg-report-16752968162021885826688.jpg', 0, 'attachment', 'image/jpeg', 0),
(151, 1, '2023-06-04 14:50:19', '2023-06-04 07:50:19', '', '2023-02-01t214013z697594511up1ej211o70fortrmadp3soccer-france-mpl-psg-report-16752968163621922051912', '', 'inherit', 'open', 'closed', '', '2023-02-01t214013z697594511up1ej211o70fortrmadp3soccer-france-mpl-psg-report-16752968163621922051912', '', '', '2023-06-04 14:50:19', '2023-06-04 07:50:19', '', 148, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/06/2023-02-01t214013z697594511up1ej211o70fortrmadp3soccer-france-mpl-psg-report-16752968163621922051912.jpg', 0, 'attachment', 'image/jpeg', 0),
(152, 1, '2023-06-04 14:50:30', '2023-06-04 07:50:30', '<h2 class=\"sapo-detail\" data-field=\"sapo\">(NLĐO) - Nhà vô địch nước Pháp - PSG đã tìm lại được niềm vui chiến thắng tại Ligue 1 vào rạng sáng 2-2. Lionel Messi là nhân tố nổi bật giúp \"gã nhà giàu\" đại thắng 3-1 trong chuyến làm khách trước Montpellier.</h2>\r\n<div>\r\n<div id=\"content-id\" class=\"contentbody\">\r\n<div class=\"content-news-detail old-news\" data-field=\"body\">\r\n\r\nPSG hành quân đến sân Mosson của Montpellier tại vòng 21 Ligue 1 với phong độ không tốt, khi không thắng trong 2 vòng liên tiếp trước đó. Ở trận này, đội bóng nhà giàu nước Pháp cũng không có sự góp mặt của Neymar vì chấn thương.\r\n\r\nNgay phút thứ 8, đội khách PSG đã có cơ hội rất tốt để mở tỉ số khi được hưởng 1 quả phạt đền. Tuy nhiên, Kylian Mbappe gây thất vọng khi thất bại trong cả 2 lần sút.\r\n\r\nCú dứt điểm của tiền đạo người Pháp bị thủ thành Lecomte cản phá ở lần sút đầu tiên. Sau khi check VAR, trọng tài Pignard cho Mbappe thực hiện lại pha sút penalty do lỗi di chuyển của thủ môn đội nhà. Dẫu vậy, lần sút thứ 2 của Mbappe vẫn không thành công.\r\n\r\n<img class=\"alignnone size-full wp-image-149\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/06/2023-02-01t201535z708072379up1ej211k9ya6rtrmadp3soccer-france-mpl-psg-report-167529681618116481546.jpg\" alt=\"\" width=\"684\" height=\"451\" />\r\n\r\nPhút 34, Messi đưa được bóng vào lưới Montpellier nhưng bàn thắng không được công nhận vì lỗi việt vị. Đến phút 72, \"El Pulga\" một lần nữa hạ gục thủ thành của đội chủ nhà, sau khi tận dụng thành công cú chọc khe của Fabian Ruiz. Lần này, pha làm bàn của Messi là hoàn toàn hợp lệ.\r\n\r\n<img class=\"alignnone size-full wp-image-150\" src=\"http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/06/2023-02-01t202416z637809232up1ej211koeb3rtrmadp3soccer-france-mpl-psg-report-16752968162021885826688.jpg\" alt=\"\" width=\"684\" height=\"482\" />\r\n\r\n</div>\r\n</div>\r\n</div>', 'Mbappe nhạt nhòa, Messi lập công giúp PSG vượt khó', '', 'inherit', 'closed', 'closed', '', '148-revision-v1', '', '', '2023-06-04 14:50:30', '2023-06-04 07:50:30', '', 148, 'http://localhost/nguyentankhang_2120110085/?p=152', 0, 'revision', '', 0),
(154, 1, '2023-06-30 17:30:53', '2023-06-04 07:52:15', ' ', '', '', 'publish', 'closed', 'closed', '', '154', '', '', '2023-06-30 17:30:53', '2023-06-30 10:30:53', '', 12, 'http://localhost/nguyentankhang_2120110085/?p=154', 12, 'nav_menu_item', '', 0),
(155, 1, '2023-06-04 16:34:09', '2023-06-04 09:34:09', '', 'Ligue 1', '', 'publish', 'closed', 'closed', '', 'ligue-1', '', '', '2023-06-04 16:34:09', '2023-06-04 09:34:09', '', 0, 'http://localhost/nguyentankhang_2120110085/?page_id=155', 0, 'page', '', 0),
(156, 1, '2023-06-04 16:34:09', '2023-06-04 09:34:09', '', 'Ligue 1', '', 'inherit', 'closed', 'closed', '', '155-revision-v1', '', '', '2023-06-04 16:34:09', '2023-06-04 09:34:09', '', 155, 'http://localhost/nguyentankhang_2120110085/?p=156', 0, 'revision', '', 0),
(157, 1, '2023-06-04 16:40:53', '2023-06-04 09:40:53', '', 'Premier League', '', 'inherit', 'open', 'closed', '', 'premier-league-2', '', '', '2023-06-04 16:40:53', '2023-06-04 09:40:53', '', 0, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/06/Premier-League.png', 0, 'attachment', 'image/png', 0),
(158, 1, '2023-06-04 16:41:20', '2023-06-04 09:41:20', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\",\n                \"archives-2\",\n                \"categories-2\",\n                \"custom_html-2\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-04 09:41:06\"\n    },\n    \"newses::custom_logo\": {\n        \"value\": 157,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-04 09:41:06\"\n    },\n    \"newses::nav_menu_locations[primary]\": {\n        \"value\": 11,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-04 09:41:06\"\n    },\n    \"newses::nav_menu_locations[footer]\": {\n        \"value\": 11,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-04 09:41:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f283c654-6623-4173-94f4-aedb6eb0e49b', '', '', '2023-06-04 16:41:20', '2023-06-04 09:41:20', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=158', 0, 'customize_changeset', '', 0),
(172, 1, '2023-06-07 16:00:55', '2023-06-07 09:00:55', '', 'Áo mu', '', 'trash', 'closed', 'closed', '', 'ao-mu__trashed', '', '', '2023-06-07 16:01:20', '2023-06-07 09:01:20', '', 0, 'http://localhost/nguyentankhang_2120110085/?post_type=product&#038;p=172', 0, 'product', '', 0),
(173, 1, '2023-06-14 14:49:28', '2023-06-14 07:49:28', 'Điện thoại: 0345805083\r\n\r\nGmail: nguyentankhang1412@gmail.com', 'Liên hệ', '', 'publish', 'closed', 'closed', '', 'lien-he', '', '', '2023-06-14 14:49:28', '2023-06-14 07:49:28', '', 0, 'http://localhost/nguyentankhang_2120110085/?page_id=173', 0, 'page', '', 0),
(174, 1, '2023-06-14 14:49:28', '2023-06-14 07:49:28', 'Điện thoại: 0345805083\r\n\r\nGmail: nguyentankhang1412@gmail.com', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '173-revision-v1', '', '', '2023-06-14 14:49:28', '2023-06-14 07:49:28', '', 173, 'http://localhost/nguyentankhang_2120110085/?p=174', 0, 'revision', '', 0),
(175, 1, '2023-06-14 14:49:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-06-14 14:49:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=175', 1, 'nav_menu_item', '', 0),
(176, 1, '2023-06-30 17:30:53', '2023-06-14 07:50:46', ' ', '', '', 'publish', 'closed', 'closed', '', '176', '', '', '2023-06-30 17:30:53', '2023-06-30 10:30:53', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=176', 13, 'nav_menu_item', '', 0),
(178, 1, '2023-06-16 17:08:06', '2023-06-16 10:08:06', 'gfdgd', 'dfgdfg', '', 'trash', 'closed', 'closed', '', 'dfgdfg__trashed', '', '', '2023-06-16 17:09:23', '2023-06-16 10:09:23', '', 0, 'http://localhost/nguyentankhang_2120110085/?post_type=product&#038;p=178', 0, 'product', '', 0),
(179, 1, '2023-06-16 17:08:55', '2023-06-16 10:08:55', 'gđfg', 'regrdg', '', 'trash', 'closed', 'closed', '', 'regrdg__trashed', '', '', '2023-06-16 17:09:24', '2023-06-16 10:09:24', '', 0, 'http://localhost/nguyentankhang_2120110085/?post_type=product&#038;p=179', 0, 'product', '', 0),
(180, 1, '2023-06-16 17:19:01', '2023-06-16 10:19:01', 'Áo bóng đá <strong><a href=\"https://www.sporter.vn/ao-mu/\" data-wpel-link=\"internal\">MU</a></strong> sân nhà mùa giải 23/24\r\n-Hàng VN giá <strong>Khuyến mãi còn</strong><strong> 100.000</strong> VNĐ /1 bộ\r\n<strong>Từ 10 bộ trở lên: 95.000VNĐ /1 bộ.\r\n(Size 2XL cộng thêm: 5,000VNĐ/bộ)\r\n</strong>-Hàng Thái Lan giá Khuyến mãi còn <strong>280.000 </strong>VNĐ /1 áo – <strong>350.000 </strong>VNĐ /1 bộ\r\n<strong>Giá ưu đãi từ 5 bộ trở lên: 270,000VNĐ/ 1 áo – 340,000VNĐ/ 1 bộ</strong>', 'Áo bóng đá MU sân nhà 23/24', '', 'publish', 'closed', 'closed', '', 'san-pham-1', '', '', '2023-06-29 22:29:17', '2023-06-29 15:29:17', '', 0, 'http://localhost/nguyentankhang_2120110085/?post_type=product&#038;p=180', 0, 'product', '', 0),
(181, 1, '2023-06-16 17:18:54', '2023-06-16 10:18:54', '', 'Ao-bong-da-manchester-united-san-nha-hang-viet-nam-1-1', '', 'inherit', 'open', 'closed', '', 'ao-bong-da-manchester-united-san-nha-hang-viet-nam-1-1', '', '', '2023-06-16 17:18:54', '2023-06-16 10:18:54', '', 180, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/06/Ao-bong-da-manchester-united-san-nha-hang-viet-nam-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(182, 1, '2023-06-16 17:20:42', '2023-06-16 10:20:42', 'Áo bóng đá <a href=\"https://www.sporter.vn/ao-man-city/\" data-wpel-link=\"internal\"><strong>Man City</strong></a> sân khách mẫu ba mùa giải 23/24\r\n-Hàng VN giá <strong>Khuyến mãi còn</strong><strong> 100.000</strong> VNĐ /1 bộ\r\n<strong>Từ 10 bộ trở lên: 95.000VNĐ /1 bộ.</strong>\r\n-Hàng Thái Lan giá Khuyến mãi còn <strong>280.000 </strong>VNĐ /1 áo – <strong>350.000 </strong>VNĐ /1 bộ\r\n<strong>Giá ưu đãi từ 5 bộ trở lên: 270,000VNĐ/ 1 áo – 340,000VNĐ/ 1 bộ</strong>', 'Áo Man City sân khách mẫu ba 23/24', '', 'publish', 'closed', 'closed', '', 'san-pham-2', '', '', '2023-06-29 22:30:24', '2023-06-29 15:30:24', '', 0, 'http://localhost/nguyentankhang_2120110085/?post_type=product&#038;p=182', 0, 'product', '', 0),
(183, 1, '2023-06-16 17:20:32', '2023-06-16 10:20:32', '', 'Ao-bong-da-mu-san-khach-mau-ba-hang-viet-nam-0', '', 'inherit', 'open', 'closed', '', 'ao-bong-da-mu-san-khach-mau-ba-hang-viet-nam-0', '', '', '2023-06-16 17:20:32', '2023-06-16 10:20:32', '', 182, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/06/Ao-bong-da-mu-san-khach-mau-ba-hang-viet-nam-0.jpg', 0, 'attachment', 'image/jpeg', 0),
(184, 1, '2023-06-16 17:23:18', '2023-06-16 10:23:18', 'Áo bóng đá <a href=\"https://www.sporter.vn/ao-arsenal/\" data-wpel-link=\"internal\"><strong>Arsenal</strong></a> sân nhà mùa giải 23/24\r\n-Hàng VN giá <strong>Khuyến mãi còn</strong><strong> 100.000</strong> VNĐ /1 bộ\r\n<strong>Từ 10 bộ trở lên: 95.000VNĐ /1 bộ.</strong>\r\n-Hàng Thái Lan giá Khuyến mãi còn <strong>280.000 </strong>VNĐ /1 áo – <strong>350.000 </strong>VNĐ /1 bộ\r\n<strong>Giá ưu đãi từ 5 bộ trở lên: 270,000VNĐ/ 1 áo – 340,000VNĐ/ 1 bộ</strong>', 'Áo bóng đá Arsenal sân nhà 23/24', '', 'publish', 'closed', 'closed', '', 'san-pham-3', '', '', '2023-06-29 22:31:42', '2023-06-29 15:31:42', '', 0, 'http://localhost/nguyentankhang_2120110085/?post_type=product&#038;p=184', 0, 'product', '', 0),
(185, 1, '2023-06-16 17:23:07', '2023-06-16 10:23:07', '', 'Ao-bong-da-man-city-trang-hang-viet-nam-0', '', 'inherit', 'open', 'closed', '', 'ao-bong-da-man-city-trang-hang-viet-nam-0', '', '', '2023-06-16 17:23:07', '2023-06-16 10:23:07', '', 184, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/06/Ao-bong-da-man-city-trang-hang-viet-nam-0.png', 0, 'attachment', 'image/png', 0),
(186, 1, '2023-06-16 17:23:07', '2023-06-16 10:23:07', '', 'Ao-bong-da-mu-san-khach-hang-viet-nam-0', '', 'inherit', 'open', 'closed', '', 'ao-bong-da-mu-san-khach-hang-viet-nam-0', '', '', '2023-06-16 17:23:07', '2023-06-16 10:23:07', '', 184, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/06/Ao-bong-da-mu-san-khach-hang-viet-nam-0.jpg', 0, 'attachment', 'image/jpeg', 0),
(187, 1, '2023-06-16 17:25:20', '2023-06-16 10:25:20', 'Áo bóng đá <a href=\"https://www.sporter.vn/ao-man-city/\" data-wpel-link=\"internal\"><strong>Man City</strong></a> sân khách mùa giải 23/24\r\n-Hàng VN giá <strong>Khuyến mãi còn</strong><strong> 100.000</strong> VNĐ /1 bộ\r\n<strong>Từ 10 bộ trở lên: 95.000VNĐ /1 bộ.</strong>\r\n-Hàng Thái Lan giá Khuyến mãi còn <strong>280.000 </strong>VNĐ /1 áo – <strong>350.000 </strong>VNĐ /1 bộ\r\n<strong>Giá ưu đãi từ 5 bộ trở lên: 270,000VNĐ/ 1 áo – 340,000VNĐ/ 1 bộ</strong>', 'Áo Manchester City sân khách 23/24', '', 'publish', 'closed', 'closed', '', 'san-pham-4', '', '', '2023-06-29 22:33:48', '2023-06-29 15:33:48', '', 0, 'http://localhost/nguyentankhang_2120110085/?post_type=product&#038;p=187', 0, 'product', '', 0),
(189, 1, '2023-06-16 17:29:45', '2023-06-16 10:29:45', 'Áo bóng đá <a href=\"https://www.sporter.vn/ao-real/\" data-wpel-link=\"internal\"><strong>Real Madrid</strong></a> sân nhà mùa giải 23/24\r\n-Hàng VN giá <strong>Khuyến mãi còn</strong><strong> 100.000</strong> VNĐ /1 bộ\r\n<strong>Từ 10 bộ trở lên: 95.000VNĐ /1 bộ.</strong>\r\n-Hàng Thái Lan giá Khuyến mãi còn <strong>280.000 </strong>VNĐ /1 áo – <strong>350.000 </strong>VNĐ /1 bộ\r\n<strong>Giá ưu đãi từ 5 bộ trở lên: 270,000VNĐ/ 1 áo – 340,000VNĐ/ 1 bộ</strong>', 'Áo Real Madrid sân nhà 23/24', '', 'publish', 'closed', 'closed', '', 'san-pham-1-2', '', '', '2023-06-29 22:36:23', '2023-06-29 15:36:23', '', 0, 'http://localhost/nguyentankhang_2120110085/?post_type=product&#038;p=189', 0, 'product', '', 0),
(190, 1, '2023-06-16 17:29:41', '2023-06-16 10:29:41', '', 'Ao-bong-da-barca-san-khach-0', '', 'inherit', 'open', 'closed', '', 'ao-bong-da-barca-san-khach-0', '', '', '2023-06-16 17:29:41', '2023-06-16 10:29:41', '', 189, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/06/Ao-bong-da-barca-san-khach-0.jpg', 0, 'attachment', 'image/jpeg', 0),
(191, 1, '2023-06-16 17:29:41', '2023-06-16 10:29:41', '', 'Ao-bong-da-real-madrid-san-khach-mau-ba-hang-viet-nam-0', '', 'inherit', 'open', 'closed', '', 'ao-bong-da-real-madrid-san-khach-mau-ba-hang-viet-nam-0', '', '', '2023-06-16 17:29:41', '2023-06-16 10:29:41', '', 189, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/06/Ao-bong-da-real-madrid-san-khach-mau-ba-hang-viet-nam-0.jpg', 0, 'attachment', 'image/jpeg', 0),
(192, 1, '2023-06-16 17:29:41', '2023-06-16 10:29:41', '', 'Ao-bong-da-real-madrid-san-khach-hang-viet-nam-0', '', 'inherit', 'open', 'closed', '', 'ao-bong-da-real-madrid-san-khach-hang-viet-nam-0', '', '', '2023-06-16 17:29:41', '2023-06-16 10:29:41', '', 189, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/06/Ao-bong-da-real-madrid-san-khach-hang-viet-nam-0.jpg', 0, 'attachment', 'image/jpeg', 0),
(193, 1, '2023-06-16 17:30:24', '2023-06-16 10:30:24', 'Áo bóng đá <a href=\"https://www.sporter.vn/ao-bayern-munich/\" data-wpel-link=\"internal\"><strong>Bayern Munich</strong></a> sân nhà mùa giải 23/24\r\n-Hàng VN giá <strong>Khuyến mãi còn</strong><strong> 100.000</strong> VNĐ /1 bộ\r\n<strong>Từ 10 bộ trở lên: 95.000VNĐ /1 bộ.</strong>\r\n-Hàng Thái Lan giá Khuyến mãi còn <strong>280.000 </strong>VNĐ /1 áo – <strong>350.000 </strong>VNĐ /1 bộ\r\n<strong>Giá ưu đãi từ 5 bộ trở lên: 270,000VNĐ/ 1 áo – 340,000VNĐ/ 1 bộ</strong>', 'Áo bóng đá Bayern Munich sân nhà 23/24', '', 'publish', 'closed', 'closed', '', 'snar-pham-2', '', '', '2023-06-29 22:41:55', '2023-06-29 15:41:55', '', 0, 'http://localhost/nguyentankhang_2120110085/?post_type=product&#038;p=193', 0, 'product', '', 0),
(194, 1, '2023-06-16 17:31:32', '2023-06-16 10:31:32', 'Áo bóng đá <a href=\"https://www.sporter.vn/ao-man-city/\" data-wpel-link=\"internal\"><strong>Man City</strong></a> sân nhà mùa giải 23/24\r\n-Hàng VN giá <strong>Khuyến mãi còn</strong><strong> 100.000</strong> VNĐ /1 bộ\r\n<strong>Từ 10 bộ trở lên: 95.000VNĐ /1 bộ.</strong>\r\n-Hàng Thái Lan giá Khuyến mãi còn <strong>280.000 </strong>VNĐ /1 áo – <strong>350.000 </strong>VNĐ /1 bộ\r\n<strong>Giá ưu đãi từ 5 bộ trở lên: 270,000VNĐ/ 1 áo – 340,000VNĐ/ 1 bộ</strong>', 'Áo Manchester City sân nhà 23/24', '', 'publish', 'closed', 'closed', '', 'san-pham-3-2', '', '', '2023-06-29 22:46:17', '2023-06-29 15:46:17', '', 0, 'http://localhost/nguyentankhang_2120110085/?post_type=product&#038;p=194', 0, 'product', '', 0),
(195, 1, '2023-06-16 17:33:51', '2023-06-16 10:33:51', 'Áo bóng đá <a href=\"https://www.sporter.vn/ao-barca/\" data-wpel-link=\"internal\"><strong>Barca</strong></a> sân nhà mùa giải 23/24\r\n-Hàng VN giá <strong>Khuyến mãi còn</strong><strong> 100.000</strong> VNĐ /1 bộ\r\n<strong>Từ 10 bộ trở lên: 95.000VNĐ /1 bộ.</strong>\r\n-Hàng Thái Lan giá Khuyến mãi còn <strong>280.000 </strong>VNĐ /1 áo – <strong>350.000 </strong>VNĐ /1 bộ\r\n<strong>Giá ưu đãi từ 5 bộ trở lên: 270,000VNĐ/ 1 áo – 340,000VNĐ/ 1 bộ</strong>', 'Áo bóng đá Barca sân nhà 23/24', '', 'publish', 'closed', 'closed', '', 'san-pham-4-2', '', '', '2023-06-29 22:47:25', '2023-06-29 15:47:25', '', 0, 'http://localhost/nguyentankhang_2120110085/?post_type=product&#038;p=195', 0, 'product', '', 0),
(196, 1, '2023-06-16 17:33:44', '2023-06-16 10:33:44', '', 'Ao-bong-da-barca-soc-0', '', 'inherit', 'open', 'closed', '', 'ao-bong-da-barca-soc-0', '', '', '2023-06-16 17:33:44', '2023-06-16 10:33:44', '', 195, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/06/Ao-bong-da-barca-soc-0.png', 0, 'attachment', 'image/png', 0),
(197, 1, '2023-06-30 17:30:53', '2023-06-16 11:15:55', ' ', '', '', 'publish', 'closed', 'closed', '', '197', '', '', '2023-06-30 17:30:53', '2023-06-30 10:30:53', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=197', 14, 'nav_menu_item', '', 0),
(198, 1, '2023-06-30 17:30:53', '2023-06-16 11:15:55', ' ', '', '', 'publish', 'closed', 'closed', '', '198', '', '', '2023-06-30 17:30:53', '2023-06-30 10:30:53', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=198', 19, 'nav_menu_item', '', 0),
(199, 1, '2023-06-16 18:19:02', '2023-06-16 11:19:02', ' ', '', '', 'publish', 'closed', 'closed', '', '199', '', '', '2023-06-16 18:19:02', '2023-06-16 11:19:02', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=199', 1, 'nav_menu_item', '', 0),
(200, 1, '2023-06-16 18:19:02', '2023-06-16 11:19:02', ' ', '', '', 'publish', 'closed', 'closed', '', '200', '', '', '2023-06-16 18:19:02', '2023-06-16 11:19:02', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=200', 2, 'nav_menu_item', '', 0),
(201, 1, '2023-06-21 12:31:53', '2023-06-21 05:31:53', 'Áo bóng đá <a href=\"https://www.sporter.vn/ao-barca/\" data-wpel-link=\"internal\"><strong>Barca</strong></a> sân nhà mùa giải 23/24\n-Hàng VN giá <strong>Khuyến mãi còn</strong><strong> 100.000</strong> VNĐ /1 bộ\n<strong>Từ 10 bộ trở lên: 95.000VNĐ /1 bộ.</strong>\n-Hàng Thái Lan giá Khuyến mãi còn <strong>280.000 </strong>VNĐ /1 áo – <strong>350.000 </strong>VNĐ /1 bộ\n<strong>Giá ưu đãi từ 5 bộ trở lên: 270,000VNĐ/ 1 áo – 340,000VNĐ/ 1 bộ</strong>', 'Áo Barca (nhà', '', 'inherit', 'closed', 'closed', '', '195-autosave-v1', '', '', '2023-06-21 12:31:53', '2023-06-21 05:31:53', '', 195, 'http://localhost/nguyentankhang_2120110085/?p=201', 0, 'revision', '', 0),
(203, 1, '2023-06-29 22:18:23', '2023-06-29 15:18:23', 'Áo bóng đá <strong><a href=\"https://www.sporter.vn/ao-mu/\" data-wpel-link=\"internal\">MU</a></strong> sân nhà mùa giải 23/24\n-Hàng VN giá <strong>Khuyến mãi còn</strong><strong> 100.000</strong> VNĐ /1 bộ\n<strong>Từ 10 bộ trở lên: 95.000VNĐ /1 bộ.\n(Size 2XL cộng thêm: 5,000VNĐ/bộ)\n</strong>-Hàng Thái Lan giá Khuyến mãi còn <strong>280.000 </strong>VNĐ /1 áo – <strong>350.000 </strong>VNĐ /1 bộ\n<strong>Giá ưu đãi từ 5 bộ trở lên: 270,000VNĐ/ 1 áo – 340,000VNĐ/ 1 bộ</strong>', 'Áo bóng đá MU sân nhà 23/24', '', 'inherit', 'closed', 'closed', '', '180-autosave-v1', '', '', '2023-06-29 22:18:23', '2023-06-29 15:18:23', '', 180, 'http://localhost/nguyentankhang_2120110085/?p=203', 0, 'revision', '', 0),
(204, 1, '2023-06-30 17:30:53', '2023-06-21 05:51:49', ' ', '', '', 'publish', 'closed', 'closed', '', '204', '', '', '2023-06-30 17:30:53', '2023-06-30 10:30:53', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=204', 20, 'nav_menu_item', '', 0),
(205, 1, '2023-06-30 17:30:53', '2023-06-21 05:51:49', ' ', '', '', 'publish', 'closed', 'closed', '', '205', '', '', '2023-06-30 17:30:53', '2023-06-30 10:30:53', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=205', 21, 'nav_menu_item', '', 0),
(206, 1, '2023-06-30 17:30:53', '2023-06-21 05:51:49', ' ', '', '', 'publish', 'closed', 'closed', '', '206', '', '', '2023-06-30 17:30:53', '2023-06-30 10:30:53', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=206', 22, 'nav_menu_item', '', 0),
(207, 1, '2023-06-30 17:30:53', '2023-06-21 05:51:49', ' ', '', '', 'publish', 'closed', 'closed', '', '207', '', '', '2023-06-30 17:30:53', '2023-06-30 10:30:53', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=207', 23, 'nav_menu_item', '', 0),
(208, 1, '2023-06-30 17:30:53', '2023-06-21 05:51:49', ' ', '', '', 'publish', 'closed', 'closed', '', '208', '', '', '2023-06-30 17:30:53', '2023-06-30 10:30:53', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=208', 16, 'nav_menu_item', '', 0),
(209, 1, '2023-06-30 17:30:53', '2023-06-21 05:51:49', ' ', '', '', 'publish', 'closed', 'closed', '', '209', '', '', '2023-06-30 17:30:53', '2023-06-30 10:30:53', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=209', 17, 'nav_menu_item', '', 0),
(210, 1, '2023-06-30 17:30:53', '2023-06-21 05:51:49', ' ', '', '', 'publish', 'closed', 'closed', '', '210', '', '', '2023-06-30 17:30:53', '2023-06-30 10:30:53', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=210', 18, 'nav_menu_item', '', 0),
(211, 1, '2023-06-30 17:30:53', '2023-06-21 05:51:49', ' ', '', '', 'publish', 'closed', 'closed', '', '211', '', '', '2023-06-30 17:30:53', '2023-06-30 10:30:53', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=211', 15, 'nav_menu_item', '', 0),
(213, 1, '2023-06-21 13:16:25', '2023-06-21 06:16:25', 'Áo bóng đá <a href=\"https://www.sporter.vn/ao-arsenal/\" data-wpel-link=\"internal\"><strong>Arsenal</strong></a> sân khách mẫu ba mùa giải 23/24\r\n-Hàng VN giá <strong>Khuyến mãi còn</strong><strong> 100.000</strong> VNĐ /1 bộ\r\n<strong>Từ 10 bộ trở lên: 95.000VNĐ /1 bộ.</strong>\r\n-Hàng Thái Lan giá Khuyến mãi còn <strong>280.000 </strong>VNĐ /1 áo – <strong>350.000 </strong>VNĐ /1 bộ\r\n<strong>Giá ưu đãi từ 5 bộ trở lên: 270,000VNĐ/ 1 áo – 340,000VNĐ/ 1 bộ</strong>', 'Áo bóng đá Arsenal sân khách mẫu ba 23/24', '', 'publish', 'closed', 'closed', '', 'ao-psg-nha', '', '', '2023-06-29 22:49:59', '2023-06-29 15:49:59', '', 0, 'http://localhost/nguyentankhang_2120110085/?post_type=product&#038;p=213', 0, 'product', '', 0),
(214, 1, '2023-06-21 13:15:53', '2023-06-21 06:15:53', '', 'Ao-bong-da-psg-san-khach-0', '', 'inherit', 'open', 'closed', '', 'ao-bong-da-psg-san-khach-0', '', '', '2023-06-21 13:15:53', '2023-06-21 06:15:53', '', 213, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/06/Ao-bong-da-psg-san-khach-0.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `ntk_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(215, 1, '2023-06-21 13:21:13', '2023-06-21 06:21:13', 'Áo bóng đá <a href=\"https://www.sporter.vn/ao-psg/\" data-wpel-link=\"internal\"><b>PSG</b></a> sân nhà mùa giải 23/24\r\n-Hàng VN giá <strong>Khuyến mãi còn</strong><strong> 100.000</strong> VNĐ /1 bộ\r\n<strong>Từ 10 bộ trở lên: 95.000VNĐ /1 bộ.</strong>\r\n-Hàng Thái Lan giá Khuyến mãi còn <strong>280.000 </strong>VNĐ /1 áo – <strong>350.000 </strong>VNĐ /1 bộ\r\n<strong>Giá ưu đãi từ 5 bộ trở lên: 270,000VNĐ/ 1 áo – 340,000VNĐ/ 1 bộ</strong>', 'Áo bóng đá PSG sân nhà 23/24', '', 'publish', 'closed', 'closed', '', 'ao-psg-khach', '', '', '2023-06-29 22:48:38', '2023-06-29 15:48:38', '', 0, 'http://localhost/nguyentankhang_2120110085/?post_type=product&#038;p=215', 0, 'product', '', 0),
(216, 1, '2023-06-21 13:20:59', '2023-06-21 06:20:59', '', 'Ao-bong-da-psg-xanh-den-hang-viet-nam-0', '', 'inherit', 'open', 'closed', '', 'ao-bong-da-psg-xanh-den-hang-viet-nam-0', '', '', '2023-06-21 13:20:59', '2023-06-21 06:20:59', '', 215, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/06/Ao-bong-da-psg-xanh-den-hang-viet-nam-0.png', 0, 'attachment', 'image/png', 0),
(217, 1, '2023-06-24 07:47:18', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-06-24 07:47:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=217', 0, 'post', '', 0),
(218, 1, '2023-06-24 07:48:05', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-06-24 07:48:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=218', 0, 'post', '', 0),
(219, 1, '2023-06-24 07:48:24', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-06-24 07:48:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=219', 0, 'post', '', 0),
(220, 1, '2023-06-24 08:03:21', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-06-24 08:03:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/nguyentankhang_2120110085/?post_type=product&p=220', 0, 'product', '', 0),
(221, 1, '2023-06-29 22:20:20', '2023-06-29 15:20:20', '', 'Ao-bong-da-manchester-united-do-0', '', 'inherit', 'open', 'closed', '', 'ao-bong-da-manchester-united-do-0', '', '', '2023-06-29 22:20:20', '2023-06-29 15:20:20', '', 180, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/06/Ao-bong-da-manchester-united-do-0.png', 0, 'attachment', 'image/png', 0),
(222, 1, '2023-06-29 22:22:31', '2023-06-29 15:22:31', 'Áo bóng đá <a href=\"https://www.sporter.vn/ao-mu/\" data-wpel-link=\"internal\"><b>Manchester United</b></a> sân khách mẫu ba:\n-Hàng VN giá <strong>Khuyến mãi còn</strong><strong> 100.000</strong> VNĐ /1 bộ\n<strong>Từ 10 bộ trở lên: 95.000VNĐ /1 bộ.</strong>\n-Hàng Thái Lan giá Khuyến mãi còn <strong>280.000</strong>VNĐ /1 áo – <strong>350.000</strong>VNĐ /1 bộ\n<strong>Giá ưu đãi từ 5 bộ trở lên: 270,000VNĐ/ 1 áo – 340,000VNĐ/ 1 bộ</strong>', 'Áo bóng đá MU sân khách mẫu ba 2022 – 2023', '', 'inherit', 'closed', 'closed', '', '182-autosave-v1', '', '', '2023-06-29 22:22:31', '2023-06-29 15:22:31', '', 182, 'http://localhost/nguyentankhang_2120110085/?p=222', 0, 'revision', '', 0),
(223, 1, '2023-06-29 22:22:58', '2023-06-29 15:22:58', '', 'Ao-bong-da-mu-san-khach-mau-ba-hang-viet-nam-0 (1)', '', 'inherit', 'open', 'closed', '', 'ao-bong-da-mu-san-khach-mau-ba-hang-viet-nam-0-1', '', '', '2023-06-29 22:22:58', '2023-06-29 15:22:58', '', 182, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/06/Ao-bong-da-mu-san-khach-mau-ba-hang-viet-nam-0-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(224, 1, '2023-06-29 22:30:21', '2023-06-29 15:30:21', '', 'Ao-bong-da-man-city-den-hang-viet-nam-0', '', 'inherit', 'open', 'closed', '', 'ao-bong-da-man-city-den-hang-viet-nam-0', '', '', '2023-06-29 22:30:21', '2023-06-29 15:30:21', '', 182, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/06/Ao-bong-da-man-city-den-hang-viet-nam-0.png', 0, 'attachment', 'image/png', 0),
(225, 1, '2023-06-29 22:31:38', '2023-06-29 15:31:38', '', 'Ao-bong-da-arsenal-do-hang-viet-nam-0', '', 'inherit', 'open', 'closed', '', 'ao-bong-da-arsenal-do-hang-viet-nam-0', '', '', '2023-06-29 22:31:38', '2023-06-29 15:31:38', '', 184, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/06/Ao-bong-da-arsenal-do-hang-viet-nam-0.png', 0, 'attachment', 'image/png', 0),
(226, 1, '2023-06-29 22:36:20', '2023-06-29 15:36:20', '', 'Ao-bong-da-real-madrid-trang-hang-viet-nam-0', '', 'inherit', 'open', 'closed', '', 'ao-bong-da-real-madrid-trang-hang-viet-nam-0', '', '', '2023-06-29 22:36:20', '2023-06-29 15:36:20', '', 189, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/06/Ao-bong-da-real-madrid-trang-hang-viet-nam-0.png', 0, 'attachment', 'image/png', 0),
(227, 1, '2023-06-29 22:39:37', '2023-06-29 15:39:37', '', 'Ao-bong-da-inter-san-nha-hang-viet-nam-0-768x768', '', 'inherit', 'open', 'closed', '', 'ao-bong-da-inter-san-nha-hang-viet-nam-0-768x768', '', '', '2023-06-29 22:39:37', '2023-06-29 15:39:37', '', 193, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/06/Ao-bong-da-inter-san-nha-hang-viet-nam-0-768x768-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(228, 1, '2023-06-29 22:40:43', '2023-06-29 15:40:43', '', 'Ao-bong-da-juventus-san-nha-hang-viet-nam-1', '', 'inherit', 'open', 'closed', '', 'ao-bong-da-juventus-san-nha-hang-viet-nam-1', '', '', '2023-06-29 22:40:43', '2023-06-29 15:40:43', '', 193, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/06/Ao-bong-da-juventus-san-nha-hang-viet-nam-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(229, 1, '2023-06-29 22:41:47', '2023-06-29 15:41:47', 'Áo bóng đá <a href=\"https://www.sporter.vn/ao-bayern-munich/\" data-wpel-link=\"internal\"><strong>Bayern Munich</strong></a> sân nhà mùa giải 23/24\n-Hàng VN giá <strong>Khuyến mãi còn</strong><strong> 100.000</strong> VNĐ /1 bộ\n<strong>Từ 10 bộ trở lên: 95.000VNĐ /1 bộ.</strong>\n-Hàng Thái Lan giá Khuyến mãi còn <strong>280.000 </strong>VNĐ /1 áo – <strong>350.000 </strong>VNĐ /1 bộ\n<strong>Giá ưu đãi từ 5 bộ trở lên: 270,000VNĐ/ 1 áo – 340,000VNĐ/ 1 bộ</strong>', 'Áo bóng đá Bayern Munich sân nhà 23/24', '', 'inherit', 'closed', 'closed', '', '193-autosave-v1', '', '', '2023-06-29 22:41:47', '2023-06-29 15:41:47', '', 193, 'http://localhost/nguyentankhang_2120110085/?p=229', 0, 'revision', '', 0),
(230, 1, '2023-06-29 22:41:52', '2023-06-29 15:41:52', '', 'Ao-bong-da-bayern-do-0', '', 'inherit', 'open', 'closed', '', 'ao-bong-da-bayern-do-0', '', '', '2023-06-29 22:41:52', '2023-06-29 15:41:52', '', 193, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/06/Ao-bong-da-bayern-do-0.png', 0, 'attachment', 'image/png', 0),
(231, 1, '2023-06-29 22:45:55', '2023-06-29 15:45:55', '', 'Ao-bong-da-man-city-xanh-bien-hang-viet-nam-0', '', 'inherit', 'open', 'closed', '', 'ao-bong-da-man-city-xanh-bien-hang-viet-nam-0', '', '', '2023-06-29 22:45:55', '2023-06-29 15:45:55', '', 194, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/06/Ao-bong-da-man-city-xanh-bien-hang-viet-nam-0.png', 0, 'attachment', 'image/png', 0),
(232, 1, '2023-06-29 22:49:42', '2023-06-29 15:49:42', '', 'Ao-bong-da-arsenal-xanh-ly-0', '', 'inherit', 'open', 'closed', '', 'ao-bong-da-arsenal-xanh-ly-0', '', '', '2023-06-29 22:49:42', '2023-06-29 15:49:42', '', 213, 'http://localhost/nguyentankhang_2120110085/wp-content/uploads/2023/06/Ao-bong-da-arsenal-xanh-ly-0.png', 0, 'attachment', 'image/png', 0),
(236, 1, '2023-06-29 22:52:01', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-06-29 22:52:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/nguyentankhang_2120110085/?p=236', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ntk_termmeta`
--

CREATE TABLE `ntk_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ntk_terms`
--

CREATE TABLE `ntk_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `ntk_terms`
--

INSERT INTO `ntk_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Ngoại Hang Anh', 'ngoai-hang-anh', 0),
(2, 'Manchester United', 'manchester-united', 0),
(3, 'Manchester City', 'manchester-city', 0),
(4, 'Arsenal', 'arsenal', 0),
(5, 'Tottenham', 'tottenham', 0),
(6, 'Chelsea', 'chelsea', 0),
(7, 'La Liga', 'la-liga', 0),
(8, 'Real Madrid', 'real-madrid', 0),
(9, 'Atletico Madrid', 'atletico-madrid', 0),
(10, 'Barcelona', 'barcelona', 0),
(11, 'Main Menu', 'main-menu', 0),
(12, 'Ligue 1', 'ligue-1', 0),
(13, 'Paris Saint Germain', 'paris-saint-germain', 0),
(14, 'Footer', 'footer', 0),
(15, 'Áo EPL', 'ao-epl', 0),
(16, 'Áo Laliga', 'ao-laliga', 0),
(18, 'Áo Ligue 1', 'ao-ligue', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ntk_term_relationships`
--

CREATE TABLE `ntk_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `ntk_term_relationships`
--

INSERT INTO `ntk_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(27, 1, 0),
(27, 2, 0),
(34, 1, 0),
(34, 3, 0),
(34, 4, 0),
(40, 1, 0),
(40, 5, 0),
(52, 7, 0),
(52, 8, 0),
(59, 1, 0),
(59, 6, 0),
(65, 11, 0),
(66, 11, 0),
(67, 11, 0),
(68, 11, 0),
(69, 11, 0),
(70, 11, 0),
(71, 11, 0),
(72, 11, 0),
(73, 11, 0),
(74, 11, 0),
(87, 7, 0),
(87, 10, 0),
(95, 7, 0),
(95, 9, 0),
(98, 1, 0),
(98, 3, 0),
(98, 7, 0),
(98, 8, 0),
(135, 1, 0),
(137, 1, 0),
(143, 11, 0),
(144, 1, 0),
(148, 12, 0),
(148, 13, 0),
(154, 11, 0),
(172, 15, 0),
(176, 11, 0),
(180, 15, 0),
(182, 15, 0),
(184, 15, 0),
(187, 15, 0),
(189, 16, 0),
(193, 16, 0),
(194, 16, 0),
(195, 16, 0),
(197, 11, 0),
(198, 11, 0),
(199, 14, 0),
(200, 14, 0),
(204, 11, 0),
(205, 11, 0),
(206, 11, 0),
(207, 11, 0),
(208, 11, 0),
(209, 11, 0),
(210, 11, 0),
(211, 11, 0),
(213, 18, 0),
(215, 18, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ntk_term_taxonomy`
--

CREATE TABLE `ntk_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `ntk_term_taxonomy`
--

INSERT INTO `ntk_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 5),
(2, 2, 'category', '', 1, 1),
(3, 3, 'category', '', 1, 2),
(4, 4, 'category', '', 1, 1),
(5, 5, 'category', '', 1, 1),
(6, 6, 'category', '', 1, 1),
(7, 7, 'category', '', 0, 4),
(8, 8, 'category', '', 7, 2),
(9, 9, 'category', '', 7, 1),
(10, 10, 'category', '', 7, 1),
(11, 11, 'nav_menu', '', 0, 23),
(12, 12, 'category', '', 0, 1),
(13, 13, 'category', '', 12, 1),
(14, 14, 'nav_menu', '', 0, 2),
(15, 15, 'product-category', '', 0, 4),
(16, 16, 'product-category', '', 0, 4),
(18, 18, 'product-category', '', 0, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ntk_usermeta`
--

CREATE TABLE `ntk_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `ntk_usermeta`
--

INSERT INTO `ntk_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'ntk_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'ntk_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"3db75e4809db868c3f387b8c6968902de7162deaa4f953f2bd96cd6c92e4fc0a\";a:4:{s:10:\"expiration\";i:1688534851;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36\";s:5:\"login\";i:1687325251;}}'),
(17, 1, 'ntk_dashboard_quick_press_last_post_id', '236'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(20, 1, 'ntk_user-settings', 'libraryContent=browse&mfold=o'),
(21, 1, 'ntk_user-settings-time', '1687326935'),
(22, 1, 'nav_menu_recently_edited', '11'),
(23, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(24, 1, 'meta-box-order_slider', 'a:3:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:20:\"slugdiv,postimagediv\";s:8:\"advanced\";s:0:\"\";}'),
(25, 1, 'screen_layout_slider', '2'),
(26, 1, 'closedpostboxes_product', 'a:0:{}'),
(27, 1, 'metaboxhidden_product', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(28, 1, 'meta-box-order_product', 'a:3:{s:4:\"side\";s:42:\"submitdiv,product-categorydiv,postimagediv\";s:6:\"normal\";s:7:\"slugdiv\";s:8:\"advanced\";s:23:\"ntk_product_meta_box_id\";}'),
(29, 1, 'screen_layout_product', '2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ntk_users`
--

CREATE TABLE `ntk_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `ntk_users`
--

INSERT INTO `ntk_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bm5xI.sE1doX/uQt6UgvxNEUsLIoS60', 'admin', 'nguyentankhang1412@gmail.com', 'http://localhost/nguyentankhang_2120110085', '2023-04-26 16:20:18', '1686058585:$P$BMAxrwRJ2ysAQFmPfakuWjwiglIQyS.', 0, 'admin');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `ntk_commentmeta`
--
ALTER TABLE `ntk_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `ntk_comments`
--
ALTER TABLE `ntk_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Chỉ mục cho bảng `ntk_links`
--
ALTER TABLE `ntk_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Chỉ mục cho bảng `ntk_options`
--
ALTER TABLE `ntk_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Chỉ mục cho bảng `ntk_postmeta`
--
ALTER TABLE `ntk_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `ntk_posts`
--
ALTER TABLE `ntk_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Chỉ mục cho bảng `ntk_termmeta`
--
ALTER TABLE `ntk_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `ntk_terms`
--
ALTER TABLE `ntk_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Chỉ mục cho bảng `ntk_term_relationships`
--
ALTER TABLE `ntk_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Chỉ mục cho bảng `ntk_term_taxonomy`
--
ALTER TABLE `ntk_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Chỉ mục cho bảng `ntk_usermeta`
--
ALTER TABLE `ntk_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `ntk_users`
--
ALTER TABLE `ntk_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `ntk_commentmeta`
--
ALTER TABLE `ntk_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ntk_comments`
--
ALTER TABLE `ntk_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `ntk_links`
--
ALTER TABLE `ntk_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ntk_options`
--
ALTER TABLE `ntk_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=792;

--
-- AUTO_INCREMENT cho bảng `ntk_postmeta`
--
ALTER TABLE `ntk_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=863;

--
-- AUTO_INCREMENT cho bảng `ntk_posts`
--
ALTER TABLE `ntk_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT cho bảng `ntk_termmeta`
--
ALTER TABLE `ntk_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ntk_terms`
--
ALTER TABLE `ntk_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `ntk_term_taxonomy`
--
ALTER TABLE `ntk_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `ntk_usermeta`
--
ALTER TABLE `ntk_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `ntk_users`
--
ALTER TABLE `ntk_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
