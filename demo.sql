-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-08-22 04:39:06
-- 服务器版本： 10.1.10-MariaDB
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- 表的结构 `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'WordPress先生', '', 'https://wordpress.org/', '', '2016-08-07 22:50:55', '2016-08-07 14:50:55', '您好，这是一条评论。\n要删除评论，请先登录，然后再查看这篇文章的评论。登录后您可以看到编辑或者删除评论的选项。', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', '微助教', 'yes'),
(4, 'blogdescription', '首页', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'wawa754870370@qq.com', 'yes'),
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
(22, 'posts_per_page', '6', 'yes'),
(23, 'date_format', 'Y年n月j日', 'yes'),
(24, 'time_format', 'ag:i', 'yes'),
(25, 'links_updated_date_format', 'Y年n月j日ag:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'protals', 'yes'),
(42, 'stylesheet', 'protals', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '33056', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', 'wp-content', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', 'Asia/Shanghai', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'finished_splitting_shared_terms', '1', 'yes'),
(89, 'initial_db_version', '33056', 'yes'),
(90, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(91, 'WPLANG', 'zh_CN', 'yes'),
(92, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar-primary";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:14:"sidebar-footer";N;s:13:"array_version";i:3;}', 'yes'),
(100, 'cron', 'a:5:{i:1471834270;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1471856766;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1471865400;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1471877474;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(102, '_transient_random_seed', '7433cef740f37a41bca4a42fb24a73a1', 'yes'),
(103, 'auth_key', 'p%1v/mSWcdrqwp<t70{qeX*[^WDOAR!78u?XcK]79[&9f%~Ln-MR//?^VY)3g^=L', 'yes'),
(104, 'auth_salt', '/uRZ>}&]CjhbU?Y1Jd1YSO0&~<bnZ3]7>}:_ fYJ6jAeRq$ou[!t^P]I(SkMEUhU', 'yes'),
(105, 'logged_in_key', '|8vbY~:f(45Y;XU20sfX[ib;={KmMcrPyi|:Y_h30>9{d5y+~:%_V_l/`!&lV7Dz', 'yes'),
(106, 'logged_in_salt', 'h2/c}E+(qNtQ}WGZFXcLZJszGQgC}&^OO3<i!Ras5)bM~V.xu8)BTW_zraq K* :', 'yes'),
(107, 'nonce_key', 'V KY-&DC>MZi.&5M$n4A^jb)GKG0xKJ b/evh|o(Do7}m33RNQ9<`|wBHSf7ul%t', 'yes'),
(108, 'nonce_salt', ':pb^dy=!0hEEk`BS)f<{nEm.{BHq&,/aF8oipO<uhRAys1Odzmdqf:xqFKBj~Y{G', 'yes'),
(114, 'can_compress_scripts', '1', 'yes'),
(116, 'current_theme', 'Sage Starter Theme', 'yes'),
(117, 'theme_mods_theme-name', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1470651688;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar-primary";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:14:"sidebar-footer";N;}}}', 'yes'),
(118, 'theme_switched', '', 'yes'),
(123, 'auto_core_update_notified', 'a:4:{s:4:"type";s:6:"manual";s:5:"email";s:20:"wawa754870370@qq.com";s:7:"version";s:5:"4.5.3";s:9:"timestamp";i:1470616358;}', 'yes'),
(160, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(163, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1470651737;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(164, 'theme_mods_protals', 'a:1:{i:0;b:0;}', 'yes'),
(167, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(168, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(169, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(170, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(321, 'recently_activated', 'a:0:{}', 'yes'),
(326, 'ftp_credentials', 'a:3:{s:8:"hostname";s:9:"localhost";s:8:"username";s:3:"ftp";s:15:"connection_type";s:3:"ftp";}', 'yes'),
(397, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1471079751', 'yes'),
(398, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5981";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3695";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3648";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3163";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2824";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2439";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2240";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2110";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"2070";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"2060";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"2009";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1949";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1883";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1814";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1717";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1600";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1559";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1428";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1337";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1293";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1252";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1123";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1110";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:4:"1014";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:4:"1009";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:4:"1008";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"942";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"932";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"926";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"919";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"919";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"862";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"849";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"807";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"800";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"794";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"777";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"771";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"767";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"766";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"755";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"749";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"721";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"716";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"702";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"699";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"697";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"697";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"693";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"679";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"667";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"648";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"625";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"625";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"616";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"606";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"603";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"601";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"598";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"590";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"586";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"575";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"573";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"562";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"562";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"546";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"543";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"540";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"526";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"525";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"520";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"518";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"518";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"516";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"489";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"479";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"472";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"472";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"464";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"461";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"453";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"446";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"441";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"435";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"428";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"428";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"426";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"425";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"422";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"415";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"415";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"411";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"408";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"407";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"406";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"406";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"405";}s:7:"profile";a:3:{s:4:"name";s:7:"profile";s:4:"slug";s:7:"profile";s:5:"count";s:3:"404";}s:8:"linkedin";a:3:{s:4:"name";s:8:"linkedin";s:4:"slug";s:8:"linkedin";s:5:"count";s:3:"401";}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";s:3:"401";}}', 'yes'),
(448, '_site_transient_timeout_available_translations', '1471253854', 'yes'),
(449, '_site_transient_available_translations', 'a:71:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-18 00:32:07";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-27 20:45:33";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3.1/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-22 14:16:17";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-25 14:32:58";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-16 05:09:40";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-18 21:20:44";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-07 03:25:59";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-19 09:17:13";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-18 19:34:34";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-12-22 13:06:33";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.3.1/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-02 05:19:03";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-12-22 13:05:44";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-12-10 09:57:22";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-17 20:57:21";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-17 22:20:50";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-12-08 12:35:01";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-13 23:56:05";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-14 00:38:16";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-16 10:50:33";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-26 22:31:40";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.2.9";s:7:"updated";s:19:"2015-10-29 16:32:18";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.9/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-19 14:33:57";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-26 19:53:52";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-30 19:20:19";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-05 16:34:02";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-12 17:21:08";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-20 13:36:08";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-15 15:41:04";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-12-08 17:58:19";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-12-08 02:28:05";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-06 20:37:24";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-24 15:25:30";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-18 23:34:00";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:6:"4.1.12";s:7:"updated";s:19:"2015-03-26 15:20:27";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:63:"https://downloads.wordpress.org/translation/core/4.1.12/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-22 08:59:41";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-11-20 14:39:18";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-11-04 22:14:16";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-11-15 12:00:25";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-17 13:36:47";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-11-24 08:17:28";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-22 13:47:37";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-06 06:16:37";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-30 16:23:05";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-11-06 04:24:53";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-18 07:48:28";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-12-15 04:39:52";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.12";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.12/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-23 10:49:34";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-28 15:14:19";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-17 18:56:13";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-02 07:53:33";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:63:"https://downloads.wordpress.org/translation/core/4.3-RC/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-27 13:38:57";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.12";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.12/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-12-16 17:23:30";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-11-27 16:41:01";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-18 16:44:05";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-03 10:08:50";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-20 09:27:40";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-06 16:10:24";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-27 07:05:44";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-17 18:31:56";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-19 10:43:45";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-11-08 12:30:32";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-20 03:52:15";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-19 13:55:59";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:6:"4.1.12";s:7:"updated";s:19:"2015-03-26 16:45:38";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.12/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-08 09:34:14";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-11-27 09:19:03";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-20 19:10:20";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-21 11:18:12";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'yes'),
(450, 'zh_cn_l10n_icp_num', '', 'yes'),
(462, '_site_transient_timeout_browser_de2a995d3ac4915f71f8186e7c74590f', '1471918642', 'yes'),
(463, '_site_transient_browser_de2a995d3ac4915f71f8186e7c74590f', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"50.0.2661.102";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(493, 'category_children', 'a:3:{i:14;a:4:{i:0;i:8;i:1;i:9;i:2;i:10;i:3;i:11;}i:7;a:3:{i:0;i:12;i:1;i:13;i:2;i:14;}i:20;a:3:{i:0;i:21;i:1;i:22;i:2;i:23;}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(620, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:5:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.6.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.6.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.6-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.6-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.6";s:7:"version";s:3:"4.6";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.6.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.6.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.6-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.6-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.6";s:7:"version";s:3:"4.6";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:2;O:8:"stdClass":12:{s:8:"response";s:10:"autoupdate";s:8:"download";s:65:"https://downloads.wordpress.org/release/zh_CN/wordpress-4.5.3.zip";s:6:"locale";s:5:"zh_CN";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/zh_CN/wordpress-4.5.3.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.5.3";s:7:"version";s:5:"4.5.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";s:12:"notify_email";s:1:"1";s:9:"new_files";s:1:"1";}i:3;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.4.4.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.4.4.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.4.4-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.4.4-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.4.4";s:7:"version";s:5:"4.4.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:4;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.3.5.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.3.5.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.3.5-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.3.5-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.3.5-partial-1.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-4.3.5-rollback-1.zip";}s:7:"current";s:5:"4.3.5";s:7:"version";s:5:"4.3.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:5:"4.3.1";s:9:"new_files";s:0:"";}}s:12:"last_checked";i:1471831943;s:15:"version_checked";s:5:"4.3.1";s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:4:"core";s:4:"slug";s:7:"default";s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-20 19:10:20";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/zh_CN.zip";s:10:"autoupdate";b:1;}}}', 'yes'),
(621, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1471831942;s:7:"checked";a:4:{s:7:"protals";s:5:"8.4.2";s:13:"twentyfifteen";s:3:"1.3";s:14:"twentyfourteen";s:3:"1.5";s:14:"twentythirteen";s:3:"1.6";}s:8:"response";a:3:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.6";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.1.6.zip";}s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.8";s:3:"url";s:44:"https://wordpress.org/themes/twentyfourteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentyfourteen.1.8.zip";}s:14:"twentythirteen";a:4:{s:5:"theme";s:14:"twentythirteen";s:11:"new_version";s:3:"2.0";s:3:"url";s:44:"https://wordpress.org/themes/twentythirteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentythirteen.2.0.zip";}}s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:13:"twentyfifteen";s:8:"language";s:5:"zh_CN";s:7:"version";s:3:"1.3";s:7:"updated";s:19:"2015-08-20 19:10:21";s:7:"package";s:77:"https://downloads.wordpress.org/translation/theme/twentyfifteen/1.3/zh_CN.zip";s:10:"autoupdate";b:1;}}}', 'yes'),
(622, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1471831940;s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:6:"3.1.11";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/akismet.3.1.11.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:1:{s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}}}', 'yes'),
(623, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1471872157', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(624, '_transient_feed_b9388c83948825c1edaef0d856b7b109', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n	\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:117:"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wordpress.org/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 22 Aug 2016 01:11:07 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:30:{i:0;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"18101@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"Advanced Custom Fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/advanced-custom-fields/#post-25254";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Mar 2011 04:07:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"25254@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:68:"Customise WordPress with powerful, professional and intuitive fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"elliotcondon";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"753@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"The most downloaded plugin for WordPress (almost 30 million downloads). Use All in One SEO Pack to automatically optimize your site for Search Engines";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Hello Dolly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/hello-dolly/#post-5790";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 29 May 2008 22:11:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"5790@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"This is not just a plugin, it symbolizes the hope and enthusiasm of an entire generation summed up in two words sung most famously by Louis Armstrong.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Wordfence Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wordfence/#post-29832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Sep 2011 03:13:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"29832@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"Secure your website with the Wordfence security plugin for WordPress.  Wordfence provides free enterprise-class WordPress security, protecting your we";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Wordfence";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Really Simple CAPTCHA";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/really-simple-captcha/#post-9542";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 09 Mar 2009 02:17:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"9542@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"Really Simple CAPTCHA is a CAPTCHA module intended to be called from other plugins. It is originally created for my Contact Form 7 plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:46:"https://wordpress.org/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"15@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Akismet checks your comments against the Akismet Web service to see if they look like spam or not.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Duplicate Post";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/duplicate-post/#post-2646";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 05 Dec 2007 17:40:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2646@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:22:"Clone posts and pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Lopo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"Google Analytics by MonsterInsights";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/plugins/google-analytics-for-wordpress/#post-2316";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Sep 2007 12:15:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2316@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:113:"Connect Google Analytics with WordPress by adding your Google Analytics tracking code. Get the stats that matter.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Syed Balkhi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/woocommerce/#post-29860";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Sep 2011 08:13:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"29860@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"WooThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WP-PageNavi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wp-pagenavi/#post-363";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 23:17:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"363@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"Adds a more advanced paging navigation interface.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Lester Chan";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Regenerate Thumbnails";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/regenerate-thumbnails/#post-6743";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 23 Aug 2008 14:38:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"6743@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:76:"Allows you to regenerate your thumbnails after changing the thumbnail sizes.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:25:"Alex Mills (Viper007Bond)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"NextGEN Gallery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/nextgen-gallery/#post-1169";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2007 20:08:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"1169@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:121:"The most popular WordPress gallery plugin and one of the most popular plugins of all time with over 15 million downloads.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alex Rabe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wordpress.org/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"23862@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:107:"Increase your traffic, view your stats, speed up your site, and protect yourself from hackers with Jetpack.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Automattic";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"W3 Total Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/w3-total-cache/#post-12073";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 29 Jul 2009 18:46:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"12073@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:132:"Easy Web Performance Optimization (WPO) using caching: browser, page, object, database, minify and content delivery network support.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Frederick Townes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WP Super Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/wp-super-cache/#post-2572";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Nov 2007 11:40:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2572@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:73:"A very fast caching engine for WordPress that produces static html files.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Donncha O Caoimh";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Page Builder by SiteOrigin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/siteorigin-panels/#post-51888";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Apr 2013 10:36:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"51888@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:111:"Build responsive page layouts using the widgets you know and love using this simple drag and drop page builder.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Greg Priday";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"132@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Arne Brachhold";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:9:"Yoast SEO";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wordpress.org/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"8321@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:114:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using Yoast SEO plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"TinyMCE Advanced";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/plugins/tinymce-advanced/#post-2082";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Jun 2007 15:00:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2082@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:58:"Extends and enhances TinyMCE, the WordPress Visual Editor.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Andrew Ozz";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2141@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"Disable Comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wordpress.org/plugins/disable-comments/#post-26907";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 27 May 2011 04:42:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"26907@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:134:"Allows administrators to globally disable comments on their site. Comments can be disabled according to post type. Multisite friendly.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Samir Shah";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WP Multibyte Patch";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wp-multibyte-patch/#post-28395";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Jul 2011 12:22:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"28395@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Multibyte functionality enhancement for the WordPress Japanese package.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"plugin-master";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Google Analytics Dashboard for WP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wordpress.org/plugins/google-analytics-dashboard-for-wp/#post-50539";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 10 Mar 2013 17:07:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"50539@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:127:"Displays Google Analytics reports in your WordPress Dashboard. Inserts the latest Google Analytics tracking code in your pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Alin Marcu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"UpdraftPlus WordPress Backup Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/updraftplus/#post-38058";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 21 May 2012 15:14:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"38058@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Backup and restoration made easy. Complete backups; manual or scheduled (backup to S3, Dropbox, Google Drive, Rackspace, FTP, SFTP, email + others).";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"David Anderson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Clef Two-Factor Authentication";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wordpress.org/plugins/wpclef/#post-47509";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 27 Dec 2012 01:25:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"47509@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:139:"Modern two-factor that people love to use: strong authentication without passwords or tokens; single sign on/off; magical login experience.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Dave Ross";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"Black Studio TinyMCE Widget";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wordpress.org/plugins/black-studio-tinymce-widget/#post-31973";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 10 Nov 2011 15:06:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"31973@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"The visual editor widget for Wordpress.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Marco Chiesi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:10:"Duplicator";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/duplicator/#post-26607";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 May 2011 12:15:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"26607@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:88:"Duplicate, clone, backup, move and transfer an entire site from one location to another.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Cory Lamle";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"iThemes Security (formerly Better WP Security)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/better-wp-security/#post-21738";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 22 Oct 2010 22:06:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"21738@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:146:"Take the guesswork out of WordPress security. iThemes Security offers 30+ ways to lock down WordPress in an easy-to-use WordPress security plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"iThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Meta Slider";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/ml-slider/#post-49521";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Feb 2013 16:56:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"49521@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"Easy to use WordPress Slider plugin. Create responsive slideshows with Nivo Slider, Flex Slider, Coin Slider and Responsive Slides.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Matcha Labs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:46:"https://wordpress.org/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:9:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Mon, 22 Aug 2016 01:22:37 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:25:"strict-transport-security";s:11:"max-age=360";s:13:"last-modified";s:29:"Thu, 20 May 2010 17:42:45 GMT";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 249";}s:5:"build";s:14:"20130910200210";}', 'no'),
(625, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1471872157', 'no'),
(626, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1471828957', 'no'),
(627, '_transient_timeout_plugin_slugs', '1471915357', 'no'),
(628, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(629, '_transient_timeout_dash_5438fb5baf31c513fff2b9a1067656a6', '1471872157', 'no'),
(630, '_transient_dash_5438fb5baf31c513fff2b9a1067656a6', '<div class="rss-widget"><p><strong>RSS错误</strong>：WP HTTP Error: Operation timed out after 10000 milliseconds with 77508 bytes received</p></div><div class="rss-widget"><p><strong>RSS错误</strong>：WP HTTP Error: Operation timed out after 9946 milliseconds with 421611 out of 452068 bytes received</p></div><div class="rss-widget"><ul><li class=''dashboard-news-plugin''><span>热门插件:</span> <a href=''https://wordpress.org/plugins/wpclef/'' class=''dashboard-news-plugin-link''>Clef Two-Factor Authentication</a>&nbsp;<span>(<a href=''plugin-install.php?tab=plugin-information&amp;plugin=wpclef&amp;_wpnonce=130e1a4a34&amp;TB_iframe=true&amp;width=600&amp;height=800'' class=''thickbox'' title=''Clef Two-Factor Authentication''>安装</a>)</span></li></ul></div>', 'no'),
(631, '_site_transient_timeout_theme_roots', '1471833741', 'yes'),
(632, '_site_transient_theme_roots', 'a:4:{s:7:"protals";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- 表的结构 `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_menu_item_type', 'custom'),
(3, 4, '_menu_item_menu_item_parent', '0'),
(4, 4, '_menu_item_object_id', '4'),
(5, 4, '_menu_item_object', 'custom'),
(6, 4, '_menu_item_target', ''),
(7, 4, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(8, 4, '_menu_item_xfn', ''),
(9, 4, '_menu_item_url', 'http://localhost/wordpress/'),
(10, 4, '_menu_item_orphaned', '1470642297'),
(11, 5, '_menu_item_type', 'post_type'),
(12, 5, '_menu_item_menu_item_parent', '0'),
(13, 5, '_menu_item_object_id', '2'),
(14, 5, '_menu_item_object', 'page'),
(15, 5, '_menu_item_target', ''),
(16, 5, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(17, 5, '_menu_item_xfn', ''),
(18, 5, '_menu_item_url', ''),
(19, 5, '_menu_item_orphaned', '1470642297'),
(20, 6, '_menu_item_type', 'custom'),
(21, 6, '_menu_item_menu_item_parent', '0'),
(22, 6, '_menu_item_object_id', '6'),
(23, 6, '_menu_item_object', 'custom'),
(24, 6, '_menu_item_target', ''),
(25, 6, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(26, 6, '_menu_item_xfn', ''),
(27, 6, '_menu_item_url', 'http://localhost/wordpress/'),
(29, 7, '_menu_item_type', 'post_type'),
(30, 7, '_menu_item_menu_item_parent', '0'),
(31, 7, '_menu_item_object_id', '2'),
(32, 7, '_menu_item_object', 'page'),
(33, 7, '_menu_item_target', ''),
(34, 7, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(35, 7, '_menu_item_xfn', ''),
(36, 7, '_menu_item_url', ''),
(37, 8, '_edit_last', '1'),
(38, 8, '_edit_lock', '1470992932:1'),
(39, 13, '_edit_last', '1'),
(40, 13, '_edit_lock', '1470993684:1'),
(41, 20, '_edit_last', '1'),
(42, 20, '_edit_lock', '1471049627:1'),
(45, 22, '_edit_last', '1'),
(46, 22, '_edit_lock', '1471049657:1'),
(49, 24, '_edit_last', '1'),
(50, 24, '_edit_lock', '1471049691:1'),
(53, 26, '_edit_last', '1'),
(54, 26, '_edit_lock', '1471049714:1'),
(57, 28, '_edit_last', '1'),
(58, 28, '_edit_lock', '1471051953:1'),
(63, 30, '_edit_last', '1'),
(64, 30, '_edit_lock', '1471051978:1'),
(67, 32, '_edit_last', '1'),
(68, 32, '_edit_lock', '1471052003:1'),
(71, 34, '_edit_last', '1'),
(72, 34, '_edit_lock', '1471052035:1'),
(75, 36, '_edit_last', '1'),
(76, 36, '_edit_lock', '1471056632:1'),
(89, 40, '_edit_last', '1'),
(90, 40, '_edit_lock', '1471057455:1'),
(93, 42, '_edit_last', '1'),
(94, 42, '_edit_lock', '1471057472:1'),
(97, 44, '_edit_last', '1'),
(98, 44, '_edit_lock', '1471057515:1'),
(103, 48, '_edit_last', '1'),
(104, 48, '_edit_lock', '1471057540:1'),
(107, 50, '_edit_last', '1'),
(108, 50, '_edit_lock', '1471057553:1'),
(111, 52, '_edit_last', '1'),
(112, 52, '_edit_lock', '1471057569:1'),
(115, 54, '_edit_last', '1'),
(118, 54, '_edit_lock', '1471057577:1'),
(119, 56, '_edit_last', '1'),
(120, 56, '_edit_lock', '1471248935:1'),
(123, 60, '_edit_last', '1'),
(124, 60, '_wp_page_template', 'page-sign-in.php'),
(125, 60, '_edit_lock', '1471071742:1'),
(126, 62, '_edit_last', '1'),
(127, 62, '_wp_page_template', 'page-register.php'),
(128, 62, '_edit_lock', '1471228134:1'),
(129, 65, '_edit_last', '1'),
(130, 65, '_edit_lock', '1471248769:1'),
(131, 67, '_edit_last', '1'),
(132, 67, '_edit_lock', '1471251652:1'),
(135, 69, '_edit_last', '1'),
(136, 69, '_edit_lock', '1471251669:1'),
(139, 71, '_edit_last', '1'),
(140, 71, '_edit_lock', '1471251687:1'),
(143, 73, '_edit_last', '1'),
(144, 73, '_edit_lock', '1471313598:1'),
(145, 75, '_edit_last', '1'),
(146, 75, '_edit_lock', '1471404805:1'),
(149, 77, '_edit_last', '1'),
(150, 77, '_edit_lock', '1471404795:1'),
(153, 79, '_edit_last', '1'),
(154, 79, '_edit_lock', '1471404785:1'),
(157, 81, '_edit_last', '1'),
(158, 81, '_edit_lock', '1471404759:1'),
(161, 83, '_edit_last', '1'),
(162, 83, '_edit_lock', '1471404748:1'),
(177, 86, '_edit_last', '1'),
(178, 86, '_edit_lock', '1471413628:1'),
(181, 88, '_edit_last', '1'),
(182, 88, '_edit_lock', '1471413641:1'),
(185, 90, '_edit_last', '1'),
(186, 90, '_edit_lock', '1471413655:1'),
(189, 92, '_edit_last', '1'),
(192, 92, '_edit_lock', '1471413678:1'),
(193, 94, '_edit_last', '1'),
(194, 94, '_edit_lock', '1471413691:1'),
(197, 96, '_edit_last', '1'),
(200, 96, '_edit_lock', '1471483940:1');

-- --------------------------------------------------------

--
-- 表的结构 `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-08-07 22:50:55', '2016-08-07 14:50:55', '欢迎使用WordPress。这是您的第一篇文章。编辑或删除它，然后开始写作吧！', '世界，您好！', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-08-07 22:50:55', '2016-08-07 14:50:55', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2016-08-07 22:50:55', '2016-08-07 14:50:55', '这是一个范例页面。它和博客文章不同，因为它的页面位置是固定的，同时会显示于您的博客导航栏（大多数主题中）。大多数人会新增一个“关于”页面向访客介绍自己。它可能类似下面这样：\n\n<blockquote>我是一个很有趣的人，我创建了工厂和庄园。并且，顺便提一下，我的妻子也很好。</blockquote>\n\n……或下面这样：\n\n<blockquote>XYZ装置公司成立于1971年，公司成立以来，我们一直向市民提供高品质的装置。我们位于北京市，有超过2,000名员工，对北京市有着相当大的贡献。</blockquote>\n\n作为一个新的WordPress用户，您可以前往<a href="http://localhost/wordpress/wp-admin/">您的仪表盘</a>删除这个页面，并建立属于您的全新内容。祝您使用愉快！', '示例页面', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-08-07 22:50:55', '2016-08-07 14:50:55', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(4, 1, '2016-08-08 15:44:57', '0000-00-00 00:00:00', '', '首页', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-08-08 15:44:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=4', 1, 'nav_menu_item', '', 0),
(5, 1, '2016-08-08 15:44:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-08-08 15:44:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2016-08-08 15:47:36', '2016-08-08 07:47:36', '', '首页', '', 'publish', 'closed', 'closed', '', '%e9%a6%96%e9%a1%b5', '', '', '2016-08-08 15:48:03', '2016-08-08 07:48:03', '', 0, 'http://localhost/wordpress/?p=6', 1, 'nav_menu_item', '', 0),
(7, 1, '2016-08-08 15:47:36', '2016-08-08 07:47:36', ' ', '', '', 'publish', 'closed', 'closed', '', '7', '', '', '2016-08-08 15:48:03', '2016-08-08 07:48:03', '', 0, 'http://localhost/wordpress/?p=7', 2, 'nav_menu_item', '', 0),
(8, 1, '2016-08-12 17:08:52', '0000-00-00 00:00:00', '', '这是一测试的文章哦！', '', 'draft', 'open', 'open', '', '', '', '', '2016-08-12 17:08:52', '2016-08-12 09:08:52', '', 0, 'http://localhost/wordpress/?p=8', 0, 'post', '', 0),
(13, 1, '2016-08-12 17:21:24', '0000-00-00 00:00:00', '', '这是一篇测试文章哦！！！', '', 'draft', 'open', 'open', '', '', '', '', '2016-08-12 17:21:24', '2016-08-12 09:21:24', '', 0, 'http://localhost/wordpress/?p=13', 0, 'post', '', 0),
(20, 1, '2016-08-13 08:56:08', '2016-08-13 00:56:08', '这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！', '这是一篇测试的文章哦！', '', 'publish', 'open', 'open', '', '%e8%bf%99%e6%98%af%e4%b8%80%e7%af%87%e6%b5%8b%e8%af%95%e7%9a%84%e6%96%87%e7%ab%a0%e5%93%a6%ef%bc%81', '', '', '2016-08-13 08:56:08', '2016-08-13 00:56:08', '', 0, 'http://localhost/wordpress/?p=20', 0, 'post', '', 0),
(21, 1, '2016-08-13 08:56:08', '2016-08-13 00:56:08', '这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！', '这是一篇测试的文章哦！', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2016-08-13 08:56:08', '2016-08-13 00:56:08', '', 20, 'http://localhost/wordpress/?p=21', 0, 'revision', '', 0),
(22, 1, '2016-08-13 08:56:39', '2016-08-13 00:56:39', '这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！', '这是一篇测试的文章哦！这是一篇测试的文章哦！', '', 'publish', 'open', 'open', '', '%e8%bf%99%e6%98%af%e4%b8%80%e7%af%87%e6%b5%8b%e8%af%95%e7%9a%84%e6%96%87%e7%ab%a0%e5%93%a6%ef%bc%81%e8%bf%99%e6%98%af%e4%b8%80%e7%af%87%e6%b5%8b%e8%af%95%e7%9a%84%e6%96%87%e7%ab%a0%e5%93%a6%ef%bc%81', '', '', '2016-08-13 08:56:39', '2016-08-13 00:56:39', '', 0, 'http://localhost/wordpress/?p=22', 0, 'post', '', 0),
(23, 1, '2016-08-13 08:56:39', '2016-08-13 00:56:39', '这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！', '这是一篇测试的文章哦！这是一篇测试的文章哦！', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2016-08-13 08:56:39', '2016-08-13 00:56:39', '', 22, 'http://localhost/wordpress/?p=23', 0, 'revision', '', 0),
(24, 1, '2016-08-13 08:57:09', '2016-08-13 00:57:09', '这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！', '这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦', '', 'publish', 'open', 'open', '', '%e8%bf%99%e6%98%af%e4%b8%80%e7%af%87%e6%b5%8b%e8%af%95%e7%9a%84%e6%96%87%e7%ab%a0%e5%93%a6%ef%bc%81%e8%bf%99%e6%98%af%e4%b8%80%e7%af%87%e6%b5%8b%e8%af%95%e7%9a%84%e6%96%87%e7%ab%a0%e5%93%a6%ef%bc%81-2', '', '', '2016-08-13 08:57:09', '2016-08-13 00:57:09', '', 0, 'http://localhost/wordpress/?p=24', 0, 'post', '', 0),
(25, 1, '2016-08-13 08:57:09', '2016-08-13 00:57:09', '这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！', '这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2016-08-13 08:57:09', '2016-08-13 00:57:09', '', 24, 'http://localhost/wordpress/?p=25', 0, 'revision', '', 0),
(26, 1, '2016-08-13 08:57:27', '2016-08-13 00:57:27', '这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！', '这是一篇测试的文章哦！这是一篇测试的文章哦！', '', 'publish', 'open', 'open', '', '%e8%bf%99%e6%98%af%e4%b8%80%e7%af%87%e6%b5%8b%e8%af%95%e7%9a%84%e6%96%87%e7%ab%a0%e5%93%a6%ef%bc%81%e8%bf%99%e6%98%af%e4%b8%80%e7%af%87%e6%b5%8b%e8%af%95%e7%9a%84%e6%96%87%e7%ab%a0%e5%93%a6%ef%bc%81-3', '', '', '2016-08-13 08:57:27', '2016-08-13 00:57:27', '', 0, 'http://localhost/wordpress/?p=26', 0, 'post', '', 0),
(27, 1, '2016-08-13 08:57:27', '2016-08-13 00:57:27', '这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！', '这是一篇测试的文章哦！这是一篇测试的文章哦！', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2016-08-13 08:57:27', '2016-08-13 00:57:27', '', 26, 'http://localhost/wordpress/?p=27', 0, 'revision', '', 0),
(28, 1, '2016-08-13 08:57:49', '2016-08-13 00:57:49', '这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！', '这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！', '', 'publish', 'open', 'open', '', '%e8%bf%99%e6%98%af%e4%b8%80%e7%af%87%e6%b5%8b%e8%af%95%e7%9a%84%e6%96%87%e7%ab%a0%e5%93%a6%ef%bc%81%e8%bf%99%e6%98%af%e4%b8%80%e7%af%87%e6%b5%8b%e8%af%95%e7%9a%84%e6%96%87%e7%ab%a0%e5%93%a6%ef%bc%81-4', '', '', '2016-08-13 08:58:10', '2016-08-13 00:58:10', '', 0, 'http://localhost/wordpress/?p=28', 0, 'post', '', 0),
(29, 1, '2016-08-13 08:57:49', '2016-08-13 00:57:49', '这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！', '这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2016-08-13 08:57:49', '2016-08-13 00:57:49', '', 28, 'http://localhost/wordpress/?p=29', 0, 'revision', '', 0),
(30, 1, '2016-08-13 09:35:20', '2016-08-13 01:35:20', '这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！', '这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！', '', 'publish', 'open', 'open', '', '%e8%bf%99%e6%98%af%e4%b8%80%e7%af%87%e6%b5%8b%e8%af%95%e7%9a%84%e6%96%87%e7%ab%a0%e5%93%a6%ef%bc%81%e8%bf%99%e6%98%af%e4%b8%80%e7%af%87%e6%b5%8b%e8%af%95%e7%9a%84%e6%96%87%e7%ab%a0%e5%93%a6%ef%bc%81-5', '', '', '2016-08-13 09:35:20', '2016-08-13 01:35:20', '', 0, 'http://localhost/wordpress/?p=30', 0, 'post', '', 0),
(31, 1, '2016-08-13 09:35:20', '2016-08-13 01:35:20', '这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！', '这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2016-08-13 09:35:20', '2016-08-13 01:35:20', '', 30, 'http://localhost/wordpress/?p=31', 0, 'revision', '', 0),
(32, 1, '2016-08-13 09:35:44', '2016-08-13 01:35:44', '这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！\r\n\r\n这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！\r\n\r\n这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！', '这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！', '', 'publish', 'open', 'open', '', '%e8%bf%99%e6%98%af%e4%b8%80%e7%af%87%e6%b5%8b%e8%af%95%e7%9a%84%e6%96%87%e7%ab%a0%e5%93%a6%ef%bc%81%e8%bf%99%e6%98%af%e4%b8%80%e7%af%87%e6%b5%8b%e8%af%95%e7%9a%84%e6%96%87%e7%ab%a0%e5%93%a6%ef%bc%81-6', '', '', '2016-08-13 09:35:44', '2016-08-13 01:35:44', '', 0, 'http://localhost/wordpress/?p=32', 0, 'post', '', 0),
(33, 1, '2016-08-13 09:35:44', '2016-08-13 01:35:44', '这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！\r\n\r\n这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！\r\n\r\n这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！', '这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2016-08-13 09:35:44', '2016-08-13 01:35:44', '', 32, 'http://localhost/wordpress/?p=33', 0, 'revision', '', 0),
(34, 1, '2016-08-13 09:36:16', '2016-08-13 01:36:16', '这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！\r\n\r\n这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！\r\n\r\n这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！', '这是一篇测试的文章哦！这是一篇测试的文章哦！', '', 'publish', 'open', 'open', '', '%e8%bf%99%e6%98%af%e4%b8%80%e7%af%87%e6%b5%8b%e8%af%95%e7%9a%84%e6%96%87%e7%ab%a0%e5%93%a6%ef%bc%81%e8%bf%99%e6%98%af%e4%b8%80%e7%af%87%e6%b5%8b%e8%af%95%e7%9a%84%e6%96%87%e7%ab%a0%e5%93%a6%ef%bc%81-7', '', '', '2016-08-13 09:36:16', '2016-08-13 01:36:16', '', 0, 'http://localhost/wordpress/?p=34', 0, 'post', '', 0),
(35, 1, '2016-08-13 09:36:16', '2016-08-13 01:36:16', '这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！\r\n\r\n这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！\r\n\r\n这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！', '这是一篇测试的文章哦！这是一篇测试的文章哦！', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2016-08-13 09:36:16', '2016-08-13 01:36:16', '', 34, 'http://localhost/wordpress/?p=35', 0, 'revision', '', 0),
(36, 1, '2016-08-13 09:36:50', '2016-08-13 01:36:50', '   这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！''这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！''\r\n   这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！', 'minggggg这是一篇测试的文章哦！这是一篇测试的文章哦！', '', 'publish', 'open', 'open', '', '%e8%bf%99%e6%98%af%e4%b8%80%e7%af%87%e6%b5%8b%e8%af%95%e7%9a%84%e6%96%87%e7%ab%a0%e5%93%a6%ef%bc%81%e8%bf%99%e6%98%af%e4%b8%80%e7%af%87%e6%b5%8b%e8%af%95%e7%9a%84%e6%96%87%e7%ab%a0%e5%93%a6%ef%bc%81-8', '', '', '2016-08-13 10:38:45', '2016-08-13 02:38:45', '', 0, 'http://localhost/wordpress/?p=36', 0, 'post', '', 0),
(37, 1, '2016-08-13 09:36:50', '2016-08-13 01:36:50', '这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！''这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！''\r\n\r\n这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！', '这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2016-08-13 09:36:50', '2016-08-13 01:36:50', '', 36, 'http://localhost/wordpress/?p=37', 0, 'revision', '', 0),
(38, 1, '2016-08-13 10:37:54', '2016-08-13 02:37:54', '这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！''这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！''\r\n\r\n这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！', 'minggggg这是一篇测试的文章哦！这是一篇测试的文章哦！', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2016-08-13 10:37:54', '2016-08-13 02:37:54', '', 36, 'http://localhost/wordpress/?p=38', 0, 'revision', '', 0),
(39, 1, '2016-08-13 10:38:45', '2016-08-13 02:38:45', '   这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！''这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！''\r\n   这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！这是一篇测试的文章哦！', 'minggggg这是一篇测试的文章哦！这是一篇测试的文章哦！', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2016-08-13 10:38:45', '2016-08-13 02:38:45', '', 36, 'http://localhost/wordpress/?p=39', 0, 'revision', '', 0),
(40, 1, '2016-08-13 11:06:37', '2016-08-13 03:06:37', '这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章\r\n\r\n这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章\r\n\r\n这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章vvvv这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章', '这是广告栏1的测试文章', '', 'publish', 'open', 'open', '', '%e8%bf%99%e6%98%af%e5%b9%bf%e5%91%8a%e6%a0%8f1%e7%9a%84%e6%b5%8b%e8%af%95%e6%96%87%e7%ab%a0', '', '', '2016-08-13 11:06:37', '2016-08-13 03:06:37', '', 0, 'http://localhost/wordpress/?p=40', 0, 'post', '', 0),
(41, 1, '2016-08-13 11:06:37', '2016-08-13 03:06:37', '这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章\r\n\r\n这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章\r\n\r\n这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章vvvv这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章', '这是广告栏1的测试文章', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2016-08-13 11:06:37', '2016-08-13 03:06:37', '', 40, 'http://localhost/wordpress/?p=41', 0, 'revision', '', 0),
(42, 1, '2016-08-13 11:06:53', '2016-08-13 03:06:53', '这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章\r\n\r\n这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章\r\n\r\n这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章', '这是广告栏2的测试文章', '', 'publish', 'open', 'open', '', '%e8%bf%99%e6%98%af%e5%b9%bf%e5%91%8a%e6%a0%8f2%e7%9a%84%e6%b5%8b%e8%af%95%e6%96%87%e7%ab%a0', '', '', '2016-08-13 11:06:53', '2016-08-13 03:06:53', '', 0, 'http://localhost/wordpress/?p=42', 0, 'post', '', 0),
(43, 1, '2016-08-13 11:06:53', '2016-08-13 03:06:53', '这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章\r\n\r\n这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章\r\n\r\n这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章', '这是广告栏2的测试文章', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2016-08-13 11:06:53', '2016-08-13 03:06:53', '', 42, 'http://localhost/wordpress/?p=43', 0, 'revision', '', 0),
(44, 1, '2016-08-13 11:07:11', '2016-08-13 03:07:11', '这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章\r\n\r\n这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章\r\n\r\n这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章', '这是广告栏2的测试文章这是广告栏2的测试文章这是广告栏2的测试文章', '', 'publish', 'open', 'open', '', '%e8%bf%99%e6%98%af%e5%b9%bf%e5%91%8a%e6%a0%8f1%e7%9a%84%e6%b5%8b%e8%af%95%e6%96%87%e7%ab%a0%e8%bf%99%e6%98%af%e5%b9%bf%e5%91%8a%e6%a0%8f1%e7%9a%84%e6%b5%8b%e8%af%95%e6%96%87%e7%ab%a0%e8%bf%99%e6%98%af', '', '', '2016-08-13 11:07:36', '2016-08-13 03:07:36', '', 0, 'http://localhost/wordpress/?p=44', 0, 'post', '', 0),
(45, 1, '2016-08-13 11:07:11', '2016-08-13 03:07:11', '这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章\r\n\r\n这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章\r\n\r\n这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章', '这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2016-08-13 11:07:11', '2016-08-13 03:07:11', '', 44, 'http://localhost/wordpress/?p=45', 0, 'revision', '', 0),
(47, 1, '2016-08-13 11:07:36', '2016-08-13 03:07:36', '这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章\r\n\r\n这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章\r\n\r\n这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章这是广告栏1的测试文章', '这是广告栏2的测试文章这是广告栏2的测试文章这是广告栏2的测试文章', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2016-08-13 11:07:36', '2016-08-13 03:07:36', '', 44, 'http://localhost/wordpress/?p=47', 0, 'revision', '', 0),
(48, 1, '2016-08-13 11:08:02', '2016-08-13 03:08:02', '这是博客的测试文章', '这是博客的测试文章', '', 'publish', 'open', 'open', '', '%e8%bf%99%e6%98%af%e5%8d%9a%e5%ae%a2%e7%9a%84%e6%b5%8b%e8%af%95%e6%96%87%e7%ab%a0', '', '', '2016-08-13 11:08:02', '2016-08-13 03:08:02', '', 0, 'http://localhost/wordpress/?p=48', 0, 'post', '', 0),
(49, 1, '2016-08-13 11:08:02', '2016-08-13 03:08:02', '这是博客的测试文章', '这是博客的测试文章', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2016-08-13 11:08:02', '2016-08-13 03:08:02', '', 48, 'http://localhost/wordpress/?p=49', 0, 'revision', '', 0),
(50, 1, '2016-08-13 11:08:14', '2016-08-13 03:08:14', '', '这是博客的测试文章', '', 'publish', 'open', 'open', '', '%e8%bf%99%e6%98%af%e5%8d%9a%e5%ae%a2%e7%9a%84%e6%b5%8b%e8%af%95%e6%96%87%e7%ab%a0-2', '', '', '2016-08-13 11:08:14', '2016-08-13 03:08:14', '', 0, 'http://localhost/wordpress/?p=50', 0, 'post', '', 0),
(51, 1, '2016-08-13 11:08:14', '2016-08-13 03:08:14', '', '这是博客的测试文章', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2016-08-13 11:08:14', '2016-08-13 03:08:14', '', 50, 'http://localhost/wordpress/?p=51', 0, 'revision', '', 0),
(52, 1, '2016-08-13 11:08:31', '2016-08-13 03:08:31', '', '这是博客的测试文章', '', 'publish', 'open', 'open', '', '%e8%bf%99%e6%98%af%e5%8d%9a%e5%ae%a2%e7%9a%84%e6%b5%8b%e8%af%95%e6%96%87%e7%ab%a0-3', '', '', '2016-08-13 11:08:31', '2016-08-13 03:08:31', '', 0, 'http://localhost/wordpress/?p=52', 0, 'post', '', 0),
(53, 1, '2016-08-13 11:08:31', '2016-08-13 03:08:31', '', '这是博客的测试文章', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2016-08-13 11:08:31', '2016-08-13 03:08:31', '', 52, 'http://localhost/wordpress/?p=53', 0, 'revision', '', 0),
(54, 1, '2016-08-13 11:08:39', '2016-08-13 03:08:39', '', '这是博客的测试文章', '', 'publish', 'open', 'open', '', '%e8%bf%99%e6%98%af%e5%8d%9a%e5%ae%a2%e7%9a%84%e6%b5%8b%e8%af%95%e6%96%87%e7%ab%a0-4', '', '', '2016-08-13 11:08:39', '2016-08-13 03:08:39', '', 0, 'http://localhost/wordpress/?p=54', 0, 'post', '', 0),
(55, 1, '2016-08-13 11:08:39', '2016-08-13 03:08:39', '', '这是博客的测试文章', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2016-08-13 11:08:39', '2016-08-13 03:08:39', '', 54, 'http://localhost/wordpress/?p=55', 0, 'revision', '', 0),
(56, 1, '2016-08-13 11:08:46', '2016-08-13 03:08:46', '', '这是博客的测试文章', '', 'publish', 'open', 'open', '', '%e8%bf%99%e6%98%af%e5%8d%9a%e5%ae%a2%e7%9a%84%e6%b5%8b%e8%af%95%e6%96%87%e7%ab%a0-5', '', '', '2016-08-13 11:08:46', '2016-08-13 03:08:46', '', 0, 'http://localhost/wordpress/?p=56', 0, 'post', '', 0),
(57, 1, '2016-08-13 11:08:46', '2016-08-13 03:08:46', '', '这是博客的测试文章', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2016-08-13 11:08:46', '2016-08-13 03:08:46', '', 56, 'http://localhost/wordpress/?p=57', 0, 'revision', '', 0),
(60, 1, '2016-08-13 14:34:27', '2016-08-13 06:34:27', '', '登录页面', '', 'publish', 'closed', 'closed', '', '%e7%99%bb%e5%bd%95%e9%a1%b5%e9%9d%a2', '', '', '2016-08-13 14:34:27', '2016-08-13 06:34:27', '', 0, 'http://localhost/wordpress/?page_id=60', 0, 'page', '', 0),
(61, 1, '2016-08-13 14:34:27', '2016-08-13 06:34:27', '', '登录页面', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2016-08-13 14:34:27', '2016-08-13 06:34:27', '', 60, 'http://localhost/wordpress/?p=61', 0, 'revision', '', 0),
(62, 1, '2016-08-15 09:40:38', '2016-08-15 01:40:38', '', '注册页面', '', 'publish', 'closed', 'closed', '', '%e6%b3%a8%e5%86%8c%e9%a1%b5%e9%9d%a2', '', '', '2016-08-15 09:40:38', '2016-08-15 01:40:38', '', 0, 'http://localhost/wordpress/?page_id=62', 0, 'page', '', 0),
(63, 1, '2016-08-15 09:40:38', '2016-08-15 01:40:38', '', '注册页面', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2016-08-15 09:40:38', '2016-08-15 01:40:38', '', 62, 'http://localhost/wordpress/?p=63', 0, 'revision', '', 0),
(64, 1, '2016-08-15 14:29:19', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-08-15 14:29:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=64', 0, 'post', '', 0),
(65, 1, '2016-08-15 16:06:00', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-08-15 16:06:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=65', 0, 'post', '', 0),
(66, 1, '2016-08-15 16:13:01', '2016-08-15 08:13:01', '', '这是博客的测试文章', '', 'inherit', 'closed', 'closed', '', '56-autosave-v1', '', '', '2016-08-15 16:13:01', '2016-08-15 08:13:01', '', 56, 'http://localhost/wordpress/?p=66', 0, 'revision', '', 0),
(67, 1, '2016-08-15 17:03:14', '2016-08-15 09:03:14', '', '这是活动沙龙的文章', '', 'publish', 'open', 'open', '', '%e8%bf%99%e6%98%af%e6%b4%bb%e5%8a%a8%e6%b2%99%e9%be%99%e7%9a%84%e6%96%87%e7%ab%a0', '', '', '2016-08-15 17:03:14', '2016-08-15 09:03:14', '', 0, 'http://localhost/wordpress/?p=67', 0, 'post', '', 0),
(68, 1, '2016-08-15 17:03:14', '2016-08-15 09:03:14', '', '这是活动沙龙的文章', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2016-08-15 17:03:14', '2016-08-15 09:03:14', '', 67, 'http://localhost/wordpress/?p=68', 0, 'revision', '', 0),
(69, 1, '2016-08-15 17:03:29', '2016-08-15 09:03:29', '', '这是更新日志的文章', '', 'publish', 'open', 'open', '', '%e8%bf%99%e6%98%af%e6%9b%b4%e6%96%b0%e6%97%a5%e5%bf%97%e7%9a%84%e6%96%87%e7%ab%a0', '', '', '2016-08-15 17:03:29', '2016-08-15 09:03:29', '', 0, 'http://localhost/wordpress/?p=69', 0, 'post', '', 0),
(70, 1, '2016-08-15 17:03:29', '2016-08-15 09:03:29', '', '这是更新日志的文章', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2016-08-15 17:03:29', '2016-08-15 09:03:29', '', 69, 'http://localhost/wordpress/?p=70', 0, 'revision', '', 0),
(71, 1, '2016-08-15 17:03:49', '2016-08-15 09:03:49', '', '这是用户故事的文章', '', 'publish', 'open', 'open', '', '%e8%bf%99%e6%98%af%e7%94%a8%e6%88%b7%e6%95%85%e4%ba%8b%e7%9a%84%e6%96%87%e7%ab%a0', '', '', '2016-08-15 17:03:49', '2016-08-15 09:03:49', '', 0, 'http://localhost/wordpress/?p=71', 0, 'post', '', 0),
(72, 1, '2016-08-15 17:03:49', '2016-08-15 09:03:49', '', '这是用户故事的文章', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2016-08-15 17:03:49', '2016-08-15 09:03:49', '', 71, 'http://localhost/wordpress/?p=72', 0, 'revision', '', 0),
(73, 1, '2016-08-15 17:04:04', '2016-08-15 09:04:04', '', '这是团队故事的文章', '', 'publish', 'open', 'open', '', '%e8%bf%99%e6%98%af%e5%9b%a2%e9%98%9f%e6%95%85%e4%ba%8b%e7%9a%84%e6%96%87%e7%ab%a0', '', '', '2016-08-15 17:04:04', '2016-08-15 09:04:04', '', 0, 'http://localhost/wordpress/?p=73', 0, 'post', '', 0),
(74, 1, '2016-08-15 17:04:04', '2016-08-15 09:04:04', '', '这是团队故事的文章', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2016-08-15 17:04:04', '2016-08-15 09:04:04', '', 73, 'http://localhost/wordpress/?p=74', 0, 'revision', '', 0),
(75, 1, '2016-08-17 10:32:29', '2016-08-17 02:32:29', '', '这是最新案例的文章', '', 'publish', 'open', 'open', '', '%e8%bf%99%e6%98%af%e6%9c%80%e6%96%b0%e6%a1%88%e4%be%8b%e7%9a%84%e6%96%87%e7%ab%a0', '', '', '2016-08-17 11:33:25', '2016-08-17 03:33:25', '', 0, 'http://localhost/wordpress/?p=75', 0, 'post', '', 0),
(76, 1, '2016-08-17 10:32:29', '2016-08-17 02:32:29', '', '这是最新案例的文章', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2016-08-17 10:32:29', '2016-08-17 02:32:29', '', 75, 'http://localhost/wordpress/?p=76', 0, 'revision', '', 0),
(77, 1, '2016-08-17 10:32:54', '2016-08-17 02:32:54', '', '这是最新案例的文章2', '', 'publish', 'open', 'open', '', '%e8%bf%99%e6%98%af%e6%9c%80%e6%96%b0%e6%a1%88%e4%be%8b%e7%9a%84%e6%96%87%e7%ab%a02', '', '', '2016-08-17 11:33:15', '2016-08-17 03:33:15', '', 0, 'http://localhost/wordpress/?p=77', 0, 'post', '', 0),
(78, 1, '2016-08-17 10:32:54', '2016-08-17 02:32:54', '', '这是最新案例的文章2', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2016-08-17 10:32:54', '2016-08-17 02:32:54', '', 77, 'http://localhost/wordpress/?p=78', 0, 'revision', '', 0),
(79, 1, '2016-08-17 10:33:11', '2016-08-17 02:33:11', '', '这是最新案例的文章3', '', 'publish', 'open', 'open', '', '%e8%bf%99%e6%98%af%e6%9c%80%e6%96%b0%e6%a1%88%e4%be%8b%e7%9a%84%e6%96%87%e7%ab%a03', '', '', '2016-08-17 11:33:05', '2016-08-17 03:33:05', '', 0, 'http://localhost/wordpress/?p=79', 0, 'post', '', 0),
(80, 1, '2016-08-17 10:33:11', '2016-08-17 02:33:11', '', '这是最新案例的文章3', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2016-08-17 10:33:11', '2016-08-17 02:33:11', '', 79, 'http://localhost/wordpress/?p=80', 0, 'revision', '', 0),
(81, 1, '2016-08-17 10:33:32', '2016-08-17 02:33:32', '', '这是最新案例的文章4', '', 'publish', 'open', 'open', '', '%e8%bf%99%e6%98%af%e6%9c%80%e6%96%b0%e6%a1%88%e4%be%8b%e7%9a%84%e6%96%87%e7%ab%a04', '', '', '2016-08-17 11:32:38', '2016-08-17 03:32:38', '', 0, 'http://localhost/wordpress/?p=81', 0, 'post', '', 0),
(82, 1, '2016-08-17 10:33:32', '2016-08-17 02:33:32', '', '这是最新案例的文章4', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2016-08-17 10:33:32', '2016-08-17 02:33:32', '', 81, 'http://localhost/wordpress/?p=82', 0, 'revision', '', 0),
(83, 1, '2016-08-17 10:33:52', '2016-08-17 02:33:52', '', '这是最新案例的文章5', '', 'publish', 'open', 'open', '', '%e8%bf%99%e6%98%af%e6%9c%80%e6%96%b0%e6%a1%88%e4%be%8b%e7%9a%84%e6%96%87%e7%ab%a05', '', '', '2016-08-17 11:32:28', '2016-08-17 03:32:28', '', 0, 'http://localhost/wordpress/?p=83', 0, 'post', '', 0),
(84, 1, '2016-08-17 10:33:52', '2016-08-17 02:33:52', '', '这是最新案例的文章5', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2016-08-17 10:33:52', '2016-08-17 02:33:52', '', 83, 'http://localhost/wordpress/?p=84', 0, 'revision', '', 0),
(85, 1, '2016-08-17 11:32:10', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-08-17 11:32:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=85', 0, 'post', '', 0),
(86, 1, '2016-08-17 14:02:48', '2016-08-17 06:02:48', '', '这是案例的测试文章哦！', '', 'publish', 'open', 'open', '', '%e8%bf%99%e6%98%af%e6%a1%88%e4%be%8b%e7%9a%84%e6%b5%8b%e8%af%95%e6%96%87%e7%ab%a0%e5%93%a6%ef%bc%81', '', '', '2016-08-17 14:02:48', '2016-08-17 06:02:48', '', 0, 'http://localhost/wordpress/?p=86', 0, 'post', '', 0),
(87, 1, '2016-08-17 14:02:48', '2016-08-17 06:02:48', '', '这是案例的测试文章哦！', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2016-08-17 14:02:48', '2016-08-17 06:02:48', '', 86, 'http://localhost/wordpress/?p=87', 0, 'revision', '', 0),
(88, 1, '2016-08-17 14:03:02', '2016-08-17 06:03:02', '', '这是案例的测试文章哦！', '', 'publish', 'open', 'open', '', '%e8%bf%99%e6%98%af%e6%a1%88%e4%be%8b%e7%9a%84%e6%b5%8b%e8%af%95%e6%96%87%e7%ab%a0%e5%93%a6%ef%bc%81-2', '', '', '2016-08-17 14:03:02', '2016-08-17 06:03:02', '', 0, 'http://localhost/wordpress/?p=88', 0, 'post', '', 0),
(89, 1, '2016-08-17 14:03:02', '2016-08-17 06:03:02', '', '这是案例的测试文章哦！', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2016-08-17 14:03:02', '2016-08-17 06:03:02', '', 88, 'http://localhost/wordpress/?p=89', 0, 'revision', '', 0),
(90, 1, '2016-08-17 14:03:17', '2016-08-17 06:03:17', '', '这是案例的测试文章哦！', '', 'publish', 'open', 'open', '', '%e8%bf%99%e6%98%af%e6%a1%88%e4%be%8b%e7%9a%84%e6%b5%8b%e8%af%95%e6%96%87%e7%ab%a0%e5%93%a6%ef%bc%81-3', '', '', '2016-08-17 14:03:17', '2016-08-17 06:03:17', '', 0, 'http://localhost/wordpress/?p=90', 0, 'post', '', 0),
(91, 1, '2016-08-17 14:03:17', '2016-08-17 06:03:17', '', '这是案例的测试文章哦！', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2016-08-17 14:03:17', '2016-08-17 06:03:17', '', 90, 'http://localhost/wordpress/?p=91', 0, 'revision', '', 0),
(92, 1, '2016-08-17 14:03:37', '2016-08-17 06:03:37', '', '这是案例的测试文章哦！', '', 'publish', 'open', 'open', '', '%e8%bf%99%e6%98%af%e6%a1%88%e4%be%8b%e7%9a%84%e6%b5%8b%e8%af%95%e6%96%87%e7%ab%a0%e5%93%a6%ef%bc%81-4', '', '', '2016-08-17 14:03:37', '2016-08-17 06:03:37', '', 0, 'http://localhost/wordpress/?p=92', 0, 'post', '', 0),
(93, 1, '2016-08-17 14:03:37', '2016-08-17 06:03:37', '', '这是案例的测试文章哦！', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2016-08-17 14:03:37', '2016-08-17 06:03:37', '', 92, 'http://localhost/wordpress/?p=93', 0, 'revision', '', 0),
(94, 1, '2016-08-17 14:03:54', '2016-08-17 06:03:54', '', '这是案例的测试文章哦！', '', 'publish', 'open', 'open', '', '%e8%bf%99%e6%98%af%e6%a1%88%e4%be%8b%e7%9a%84%e6%b5%8b%e8%af%95%e6%96%87%e7%ab%a0%e5%93%a6%ef%bc%81-5', '', '', '2016-08-17 14:03:54', '2016-08-17 06:03:54', '', 0, 'http://localhost/wordpress/?p=94', 0, 'post', '', 0),
(95, 1, '2016-08-17 14:03:54', '2016-08-17 06:03:54', '', '这是案例的测试文章哦！', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2016-08-17 14:03:54', '2016-08-17 06:03:54', '', 94, 'http://localhost/wordpress/?p=95', 0, 'revision', '', 0),
(96, 1, '2016-08-17 14:04:07', '2016-08-17 06:04:07', 's这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！\r\n\r\n这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！\r\n\r\n这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！', '测试这是案例的测试文章哦！', '', 'publish', 'open', 'open', '', '%e8%bf%99%e6%98%af%e6%a1%88%e4%be%8b%e7%9a%84%e6%b5%8b%e8%af%95%e6%96%87%e7%ab%a0%e5%93%a6%ef%bc%81-6', '', '', '2016-08-17 16:02:39', '2016-08-17 08:02:39', '', 0, 'http://localhost/wordpress/?p=96', 0, 'post', '', 0),
(97, 1, '2016-08-17 14:04:07', '2016-08-17 06:04:07', '', '这是案例的测试文章哦！', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2016-08-17 14:04:07', '2016-08-17 06:04:07', '', 96, 'http://localhost/wordpress/?p=97', 0, 'revision', '', 0),
(98, 1, '2016-08-17 16:01:43', '2016-08-17 08:01:43', 's这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！\r\n\r\n这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！\r\n\r\n这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！', '这是案例的测试文章哦！', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2016-08-17 16:01:43', '2016-08-17 08:01:43', '', 96, 'http://localhost/wordpress/?p=98', 0, 'revision', '', 0),
(99, 1, '2016-08-17 16:02:39', '2016-08-17 08:02:39', 's这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！\r\n\r\n这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！\r\n\r\n这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！这是案例的测试文章哦！', '测试这是案例的测试文章哦！', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2016-08-17 16:02:39', '2016-08-17 08:02:39', '', 96, 'http://localhost/wordpress/?p=99', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, '未分类', 'uncategorized', 0),
(3, 'manu', 'manu', 0),
(4, '功能', 'function', 0),
(5, '价格', 'price', 0),
(6, '手机版', 'phone', 0),
(7, '博客', 'blog', 0),
(8, '更新日志', 'update-log', 0),
(9, '活动沙龙', 'active-salon', 0),
(10, '用户故事', 'user-story', 0),
(11, '团队故事', 'team-story', 0),
(12, '广告栏1', '%e5%b9%bf%e5%91%8a%e6%a0%8f1', 0),
(13, '广告栏2', '%e5%b9%bf%e5%91%8a%e6%a0%8f2', 0),
(14, '博客全部文章展示', 'blog-show-all', 0),
(16, '团队成员', 'company-team-member', 0),
(17, '加入我们', 'company-join-us', 0),
(18, '媒体报道', 'company-media-coverage', 0),
(19, '合作伙伴', 'company-partner', 0),
(20, '案例', 'case', 0),
(21, '教学案例', 'case-teach', 0),
(22, '专题案例', 'case-special', 0),
(23, '最新案例', 'new-case', 0);

-- --------------------------------------------------------

--
-- 表的结构 `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 3, 0),
(7, 3, 0),
(8, 1, 0),
(13, 1, 0),
(20, 4, 0),
(20, 5, 0),
(20, 6, 0),
(20, 7, 0),
(20, 8, 0),
(20, 9, 0),
(20, 10, 0),
(20, 11, 0),
(20, 12, 0),
(20, 13, 0),
(22, 4, 0),
(22, 5, 0),
(22, 6, 0),
(22, 7, 0),
(22, 8, 0),
(22, 9, 0),
(22, 10, 0),
(22, 11, 0),
(22, 12, 0),
(22, 13, 0),
(24, 4, 0),
(24, 5, 0),
(24, 6, 0),
(24, 7, 0),
(24, 8, 0),
(24, 9, 0),
(24, 10, 0),
(24, 11, 0),
(24, 12, 0),
(24, 13, 0),
(26, 1, 0),
(28, 4, 0),
(28, 5, 0),
(28, 6, 0),
(28, 7, 0),
(28, 8, 0),
(28, 9, 0),
(28, 10, 0),
(28, 11, 0),
(28, 12, 0),
(28, 13, 0),
(30, 4, 0),
(30, 5, 0),
(30, 6, 0),
(30, 7, 0),
(30, 8, 0),
(30, 9, 0),
(30, 10, 0),
(30, 11, 0),
(30, 12, 0),
(30, 13, 0),
(32, 4, 0),
(32, 5, 0),
(32, 6, 0),
(32, 7, 0),
(32, 8, 0),
(32, 9, 0),
(32, 10, 0),
(32, 11, 0),
(32, 12, 0),
(32, 13, 0),
(34, 4, 0),
(34, 5, 0),
(34, 6, 0),
(34, 7, 0),
(34, 8, 0),
(34, 9, 0),
(34, 10, 0),
(34, 11, 0),
(34, 12, 0),
(34, 13, 0),
(36, 4, 0),
(36, 5, 0),
(36, 6, 0),
(36, 7, 0),
(36, 8, 0),
(36, 9, 0),
(36, 10, 0),
(36, 11, 0),
(36, 12, 0),
(36, 13, 0),
(40, 12, 0),
(42, 13, 0),
(44, 13, 0),
(48, 7, 0),
(50, 7, 0),
(52, 7, 0),
(54, 7, 0),
(56, 7, 0),
(67, 9, 0),
(69, 8, 0),
(71, 10, 0),
(73, 11, 0),
(75, 20, 0),
(75, 21, 0),
(75, 22, 0),
(75, 23, 0),
(77, 20, 0),
(77, 21, 0),
(77, 22, 0),
(77, 23, 0),
(79, 20, 0),
(79, 21, 0),
(79, 22, 0),
(79, 23, 0),
(81, 20, 0),
(81, 21, 0),
(81, 22, 0),
(81, 23, 0),
(83, 20, 0),
(83, 21, 0),
(83, 22, 0),
(83, 23, 0),
(86, 20, 0),
(86, 21, 0),
(86, 22, 0),
(86, 23, 0),
(88, 20, 0),
(88, 21, 0),
(88, 22, 0),
(88, 23, 0),
(90, 21, 0),
(90, 22, 0),
(90, 23, 0),
(92, 20, 0),
(92, 21, 0),
(92, 22, 0),
(92, 23, 0),
(94, 20, 0),
(94, 21, 0),
(94, 22, 0),
(94, 23, 0),
(96, 20, 0),
(96, 21, 0),
(96, 22, 0),
(96, 23, 0);

-- --------------------------------------------------------

--
-- 表的结构 `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(3, 3, 'nav_menu', '', 0, 2),
(4, 4, 'category', '', 0, 8),
(5, 5, 'category', '', 0, 8),
(6, 6, 'category', '', 0, 8),
(7, 7, 'category', '', 0, 13),
(8, 8, 'category', '', 14, 9),
(9, 9, 'category', '', 14, 9),
(10, 10, 'category', '', 14, 9),
(11, 11, 'category', '', 14, 9),
(12, 12, 'category', '', 7, 9),
(13, 13, 'category', '', 7, 10),
(14, 14, 'category', '', 7, 0),
(16, 16, 'category', '', 0, 0),
(17, 17, 'category', '', 0, 0),
(18, 18, 'category', '', 0, 0),
(19, 19, 'category', '', 0, 0),
(20, 20, 'category', '', 0, 10),
(21, 21, 'category', '', 20, 11),
(22, 22, 'category', '', 20, 11),
(23, 23, 'category', '', 20, 11);

-- --------------------------------------------------------

--
-- 表的结构 `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'demo'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '64'),
(17, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(21, 1, 'wp_user-settings-time', '1471056772'),
(22, 1, 'closedpostboxes_post', 'a:1:{i:0;s:9:"formatdiv";}'),
(23, 1, 'metaboxhidden_post', 'a:6:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}'),
(27, 1, 'closedpostboxes_page', 'a:0:{}'),
(28, 1, 'metaboxhidden_page', 'a:4:{i:0;s:10:"postcustom";i:1;s:16:"commentstatusdiv";i:2;s:7:"slugdiv";i:3;s:9:"authordiv";}'),
(34, 1, 'nav_menu_recently_edited', '3'),
(35, 1, 'session_tokens', 'a:1:{s:64:"56e2d4079b4db92f8876521d4075cb32fa4f85b243d0757d87f7130ca698aca2";a:4:{s:10:"expiration";i:1472004737;s:2:"ip";s:3:"::1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36";s:5:"login";i:1471831937;}}');

-- --------------------------------------------------------

--
-- 表的结构 `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'demo', '$P$B0IpGJ0uJwBa2cIkYPJHq8UKhWVhdz0', 'demo', 'wawa754870370@qq.com', '', '2016-08-07 14:50:55', '', 0, 'demo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=633;
--
-- 使用表AUTO_INCREMENT `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
--
-- 使用表AUTO_INCREMENT `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- 使用表AUTO_INCREMENT `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- 使用表AUTO_INCREMENT `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- 使用表AUTO_INCREMENT `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- 使用表AUTO_INCREMENT `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
