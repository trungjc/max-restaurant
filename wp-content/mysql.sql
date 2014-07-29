-- MySQL dump 10.13  Distrib 5.5.29, for Linux (i686)
--
-- Host: 127.0.0.1    Database: wp_maxsonbroad
-- ------------------------------------------------------
-- Server version	5.5.29-30.0-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `jc_commentmeta`
--

DROP TABLE IF EXISTS `jc_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jc_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jc_commentmeta`
--

LOCK TABLES `jc_commentmeta` WRITE;
/*!40000 ALTER TABLE `jc_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `jc_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jc_comments`
--

DROP TABLE IF EXISTS `jc_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jc_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jc_comments`
--

LOCK TABLES `jc_comments` WRITE;
/*!40000 ALTER TABLE `jc_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `jc_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jc_links`
--

DROP TABLE IF EXISTS `jc_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jc_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jc_links`
--

LOCK TABLES `jc_links` WRITE;
/*!40000 ALTER TABLE `jc_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `jc_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jc_options`
--

DROP TABLE IF EXISTS `jc_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jc_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=800 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jc_options`
--

LOCK TABLES `jc_options` WRITE;
/*!40000 ALTER TABLE `jc_options` DISABLE KEYS */;
INSERT INTO `jc_options` VALUES (1,'siteurl','http://maxsonbroad.wpengine.com','yes');
INSERT INTO `jc_options` VALUES (2,'blogname','max&#039;s on broad richmond','yes');
INSERT INTO `jc_options` VALUES (3,'blogdescription','Just another WordPress site','yes');
INSERT INTO `jc_options` VALUES (4,'users_can_register','0','yes');
INSERT INTO `jc_options` VALUES (5,'admin_email','jason@picobarn.com','yes');
INSERT INTO `jc_options` VALUES (6,'start_of_week','1','yes');
INSERT INTO `jc_options` VALUES (7,'use_balanceTags','0','yes');
INSERT INTO `jc_options` VALUES (8,'use_smilies','1','yes');
INSERT INTO `jc_options` VALUES (9,'require_name_email','1','yes');
INSERT INTO `jc_options` VALUES (10,'comments_notify','1','yes');
INSERT INTO `jc_options` VALUES (11,'posts_per_rss','10','yes');
INSERT INTO `jc_options` VALUES (12,'rss_use_excerpt','0','yes');
INSERT INTO `jc_options` VALUES (13,'mailserver_url','mail.example.com','yes');
INSERT INTO `jc_options` VALUES (14,'mailserver_login','login@example.com','yes');
INSERT INTO `jc_options` VALUES (15,'mailserver_pass','password','yes');
INSERT INTO `jc_options` VALUES (16,'mailserver_port','110','yes');
INSERT INTO `jc_options` VALUES (17,'default_category','1','yes');
INSERT INTO `jc_options` VALUES (18,'default_comment_status','open','yes');
INSERT INTO `jc_options` VALUES (19,'default_ping_status','open','yes');
INSERT INTO `jc_options` VALUES (20,'default_pingback_flag','0','yes');
INSERT INTO `jc_options` VALUES (21,'posts_per_page','10','yes');
INSERT INTO `jc_options` VALUES (22,'date_format','F j, Y','yes');
INSERT INTO `jc_options` VALUES (23,'time_format','g:i a','yes');
INSERT INTO `jc_options` VALUES (24,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `jc_options` VALUES (28,'comment_moderation','0','yes');
INSERT INTO `jc_options` VALUES (29,'moderation_notify','1','yes');
INSERT INTO `jc_options` VALUES (30,'permalink_structure','/%postname%/','yes');
INSERT INTO `jc_options` VALUES (31,'gzipcompression','0','yes');
INSERT INTO `jc_options` VALUES (32,'hack_file','0','yes');
INSERT INTO `jc_options` VALUES (33,'blog_charset','UTF-8','yes');
INSERT INTO `jc_options` VALUES (34,'moderation_keys','','no');
INSERT INTO `jc_options` VALUES (35,'active_plugins','a:0:{}','yes');
INSERT INTO `jc_options` VALUES (36,'home','http://maxsonbroad.wpengine.com','yes');
INSERT INTO `jc_options` VALUES (37,'category_base','','yes');
INSERT INTO `jc_options` VALUES (38,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `jc_options` VALUES (39,'advanced_edit','0','yes');
INSERT INTO `jc_options` VALUES (40,'comment_max_links','2','yes');
INSERT INTO `jc_options` VALUES (41,'gmt_offset','0','yes');
INSERT INTO `jc_options` VALUES (42,'default_email_category','1','yes');
INSERT INTO `jc_options` VALUES (43,'recently_edited','a:2:{i:0;s:71:\"/nas/wp/www/cluster-1551/maxsonbroad/wp-content/themes/eatery/style.css\";i:1;s:0:\"\";}','no');
INSERT INTO `jc_options` VALUES (44,'template','eatery','yes');
INSERT INTO `jc_options` VALUES (45,'stylesheet','eatery','yes');
INSERT INTO `jc_options` VALUES (46,'comment_whitelist','1','yes');
INSERT INTO `jc_options` VALUES (47,'blacklist_keys','','no');
INSERT INTO `jc_options` VALUES (48,'comment_registration','0','yes');
INSERT INTO `jc_options` VALUES (49,'html_type','text/html','yes');
INSERT INTO `jc_options` VALUES (50,'use_trackback','0','yes');
INSERT INTO `jc_options` VALUES (51,'default_role','subscriber','yes');
INSERT INTO `jc_options` VALUES (52,'db_version','27916','yes');
INSERT INTO `jc_options` VALUES (53,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `jc_options` VALUES (54,'upload_path','','yes');
INSERT INTO `jc_options` VALUES (55,'blog_public','0','yes');
INSERT INTO `jc_options` VALUES (56,'default_link_category','2','yes');
INSERT INTO `jc_options` VALUES (57,'show_on_front','page','yes');
INSERT INTO `jc_options` VALUES (58,'tag_base','','yes');
INSERT INTO `jc_options` VALUES (59,'show_avatars','1','yes');
INSERT INTO `jc_options` VALUES (60,'avatar_rating','G','yes');
INSERT INTO `jc_options` VALUES (61,'upload_url_path','','yes');
INSERT INTO `jc_options` VALUES (62,'thumbnail_size_w','150','yes');
INSERT INTO `jc_options` VALUES (63,'thumbnail_size_h','150','yes');
INSERT INTO `jc_options` VALUES (64,'thumbnail_crop','1','yes');
INSERT INTO `jc_options` VALUES (65,'medium_size_w','300','yes');
INSERT INTO `jc_options` VALUES (66,'medium_size_h','300','yes');
INSERT INTO `jc_options` VALUES (67,'avatar_default','mystery','yes');
INSERT INTO `jc_options` VALUES (68,'large_size_w','1024','yes');
INSERT INTO `jc_options` VALUES (69,'large_size_h','1024','yes');
INSERT INTO `jc_options` VALUES (70,'image_default_link_type','file','yes');
INSERT INTO `jc_options` VALUES (71,'image_default_size','','yes');
INSERT INTO `jc_options` VALUES (72,'image_default_align','','yes');
INSERT INTO `jc_options` VALUES (73,'close_comments_for_old_posts','0','yes');
INSERT INTO `jc_options` VALUES (74,'close_comments_days_old','14','yes');
INSERT INTO `jc_options` VALUES (75,'thread_comments','1','yes');
INSERT INTO `jc_options` VALUES (76,'thread_comments_depth','5','yes');
INSERT INTO `jc_options` VALUES (77,'page_comments','0','yes');
INSERT INTO `jc_options` VALUES (78,'comments_per_page','50','yes');
INSERT INTO `jc_options` VALUES (79,'default_comments_page','newest','yes');
INSERT INTO `jc_options` VALUES (80,'comment_order','asc','yes');
INSERT INTO `jc_options` VALUES (81,'sticky_posts','a:0:{}','yes');
INSERT INTO `jc_options` VALUES (82,'widget_categories','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `jc_options` VALUES (83,'widget_text','a:5:{i:2;a:3:{s:5:\"title\";s:18:\"MAKE A RESERVATION\";s:4:\"text\";s:146:\"<center class=\"reservation\">(804) 225 - 0400\r\n[button url=\"http://maxsonbroad.wpengine.com/?page_id=2/\" color=\"#c59e5b \"]RESERVE[/button]</center>\";s:6:\"filter\";b:1;}i:3;a:3:{s:5:\"title\";s:5:\"HOURS\";s:4:\"text\";s:109:\"<center class=\"hours\">Monday to Thursday: 11am-10pm\r\nFriday & Saturday: 11am-11pm\r\nSunday: 10am-10pm</center>\";s:6:\"filter\";b:1;}i:4;a:3:{s:5:\"title\";s:10:\"CONTACT US\";s:4:\"text\";s:91:\"<center>305 Brook Road\r\nRichmond, VA 23220\r\ninfo@maxsonbroad.com\r\n(804) 225-0400\r\n</center>\";s:6:\"filter\";b:1;}i:5;a:3:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:186:\"<center class=\"food-items\">\r\nFresh Seafood <br />\r\nSteak Frites <br />\r\nHors d’Oeuvres <br />\r\nFruits de Mer <br />\r\nCraft Cocktails <br />\r\nFrench Wine <br />\r\nBelgian Beer\r\n</center>\";s:6:\"filter\";b:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `jc_options` VALUES (84,'widget_rss','a:0:{}','yes');
INSERT INTO `jc_options` VALUES (85,'uninstall_plugins','a:0:{}','no');
INSERT INTO `jc_options` VALUES (86,'timezone_string','','yes');
INSERT INTO `jc_options` VALUES (87,'page_for_posts','0','yes');
INSERT INTO `jc_options` VALUES (88,'page_on_front','2','yes');
INSERT INTO `jc_options` VALUES (89,'default_post_format','0','yes');
INSERT INTO `jc_options` VALUES (90,'link_manager_enabled','0','yes');
INSERT INTO `jc_options` VALUES (91,'initial_db_version','26691','yes');
INSERT INTO `jc_options` VALUES (92,'jc_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:9:\"add_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `jc_options` VALUES (93,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `jc_options` VALUES (94,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `jc_options` VALUES (95,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `jc_options` VALUES (96,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `jc_options` VALUES (97,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `jc_options` VALUES (98,'sidebars_widgets','a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:1:{i:0;s:8:\"search-2\";}s:9:\"sidebar-2\";a:4:{i:0;s:6:\"text-3\";i:1;s:6:\"text-2\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";}s:9:\"sidebar-3\";a:3:{i:0;s:15:\"text_centered-3\";i:1;s:15:\"text_centered-4\";i:2;s:15:\"text_centered-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `jc_options` VALUES (99,'cron','a:5:{i:1406575800;a:1:{s:20:\"wp_maybe_auto_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1406578914;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1406622148;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1406627484;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `jc_options` VALUES (131,'_transient_twentyfourteen_category_count','1','yes');
INSERT INTO `jc_options` VALUES (133,'theme_mods_twentyfourteen','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1393057422;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}','yes');
INSERT INTO `jc_options` VALUES (134,'current_theme','Eatery','yes');
INSERT INTO `jc_options` VALUES (135,'theme_mods_eatery','a:2:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"side-menu\";i:6;}}','yes');
INSERT INTO `jc_options` VALUES (136,'theme_switched','','yes');
INSERT INTO `jc_options` VALUES (137,'sa_general','a:8:{s:16:\"google_analytics\";s:0:\"\";s:10:\"custom_css\";s:465:\"#sidebar {\r\n    background-repeat: repeat-y;color:#fff;\r\n\r\n}\r\n#sidebar .soc a:hover {\r\nbackground-color:transparent!important;\r\n}\r\n#footer {\r\n	background: #af7c33;}\r\n#sidebar-menu li a:hover {\r\n    color: #f9b052;\r\n}\r\n#sidebar-menu li ul {\r\n    background-color: #553506;\r\n}\r\nbody {\r\n    font: 18px/20px \'Myriad Pro\',Helvetica,Arial,sans-serif;\r\ncolor:#030002;\r\n}\r\nh1, h2, h3, h4, h5, #sidebar-menu li a {\r\n   font-family:\'Myriad Pro\',Helvetica,Arial,sans-serif;\r\n}\";s:12:\"custom_email\";s:0:\"\";s:16:\"footer_copyright\";s:0:\"\";s:15:\"currency_symbol\";s:1:\"$\";s:27:\"currency_symbol_align_right\";i:0;s:18:\"reso_24_hour_clock\";i:0;s:12:\"use_timthumb\";i:0;}','yes');
INSERT INTO `jc_options` VALUES (138,'sa_layout','a:34:{s:14:\"header_default\";s:22:\"header_placeholder.png\";s:17:\"header_default_sm\";s:25:\"header_placeholder_sm.png\";s:19:\"upload_image0-width\";i:385;s:20:\"upload_image0-height\";i:225;s:20:\"upload_image11-width\";N;s:21:\"upload_image11-height\";N;s:25:\"sa_layout_header_BG_image\";s:72:\"http://maxsonbroad.wpengine.com/wp-content/uploads/2014/02/header-bg.jpg\";s:28:\"sa_layout_header_BG_image_sm\";s:75:\"http://maxsonbroad.wpengine.com/wp-content/uploads/2014/02/header-bg-sm.jpg\";s:11:\"layout_view\";s:5:\"fluid\";s:14:\"skin_selection\";s:12:\"coffee-house\";s:17:\"use_custom_colors\";i:1;s:17:\"layout_skin_color\";s:12:\"coffee-house\";s:17:\"colorPalette_dark\";s:7:\"#694108\";s:17:\"colorPalette_mid1\";s:7:\"#ffffff\";s:17:\"colorPalette_mid2\";s:7:\"#3d1e13\";s:21:\"colorPalette_offwhite\";s:7:\"#efead9\";s:24:\"colorPalette_brightwhite\";s:7:\"#ffffff\";s:18:\"colorPalette_light\";s:7:\"#180a07\";s:13:\"upload_image0\";s:67:\"http://maxsonbroad.wpengine.com/wp-content/uploads/2014/02/logo.png\";s:17:\"upload_image_id_0\";s:0:\"\";s:19:\"use_header_BG_image\";s:1:\"1\";s:13:\"upload_image1\";s:83:\"http://maxsonbroad.wpengine.com/wp-content/uploads/2014/02/Max_Home_Working_011.jpg\";s:13:\"upload_image2\";s:83:\"http://maxsonbroad.wpengine.com/wp-content/uploads/2014/02/Max_Home_Working_021.jpg\";s:13:\"upload_image3\";s:83:\"http://maxsonbroad.wpengine.com/wp-content/uploads/2014/02/Max_Home_Working_031.jpg\";s:13:\"upload_image4\";s:83:\"http://maxsonbroad.wpengine.com/wp-content/uploads/2014/02/Max_Home_Working_041.jpg\";s:13:\"upload_image5\";s:83:\"http://maxsonbroad.wpengine.com/wp-content/uploads/2014/02/Max_Home_Working_051.jpg\";s:13:\"upload_image6\";s:0:\"\";s:13:\"upload_image7\";s:0:\"\";s:13:\"upload_image8\";s:0:\"\";s:14:\"upload_image10\";s:70:\"http://maxsonbroad.wpengine.com/wp-content/uploads/2014/02/body-bg.jpg\";s:14:\"upload_image11\";s:72:\"http://maxsonbroad.wpengine.com/wp-content/uploads/2014/02/0738-logo.jpg\";s:20:\"upload_image0_resize\";i:0;s:13:\"create_header\";i:0;s:17:\"hide_page_corners\";i:0;}','yes');
INSERT INTO `jc_options` VALUES (139,'sa_social_media','a:19:{s:14:\"soc_icon_color\";s:9:\"soc_5.png\";s:12:\"soc_facebook\";s:36:\"https://www.facebook.com/MaxsonBroad\";s:11:\"soc_twitter\";s:31:\"https://twitter.com/MaxsOnBroad\";s:14:\"soc_googleplus\";s:0:\"\";s:12:\"soc_linkedin\";s:0:\"\";s:10:\"soc_tumblr\";s:0:\"\";s:14:\"soc_googlemaps\";s:138:\"https://www.google.com/maps/place/Max%27s+On+Broad/@37.546357,-77.442329,17z/data=!3m1!4b1!4m2!3m1!1s0x89b111397735ca69:0x6f36799a7d48dead\";s:14:\"soc_foursquare\";s:63:\"https://foursquare.com/v/maxs-on-broad/523901c804930b54f0324e84\";s:11:\"soc_youtube\";s:0:\"\";s:9:\"soc_vimeo\";s:0:\"\";s:8:\"soc_yelp\";s:46:\"http://www.yelp.com/biz/maxs-on-broad-richmond\";s:14:\"soc_urbanspoon\";s:81:\"http://www.urbanspoon.com/r/49/1789224/restaurant/Downtown/Maxs-on-Broad-Richmond\";s:15:\"soc_tripadvisor\";s:0:\"\";s:10:\"soc_meetup\";s:0:\"\";s:7:\"soc_rss\";s:0:\"\";s:13:\"soc_pinterest\";s:0:\"\";s:9:\"soc_email\";s:20:\"info@maxsonbroad.com\";s:9:\"soc_phone\";s:0:\"\";s:20:\"soc_use_custom_color\";i:0;}','yes');
INSERT INTO `jc_options` VALUES (140,'sa_typography','a:19:{s:9:\"h1_sample\";s:0:\"\";s:8:\"p_sample\";s:0:\"\";s:21:\"google_font_family_h1\";s:28:\"Arvo | Georgia, Times, serif\";s:20:\"google_font_family_p\";s:38:\"PT+Sans | Helvetica, Arial, sans-serif\";s:18:\"custom_google_font\";s:0:\"\";s:22:\"custom_google_font_css\";s:0:\"\";s:7:\"h1_size\";s:2:\"28\";s:7:\"h2_size\";s:2:\"28\";s:7:\"h3_size\";s:2:\"28\";s:7:\"h4_size\";s:0:\"\";s:7:\"h5_size\";s:0:\"\";s:7:\"h6_size\";s:0:\"\";s:6:\"p_size\";s:2:\"18\";s:14:\"google_h1_font\";s:4:\"Arvo\";s:9:\"google_h1\";s:4:\"Arvo\";s:20:\"google_h1_fontfamily\";s:19:\"Georgia,Times,serif\";s:13:\"google_p_font\";s:7:\"PT+Sans\";s:8:\"google_p\";s:7:\"PT Sans\";s:19:\"google_p_fontfamily\";s:26:\"Helvetica,Arial,sans-serif\";}','yes');
INSERT INTO `jc_options` VALUES (141,'e_theme_setup_status','1','yes');
INSERT INTO `jc_options` VALUES (149,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `jc_options` VALUES (150,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `jc_options` VALUES (154,'category_children','a:0:{}','yes');
INSERT INTO `jc_options` VALUES (155,'wpe_notices','a:2:{s:4:\"read\";s:0:\"\";s:8:\"messages\";a:0:{}}','yes');
INSERT INTO `jc_options` VALUES (156,'wpe_notices_ttl','1398978302','yes');
INSERT INTO `jc_options` VALUES (212,'limit_login_retries','a:1:{s:13:\"208.93.35.202\";i:1;}','no');
INSERT INTO `jc_options` VALUES (213,'limit_login_retries_valid','a:1:{s:13:\"208.93.35.202\";i:1397031825;}','no');
INSERT INTO `jc_options` VALUES (218,'_transient_random_seed','81083a1a85860ad5176ac7146f6446af','yes');
INSERT INTO `jc_options` VALUES (339,'widget_text_centered','a:4:{i:2;a:3:{s:5:\"title\";s:18:\"MAKE A RESERVATION\";s:4:\"text\";s:115:\"(804) 225 - 0400<br />\r\n[button url=\"http://maxsonbroad.wpengine.com/?page_id=2/\" color=\"#c59e5b \"]RESERVE[/button]\";s:6:\"filter\";b:0;}i:3;a:3:{s:5:\"title\";s:5:\"HOURS\";s:4:\"text\";s:90:\"Monday to Thursday: 11a-10p<br />\r\nFriday & Saturday: 11a-11p<br />\r\nSunday: 10a-10p<br />\";s:6:\"filter\";b:0;}i:4;a:3:{s:5:\"title\";s:10:\"CONTACT US\";s:4:\"text\";s:109:\"<center>305 Brook Road<br />\r\nRichmond, VA 23220<br />\r\ninfo@maxsonbroad.com<br />\r\n(804) 225-0400\r\n</center>\";s:6:\"filter\";b:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `jc_options` VALUES (340,'recently_activated','a:0:{}','yes');
INSERT INTO `jc_options` VALUES (476,'db_upgraded','1','yes');
INSERT INTO `jc_options` VALUES (483,'rewrite_rules','a:117:{s:8:\"event/?$\";s:31:\"index.php?post_type=themo_event\";s:38:\"event/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=themo_event&feed=$matches[1]\";s:33:\"event/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=themo_event&feed=$matches[1]\";s:25:\"event/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=themo_event&paged=$matches[1]\";s:7:\"food/?$\";s:24:\"index.php?post_type=food\";s:37:\"food/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=food&feed=$matches[1]\";s:32:\"food/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=food&feed=$matches[1]\";s:24:\"food/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=food&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:33:\"event/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"event/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"event/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"event/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"event/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\"event/([^/]+)/trackback/?$\";s:38:\"index.php?themo_event=$matches[1]&tb=1\";s:46:\"event/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?themo_event=$matches[1]&feed=$matches[2]\";s:41:\"event/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?themo_event=$matches[1]&feed=$matches[2]\";s:34:\"event/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?themo_event=$matches[1]&paged=$matches[2]\";s:41:\"event/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?themo_event=$matches[1]&cpage=$matches[2]\";s:26:\"event/([^/]+)(/[0-9]+)?/?$\";s:50:\"index.php?themo_event=$matches[1]&page=$matches[2]\";s:22:\"event/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"event/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"event/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"event/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"event/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:52:\"menu-groups/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?food_menu_groups=$matches[1]&feed=$matches[2]\";s:47:\"menu-groups/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?food_menu_groups=$matches[1]&feed=$matches[2]\";s:40:\"menu-groups/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?food_menu_groups=$matches[1]&paged=$matches[2]\";s:22:\"menu-groups/([^/]+)/?$\";s:38:\"index.php?food_menu_groups=$matches[1]\";s:55:\"event_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?themo_event_category=$matches[1]&feed=$matches[2]\";s:50:\"event_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?themo_event_category=$matches[1]&feed=$matches[2]\";s:43:\"event_category/([^/]+)/page/?([0-9]{1,})/?$\";s:60:\"index.php?themo_event_category=$matches[1]&paged=$matches[2]\";s:25:\"event_category/([^/]+)/?$\";s:42:\"index.php?themo_event_category=$matches[1]\";s:32:\"food/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"food/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"food/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"food/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"food/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:25:\"food/([^/]+)/trackback/?$\";s:31:\"index.php?food=$matches[1]&tb=1\";s:45:\"food/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?food=$matches[1]&feed=$matches[2]\";s:40:\"food/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?food=$matches[1]&feed=$matches[2]\";s:33:\"food/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?food=$matches[1]&paged=$matches[2]\";s:40:\"food/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?food=$matches[1]&cpage=$matches[2]\";s:25:\"food/([^/]+)(/[0-9]+)?/?$\";s:43:\"index.php?food=$matches[1]&page=$matches[2]\";s:21:\"food/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"food/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"food/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"food/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"food/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)(/[0-9]+)?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:20:\"([^/]+)(/[0-9]+)?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";}','yes');
INSERT INTO `jc_options` VALUES (633,'food_menu_groups_children','a:3:{i:2;a:7:{i:0;i:7;i:1;i:8;i:2;i:9;i:3;i:10;i:4;i:11;i:5;i:12;i:6;i:13;}i:3;a:6:{i:0;i:14;i:1;i:15;i:2;i:16;i:3;i:17;i:4;i:18;i:5;i:19;}i:4;a:12:{i:0;i:20;i:1;i:21;i:2;i:22;i:3;i:23;i:4;i:24;i:5;i:25;i:6;i:26;i:7;i:27;i:8;i:28;i:9;i:29;i:10;i:30;i:11;i:31;}}','yes');
INSERT INTO `jc_options` VALUES (661,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-3.9.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-3.9.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-3.9.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-3.9.1-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-3.9.1-partial-0.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"3.9.1\";s:7:\"version\";s:5:\"3.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"3.8\";s:15:\"partial_version\";s:3:\"3.9\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-3.9.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-3.9.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-3.9.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-3.9.1-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-3.9.1-partial-0.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-3.9.1-rollback-0.zip\";}s:7:\"current\";s:5:\"3.9.1\";s:7:\"version\";s:5:\"3.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"3.8\";s:15:\"partial_version\";s:3:\"3.9\";s:13:\"support_email\";s:27:\"updatehelp391@wordpress.org\";}}s:12:\"last_checked\";i:1406567733;s:15:\"version_checked\";s:3:\"3.9\";s:12:\"translations\";a:0:{}}','yes');
INSERT INTO `jc_options` VALUES (796,'_site_transient_timeout_theme_roots','1406569532','yes');
INSERT INTO `jc_options` VALUES (797,'_site_transient_theme_roots','a:4:{s:6:\"eatery\";s:7:\"/themes\";s:14:\"twentyfourteen\";s:7:\"/themes\";s:14:\"twentythirteen\";s:7:\"/themes\";s:12:\"twentytwelve\";s:7:\"/themes\";}','yes');
INSERT INTO `jc_options` VALUES (798,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1406567735;s:7:\"checked\";a:4:{s:6:\"eatery\";s:3:\"2.0\";s:14:\"twentyfourteen\";s:3:\"1.0\";s:14:\"twentythirteen\";s:3:\"1.1\";s:12:\"twentytwelve\";s:3:\"1.3\";}s:8:\"response\";a:3:{s:14:\"twentyfourteen\";a:4:{s:5:\"theme\";s:14:\"twentyfourteen\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfourteen\";s:7:\"package\";s:60:\"https://wordpress.org/themes/download/twentyfourteen.1.1.zip\";}s:14:\"twentythirteen\";a:4:{s:5:\"theme\";s:14:\"twentythirteen\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentythirteen\";s:7:\"package\";s:60:\"https://wordpress.org/themes/download/twentythirteen.1.2.zip\";}s:12:\"twentytwelve\";a:4:{s:5:\"theme\";s:12:\"twentytwelve\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:41:\"https://wordpress.org/themes/twentytwelve\";s:7:\"package\";s:58:\"https://wordpress.org/themes/download/twentytwelve.1.4.zip\";}}s:12:\"translations\";a:0:{}}','yes');
INSERT INTO `jc_options` VALUES (799,'_site_transient_update_plugins','O:8:\"stdClass\":3:{s:12:\"last_checked\";i:1406567734;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:2:\"15\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"3.0.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.3.0.1.zip\";}}s:12:\"translations\";a:0:{}}','yes');
/*!40000 ALTER TABLE `jc_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jc_postmeta`
--

DROP TABLE IF EXISTS `jc_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jc_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=1754 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jc_postmeta`
--

LOCK TABLES `jc_postmeta` WRITE;
/*!40000 ALTER TABLE `jc_postmeta` DISABLE KEYS */;
INSERT INTO `jc_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `jc_postmeta` VALUES (4,5,'_wp_attached_file','2014/02/Max_Home_Working_01.jpg');
INSERT INTO `jc_postmeta` VALUES (5,5,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:454;s:4:\"file\";s:31:\"2014/02/Max_Home_Working_01.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Max_Home_Working_01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"Max_Home_Working_01-300x272.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:272;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"food-menu-thumb\";a:4:{s:4:\"file\";s:31:\"Max_Home_Working_01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog_image\";a:4:{s:4:\"file\";s:31:\"Max_Home_Working_01-500x180.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `jc_postmeta` VALUES (6,6,'_wp_attached_file','2014/02/Max_Home_Working_02.jpg');
INSERT INTO `jc_postmeta` VALUES (7,6,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:502;s:6:\"height\";i:454;s:4:\"file\";s:31:\"2014/02/Max_Home_Working_02.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Max_Home_Working_02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"Max_Home_Working_02-300x271.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:271;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"food-menu-thumb\";a:4:{s:4:\"file\";s:31:\"Max_Home_Working_02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog_image\";a:4:{s:4:\"file\";s:31:\"Max_Home_Working_02-502x180.jpg\";s:5:\"width\";i:502;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `jc_postmeta` VALUES (8,7,'_wp_attached_file','2014/02/Max_Home_Working_03.jpg');
INSERT INTO `jc_postmeta` VALUES (9,7,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:498;s:6:\"height\";i:454;s:4:\"file\";s:31:\"2014/02/Max_Home_Working_03.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Max_Home_Working_03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"Max_Home_Working_03-300x273.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:273;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"food-menu-thumb\";a:4:{s:4:\"file\";s:31:\"Max_Home_Working_03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog_image\";a:4:{s:4:\"file\";s:31:\"Max_Home_Working_03-498x180.jpg\";s:5:\"width\";i:498;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `jc_postmeta` VALUES (10,8,'_wp_attached_file','2014/02/Max_Home_Working_04.jpg');
INSERT INTO `jc_postmeta` VALUES (11,8,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:454;s:4:\"file\";s:31:\"2014/02/Max_Home_Working_04.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Max_Home_Working_04-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"Max_Home_Working_04-300x272.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:272;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"food-menu-thumb\";a:4:{s:4:\"file\";s:31:\"Max_Home_Working_04-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog_image\";a:4:{s:4:\"file\";s:31:\"Max_Home_Working_04-500x180.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `jc_postmeta` VALUES (12,9,'_wp_attached_file','2014/02/Max_Home_Working_05.jpg');
INSERT INTO `jc_postmeta` VALUES (13,9,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:217;s:6:\"height\";i:454;s:4:\"file\";s:31:\"2014/02/Max_Home_Working_05.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Max_Home_Working_05-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"Max_Home_Working_05-143x300.jpg\";s:5:\"width\";i:143;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"food-menu-thumb\";a:4:{s:4:\"file\";s:31:\"Max_Home_Working_05-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog_image\";a:4:{s:4:\"file\";s:31:\"Max_Home_Working_05-217x180.jpg\";s:5:\"width\";i:217;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `jc_postmeta` VALUES (14,10,'_wp_attached_file','2014/02/body-bg.jpg');
INSERT INTO `jc_postmeta` VALUES (15,10,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:532;s:6:\"height\";i:479;s:4:\"file\";s:19:\"2014/02/body-bg.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"body-bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"body-bg-300x270.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"food-menu-thumb\";a:4:{s:4:\"file\";s:19:\"body-bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog_image\";a:4:{s:4:\"file\";s:19:\"body-bg-532x180.jpg\";s:5:\"width\";i:532;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `jc_postmeta` VALUES (16,11,'_wp_attached_file','2014/02/sidebar.jpg');
INSERT INTO `jc_postmeta` VALUES (17,11,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:383;s:6:\"height\";i:726;s:4:\"file\";s:19:\"2014/02/sidebar.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"sidebar-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"sidebar-158x300.jpg\";s:5:\"width\";i:158;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"food-menu-thumb\";a:4:{s:4:\"file\";s:19:\"sidebar-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog_image\";a:4:{s:4:\"file\";s:19:\"sidebar-383x180.jpg\";s:5:\"width\";i:383;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `jc_postmeta` VALUES (18,12,'_wp_attached_file','2014/02/logo.png');
INSERT INTO `jc_postmeta` VALUES (19,12,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:385;s:6:\"height\";i:225;s:4:\"file\";s:16:\"2014/02/logo.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"logo-300x175.png\";s:5:\"width\";i:300;s:6:\"height\";i:175;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"food-menu-thumb\";a:4:{s:4:\"file\";s:16:\"logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"blog_image\";a:4:{s:4:\"file\";s:16:\"logo-385x180.png\";s:5:\"width\";i:385;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `jc_postmeta` VALUES (22,2,'_edit_lock','1398282651:1');
INSERT INTO `jc_postmeta` VALUES (23,17,'_wp_attached_file','2014/02/welcome.png');
INSERT INTO `jc_postmeta` VALUES (24,17,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:812;s:6:\"height\";i:531;s:4:\"file\";s:19:\"2014/02/welcome.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"welcome-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"welcome-300x196.png\";s:5:\"width\";i:300;s:6:\"height\";i:196;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"food-menu-thumb\";a:4:{s:4:\"file\";s:19:\"welcome-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"blog_image\";a:4:{s:4:\"file\";s:19:\"welcome-668x180.png\";s:5:\"width\";i:668;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `jc_postmeta` VALUES (25,2,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (44,25,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (45,25,'_edit_lock','1395247712:1');
INSERT INTO `jc_postmeta` VALUES (46,25,'_wp_page_template','default');
INSERT INTO `jc_postmeta` VALUES (47,27,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (48,27,'_edit_lock','1398281090:1');
INSERT INTO `jc_postmeta` VALUES (49,27,'_wp_page_template','reservations-page.php');
INSERT INTO `jc_postmeta` VALUES (50,29,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (51,29,'_edit_lock','1395953715:1');
INSERT INTO `jc_postmeta` VALUES (52,29,'_wp_page_template','default');
INSERT INTO `jc_postmeta` VALUES (53,31,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (54,31,'_edit_lock','1398282169:1');
INSERT INTO `jc_postmeta` VALUES (55,31,'_wp_page_template','default');
INSERT INTO `jc_postmeta` VALUES (56,33,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (57,33,'_edit_lock','1395255866:1');
INSERT INTO `jc_postmeta` VALUES (58,33,'_wp_page_template','default');
INSERT INTO `jc_postmeta` VALUES (59,35,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (60,35,'_edit_lock','1398282536:1');
INSERT INTO `jc_postmeta` VALUES (61,35,'_wp_page_template','contact-page.php');
INSERT INTO `jc_postmeta` VALUES (71,38,'_menu_item_type','post_type');
INSERT INTO `jc_postmeta` VALUES (72,38,'_menu_item_menu_item_parent','0');
INSERT INTO `jc_postmeta` VALUES (73,38,'_menu_item_object_id','25');
INSERT INTO `jc_postmeta` VALUES (74,38,'_menu_item_object','page');
INSERT INTO `jc_postmeta` VALUES (75,38,'_menu_item_target','');
INSERT INTO `jc_postmeta` VALUES (76,38,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `jc_postmeta` VALUES (77,38,'_menu_item_xfn','');
INSERT INTO `jc_postmeta` VALUES (78,38,'_menu_item_url','');
INSERT INTO `jc_postmeta` VALUES (80,39,'_menu_item_type','post_type');
INSERT INTO `jc_postmeta` VALUES (81,39,'_menu_item_menu_item_parent','0');
INSERT INTO `jc_postmeta` VALUES (82,39,'_menu_item_object_id','35');
INSERT INTO `jc_postmeta` VALUES (83,39,'_menu_item_object','page');
INSERT INTO `jc_postmeta` VALUES (84,39,'_menu_item_target','');
INSERT INTO `jc_postmeta` VALUES (85,39,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `jc_postmeta` VALUES (86,39,'_menu_item_xfn','');
INSERT INTO `jc_postmeta` VALUES (87,39,'_menu_item_url','');
INSERT INTO `jc_postmeta` VALUES (89,40,'_menu_item_type','post_type');
INSERT INTO `jc_postmeta` VALUES (90,40,'_menu_item_menu_item_parent','0');
INSERT INTO `jc_postmeta` VALUES (91,40,'_menu_item_object_id','31');
INSERT INTO `jc_postmeta` VALUES (92,40,'_menu_item_object','page');
INSERT INTO `jc_postmeta` VALUES (93,40,'_menu_item_target','');
INSERT INTO `jc_postmeta` VALUES (94,40,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `jc_postmeta` VALUES (95,40,'_menu_item_xfn','');
INSERT INTO `jc_postmeta` VALUES (96,40,'_menu_item_url','');
INSERT INTO `jc_postmeta` VALUES (98,41,'_menu_item_type','post_type');
INSERT INTO `jc_postmeta` VALUES (99,41,'_menu_item_menu_item_parent','0');
INSERT INTO `jc_postmeta` VALUES (100,41,'_menu_item_object_id','29');
INSERT INTO `jc_postmeta` VALUES (101,41,'_menu_item_object','page');
INSERT INTO `jc_postmeta` VALUES (102,41,'_menu_item_target','');
INSERT INTO `jc_postmeta` VALUES (103,41,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `jc_postmeta` VALUES (104,41,'_menu_item_xfn','');
INSERT INTO `jc_postmeta` VALUES (105,41,'_menu_item_url','');
INSERT INTO `jc_postmeta` VALUES (107,42,'_menu_item_type','post_type');
INSERT INTO `jc_postmeta` VALUES (108,42,'_menu_item_menu_item_parent','0');
INSERT INTO `jc_postmeta` VALUES (109,42,'_menu_item_object_id','33');
INSERT INTO `jc_postmeta` VALUES (110,42,'_menu_item_object','page');
INSERT INTO `jc_postmeta` VALUES (111,42,'_menu_item_target','');
INSERT INTO `jc_postmeta` VALUES (112,42,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `jc_postmeta` VALUES (113,42,'_menu_item_xfn','');
INSERT INTO `jc_postmeta` VALUES (114,42,'_menu_item_url','');
INSERT INTO `jc_postmeta` VALUES (116,43,'_menu_item_type','post_type');
INSERT INTO `jc_postmeta` VALUES (117,43,'_menu_item_menu_item_parent','0');
INSERT INTO `jc_postmeta` VALUES (118,43,'_menu_item_object_id','27');
INSERT INTO `jc_postmeta` VALUES (119,43,'_menu_item_object','page');
INSERT INTO `jc_postmeta` VALUES (120,43,'_menu_item_target','');
INSERT INTO `jc_postmeta` VALUES (121,43,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `jc_postmeta` VALUES (122,43,'_menu_item_xfn','');
INSERT INTO `jc_postmeta` VALUES (123,43,'_menu_item_url','');
INSERT INTO `jc_postmeta` VALUES (134,45,'_menu_item_type','custom');
INSERT INTO `jc_postmeta` VALUES (135,45,'_menu_item_menu_item_parent','0');
INSERT INTO `jc_postmeta` VALUES (136,45,'_menu_item_object_id','45');
INSERT INTO `jc_postmeta` VALUES (137,45,'_menu_item_object','custom');
INSERT INTO `jc_postmeta` VALUES (138,45,'_menu_item_target','');
INSERT INTO `jc_postmeta` VALUES (139,45,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `jc_postmeta` VALUES (140,45,'_menu_item_xfn','');
INSERT INTO `jc_postmeta` VALUES (141,45,'_menu_item_url','http://maxsonbroad.wpengine.com/menu/');
INSERT INTO `jc_postmeta` VALUES (152,56,'_wp_attached_file','2014/02/Max_Home_Working_011.jpg');
INSERT INTO `jc_postmeta` VALUES (153,56,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:454;s:4:\"file\";s:32:\"2014/02/Max_Home_Working_011.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"Max_Home_Working_011-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"Max_Home_Working_011-300x272.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:272;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"food-menu-thumb\";a:4:{s:4:\"file\";s:32:\"Max_Home_Working_011-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog_image\";a:4:{s:4:\"file\";s:32:\"Max_Home_Working_011-500x180.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `jc_postmeta` VALUES (154,57,'_wp_attached_file','2014/02/Max_Home_Working_021.jpg');
INSERT INTO `jc_postmeta` VALUES (155,57,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:502;s:6:\"height\";i:454;s:4:\"file\";s:32:\"2014/02/Max_Home_Working_021.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"Max_Home_Working_021-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"Max_Home_Working_021-300x271.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:271;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"food-menu-thumb\";a:4:{s:4:\"file\";s:32:\"Max_Home_Working_021-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog_image\";a:4:{s:4:\"file\";s:32:\"Max_Home_Working_021-502x180.jpg\";s:5:\"width\";i:502;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `jc_postmeta` VALUES (156,58,'_wp_attached_file','2014/02/Max_Home_Working_031.jpg');
INSERT INTO `jc_postmeta` VALUES (157,58,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:498;s:6:\"height\";i:454;s:4:\"file\";s:32:\"2014/02/Max_Home_Working_031.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"Max_Home_Working_031-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"Max_Home_Working_031-300x273.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:273;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"food-menu-thumb\";a:4:{s:4:\"file\";s:32:\"Max_Home_Working_031-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog_image\";a:4:{s:4:\"file\";s:32:\"Max_Home_Working_031-498x180.jpg\";s:5:\"width\";i:498;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `jc_postmeta` VALUES (158,59,'_wp_attached_file','2014/02/Max_Home_Working_041.jpg');
INSERT INTO `jc_postmeta` VALUES (159,59,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:454;s:4:\"file\";s:32:\"2014/02/Max_Home_Working_041.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"Max_Home_Working_041-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"Max_Home_Working_041-300x272.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:272;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"food-menu-thumb\";a:4:{s:4:\"file\";s:32:\"Max_Home_Working_041-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog_image\";a:4:{s:4:\"file\";s:32:\"Max_Home_Working_041-500x180.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `jc_postmeta` VALUES (160,60,'_wp_attached_file','2014/02/Max_Home_Working_051.jpg');
INSERT INTO `jc_postmeta` VALUES (161,60,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:217;s:6:\"height\";i:454;s:4:\"file\";s:32:\"2014/02/Max_Home_Working_051.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"Max_Home_Working_051-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"Max_Home_Working_051-143x300.jpg\";s:5:\"width\";i:143;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"food-menu-thumb\";a:4:{s:4:\"file\";s:32:\"Max_Home_Working_051-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog_image\";a:4:{s:4:\"file\";s:32:\"Max_Home_Working_051-217x180.jpg\";s:5:\"width\";i:217;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `jc_postmeta` VALUES (165,65,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (166,65,'_edit_lock','1394570805:1');
INSERT INTO `jc_postmeta` VALUES (168,65,'mg_price','9');
INSERT INTO `jc_postmeta` VALUES (169,65,'mg_second_price','17');
INSERT INTO `jc_postmeta` VALUES (170,67,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (171,67,'_edit_lock','1394564490:1');
INSERT INTO `jc_postmeta` VALUES (172,67,'mg_price','11');
INSERT INTO `jc_postmeta` VALUES (177,69,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (178,69,'_edit_lock','1398971171:1');
INSERT INTO `jc_postmeta` VALUES (179,69,'_wp_page_template','default');
INSERT INTO `jc_postmeta` VALUES (183,71,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (184,71,'_edit_lock','1394563141:1');
INSERT INTO `jc_postmeta` VALUES (185,71,'mg_price','10');
INSERT INTO `jc_postmeta` VALUES (186,71,'mg_second_price','15');
INSERT INTO `jc_postmeta` VALUES (187,72,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (188,72,'_edit_lock','1394563171:1');
INSERT INTO `jc_postmeta` VALUES (189,72,'mg_price','11');
INSERT INTO `jc_postmeta` VALUES (190,73,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (191,73,'_edit_lock','1394563196:1');
INSERT INTO `jc_postmeta` VALUES (192,73,'mg_price','16');
INSERT INTO `jc_postmeta` VALUES (193,74,'_edit_lock','1394563461:1');
INSERT INTO `jc_postmeta` VALUES (194,74,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (195,74,'mg_price','13');
INSERT INTO `jc_postmeta` VALUES (196,75,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (197,75,'_edit_lock','1394563465:1');
INSERT INTO `jc_postmeta` VALUES (198,75,'mg_price','9');
INSERT INTO `jc_postmeta` VALUES (199,76,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (200,76,'_edit_lock','1394563322:1');
INSERT INTO `jc_postmeta` VALUES (201,76,'mg_price','14');
INSERT INTO `jc_postmeta` VALUES (205,78,'_menu_item_type','post_type');
INSERT INTO `jc_postmeta` VALUES (206,78,'_menu_item_menu_item_parent','45');
INSERT INTO `jc_postmeta` VALUES (207,78,'_menu_item_object_id','69');
INSERT INTO `jc_postmeta` VALUES (208,78,'_menu_item_object','page');
INSERT INTO `jc_postmeta` VALUES (209,78,'_menu_item_target','');
INSERT INTO `jc_postmeta` VALUES (210,78,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `jc_postmeta` VALUES (211,78,'_menu_item_xfn','');
INSERT INTO `jc_postmeta` VALUES (212,78,'_menu_item_url','');
INSERT INTO `jc_postmeta` VALUES (214,80,'_edit_lock','1394566742:1');
INSERT INTO `jc_postmeta` VALUES (215,80,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (219,81,'_edit_lock','1394565533:1');
INSERT INTO `jc_postmeta` VALUES (220,81,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (221,81,'mg_price_description','full');
INSERT INTO `jc_postmeta` VALUES (222,81,'mg_price','8');
INSERT INTO `jc_postmeta` VALUES (223,81,'mg_second_price_description','half');
INSERT INTO `jc_postmeta` VALUES (224,81,'mg_second_price','5');
INSERT INTO `jc_postmeta` VALUES (225,82,'_edit_lock','1394565591:1');
INSERT INTO `jc_postmeta` VALUES (226,82,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (227,82,'mg_price_description','full');
INSERT INTO `jc_postmeta` VALUES (228,82,'mg_price','8');
INSERT INTO `jc_postmeta` VALUES (229,82,'mg_second_price_description','half');
INSERT INTO `jc_postmeta` VALUES (230,82,'mg_second_price','5');
INSERT INTO `jc_postmeta` VALUES (237,84,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (238,84,'_edit_lock','1394565786:1');
INSERT INTO `jc_postmeta` VALUES (239,84,'mg_price_description','full');
INSERT INTO `jc_postmeta` VALUES (240,84,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (241,84,'mg_second_price_description','half');
INSERT INTO `jc_postmeta` VALUES (242,84,'mg_second_price','8');
INSERT INTO `jc_postmeta` VALUES (243,85,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (244,85,'_edit_lock','1394565898:1');
INSERT INTO `jc_postmeta` VALUES (245,85,'mg_price_description','full');
INSERT INTO `jc_postmeta` VALUES (246,85,'mg_price','14');
INSERT INTO `jc_postmeta` VALUES (247,85,'mg_second_price_description','half');
INSERT INTO `jc_postmeta` VALUES (248,85,'mg_second_price','9');
INSERT INTO `jc_postmeta` VALUES (249,86,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (250,86,'_edit_lock','1394565957:1');
INSERT INTO `jc_postmeta` VALUES (251,86,'mg_price_description','full');
INSERT INTO `jc_postmeta` VALUES (252,86,'mg_price','13');
INSERT INTO `jc_postmeta` VALUES (253,86,'mg_second_price_description','half');
INSERT INTO `jc_postmeta` VALUES (254,86,'mg_second_price','9');
INSERT INTO `jc_postmeta` VALUES (261,88,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (262,88,'_edit_lock','1394566073:1');
INSERT INTO `jc_postmeta` VALUES (263,88,'mg_price_description','full');
INSERT INTO `jc_postmeta` VALUES (264,88,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (265,88,'mg_second_price_description','half');
INSERT INTO `jc_postmeta` VALUES (266,88,'mg_second_price','8');
INSERT INTO `jc_postmeta` VALUES (267,89,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (268,89,'_edit_lock','1394566142:1');
INSERT INTO `jc_postmeta` VALUES (269,89,'mg_price_description','full');
INSERT INTO `jc_postmeta` VALUES (270,89,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (271,89,'mg_second_price_description','half');
INSERT INTO `jc_postmeta` VALUES (272,89,'mg_second_price','8');
INSERT INTO `jc_postmeta` VALUES (279,91,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (280,91,'_edit_lock','1394566414:1');
INSERT INTO `jc_postmeta` VALUES (281,91,'mg_price_description','full');
INSERT INTO `jc_postmeta` VALUES (282,91,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (283,91,'mg_second_price_description','half');
INSERT INTO `jc_postmeta` VALUES (284,91,'mg_second_price','8');
INSERT INTO `jc_postmeta` VALUES (285,93,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (286,93,'_edit_lock','1394566688:1');
INSERT INTO `jc_postmeta` VALUES (287,93,'mg_price','8');
INSERT INTO `jc_postmeta` VALUES (288,94,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (289,94,'_edit_lock','1398263273:1');
INSERT INTO `jc_postmeta` VALUES (290,94,'mg_price','5');
INSERT INTO `jc_postmeta` VALUES (291,94,'mg_second_price','7');
INSERT INTO `jc_postmeta` VALUES (292,95,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (293,95,'_edit_lock','1394566933:1');
INSERT INTO `jc_postmeta` VALUES (294,95,'mg_price','14');
INSERT INTO `jc_postmeta` VALUES (295,96,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (296,96,'_edit_lock','1394566992:1');
INSERT INTO `jc_postmeta` VALUES (297,96,'mg_price','9');
INSERT INTO `jc_postmeta` VALUES (298,97,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (299,97,'_edit_lock','1394567043:1');
INSERT INTO `jc_postmeta` VALUES (300,97,'mg_price','7');
INSERT INTO `jc_postmeta` VALUES (301,98,'_edit_lock','1398971465:1');
INSERT INTO `jc_postmeta` VALUES (302,98,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (303,98,'mg_price','14');
INSERT INTO `jc_postmeta` VALUES (304,99,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (305,99,'_edit_lock','1398971452:1');
INSERT INTO `jc_postmeta` VALUES (306,99,'mg_price','13');
INSERT INTO `jc_postmeta` VALUES (313,102,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (314,102,'_edit_lock','1394567397:1');
INSERT INTO `jc_postmeta` VALUES (315,102,'mg_price','14');
INSERT INTO `jc_postmeta` VALUES (316,103,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (317,103,'_edit_lock','1394567434:1');
INSERT INTO `jc_postmeta` VALUES (318,103,'mg_price','9');
INSERT INTO `jc_postmeta` VALUES (319,104,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (320,104,'_edit_lock','1398971450:1');
INSERT INTO `jc_postmeta` VALUES (321,104,'mg_price','8');
INSERT INTO `jc_postmeta` VALUES (322,105,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (323,105,'_edit_lock','1394567625:1');
INSERT INTO `jc_postmeta` VALUES (324,105,'mg_price','11');
INSERT INTO `jc_postmeta` VALUES (325,106,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (326,106,'_edit_lock','1394567689:1');
INSERT INTO `jc_postmeta` VALUES (327,106,'mg_price','11');
INSERT INTO `jc_postmeta` VALUES (328,107,'_edit_lock','1394567736:1');
INSERT INTO `jc_postmeta` VALUES (329,107,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (330,107,'mg_price','13');
INSERT INTO `jc_postmeta` VALUES (331,108,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (332,108,'_edit_lock','1394567782:1');
INSERT INTO `jc_postmeta` VALUES (333,108,'mg_price','13');
INSERT INTO `jc_postmeta` VALUES (334,109,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (335,109,'_edit_lock','1394567849:1');
INSERT INTO `jc_postmeta` VALUES (336,109,'mg_price','11');
INSERT INTO `jc_postmeta` VALUES (337,110,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (338,110,'_edit_lock','1394567895:1');
INSERT INTO `jc_postmeta` VALUES (339,110,'mg_price','13');
INSERT INTO `jc_postmeta` VALUES (340,111,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (341,111,'_edit_lock','1394567968:1');
INSERT INTO `jc_postmeta` VALUES (342,111,'mg_price','10');
INSERT INTO `jc_postmeta` VALUES (343,111,'mg_second_price_description','add cheese');
INSERT INTO `jc_postmeta` VALUES (344,111,'mg_second_price','2');
INSERT INTO `jc_postmeta` VALUES (345,111,'mg_third_price_description','add egg');
INSERT INTO `jc_postmeta` VALUES (346,111,'mg_third_price','2');
INSERT INTO `jc_postmeta` VALUES (347,112,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (348,112,'_edit_lock','1394568005:1');
INSERT INTO `jc_postmeta` VALUES (349,112,'mg_price','11');
INSERT INTO `jc_postmeta` VALUES (353,114,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (354,114,'_edit_lock','1394568093:1');
INSERT INTO `jc_postmeta` VALUES (355,114,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (356,115,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (357,115,'_edit_lock','1398972025:1');
INSERT INTO `jc_postmeta` VALUES (358,115,'mg_price','11');
INSERT INTO `jc_postmeta` VALUES (359,116,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (360,116,'_edit_lock','1394568168:1');
INSERT INTO `jc_postmeta` VALUES (361,116,'mg_price','11');
INSERT INTO `jc_postmeta` VALUES (362,117,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (363,117,'_edit_lock','1394568206:1');
INSERT INTO `jc_postmeta` VALUES (364,117,'mg_price','10');
INSERT INTO `jc_postmeta` VALUES (365,118,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (366,118,'_edit_lock','1394568242:1');
INSERT INTO `jc_postmeta` VALUES (367,118,'mg_price','8');
INSERT INTO `jc_postmeta` VALUES (368,119,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (369,119,'_edit_lock','1394568279:1');
INSERT INTO `jc_postmeta` VALUES (370,119,'mg_price','10');
INSERT INTO `jc_postmeta` VALUES (371,120,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (372,120,'_edit_lock','1394568310:1');
INSERT INTO `jc_postmeta` VALUES (373,120,'mg_price','10');
INSERT INTO `jc_postmeta` VALUES (374,121,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (375,121,'_edit_lock','1394568338:1');
INSERT INTO `jc_postmeta` VALUES (376,121,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (380,123,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (381,123,'_edit_lock','1399041331:1');
INSERT INTO `jc_postmeta` VALUES (382,123,'mg_price','6');
INSERT INTO `jc_postmeta` VALUES (383,124,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (384,124,'_edit_lock','1398972560:1');
INSERT INTO `jc_postmeta` VALUES (385,124,'mg_price','11');
INSERT INTO `jc_postmeta` VALUES (386,125,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (387,125,'_edit_lock','1398972455:1');
INSERT INTO `jc_postmeta` VALUES (388,125,'mg_price','11');
INSERT INTO `jc_postmeta` VALUES (398,129,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (399,129,'_edit_lock','1394569029:1');
INSERT INTO `jc_postmeta` VALUES (400,129,'mg_price','14');
INSERT INTO `jc_postmeta` VALUES (410,133,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (411,133,'_edit_lock','1395244688:1');
INSERT INTO `jc_postmeta` VALUES (412,133,'mg_price','25');
INSERT INTO `jc_postmeta` VALUES (413,133,'mg_second_price_description','add foie gras');
INSERT INTO `jc_postmeta` VALUES (414,133,'mg_second_price','9');
INSERT INTO `jc_postmeta` VALUES (415,133,'mg_third_price_description','add egg');
INSERT INTO `jc_postmeta` VALUES (416,133,'mg_third_price','2');
INSERT INTO `jc_postmeta` VALUES (429,138,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (430,138,'_edit_lock','1394569517:1');
INSERT INTO `jc_postmeta` VALUES (431,138,'mg_price','10');
INSERT INTO `jc_postmeta` VALUES (435,141,'_edit_lock','1395216017:1');
INSERT INTO `jc_postmeta` VALUES (436,141,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (437,141,'mg_price','8');
INSERT INTO `jc_postmeta` VALUES (440,144,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (441,144,'_edit_lock','1398274796:1');
INSERT INTO `jc_postmeta` VALUES (442,144,'mg_price','5');
INSERT INTO `jc_postmeta` VALUES (443,144,'mg_second_price','7');
INSERT INTO `jc_postmeta` VALUES (444,145,'_edit_lock','1395244981:1');
INSERT INTO `jc_postmeta` VALUES (445,145,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (446,145,'mg_price','14');
INSERT INTO `jc_postmeta` VALUES (447,146,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (448,146,'_edit_lock','1395216337:1');
INSERT INTO `jc_postmeta` VALUES (449,146,'mg_price','9');
INSERT INTO `jc_postmeta` VALUES (450,147,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (451,147,'_edit_lock','1395216380:1');
INSERT INTO `jc_postmeta` VALUES (452,147,'mg_price','7');
INSERT INTO `jc_postmeta` VALUES (453,148,'_edit_lock','1398969323:1');
INSERT INTO `jc_postmeta` VALUES (454,148,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (455,148,'mg_price','14');
INSERT INTO `jc_postmeta` VALUES (456,149,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (457,149,'_edit_lock','1398969324:1');
INSERT INTO `jc_postmeta` VALUES (458,149,'mg_price','13');
INSERT INTO `jc_postmeta` VALUES (459,150,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (460,150,'_edit_lock','1395244979:1');
INSERT INTO `jc_postmeta` VALUES (461,150,'mg_price','14');
INSERT INTO `jc_postmeta` VALUES (465,152,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (466,152,'_edit_lock','1395244980:1');
INSERT INTO `jc_postmeta` VALUES (467,152,'mg_price','14');
INSERT INTO `jc_postmeta` VALUES (468,153,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (469,153,'_edit_lock','1395216933:1');
INSERT INTO `jc_postmeta` VALUES (470,153,'mg_price','9');
INSERT INTO `jc_postmeta` VALUES (471,154,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (472,154,'_edit_lock','1395245170:1');
INSERT INTO `jc_postmeta` VALUES (473,154,'mg_price','8');
INSERT INTO `jc_postmeta` VALUES (477,156,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (478,156,'_edit_lock','1398969179:1');
INSERT INTO `jc_postmeta` VALUES (479,156,'mg_price','27');
INSERT INTO `jc_postmeta` VALUES (480,158,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (481,158,'_edit_lock','1395238090:1');
INSERT INTO `jc_postmeta` VALUES (482,158,'mg_price','27');
INSERT INTO `jc_postmeta` VALUES (483,159,'_edit_lock','1395238179:1');
INSERT INTO `jc_postmeta` VALUES (484,159,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (485,159,'mg_price','21');
INSERT INTO `jc_postmeta` VALUES (489,161,'_edit_lock','1398969325:1');
INSERT INTO `jc_postmeta` VALUES (490,161,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (491,161,'mg_price','29');
INSERT INTO `jc_postmeta` VALUES (495,163,'_edit_lock','1395238679:1');
INSERT INTO `jc_postmeta` VALUES (496,163,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (497,163,'mg_price','22');
INSERT INTO `jc_postmeta` VALUES (501,165,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (502,165,'_edit_lock','1395238824:1');
INSERT INTO `jc_postmeta` VALUES (503,165,'mg_price','29');
INSERT INTO `jc_postmeta` VALUES (504,165,'mg_second_price_description','add foie gras');
INSERT INTO `jc_postmeta` VALUES (505,165,'mg_second_price','9');
INSERT INTO `jc_postmeta` VALUES (506,165,'mg_third_price_description','add egg');
INSERT INTO `jc_postmeta` VALUES (507,165,'mg_third_price','2');
INSERT INTO `jc_postmeta` VALUES (508,166,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (509,166,'_edit_lock','1395238871:1');
INSERT INTO `jc_postmeta` VALUES (510,166,'mg_price','32');
INSERT INTO `jc_postmeta` VALUES (517,169,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (518,169,'_edit_lock','1395239107:1');
INSERT INTO `jc_postmeta` VALUES (519,169,'mg_price','26');
INSERT INTO `jc_postmeta` VALUES (520,170,'_edit_lock','1395245303:1');
INSERT INTO `jc_postmeta` VALUES (521,170,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (522,170,'mg_price','27');
INSERT INTO `jc_postmeta` VALUES (523,171,'_edit_lock','1395239208:1');
INSERT INTO `jc_postmeta` VALUES (524,171,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (525,171,'mg_price','31');
INSERT INTO `jc_postmeta` VALUES (535,175,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (536,175,'_edit_lock','1395239705:1');
INSERT INTO `jc_postmeta` VALUES (537,175,'mg_price','18');
INSERT INTO `jc_postmeta` VALUES (544,178,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (545,178,'_edit_lock','1395239861:1');
INSERT INTO `jc_postmeta` VALUES (546,178,'mg_price','10');
INSERT INTO `jc_postmeta` VALUES (547,178,'mg_second_price_description','add cheese');
INSERT INTO `jc_postmeta` VALUES (548,178,'mg_second_price','2');
INSERT INTO `jc_postmeta` VALUES (549,178,'mg_third_price_description','add egg');
INSERT INTO `jc_postmeta` VALUES (550,178,'mg_third_price','2');
INSERT INTO `jc_postmeta` VALUES (551,179,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (552,179,'_edit_lock','1395245396:1');
INSERT INTO `jc_postmeta` VALUES (553,179,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (554,181,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (555,181,'_edit_lock','1395245397:1');
INSERT INTO `jc_postmeta` VALUES (556,181,'mg_price','11');
INSERT INTO `jc_postmeta` VALUES (560,183,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (561,183,'_edit_lock','1395240132:1');
INSERT INTO `jc_postmeta` VALUES (562,183,'mg_price','8');
INSERT INTO `jc_postmeta` VALUES (563,184,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (564,184,'_edit_lock','1395245439:1');
INSERT INTO `jc_postmeta` VALUES (565,184,'mg_price','10');
INSERT INTO `jc_postmeta` VALUES (566,185,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (567,185,'_edit_lock','1395240252:1');
INSERT INTO `jc_postmeta` VALUES (568,185,'mg_price','10');
INSERT INTO `jc_postmeta` VALUES (575,188,'_edit_lock','1398968524:1');
INSERT INTO `jc_postmeta` VALUES (576,188,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (577,188,'mg_price','6');
INSERT INTO `jc_postmeta` VALUES (578,189,'_edit_lock','1395245447:1');
INSERT INTO `jc_postmeta` VALUES (579,189,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (580,189,'mg_price','9');
INSERT INTO `jc_postmeta` VALUES (581,189,'mg_second_price','17');
INSERT INTO `jc_postmeta` VALUES (582,190,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (583,190,'_edit_lock','1398263440:1');
INSERT INTO `jc_postmeta` VALUES (584,190,'mg_price','11');
INSERT INTO `jc_postmeta` VALUES (592,193,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (593,193,'_edit_lock','1395240746:1');
INSERT INTO `jc_postmeta` VALUES (594,193,'mg_price','10');
INSERT INTO `jc_postmeta` VALUES (595,193,'mg_second_price','15');
INSERT INTO `jc_postmeta` VALUES (596,194,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (597,194,'_edit_lock','1395240793:1');
INSERT INTO `jc_postmeta` VALUES (598,194,'mg_price','11');
INSERT INTO `jc_postmeta` VALUES (599,195,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (600,195,'_edit_lock','1395240837:1');
INSERT INTO `jc_postmeta` VALUES (601,195,'mg_price','16');
INSERT INTO `jc_postmeta` VALUES (602,196,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (603,196,'_edit_lock','1395245442:1');
INSERT INTO `jc_postmeta` VALUES (604,196,'mg_price','13');
INSERT INTO `jc_postmeta` VALUES (605,197,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (606,197,'_edit_lock','1395245244:1');
INSERT INTO `jc_postmeta` VALUES (607,197,'mg_price','9');
INSERT INTO `jc_postmeta` VALUES (608,198,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (609,198,'_edit_lock','1395245246:1');
INSERT INTO `jc_postmeta` VALUES (610,198,'mg_price','14');
INSERT INTO `jc_postmeta` VALUES (614,200,'_edit_lock','1398968235:1');
INSERT INTO `jc_postmeta` VALUES (615,200,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (616,201,'_edit_lock','1395245340:1');
INSERT INTO `jc_postmeta` VALUES (617,201,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (618,201,'mg_price_description','full');
INSERT INTO `jc_postmeta` VALUES (619,201,'mg_price','8');
INSERT INTO `jc_postmeta` VALUES (620,201,'mg_second_price_description','half');
INSERT INTO `jc_postmeta` VALUES (621,201,'mg_second_price','5');
INSERT INTO `jc_postmeta` VALUES (622,202,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (623,202,'_edit_lock','1395241349:1');
INSERT INTO `jc_postmeta` VALUES (624,202,'mg_price_description','full');
INSERT INTO `jc_postmeta` VALUES (625,202,'mg_price','8');
INSERT INTO `jc_postmeta` VALUES (626,202,'mg_second_price_description','half');
INSERT INTO `jc_postmeta` VALUES (627,202,'mg_second_price','5');
INSERT INTO `jc_postmeta` VALUES (634,204,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (635,204,'_edit_lock','1395241460:1');
INSERT INTO `jc_postmeta` VALUES (636,204,'mg_price_description','full');
INSERT INTO `jc_postmeta` VALUES (637,204,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (638,204,'mg_second_price_description','half');
INSERT INTO `jc_postmeta` VALUES (639,204,'mg_second_price','8');
INSERT INTO `jc_postmeta` VALUES (640,205,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (641,205,'_edit_lock','1395241517:1');
INSERT INTO `jc_postmeta` VALUES (642,205,'mg_price_description','full');
INSERT INTO `jc_postmeta` VALUES (643,205,'mg_price','14');
INSERT INTO `jc_postmeta` VALUES (644,205,'mg_second_price_description','half');
INSERT INTO `jc_postmeta` VALUES (645,205,'mg_second_price','9');
INSERT INTO `jc_postmeta` VALUES (646,206,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (647,206,'_edit_lock','1395241580:1');
INSERT INTO `jc_postmeta` VALUES (648,206,'mg_price_description','full');
INSERT INTO `jc_postmeta` VALUES (649,206,'mg_price','13');
INSERT INTO `jc_postmeta` VALUES (650,206,'mg_second_price_description','half');
INSERT INTO `jc_postmeta` VALUES (651,206,'mg_second_price','9');
INSERT INTO `jc_postmeta` VALUES (652,207,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (653,207,'_edit_lock','1398968706:1');
INSERT INTO `jc_postmeta` VALUES (654,207,'mg_price_description','full');
INSERT INTO `jc_postmeta` VALUES (655,207,'mg_price','14');
INSERT INTO `jc_postmeta` VALUES (656,207,'mg_second_price_description','half');
INSERT INTO `jc_postmeta` VALUES (658,208,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (659,208,'_edit_lock','1395241695:1');
INSERT INTO `jc_postmeta` VALUES (660,208,'mg_price_description','full');
INSERT INTO `jc_postmeta` VALUES (661,208,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (662,208,'mg_second_price_description','half');
INSERT INTO `jc_postmeta` VALUES (663,208,'mg_second_price','8');
INSERT INTO `jc_postmeta` VALUES (664,209,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (665,209,'_edit_lock','1395241746:1');
INSERT INTO `jc_postmeta` VALUES (666,209,'mg_price_description','full');
INSERT INTO `jc_postmeta` VALUES (667,209,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (668,209,'mg_second_price_description','half');
INSERT INTO `jc_postmeta` VALUES (669,209,'mg_second_price','8');
INSERT INTO `jc_postmeta` VALUES (670,210,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (671,210,'_edit_lock','1398968705:1');
INSERT INTO `jc_postmeta` VALUES (672,210,'mg_price_description','full');
INSERT INTO `jc_postmeta` VALUES (673,210,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (674,210,'mg_second_price_description','half');
INSERT INTO `jc_postmeta` VALUES (675,210,'mg_second_price','8');
INSERT INTO `jc_postmeta` VALUES (676,211,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (677,211,'_edit_lock','1395245362:1');
INSERT INTO `jc_postmeta` VALUES (678,211,'mg_price_description','full');
INSERT INTO `jc_postmeta` VALUES (679,211,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (680,211,'mg_second_price_description','half');
INSERT INTO `jc_postmeta` VALUES (681,211,'mg_second_price','8');
INSERT INTO `jc_postmeta` VALUES (682,212,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (683,212,'_edit_lock','1398973146:1');
INSERT INTO `jc_postmeta` VALUES (684,212,'_wp_page_template','default');
INSERT INTO `jc_postmeta` VALUES (685,213,'_menu_item_type','post_type');
INSERT INTO `jc_postmeta` VALUES (686,213,'_menu_item_menu_item_parent','45');
INSERT INTO `jc_postmeta` VALUES (687,213,'_menu_item_object_id','212');
INSERT INTO `jc_postmeta` VALUES (688,213,'_menu_item_object','page');
INSERT INTO `jc_postmeta` VALUES (689,213,'_menu_item_target','');
INSERT INTO `jc_postmeta` VALUES (690,213,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `jc_postmeta` VALUES (691,213,'_menu_item_xfn','');
INSERT INTO `jc_postmeta` VALUES (692,213,'_menu_item_url','');
INSERT INTO `jc_postmeta` VALUES (694,214,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (695,214,'_edit_lock','1398971218:1');
INSERT INTO `jc_postmeta` VALUES (696,214,'_wp_page_template','default');
INSERT INTO `jc_postmeta` VALUES (699,215,'_menu_item_type','post_type');
INSERT INTO `jc_postmeta` VALUES (700,215,'_menu_item_menu_item_parent','45');
INSERT INTO `jc_postmeta` VALUES (701,215,'_menu_item_object_id','214');
INSERT INTO `jc_postmeta` VALUES (702,215,'_menu_item_object','page');
INSERT INTO `jc_postmeta` VALUES (703,215,'_menu_item_target','');
INSERT INTO `jc_postmeta` VALUES (704,215,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `jc_postmeta` VALUES (705,215,'_menu_item_xfn','');
INSERT INTO `jc_postmeta` VALUES (706,215,'_menu_item_url','');
INSERT INTO `jc_postmeta` VALUES (708,217,'_wp_attached_file','2014/02/mike-ledesma.jpg');
INSERT INTO `jc_postmeta` VALUES (709,217,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:760;s:6:\"height\";i:483;s:4:\"file\";s:24:\"2014/02/mike-ledesma.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"mike-ledesma-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"mike-ledesma-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"food-menu-thumb\";a:4:{s:4:\"file\";s:24:\"mike-ledesma-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog_image\";a:4:{s:4:\"file\";s:24:\"mike-ledesma-668x180.jpg\";s:5:\"width\";i:668;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `jc_postmeta` VALUES (710,219,'_edit_lock','1395336457:1');
INSERT INTO `jc_postmeta` VALUES (711,219,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (712,219,'mg_price','16');
INSERT INTO `jc_postmeta` VALUES (713,220,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (714,220,'_edit_lock','1398969462:1');
INSERT INTO `jc_postmeta` VALUES (715,220,'mg_price','17');
INSERT INTO `jc_postmeta` VALUES (718,221,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (719,221,'_edit_lock','1395336680:1');
INSERT INTO `jc_postmeta` VALUES (720,221,'mg_price','11');
INSERT INTO `jc_postmeta` VALUES (721,222,'_edit_lock','1395336747:1');
INSERT INTO `jc_postmeta` VALUES (722,222,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (723,222,'mg_price','11.50');
INSERT INTO `jc_postmeta` VALUES (724,223,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (725,223,'_edit_lock','1395336791:1');
INSERT INTO `jc_postmeta` VALUES (726,223,'mg_price','8');
INSERT INTO `jc_postmeta` VALUES (727,224,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (728,224,'_edit_lock','1398969546:1');
INSERT INTO `jc_postmeta` VALUES (729,224,'mg_price','10');
INSERT INTO `jc_postmeta` VALUES (730,225,'_edit_lock','1395336938:1');
INSERT INTO `jc_postmeta` VALUES (731,225,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (732,225,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (733,226,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (734,226,'_edit_lock','1395337064:1');
INSERT INTO `jc_postmeta` VALUES (735,226,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (736,227,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (737,227,'_edit_lock','1398969545:1');
INSERT INTO `jc_postmeta` VALUES (738,228,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (739,228,'_edit_lock','1398969683:1');
INSERT INTO `jc_postmeta` VALUES (740,228,'mg_price','16');
INSERT INTO `jc_postmeta` VALUES (741,229,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (742,229,'_edit_lock','1398263316:1');
INSERT INTO `jc_postmeta` VALUES (743,229,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (744,230,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (745,230,'_edit_lock','1395337260:1');
INSERT INTO `jc_postmeta` VALUES (746,230,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (747,231,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (748,231,'_edit_lock','1398969702:1');
INSERT INTO `jc_postmeta` VALUES (749,232,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (750,232,'_edit_lock','1398970044:1');
INSERT INTO `jc_postmeta` VALUES (751,232,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (752,233,'_edit_lock','1398969933:1');
INSERT INTO `jc_postmeta` VALUES (753,233,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (754,233,'mg_price','11');
INSERT INTO `jc_postmeta` VALUES (755,234,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (756,234,'_edit_lock','1398969990:1');
INSERT INTO `jc_postmeta` VALUES (757,234,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (760,236,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (761,236,'_edit_lock','1398970106:1');
INSERT INTO `jc_postmeta` VALUES (762,236,'mg_price','8');
INSERT INTO `jc_postmeta` VALUES (763,236,'mg_second_price','12');
INSERT INTO `jc_postmeta` VALUES (764,237,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (765,237,'_edit_lock','1395337717:1');
INSERT INTO `jc_postmeta` VALUES (766,237,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (767,238,'_edit_lock','1395337799:1');
INSERT INTO `jc_postmeta` VALUES (768,238,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (769,238,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (770,239,'_edit_lock','1395337999:1');
INSERT INTO `jc_postmeta` VALUES (771,239,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (772,239,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (773,240,'_edit_lock','1395338055:1');
INSERT INTO `jc_postmeta` VALUES (774,240,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (775,240,'mg_price','2.85');
INSERT INTO `jc_postmeta` VALUES (776,241,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (777,241,'_edit_lock','1395338090:1');
INSERT INTO `jc_postmeta` VALUES (778,241,'mg_price','3');
INSERT INTO `jc_postmeta` VALUES (779,242,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (780,242,'_edit_lock','1395338123:1');
INSERT INTO `jc_postmeta` VALUES (781,242,'mg_price','3.95');
INSERT INTO `jc_postmeta` VALUES (782,243,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (783,243,'_edit_lock','1395338167:1');
INSERT INTO `jc_postmeta` VALUES (784,243,'mg_price','2.85');
INSERT INTO `jc_postmeta` VALUES (785,244,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (786,244,'_edit_lock','1395338202:1');
INSERT INTO `jc_postmeta` VALUES (787,244,'mg_price','2.85');
INSERT INTO `jc_postmeta` VALUES (788,245,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (789,245,'_edit_lock','1395338235:1');
INSERT INTO `jc_postmeta` VALUES (790,245,'mg_price','3.25');
INSERT INTO `jc_postmeta` VALUES (791,246,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (792,246,'_edit_lock','1395338266:1');
INSERT INTO `jc_postmeta` VALUES (793,246,'mg_price','3.25');
INSERT INTO `jc_postmeta` VALUES (794,247,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (795,247,'_edit_lock','1395338297:1');
INSERT INTO `jc_postmeta` VALUES (796,247,'mg_price','3.25');
INSERT INTO `jc_postmeta` VALUES (797,248,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (798,248,'_edit_lock','1395338437:1');
INSERT INTO `jc_postmeta` VALUES (799,248,'mg_price','3.25');
INSERT INTO `jc_postmeta` VALUES (800,249,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (801,249,'_edit_lock','1395338362:1');
INSERT INTO `jc_postmeta` VALUES (802,249,'mg_price','5');
INSERT INTO `jc_postmeta` VALUES (803,250,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (804,250,'_edit_lock','1395338413:1');
INSERT INTO `jc_postmeta` VALUES (805,250,'mg_price','2.85');
INSERT INTO `jc_postmeta` VALUES (806,251,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (807,251,'_edit_lock','1395338442:1');
INSERT INTO `jc_postmeta` VALUES (808,251,'mg_price','5');
INSERT INTO `jc_postmeta` VALUES (809,252,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (810,252,'_edit_lock','1395338471:1');
INSERT INTO `jc_postmeta` VALUES (811,252,'mg_price','4');
INSERT INTO `jc_postmeta` VALUES (812,253,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (813,253,'_edit_lock','1395338502:1');
INSERT INTO `jc_postmeta` VALUES (814,253,'mg_price','8');
INSERT INTO `jc_postmeta` VALUES (815,254,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (816,254,'_edit_lock','1395338533:1');
INSERT INTO `jc_postmeta` VALUES (817,254,'mg_price','2');
INSERT INTO `jc_postmeta` VALUES (818,255,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (819,255,'_edit_lock','1395338562:1');
INSERT INTO `jc_postmeta` VALUES (820,255,'mg_price','3');
INSERT INTO `jc_postmeta` VALUES (821,256,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (822,256,'_edit_lock','1398977643:1');
INSERT INTO `jc_postmeta` VALUES (823,256,'mg_price','4');
INSERT INTO `jc_postmeta` VALUES (824,257,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (825,257,'_edit_lock','1395338627:1');
INSERT INTO `jc_postmeta` VALUES (826,257,'mg_price','4');
INSERT INTO `jc_postmeta` VALUES (827,258,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (828,258,'_edit_lock','1395338665:1');
INSERT INTO `jc_postmeta` VALUES (829,258,'mg_price','3');
INSERT INTO `jc_postmeta` VALUES (830,259,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (831,259,'_edit_lock','1398972066:1');
INSERT INTO `jc_postmeta` VALUES (832,259,'mg_price','5');
INSERT INTO `jc_postmeta` VALUES (833,260,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (834,260,'_edit_lock','1395338740:1');
INSERT INTO `jc_postmeta` VALUES (835,260,'mg_price','5');
INSERT INTO `jc_postmeta` VALUES (836,261,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (837,261,'_edit_lock','1395338775:1');
INSERT INTO `jc_postmeta` VALUES (838,261,'mg_price','7');
INSERT INTO `jc_postmeta` VALUES (842,263,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (843,263,'_edit_lock','1395338845:1');
INSERT INTO `jc_postmeta` VALUES (844,263,'mg_price','7');
INSERT INTO `jc_postmeta` VALUES (845,264,'_edit_lock','1395339158:1');
INSERT INTO `jc_postmeta` VALUES (846,264,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (847,264,'mg_price','7');
INSERT INTO `jc_postmeta` VALUES (848,265,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (849,265,'_edit_lock','1395339283:1');
INSERT INTO `jc_postmeta` VALUES (850,265,'mg_price','8');
INSERT INTO `jc_postmeta` VALUES (851,266,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (852,266,'_edit_lock','1398970311:1');
INSERT INTO `jc_postmeta` VALUES (853,266,'mg_price','10');
INSERT INTO `jc_postmeta` VALUES (854,267,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (855,267,'_edit_lock','1395339228:1');
INSERT INTO `jc_postmeta` VALUES (856,267,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (857,268,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (858,268,'_edit_lock','1398279364:1');
INSERT INTO `jc_postmeta` VALUES (859,268,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (860,236,'mg_second_price_description','w/ strawberries and whipped cream');
INSERT INTO `jc_postmeta` VALUES (861,236,'mg_price_description','plain');
INSERT INTO `jc_postmeta` VALUES (862,144,'mg_price_description','cup');
INSERT INTO `jc_postmeta` VALUES (863,144,'mg_second_price_description','bowl');
INSERT INTO `jc_postmeta` VALUES (864,94,'mg_price_description','cup');
INSERT INTO `jc_postmeta` VALUES (865,94,'mg_second_price_description','bowl');
INSERT INTO `jc_postmeta` VALUES (866,276,'_edit_lock','1398975884:1');
INSERT INTO `jc_postmeta` VALUES (867,276,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (868,276,'_wp_page_template','default');
INSERT INTO `jc_postmeta` VALUES (869,210,'_wp_old_slug','roa-s-t-e-d-be-e-t');
INSERT INTO `jc_postmeta` VALUES (870,207,'_wp_old_slug','hanger-steak-2');
INSERT INTO `jc_postmeta` VALUES (907,281,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (908,281,'_edit_lock','1398968853:1');
INSERT INTO `jc_postmeta` VALUES (909,281,'mg_price','27');
INSERT INTO `jc_postmeta` VALUES (910,282,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (911,282,'_edit_lock','1398968903:1');
INSERT INTO `jc_postmeta` VALUES (912,282,'mg_price','29');
INSERT INTO `jc_postmeta` VALUES (913,283,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (914,283,'_edit_lock','1398968933:1');
INSERT INTO `jc_postmeta` VALUES (915,283,'mg_price','31');
INSERT INTO `jc_postmeta` VALUES (916,284,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (917,284,'_edit_lock','1398968963:1');
INSERT INTO `jc_postmeta` VALUES (918,284,'mg_price','19');
INSERT INTO `jc_postmeta` VALUES (919,285,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (920,285,'_edit_lock','1398968995:1');
INSERT INTO `jc_postmeta` VALUES (921,285,'mg_price','23');
INSERT INTO `jc_postmeta` VALUES (922,286,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (923,286,'_edit_lock','1398969325:1');
INSERT INTO `jc_postmeta` VALUES (924,286,'mg_price','34');
INSERT INTO `jc_postmeta` VALUES (929,287,'_edit_lock','1398969110:1');
INSERT INTO `jc_postmeta` VALUES (930,287,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (931,287,'mg_price','8');
INSERT INTO `jc_postmeta` VALUES (932,288,'_edit_lock','1398969148:1');
INSERT INTO `jc_postmeta` VALUES (933,288,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (934,288,'mg_price','13');
INSERT INTO `jc_postmeta` VALUES (937,290,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (938,290,'_edit_lock','1398970038:1');
INSERT INTO `jc_postmeta` VALUES (939,290,'mg_price','11');
INSERT INTO `jc_postmeta` VALUES (940,291,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (941,291,'_edit_lock','1398969932:1');
INSERT INTO `jc_postmeta` VALUES (942,291,'mg_price','13');
INSERT INTO `jc_postmeta` VALUES (945,292,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (946,292,'_edit_lock','1398970105:1');
INSERT INTO `jc_postmeta` VALUES (947,292,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (950,266,'_wp_old_slug','breeders-cup');
INSERT INTO `jc_postmeta` VALUES (951,293,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (952,293,'_edit_lock','1398972021:1');
INSERT INTO `jc_postmeta` VALUES (953,293,'mg_price','10');
INSERT INTO `jc_postmeta` VALUES (954,294,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (955,294,'_edit_lock','1398970454:1');
INSERT INTO `jc_postmeta` VALUES (956,294,'mg_price','8');
INSERT INTO `jc_postmeta` VALUES (957,295,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (958,295,'_edit_lock','1398970474:1');
INSERT INTO `jc_postmeta` VALUES (959,295,'mg_price','5 / 7');
INSERT INTO `jc_postmeta` VALUES (960,296,'_edit_lock','1398970526:1');
INSERT INTO `jc_postmeta` VALUES (961,296,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (962,296,'mg_price','13');
INSERT INTO `jc_postmeta` VALUES (963,297,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (964,297,'_edit_lock','1398970554:1');
INSERT INTO `jc_postmeta` VALUES (965,297,'mg_price','14');
INSERT INTO `jc_postmeta` VALUES (966,298,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (967,298,'_edit_lock','1398970586:1');
INSERT INTO `jc_postmeta` VALUES (968,298,'mg_price','9');
INSERT INTO `jc_postmeta` VALUES (969,299,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (970,299,'_edit_lock','1398970620:1');
INSERT INTO `jc_postmeta` VALUES (971,299,'mg_price','8');
INSERT INTO `jc_postmeta` VALUES (972,300,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (973,300,'_edit_lock','1398970644:1');
INSERT INTO `jc_postmeta` VALUES (974,300,'mg_price','7');
INSERT INTO `jc_postmeta` VALUES (975,302,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (976,302,'_edit_lock','1398970664:1');
INSERT INTO `jc_postmeta` VALUES (977,302,'mg_price','14');
INSERT INTO `jc_postmeta` VALUES (978,303,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (979,303,'_edit_lock','1398970677:1');
INSERT INTO `jc_postmeta` VALUES (980,304,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (981,304,'_edit_lock','1398970709:1');
INSERT INTO `jc_postmeta` VALUES (982,304,'mg_price','11');
INSERT INTO `jc_postmeta` VALUES (983,305,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (984,305,'_edit_lock','1398970732:1');
INSERT INTO `jc_postmeta` VALUES (985,305,'mg_price','13');
INSERT INTO `jc_postmeta` VALUES (986,306,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (987,306,'_edit_lock','1398970768:1');
INSERT INTO `jc_postmeta` VALUES (988,306,'mg_price','10');
INSERT INTO `jc_postmeta` VALUES (989,307,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (990,307,'_edit_lock','1398970791:1');
INSERT INTO `jc_postmeta` VALUES (991,307,'mg_price','11');
INSERT INTO `jc_postmeta` VALUES (992,308,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (993,308,'_edit_lock','1398970811:1');
INSERT INTO `jc_postmeta` VALUES (994,308,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (995,309,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (996,309,'_edit_lock','1398970839:1');
INSERT INTO `jc_postmeta` VALUES (997,309,'mg_price','11');
INSERT INTO `jc_postmeta` VALUES (998,310,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (999,310,'_edit_lock','1398970861:1');
INSERT INTO `jc_postmeta` VALUES (1000,310,'mg_price','11');
INSERT INTO `jc_postmeta` VALUES (1001,311,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1002,311,'_edit_lock','1398970888:1');
INSERT INTO `jc_postmeta` VALUES (1003,311,'mg_price','10');
INSERT INTO `jc_postmeta` VALUES (1004,312,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1005,312,'_edit_lock','1398970905:1');
INSERT INTO `jc_postmeta` VALUES (1006,312,'mg_price','10');
INSERT INTO `jc_postmeta` VALUES (1007,313,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1008,313,'_edit_lock','1398970983:1');
INSERT INTO `jc_postmeta` VALUES (1009,313,'mg_price','11');
INSERT INTO `jc_postmeta` VALUES (1010,314,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1011,314,'_edit_lock','1398971011:1');
INSERT INTO `jc_postmeta` VALUES (1012,314,'mg_price','11');
INSERT INTO `jc_postmeta` VALUES (1013,315,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1014,315,'_edit_lock','1398971033:1');
INSERT INTO `jc_postmeta` VALUES (1015,315,'mg_price','11');
INSERT INTO `jc_postmeta` VALUES (1016,316,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1017,316,'_edit_lock','1398971058:1');
INSERT INTO `jc_postmeta` VALUES (1018,316,'mg_price','14');
INSERT INTO `jc_postmeta` VALUES (1019,317,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1020,317,'_edit_lock','1398971080:1');
INSERT INTO `jc_postmeta` VALUES (1021,317,'mg_price','17');
INSERT INTO `jc_postmeta` VALUES (1022,318,'_edit_lock','1398971110:1');
INSERT INTO `jc_postmeta` VALUES (1023,318,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1024,318,'mg_price','14');
INSERT INTO `jc_postmeta` VALUES (1025,319,'_edit_lock','1398971133:1');
INSERT INTO `jc_postmeta` VALUES (1026,319,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1027,319,'mg_price','14');
INSERT INTO `jc_postmeta` VALUES (1028,320,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1029,320,'_edit_lock','1398971179:1');
INSERT INTO `jc_postmeta` VALUES (1030,320,'mg_price','17');
INSERT INTO `jc_postmeta` VALUES (1031,321,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1032,321,'_edit_lock','1398971267:1');
INSERT INTO `jc_postmeta` VALUES (1033,321,'mg_price','10');
INSERT INTO `jc_postmeta` VALUES (1040,322,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1041,322,'_edit_lock','1398971289:1');
INSERT INTO `jc_postmeta` VALUES (1042,323,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1043,323,'_edit_lock','1398971317:1');
INSERT INTO `jc_postmeta` VALUES (1044,323,'mg_price_description','full:');
INSERT INTO `jc_postmeta` VALUES (1045,323,'mg_price','8');
INSERT INTO `jc_postmeta` VALUES (1046,323,'mg_second_price_description','half:');
INSERT INTO `jc_postmeta` VALUES (1047,323,'mg_second_price','5');
INSERT INTO `jc_postmeta` VALUES (1048,324,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1049,324,'_edit_lock','1398971350:1');
INSERT INTO `jc_postmeta` VALUES (1052,324,'mg_price_description','full:');
INSERT INTO `jc_postmeta` VALUES (1053,324,'mg_price','8');
INSERT INTO `jc_postmeta` VALUES (1054,324,'mg_second_price_description','half:');
INSERT INTO `jc_postmeta` VALUES (1055,324,'mg_second_price','5');
INSERT INTO `jc_postmeta` VALUES (1058,325,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1059,325,'_edit_lock','1398971378:1');
INSERT INTO `jc_postmeta` VALUES (1060,325,'mg_price_description','full:');
INSERT INTO `jc_postmeta` VALUES (1061,325,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (1062,325,'mg_second_price_description','half:');
INSERT INTO `jc_postmeta` VALUES (1063,325,'mg_second_price','8');
INSERT INTO `jc_postmeta` VALUES (1064,326,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1065,326,'_edit_lock','1398971411:1');
INSERT INTO `jc_postmeta` VALUES (1066,326,'mg_price_description','full:');
INSERT INTO `jc_postmeta` VALUES (1067,326,'mg_price','14');
INSERT INTO `jc_postmeta` VALUES (1068,326,'mg_second_price_description','half:');
INSERT INTO `jc_postmeta` VALUES (1069,326,'mg_second_price','9');
INSERT INTO `jc_postmeta` VALUES (1070,327,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1071,327,'_edit_lock','1398971446:1');
INSERT INTO `jc_postmeta` VALUES (1072,327,'mg_price_description','full:');
INSERT INTO `jc_postmeta` VALUES (1073,327,'mg_price','13');
INSERT INTO `jc_postmeta` VALUES (1074,327,'mg_second_price_description','half:');
INSERT INTO `jc_postmeta` VALUES (1075,327,'mg_second_price','9');
INSERT INTO `jc_postmeta` VALUES (1076,328,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1077,328,'_edit_lock','1398971475:1');
INSERT INTO `jc_postmeta` VALUES (1078,328,'mg_price_description','full:');
INSERT INTO `jc_postmeta` VALUES (1079,328,'mg_price','14');
INSERT INTO `jc_postmeta` VALUES (1080,329,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1081,329,'_edit_lock','1398971500:1');
INSERT INTO `jc_postmeta` VALUES (1082,329,'mg_price_description','full:');
INSERT INTO `jc_postmeta` VALUES (1083,329,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (1084,329,'mg_second_price_description','half:');
INSERT INTO `jc_postmeta` VALUES (1085,329,'mg_second_price','8');
INSERT INTO `jc_postmeta` VALUES (1086,330,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1087,330,'_edit_lock','1398971528:1');
INSERT INTO `jc_postmeta` VALUES (1088,330,'mg_price_description','full:');
INSERT INTO `jc_postmeta` VALUES (1089,330,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (1090,330,'mg_second_price_description','half:');
INSERT INTO `jc_postmeta` VALUES (1091,330,'mg_second_price','8');
INSERT INTO `jc_postmeta` VALUES (1092,331,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1093,331,'_edit_lock','1398971554:1');
INSERT INTO `jc_postmeta` VALUES (1094,332,'_edit_lock','1398971575:1');
INSERT INTO `jc_postmeta` VALUES (1095,331,'mg_price_description','full:');
INSERT INTO `jc_postmeta` VALUES (1096,331,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (1097,331,'mg_second_price_description','half:');
INSERT INTO `jc_postmeta` VALUES (1098,331,'mg_second_price','8');
INSERT INTO `jc_postmeta` VALUES (1099,332,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1100,333,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1101,333,'_edit_lock','1398971600:1');
INSERT INTO `jc_postmeta` VALUES (1102,333,'mg_price_description','full:');
INSERT INTO `jc_postmeta` VALUES (1103,333,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (1104,333,'mg_second_price_description','half:');
INSERT INTO `jc_postmeta` VALUES (1105,333,'mg_second_price','8');
INSERT INTO `jc_postmeta` VALUES (1106,332,'mg_price','8');
INSERT INTO `jc_postmeta` VALUES (1107,334,'_edit_lock','1398971707:1');
INSERT INTO `jc_postmeta` VALUES (1108,334,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1109,336,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1110,336,'_edit_lock','1398971623:1');
INSERT INTO `jc_postmeta` VALUES (1111,336,'mg_price','13');
INSERT INTO `jc_postmeta` VALUES (1112,337,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1113,337,'mg_price','6');
INSERT INTO `jc_postmeta` VALUES (1114,337,'_edit_lock','1398971647:1');
INSERT INTO `jc_postmeta` VALUES (1115,338,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1116,338,'_edit_lock','1398971745:1');
INSERT INTO `jc_postmeta` VALUES (1117,338,'mg_price','10');
INSERT INTO `jc_postmeta` VALUES (1118,339,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1119,339,'_edit_lock','1398971818:1');
INSERT INTO `jc_postmeta` VALUES (1120,339,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (1121,340,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1122,340,'_edit_lock','1398971951:1');
INSERT INTO `jc_postmeta` VALUES (1123,340,'mg_price','11');
INSERT INTO `jc_postmeta` VALUES (1128,342,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1129,342,'_edit_lock','1398977540:1');
INSERT INTO `jc_postmeta` VALUES (1130,341,'_edit_lock','1398972954:1');
INSERT INTO `jc_postmeta` VALUES (1131,342,'_wp_page_template','default');
INSERT INTO `jc_postmeta` VALUES (1136,341,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1139,343,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1140,343,'_edit_lock','1398972191:1');
INSERT INTO `jc_postmeta` VALUES (1141,343,'mg_price','14');
INSERT INTO `jc_postmeta` VALUES (1142,344,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1143,344,'_edit_lock','1398972230:1');
INSERT INTO `jc_postmeta` VALUES (1144,344,'mg_price_description','half');
INSERT INTO `jc_postmeta` VALUES (1145,344,'mg_price','8');
INSERT INTO `jc_postmeta` VALUES (1146,344,'mg_second_price_description','full');
INSERT INTO `jc_postmeta` VALUES (1147,344,'mg_second_price','12');
INSERT INTO `jc_postmeta` VALUES (1148,341,'mg_price','7.75 / 29');
INSERT INTO `jc_postmeta` VALUES (1153,346,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1154,346,'_edit_lock','1398972944:1');
INSERT INTO `jc_postmeta` VALUES (1157,346,'mg_price','7.50 / 30 ');
INSERT INTO `jc_postmeta` VALUES (1164,347,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1165,347,'_edit_lock','1398972936:1');
INSERT INTO `jc_postmeta` VALUES (1168,347,'mg_price',' 9 / 31');
INSERT INTO `jc_postmeta` VALUES (1169,348,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1170,348,'_edit_lock','1398972930:1');
INSERT INTO `jc_postmeta` VALUES (1173,348,'mg_price','7.50 / 28');
INSERT INTO `jc_postmeta` VALUES (1174,349,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1175,349,'_edit_lock','1398972921:1');
INSERT INTO `jc_postmeta` VALUES (1178,349,'mg_price','7 / 28');
INSERT INTO `jc_postmeta` VALUES (1181,350,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1182,350,'_edit_lock','1398972519:1');
INSERT INTO `jc_postmeta` VALUES (1183,351,'_edit_lock','1398972607:1');
INSERT INTO `jc_postmeta` VALUES (1184,352,'_edit_lock','1398972551:1');
INSERT INTO `jc_postmeta` VALUES (1185,350,'mg_price','14');
INSERT INTO `jc_postmeta` VALUES (1186,352,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1187,353,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1188,353,'_edit_lock','1398972911:1');
INSERT INTO `jc_postmeta` VALUES (1189,353,'mg_price','6.50 / 25');
INSERT INTO `jc_postmeta` VALUES (1190,352,'mg_price','16');
INSERT INTO `jc_postmeta` VALUES (1191,354,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1192,354,'_edit_lock','1398972900:1');
INSERT INTO `jc_postmeta` VALUES (1193,354,'mg_price','11 / 40');
INSERT INTO `jc_postmeta` VALUES (1194,351,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1195,351,'mg_price','14');
INSERT INTO `jc_postmeta` VALUES (1196,355,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1197,355,'_edit_lock','1398972888:1');
INSERT INTO `jc_postmeta` VALUES (1198,355,'mg_price','6.50 / 25');
INSERT INTO `jc_postmeta` VALUES (1201,356,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1202,356,'_edit_lock','1398974008:1');
INSERT INTO `jc_postmeta` VALUES (1203,356,'mg_price','35 ');
INSERT INTO `jc_postmeta` VALUES (1204,357,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1205,357,'_edit_lock','1398974003:1');
INSERT INTO `jc_postmeta` VALUES (1206,357,'mg_price','34');
INSERT INTO `jc_postmeta` VALUES (1209,359,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1210,359,'_edit_lock','1398974004:1');
INSERT INTO `jc_postmeta` VALUES (1211,359,'mg_price','42');
INSERT INTO `jc_postmeta` VALUES (1212,360,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1213,360,'_edit_lock','1398974004:1');
INSERT INTO `jc_postmeta` VALUES (1214,360,'mg_price','39');
INSERT INTO `jc_postmeta` VALUES (1215,361,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1216,361,'_edit_lock','1398974005:1');
INSERT INTO `jc_postmeta` VALUES (1217,361,'mg_price','55');
INSERT INTO `jc_postmeta` VALUES (1218,362,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1219,362,'_edit_lock','1398974006:1');
INSERT INTO `jc_postmeta` VALUES (1221,362,'mg_price','35');
INSERT INTO `jc_postmeta` VALUES (1227,363,'_edit_lock','1398974006:1');
INSERT INTO `jc_postmeta` VALUES (1228,363,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1229,363,'mg_price','34');
INSERT INTO `jc_postmeta` VALUES (1230,364,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1231,364,'_edit_lock','1398974007:1');
INSERT INTO `jc_postmeta` VALUES (1232,364,'mg_price','42');
INSERT INTO `jc_postmeta` VALUES (1233,365,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1234,365,'_edit_lock','1398973279:1');
INSERT INTO `jc_postmeta` VALUES (1235,365,'mg_price','38');
INSERT INTO `jc_postmeta` VALUES (1236,366,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1237,366,'_edit_lock','1398973290:1');
INSERT INTO `jc_postmeta` VALUES (1238,366,'mg_price','26');
INSERT INTO `jc_postmeta` VALUES (1239,367,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1240,367,'_edit_lock','1398973302:1');
INSERT INTO `jc_postmeta` VALUES (1241,367,'mg_price','59');
INSERT INTO `jc_postmeta` VALUES (1242,368,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1243,368,'_edit_lock','1398973315:1');
INSERT INTO `jc_postmeta` VALUES (1244,368,'mg_price','33');
INSERT INTO `jc_postmeta` VALUES (1245,369,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1246,369,'_edit_lock','1398973331:1');
INSERT INTO `jc_postmeta` VALUES (1247,369,'mg_price','40');
INSERT INTO `jc_postmeta` VALUES (1248,370,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1249,370,'_edit_lock','1398973358:1');
INSERT INTO `jc_postmeta` VALUES (1250,370,'mg_price','28');
INSERT INTO `jc_postmeta` VALUES (1251,371,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1252,371,'_edit_lock','1398973371:1');
INSERT INTO `jc_postmeta` VALUES (1253,371,'mg_price','45');
INSERT INTO `jc_postmeta` VALUES (1254,372,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1255,372,'_edit_lock','1398973386:1');
INSERT INTO `jc_postmeta` VALUES (1256,372,'mg_price','41');
INSERT INTO `jc_postmeta` VALUES (1257,373,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1258,373,'_edit_lock','1398973399:1');
INSERT INTO `jc_postmeta` VALUES (1259,373,'mg_price','48');
INSERT INTO `jc_postmeta` VALUES (1260,374,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1261,374,'_edit_lock','1398973411:1');
INSERT INTO `jc_postmeta` VALUES (1262,374,'mg_price','37');
INSERT INTO `jc_postmeta` VALUES (1263,375,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1264,375,'_edit_lock','1398973426:1');
INSERT INTO `jc_postmeta` VALUES (1265,375,'mg_price','56');
INSERT INTO `jc_postmeta` VALUES (1266,376,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1267,376,'_edit_lock','1398973439:1');
INSERT INTO `jc_postmeta` VALUES (1268,376,'mg_price','80');
INSERT INTO `jc_postmeta` VALUES (1269,377,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1270,377,'_edit_lock','1398973451:1');
INSERT INTO `jc_postmeta` VALUES (1271,377,'mg_price','89');
INSERT INTO `jc_postmeta` VALUES (1272,378,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1273,378,'_edit_lock','1398973463:1');
INSERT INTO `jc_postmeta` VALUES (1274,378,'mg_price','52');
INSERT INTO `jc_postmeta` VALUES (1275,379,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1276,379,'_edit_lock','1398973473:1');
INSERT INTO `jc_postmeta` VALUES (1277,379,'mg_price','59');
INSERT INTO `jc_postmeta` VALUES (1278,380,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1279,380,'_edit_lock','1398973493:1');
INSERT INTO `jc_postmeta` VALUES (1280,380,'mg_price','34');
INSERT INTO `jc_postmeta` VALUES (1281,381,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1282,381,'_edit_lock','1398973508:1');
INSERT INTO `jc_postmeta` VALUES (1283,381,'mg_price','36');
INSERT INTO `jc_postmeta` VALUES (1284,382,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1285,382,'_edit_lock','1398973522:1');
INSERT INTO `jc_postmeta` VALUES (1286,382,'mg_price','36');
INSERT INTO `jc_postmeta` VALUES (1287,383,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1288,383,'_edit_lock','1398973544:1');
INSERT INTO `jc_postmeta` VALUES (1289,383,'mg_price','38');
INSERT INTO `jc_postmeta` VALUES (1290,384,'_edit_lock','1398973585:1');
INSERT INTO `jc_postmeta` VALUES (1291,384,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1292,384,'mg_price','7.50');
INSERT INTO `jc_postmeta` VALUES (1293,385,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1294,385,'_edit_lock','1398973600:1');
INSERT INTO `jc_postmeta` VALUES (1295,385,'mg_price','36');
INSERT INTO `jc_postmeta` VALUES (1296,386,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1297,386,'_edit_lock','1398973614:1');
INSERT INTO `jc_postmeta` VALUES (1298,386,'mg_price','40');
INSERT INTO `jc_postmeta` VALUES (1299,387,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1300,387,'_edit_lock','1398973624:1');
INSERT INTO `jc_postmeta` VALUES (1301,387,'mg_price','45');
INSERT INTO `jc_postmeta` VALUES (1302,388,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1303,388,'_edit_lock','1398973648:1');
INSERT INTO `jc_postmeta` VALUES (1304,388,'mg_price','61');
INSERT INTO `jc_postmeta` VALUES (1305,389,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1306,389,'_edit_lock','1398973662:1');
INSERT INTO `jc_postmeta` VALUES (1307,389,'mg_price','63');
INSERT INTO `jc_postmeta` VALUES (1308,390,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1309,390,'_edit_lock','1398973675:1');
INSERT INTO `jc_postmeta` VALUES (1310,390,'mg_price','35');
INSERT INTO `jc_postmeta` VALUES (1311,391,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1312,391,'_edit_lock','1398973688:1');
INSERT INTO `jc_postmeta` VALUES (1313,391,'mg_price','59');
INSERT INTO `jc_postmeta` VALUES (1314,392,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1315,392,'_edit_lock','1398973703:1');
INSERT INTO `jc_postmeta` VALUES (1316,392,'mg_price','48');
INSERT INTO `jc_postmeta` VALUES (1317,393,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1318,393,'_edit_lock','1398973718:1');
INSERT INTO `jc_postmeta` VALUES (1319,393,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (1320,394,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1321,394,'_edit_lock','1398973732:1');
INSERT INTO `jc_postmeta` VALUES (1322,394,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (1323,395,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1324,395,'_edit_lock','1398973747:1');
INSERT INTO `jc_postmeta` VALUES (1325,395,'mg_price','7');
INSERT INTO `jc_postmeta` VALUES (1326,396,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1327,396,'_edit_lock','1398973757:1');
INSERT INTO `jc_postmeta` VALUES (1328,396,'mg_price','6');
INSERT INTO `jc_postmeta` VALUES (1329,397,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1330,397,'_edit_lock','1398973791:1');
INSERT INTO `jc_postmeta` VALUES (1331,397,'mg_price','6');
INSERT INTO `jc_postmeta` VALUES (1332,398,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1333,398,'_edit_lock','1398973806:1');
INSERT INTO `jc_postmeta` VALUES (1334,398,'mg_price','8');
INSERT INTO `jc_postmeta` VALUES (1335,399,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1336,399,'_edit_lock','1398973820:1');
INSERT INTO `jc_postmeta` VALUES (1337,399,'mg_price','8');
INSERT INTO `jc_postmeta` VALUES (1338,400,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1339,400,'_edit_lock','1398973915:1');
INSERT INTO `jc_postmeta` VALUES (1340,400,'mg_price','10.50');
INSERT INTO `jc_postmeta` VALUES (1341,401,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1342,401,'_edit_lock','1398974046:1');
INSERT INTO `jc_postmeta` VALUES (1343,401,'mg_price','10.50 / 33');
INSERT INTO `jc_postmeta` VALUES (1344,402,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1345,402,'_edit_lock','1398974069:1');
INSERT INTO `jc_postmeta` VALUES (1346,402,'mg_price',' 8.50 / 32');
INSERT INTO `jc_postmeta` VALUES (1347,403,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1348,403,'_edit_lock','1398974109:1');
INSERT INTO `jc_postmeta` VALUES (1349,403,'mg_price','8 / 30');
INSERT INTO `jc_postmeta` VALUES (1350,404,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1351,404,'_edit_lock','1398974130:1');
INSERT INTO `jc_postmeta` VALUES (1352,404,'mg_price','6.5 / 25');
INSERT INTO `jc_postmeta` VALUES (1353,405,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1354,405,'_edit_lock','1398974153:1');
INSERT INTO `jc_postmeta` VALUES (1355,405,'mg_price','9.50 / 34');
INSERT INTO `jc_postmeta` VALUES (1356,406,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1357,406,'_edit_lock','1398974177:1');
INSERT INTO `jc_postmeta` VALUES (1358,406,'mg_price','8.50 / 32');
INSERT INTO `jc_postmeta` VALUES (1359,407,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1360,407,'_edit_lock','1398974515:1');
INSERT INTO `jc_postmeta` VALUES (1361,407,'mg_price','13 / 42');
INSERT INTO `jc_postmeta` VALUES (1362,408,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1363,408,'_edit_lock','1398974538:1');
INSERT INTO `jc_postmeta` VALUES (1364,408,'mg_price','45');
INSERT INTO `jc_postmeta` VALUES (1365,409,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1366,409,'_edit_lock','1398974558:1');
INSERT INTO `jc_postmeta` VALUES (1367,409,'mg_price','32');
INSERT INTO `jc_postmeta` VALUES (1368,410,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1369,410,'_edit_lock','1398974587:1');
INSERT INTO `jc_postmeta` VALUES (1370,410,'mg_price','79');
INSERT INTO `jc_postmeta` VALUES (1371,411,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1372,411,'_edit_lock','1398974608:1');
INSERT INTO `jc_postmeta` VALUES (1373,411,'mg_price','58');
INSERT INTO `jc_postmeta` VALUES (1374,412,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1375,412,'mg_price','60');
INSERT INTO `jc_postmeta` VALUES (1376,412,'_edit_lock','1398974626:1');
INSERT INTO `jc_postmeta` VALUES (1377,413,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1378,413,'_edit_lock','1398974645:1');
INSERT INTO `jc_postmeta` VALUES (1379,413,'mg_price','80');
INSERT INTO `jc_postmeta` VALUES (1380,414,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1381,414,'_edit_lock','1398974677:1');
INSERT INTO `jc_postmeta` VALUES (1382,414,'mg_price','42');
INSERT INTO `jc_postmeta` VALUES (1383,415,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1384,415,'_edit_lock','1398974694:1');
INSERT INTO `jc_postmeta` VALUES (1385,415,'mg_price','50');
INSERT INTO `jc_postmeta` VALUES (1386,416,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1387,416,'_edit_lock','1398974712:1');
INSERT INTO `jc_postmeta` VALUES (1388,416,'mg_price','42');
INSERT INTO `jc_postmeta` VALUES (1389,417,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1390,417,'_edit_lock','1398974734:1');
INSERT INTO `jc_postmeta` VALUES (1391,417,'mg_price','60');
INSERT INTO `jc_postmeta` VALUES (1392,418,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1393,418,'_edit_lock','1398974754:1');
INSERT INTO `jc_postmeta` VALUES (1394,418,'mg_price','33');
INSERT INTO `jc_postmeta` VALUES (1395,419,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1396,419,'_edit_lock','1398974777:1');
INSERT INTO `jc_postmeta` VALUES (1397,419,'mg_price','42');
INSERT INTO `jc_postmeta` VALUES (1398,420,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1399,420,'_edit_lock','1398974796:1');
INSERT INTO `jc_postmeta` VALUES (1400,420,'mg_price','50');
INSERT INTO `jc_postmeta` VALUES (1401,421,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1402,421,'_edit_lock','1398974815:1');
INSERT INTO `jc_postmeta` VALUES (1403,421,'mg_price','36');
INSERT INTO `jc_postmeta` VALUES (1404,422,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1405,422,'_edit_lock','1398974831:1');
INSERT INTO `jc_postmeta` VALUES (1406,422,'mg_price','36');
INSERT INTO `jc_postmeta` VALUES (1407,423,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1408,423,'_edit_lock','1398974858:1');
INSERT INTO `jc_postmeta` VALUES (1409,423,'mg_price','63');
INSERT INTO `jc_postmeta` VALUES (1410,424,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1411,424,'_edit_lock','1398974874:1');
INSERT INTO `jc_postmeta` VALUES (1412,424,'mg_price','46');
INSERT INTO `jc_postmeta` VALUES (1413,425,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1414,425,'_edit_lock','1398974889:1');
INSERT INTO `jc_postmeta` VALUES (1415,425,'mg_price','37');
INSERT INTO `jc_postmeta` VALUES (1416,426,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1417,426,'_edit_lock','1398974911:1');
INSERT INTO `jc_postmeta` VALUES (1418,426,'mg_price','36');
INSERT INTO `jc_postmeta` VALUES (1419,427,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1420,427,'_edit_lock','1398974941:1');
INSERT INTO `jc_postmeta` VALUES (1421,427,'mg_price','41');
INSERT INTO `jc_postmeta` VALUES (1422,428,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1423,428,'_edit_lock','1398974964:1');
INSERT INTO `jc_postmeta` VALUES (1424,428,'mg_price','35');
INSERT INTO `jc_postmeta` VALUES (1425,429,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1426,429,'_edit_lock','1398974981:1');
INSERT INTO `jc_postmeta` VALUES (1427,429,'mg_price','36');
INSERT INTO `jc_postmeta` VALUES (1428,430,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1429,430,'_edit_lock','1398974996:1');
INSERT INTO `jc_postmeta` VALUES (1430,430,'mg_price','25');
INSERT INTO `jc_postmeta` VALUES (1431,431,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1432,431,'_edit_lock','1398975020:1');
INSERT INTO `jc_postmeta` VALUES (1433,431,'mg_price','35');
INSERT INTO `jc_postmeta` VALUES (1434,432,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1435,432,'_edit_lock','1398975040:1');
INSERT INTO `jc_postmeta` VALUES (1436,432,'mg_price','33');
INSERT INTO `jc_postmeta` VALUES (1437,433,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1438,433,'_edit_lock','1398975059:1');
INSERT INTO `jc_postmeta` VALUES (1439,433,'mg_price','38');
INSERT INTO `jc_postmeta` VALUES (1440,434,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1441,434,'_edit_lock','1398975080:1');
INSERT INTO `jc_postmeta` VALUES (1442,434,'mg_price','36');
INSERT INTO `jc_postmeta` VALUES (1443,435,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1444,435,'_edit_lock','1398975102:1');
INSERT INTO `jc_postmeta` VALUES (1445,435,'mg_price','32');
INSERT INTO `jc_postmeta` VALUES (1446,436,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1447,436,'_edit_lock','1398975122:1');
INSERT INTO `jc_postmeta` VALUES (1448,436,'mg_price','49');
INSERT INTO `jc_postmeta` VALUES (1449,437,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1450,437,'_edit_lock','1398975138:1');
INSERT INTO `jc_postmeta` VALUES (1451,437,'mg_price','65');
INSERT INTO `jc_postmeta` VALUES (1452,438,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1453,438,'_edit_lock','1398975162:1');
INSERT INTO `jc_postmeta` VALUES (1454,438,'mg_price','59');
INSERT INTO `jc_postmeta` VALUES (1455,439,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1456,439,'_edit_lock','1398975189:1');
INSERT INTO `jc_postmeta` VALUES (1457,439,'mg_price','55');
INSERT INTO `jc_postmeta` VALUES (1458,440,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1459,440,'_edit_lock','1398975206:1');
INSERT INTO `jc_postmeta` VALUES (1460,440,'mg_price','59');
INSERT INTO `jc_postmeta` VALUES (1461,441,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1462,441,'_edit_lock','1398975222:1');
INSERT INTO `jc_postmeta` VALUES (1463,441,'mg_price','45');
INSERT INTO `jc_postmeta` VALUES (1464,442,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1465,442,'_edit_lock','1398975248:1');
INSERT INTO `jc_postmeta` VALUES (1466,442,'mg_price','64');
INSERT INTO `jc_postmeta` VALUES (1467,443,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1468,443,'_edit_lock','1398975262:1');
INSERT INTO `jc_postmeta` VALUES (1469,443,'mg_price','120');
INSERT INTO `jc_postmeta` VALUES (1470,444,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1471,444,'_edit_lock','1398975278:1');
INSERT INTO `jc_postmeta` VALUES (1472,444,'mg_price','120');
INSERT INTO `jc_postmeta` VALUES (1473,445,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1474,445,'_edit_lock','1398975297:1');
INSERT INTO `jc_postmeta` VALUES (1475,445,'mg_price','80');
INSERT INTO `jc_postmeta` VALUES (1476,446,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1477,446,'_edit_lock','1398975323:1');
INSERT INTO `jc_postmeta` VALUES (1478,446,'mg_price','80');
INSERT INTO `jc_postmeta` VALUES (1479,447,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1480,447,'_edit_lock','1398975339:1');
INSERT INTO `jc_postmeta` VALUES (1481,447,'mg_price','110');
INSERT INTO `jc_postmeta` VALUES (1482,448,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1483,448,'_edit_lock','1398975364:1');
INSERT INTO `jc_postmeta` VALUES (1484,448,'mg_price','90');
INSERT INTO `jc_postmeta` VALUES (1485,449,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1486,449,'_edit_lock','1398975383:1');
INSERT INTO `jc_postmeta` VALUES (1487,449,'mg_price','32');
INSERT INTO `jc_postmeta` VALUES (1488,450,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1489,450,'_edit_lock','1398975403:1');
INSERT INTO `jc_postmeta` VALUES (1490,450,'mg_price','60');
INSERT INTO `jc_postmeta` VALUES (1491,451,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1492,451,'_edit_lock','1398975418:1');
INSERT INTO `jc_postmeta` VALUES (1493,451,'mg_price','60');
INSERT INTO `jc_postmeta` VALUES (1494,452,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1495,452,'_edit_lock','1398975436:1');
INSERT INTO `jc_postmeta` VALUES (1496,452,'mg_price','51');
INSERT INTO `jc_postmeta` VALUES (1497,455,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1498,455,'_edit_lock','1398977437:1');
INSERT INTO `jc_postmeta` VALUES (1499,455,'_wp_page_template','default');
INSERT INTO `jc_postmeta` VALUES (1500,456,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1501,456,'_edit_lock','1398977543:1');
INSERT INTO `jc_postmeta` VALUES (1502,456,'mg_price','5');
INSERT INTO `jc_postmeta` VALUES (1503,457,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1504,457,'_edit_lock','1398977544:1');
INSERT INTO `jc_postmeta` VALUES (1505,457,'mg_price','9.5');
INSERT INTO `jc_postmeta` VALUES (1506,458,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1507,458,'_edit_lock','1398977544:1');
INSERT INTO `jc_postmeta` VALUES (1508,458,'mg_price','11.5');
INSERT INTO `jc_postmeta` VALUES (1509,459,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1510,459,'_edit_lock','1398977545:1');
INSERT INTO `jc_postmeta` VALUES (1511,459,'mg_price','11.5');
INSERT INTO `jc_postmeta` VALUES (1512,460,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1513,460,'_edit_lock','1398977546:1');
INSERT INTO `jc_postmeta` VALUES (1514,460,'mg_price','9.5');
INSERT INTO `jc_postmeta` VALUES (1515,461,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1516,461,'_edit_lock','1398976043:1');
INSERT INTO `jc_postmeta` VALUES (1517,461,'mg_price','4.5');
INSERT INTO `jc_postmeta` VALUES (1518,462,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1519,462,'_edit_lock','1398976057:1');
INSERT INTO `jc_postmeta` VALUES (1520,462,'mg_price','3');
INSERT INTO `jc_postmeta` VALUES (1521,463,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1522,463,'_edit_lock','1398976070:1');
INSERT INTO `jc_postmeta` VALUES (1523,463,'mg_price','3.5');
INSERT INTO `jc_postmeta` VALUES (1524,464,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1525,464,'_edit_lock','1398976081:1');
INSERT INTO `jc_postmeta` VALUES (1526,464,'mg_price','4');
INSERT INTO `jc_postmeta` VALUES (1527,465,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1528,465,'_edit_lock','1398976099:1');
INSERT INTO `jc_postmeta` VALUES (1529,465,'mg_price','5.75');
INSERT INTO `jc_postmeta` VALUES (1530,466,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1531,466,'_edit_lock','1398976111:1');
INSERT INTO `jc_postmeta` VALUES (1532,466,'mg_price','4.25');
INSERT INTO `jc_postmeta` VALUES (1533,467,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1534,467,'_edit_lock','1398976122:1');
INSERT INTO `jc_postmeta` VALUES (1535,467,'mg_price','3.95');
INSERT INTO `jc_postmeta` VALUES (1536,468,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1537,468,'_edit_lock','1398976133:1');
INSERT INTO `jc_postmeta` VALUES (1538,468,'mg_price','5.50');
INSERT INTO `jc_postmeta` VALUES (1539,469,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1540,469,'_edit_lock','1398976143:1');
INSERT INTO `jc_postmeta` VALUES (1541,469,'mg_price','5');
INSERT INTO `jc_postmeta` VALUES (1542,470,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1543,470,'_edit_lock','1398976153:1');
INSERT INTO `jc_postmeta` VALUES (1544,470,'mg_price','3');
INSERT INTO `jc_postmeta` VALUES (1545,471,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1546,471,'_edit_lock','1398976165:1');
INSERT INTO `jc_postmeta` VALUES (1547,471,'mg_price','3.95');
INSERT INTO `jc_postmeta` VALUES (1548,472,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1549,472,'_edit_lock','1398976175:1');
INSERT INTO `jc_postmeta` VALUES (1550,472,'mg_price','9');
INSERT INTO `jc_postmeta` VALUES (1551,473,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1552,473,'_edit_lock','1398976188:1');
INSERT INTO `jc_postmeta` VALUES (1553,473,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (1554,474,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1555,474,'_edit_lock','1398976203:1');
INSERT INTO `jc_postmeta` VALUES (1556,474,'mg_price','3.75');
INSERT INTO `jc_postmeta` VALUES (1557,475,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1558,475,'_edit_lock','1398976216:1');
INSERT INTO `jc_postmeta` VALUES (1559,475,'mg_price','5');
INSERT INTO `jc_postmeta` VALUES (1560,476,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1561,476,'_edit_lock','1398976228:1');
INSERT INTO `jc_postmeta` VALUES (1562,476,'mg_price','10');
INSERT INTO `jc_postmeta` VALUES (1563,477,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1564,477,'_edit_lock','1398976240:1');
INSERT INTO `jc_postmeta` VALUES (1565,477,'mg_price','7');
INSERT INTO `jc_postmeta` VALUES (1566,478,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1567,478,'_edit_lock','1398976253:1');
INSERT INTO `jc_postmeta` VALUES (1568,478,'mg_price','30');
INSERT INTO `jc_postmeta` VALUES (1569,479,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1570,479,'_edit_lock','1398976265:1');
INSERT INTO `jc_postmeta` VALUES (1571,479,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (1572,480,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1573,480,'_edit_lock','1398976278:1');
INSERT INTO `jc_postmeta` VALUES (1574,480,'mg_price','20');
INSERT INTO `jc_postmeta` VALUES (1575,481,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1576,481,'_edit_lock','1398976290:1');
INSERT INTO `jc_postmeta` VALUES (1577,481,'mg_price','4.5');
INSERT INTO `jc_postmeta` VALUES (1578,482,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1579,482,'_edit_lock','1398976303:1');
INSERT INTO `jc_postmeta` VALUES (1580,482,'mg_price','9.5');
INSERT INTO `jc_postmeta` VALUES (1581,483,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1582,483,'_edit_lock','1398976318:1');
INSERT INTO `jc_postmeta` VALUES (1583,483,'mg_price','5.5');
INSERT INTO `jc_postmeta` VALUES (1584,484,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1585,484,'_edit_lock','1398976436:1');
INSERT INTO `jc_postmeta` VALUES (1586,484,'mg_price','7.75');
INSERT INTO `jc_postmeta` VALUES (1587,485,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1588,485,'_edit_lock','1398976449:1');
INSERT INTO `jc_postmeta` VALUES (1589,485,'mg_price','15');
INSERT INTO `jc_postmeta` VALUES (1590,486,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1591,486,'_edit_lock','1398976461:1');
INSERT INTO `jc_postmeta` VALUES (1592,486,'mg_price','9.5');
INSERT INTO `jc_postmeta` VALUES (1593,487,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1594,487,'_edit_lock','1398976475:1');
INSERT INTO `jc_postmeta` VALUES (1595,487,'mg_price','15');
INSERT INTO `jc_postmeta` VALUES (1596,488,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1597,488,'_edit_lock','1398977542:1');
INSERT INTO `jc_postmeta` VALUES (1598,488,'mg_price','4.75');
INSERT INTO `jc_postmeta` VALUES (1599,489,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1600,489,'_edit_lock','1398976497:1');
INSERT INTO `jc_postmeta` VALUES (1601,489,'mg_price','9.5');
INSERT INTO `jc_postmeta` VALUES (1602,490,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1603,490,'_edit_lock','1398976508:1');
INSERT INTO `jc_postmeta` VALUES (1604,490,'mg_price','10');
INSERT INTO `jc_postmeta` VALUES (1605,491,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1606,491,'_edit_lock','1398976521:1');
INSERT INTO `jc_postmeta` VALUES (1607,491,'mg_price','17');
INSERT INTO `jc_postmeta` VALUES (1608,492,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1609,492,'_edit_lock','1398976533:1');
INSERT INTO `jc_postmeta` VALUES (1610,492,'mg_price','6');
INSERT INTO `jc_postmeta` VALUES (1611,493,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1612,493,'_edit_lock','1398976543:1');
INSERT INTO `jc_postmeta` VALUES (1613,493,'mg_price','4');
INSERT INTO `jc_postmeta` VALUES (1614,494,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1615,494,'_edit_lock','1398976554:1');
INSERT INTO `jc_postmeta` VALUES (1616,494,'mg_price','11.5');
INSERT INTO `jc_postmeta` VALUES (1617,495,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1618,495,'_edit_lock','1398976564:1');
INSERT INTO `jc_postmeta` VALUES (1619,495,'mg_price','15');
INSERT INTO `jc_postmeta` VALUES (1620,496,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1621,496,'_edit_lock','1398976576:1');
INSERT INTO `jc_postmeta` VALUES (1622,496,'mg_price','6.75');
INSERT INTO `jc_postmeta` VALUES (1623,497,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1624,497,'_edit_lock','1398976587:1');
INSERT INTO `jc_postmeta` VALUES (1625,497,'mg_price','6.5');
INSERT INTO `jc_postmeta` VALUES (1626,498,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1627,498,'_edit_lock','1398976600:1');
INSERT INTO `jc_postmeta` VALUES (1628,498,'mg_price','18');
INSERT INTO `jc_postmeta` VALUES (1629,499,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1630,499,'_edit_lock','1398976612:1');
INSERT INTO `jc_postmeta` VALUES (1631,499,'mg_price','20.5');
INSERT INTO `jc_postmeta` VALUES (1632,500,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1633,500,'_edit_lock','1398976625:1');
INSERT INTO `jc_postmeta` VALUES (1634,500,'mg_price','8.5');
INSERT INTO `jc_postmeta` VALUES (1635,501,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1636,501,'_edit_lock','1398976637:1');
INSERT INTO `jc_postmeta` VALUES (1637,501,'mg_price','6.5');
INSERT INTO `jc_postmeta` VALUES (1638,502,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1639,502,'_edit_lock','1398976649:1');
INSERT INTO `jc_postmeta` VALUES (1640,502,'mg_price','11');
INSERT INTO `jc_postmeta` VALUES (1641,503,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1642,503,'_edit_lock','1398976665:1');
INSERT INTO `jc_postmeta` VALUES (1643,503,'mg_price','8');
INSERT INTO `jc_postmeta` VALUES (1644,504,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1645,504,'_edit_lock','1398976681:1');
INSERT INTO `jc_postmeta` VALUES (1646,504,'mg_price','10');
INSERT INTO `jc_postmeta` VALUES (1647,505,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1648,505,'_edit_lock','1398976696:1');
INSERT INTO `jc_postmeta` VALUES (1649,505,'mg_price','18');
INSERT INTO `jc_postmeta` VALUES (1650,506,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1651,506,'_edit_lock','1398976709:1');
INSERT INTO `jc_postmeta` VALUES (1652,506,'mg_price','28');
INSERT INTO `jc_postmeta` VALUES (1653,507,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1654,507,'_edit_lock','1398976722:1');
INSERT INTO `jc_postmeta` VALUES (1655,507,'mg_price','18');
INSERT INTO `jc_postmeta` VALUES (1656,508,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1657,508,'_edit_lock','1398976735:1');
INSERT INTO `jc_postmeta` VALUES (1658,508,'mg_price','42');
INSERT INTO `jc_postmeta` VALUES (1659,509,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1660,509,'_edit_lock','1398976748:1');
INSERT INTO `jc_postmeta` VALUES (1661,509,'mg_price','9');
INSERT INTO `jc_postmeta` VALUES (1662,510,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1663,510,'_edit_lock','1398976760:1');
INSERT INTO `jc_postmeta` VALUES (1664,510,'mg_price','11');
INSERT INTO `jc_postmeta` VALUES (1665,511,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1666,511,'_edit_lock','1398976798:1');
INSERT INTO `jc_postmeta` VALUES (1667,511,'mg_price','8.5');
INSERT INTO `jc_postmeta` VALUES (1668,512,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1669,512,'_edit_lock','1398976821:1');
INSERT INTO `jc_postmeta` VALUES (1670,512,'mg_price','8');
INSERT INTO `jc_postmeta` VALUES (1671,513,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1672,513,'_edit_lock','1398976856:1');
INSERT INTO `jc_postmeta` VALUES (1673,513,'mg_price','9');
INSERT INTO `jc_postmeta` VALUES (1674,514,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1675,514,'_edit_lock','1398976876:1');
INSERT INTO `jc_postmeta` VALUES (1676,514,'mg_price','8');
INSERT INTO `jc_postmeta` VALUES (1677,515,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1678,515,'_edit_lock','1398976919:1');
INSERT INTO `jc_postmeta` VALUES (1679,515,'mg_price','9.5');
INSERT INTO `jc_postmeta` VALUES (1680,516,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1681,516,'mg_price','8');
INSERT INTO `jc_postmeta` VALUES (1682,516,'_edit_lock','1398976941:1');
INSERT INTO `jc_postmeta` VALUES (1683,517,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1684,517,'_edit_lock','1398976967:1');
INSERT INTO `jc_postmeta` VALUES (1685,517,'mg_price','9.5');
INSERT INTO `jc_postmeta` VALUES (1686,518,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1687,518,'_edit_lock','1398976992:1');
INSERT INTO `jc_postmeta` VALUES (1688,518,'mg_price','9');
INSERT INTO `jc_postmeta` VALUES (1689,519,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1690,519,'_edit_lock','1398977014:1');
INSERT INTO `jc_postmeta` VALUES (1691,519,'mg_price','8');
INSERT INTO `jc_postmeta` VALUES (1692,520,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1693,520,'_edit_lock','1398977033:1');
INSERT INTO `jc_postmeta` VALUES (1694,520,'mg_price','9.5');
INSERT INTO `jc_postmeta` VALUES (1695,521,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1696,521,'_edit_lock','1398977055:1');
INSERT INTO `jc_postmeta` VALUES (1697,521,'mg_price','10');
INSERT INTO `jc_postmeta` VALUES (1698,522,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1699,522,'_edit_lock','1398977080:1');
INSERT INTO `jc_postmeta` VALUES (1700,522,'mg_price','9');
INSERT INTO `jc_postmeta` VALUES (1701,523,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1702,523,'_edit_lock','1398977103:1');
INSERT INTO `jc_postmeta` VALUES (1703,523,'mg_price','6.5');
INSERT INTO `jc_postmeta` VALUES (1704,524,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1705,524,'_edit_lock','1398977124:1');
INSERT INTO `jc_postmeta` VALUES (1706,524,'mg_price','8');
INSERT INTO `jc_postmeta` VALUES (1707,525,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1708,525,'_edit_lock','1398977147:1');
INSERT INTO `jc_postmeta` VALUES (1709,525,'mg_price','8');
INSERT INTO `jc_postmeta` VALUES (1710,526,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1711,526,'_edit_lock','1398977169:1');
INSERT INTO `jc_postmeta` VALUES (1712,526,'mg_price','8');
INSERT INTO `jc_postmeta` VALUES (1713,527,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1714,527,'_edit_lock','1398977191:1');
INSERT INTO `jc_postmeta` VALUES (1715,527,'mg_price','8.5');
INSERT INTO `jc_postmeta` VALUES (1716,528,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1717,528,'mg_price','8');
INSERT INTO `jc_postmeta` VALUES (1718,528,'_edit_lock','1398977210:1');
INSERT INTO `jc_postmeta` VALUES (1719,529,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1720,529,'_edit_lock','1398977233:1');
INSERT INTO `jc_postmeta` VALUES (1721,529,'mg_price','8');
INSERT INTO `jc_postmeta` VALUES (1722,530,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1723,530,'_edit_lock','1398977257:1');
INSERT INTO `jc_postmeta` VALUES (1724,530,'mg_price','10');
INSERT INTO `jc_postmeta` VALUES (1725,531,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1726,531,'_edit_lock','1398977284:1');
INSERT INTO `jc_postmeta` VALUES (1727,531,'mg_price','10');
INSERT INTO `jc_postmeta` VALUES (1728,532,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1729,532,'_edit_lock','1398977309:1');
INSERT INTO `jc_postmeta` VALUES (1730,532,'mg_price','8.5');
INSERT INTO `jc_postmeta` VALUES (1731,533,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1732,533,'_edit_lock','1398977331:1');
INSERT INTO `jc_postmeta` VALUES (1733,533,'mg_price','12');
INSERT INTO `jc_postmeta` VALUES (1734,534,'_edit_last','1');
INSERT INTO `jc_postmeta` VALUES (1735,534,'_edit_lock','1398977470:1');
INSERT INTO `jc_postmeta` VALUES (1736,534,'mg_price','9');
INSERT INTO `jc_postmeta` VALUES (1737,535,'_menu_item_type','post_type');
INSERT INTO `jc_postmeta` VALUES (1738,535,'_menu_item_menu_item_parent','45');
INSERT INTO `jc_postmeta` VALUES (1739,535,'_menu_item_object_id','455');
INSERT INTO `jc_postmeta` VALUES (1740,535,'_menu_item_object','page');
INSERT INTO `jc_postmeta` VALUES (1741,535,'_menu_item_target','');
INSERT INTO `jc_postmeta` VALUES (1742,535,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `jc_postmeta` VALUES (1743,535,'_menu_item_xfn','');
INSERT INTO `jc_postmeta` VALUES (1744,535,'_menu_item_url','');
INSERT INTO `jc_postmeta` VALUES (1746,536,'_menu_item_type','post_type');
INSERT INTO `jc_postmeta` VALUES (1747,536,'_menu_item_menu_item_parent','45');
INSERT INTO `jc_postmeta` VALUES (1748,536,'_menu_item_object_id','342');
INSERT INTO `jc_postmeta` VALUES (1749,536,'_menu_item_object','page');
INSERT INTO `jc_postmeta` VALUES (1750,536,'_menu_item_target','');
INSERT INTO `jc_postmeta` VALUES (1751,536,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `jc_postmeta` VALUES (1752,536,'_menu_item_xfn','');
INSERT INTO `jc_postmeta` VALUES (1753,536,'_menu_item_url','');
/*!40000 ALTER TABLE `jc_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jc_posts`
--

DROP TABLE IF EXISTS `jc_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jc_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=537 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jc_posts`
--

LOCK TABLES `jc_posts` WRITE;
/*!40000 ALTER TABLE `jc_posts` DISABLE KEYS */;
INSERT INTO `jc_posts` VALUES (1,1,'2014-02-22 08:21:46','2014-02-22 08:21:46','Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!','Hello world!','','publish','open','open','','hello-world','','','2014-02-22 08:21:46','2014-02-22 08:21:46','',0,'http://localhost/max-restaurant/?p=1',0,'post','',0);
INSERT INTO `jc_posts` VALUES (2,1,'2014-02-22 08:21:46','2014-02-22 08:21:46','[slideshow]\r\n<img class=\"alignnone size-full wp-image-17\" alt=\"welcome\" src=\"http://maxsonbroad.wpengine.com/wp-content/uploads/2014/02/welcome1.png\" width=\"812\" height=\"531\" /><img class=\"alignnone size-full wp-image-17\" alt=\"welcome\" src=\"http://maxsonbroad.wpengine.com/wp-content/uploads/2014/02/welcome.png\" width=\"812\" height=\"531\" />\r\n[/slideshow]\r\n<div style=\"color: #764808;\">\r\n\r\nAuthentic Belgian cuisine with a homegrown, Old World aesthetic in Downtown Richmond. Housed in a fabulously renovated two story dining space, Max\'s combines the fancy with the friendly.\r\n\r\nUnlike any other restaurant in Richmond, our French and Belgian menu weaves together bold flavors from fine European cuisines. Join us for lunch, dinner and brunch!\r\n\r\n</div>\r\n[one_half]\r\n<h3 style=\"color: #764808; text-align: center;\">Dinner Specials</h3>\r\nEnjoy our signature Moutes Frites or try another traditional Belgian dish when you join us for dinner. Max\'s boasts the best selection of Belgian beers and French wines for a relaxing night in Downtown Richmond. Just make sure you save room for creme brûlée.\r\n<p style=\"text-align: center;\">[button link=\"http://maxsonbroad.wpengine.com/?page_id=212\" color=\"#915a15 #ffffff\"]DINNER MENU [/button][/one_half]\r\n[one_half_last]</p>\r\n\r\n<h3 style=\"color: #764808; text-align: center;\">Brunch Specials</h3>\r\nEvery Saturday and Sunday enjoy a classic Belgian brunch — waffles, benedict or another of our specialities. We serve all styles of coffee and espresso and cocktails with a European twist.\r\n<p style=\"text-align: center;\">[button link=\"http://maxsonbroad.wpengine.com/?page_id=214\" color=\"#915a15 #ffffff\"] BRUNCH MENU [/button]\r\n[/one_half_last]</p>\r\n\r\n<h3 style=\"color: #764808; text-align: center;\">Lunch Specials</h3>\r\nMax\'s is a great Downtown lunch spot. Our menu features traditional seafood-based Belgian cuisine, like oysters, esgargots and waterzooi. We also have an extensive selection of appetizers, entrees, Belgian pub-style sandwiches and salads. Try the popular \"Pick 2\" plate with your favorite half sandwich and a choice of the soup of the day or salad. Join us downstairs or upstairs.\r\n<p style=\"text-align: center;\">[button link=\"http://maxsonbroad.wpengine.com/?page_id=69\" color=\"#915a15 #ffffff\"] LUNCH MENU [/button]</p>\r\n\r\n<div style=\"color: #764808;\">\r\n<h3>Craving a great Belgian beer &amp; Moules Frites?</h3>\r\n<a href=\"http://maxsonbroad.wpengine.com/?page_id=27\">Reserve your seat today!</a>\r\n\r\n</div>','Welcome to Max’s restaurant!','','publish','open','open','','sample-page','','','2014-04-23 14:13:42','2014-04-23 14:13:42','',0,'http://localhost/max-restaurant/?page_id=2',0,'page','',0);
INSERT INTO `jc_posts` VALUES (5,1,'2014-02-22 08:44:50','2014-02-22 08:44:50','','Max_Home_Working_01','','inherit','open','open','','max_home_working_01','','','2014-02-22 08:44:50','2014-02-22 08:44:50','',0,'http://localhost/max-restaurant/wp-content/uploads/2014/02/Max_Home_Working_01.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `jc_posts` VALUES (6,1,'2014-02-22 08:44:54','2014-02-22 08:44:54','','Max_Home_Working_02','','inherit','open','open','','max_home_working_02','','','2014-02-22 08:44:54','2014-02-22 08:44:54','',0,'http://localhost/max-restaurant/wp-content/uploads/2014/02/Max_Home_Working_02.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `jc_posts` VALUES (7,1,'2014-02-22 08:44:57','2014-02-22 08:44:57','','Max_Home_Working_03','','inherit','open','open','','max_home_working_03','','','2014-02-22 08:44:57','2014-02-22 08:44:57','',0,'http://localhost/max-restaurant/wp-content/uploads/2014/02/Max_Home_Working_03.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `jc_posts` VALUES (8,1,'2014-02-22 08:45:01','2014-02-22 08:45:01','','Max_Home_Working_04','','inherit','open','open','','max_home_working_04','','','2014-02-22 08:45:01','2014-02-22 08:45:01','',0,'http://localhost/max-restaurant/wp-content/uploads/2014/02/Max_Home_Working_04.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `jc_posts` VALUES (9,1,'2014-02-22 08:45:04','2014-02-22 08:45:04','','Max_Home_Working_05','','inherit','open','open','','max_home_working_05','','','2014-02-22 08:45:04','2014-02-22 08:45:04','',0,'http://localhost/max-restaurant/wp-content/uploads/2014/02/Max_Home_Working_05.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `jc_posts` VALUES (10,1,'2014-02-22 08:55:42','2014-02-22 08:55:42','','body-bg','','inherit','open','open','','body-bg','','','2014-02-22 08:55:42','2014-02-22 08:55:42','',0,'http://localhost/max-restaurant/wp-content/uploads/2014/02/body-bg.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `jc_posts` VALUES (11,1,'2014-02-22 09:14:47','2014-02-22 09:14:47','','sidebar','','inherit','open','open','','sidebar','','','2014-02-22 09:14:47','2014-02-22 09:14:47','',0,'http://localhost/max-restaurant/wp-content/uploads/2014/02/sidebar.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `jc_posts` VALUES (12,1,'2014-02-22 09:20:09','2014-02-22 09:20:09','','logo','','inherit','open','open','','logo','','','2014-02-22 09:20:09','2014-02-22 09:20:09','',0,'http://localhost/max-restaurant/wp-content/uploads/2014/02/logo.png',0,'attachment','image/png',0);
INSERT INTO `jc_posts` VALUES (17,1,'2014-02-22 09:56:26','2014-02-22 09:56:26','','welcome','','inherit','open','open','','welcome','','','2014-02-22 09:56:26','2014-02-22 09:56:26','',2,'http://localhost/max-restaurant/wp-content/uploads/2014/02/welcome.png',0,'attachment','image/png',0);
INSERT INTO `jc_posts` VALUES (25,1,'2014-02-22 10:05:34','2014-02-22 10:05:34','A new Belgian cuisine restaurant in downtown Richmond, Virginia from owner Ted Santarella.\r\n\r\n[caption id=\"attachment_217\" align=\"alignnone\" width=\"760\"]<a href=\"http://maxsonbroad.wpengine.com/wp-content/uploads/2014/02/mike-ledesma.jpg\"><img class=\"size-full wp-image-217\" alt=\"Via Richmond Times-Dispatch\" src=\"http://maxsonbroad.wpengine.com/wp-content/uploads/2014/02/mike-ledesma.jpg\" width=\"760\" height=\"483\" /></a> Via <em><a href=\"http://www.timesdispatch.com/multimedia/photos/entertainment-life/dining/dining-out-review-max-s-on-broad/collection_338c4bac-7f0c-11e3-9485-001a4bcf6878.html\">Richmond Times-Dispatch</a></em>[/caption]\r\n\r\nMike Ledesma, executive chef at Max\'s on Broad, holds moules (mussels) and pomme frites.\r\n\r\n&nbsp;','About','','publish','open','open','','about','','','2014-03-19 16:49:11','2014-03-19 16:49:11','',0,'http://localhost/max-restaurant/?page_id=25',0,'page','',0);
INSERT INTO `jc_posts` VALUES (27,1,'2014-02-22 10:06:24','2014-02-22 10:06:24','Reserve a table for your next birthday party, office luncheon or graduation celebration at Max\'s on Broad! \r\n\r\nTo make reservations, please call (804) 225-0400 or fill out the form below. You will receive a confirmation email or phone call with your reservation details.','Reservations','','publish','open','open','','reservations','','','2014-04-23 19:04:26','2014-04-23 19:04:26','',0,'http://localhost/max-restaurant/?page_id=27',0,'page','',0);
INSERT INTO `jc_posts` VALUES (29,1,'2014-02-22 10:06:47','2014-02-22 10:06:47','<h2>Check Out our 3D Tour</h2>\r\nClick around to tour the inside of the restaurant using Google 360 Tour.\r\n\r\n<iframe src=\"https://maps.google.com/maps?layer=c&amp;panoid=lWOOjmP458oAAAQJKhiAUA&amp;ie=UTF8&amp;source=embed&amp;output=svembed&amp;cbp=13%2C78%2C%2C0%2C-3.8900000000000006\" height=\"400\" width=\"100%\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\r\n<small><a href=\"https://www.google.com/maps/@37.546387,-77.442494,3a,75y,78h,93.89t/data=!3m5!1e1!3m3!1slWOOjmP458oAAAQJKhiAUA!2e0!3e2!6m1!1e1\">View Larger Map</a></small>','GALLERY','','publish','open','open','','gallery','','','2014-03-27 20:35:09','2014-03-27 20:35:09','',0,'http://localhost/max-restaurant/?page_id=29',0,'page','',0);
INSERT INTO `jc_posts` VALUES (31,1,'2014-02-22 10:07:09','2014-02-22 10:07:09','We are conveniently located in downtown Richmond and within walking distance of the Hilton Garden Inn, The Jefferson Hotel, The Greater Richmond Convention Center, the Visitors Center and Virginia Commonwealth University.\r\n\r\n<strong>Max\'s On Broad</strong>\r\n<em>305 Brook Rd\r\nRichmond, VA 23220</em>\r\n<div style=\"width: 100%; height: auto; overflow: hidden;\"><iframe src=\"https://maps.google.com/maps?q=305%20Brook%20Rd%20%2C%2023220%20Richmond&amp;t=m&amp;z=14&amp;ie=UTF8&amp;iwloc=&amp;output=embed\" height=\"500\" width=\"100%\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe><iframe src=\"http://www.embed-google-map.com/embed-map.php?get=map-data\" height=\"240\" width=\"320\" frameborder=\"0\"></iframe></div>','DIRECTIONS','','publish','open','open','','directions','','','2014-04-23 19:44:39','2014-04-23 19:44:39','',0,'http://localhost/max-restaurant/?page_id=31',0,'page','',0);
INSERT INTO `jc_posts` VALUES (33,1,'2014-02-22 10:07:36','2014-02-22 10:07:36','[pullquote aligntext=\'right\' alignblock=\'right\' cite=\'Mary Burruss, <a href=\"http://culturenuts.wordpress.com/tag/maxs-on-broad/\">Culture Nuts</a>\' style=\'style01\'] From the moment I stepped in the door I felt transformed to one of those comfy older French bistro’s in Manhattan with the octagon tile floors and iron, wood and brass elements in the decor. We sat upstairs and enjoyed a sumptuous meal of French Onion Soup and Cock au Vin with ricotta and fig crepes for dessert. Alex, our waiter was an impeccable server, friendly, efficient and informative without being intrusive. It was a wonderful experience and I WILL be back. — [/pullquote]\r\n<h3>Reviews of Max\'s on Broad!</h3>\r\n<a href=\"http://www.richmondmagazine.com/articles/best-new-restaurants-01-29-2014.html?page=9\">\"Best New Restaurants\" | <em>Richmond Magazine</em></a>\r\n<a href=\"http://rvanews.com/features/favorites-maxs-on-broads-thai-coconut-curry-moules-frites/109770\">\"Favorites: Max’s on Broad’s Thai coconut curry moules-frites\" | rvanews</a>\r\n<a href=\"http://www.timesdispatch.com/entertainment-life/food-dining/max-s-on-broad-brings-brussels-to-rva/article_4ac8344d-8713-5803-87cd-e8389267de61.html\">\"Max’s on Broad brings Brussels to RVA\" | <em>Richmond Times-Dispatch</em></a>\r\n<a href=\"http://www.richmond.com/food-drink/article_09338ed3-bd1e-57d8-8df0-f0f49c311ca3.html\">\"Max\'s on Broad Is Opening\" | Richmond.com</a>\r\n<a href=\"http://wtvr.com/2014/02/28/richmondbizsense-tarrants-west-henrico-county/\">\"Richmond Restauranteur to Take on West End\" | CBS 6</a>\r\n<a href=\"http://www.styleweekly.com/richmond/santas-little-helper/Content?oid=1992798\">\"Santa\'s Little Helper\" | Style Weekly</a>\r\n<a href=\"http://www.styleweekly.com/ShortOrderBlog/archives/2013/11/05/short-order\">\"Short Order\" | Style Weekly</a>','PRESS','','publish','open','open','','press','','','2014-03-19 19:05:04','2014-03-19 19:05:04','',0,'http://localhost/max-restaurant/?page_id=33',0,'page','',0);
INSERT INTO `jc_posts` VALUES (35,1,'2014-02-22 10:08:05','2014-02-22 10:08:05','[one_half]\r\n<h3>Have a question?</h3>\r\n<em>Send us a message using the form below!</em>\r\n\r\n[/one_half]\r\n\r\n[one_half_last]\r\n<strong>Max\'s on Broad</strong>\r\n305 Brook Road\r\nRichmond, VA 23220\r\ninfo@maxsonbroad.com\r\n(804) 225-0400\r\n[/one_half_last]\r\n','CONTACT','','publish','open','open','','contact','','','2014-04-23 19:50:25','2014-04-23 19:50:25','',0,'http://localhost/max-restaurant/?page_id=35',0,'page','',0);
INSERT INTO `jc_posts` VALUES (38,1,'2014-02-22 10:10:07','2014-02-22 10:10:07',' ','','','publish','open','open','','38','','','2014-05-01 20:55:25','2014-05-01 20:55:25','',0,'http://localhost/max-restaurant/?p=38',1,'nav_menu_item','',0);
INSERT INTO `jc_posts` VALUES (39,1,'2014-02-22 10:10:09','2014-02-22 10:10:09',' ','','','publish','open','open','','39','','','2014-05-01 20:55:26','2014-05-01 20:55:26','',0,'http://localhost/max-restaurant/?p=39',12,'nav_menu_item','',0);
INSERT INTO `jc_posts` VALUES (40,1,'2014-02-22 10:10:08','2014-02-22 10:10:08',' ','','','publish','open','open','','40','','','2014-05-01 20:55:26','2014-05-01 20:55:26','',0,'http://localhost/max-restaurant/?p=40',9,'nav_menu_item','',0);
INSERT INTO `jc_posts` VALUES (41,1,'2014-02-22 10:10:08','2014-02-22 10:10:08',' ','','','publish','open','open','','41','','','2014-05-01 20:55:26','2014-05-01 20:55:26','',0,'http://localhost/max-restaurant/?p=41',10,'nav_menu_item','',0);
INSERT INTO `jc_posts` VALUES (42,1,'2014-02-22 10:10:08','2014-02-22 10:10:08',' ','','','publish','open','open','','42','','','2014-05-01 20:55:26','2014-05-01 20:55:26','',0,'http://localhost/max-restaurant/?p=42',11,'nav_menu_item','',0);
INSERT INTO `jc_posts` VALUES (43,1,'2014-02-22 10:10:08','2014-02-22 10:10:08',' ','','','publish','open','open','','43','','','2014-05-01 20:55:26','2014-05-01 20:55:26','',0,'http://localhost/max-restaurant/?p=43',8,'nav_menu_item','',0);
INSERT INTO `jc_posts` VALUES (45,1,'2014-02-22 10:10:08','2014-02-22 10:10:08','','Menu','','publish','open','open','','menu','','','2014-05-01 20:55:25','2014-05-01 20:55:25','',0,'http://localhost/max-restaurant/?p=45',2,'nav_menu_item','',0);
INSERT INTO `jc_posts` VALUES (56,1,'2014-02-22 17:03:10','2014-02-22 17:03:10','','Max_Home_Working_01','','inherit','open','open','','max_home_working_01-2','','','2014-02-22 17:03:10','2014-02-22 17:03:10','',0,'http://maxsonbroad.wpengine.com/wp-content/uploads/2014/02/Max_Home_Working_011.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `jc_posts` VALUES (57,1,'2014-02-22 17:03:17','2014-02-22 17:03:17','','Max_Home_Working_02','','inherit','open','open','','max_home_working_02-2','','','2014-02-22 17:03:17','2014-02-22 17:03:17','',0,'http://maxsonbroad.wpengine.com/wp-content/uploads/2014/02/Max_Home_Working_021.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `jc_posts` VALUES (58,1,'2014-02-22 17:03:27','2014-02-22 17:03:27','','Max_Home_Working_03','','inherit','open','open','','max_home_working_03-2','','','2014-02-22 17:03:27','2014-02-22 17:03:27','',0,'http://maxsonbroad.wpengine.com/wp-content/uploads/2014/02/Max_Home_Working_031.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `jc_posts` VALUES (59,1,'2014-02-22 17:03:33','2014-02-22 17:03:33','','Max_Home_Working_04','','inherit','open','open','','max_home_working_04-2','','','2014-02-22 17:03:33','2014-02-22 17:03:33','',0,'http://maxsonbroad.wpengine.com/wp-content/uploads/2014/02/Max_Home_Working_041.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `jc_posts` VALUES (60,1,'2014-02-22 17:03:39','2014-02-22 17:03:39','','Max_Home_Working_05','','inherit','open','open','','max_home_working_05-2','','','2014-02-22 17:03:39','2014-02-22 17:03:39','',0,'http://maxsonbroad.wpengine.com/wp-content/uploads/2014/02/Max_Home_Working_051.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `jc_posts` VALUES (65,1,'2014-03-11 18:17:44','2014-03-11 18:17:44','local, cocktail sauce, lemon, mignonette, raw* or steamed','OYSTERS ON THE HALF SHELL','','publish','open','open','','oysters-on-the-half-shell','','','2014-03-11 18:34:04','2014-03-11 18:34:04','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=65',0,'food','',0);
INSERT INTO `jc_posts` VALUES (67,1,'2014-03-11 18:34:53','2014-03-11 18:34:53','pernod, creamed spinach, panko*','OYSTERS ROCKEFELLER','','publish','open','open','','oysters-rockefeller','','','2014-03-11 18:34:53','2014-03-11 18:34:53','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=67',0,'food','',0);
INSERT INTO `jc_posts` VALUES (69,1,'2014-03-11 18:37:10','2014-03-11 18:37:10','[foodmenu groups=\"lunch\" showtitles=0 showsubtitles=1]\r\n*eating raw or undercooked fish, shellfish, eggs, or meat increases the risk of foodborne illness','Lunch Menu','','publish','open','open','','lunch-menu','','','2014-03-11 18:38:27','2014-03-11 18:38:27','',0,'http://maxsonbroad.wpengine.com/?page_id=69',0,'page','',0);
INSERT INTO `jc_posts` VALUES (71,1,'2014-03-11 18:40:48','2014-03-11 18:40:48','¼ or ½ lb, old bay, cocktail sauce, drawn butter','STEAMED SHRIMP','','publish','open','open','','steamed-shrimp','','','2014-03-11 18:40:48','2014-03-11 18:40:48','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=71',0,'food','',0);
INSERT INTO `jc_posts` VALUES (72,1,'2014-03-11 18:41:17','2014-03-11 18:41:17','','SHRIMP COCKTAIL','','publish','open','open','','shrimp-cocktail','','','2014-03-11 18:41:17','2014-03-11 18:41:17','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=72',0,'food','',0);
INSERT INTO `jc_posts` VALUES (73,1,'2014-03-11 18:41:40','2014-03-11 18:41:40','jumbo lump crab, remoulade','CRAB LOUIE COCKTAIL','','publish','open','open','','crab-louie-cocktail','','','2014-03-11 18:41:40','2014-03-11 18:41:40','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=73',0,'food','',0);
INSERT INTO `jc_posts` VALUES (74,1,'2014-03-11 18:42:37','2014-03-11 18:42:37','provencale\r\nchorizo with tomato, onion, parsley, fennel\r\nthai coconut curry\r\nratatouille\r\nwhite wine, tarragon &amp; garlic\r\nHoegaarden, bacon &amp; onion\r\nfennel, cream &amp; pernod','MOULES (P.E.I. Mussels) & POMMES FRITES ','','publish','open','open','','moules-p-e-i-mussels-pommes-frites','','','2014-03-11 18:44:51','2014-03-11 18:44:51','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=74',0,'food','',0);
INSERT INTO `jc_posts` VALUES (75,1,'2014-03-11 18:43:13','2014-03-11 18:43:13','garlic, unfiltered olive oil, white bean, red pepper, lemon','GRILLED POINT JUDITH R.I. CALAMARI','','publish','open','open','','g-r-i-l-l-e-d-p-o-i-n-t-j-u-d-i-t-h-r-i-calamari','','','2014-03-11 18:45:58','2014-03-11 18:45:58','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=75',0,'food','',0);
INSERT INTO `jc_posts` VALUES (76,1,'2014-03-11 18:43:47','2014-03-11 18:43:47','old bay, bacon, leeks, potatoes, lobster cream, arugula','OYSTER PAN ROAST','','publish','open','open','','oyster-pan-roast','','','2014-03-11 18:43:47','2014-03-11 18:43:47','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=76',0,'food','',0);
INSERT INTO `jc_posts` VALUES (78,1,'2014-03-11 18:52:53','2014-03-11 18:52:53','','Lunch','','publish','open','open','','78','','','2014-05-01 20:55:25','2014-05-01 20:55:25','',0,'http://maxsonbroad.wpengine.com/?p=78',3,'nav_menu_item','',0);
INSERT INTO `jc_posts` VALUES (80,1,'2014-03-11 19:15:21','2014-03-11 19:15:21','add chicken $4, grilled shrimp $8, grilled calamari $6','','','publish','open','open','','80','','','2014-03-11 19:16:09','2014-03-11 19:16:09','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=80',0,'food','',0);
INSERT INTO `jc_posts` VALUES (81,1,'2014-03-11 19:17:58','2014-03-11 19:17:58','mixed greens, tomato, cucumber, red onion','SIDE SALAD','','publish','open','open','','side-salad','','','2014-03-11 19:17:58','2014-03-11 19:17:58','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=81',0,'food','',0);
INSERT INTO `jc_posts` VALUES (82,1,'2014-03-11 19:21:17','2014-03-11 19:21:17','romaine, tomato, cucumber, parmesan','CAESAR','','publish','open','open','','caesar','','','2014-03-11 19:21:17','2014-03-11 19:21:17','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=82',0,'food','',0);
INSERT INTO `jc_posts` VALUES (84,1,'2014-03-11 19:23:41','2014-03-11 19:23:41','bosc pear, goat cheese, candied pecan, tomato, cucumber, onion, passion fruit vinaigrette','PEAR & ARUGULA','','publish','open','open','','pear-arugula','','','2014-03-11 19:23:41','2014-03-11 19:23:41','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=84',0,'food','',0);
INSERT INTO `jc_posts` VALUES (85,1,'2014-03-11 19:25:50','2014-03-11 19:25:50','grilled tuna, bibb lettuce, boiled egg, olive, haricot vert, potato, grilled red onion, tomato, anchovy, balsamic vinaigrette dressing*','NICOISE','','publish','open','open','','nicoise','','','2014-03-11 19:25:50','2014-03-11 19:25:50','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=85',0,'food','',0);
INSERT INTO `jc_posts` VALUES (86,1,'2014-03-11 19:27:34','2014-03-11 19:27:34','maytag bleu cheese crumble, house made bacon, tomato, crouton, creamy buttermilk','BOSTON BIBB WEDGE','','publish','open','open','','boston-bibb-wedge','','','2014-03-11 19:27:34','2014-03-11 19:27:34','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=86',0,'food','',0);
INSERT INTO `jc_posts` VALUES (88,1,'2014-03-11 19:29:37','2014-03-11 19:29:37','roasted chicken, prosciutto, sausage, boiled egg, red onion, tomato, mixed greens, artisanal cheese','CHEF','','publish','open','open','','chef','','','2014-03-11 19:29:37','2014-03-11 19:29:37','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=88',0,'food','',0);
INSERT INTO `jc_posts` VALUES (89,1,'2014-03-11 19:30:43','2014-03-11 19:30:43','raisin, tomato, apricot, apple, strawberry, belgian endive, candied pecan, passion fruit vinaigrette, mixed greens','APPLE CURRY CHICKEN','','publish','open','open','','apple-curry-chicken','','','2014-03-11 19:30:43','2014-03-11 19:30:43','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=89',0,'food','',0);
INSERT INTO `jc_posts` VALUES (91,1,'2014-03-11 19:32:26','2014-03-11 19:32:26','bleu cheese, wild mushroom, bacon, squash, warm sherry vinaigrette','SPINACH','','publish','open','open','','spinach','','','2014-03-11 19:32:26','2014-03-11 19:32:26','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=91',0,'food','',0);
INSERT INTO `jc_posts` VALUES (93,1,'2014-03-11 19:39:36','2014-03-11 19:39:36','three-stage caramelized onion au gratin','FRENCH ONION SOUP','','publish','open','open','','french-onion-soup','','','2014-03-11 19:39:36','2014-03-11 19:39:36','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=93',0,'food','',0);
INSERT INTO `jc_posts` VALUES (94,1,'2014-03-11 19:40:25','2014-03-11 19:40:25','','SOUP DU JOUR','','publish','open','open','','soup-du-jour','','','2014-04-23 14:29:46','2014-04-23 14:29:46','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=94',0,'food','',0);
INSERT INTO `jc_posts` VALUES (95,1,'2014-03-11 19:43:55','2014-03-11 19:43:55','old bay, bacon, leeks, potatoes, lobster cream, arugula','OYSTER PAN ROAST','','publish','open','open','','oyster-pan-roast-2','','','2014-03-11 19:43:55','2014-03-11 19:43:55','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=95',0,'food','',0);
INSERT INTO `jc_posts` VALUES (96,1,'2014-03-11 19:44:56','2014-03-11 19:44:56','frites, cheese curds, gravy, truffle oil, crispy pork belly','POUTINE','','publish','open','open','','poutine','','','2014-03-11 19:44:56','2014-03-11 19:44:56','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=96',0,'food','',0);
INSERT INTO `jc_posts` VALUES (97,1,'2014-03-11 19:45:48','2014-03-11 19:45:48','choice of one:\r\nherb aioli\r\nbbq\r\nchipotle mayo\r\nsweet chili\r\npesto mayo\r\nparmesan peppercorn\r\ndill lemon mayo\r\nroasted beet horseradish mayo\r\ndijonaise','POMMES FRITES','','publish','open','open','','pommes-frites','','','2014-03-11 19:45:48','2014-03-11 19:45:48','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=97',0,'food','',0);
INSERT INTO `jc_posts` VALUES (98,1,'2014-03-11 19:46:59','2014-03-11 19:46:59','chef’s selection of artisanal cured meats &amp; cheeses','CHARCUTERIE PLATE','','publish','open','open','','charcuterie-plate','','','2014-05-01 19:12:56','2014-05-01 19:12:56','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=98',0,'food','',0);
INSERT INTO `jc_posts` VALUES (99,1,'2014-03-11 19:49:24','2014-03-11 19:49:24','seasonal fresh fruit &amp; artisanal cheese','FRUIT & CHEESE PLATE','','publish','open','open','','fruit-cheese-plate','','','2014-05-01 19:12:43','2014-05-01 19:12:43','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=99',0,'food','',0);
INSERT INTO `jc_posts` VALUES (102,1,'2014-03-11 19:51:42','2014-03-11 19:51:42','sea salt, unfiltered olive oil, crispy shallots,\r\negg yolk, pesto, orange, crostini*','STEAK TARTARE','','publish','open','open','','steak-tartare','','','2014-03-11 19:51:42','2014-03-11 19:51:42','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=102',0,'food','',0);
INSERT INTO `jc_posts` VALUES (103,1,'2014-03-11 19:52:17','2014-03-11 19:52:17','garlic, butter, toast points','ESCARGOTS','','publish','open','open','','escargots','','','2014-03-11 19:52:17','2014-03-11 19:52:17','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=103',0,'food','',0);
INSERT INTO `jc_posts` VALUES (104,1,'2014-03-11 19:53:15','2014-03-11 19:53:15','gruyere, eggplant, zucchini, squash, tomato, onion','RATATOUILLE AU GRATIN','','publish','open','open','','ratatouille-au-gratin','','','2014-05-01 19:12:31','2014-05-01 19:12:31','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=104',0,'food','',0);
INSERT INTO `jc_posts` VALUES (105,1,'2014-03-11 19:55:31','2014-03-11 19:55:31','salami, ham, peperoncini, swiss, housemade pickles,\r\npomery mustard','CHARCUTERIE WRAP','','publish','open','open','','charcuterie-wrap','','','2014-03-11 19:55:31','2014-03-11 19:55:31','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=105',0,'food','',0);
INSERT INTO `jc_posts` VALUES (106,1,'2014-03-11 19:56:07','2014-03-11 19:56:07','chicken, swiss, ham, dijon, lettuce, tomato','CORDON BLEU WRAP','','publish','open','open','','cordon-bleu-wrap','','','2014-03-11 19:56:07','2014-03-11 19:56:07','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=106',0,'food','',0);
INSERT INTO `jc_posts` VALUES (107,1,'2014-03-11 19:57:23','2014-03-11 19:57:23','grilled organic salmon, cucumber, bacon, croissant','SALMON PAILLARD CLUB','','publish','open','open','','salmon-paillard-club','','','2014-03-11 19:57:23','2014-03-11 19:57:23','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=107',0,'food','',0);
INSERT INTO `jc_posts` VALUES (108,1,'2014-03-11 19:57:55','2014-03-11 19:57:55','caramelized onions, gruyere, chipotle aioli, baguette','NY STRIP STEAK TARTINE','','publish','open','open','','ny-strip-steak-tartine','','','2014-03-11 19:57:55','2014-03-11 19:57:55','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=108',0,'food','',0);
INSERT INTO `jc_posts` VALUES (109,1,'2014-03-11 19:59:13','2014-03-11 19:59:13','ham, swiss, mornay, baguette or','CROQUE MONSIEUR','','publish','open','open','','croque-monsieur','','','2014-03-11 19:59:13','2014-03-11 19:59:13','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=109',0,'food','',0);
INSERT INTO `jc_posts` VALUES (110,1,'2014-03-11 19:59:53','2014-03-11 19:59:53','with fried egg*','CROQUE MADAME','','publish','open','open','','croque-madame','','','2014-03-11 19:59:53','2014-03-11 19:59:53','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=110',0,'food','',0);
INSERT INTO `jc_posts` VALUES (111,1,'2014-03-11 20:01:05','2014-03-11 20:01:05','8 oz ground chuck, brioche roll','HAMBURGER','','publish','open','open','','hamburger','','','2014-03-11 20:01:05','2014-03-11 20:01:05','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=111',0,'food','',0);
INSERT INTO `jc_posts` VALUES (112,1,'2014-03-11 20:01:49','2014-03-11 20:01:49','brioche french toast, gruyere, ham, turkey, marmalade','MONTE CRISTO','','publish','open','open','','monte-cristo','','','2014-03-11 20:01:49','2014-03-11 20:01:49','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=112',0,'food','',0);
INSERT INTO `jc_posts` VALUES (114,1,'2014-03-11 20:03:14','2014-03-11 20:03:14','gruyere, red onion, horseradish, baguette','FRENCH DIP','','publish','open','open','','french-dip','','','2014-03-11 20:03:14','2014-03-11 20:03:14','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=114',0,'food','',0);
INSERT INTO `jc_posts` VALUES (115,1,'2014-03-11 20:03:51','2014-03-11 20:03:51','turkey, ham, bacon, swiss, cheddar, lettuce,\r\ntomato, mayo, multigrain','CLUB','','publish','open','open','','club','','','2014-05-01 19:22:03','2014-05-01 19:22:03','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=115',0,'food','',0);
INSERT INTO `jc_posts` VALUES (116,1,'2014-03-11 20:04:31','2014-03-11 20:04:31','ham, cheddar, egg, tomato, brioche*','GASHOUSE GRILLED CHEESE','','publish','open','open','','gashouse-grilled-cheese','','','2014-03-11 20:04:31','2014-03-11 20:04:31','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=116',0,'food','',0);
INSERT INTO `jc_posts` VALUES (117,1,'2014-03-11 20:05:08','2014-03-11 20:05:08','fennel, brie, salami, baguette','SALAMI & CHEESE MELT','','publish','open','open','','salami-cheese-melt','','','2014-03-11 20:05:08','2014-03-11 20:05:08','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=117',0,'food','',0);
INSERT INTO `jc_posts` VALUES (118,1,'2014-03-11 20:05:43','2014-03-11 20:05:43','muenster, onion, roasted red pepper, brioche','TURKEY MUSHROOM BURGER','','publish','open','open','','turkey-mushroom-burger','','','2014-03-11 20:05:43','2014-03-11 20:05:43','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=118',0,'food','',0);
INSERT INTO `jc_posts` VALUES (119,1,'2014-03-11 20:06:21','2014-03-11 20:06:21','lettuce, raisins, tomato on croissant','APPLE CURRY CHICKEN SALAD ','','publish','open','open','','apple-curry-chicken-salad','','','2014-03-11 20:06:21','2014-03-11 20:06:21','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=119',0,'food','',0);
INSERT INTO `jc_posts` VALUES (120,1,'2014-03-11 20:06:54','2014-03-11 20:06:54','brie, arugula, pesto mayo, roasted red peppers, brioche','GRILLED CHICKEN','','publish','open','open','','grilled-chicken','','','2014-03-11 20:06:54','2014-03-11 20:06:54','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=120',0,'food','',0);
INSERT INTO `jc_posts` VALUES (121,1,'2014-03-11 20:07:25','2014-03-11 20:07:25','muenster, tomato, artichoke hearts, baguette','SLOW ROASTED TURKEY','','publish','open','open','','slow-roasted-turkey','','','2014-03-11 20:07:25','2014-03-11 20:07:25','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=121',0,'food','',0);
INSERT INTO `jc_posts` VALUES (123,1,'2014-03-11 20:10:55','2014-03-11 20:10:55','Fennel Apple Slaw, Pommes Frites, Mashed Potatoes, rice\r\nSauteed Spinach, Ratatouille,\r\nMac &amp; Cheese, Asparagus, fruit, side salad\r\nBeets, Virginia Style Braised Kale, fresh cut chips','','','publish','open','open','','123','','','2014-05-01 19:34:45','2014-05-01 19:34:45','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=123',0,'food','',0);
INSERT INTO `jc_posts` VALUES (124,1,'2014-03-11 20:13:15','2014-03-11 20:13:15','vegetables, aged white cheddar, frites','CHICKEN CREPE','','publish','open','open','','chicken-crepe','','','2014-05-01 19:29:36','2014-05-01 19:29:36','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=124',0,'food','',0);
INSERT INTO `jc_posts` VALUES (125,1,'2014-03-11 20:14:55','2014-03-11 20:14:55','acorn squash, zucchini, eggplant, red onion, feta, frites','ROASTED VEGETABLE CREPE','','publish','open','open','','roasted-vegetable-crepe','','','2014-05-01 19:29:26','2014-05-01 19:29:26','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=125',0,'food','',0);
INSERT INTO `jc_posts` VALUES (129,1,'2014-03-11 20:17:08','2014-03-11 20:17:08','Belgian beer-battered cod, fennel apple relish, old bay remoulade','FISH & CHIPS','','publish','open','open','','fish-chips','','','2014-03-11 20:17:08','2014-03-11 20:17:08','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=129',0,'food','',0);
INSERT INTO `jc_posts` VALUES (133,1,'2014-03-11 20:21:15','2014-03-11 20:21:15','strip, pomme frites, seasonal vegetable; choice of: cabernet veal jus, mushroom &amp; onion, herb garlic butter*','STEAK FRITES NY','','publish','open','open','','steak-frites-ny','','','2014-03-19 15:59:17','2014-03-19 15:59:17','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=133',0,'food','',0);
INSERT INTO `jc_posts` VALUES (138,1,'2014-03-11 20:24:41','2014-03-11 20:24:41','eggplant, zucchini, squash, tomato, onion, peppers, feta, garlic','PASTA PRIMAVERA','','publish','open','open','','pasta-primavera','','','2014-03-11 20:24:41','2014-03-11 20:24:41','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=138',0,'food','',0);
INSERT INTO `jc_posts` VALUES (141,1,'2014-03-19 07:50:13','2014-03-19 07:50:13','three-stage caramelized onion au gratin','FRENCH ONION SOUP','','publish','open','open','','french-onion-soup-2','','','2014-03-19 07:59:27','2014-03-19 07:59:27','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=141',0,'food','',0);
INSERT INTO `jc_posts` VALUES (144,1,'2014-03-19 08:02:46','2014-03-19 08:02:46','','SOUP DU JOUR','','publish','open','open','','soup-du-jour-2','','','2014-04-23 14:29:40','2014-04-23 14:29:40','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=144',0,'food','',0);
INSERT INTO `jc_posts` VALUES (145,1,'2014-03-19 08:06:22','2014-03-19 08:06:22','old bay, bacon, leeks, potatoes, lobster cream, arugula','OYSTER PAN ROAST','','publish','open','open','','oy-s-t-e-r-pan-roast','','','2014-03-19 16:01:47','2014-03-19 16:01:47','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=145',0,'food','',0);
INSERT INTO `jc_posts` VALUES (146,1,'2014-03-19 08:07:16','2014-03-19 08:07:16','frites, cheese curds, gravy, truffle oil, crispy pork belly','POUTINE','','publish','open','open','','poutine-2','','','2014-03-19 08:07:16','2014-03-19 08:07:16','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=146',0,'food','',0);
INSERT INTO `jc_posts` VALUES (147,1,'2014-03-19 08:08:04','2014-03-19 08:08:04','choice of one:\r\nherb aioli\r\nchipotle mayo\r\nsweet chili\r\npesto mayo\r\nparmesan peppercorn\r\nbbq\r\ndill lemon mayo\r\nroasted beet horseradish mayo\r\ndijonaise','POMMES FRITES','','publish','open','open','','pommes-frites-2','','','2014-03-19 08:08:04','2014-03-19 08:08:04','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=147',0,'food','',0);
INSERT INTO `jc_posts` VALUES (148,1,'2014-03-19 08:09:39','2014-03-19 08:09:39','chef’s selection of artisanal cured meats &amp; cheeses','CHARCUTERIE PLATE','','publish','open','open','','charc-u-t-e-r-i-e-p-l-ate','','','2014-05-01 18:36:47','2014-05-01 18:36:47','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=148',0,'food','',0);
INSERT INTO `jc_posts` VALUES (149,1,'2014-03-19 08:10:19','2014-03-19 08:10:19','seasonal fresh fruit &amp; artisanal cheese','FRUIT & CHEESE PLATE','','publish','open','open','','fru-i-t-c-h-e-e-s-e-p-l-ate','','','2014-05-01 18:37:10','2014-05-01 18:37:10','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=149',0,'food','',0);
INSERT INTO `jc_posts` VALUES (150,1,'2014-03-19 08:11:53','2014-03-19 08:11:53','pan seared, black currant balsamic reduction, brioche toast, apples','FOIE GRAS','','publish','open','open','','f-o-i-e-g-r-a-s','','','2014-05-01 18:34:31','2014-05-01 18:34:31','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=150',0,'food','',0);
INSERT INTO `jc_posts` VALUES (152,1,'2014-03-19 08:16:25','2014-03-19 08:16:25','sea salt, unfiltered olive oil, crispy shallots, egg yolk, pesto, orange, crostini*','STEAK TARTARE','','publish','open','open','','s-t-e-a-k-tartare','','','2014-03-19 16:04:26','2014-03-19 16:04:26','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=152',0,'food','',0);
INSERT INTO `jc_posts` VALUES (153,1,'2014-03-19 08:17:13','2014-03-19 08:17:13','garlic, butter, toast points','ESCARGOTS','','publish','open','open','','escargots-2','','','2014-03-19 08:17:13','2014-03-19 08:17:13','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=153',0,'food','',0);
INSERT INTO `jc_posts` VALUES (154,1,'2014-03-19 08:17:55','2014-03-19 08:17:55','gruyere, eggplant, zucchini, squash, tomato, onion','RATATOUILLE AU GRATIN','','publish','open','open','','ratat-o-u-i-l-l-e-au-gratin','','','2014-03-19 16:07:51','2014-03-19 16:07:51','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=154',0,'food','',0);
INSERT INTO `jc_posts` VALUES (156,1,'2014-03-19 08:25:34','2014-03-19 08:25:34','poached, florentine, puff pastry, lobster fennel cream, vegetables, rice','SALMON NAPOLEON','','publish','open','open','','organic-salmon-napoleon','','','2014-05-01 18:27:27','2014-05-01 18:27:27','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=156',0,'food','',0);
INSERT INTO `jc_posts` VALUES (158,1,'2014-03-19 14:08:54','2014-03-19 14:08:54','tomato confit, succotash, wild rice, haricot vert*','GRILLED AHI TUNA','','publish','open','open','','grilled-ahi-tuna-2','','','2014-03-19 14:08:54','2014-03-19 14:08:54','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=158',0,'food','',0);
INSERT INTO `jc_posts` VALUES (159,1,'2014-03-19 14:11:11','2014-03-19 14:11:11','Belgian beer-battered cod, fennel apple slaw, old bay remoulade','FISH & CHIPS','','publish','open','open','','fish-chips-2','','','2014-03-19 14:11:11','2014-03-19 14:11:11','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=159',0,'food','',0);
INSERT INTO `jc_posts` VALUES (161,1,'2014-03-19 14:13:18','2014-03-19 14:13:18','(traditional Belgium cuisine) catch of the day, lump crab meat, leek, carrot, celery, yukon potato, cream sauce','WATERZOOI ','','publish','open','open','','waterzooi-2','','','2014-05-01 18:28:15','2014-05-01 18:28:15','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=161',0,'food','',0);
INSERT INTO `jc_posts` VALUES (163,1,'2014-03-19 14:19:40','2014-03-19 14:19:40','slow simmered beef, burgundy, roasted garlic, mushrooms, lima beans, peas, baby carrots, pearl onions, pappardelle pasta','CARBONADE FLAMANDE ','','publish','open','open','','carbonade-flamande-2','','','2014-03-19 14:19:40','2014-03-19 14:19:40','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=163',0,'food','',0);
INSERT INTO `jc_posts` VALUES (165,1,'2014-03-19 14:21:59','2014-03-19 14:21:59','Strip, pommes frites; choice of: cabernet veal jus, mushroom &amp; onion, bernaise sauce, herb garlic butter*','STEAK FRITES NY ','','publish','open','open','','steak-frites-ny-2','','','2014-03-19 14:21:59','2014-03-19 14:21:59','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=165',0,'food','',0);
INSERT INTO `jc_posts` VALUES (166,1,'2014-03-19 14:22:44','2014-03-19 14:22:44','jumbo lump crab, roasted red potatoes, asparagus, bernaise*','FILET MIGNON OSCAR ','','publish','open','open','','filet-mignon-oscar','','','2014-03-19 14:22:44','2014-03-19 14:22:44','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=166',0,'food','',0);
INSERT INTO `jc_posts` VALUES (169,1,'2014-03-19 14:26:34','2014-03-19 14:26:34','cherry bourbon sauce, asparagus, roasted rosemary potatoes,\r\nbalsamic reduction*','PAN ROASTED DUCK BREAST ','','publish','open','open','','pan-roasted-duck-breast-2','','','2014-03-19 14:26:34','2014-03-19 14:26:34','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=169',0,'food','',0);
INSERT INTO `jc_posts` VALUES (170,1,'2014-03-19 14:27:34','2014-03-19 14:27:34','ratatouille, whipped mashed potatoes, jus','8-HOUR BELGIAN BEER BRAISED SHORT RIBS ','','publish','open','open','','8-hour-belgian-beer-braised-short-r-i-b-s','','','2014-03-19 16:10:09','2014-03-19 16:10:09','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=170',0,'food','',0);
INSERT INTO `jc_posts` VALUES (171,1,'2014-03-19 14:28:10','2014-03-19 14:28:10','herb dijon crusted, asparagus, potato dauphinois, mint oil*','ROASTED RACK OF LAMB','','publish','open','open','','roasted-rack-of-lamb','','','2014-03-19 14:28:10','2014-03-19 14:28:10','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=171',0,'food','',0);
INSERT INTO `jc_posts` VALUES (175,1,'2014-03-19 14:31:58','2014-03-19 14:31:58','eggplant, zucchini, squash, tomato, onion, peppers, feta, garlic','PASTA PRIMAVERA ','','publish','open','open','','pasta-primavera-2','','','2014-03-19 14:31:58','2014-03-19 14:31:58','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=175',0,'food','',0);
INSERT INTO `jc_posts` VALUES (178,1,'2014-03-19 14:39:18','2014-03-19 14:39:18','8 oz certified angus beef, brioche roll;','HAMBURGER','','publish','open','open','','hamburger-2','','','2014-03-19 14:39:18','2014-03-19 14:39:18','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=178',0,'food','',0);
INSERT INTO `jc_posts` VALUES (179,1,'2014-03-19 14:40:08','2014-03-19 14:40:08','gruyere, red onion, horseradish, baguette','FRENCH DIP','','publish','open','open','','french-di-p','','','2014-03-19 16:11:24','2014-03-19 16:11:24','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=179',0,'food','',0);
INSERT INTO `jc_posts` VALUES (181,1,'2014-03-19 14:42:06','2014-03-19 14:42:06','ham, swiss, cheddar, egg, tomato, brioche*','GASHOUSE GRILLED CHEESE','','publish','open','open','','gashous-e-g-r-i-l-l-e-d-c-h-e-e-s-e','','','2014-03-19 16:11:42','2014-03-19 16:11:42','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=181',0,'food','',0);
INSERT INTO `jc_posts` VALUES (183,1,'2014-03-19 14:43:49','2014-03-19 14:43:49','muenster, mushroom, onion,\r\nroasted red pepper, brioche','TURKEY MUSHROOM BURGER','','publish','open','open','','turkey-mushroom-burger-2','','','2014-03-19 14:43:49','2014-03-19 14:43:49','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=183',0,'food','',0);
INSERT INTO `jc_posts` VALUES (184,1,'2014-03-19 14:45:09','2014-03-19 14:45:09','lettuce, raisins, tomato on croissant','APPLE CURRY CHICKEN SALAD','','publish','open','open','','apple-curry-c-h-i-c-k-e-n-salad','','','2014-03-19 16:12:05','2014-03-19 16:12:05','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=184',0,'food','',0);
INSERT INTO `jc_posts` VALUES (185,1,'2014-03-19 14:45:47','2014-03-19 14:45:47','brie, arugula, pesto mayo, roasted red peppers, brioche','GRILLED CHICKEN','','publish','open','open','','grilled-chicken-2','','','2014-03-19 14:45:47','2014-03-19 14:45:47','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=185',0,'food','',0);
INSERT INTO `jc_posts` VALUES (188,1,'2014-03-19 14:48:28','2014-03-19 14:48:28','Fennel Apple Slaw, Pommes Frites, Mashed Potatoes, Rice, Sauteed Spinach, Ratatouille, Mac &amp;\r\nCheese, Vegetable medley, Fruit, Side Salad, Beets, Virginia Style Braised Kale, Fresh Cut Chips','','','publish','open','open','','188','','','2014-05-01 18:23:55','2014-05-01 18:23:55','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=188',0,'food','',0);
INSERT INTO `jc_posts` VALUES (189,1,'2014-03-19 14:50:24','2014-03-19 14:50:24','local, cocktail sauce, lemon, mignonette*\r\n','OYSTERS ON THE HALF SHELL','','publish','open','open','','oy-s-t-e-r-s-o-n-t-h-e-half-shell','','','2014-03-19 16:06:23','2014-03-19 16:06:23','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=189',0,'food','',0);
INSERT INTO `jc_posts` VALUES (190,1,'2014-03-19 14:51:06','2014-03-19 14:51:06','pernod, creamed spinach, panko*','OYSTERS ROCKEFELLER','','publish','open','open','','oy-s-t-e-r-s-rockefeller','','','2014-03-19 16:06:42','2014-03-19 16:06:42','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=190',0,'food','',0);
INSERT INTO `jc_posts` VALUES (193,1,'2014-03-19 14:53:56','2014-03-19 14:53:56','½ or ¼ lb, old bay, cocktail sauce, drawn butter','STEAMED SHRIMP','','publish','open','open','','steamed-shrimp-2','','','2014-03-19 14:53:56','2014-03-19 14:53:56','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=193',0,'food','',0);
INSERT INTO `jc_posts` VALUES (194,1,'2014-03-19 14:54:38','2014-03-19 14:54:38','','SHRIMP COCKTA I L','','publish','open','open','','shrimp-cockta-i-l','','','2014-03-19 14:54:38','2014-03-19 14:54:38','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=194',0,'food','',0);
INSERT INTO `jc_posts` VALUES (195,1,'2014-03-19 14:55:38','2014-03-19 14:55:38','jumbo lump crab, remoulade','CRAB LOUIE COCKTA I L','','publish','open','open','','crab-louie-cockta-i-l','','','2014-03-19 14:55:38','2014-03-19 14:55:38','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=195',0,'food','',0);
INSERT INTO `jc_posts` VALUES (196,1,'2014-03-19 14:56:22','2014-03-19 14:56:22','provencale\r\nchorizo with tomato, onion, parsley, fennel\r\nthai coconut curry\r\nratatouille\r\nwhite wine, tarragon &amp; garlic\r\nHoegaarden, bacon &amp; onion\r\nfennel, cream &amp; pernod','MOULES (P.E .I . Mussels ) & POMMES FRITES','','publish','open','open','','m-o-u-l-e-s-p-e-i-mu-s-s-e-l-s-p-o-m-m-e-s-f-r-i-t-e-s','','','2014-03-19 16:07:28','2014-03-19 16:07:28','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=196',0,'food','',0);
INSERT INTO `jc_posts` VALUES (197,1,'2014-03-19 14:57:16','2014-03-19 14:57:16','garlic, unfiltered olive oil, white bean, red pepper, lemon','GRILLED POINT JUDITH R.I. CALAMARI','','publish','open','open','','g-r-i-l-l-e-d-p-o-i-n-t-j-u-dith-r-i-c-a-l-a-m-a-r-i','','','2014-03-19 16:08:48','2014-03-19 16:08:48','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=197',0,'food','',0);
INSERT INTO `jc_posts` VALUES (198,1,'2014-03-19 14:57:59','2014-03-19 14:57:59','old bay, bacon, leeks, potatoes, lobster cream, arugula','OYSTER PAN ROAST','','publish','open','open','','oy-s-t-e-r-pan-roast-2','','','2014-03-19 16:09:11','2014-03-19 16:09:11','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=198',0,'food','',0);
INSERT INTO `jc_posts` VALUES (200,1,'2014-03-19 15:01:45','2014-03-19 15:01:45','add chicken $4, shrimp $8, calamari $6,\r\nsteak $14, salmon $13','','','publish','open','open','','200','','','2014-05-01 18:19:06','2014-05-01 18:19:06','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=200',0,'food','',0);
INSERT INTO `jc_posts` VALUES (201,1,'2014-03-19 15:03:19','2014-03-19 15:03:19','mixed greens, tomato, cucumber, red onion','SIDE SALAD','','publish','open','open','','s-i-d-e-salad','','','2014-03-19 16:10:27','2014-03-19 16:10:27','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=201',0,'food','',0);
INSERT INTO `jc_posts` VALUES (202,1,'2014-03-19 15:04:08','2014-03-19 15:04:08','romaine, tomato, cucumber, parmesan','CAESAR','','publish','open','open','','caesar-2','','','2014-03-19 15:04:08','2014-03-19 15:04:08','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=202',0,'food','',0);
INSERT INTO `jc_posts` VALUES (204,1,'2014-03-19 15:05:59','2014-03-19 15:05:59','bosc pear, goat cheese, candied pecans, tomatos, cucumbers,\r\nonions, passion fruit vinaigrette','PEAR & ARUGULA','','publish','open','open','','pear-arugula-2','','','2014-03-19 15:05:59','2014-03-19 15:05:59','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=204',0,'food','',0);
INSERT INTO `jc_posts` VALUES (205,1,'2014-03-19 15:06:50','2014-03-19 15:06:50','grilled tuna, bibb lettuce, boiled egg, olive,\r\nharicot verts, potatoes, grilled red onions,\r\ntomatoes, anchovies, balsamic vinaigrette*','NICOISE','','publish','open','open','','nicoise-2','','','2014-03-19 15:06:50','2014-03-19 15:06:50','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=205',0,'food','',0);
INSERT INTO `jc_posts` VALUES (206,1,'2014-03-19 15:07:53','2014-03-19 15:07:53','bleu cheese, house made\r\nbacon, tomatoes, croutons,\r\ncreamy buttermilk','BOSTON BIBB WEDGE','','publish','open','open','','boston-bibb-wedge-2','','','2014-03-19 15:07:53','2014-03-19 15:07:53','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=206',0,'food','',0);
INSERT INTO `jc_posts` VALUES (207,1,'2014-03-19 15:08:58','2014-03-19 15:08:58','4 oz beef tenderloin, roasted asparagus, bleu cheese, cucumber, crispy shallots, tomato, balsamic reduction*','PETIT FILET','','publish','open','open','','petit-filet','','','2014-05-01 18:21:34','2014-05-01 18:21:34','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=207',0,'food','',0);
INSERT INTO `jc_posts` VALUES (208,1,'2014-03-19 15:09:59','2014-03-19 15:09:59','roasted chicken, prosciutto, sausage, boiled egg,\r\nred onion, tomato, mixed greens, artisanal cheese','CHEF','','publish','open','open','','chef-2','','','2014-03-19 15:09:59','2014-03-19 15:09:59','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=208',0,'food','',0);
INSERT INTO `jc_posts` VALUES (209,1,'2014-03-19 15:10:47','2014-03-19 15:10:47','raisins, tomatoes, apricots, apples, strawberries,\r\nbelgian endive, candied pecans,\r\npassion fruit vinaigrette, mixed greens','APPLE CURRY CHICKEN','','publish','open','open','','apple-curry-chicken-2','','','2014-03-19 15:10:47','2014-03-19 15:10:47','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=209',0,'food','',0);
INSERT INTO `jc_posts` VALUES (210,1,'2014-03-19 15:11:43','2014-03-19 15:11:43','goat cheese, arugula, candied pecans, lemon honey dressing','BEET CARPACCIO','','publish','open','open','','beet-carpaccio','','','2014-05-01 18:20:46','2014-05-01 18:20:46','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=210',0,'food','',0);
INSERT INTO `jc_posts` VALUES (211,1,'2014-03-19 15:12:25','2014-03-19 15:12:25','bleu cheese, wild mushroom, bacon, squash,\r\nwarm sherry vinaigrette','SPINACH','','publish','open','open','','s-p-i-nach','','','2014-03-19 16:11:06','2014-03-19 16:11:06','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=211',0,'food','',0);
INSERT INTO `jc_posts` VALUES (212,1,'2014-03-19 16:00:49','2014-03-19 16:00:49','[foodmenu groups=\"dinner\" showtitles=0 showsubtitles=1]\r\n*eating raw or undercooked fish, shellfish, eggs, or meat increases the risk of foodborne illness','Dinner Menu','','publish','open','open','','dinner-menu','','','2014-03-19 16:00:49','2014-03-19 16:00:49','',0,'http://maxsonbroad.wpengine.com/?page_id=212',0,'page','',0);
INSERT INTO `jc_posts` VALUES (213,1,'2014-03-19 16:13:30','2014-03-19 16:13:30','','Dinner','','publish','open','open','','dinner','','','2014-05-01 20:55:26','2014-05-01 20:55:26','',0,'http://maxsonbroad.wpengine.com/?p=213',5,'nav_menu_item','',0);
INSERT INTO `jc_posts` VALUES (214,1,'2014-03-19 16:14:09','2014-03-19 16:14:09','[foodmenu groups=\"brunch\" showtitles=0 showsubtitles=1]\r\n*eating raw or undercooked fish, shellfish, eggs, or meat increases the risk of foodborne illness','Brunch Menu','','publish','open','open','','brunch-menu','','','2014-03-19 16:14:09','2014-03-19 16:14:09','',0,'http://maxsonbroad.wpengine.com/?page_id=214',0,'page','',0);
INSERT INTO `jc_posts` VALUES (215,1,'2014-03-19 16:38:13','2014-03-19 16:38:13','','Brunch','','publish','open','open','','215','','','2014-05-01 20:55:26','2014-05-01 20:55:26','',0,'http://maxsonbroad.wpengine.com/?p=215',4,'nav_menu_item','',0);
INSERT INTO `jc_posts` VALUES (217,1,'2014-03-19 16:48:03','2014-03-19 16:48:03','','mike-ledesma','Via <em><a href=\"http://www.timesdispatch.com/multimedia/photos/entertainment-life/dining/dining-out-review-max-s-on-broad/collection_338c4bac-7f0c-11e3-9485-001a4bcf6878.html\">Richmond Times-Dispatch</a></em>','inherit','open','open','','mike-ledesma','','','2014-03-19 16:48:03','2014-03-19 16:48:03','',25,'http://maxsonbroad.wpengine.com/wp-content/uploads/2014/02/mike-ledesma.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `jc_posts` VALUES (219,1,'2014-03-20 17:29:15','2014-03-20 17:29:15','fresh fruit, home fries, goat cheese,\r\nEnglish muffin','SMOKED SALMON & SCRAMBLED EGGS','','publish','open','open','','smoked-salmon-scrambled-eggs','','','2014-03-20 17:29:15','2014-03-20 17:29:15','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=219',0,'food','',0);
INSERT INTO `jc_posts` VALUES (220,1,'2014-03-20 17:30:10','2014-03-20 17:30:10','4 oz beef tenderloin, eggs any style, pommes frites, fruit','STEAK & EGGS','','publish','open','open','','s-t-e-a-k-e-g-g-s','','','2014-05-01 18:39:06','2014-05-01 18:39:06','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=220',0,'food','',0);
INSERT INTO `jc_posts` VALUES (221,1,'2014-03-20 17:32:48','2014-03-20 17:32:48','fruit, home fries, pancakes,\r\nchoice of: sausage, bacon, Canadian bacon','EGGS ANY STYLE','','publish','open','open','','eggs-any-style','','','2014-03-20 17:32:48','2014-03-20 17:32:48','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=221',0,'food','',0);
INSERT INTO `jc_posts` VALUES (222,1,'2014-03-20 17:34:11','2014-03-20 17:34:11','fruit, maple syrup','BRIOCHE FRENCH TOAST','','publish','open','open','','brioche-french-toast','','','2014-03-20 17:34:11','2014-03-20 17:34:11','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=222',0,'food','',0);
INSERT INTO `jc_posts` VALUES (223,1,'2014-03-20 17:34:54','2014-03-20 17:34:54','Greek yogurt, honey, granola, mixed berries','FRUIT PARFAIT','','publish','open','open','','fruit-parfait','','','2014-03-20 17:34:54','2014-03-20 17:34:54','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=223',0,'food','',0);
INSERT INTO `jc_posts` VALUES (224,1,'2014-03-20 17:35:39','2014-03-20 17:35:39','everything bagel, smoked salmon, herb cream cheese, capers, onion, cucumbers, hard boiled egg, lettuce, tomato, red onions, fruit','BAGEL & LOX','','publish','open','open','','bagel-lox','','','2014-05-01 18:39:59','2014-05-01 18:39:59','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=224',0,'food','',0);
INSERT INTO `jc_posts` VALUES (225,1,'2014-03-20 17:37:21','2014-03-20 17:37:21','pommes frites, cheese curd, chicken gravy,\r\ntruffle oil, pork belly, fried egg','BREAKFAST POUTINE','','publish','open','open','','breakfast-poutine','','','2014-03-20 17:37:21','2014-03-20 17:37:21','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=225',0,'food','',0);
INSERT INTO `jc_posts` VALUES (226,1,'2014-03-20 17:38:08','2014-03-20 17:38:08','fried eggs, fruit, English muffin','SHORT RIBHASH','','publish','open','open','','short-ribhash','','','2014-03-20 17:38:08','2014-03-20 17:38:08','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=226',0,'food','',0);
INSERT INTO `jc_posts` VALUES (227,1,'2014-03-20 17:40:09','2014-03-20 17:40:09','served on an English muffin\r\nw/ fruit &amp; home fries','','','publish','open','open','','227','','','2014-03-20 17:40:09','2014-03-20 17:40:09','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=227',0,'food','',0);
INSERT INTO `jc_posts` VALUES (228,1,'2014-03-20 17:40:51','2014-03-20 17:40:51','poached eggs, smoked salmon, hollandaise','SMOKED SALMON','','publish','open','closed','','smoked-salmon','','','2014-05-01 18:42:23','2014-05-01 18:42:23','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=228',0,'food','',0);
INSERT INTO `jc_posts` VALUES (229,1,'2014-03-20 17:41:45','2014-03-20 17:41:45','poached eggs, Canadian bacon, hollandaise','TRADITIONAL','','publish','open','open','','traditional','','','2014-03-20 17:41:45','2014-03-20 17:41:45','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=229',0,'food','',0);
INSERT INTO `jc_posts` VALUES (230,1,'2014-03-20 17:42:25','2014-03-20 17:42:25','poached eggs, sauteed spinach, bacon,\r\nbéchamel','FLORENTINE','','publish','open','open','','florentine','','','2014-03-20 17:42:25','2014-03-20 17:42:25','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=230',0,'food','',0);
INSERT INTO `jc_posts` VALUES (231,1,'2014-03-20 17:43:10','2014-03-20 17:43:10','served w/ fruit, home fries\r\n&amp; an English muffin','','','publish','open','open','','231','','','2014-05-01 18:43:23','2014-05-01 18:43:23','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=231',0,'food','',0);
INSERT INTO `jc_posts` VALUES (232,1,'2014-03-20 17:44:06','2014-03-20 17:44:06','sausage, onion, tomato, cheddar','SAUSAGE','','publish','open','closed','','du-jour','','','2014-05-01 18:47:24','2014-05-01 18:47:24','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=232',0,'food','',0);
INSERT INTO `jc_posts` VALUES (233,1,'2014-03-20 17:44:57','2014-03-20 17:44:57','tomato, spinach, feta','VEGGIE','','publish','open','open','','aux-fines-herbs','','','2014-05-01 18:46:54','2014-05-01 18:46:54','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=233',0,'food','',0);
INSERT INTO `jc_posts` VALUES (234,1,'2014-03-20 17:45:31','2014-03-20 17:45:31','three egg omelet filled w/ your choice of three items:\r\ncheddar, feta, gruyere, muenster, mozzarella curds, swiss, goat cheese, bacon, roasted red peppers, scallions, mushroom, tomato, hunter sausage, ham, turkey, onion, short rib (add $4);\r\nadditional fillers $1, add $1 for egg-white only','BUILD YOUR OWN','','publish','open','open','','build-your-own','','','2014-05-01 18:48:12','2014-05-01 18:48:12','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=234',0,'food','',0);
INSERT INTO `jc_posts` VALUES (236,1,'2014-03-20 17:49:18','2014-03-20 17:49:18','choice of: plain, OR chocolate &amp; strawberries w/ whipped cream','TRADITIONAL','','publish','open','open','','traditional-2','','','2014-04-23 14:28:15','2014-04-23 14:28:15','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=236',0,'food','',0);
INSERT INTO `jc_posts` VALUES (237,1,'2014-03-20 17:50:14','2014-03-20 17:50:14','roasted apples, raisins, cinnamon, brown sugar,\r\nwhipped cream, candied nuts','APPLE RAISIN','','publish','open','open','','apple-raisin','','','2014-03-20 17:50:14','2014-03-20 17:50:14','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=237',0,'food','',0);
INSERT INTO `jc_posts` VALUES (238,1,'2014-03-20 17:51:14','2014-03-20 17:51:14','hunter sausage, scambled eggs, cheddar cheese on a waffle','MAX’S FAVORITE','','publish','open','open','','maxs-favorite','','','2014-03-20 17:51:14','2014-03-20 17:51:14','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=238',0,'food','',0);
INSERT INTO `jc_posts` VALUES (239,1,'2014-03-20 17:54:48','2014-03-20 17:54:48','banana, strawberry, berries, whipped cream, candied nuts','MIXED FRUIT','','publish','open','open','','mixed-fruit','','','2014-03-20 17:54:48','2014-03-20 17:54:48','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=239',0,'food','',0);
INSERT INTO `jc_posts` VALUES (240,1,'2014-03-20 17:55:53','2014-03-20 17:55:53','','COFFEE','','publish','open','open','','coffee','','','2014-03-20 17:55:53','2014-03-20 17:55:53','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=240',0,'food','',0);
INSERT INTO `jc_posts` VALUES (241,1,'2014-03-20 17:56:34','2014-03-20 17:56:34','','ESPRESSO','','publish','open','open','','espresso','','','2014-03-20 17:56:34','2014-03-20 17:56:34','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=241',0,'food','',0);
INSERT INTO `jc_posts` VALUES (242,1,'2014-03-20 17:57:08','2014-03-20 17:57:08','','CAPPUCCINO','','publish','open','open','','cappuccino','','','2014-03-20 17:57:08','2014-03-20 17:57:08','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=242',0,'food','',0);
INSERT INTO `jc_posts` VALUES (243,1,'2014-03-20 17:57:50','2014-03-20 17:57:50','','HOT CHOCOLATE','','publish','open','open','','hot-chocolate','','','2014-03-20 17:57:50','2014-03-20 17:57:50','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=243',0,'food','',0);
INSERT INTO `jc_posts` VALUES (244,1,'2014-03-20 17:58:27','2014-03-20 17:58:27','','ICED TEA or SODA','','publish','open','open','','iced-tea-or-soda','','','2014-03-20 17:58:27','2014-03-20 17:58:27','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=244',0,'food','',0);
INSERT INTO `jc_posts` VALUES (245,1,'2014-03-20 17:58:59','2014-03-20 17:58:59','','ORANGE JUICE','','publish','open','open','','orange-juice','','','2014-03-20 17:58:59','2014-03-20 17:58:59','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=245',0,'food','',0);
INSERT INTO `jc_posts` VALUES (246,1,'2014-03-20 17:59:30','2014-03-20 17:59:30','','GRAPEFRUIT JUICE','','publish','open','open','','grapefruit-juice','','','2014-03-20 17:59:30','2014-03-20 17:59:30','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=246',0,'food','',0);
INSERT INTO `jc_posts` VALUES (247,1,'2014-03-20 18:00:00','2014-03-20 18:00:00','','CRANBERRY JUICE','','publish','open','open','','cranberry-juice','','','2014-03-20 18:00:00','2014-03-20 18:00:00','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=247',0,'food','',0);
INSERT INTO `jc_posts` VALUES (248,1,'2014-03-20 18:00:36','2014-03-20 18:00:36','','PINEAPPLE JUICE','','publish','open','open','','pineapple-juice','','','2014-03-20 18:00:36','2014-03-20 18:00:36','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=248',0,'food','',0);
INSERT INTO `jc_posts` VALUES (249,1,'2014-03-20 18:01:02','2014-03-20 18:01:02','','SPARKLING WATER ST. GERON','','publish','open','open','','sparkling-water-st-geron','','','2014-03-20 18:01:02','2014-03-20 18:01:02','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=249',0,'food','',0);
INSERT INTO `jc_posts` VALUES (250,1,'2014-03-20 18:01:34','2014-03-20 18:01:34','','HOT TEA','','publish','open','open','','hot-tea','','','2014-03-20 18:01:34','2014-03-20 18:01:34','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=250',0,'food','',0);
INSERT INTO `jc_posts` VALUES (251,1,'2014-03-20 18:02:28','2014-03-20 18:02:28','','Sausage','','publish','open','open','','sausage','','','2014-03-20 18:02:28','2014-03-20 18:02:28','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=251',0,'food','',0);
INSERT INTO `jc_posts` VALUES (252,1,'2014-03-20 18:02:54','2014-03-20 18:02:54','','Sauteed spinach','','publish','open','open','','sauteed-spinach','','','2014-03-20 18:02:54','2014-03-20 18:02:54','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=252',0,'food','',0);
INSERT INTO `jc_posts` VALUES (253,1,'2014-03-20 18:03:21','2014-03-20 18:03:21','','Belgian waffle','','publish','open','open','','belgian-waffle','','','2014-03-20 18:03:21','2014-03-20 18:03:21','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=253',0,'food','',0);
INSERT INTO `jc_posts` VALUES (254,1,'2014-03-20 18:03:54','2014-03-20 18:03:54','','English Muffin','','publish','open','open','','english-muffin','','','2014-03-20 18:03:54','2014-03-20 18:03:54','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=254',0,'food','',0);
INSERT INTO `jc_posts` VALUES (255,1,'2014-03-20 18:04:25','2014-03-20 18:04:25','','Two eggs','','publish','open','open','','two-eggs','','','2014-03-20 18:04:25','2014-03-20 18:04:25','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=255',0,'food','',0);
INSERT INTO `jc_posts` VALUES (256,1,'2014-03-20 18:04:54','2014-03-20 18:04:54','','Three eggs','','publish','open','open','','three-eggs','','','2014-05-01 18:50:56','2014-05-01 18:50:56','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=256',0,'food','',0);
INSERT INTO `jc_posts` VALUES (257,1,'2014-03-20 18:05:29','2014-03-20 18:05:29','','Fresh fruit','','publish','open','open','','fresh-fruit','','','2014-03-20 18:05:29','2014-03-20 18:05:29','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=257',0,'food','',0);
INSERT INTO `jc_posts` VALUES (258,1,'2014-03-20 18:06:06','2014-03-20 18:06:06','','Home fries','','publish','open','open','','home-fries','','','2014-03-20 18:06:06','2014-03-20 18:06:06','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=258',0,'food','',0);
INSERT INTO `jc_posts` VALUES (259,1,'2014-03-20 18:06:41','2014-03-20 18:06:41','','Canadian bacon','','publish','open','open','','ham','','','2014-05-01 18:51:30','2014-05-01 18:51:30','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=259',0,'food','',0);
INSERT INTO `jc_posts` VALUES (260,1,'2014-03-20 18:07:06','2014-03-20 18:07:06','','Bacon','','publish','open','open','','bacon','','','2014-03-20 18:07:06','2014-03-20 18:07:06','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=260',0,'food','',0);
INSERT INTO `jc_posts` VALUES (261,1,'2014-03-20 18:07:58','2014-03-20 18:07:58','','Short Rib Hash','','publish','open','open','','short-rib-hash','','','2014-03-20 18:07:58','2014-03-20 18:07:58','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=261',0,'food','',0);
INSERT INTO `jc_posts` VALUES (263,1,'2014-03-20 18:08:55','2014-03-20 18:08:55','','Pancakes','','publish','open','open','','pancakes','','','2014-03-20 18:08:55','2014-03-20 18:08:55','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=263',0,'food','',0);
INSERT INTO `jc_posts` VALUES (264,1,'2014-03-20 18:10:08','2014-03-20 18:10:08','vodka, zing zang, lime','BLOODY MARY','','publish','open','open','','bloody-mary','','','2014-03-20 18:14:25','2014-03-20 18:14:25','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=264',0,'food','',0);
INSERT INTO `jc_posts` VALUES (265,1,'2014-03-20 18:10:55','2014-03-20 18:10:55','Split of Blanc de Blanc &amp; Orange Juice','MIMOSA MAX','','publish','open','open','','mimosa-max','','','2014-03-20 18:14:43','2014-03-20 18:14:43','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=265',0,'food','',0);
INSERT INTO `jc_posts` VALUES (266,1,'2014-03-20 18:11:49','2014-03-20 18:11:49','Citadelle gin, lemon juice, demerara, sparkling wine','FRENCH 75 ','','publish','open','open','','french-75','','','2014-05-01 18:53:44','2014-05-01 18:53:44','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=266',0,'food','',0);
INSERT INTO `jc_posts` VALUES (267,1,'2014-03-20 18:12:28','2014-03-20 18:12:28','grand marnier, whipped cream','FRENCH COFFEE','','publish','open','open','','french-coffee','','','2014-03-20 18:15:27','2014-03-20 18:15:27','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=267',0,'food','',0);
INSERT INTO `jc_posts` VALUES (268,1,'2014-03-20 18:13:07','2014-03-20 18:13:07','absolut vodka, solerno blood orange,\r\nlemon, orange marmalade, lemon bitters','LADY MARMALADE','','publish','open','open','','lady-marmalade','','','2014-03-20 18:15:41','2014-03-20 18:15:41','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=268',0,'food','',0);
INSERT INTO `jc_posts` VALUES (276,1,'2014-04-23 19:28:34','2014-04-23 19:28:34','Authentic Belgian cuisine with a homegrown, Old World aesthetic in Downtown Richmond. Housed in a fabulously renovated two story dining space, Max’s combines the fancy with the friendly.\r\n\r\nUnlike any other restaurant in Richmond, our French and Belgian menu weaves together bold flavors from fine European cuisines. Join us for lunch, dinner and brunch!\r\n<p style=\"text-align: left;\">[one_third]</p>\r\n<p style=\"text-align: left;\">[button link=\"http://maxsonbroad.wpengine.com/lunch-menu/\" color=\"#915a15 #ffffff\"]LUNCH MENU[/button]\r\n[/one_third][one_third]</p>\r\n[button link=\"http://maxsonbroad.wpengine.com/dinner-menu/\" color=\"#915a15 #ffffff\"]DINNER MENU[/button]\r\n[/one_third][one_third_last]\r\n\r\n[button link=\"http://maxsonbroad.wpengine.com/brunch-menu/\" color=\"#915a15 #ffffff\"]BRUNCH MENU[/button]\r\n[/one_third_last]\r\n<p style=\"text-align: left;\">We have a wide selection of fine wines and craft beers.</p>\r\n<p style=\"text-align: center;\">[one_third][button link=\"http://maxsonbroad.wpengine.com/menu/wine-list/\" color=\"#915a15 #ffffff\"]WINE LIST[/button][/one_third]</p>\r\n<p style=\"text-align: center;\">[one_third][button link=\"http://maxsonbroad.wpengine.com/menu/beer-list/\" color=\"#915a15 #ffffff\"]BEER LIST[/button][/one_third]</p>','Menu','','publish','open','open','','menu','','','2014-05-01 20:26:25','2014-05-01 20:26:25','',0,'http://maxsonbroad.wpengine.com/?page_id=276',0,'page','',0);
INSERT INTO `jc_posts` VALUES (281,1,'2014-05-01 18:29:24','2014-05-01 18:29:24','shrimp cream sauce, crab meat, vegetables, rice ','MONKFISH','','publish','open','open','','monkfish','','','2014-05-01 18:29:24','2014-05-01 18:29:24','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=281',0,'food','',0);
INSERT INTO `jc_posts` VALUES (282,1,'2014-05-01 18:30:06','2014-05-01 18:30:06','bay shrimp, leeks, red pepper, capers, succotash, rice','PAN SEARED ROCKFISH','','publish','open','open','','pan-seared-rockfish','','','2014-05-01 18:30:06','2014-05-01 18:30:06','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=282',0,'food','',0);
INSERT INTO `jc_posts` VALUES (283,1,'2014-05-01 18:30:37','2014-05-01 18:30:37','jumbo shrimp, vegetables, rice','BAKED CRAB CAKE','','publish','open','open','','baked-crab-cake','','','2014-05-01 18:30:37','2014-05-01 18:30:37','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=283',0,'food','',0);
INSERT INTO `jc_posts` VALUES (284,1,'2014-05-01 18:31:08','2014-05-01 18:31:08','mushroom, garlic, lemon, white wine sauce, mashed potatoes, vegetables','AIRLINE CHICKEN','','publish','open','open','','airline-chicken','','','2014-05-01 18:31:08','2014-05-01 18:31:08','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=284',0,'food','',0);
INSERT INTO `jc_posts` VALUES (285,1,'2014-05-01 18:31:34','2014-05-01 18:31:34','apple bourbon sauce, mashed potatoes, Brussels sprouts','PORK RIBEYE','','publish','open','open','','pork-ribeye','','','2014-05-01 18:31:34','2014-05-01 18:31:34','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=285',0,'food','',0);
INSERT INTO `jc_posts` VALUES (286,1,'2014-05-01 18:32:12','2014-05-01 18:32:12',' gorgonzola demi glace, tobacco onions, Brussels sprouts, mashed potatoes','18 OZ COWBOY RIBEYE','','publish','open','open','','18-oz-cowboy-ribeye','','','2014-05-01 18:32:12','2014-05-01 18:32:12','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=286',0,'food','',0);
INSERT INTO `jc_posts` VALUES (287,1,'2014-05-01 18:33:41','2014-05-01 18:33:41','hummus, roasted red pepper, cucumber, feta, extra virgin olive oil','MEDITERRANEAN CREPES','','publish','open','open','','mediterranean-crepes','','','2014-05-01 18:33:42','2014-05-01 18:33:42','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=287',0,'food','',0);
INSERT INTO `jc_posts` VALUES (288,1,'2014-05-01 18:34:13','2014-05-01 18:34:13','lime, lemon, red onion, jalapeno, cilantro','WHITE FISH CEVICHE','','publish','open','open','','white-fish-ceviche','','','2014-05-01 18:34:13','2014-05-01 18:34:13','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=288',0,'food','',0);
INSERT INTO `jc_posts` VALUES (290,1,'2014-05-01 18:45:52','2014-05-01 18:45:52','ham, gruyere, cheddar','HAM & CHEESE','','publish','open','closed','','ham-cheese','','','2014-05-01 18:47:18','2014-05-01 18:47:18','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=290',0,'food','',0);
INSERT INTO `jc_posts` VALUES (291,1,'2014-05-01 18:46:18','2014-05-01 18:46:18','crab, spinach, red pepper','CHESAPEAKE','','publish','open','open','','chesapeake','','','2014-05-01 18:46:18','2014-05-01 18:46:18','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=291',0,'food','',0);
INSERT INTO `jc_posts` VALUES (292,1,'2014-05-01 18:49:54','2014-05-01 18:49:54','potatoes, mornay sauce, egg','SHORT RIB','','publish','open','open','','short-rib','','','2014-05-01 18:49:54','2014-05-01 18:49:54','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=292',0,'food','',0);
INSERT INTO `jc_posts` VALUES (293,1,'2014-05-01 18:54:06','2014-05-01 18:54:06','creme de cassis, sparkling wine','KIR ROYALE','','publish','open','open','','kir-royale','','','2014-05-01 18:54:06','2014-05-01 18:54:06','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=293',0,'food','',0);
INSERT INTO `jc_posts` VALUES (294,1,'2014-05-01 18:56:06','2014-05-01 18:56:06','three-stage caramelized onion au gratin','FRENCH ONION SOUP','','publish','open','open','','french-onion-soup-3','','','2014-05-01 18:56:06','2014-05-01 18:56:06','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=294',0,'food','',0);
INSERT INTO `jc_posts` VALUES (295,1,'2014-05-01 18:56:26','2014-05-01 18:56:26','','SOUP DU JOUR','','publish','open','open','','soup-du-jour-3','','','2014-05-01 18:56:26','2014-05-01 18:56:26','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=295',0,'food','',0);
INSERT INTO `jc_posts` VALUES (296,1,'2014-05-01 18:57:17','2014-05-01 18:57:17','choice of one:\r\nprovencale\r\nmarinara\r\nsaffron broth\r\nratatouille\r\nwhite wine, tarragon & garlic\r\nHoegaarden, bacon & onion\r\nfennel, cream & pernod','MOULES (P.E.I. Mussels) & POMMES FRITES','','publish','open','open','','moules-p-e-i-mussels-pommes-frites-2','','','2014-05-01 18:57:17','2014-05-01 18:57:17','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=296',0,'food','',0);
INSERT INTO `jc_posts` VALUES (297,1,'2014-05-01 18:57:45','2014-05-01 18:57:45','old bay, bacon, leeks, potatoes,\r\nlobster cream, arugula','OYSTER PAN ROAST','','publish','open','open','','oyster-pan-roast-3','','','2014-05-01 18:57:45','2014-05-01 18:57:45','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=297',0,'food','',0);
INSERT INTO `jc_posts` VALUES (298,1,'2014-05-01 18:58:13','2014-05-01 18:58:13','frites, cheese curds, gravy, crispy pork belly','POUTINE','','publish','open','open','','poutine-3','','','2014-05-01 18:58:13','2014-05-01 18:58:13','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=298',0,'food','',0);
INSERT INTO `jc_posts` VALUES (299,1,'2014-05-01 18:58:48','2014-05-01 18:58:48',' gruyere, eggplant, zucchini, squash, tomato, onion','RATATOUILLE AU GRATIN','','publish','open','open','','ratatouille-brunch','','','2014-05-01 18:58:48','2014-05-01 18:58:48','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=299',0,'food','',0);
INSERT INTO `jc_posts` VALUES (300,1,'2014-05-01 18:59:13','2014-05-01 18:59:13','choice of one:\r\nchipotle mayo\r\nparmesan peppercorn\r\ndijonaise\r\nsweet chili\r\npesto mayo\r\nbeet horseradish mayo','POMMES FRITES','','publish','open','open','','pommes-frites-3','','','2014-05-01 18:59:13','2014-05-01 18:59:13','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=300',0,'food','',0);
INSERT INTO `jc_posts` VALUES (302,1,'2014-05-01 18:59:33','2014-05-01 18:59:33','lime, lemon, red onion, jalapeno, cilantro','WHITE FISH CEVICHE','','publish','open','open','','white-fish-ceviche-2','','','2014-05-01 18:59:33','2014-05-01 18:59:33','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=302',0,'food','',0);
INSERT INTO `jc_posts` VALUES (303,1,'2014-05-01 18:59:50','2014-05-01 18:59:50','comes with a side','','','publish','open','open','','303','','','2014-05-01 18:59:50','2014-05-01 18:59:50','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=303',0,'food','',0);
INSERT INTO `jc_posts` VALUES (304,1,'2014-05-01 19:00:20','2014-05-01 19:00:20','ham, swiss, mornay, baguette\r\n','CROQUE MONSIEUR','','publish','open','open','','croque-monsieur-3','','','2014-05-01 19:00:20','2014-05-01 19:00:20','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=304',0,'food','',0);
INSERT INTO `jc_posts` VALUES (305,1,'2014-05-01 19:00:41','2014-05-01 19:00:41','with fried egg* ','CROQUE MADAME','','publish','open','open','','croque-madame-3','','','2014-05-01 19:00:41','2014-05-01 19:00:41','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=305',0,'food','',0);
INSERT INTO `jc_posts` VALUES (306,1,'2014-05-01 19:01:16','2014-05-01 19:01:16',' 8 oz ground chuck, lettuce, tomato, brioche roll;\r\nadd cheese 2; add egg* 2, add bacon 2','HAMBURGER','','publish','open','open','','hamburger-3','','','2014-05-01 19:01:16','2014-05-01 19:01:16','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=306',0,'food','',0);
INSERT INTO `jc_posts` VALUES (307,1,'2014-05-01 19:01:38','2014-05-01 19:01:38','brioche french toast, gruyere, ham, turkey, marmalade','MONTE CRISTO','','publish','open','open','','monte-cristo-2','','','2014-05-01 19:01:38','2014-05-01 19:01:38','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=307',0,'food','',0);
INSERT INTO `jc_posts` VALUES (308,1,'2014-05-01 19:02:02','2014-05-01 19:02:02','gruyere, horseradish aioli, carmalized onions, baguette','FRENCH DIP','','publish','open','open','','french-dip-2','','','2014-05-01 19:02:02','2014-05-01 19:02:02','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=308',0,'food','',0);
INSERT INTO `jc_posts` VALUES (309,1,'2014-05-01 19:02:26','2014-05-01 19:02:26','turkey, ham, bacon, swiss, cheddar, lettuce,\r\ntomato, mayo, multigrain','CLUB','','publish','open','open','','club-2','','','2014-05-01 19:02:26','2014-05-01 19:02:26','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=309',0,'food','',0);
INSERT INTO `jc_posts` VALUES (310,1,'2014-05-01 19:02:50','2014-05-01 19:02:50','ham, cheddar, egg, tomato, brioche*\r\n','GASHOUSE GRILLED CHEESE ','','publish','open','open','','gashouse-grilled-cheese-2','','','2014-05-01 19:02:50','2014-05-01 19:02:50','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=310',0,'food','',0);
INSERT INTO `jc_posts` VALUES (311,1,'2014-05-01 19:03:19','2014-05-01 19:03:19','lettuce, tomato on croissant','APPLE CURRY CHICKEN SALAD ','','publish','open','open','','apple-curry-chicken-salad-2','','','2014-05-01 19:03:19','2014-05-01 19:03:19','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=311',0,'food','',0);
INSERT INTO `jc_posts` VALUES (312,1,'2014-05-01 19:03:37','2014-05-01 19:03:37',' brie, arugula, pesto mayo, roasted red peppers, brioche','GRILLED CHICKEN','','publish','open','open','','grilled-chicken-3','','','2014-05-01 19:03:37','2014-05-01 19:03:37','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=312',0,'food','',0);
INSERT INTO `jc_posts` VALUES (313,1,'2014-05-01 19:04:14','2014-05-01 19:04:14','Choice of:\r\nCup of soup of the day (French onion soup \r\nadditional $3) or side salad; with\r\n½ Apple Curry Chicken Salad Croissant, ½ BLT, ½ \r\nSalmon Paillard Club, ½ Monte Cristo, ½ French \r\nDip, ½ Salami & Cheese Melt, ½ Roasted Turkey,\r\n or Apple Curry Chicken Salad over mixed greens','PICK 2','','publish','open','open','','pick-2','','','2014-05-01 19:04:52','2014-05-01 19:04:52','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=313',0,'food','',0);
INSERT INTO `jc_posts` VALUES (314,1,'2014-05-01 19:05:20','2014-05-01 19:05:20','vegetables, aged white cheddar, frites','CHICKEN CREPE','','publish','open','open','','chicken-crepe-2','','','2014-05-01 19:05:20','2014-05-01 19:05:20','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=314',0,'food','',0);
INSERT INTO `jc_posts` VALUES (315,1,'2014-05-01 19:05:41','2014-05-01 19:05:41','acorn squash, zucchini, eggplant, red onion, feta, frites','ROASTED VEGETABLE CREPE','','publish','open','open','','roasted-vegetable-crepe-2','','','2014-05-01 19:05:41','2014-05-01 19:05:41','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=315',0,'food','',0);
INSERT INTO `jc_posts` VALUES (316,1,'2014-05-01 19:06:05','2014-05-01 19:06:05','mushroom, garlic, lemon, white wine sauce, mashed \r\npotatoes, vegetables','AIRLINE CHICKEN','','publish','open','open','','airline-chicken-2','','','2014-05-01 19:06:05','2014-05-01 19:06:05','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=316',0,'food','',0);
INSERT INTO `jc_posts` VALUES (317,1,'2014-05-01 19:06:29','2014-05-01 19:06:29',' poached, crab meat, red bell pepper, beurre blanc','SALMON A LA CRAB','','publish','open','open','','salmon-a-la-crab','','','2014-05-01 19:06:29','2014-05-01 19:06:29','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=317',0,'food','',0);
INSERT INTO `jc_posts` VALUES (318,1,'2014-05-01 19:06:57','2014-05-01 19:06:57','pan seared with toasted almond, vegetables, rice','TROUT AMANDINE','','publish','open','open','','trout-amandine','','','2014-05-01 19:06:57','2014-05-01 19:06:57','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=318',0,'food','',0);
INSERT INTO `jc_posts` VALUES (319,1,'2014-05-01 19:07:24','2014-05-01 19:07:24','Belgian beer-battered cod, fennel apple slaw, old bay \r\nremoulade','FISH & CHIPS','','publish','open','open','','fish-chips-3','','','2014-05-01 19:07:24','2014-05-01 19:07:24','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=319',0,'food','',0);
INSERT INTO `jc_posts` VALUES (320,1,'2014-05-01 19:08:06','2014-05-01 19:08:06','10 oz NY strip, pommes frites, asparagus; choice of: \r\ncabernet veal jus, mushroom & onion,\r\nherb garlic butter*; add egg for 2','STEAK FRITES','','publish','open','open','','steak-frites','','','2014-05-01 19:08:06','2014-05-01 19:08:06','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=320',0,'food','',0);
INSERT INTO `jc_posts` VALUES (321,1,'2014-05-01 19:08:32','2014-05-01 19:08:32','eggplant, zucchini, squash, tomato, onion, peppers, feta, \r\ngarlic, tomato sauce','PASTA PRIMAVERA','','publish','open','open','','pasta-primavera-3','','','2014-05-01 19:08:32','2014-05-01 19:08:32','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=321',0,'food','',0);
INSERT INTO `jc_posts` VALUES (322,1,'2014-05-01 19:09:57','2014-05-01 19:09:57','add chicken $4, grilled shrimp $8, grilled calamari $6,\r\nsteak $9, salmon $13','','','publish','open','open','','322','','','2014-05-01 19:09:57','2014-05-01 19:09:57','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=322',0,'food','',0);
INSERT INTO `jc_posts` VALUES (323,1,'2014-05-01 19:10:29','2014-05-01 19:10:29','mixed greens, tomato, cucumber, red onion','SIDE SALAD','','publish','open','open','','side-salad-2','','','2014-05-01 19:10:29','2014-05-01 19:10:29','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=323',0,'food','',0);
INSERT INTO `jc_posts` VALUES (324,1,'2014-05-01 19:10:57','2014-05-01 19:10:57','romaine, tomato, cucumber, parmesan','CAESAR','','publish','open','open','','caesar-3','','','2014-05-01 19:10:57','2014-05-01 19:10:57','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=324',0,'food','',0);
INSERT INTO `jc_posts` VALUES (325,1,'2014-05-01 19:11:26','2014-05-01 19:11:26','bosc pear, goat cheese, candied pecan,\r\ntomato, cucumber, onion, passion fruit vinaigrette','PEAR & ARUGULA','','publish','open','open','','pear-arugula-3','','','2014-05-01 19:11:26','2014-05-01 19:11:26','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=325',0,'food','',0);
INSERT INTO `jc_posts` VALUES (326,1,'2014-05-01 19:12:00','2014-05-01 19:12:00','grilled tuna, bibb lettuce, boiled egg, olive,\r\nharicot verts, potatoes, grilled red onions,\r\ntomatoes, anchovies, balsamic vinaigrette*','NICOISE','','publish','open','open','','nicoise-3','','','2014-05-01 19:12:00','2014-05-01 19:12:00','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=326',0,'food','',0);
INSERT INTO `jc_posts` VALUES (327,1,'2014-05-01 19:12:35','2014-05-01 19:12:35','bleu cheese, house made\r\nbacon, tomatoes, croutons, \r\ncreamy buttermilk','BOSTON BIBB WEDGE ','','publish','open','open','','boston-bibb-wedge-3','','','2014-05-01 19:12:35','2014-05-01 19:12:35','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=327',0,'food','',0);
INSERT INTO `jc_posts` VALUES (328,1,'2014-05-01 19:13:03','2014-05-01 19:13:03','4 oz beef tenderloin, roasted asparagus,\r\nbleu cheese, cucumber, crispy shallots,\r\ntomato, balsamic reduction*','PETIT FILET','','publish','open','open','','petit-filet-2','','','2014-05-01 19:13:03','2014-05-01 19:13:03','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=328',0,'food','',0);
INSERT INTO `jc_posts` VALUES (329,1,'2014-05-01 19:13:28','2014-05-01 19:13:28','roasted chicken, prosciutto, sausage, boiled egg,\r\nred onion, tomato, mixed greens, artisanal cheese','CHEF','','publish','open','open','','chef-3','','','2014-05-01 19:13:28','2014-05-01 19:13:28','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=329',0,'food','',0);
INSERT INTO `jc_posts` VALUES (330,1,'2014-05-01 19:13:56','2014-05-01 19:13:56','raisin, tomato, apricot, apple, strawberries,\r\nbelgian endive, candied pecan,\r\npassion fruit vinaigrette, mixed greens','APPLE CURRY CHICKEN','','publish','open','open','','apple-curry-chicken-3','','','2014-05-01 19:13:56','2014-05-01 19:13:56','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=330',0,'food','',0);
INSERT INTO `jc_posts` VALUES (331,1,'2014-05-01 19:14:23','2014-05-01 19:14:23','goat cheese, arugula, candied pecans,\r\nlemon honey dressing','BEET CARPACCIO','','publish','open','open','','beet-carpaccio-2','','','2014-05-01 19:14:23','2014-05-01 19:14:23','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=331',0,'food','',0);
INSERT INTO `jc_posts` VALUES (332,1,'2014-05-01 19:14:48','2014-05-01 19:14:48','hummus, roasted red pepper, cucumber, feta, extra virgin olive oil','MEDITTERANEAN CREPES','','publish','open','open','','meditteranean-crepes','','','2014-05-01 19:14:48','2014-05-01 19:14:48','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=332',0,'food','',0);
INSERT INTO `jc_posts` VALUES (333,1,'2014-05-01 19:14:46','2014-05-01 19:14:46','bleu cheese, wild mushroom, bacon, squash,\r\nwarm sherry vinaigrette \r\n','SPINACH','','publish','open','open','','spinach-2','','','2014-05-01 19:14:46','2014-05-01 19:14:46','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=333',0,'food','',0);
INSERT INTO `jc_posts` VALUES (334,1,'2014-05-01 19:15:07','0000-00-00 00:00:00','','WHITE FISH CEVICHE','','draft','open','open','','','','','2014-05-01 19:15:07','2014-05-01 19:15:07','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=334',0,'food','',0);
INSERT INTO `jc_posts` VALUES (336,1,'2014-05-01 19:15:24','2014-05-01 19:15:24','lime, lemon, red onion, jalapeno, cilantro','WHITE FISH CEVICHE','','publish','open','open','','white-fish-ceviche-3','','','2014-05-01 19:15:32','2014-05-01 19:15:32','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=336',0,'food','',0);
INSERT INTO `jc_posts` VALUES (337,1,'2014-05-01 19:15:45','2014-05-01 19:15:45','fennel apple slaw, pommes frites, mashed potatoes\r\nrice, sauteed spinach, ratatouille\r\nmac & cheese, fruit, side salad, beets\r\nVirginia style braised kale, fresh cut chips','','','publish','open','open','','337','','','2014-05-01 19:15:45','2014-05-01 19:15:45','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=337',0,'food','',0);
INSERT INTO `jc_posts` VALUES (338,1,'2014-05-01 19:17:29','2014-05-01 19:17:29','mayo, toasted multigrain','B . L . T .','','publish','open','open','','b-l-t','','','2014-05-01 19:17:29','2014-05-01 19:17:29','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=338',0,'food','',0);
INSERT INTO `jc_posts` VALUES (339,1,'2014-05-01 19:18:13','2014-05-01 19:18:13','roasted turkey, bacon, avocado, lettuce, tomato, dijonaise','TURKEY WRAP','','publish','open','open','','turkey-wrap','','','2014-05-01 19:18:13','2014-05-01 19:18:13','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=339',0,'food','',0);
INSERT INTO `jc_posts` VALUES (340,1,'2014-05-01 19:19:19','2014-05-01 19:19:19','<strong>Choice of:</strong>\r\nCup of soup of the day (French onion soup additional $3) or side salad<br/>\r\n<strong>-with-</strong>\r\n1⁄2 BLT, 1⁄2 Apple Curry Chicken Salad Croissant,<br/>\r\n1⁄2 Salmon Paillard Club, <br/>\r\n1⁄2 Monte Cristo,<br/>\r\n1⁄2 French Dip, <br/>\r\n1⁄2 Salami & Cheese Melt,<br/>\r\n1⁄2 Roasted Turkey, or Apple Curry Chicken Salad over mixed greens','Pick 2','','publish','open','open','','pick-2-2','','','2014-05-01 19:20:43','2014-05-01 19:20:43','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=340',0,'food','',0);
INSERT INTO `jc_posts` VALUES (341,1,'2014-05-01 19:24:10','2014-05-01 19:24:10','','103 | Sauvignon Blanc, Charles Dupuy, 2012, Loire','','publish','open','closed','','glass','','','2014-05-01 19:35:54','2014-05-01 19:35:54','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=341',0,'food','',0);
INSERT INTO `jc_posts` VALUES (342,1,'2014-05-01 19:22:39','2014-05-01 19:22:39','[foodmenu groups=\"blanc\" showtitles=1 showsubtitles=1]\r\n[foodmenu groups=\"rouge\" showtitles=1 showsubtitles=1]\r\n[foodmenu groups=\"sparkling\" showtitles=1 showsubtitles=1]\r\n[foodmenu groups=\"champagne\" showtitles=1 showsubtitles=1]\r\n[foodmenu groups=\"port-madeira-sherry\" showtitles=1 showsubtitles=1]\r\n','Wine List','','publish','open','open','','wine-list','','','2014-05-01 20:20:37','2014-05-01 20:20:37','',276,'http://maxsonbroad.wpengine.com/?page_id=342',0,'page','',0);
INSERT INTO `jc_posts` VALUES (343,1,'2014-05-01 19:24:58','2014-05-01 19:24:58','4 oz beef tenderloin, roasted asparagus, bleu cheese, cucumber, crispy shallots, tomato, balsamic reduction*','PETIT FILET','','publish','open','open','','petit-filet-3','','','2014-05-01 19:24:58','2014-05-01 19:24:58','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=343',0,'food','',0);
INSERT INTO `jc_posts` VALUES (344,1,'2014-05-01 19:25:31','2014-05-01 19:25:31','goat cheese, arugula, candied pecans, lemon honey dressing','BEET CARPACCIO','','publish','open','open','','beet-carpaccio-3','','','2014-05-01 19:25:31','2014-05-01 19:25:31','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=344',0,'food','',0);
INSERT INTO `jc_posts` VALUES (346,1,'2014-05-01 19:27:36','2014-05-01 19:27:36','','104 | Sauvignon Blanc/Semillon, Cinq Pattes, 2012, Bordeaux','','publish','open','closed','','104-sauvignon-blancsemillon-cinq-pattes-2012-bordeaux','','','2014-05-01 19:35:44','2014-05-01 19:35:44','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=346',0,'food','',0);
INSERT INTO `jc_posts` VALUES (347,1,'2014-05-01 19:28:31','2014-05-01 19:28:31','','207 | Pinot Blanc, Jean-Baptiste Adam, 2012, Alsace','','publish','open','closed','','207-pinot-blanc-jean-baptiste-adam-2012-alsace','','','2014-05-01 19:35:36','2014-05-01 19:35:36','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=347',0,'food','',0);
INSERT INTO `jc_posts` VALUES (348,1,'2014-05-01 19:28:54','2014-05-01 19:28:54','','121 | Riesling, Guntrum, NV, Mosel','','publish','open','closed','','121-riesling-guntrum-nv-mosel','','','2014-05-01 19:35:29','2014-05-01 19:35:30','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=348',0,'food','',0);
INSERT INTO `jc_posts` VALUES (349,1,'2014-05-01 19:29:14','2014-05-01 19:29:14','','106 | Viognier, Le Paradou, 2012, Languedoc Roussillon','','publish','open','closed','','106-viognier-le-paradou-2012-languedoc-roussillon','','','2014-05-01 19:35:21','2014-05-01 19:35:21','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=349',0,'food','',0);
INSERT INTO `jc_posts` VALUES (350,1,'2014-05-01 19:30:31','2014-05-01 19:30:31','mushroom, garlic, lemon, white wine sauce, mashed potatoes, vegetables','AIRLINE CHICKEN','','publish','open','open','','airline-chicken-3','','','2014-05-01 19:30:31','2014-05-01 19:30:31','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=350',0,'food','',0);
INSERT INTO `jc_posts` VALUES (351,1,'2014-05-01 19:31:31','2014-05-01 19:31:31','pan seared with toasted almond, vegetables, rice','TROUT AMANDINE','','publish','open','open','','trout-amandine-2','','','2014-05-01 19:31:31','2014-05-01 19:31:31','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=351',0,'food','',0);
INSERT INTO `jc_posts` VALUES (352,1,'2014-05-01 19:31:03','2014-05-01 19:31:03','poached, crab meat, red bell pepper, beurre blanc','SALMON A LA CRAB','','publish','open','open','','salmon-a-la-crab-2','','','2014-05-01 19:31:03','2014-05-01 19:31:03','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=352',0,'food','',0);
INSERT INTO `jc_posts` VALUES (353,1,'2014-05-01 19:31:00','2014-05-01 19:31:00','','107 | Chardonnay, La Terre, NV, California','','publish','open','closed','','107-chardonnay-la-terre-nv-california','','','2014-05-01 19:35:10','2014-05-01 19:35:10','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=353',0,'food','',0);
INSERT INTO `jc_posts` VALUES (354,1,'2014-05-01 19:31:29','2014-05-01 19:31:29','','109 | Chardonnay, Maison Champy, 2012, Mâcon-Villages','','publish','open','closed','','109-chardonnay-maison-champy-2012-macon-villages','','','2014-05-01 19:34:59','2014-05-01 19:34:59','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=354',0,'food','',0);
INSERT INTO `jc_posts` VALUES (355,1,'2014-05-01 19:31:52','2014-05-01 19:31:52','','108 | Syrah/Grenache, Dry Rosé, Le Saint André, 2012, Provence','','publish','open','closed','','108-syrahgrenache-dry-rose-le-saint-andre-2012-provence','','','2014-05-01 19:34:48','2014-05-01 19:34:48','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=355',0,'food','',0);
INSERT INTO `jc_posts` VALUES (356,1,'2014-05-01 19:33:02','2014-05-01 19:33:02','','102 | Melon de Bourgogne, Domaine de la Pepiere, 2011, Muscadet','','publish','open','closed','','102-melon-de-bourgogne-domaine-de-la-pepiere-2011-muscadet','','','2014-05-01 19:54:50','2014-05-01 19:54:50','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=356',0,'food','',0);
INSERT INTO `jc_posts` VALUES (357,1,'2014-05-01 19:33:23','2014-05-01 19:33:23','','202 | Sauvignon Blanc, Yvon et Pascal Tabordet, Pouilly-Fumé, 2012, Loire','','publish','open','closed','','202-sauvignon-blanc-yvon-et-pascal-tabordet-pouilly-fume-2012-loire','','','2014-05-01 19:55:16','2014-05-01 19:55:16','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=357',0,'food','',0);
INSERT INTO `jc_posts` VALUES (359,1,'2014-05-01 19:37:31','2014-05-01 19:37:31','','203 | Sauvignon Blanc, Regis Minet, Pouilly-Fumé, 2011, Loire','','publish','open','open','','203-sauvignon-blanc-regis-minet-pouilly-fume-2011-loire','','','2014-05-01 19:55:12','2014-05-01 19:55:12','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=359',0,'food','',0);
INSERT INTO `jc_posts` VALUES (360,1,'2014-05-01 19:37:47','2014-05-01 19:37:47','','224 | Sauvignon Blanc, Domaine des Berthiers, Pouilly-Fumé, 2011, Loire ','','publish','open','open','','224-sauvignon-blanc-domaine-des-berthiers-pouilly-fume-2011-loire','','','2014-05-01 19:55:07','2014-05-01 19:55:07','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=360',0,'food','',0);
INSERT INTO `jc_posts` VALUES (361,1,'2014-05-01 19:38:00','2014-05-01 19:38:00','','204 | Sauvignon Blanc, Fournier, 2012, Sancerre','','publish','open','open','','204-sauvignon-blanc-fournier-2012-sancerre','','','2014-05-01 19:55:04','2014-05-01 19:55:04','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=361',0,'food','',0);
INSERT INTO `jc_posts` VALUES (362,1,'2014-05-01 19:38:19','2014-05-01 19:38:19','','205 | Sauvignon Blanc/Sémillon, Château de Fontenille, 2012, Bordeaux','','publish','open','open','','205-sauvignon-blancsemillon-chateau-de-fontenille-2012-bordeaux','','','2014-05-01 19:54:59','2014-05-01 19:54:59','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=362',0,'food','',0);
INSERT INTO `jc_posts` VALUES (363,1,'2014-05-01 19:42:00','2014-05-01 19:42:00','','206 | Sauvignon Blanc/Chardonnay, Cazin, 2011, Cheverny ','','publish','open','open','','206-sauvignon-blancchardonnay-cazin-2011-cheverny','','','2014-05-01 19:42:00','2014-05-01 19:42:00','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=363',0,'food','',0);
INSERT INTO `jc_posts` VALUES (364,1,'2014-05-01 19:42:15','2014-05-01 19:42:15','','230 | Sémillon/Sauvignon Blanc, Graville-Lacoste Graves, 2012, Bordeaux ','','publish','open','open','','230-semillonsauvignon-blanc-graville-lacoste-graves-2012-bordeaux','','','2014-05-01 19:42:15','2014-05-01 19:42:15','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=364',0,'food','',0);
INSERT INTO `jc_posts` VALUES (365,1,'2014-05-01 19:43:06','2014-05-01 19:43:06','','231 | Pinot Gris, Anne Amie, 2013, Willamette Valley ','','publish','open','open','','231-pinot-gris-anne-amie-2013-willamette-valley','','','2014-05-01 19:43:06','2014-05-01 19:43:06','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=365',0,'food','',0);
INSERT INTO `jc_posts` VALUES (366,1,'2014-05-01 19:43:20','2014-05-01 19:43:20','','232 | Pinot Grigio, Marco Polo, 2012, Veneto','','publish','open','open','','232-pinot-grigio-marco-polo-2012-veneto','','','2014-05-01 19:43:20','2014-05-01 19:43:20','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=366',0,'food','',0);
INSERT INTO `jc_posts` VALUES (367,1,'2014-05-01 19:43:32','2014-05-01 19:43:32','','229 | Riesling, Domaine Weinbach, Grand Cru, Schlossberg, 2012, Alsace','','publish','open','open','','229-riesling-domaine-weinbach-grand-cru-schlossberg-2012-alsace','','','2014-05-01 19:43:32','2014-05-01 19:43:32','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=367',0,'food','',0);
INSERT INTO `jc_posts` VALUES (368,1,'2014-05-01 19:43:44','2014-05-01 19:43:44','','209 | Chenin Blanc, Pichot, “Demi-Sec”, 2012, Vouvray','','publish','open','open','','209-chenin-blanc-pichot-demi-sec-2012-vouvray','','','2014-05-01 19:43:44','2014-05-01 19:43:44','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=368',0,'food','',0);
INSERT INTO `jc_posts` VALUES (369,1,'2014-05-01 19:44:00','2014-05-01 19:44:00','','210 | Chenin Blanc, Champalou, “Sec”, 2011, Vouvray','','publish','open','open','','210-chenin-blanc-champalou-sec-2011-vouvray','','','2014-05-01 19:44:00','2014-05-01 19:44:00','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=369',0,'food','',0);
INSERT INTO `jc_posts` VALUES (370,1,'2014-05-01 19:44:16','2014-05-01 19:44:16','','226 | Chardonnay, Laurent Miquel, 2012, Languedoc-Roussillon ','','publish','open','open','','226-chardonnay-laurent-miquel-2012-languedoc-roussillon','','','2014-05-01 19:44:16','2014-05-01 19:44:16','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=370',0,'food','',0);
INSERT INTO `jc_posts` VALUES (371,1,'2014-05-01 19:44:40','2014-05-01 19:44:40','','225 | Chardonnay, Laurent Tribut, 2012, Chablis','','publish','open','open','','225-chardonnay-laurent-tribut-2012-chablis','','','2014-05-01 19:44:40','2014-05-01 19:44:40','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=371',0,'food','',0);
INSERT INTO `jc_posts` VALUES (372,1,'2014-05-01 19:44:53','2014-05-01 19:44:53','','211 | Chardonnay, Lioco, 2011, Sonoma','','publish','open','open','','211-chardonnay-lioco-2011-sonoma','','','2014-05-01 19:44:53','2014-05-01 19:44:53','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=372',0,'food','',0);
INSERT INTO `jc_posts` VALUES (373,1,'2014-05-01 19:45:07','2014-05-01 19:45:07','','212 | Chardonnay, Textbook, “Fin du Journee”, 2011, Napa Valley','','publish','open','open','','212-chardonnay-textbook-fin-du-journee-2011-napa-valley','','','2014-05-01 19:45:07','2014-05-01 19:45:07','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=373',0,'food','',0);
INSERT INTO `jc_posts` VALUES (374,1,'2014-05-01 19:45:21','2014-05-01 19:45:21','','213 | Chardonnay, Didier Desvignes, 2012, Beaujolais ','','publish','open','open','','213-chardonnay-didier-desvignes-2012-beaujolais','','','2014-05-01 19:45:21','2014-05-01 19:45:21','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=374',0,'food','',0);
INSERT INTO `jc_posts` VALUES (375,1,'2014-05-01 19:45:35','2014-05-01 19:45:35','','217 | Chardonnay, Ramey, 2011, Russian River Valley','','publish','open','open','','217-chardonnay-ramey-2011-russian-river-valley','','','2014-05-01 19:45:35','2014-05-01 19:45:35','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=375',0,'food','',0);
INSERT INTO `jc_posts` VALUES (376,1,'2014-05-01 19:45:48','2014-05-01 19:45:48','','221 | Chardonnay, Nickel & Nickel, Truchard, 2012, Napa Valley','','publish','open','open','','221-chardonnay-nickel-nickel-truchard-2012-napa-valley','','','2014-05-01 19:45:48','2014-05-01 19:45:48','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=376',0,'food','',0);
INSERT INTO `jc_posts` VALUES (377,1,'2014-05-01 19:46:00','2014-05-01 19:46:00','','218 | Chardonnay, Far Niente, “Estate”, 2012, Napa Valley','','publish','open','open','','218-chardonnay-far-niente-estate-2012-napa-valley','','','2014-05-01 19:46:00','2014-05-01 19:46:00','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=377',0,'food','',0);
INSERT INTO `jc_posts` VALUES (378,1,'2014-05-01 19:46:12','2014-05-01 19:46:12','','227 | Chardonnay, Antica, 2012, Napa Valley','','publish','open','open','','227-chardonnay-antica-2012-napa-valley','','','2014-05-01 19:46:12','2014-05-01 19:46:12','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=378',0,'food','',0);
INSERT INTO `jc_posts` VALUES (379,1,'2014-05-01 19:46:25','2014-05-01 19:46:25','','216 | Chardonnay, Deux Montille, “En Vergisson”, 2009, Pouilly Fuissé ','','publish','open','open','','216-chardonnay-deux-montille-en-vergisson-2009-pouilly-fuisse','','','2014-05-01 19:46:25','2014-05-01 19:46:25','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=379',0,'food','',0);
INSERT INTO `jc_posts` VALUES (380,1,'2014-05-01 19:46:42','2014-05-01 19:46:42','','214 | Syrah/Cinsault, Rosé, Les Fouques,“Tradition”, 2012, Provence','','publish','open','open','','214-syrahcinsault-rose-les-fouquestradition-2012-provence','','','2014-05-01 19:46:42','2014-05-01 19:46:42','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=380',0,'food','',0);
INSERT INTO `jc_posts` VALUES (381,1,'2014-05-01 19:46:56','2014-05-01 19:46:56','','215 | Syrah/Grenache, Rosé, Combard, “Ma Couleur”, 2012, Provence','','publish','open','open','','215-syrahgrenache-rose-combard-ma-couleur-2012-provence','','','2014-05-01 19:46:56','2014-05-01 19:46:56','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=381',0,'food','',0);
INSERT INTO `jc_posts` VALUES (382,1,'2014-05-01 19:47:10','2014-05-01 19:47:10','','233 | Cab Franc, Dry Rosé, Jean-Maurice Raffault, 2013, Chinon','','publish','open','open','','233-cab-franc-dry-rose-jean-maurice-raffault-2013-chinon','','','2014-05-01 19:47:10','2014-05-01 19:47:10','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=382',0,'food','',0);
INSERT INTO `jc_posts` VALUES (383,1,'2014-05-01 19:47:23','2014-05-01 19:47:23','','223 | Pinot Noir/Cabernet Franc, Rosé, J. Mourat, 2013, Loire','','publish','open','open','','223-pinot-noircabernet-franc-rose-j-mourat-2013-loire','','','2014-05-01 19:47:23','2014-05-01 19:47:23','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=383',0,'food','',0);
INSERT INTO `jc_posts` VALUES (384,1,'2014-05-01 19:48:13','2014-05-01 19:48:13','','300 | Blanc de Blancs, Francois Montand, NV, Languedoc-Roussillon (split) ','','publish','open','open','','300-blanc-de-blancs-francois-montand-nv-languedoc-roussillon-split','','','2014-05-01 19:48:13','2014-05-01 19:48:13','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=384',0,'food','',0);
INSERT INTO `jc_posts` VALUES (385,1,'2014-05-01 19:48:27','2014-05-01 19:48:27','','301 | Cremant de Loire, NV, Château Gaillard','','publish','open','open','','301-cremant-de-loire-nv-chateau-gaillard','','','2014-05-01 19:48:27','2014-05-01 19:48:27','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=385',0,'food','',0);
INSERT INTO `jc_posts` VALUES (386,1,'2014-05-01 19:48:43','2014-05-01 19:48:43','','307 | Gamay, Rosé, Renardat-Fache, NV, Cerdon du Bugey','','publish','open','open','','307-gamay-rose-renardat-fache-nv-cerdon-du-bugey','','','2014-05-01 19:48:43','2014-05-01 19:48:43','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=386',0,'food','',0);
INSERT INTO `jc_posts` VALUES (387,1,'2014-05-01 19:48:57','2014-05-01 19:48:57','','308 | Prosecco, Ca’ dei Zago “Col Fondo”, NV, Veneto','','publish','open','open','','308-prosecco-ca-dei-zago-col-fondo-nv-veneto','','','2014-05-01 19:48:57','2014-05-01 19:48:57','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=387',0,'food','',0);
INSERT INTO `jc_posts` VALUES (388,1,'2014-05-01 19:49:12','2014-05-01 19:49:12','','302 | Brut, Champagne, NV, Perrier-Jouet','','publish','open','open','','302-brut-champagne-nv-perrier-jouet','','','2014-05-01 19:49:12','2014-05-01 19:49:12','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=388',0,'food','',0);
INSERT INTO `jc_posts` VALUES (389,1,'2014-05-01 19:49:31','2014-05-01 19:49:31','','303 | Brut, Champagne, NV, Taittinger La Francaise','','publish','open','open','','303-brut-champagne-nv-taittinger-la-francaise','','','2014-05-01 19:49:31','2014-05-01 19:49:31','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=389',0,'food','',0);
INSERT INTO `jc_posts` VALUES (390,1,'2014-05-01 19:49:45','2014-05-01 19:49:45','','304 | Brut Rose, Champagne, NV, Francois Dilligent (½ bottle)','','publish','open','open','','304-brut-rose-champagne-nv-francois-dilligent-%c2%bd-bottle','','','2014-05-01 19:49:45','2014-05-01 19:49:45','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=390',0,'food','',0);
INSERT INTO `jc_posts` VALUES (391,1,'2014-05-01 19:49:57','2014-05-01 19:49:57','','305 | Brut Reserve, Champagne, NV, J. Lassalle','','publish','open','open','','305-brut-reserve-champagne-nv-j-lassalle','','','2014-05-01 19:49:57','2014-05-01 19:49:57','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=391',0,'food','',0);
INSERT INTO `jc_posts` VALUES (392,1,'2014-05-01 19:50:11','2014-05-01 19:50:11','','306 | Extra Brut, Champagne, Resonance, NV, Marie-Courtin (½ bottle)','','publish','open','open','','306-extra-brut-champagne-resonance-nv-marie-courtin-%c2%bd-bottle','','','2014-05-01 19:50:11','2014-05-01 19:50:11','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=392',0,'food','',0);
INSERT INTO `jc_posts` VALUES (393,1,'2014-05-01 19:50:27','2014-05-01 19:50:27','','701 | 10 year, Tawny, Taylor Fladgate','','publish','open','open','','701-10-year-tawny-taylor-fladgate','','','2014-05-01 19:50:27','2014-05-01 19:50:27','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=393',0,'food','',0);
INSERT INTO `jc_posts` VALUES (394,1,'2014-05-01 19:50:41','2014-05-01 19:50:41','','702 | 20 year, Warres Otima ','','publish','open','open','','702-20-year-warres-otima','','','2014-05-01 19:50:41','2014-05-01 19:50:41','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=394',0,'food','',0);
INSERT INTO `jc_posts` VALUES (395,1,'2014-05-01 19:50:55','2014-05-01 19:50:55','','703 | Ruby, Quinta do Infantando','','publish','open','open','','703-ruby-quinta-do-infantando','','','2014-05-01 19:50:55','2014-05-01 19:50:55','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=395',0,'food','',0);
INSERT INTO `jc_posts` VALUES (396,1,'2014-05-01 19:51:09','2014-05-01 19:51:09','','704 | Tawny, Quinta do Infantando','','publish','open','open','','704-tawny-quinta-do-infantando','','','2014-05-01 19:51:09','2014-05-01 19:51:09','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=396',0,'food','',0);
INSERT INTO `jc_posts` VALUES (397,1,'2014-05-01 19:51:40','2014-05-01 19:51:40','','705 | Rainwater Reserve, Broadbent','','publish','open','open','','705-rainwater-reserve-broadbent','','','2014-05-01 19:51:40','2014-05-01 19:51:40','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=397',0,'food','',0);
INSERT INTO `jc_posts` VALUES (398,1,'2014-05-01 19:51:56','2014-05-01 19:51:56','','706 | 5 year, Broadbent','','publish','open','open','','706-5-year-broadbent','','','2014-05-01 19:51:56','2014-05-01 19:51:56','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=398',0,'food','',0);
INSERT INTO `jc_posts` VALUES (399,1,'2014-05-01 19:52:08','2014-05-01 19:52:08','','707 | La Cigarrera, Manzanilla','','publish','open','open','','707-la-cigarrera-manzanilla','','','2014-05-01 19:52:08','2014-05-01 19:52:08','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=399',0,'food','',0);
INSERT INTO `jc_posts` VALUES (400,1,'2014-05-01 19:52:23','2014-05-01 19:52:23','','708 | El Maestro Sierra, Pedro Ximenez','','publish','open','open','','708-el-maestro-sierra-pedro-ximenez','','','2014-05-01 19:52:27','2014-05-01 19:52:27','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=400',0,'food','',0);
INSERT INTO `jc_posts` VALUES (401,1,'2014-05-01 19:55:54','2014-05-01 19:55:54','','110 | Pinot Noir, Vercheres, 2012, Burgundy','','publish','open','open','','110-pinot-noir-vercheres-2012-burgundy','','','2014-05-01 19:55:54','2014-05-01 19:55:54','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=401',0,'food','',0);
INSERT INTO `jc_posts` VALUES (402,1,'2014-05-01 19:56:14','2014-05-01 19:56:14','','112 | Malbec, Domaine Baron, 2011, Loire','','publish','open','open','','112-malbec-domaine-baron-2011-loire','','','2014-05-01 19:56:14','2014-05-01 19:56:14','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=402',0,'food','',0);
INSERT INTO `jc_posts` VALUES (403,1,'2014-05-01 19:56:38','2014-05-01 19:56:38','','113 | Bordeaux Blend, Château Vieux Manoir, 2009, Bordeaux','','publish','open','open','','113-bordeaux-blend-chateau-vieux-manoir-2009-bordeaux','','','2014-05-01 19:56:38','2014-05-01 19:56:38','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=403',0,'food','',0);
INSERT INTO `jc_posts` VALUES (404,1,'2014-05-01 19:57:20','2014-05-01 19:57:20','','122 | Merlot, La Terre, NV, France ','','publish','open','open','','122-merlot-la-terre-nv-france','','','2014-05-01 19:57:20','2014-05-01 19:57:20','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=404',0,'food','',0);
INSERT INTO `jc_posts` VALUES (405,1,'2014-05-01 19:57:42','2014-05-01 19:57:42','','115 | Grenache/Syrah, Paul Autard, 2012, Côtes du Rhône','','publish','open','open','','115-grenachesyrah-paul-autard-2012-cotes-du-rhone','','','2014-05-01 19:57:42','2014-05-01 19:57:42','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=405',0,'food','',0);
INSERT INTO `jc_posts` VALUES (406,1,'2014-05-01 19:58:05','2014-05-01 19:58:05','','114 | Mourvedre, Les Perles, 2012, Languedoc Roussillon','','publish','open','open','','114-mourvedre-les-perles-2012-languedoc-roussillon','','','2014-05-01 19:58:05','2014-05-01 19:58:05','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=406',0,'food','',0);
INSERT INTO `jc_posts` VALUES (407,1,'2014-05-01 19:58:24','2014-05-01 19:58:24','','118 | Cabernet Sauvignon, Chasing Lions, 2012, North Coast','','publish','open','open','','118-cabernet-sauvignon-chasing-lions-2012-north-coast','','','2014-05-01 19:58:24','2014-05-01 19:58:24','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=407',0,'food','',0);
INSERT INTO `jc_posts` VALUES (408,1,'2014-05-01 20:04:03','2014-05-01 20:04:03','','501 | Pinot Noir, Becker Estate, 2010, Pfalz','','publish','open','open','','501-pinot-noir-becker-estate-2010-pfalz','','','2014-05-01 20:04:03','2014-05-01 20:04:03','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=408',0,'food','',0);
INSERT INTO `jc_posts` VALUES (409,1,'2014-05-01 20:04:25','2014-05-01 20:04:25','','502 | Pinot Noir, Michel Langlois, 2011, Loire ','','publish','open','open','','502-pinot-noir-michel-langlois-2011-loire','','','2014-05-01 20:04:25','2014-05-01 20:04:25','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=409',0,'food','',0);
INSERT INTO `jc_posts` VALUES (410,1,'2014-05-01 20:04:51','2014-05-01 20:04:51','','545 | Pinot Noir, Thibault Liger-Belair, La Corvee de Villy, 2010, Côtes de Nuits','','publish','open','open','','545-pinot-noir-thibault-liger-belair-la-corvee-de-villy-2010-cotes-de-nuits','','','2014-05-01 20:04:51','2014-05-01 20:04:51','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=410',0,'food','',0);
INSERT INTO `jc_posts` VALUES (411,1,'2014-05-01 20:05:14','2014-05-01 20:05:14','','503 | Pinot Noir, Maison Champy, Beaune, 2011, Burgundy','','publish','open','open','','503-pinot-noir-maison-champy-beaune-2011-burgundy','','','2014-05-01 20:05:14','2014-05-01 20:05:14','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=411',0,'food','',0);
INSERT INTO `jc_posts` VALUES (412,1,'2014-05-01 20:05:33','2014-05-01 20:05:33','','504 | Pinot Noir, Calera De Villiers, 2010, Central Coast','','publish','open','open','','504-pinot-noir-calera-de-villiers-2010-central-coast','','','2014-05-01 20:05:33','2014-05-01 20:05:33','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=412',0,'food','',0);
INSERT INTO `jc_posts` VALUES (413,1,'2014-05-01 20:05:51','2014-05-01 20:05:51','','505 | Pinot Noir, Hirsch Vineyards, San Andreas Fault, 2010, Sonoma ','','publish','open','open','','505-pinot-noir-hirsch-vineyards-san-andreas-fault-2010-sonoma','','','2014-05-01 20:05:51','2014-05-01 20:05:51','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=413',0,'food','',0);
INSERT INTO `jc_posts` VALUES (414,1,'2014-05-01 20:06:21','2014-05-01 20:06:21','','537 | Pinot Noir, Evesham Wood, 2012, Willamette Valley','','publish','open','open','','537-pinot-noir-evesham-wood-2012-willamette-valley','','','2014-05-01 20:06:21','2014-05-01 20:06:21','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=414',0,'food','',0);
INSERT INTO `jc_posts` VALUES (415,1,'2014-05-01 20:06:42','2014-05-01 20:06:42','','540 | Pinot Noir, Patricia Green, Reserve, 2012, Willamette Valley','','publish','open','open','','540-pinot-noir-patricia-green-reserve-2012-willamette-valley','','','2014-05-01 20:06:42','2014-05-01 20:06:42','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=415',0,'food','',0);
INSERT INTO `jc_posts` VALUES (416,1,'2014-05-01 20:06:59','2014-05-01 20:06:59','','518 | Pinot Noir, Ken Wright, Shea, 2011, Willamette Valley (½ bottle)','','publish','open','open','','518-pinot-noir-ken-wright-shea-2011-willamette-valley-%c2%bd-bottle','','','2014-05-01 20:06:59','2014-05-01 20:06:59','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=416',0,'food','',0);
INSERT INTO `jc_posts` VALUES (417,1,'2014-05-01 20:07:18','2014-05-01 20:07:18','','516 | Pinot Noir, Belle Glos, Las Alturas, 2012, Monterey','','publish','open','open','','516-pinot-noir-belle-glos-las-alturas-2012-monterey','','','2014-05-01 20:07:18','2014-05-01 20:07:18','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=417',0,'food','',0);
INSERT INTO `jc_posts` VALUES (418,1,'2014-05-01 20:07:43','2014-05-01 20:07:43','','506 | Pinot Noir/Gamay, Domaine du Moulin, 2011, Cheverny','','publish','open','open','','506-pinot-noirgamay-domaine-du-moulin-2011-cheverny','','','2014-05-01 20:07:43','2014-05-01 20:07:43','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=418',0,'food','',0);
INSERT INTO `jc_posts` VALUES (419,1,'2014-05-01 20:08:04','2014-05-01 20:08:04','','507 | Gamay, Château Thivin, Côte de Brouilly, 2012, Beaujolais ','','publish','open','open','','507-gamay-chateau-thivin-cote-de-brouilly-2012-beaujolais','','','2014-05-01 20:08:04','2014-05-01 20:08:04','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=419',0,'food','',0);
INSERT INTO `jc_posts` VALUES (420,1,'2014-05-01 20:08:24','2014-05-01 20:08:24','','538 | Gamay, Brick House, Year of the Dragon, 2012, Oregon','','publish','open','open','','538-gamay-brick-house-year-of-the-dragon-2012-oregon','','','2014-05-01 20:08:24','2014-05-01 20:08:24','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=420',0,'food','',0);
INSERT INTO `jc_posts` VALUES (421,1,'2014-05-01 20:08:41','2014-05-01 20:08:41','','543 | Malbec, Benmarco, 2011, Mendoza','','publish','open','open','','543-malbec-benmarco-2011-mendoza','','','2014-05-01 20:08:41','2014-05-01 20:08:41','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=421',0,'food','',0);
INSERT INTO `jc_posts` VALUES (422,1,'2014-05-01 20:08:59','2014-05-01 20:08:59','','517 | Merlot, L’Ecole, No. 41, 2009, Washington (½ bottle)','','publish','open','open','','517-merlot-lecole-no-41-2009-washington-%c2%bd-bottle','','','2014-05-01 20:08:59','2014-05-01 20:08:59','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=422',0,'food','',0);
INSERT INTO `jc_posts` VALUES (423,1,'2014-05-01 20:09:25','2014-05-01 20:09:25','','541 | Merlot, Shafer, 2011, Napa Valley','','publish','open','open','','541-merlot-shafer-2011-napa-valley','','','2014-05-01 20:09:25','2014-05-01 20:09:25','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=423',0,'food','',0);
INSERT INTO `jc_posts` VALUES (424,1,'2014-05-01 20:09:42','2014-05-01 20:09:42','','508 | Cabernet Franc, Bernard Baudry, Les Granges, 2012, Chinon','','publish','open','open','','508-cabernet-franc-bernard-baudry-les-granges-2012-chinon','','','2014-05-01 20:09:42','2014-05-01 20:09:42','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=424',0,'food','',0);
INSERT INTO `jc_posts` VALUES (425,1,'2014-05-01 20:09:58','2014-05-01 20:09:58','','509 | Cabernet Franc, Jean-Maurice Raffault, Les Galuches, 2012, Chinon','','publish','open','open','','509-cabernet-franc-jean-maurice-raffault-les-galuches-2012-chinon','','','2014-05-01 20:09:58','2014-05-01 20:09:58','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=425',0,'food','',0);
INSERT INTO `jc_posts` VALUES (426,1,'2014-05-01 20:10:19','2014-05-01 20:10:19','','510 | Cabernet Franc, Guy Saget, Marie de Beauregard, 2011, Chinon','','publish','open','open','','510-cabernet-franc-guy-saget-marie-de-beauregard-2011-chinon','','','2014-05-01 20:10:19','2014-05-01 20:10:19','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=426',0,'food','',0);
INSERT INTO `jc_posts` VALUES (427,1,'2014-05-01 20:10:35','2014-05-01 20:10:35','','511 | Barbera D’Asti, Bocchino, Blincin, 2010, Piedmont ','','publish','open','open','','511-barbera-dasti-bocchino-blincin-2010-piedmont','','','2014-05-01 20:10:35','2014-05-01 20:10:35','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=427',0,'food','',0);
INSERT INTO `jc_posts` VALUES (428,1,'2014-05-01 20:11:12','2014-05-01 20:11:12','','512 | Nero D’Avola, Tami, 2011, Sicily','','publish','open','open','','512-nero-davola-tami-2011-sicily','','','2014-05-01 20:11:12','2014-05-01 20:11:12','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=428',0,'food','',0);
INSERT INTO `jc_posts` VALUES (429,1,'2014-05-01 20:11:28','2014-05-01 20:11:28','','513 | Dolcetto D’Alba, Roagna, 2012, Piedmont','','publish','open','open','','513-dolcetto-dalba-roagna-2012-piedmont','','','2014-05-01 20:11:28','2014-05-01 20:11:28','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=429',0,'food','',0);
INSERT INTO `jc_posts` VALUES (430,1,'2014-05-01 20:11:44','2014-05-01 20:11:44','','514 | Syrah/Grenache/Cinsault, Bieler, Lou Bar Rou, 2012, Provence','','publish','open','open','','514-syrahgrenachecinsault-bieler-lou-bar-rou-2012-provence','','','2014-05-01 20:11:44','2014-05-01 20:11:44','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=430',0,'food','',0);
INSERT INTO `jc_posts` VALUES (431,1,'2014-05-01 20:11:59','2014-05-01 20:11:59','','515 | Syrah/Cabernet/Merlot, Triennes, St. Auguste, 2010, Provence','','publish','open','open','','515-syrahcabernetmerlot-triennes-st-auguste-2010-provence','','','2014-05-01 20:12:08','2014-05-01 20:12:08','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=431',0,'food','',0);
INSERT INTO `jc_posts` VALUES (432,1,'2014-05-01 20:12:27','2014-05-01 20:12:27','','520 | Carignan/Grenache, Puig-Parahy, Georges, 2010, Roussillon','','publish','open','open','','520-carignangrenache-puig-parahy-georges-2010-roussillon','','','2014-05-01 20:12:27','2014-05-01 20:12:27','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=432',0,'food','',0);
INSERT INTO `jc_posts` VALUES (433,1,'2014-05-01 20:12:45','2014-05-01 20:12:45','','519 | Grenache/Syrah, Trapadis, Rasteau, Tradition, 2011, Côtes du Rhône','','publish','open','open','','519-grenachesyrah-trapadis-rasteau-tradition-2011-cotes-du-rhone','','','2014-05-01 20:12:45','2014-05-01 20:12:45','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=433',0,'food','',0);
INSERT INTO `jc_posts` VALUES (434,1,'2014-05-01 20:13:07','2014-05-01 20:13:07','','544 | Grenache/Carignan, Kreydenweiss, Les Grimaudes, 2011, Rhône','','publish','open','open','','544-grenachecarignan-kreydenweiss-les-grimaudes-2011-rhone','','','2014-05-01 20:13:07','2014-05-01 20:13:07','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=434',0,'food','',0);
INSERT INTO `jc_posts` VALUES (435,1,'2014-05-01 20:13:22','2014-05-01 20:13:22','','521 | Bordeaux, Château La Coudraie, 2010, Bordeaux ','','publish','open','open','','521-bordeaux-chateau-la-coudraie-2010-bordeaux','','','2014-05-01 20:13:22','2014-05-01 20:13:22','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=435',0,'food','',0);
INSERT INTO `jc_posts` VALUES (436,1,'2014-05-01 20:13:47','2014-05-01 20:13:47','','522 | Bordeaux, Château Aney, Haut Medoc, 2010, Bordeaux','','publish','open','open','','522-bordeaux-chateau-aney-haut-medoc-2010-bordeaux','','','2014-05-01 20:13:47','2014-05-01 20:13:47','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=436',0,'food','',0);
INSERT INTO `jc_posts` VALUES (437,1,'2014-05-01 20:14:05','2014-05-01 20:14:05','','539 | Bordeaux, Château Vignot, St. Emilion Grand Cru, 2006, Bordeaux','','publish','open','open','','539-bordeaux-chateau-vignot-st-emilion-grand-cru-2006-bordeaux','','','2014-05-01 20:14:05','2014-05-01 20:14:05','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=437',0,'food','',0);
INSERT INTO `jc_posts` VALUES (438,1,'2014-05-01 20:14:30','2014-05-01 20:14:30','','523 | Petit Sirah, Jaffurs, 2010, Santa Barbara','','publish','open','open','','523-petit-sirah-jaffurs-2010-santa-barbara','','','2014-05-01 20:14:30','2014-05-01 20:14:30','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=438',0,'food','',0);
INSERT INTO `jc_posts` VALUES (439,1,'2014-05-01 20:14:47','2014-05-01 20:14:47','','524 | Syrah, Château St. Cosme, Crozes Hermitage, 2011, Northern Rhone','','publish','open','open','','524-syrah-chateau-st-cosme-crozes-hermitage-2011-northern-rhone','','','2014-05-01 20:14:47','2014-05-01 20:14:47','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=439',0,'food','',0);
INSERT INTO `jc_posts` VALUES (440,1,'2014-05-01 20:15:12','2014-05-01 20:15:12','','525 | Mourvedre/Syrah/Cinsault, Domaine du Gros ‘Noré, 2009, Provence','','publish','open','open','','525-mourvedresyrahcinsault-domaine-du-gros-nore-2009-provence','','','2014-05-01 20:15:12','2014-05-01 20:15:12','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=440',0,'food','',0);
INSERT INTO `jc_posts` VALUES (441,1,'2014-05-01 20:15:30','2014-05-01 20:15:30','','547 | Tempranillo, Rob Murray, Forces of Nature, 2012, Paso Robles','','publish','open','open','','547-tempranillo-rob-murray-forces-of-nature-2012-paso-robles','','','2014-05-01 20:15:30','2014-05-01 20:15:30','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=441',0,'food','',0);
INSERT INTO `jc_posts` VALUES (442,1,'2014-05-01 20:15:52','2014-05-01 20:15:52','','526 | Cabernet Sauvignon, SP Drummer, 2005, Oakville ','','publish','open','open','','526-cabernet-sauvignon-sp-drummer-2005-oakville','','','2014-05-01 20:15:52','2014-05-01 20:15:52','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=442',0,'food','',0);
INSERT INTO `jc_posts` VALUES (443,1,'2014-05-01 20:16:10','2014-05-01 20:16:10','','527 | Cabernet Sauvignon, Caymus, 2011, Napa Valley','','publish','open','open','','527-cabernet-sauvignon-caymus-2011-napa-valley','','','2014-05-01 20:16:10','2014-05-01 20:16:10','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=443',0,'food','',0);
INSERT INTO `jc_posts` VALUES (444,1,'2014-05-01 20:16:26','2014-05-01 20:16:26','','528 | Cabernet Sauvignon, Duckhorn, 2010, Napa Valley','','publish','open','open','','528-cabernet-sauvignon-duckhorn-2010-napa-valley','','','2014-05-01 20:16:26','2014-05-01 20:16:26','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=444',0,'food','',0);
INSERT INTO `jc_posts` VALUES (445,1,'2014-05-01 20:16:40','2014-05-01 20:16:40','','529 | Cabernet Sauvignon, Heitz Cellars, 2009, Napa Valley','','publish','open','open','','529-cabernet-sauvignon-heitz-cellars-2009-napa-valley','','','2014-05-01 20:16:40','2014-05-01 20:16:40','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=445',0,'food','',0);
INSERT INTO `jc_posts` VALUES (446,1,'2014-05-01 20:17:00','2014-05-01 20:17:00','','530 | Cabernet Sauvignon, Stag’s Leap, Artemis, 2011, Napa Valley','','publish','open','open','','530-cabernet-sauvignon-stags-leap-artemis-2011-napa-valley','','','2014-05-01 20:17:00','2014-05-01 20:17:00','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=446',0,'food','',0);
INSERT INTO `jc_posts` VALUES (447,1,'2014-05-01 20:17:27','2014-05-01 20:17:27','','531 | Cabernet Sauvignon, Silver Oak, 2008, Alexander Valley','','publish','open','open','','531-cabernet-sauvignon-silver-oak-2008-alexander-valley','','','2014-05-01 20:17:27','2014-05-01 20:17:27','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=447',0,'food','',0);
INSERT INTO `jc_posts` VALUES (448,1,'2014-05-01 20:17:42','2014-05-01 20:17:42','','532 | Cabernet Sauvignon, Jordan, 2009, Sonoma','','publish','open','open','','532-cabernet-sauvignon-jordan-2009-sonoma','','','2014-05-01 20:17:42','2014-05-01 20:17:42','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=448',0,'food','',0);
INSERT INTO `jc_posts` VALUES (449,1,'2014-05-01 20:18:10','2014-05-01 20:18:10','','535 | Cabernet Sauvignon, Stuhlmuller, 2010, Alexander Valley (½ bottle) ','','publish','open','open','','535-cabernet-sauvignon-stuhlmuller-2010-alexander-valley-%c2%bd-bottle','','','2014-05-01 20:18:10','2014-05-01 20:18:10','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=449',0,'food','',0);
INSERT INTO `jc_posts` VALUES (450,1,'2014-05-01 20:18:29','2014-05-01 20:18:29','','534 | Grenache/Syrah, Telegramme, 2011, Châteauneuf-du-Pape','','publish','open','open','','534-grenachesyrah-telegramme-2011-chateauneuf-du-pape','','','2014-05-01 20:18:29','2014-05-01 20:18:29','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=450',0,'food','',0);
INSERT INTO `jc_posts` VALUES (451,1,'2014-05-01 20:18:46','2014-05-01 20:18:46','','542 | Barolo, Damilano, “Lecinquevigne”, 2009, Piedmont','','publish','open','open','','542-barolo-damilano-lecinquevigne-2009-piedmont','','','2014-05-01 20:18:46','2014-05-01 20:18:46','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=451',0,'food','',0);
INSERT INTO `jc_posts` VALUES (452,1,'2014-05-01 20:19:01','2014-05-01 20:19:01','','536 | Zinfandel, Peter Franus, 2011, Napa Valley','','publish','open','open','','536-zinfandel-peter-franus-2011-napa-valley','','','2014-05-01 20:19:01','2014-05-01 20:19:01','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=452',0,'food','',0);
INSERT INTO `jc_posts` VALUES (455,1,'2014-05-01 20:27:10','2014-05-01 20:27:10','[foodmenu groups=\"draught\" showtitles=1 showsubtitles=1]\r\n\r\n[foodmenu groups=\"bottle\" showtitles=1 showsubtitles=1]','Beer List','','publish','open','open','','beer-list','','','2014-05-01 20:52:26','2014-05-01 20:52:26','',276,'http://maxsonbroad.wpengine.com/?page_id=455',0,'page','',0);
INSERT INTO `jc_posts` VALUES (456,1,'2014-05-01 20:28:05','2014-05-01 20:28:05','','Beck’s Non-Alcoholic Germany .30% | 12 oz ','','publish','open','open','','becks-non-alcoholic-germany-30-12-oz','','','2014-05-01 20:53:49','2014-05-01 20:53:49','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=456',0,'food','',0);
INSERT INTO `jc_posts` VALUES (457,1,'2014-05-01 20:28:19','2014-05-01 20:28:19','','Lindeman’s Framboise (fruit lambic) Belgium | 2.5% | 12 oz','','publish','open','open','','lindemans-framboise-fruit-lambic-belgium-2-5-12-oz','','','2014-05-01 20:53:54','2014-05-01 20:53:54','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=457',0,'food','',0);
INSERT INTO `jc_posts` VALUES (458,1,'2014-05-01 20:28:32','2014-05-01 20:28:32','','Lindeman’s Framboise (fruit lambic) Belgium | 2.5% | 12 oz','','publish','open','open','','lindemans-framboise-fruit-lambic-belgium-2-5-12-oz-2','','','2014-05-01 20:53:58','2014-05-01 20:53:58','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=458',0,'food','',0);
INSERT INTO `jc_posts` VALUES (459,1,'2014-05-01 20:28:47','2014-05-01 20:28:47','','Lindeman’s Cassis (fruit lambic) Belgium | 3.5% | 12 oz','','publish','open','open','','lindemans-cassis-fruit-lambic-belgium-3-5-12-oz','','','2014-05-01 20:54:02','2014-05-01 20:54:02','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=459',0,'food','',0);
INSERT INTO `jc_posts` VALUES (460,1,'2014-05-01 20:28:59','2014-05-01 20:28:59','','Lindeman’s Faro Lambic Belgium | 4.2% | 12 oz','','publish','open','open','','lindemans-faro-lambic-belgium-4-2-12-oz','','','2014-05-01 20:54:06','2014-05-01 20:54:06','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=460',0,'food','',0);
INSERT INTO `jc_posts` VALUES (461,1,'2014-05-01 20:29:12','2014-05-01 20:29:12','','Bold Rock VA Apple Cider (GF) Virginia | 4.2% | 12 oz','','publish','open','open','','bold-rock-va-apple-cider-gf-virginia-4-2-12-oz','','','2014-05-01 20:29:12','2014-05-01 20:29:12','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=461',0,'food','',0);
INSERT INTO `jc_posts` VALUES (462,1,'2014-05-01 20:29:25','2014-05-01 20:29:25','','Bud Light (light lager) Missouri 4.2% | 12 oz ','','publish','open','open','','bud-light-light-lager-missouri-4-2-12-oz','','','2014-05-01 20:29:25','2014-05-01 20:29:25','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=462',0,'food','',0);
INSERT INTO `jc_posts` VALUES (463,1,'2014-05-01 20:29:38','2014-05-01 20:29:38','','Modelo Especiale Mexico 4.4% | 12 oz','','publish','open','open','','modelo-especiale-mexico-4-4-12-oz','','','2014-05-01 20:29:38','2014-05-01 20:29:38','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=463',0,'food','',0);
INSERT INTO `jc_posts` VALUES (464,1,'2014-05-01 20:29:51','2014-05-01 20:29:51','','3 Brothers Great Outdoors (pale ale) Virginia | 4.8% | 12 oz','','publish','open','open','','3-brothers-great-outdoors-pale-ale-virginia-4-8-12-oz','','','2014-05-01 20:29:51','2014-05-01 20:29:51','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=464',0,'food','',0);
INSERT INTO `jc_posts` VALUES (465,1,'2014-05-01 20:30:03','2014-05-01 20:30:03','','Crabbie’s Ginger Beer (GF) Scotland | 4.8% | 11.2 oz','','publish','open','open','','crabbies-ginger-beer-gf-scotland-4-8-11-2-oz','','','2014-05-01 20:30:03','2014-05-01 20:30:03','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=465',0,'food','',0);
INSERT INTO `jc_posts` VALUES (466,1,'2014-05-01 20:30:21','2014-05-01 20:30:21','','Devil’s Backbone Vienna Lager Virginia | 4.9% | 12 oz ','','publish','open','open','','devils-backbone-vienna-lager-virginia-4-9-12-oz','','','2014-05-01 20:30:21','2014-05-01 20:30:21','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=466',0,'food','',0);
INSERT INTO `jc_posts` VALUES (467,1,'2014-05-01 20:30:32','2014-05-01 20:30:32','','Stella Artois (lager) Belgium | 5% | 12 oz','','publish','open','open','','stella-artois-lager-belgium-5-12-oz','','','2014-05-01 20:30:32','2014-05-01 20:30:32','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=467',0,'food','',0);
INSERT INTO `jc_posts` VALUES (468,1,'2014-05-01 20:30:43','2014-05-01 20:30:43','','Allagash White (witbier) Maine | 5% | 12 oz','','publish','open','open','','allagash-white-witbier-maine-5-12-oz','','','2014-05-01 20:30:43','2014-05-01 20:30:43','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=468',0,'food','',0);
INSERT INTO `jc_posts` VALUES (469,1,'2014-05-01 20:30:53','2014-05-01 20:30:53','','Kronenbourg Blanc (witbier) France | 5% | 12 oz','','publish','open','open','','kronenbourg-blanc-witbier-france-5-12-oz','','','2014-05-01 20:30:53','2014-05-01 20:30:53','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=469',0,'food','',0);
INSERT INTO `jc_posts` VALUES (470,1,'2014-05-01 20:31:02','2014-05-01 20:31:02','','Budweiser (lager) Missouri | 5% | 12 oz','','publish','open','open','','budweiser-lager-missouri-5-12-oz','','','2014-05-01 20:31:02','2014-05-01 20:31:02','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=470',0,'food','',0);
INSERT INTO `jc_posts` VALUES (471,1,'2014-05-01 20:31:15','2014-05-01 20:31:15','','Wittekerke (witbier) Belgium | 5% | 11.2 oz can','','publish','open','open','','wittekerke-witbier-belgium-5-11-2-oz-can','','','2014-05-01 20:31:15','2014-05-01 20:31:15','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=471',0,'food','',0);
INSERT INTO `jc_posts` VALUES (472,1,'2014-05-01 20:31:25','2014-05-01 20:31:25','','Hitachino Nest White Ale (witbier) Japan | 5% | 11.2 oz','','publish','open','open','','hitachino-nest-white-ale-witbier-japan-5-11-2-oz','','','2014-05-01 20:31:25','2014-05-01 20:31:25','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=472',0,'food','',0);
INSERT INTO `jc_posts` VALUES (473,1,'2014-05-01 20:31:37','2014-05-01 20:31:37','','Strangeways Albino Monkey (white) Virginia | 5% | 22 oz','','publish','open','open','','strangeways-albino-monkey-white-virginia-5-22-oz','','','2014-05-01 20:31:37','2014-05-01 20:31:37','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=473',0,'food','',0);
INSERT INTO `jc_posts` VALUES (474,1,'2014-05-01 20:31:52','2014-05-01 20:31:52','','O’Connor Red Nun (red ale) Virginia | 5.5% | 12 oz','','publish','open','open','','oconnor-red-nun-red-ale-virginia-5-5-12-oz','','','2014-05-01 20:31:52','2014-05-01 20:31:52','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=474',0,'food','',0);
INSERT INTO `jc_posts` VALUES (475,1,'2014-05-01 20:32:04','2014-05-01 20:32:04','','Center of the Universe Ray Ray’s Virginia | 5.2% | 12 oz can','','publish','open','open','','center-of-the-universe-ray-rays-virginia-5-2-12-oz-can','','','2014-05-01 20:32:04','2014-05-01 20:32:04','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=475',0,'food','',0);
INSERT INTO `jc_posts` VALUES (476,1,'2014-05-01 20:32:18','2014-05-01 20:32:18','','Lindeman’s Cuvée René (gueuze) Belgium | 5.5% | 12 oz','','publish','open','open','','lindemans-cuvee-rene-gueuze-belgium-5-5-12-oz','','','2014-05-01 20:32:18','2014-05-01 20:32:18','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=476',0,'food','',0);
INSERT INTO `jc_posts` VALUES (477,1,'2014-05-01 20:32:29','2014-05-01 20:32:29','','Pigeonnelle Loirette (blond) France | 5.5% | 11.2 oz','','publish','open','open','','pigeonnelle-loirette-blond-france-5-5-11-2-oz','','','2014-05-01 20:32:29','2014-05-01 20:32:29','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=477',0,'food','',0);
INSERT INTO `jc_posts` VALUES (478,1,'2014-05-01 20:32:41','2014-05-01 20:32:41','','The Bruery Rueuze (gueuze) Belgium | 5.9% | 750 mL','','publish','open','open','','the-bruery-rueuze-gueuze-belgium-5-9-750-ml','','','2014-05-01 20:32:41','2014-05-01 20:32:41','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=478',0,'food','',0);
INSERT INTO `jc_posts` VALUES (479,1,'2014-05-01 20:32:53','2014-05-01 20:32:53','','Strangeways Woodbooger (brown) Virginia | 6% | 22 oz','','publish','open','open','','strangeways-woodbooger-brown-virginia-6-22-oz','','','2014-05-01 20:32:53','2014-05-01 20:32:53','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=479',0,'food','',0);
INSERT INTO `jc_posts` VALUES (480,1,'2014-05-01 20:33:06','2014-05-01 20:33:06','','Oude Quetsche Tilquin à L’Ancienne  (plum lambic) Belgium 6% | 12.7 oz','','publish','open','open','','oude-quetsche-tilquin-a-lancienne-plum-lambic-belgium-6-12-7-oz','','','2014-05-01 20:33:06','2014-05-01 20:33:06','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=480',0,'food','',0);
INSERT INTO `jc_posts` VALUES (481,1,'2014-05-01 20:33:20','2014-05-01 20:33:20','','Left Hand Nitro Milk Stout Colorado | 6% | 12 oz ','','publish','open','open','','left-hand-nitro-milk-stout-colorado-6-12-oz','','','2014-05-01 20:33:20','2014-05-01 20:33:20','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=481',0,'food','',0);
INSERT INTO `jc_posts` VALUES (482,1,'2014-05-01 20:33:32','2014-05-01 20:33:32','','Greens Amber (GF) Belgium | 6% | 16 oz','','publish','open','open','','greens-amber-gf-belgium-6-16-oz','','','2014-05-01 20:33:32','2014-05-01 20:33:32','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=482',0,'food','',0);
INSERT INTO `jc_posts` VALUES (483,1,'2014-05-01 20:33:45','2014-05-01 20:33:45','','Legend Brown Virginia | 6% | 12 oz ','','publish','open','open','','legend-brown-virginia-6-12-oz','','','2014-05-01 20:33:45','2014-05-01 20:33:45','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=483',0,'food','',0);
INSERT INTO `jc_posts` VALUES (484,1,'2014-05-01 20:34:05','2014-05-01 20:34:05','','Urthel Saisonnière (saison) Belgium | 6% | 11.2 oz ','','publish','open','open','','urthel-saisonniere-saison-belgium-6-11-2-oz','','','2014-05-01 20:34:05','2014-05-01 20:34:05','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=484',0,'food','',0);
INSERT INTO `jc_posts` VALUES (485,1,'2014-05-01 20:35:57','2014-05-01 20:35:57','','Beersel Gueuze Vieille (gueuze) Belgium | 6% | 12.7 oz','','publish','open','open','','beersel-gueuze-vieille-gueuze-belgium-6-12-7-oz','','','2014-05-01 20:35:57','2014-05-01 20:35:57','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=485',0,'food','',0);
INSERT INTO `jc_posts` VALUES (486,1,'2014-05-01 20:36:11','2014-05-01 20:36:11','','Orval Trappist Ale (pale ale) Belgium | 6.2% | 11.2 oz','','publish','open','open','','orval-trappist-ale-pale-ale-belgium-6-2-11-2-oz','','','2014-05-01 20:36:11','2014-05-01 20:36:11','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=486',0,'food','',0);
INSERT INTO `jc_posts` VALUES (487,1,'2014-05-01 20:36:23','2014-05-01 20:36:23','','Licking Hole Creek Short Pump Saison Virginia | 6.8% | 750 mL ','','publish','open','open','','licking-hole-creek-short-pump-saison-virginia-6-8-750-ml','','','2014-05-01 20:36:23','2014-05-01 20:36:23','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=487',0,'food','',0);
INSERT INTO `jc_posts` VALUES (488,1,'2014-05-01 20:36:36','2014-05-01 20:36:36','','Hardywood Singel (pale ale) Virginia | 12 oz | 6.2%','','publish','open','open','','hardywood-singel-pale-ale-virginia-12-oz-6-2','','','2014-05-01 20:53:45','2014-05-01 20:53:45','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=488',0,'food','',0);
INSERT INTO `jc_posts` VALUES (489,1,'2014-05-01 20:36:47','2014-05-01 20:36:47','','Westmalle Trappist Ale (dubbel) Belgium | 7% | 11.2 oz ','','publish','open','open','','westmalle-trappist-ale-dubbel-belgium-7-11-2-oz','','','2014-05-01 20:36:47','2014-05-01 20:36:47','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=489',0,'food','',0);
INSERT INTO `jc_posts` VALUES (490,1,'2014-05-01 20:36:58','2014-05-01 20:36:58','','Chimay Première (dubbel) Belgium | 7% | 11.2 oz ','','publish','open','open','','chimay-premiere-dubbel-belgium-7-11-2-oz','','','2014-05-01 20:36:58','2014-05-01 20:36:58','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=490',0,'food','',0);
INSERT INTO `jc_posts` VALUES (491,1,'2014-05-01 20:37:09','2014-05-01 20:37:09','','Chimay Première (dubbel) Belgium | 7% | 750 mL','','publish','open','open','','chimay-premiere-dubbel-belgium-7-750-ml','','','2014-05-01 20:37:09','2014-05-01 20:37:09','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=491',0,'food','',0);
INSERT INTO `jc_posts` VALUES (492,1,'2014-05-01 20:37:22','2014-05-01 20:37:22','','Green Flash West Coast IPA California | 7.3% | 12 oz ','','publish','open','open','','green-flash-west-coast-ipa-california-7-3-12-oz','','','2014-05-01 20:37:22','2014-05-01 20:37:22','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=492',0,'food','',0);
INSERT INTO `jc_posts` VALUES (493,1,'2014-05-01 20:37:33','2014-05-01 20:37:33','','O’Connor El Guapo IPA Virginia | 7.5% | 12 oz','','publish','open','open','','oconnor-el-guapo-ipa-virginia-7-5-12-oz','','','2014-05-01 20:37:33','2014-05-01 20:37:33','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=493',0,'food','',0);
INSERT INTO `jc_posts` VALUES (494,1,'2014-05-01 20:37:44','2014-05-01 20:37:44','','Hof Ten Dormaal Dark Belgium | 7.5% | 12.7 oz','','publish','open','open','','hof-ten-dormaal-dark-belgium-7-5-12-7-oz','','','2014-05-01 20:37:44','2014-05-01 20:37:44','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=494',0,'food','',0);
INSERT INTO `jc_posts` VALUES (495,1,'2014-05-01 20:37:55','2014-05-01 20:37:55','','Poperings Hommel Ale (IPA)  Belgium | 7.5% | 750 mL','','publish','open','open','','poperings-hommel-ale-ipa-belgium-7-5-750-ml','','','2014-05-01 20:37:55','2014-05-01 20:37:55','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=495',0,'food','',0);
INSERT INTO `jc_posts` VALUES (496,1,'2014-05-01 20:38:06','2014-05-01 20:38:06','','Allagash Black (stout) Maine | 7.5% | 12 oz','','publish','open','open','','allagash-black-stout-maine-7-5-12-oz','','','2014-05-01 20:38:06','2014-05-01 20:38:06','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=496',0,'food','',0);
INSERT INTO `jc_posts` VALUES (497,1,'2014-05-01 20:38:17','2014-05-01 20:38:17','','Ommegang Hennepin (saison) New York | 7.7% | 12 oz','','publish','open','open','','ommegang-hennepin-saison-new-york-7-7-12-oz','','','2014-05-01 20:38:17','2014-05-01 20:38:17','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=497',0,'food','',0);
INSERT INTO `jc_posts` VALUES (498,1,'2014-05-01 20:38:30','2014-05-01 20:38:30','','Liefman’s Goudenband (oud bruin)  Belgium | 8% | 750 mL','','publish','open','open','','liefmans-goudenband-oud-bruin-belgium-8-750-ml','','','2014-05-01 20:38:30','2014-05-01 20:38:30','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=498',0,'food','',0);
INSERT INTO `jc_posts` VALUES (499,1,'2014-05-01 20:38:42','2014-05-01 20:38:42','','Scotch de Silly Barrel Aged Belgium | 8% | 750 mL','','publish','open','open','','scotch-de-silly-barrel-aged-belgium-8-750-ml','','','2014-05-01 20:38:42','2014-05-01 20:38:42','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=499',0,'food','',0);
INSERT INTO `jc_posts` VALUES (500,1,'2014-05-01 20:38:54','2014-05-01 20:38:54','','Caracole Saxo (strong pale ale) Belgium | 8% | 11.2 oz','','publish','open','open','','caracole-saxo-strong-pale-ale-belgium-8-11-2-oz','','','2014-05-01 20:38:54','2014-05-01 20:38:54','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=500',0,'food','',0);
INSERT INTO `jc_posts` VALUES (501,1,'2014-05-01 20:39:07','2014-05-01 20:39:07','','Petrus Aged Red (flanders oud bruin) Belgium | 8.5% | 12 oz','','publish','open','open','','petrus-aged-red-flanders-oud-bruin-belgium-8-5-12-oz','','','2014-05-01 20:39:07','2014-05-01 20:39:07','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=501',0,'food','',0);
INSERT INTO `jc_posts` VALUES (502,1,'2014-05-01 20:39:17','2014-05-01 20:39:17','','Delirium Nocturnums Belgium | 8.5% | 11.2 oz','','publish','open','open','','delirium-nocturnums-belgium-8-5-11-2-oz','','','2014-05-01 20:39:17','2014-05-01 20:39:17','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=502',0,'food','',0);
INSERT INTO `jc_posts` VALUES (503,1,'2014-05-01 20:39:30','2014-05-01 20:39:30','','Des Rocs Grand Cru (strong dark ale) Belgium | 9% | 11.2 oz','','publish','open','open','','des-rocs-grand-cru-strong-dark-ale-belgium-9-11-2-oz','','','2014-05-01 20:39:30','2014-05-01 20:39:30','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=503',0,'food','',0);
INSERT INTO `jc_posts` VALUES (504,1,'2014-05-01 20:39:51','2014-05-01 20:39:51','','Des Rocs Grand Cru (strong dark ale) Belgium | 9% | 11.2 oz','','publish','open','open','','des-rocs-grand-cru-strong-dark-ale-belgium-9-11-2-oz-2','','','2014-05-01 20:39:51','2014-05-01 20:39:51','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=504',0,'food','',0);
INSERT INTO `jc_posts` VALUES (505,1,'2014-05-01 20:40:03','2014-05-01 20:40:03','','Chimay Grande Réserve Belgium | 9% | 750 mL','','publish','open','open','','chimay-grande-reserve-belgium-9-750-ml','','','2014-05-01 20:40:03','2014-05-01 20:40:03','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=505',0,'food','',0);
INSERT INTO `jc_posts` VALUES (506,1,'2014-05-01 20:40:18','2014-05-01 20:40:18','','Goose Island Lolita (wild ale) Chicago | 9% | 756 mL','','publish','open','open','','goose-island-lolita-wild-ale-chicago-9-756-ml','','','2014-05-01 20:40:18','2014-05-01 20:40:18','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=506',0,'food','',0);
INSERT INTO `jc_posts` VALUES (507,1,'2014-05-01 20:40:30','2014-05-01 20:40:30','','Licking Hole Creek Three Chopt  Tripel Virginia | 9.3% | 750 mL','','publish','open','open','','licking-hole-creek-three-chopt-tripel-virginia-9-3-750-ml','','','2014-05-01 20:40:30','2014-05-01 20:40:30','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=507',0,'food','',0);
INSERT INTO `jc_posts` VALUES (508,1,'2014-05-01 20:40:43','2014-05-01 20:40:43','','Dupont Avec Les Bon Vouex (saison) Belgium | 9.5% | 1.5 L','','publish','open','open','','dupont-avec-les-bon-vouex-saison-belgium-9-5-1-5-l','','','2014-05-01 20:40:43','2014-05-01 20:40:43','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=508',0,'food','',0);
INSERT INTO `jc_posts` VALUES (509,1,'2014-05-01 20:40:56','2014-05-01 20:40:56','','St. Bernardus ABT 12 (quadrupel) Belgium | 10% | 11.2 oz','','publish','open','open','','st-bernardus-abt-12-quadrupel-belgium-10-11-2-oz','','','2014-05-01 20:40:56','2014-05-01 20:40:56','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=509',0,'food','',0);
INSERT INTO `jc_posts` VALUES (510,1,'2014-05-01 20:41:10','2014-05-01 20:41:10','','Trappistes Rochefort 10 (quadrupel) Belgium | 11.3% | 11.2 oz','','publish','open','open','','trappistes-rochefort-10-quadrupel-belgium-11-3-11-2-oz','','','2014-05-01 20:41:10','2014-05-01 20:41:10','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=510',0,'food','',0);
INSERT INTO `jc_posts` VALUES (511,1,'2014-05-01 20:41:46','2014-05-01 20:41:46','Single fermented with mild citrus yeasty notes with more\r\nhops on the nose than on the palate.','DUVEL SINGLE - 6.8% ABV','','publish','open','open','','duvel-single-6-8-abv','','','2014-05-01 20:41:46','2014-05-01 20:41:46','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=511',0,'food','',0);
INSERT INTO `jc_posts` VALUES (512,1,'2014-05-01 20:42:10','2014-05-01 20:42:10','This style of beer is called the Burgundy of Flanders, light in alcohol, exciting complex flavors and tastes come to the forefront.','PETRUS OUD BRUIN - 5.5% ABV','','publish','open','open','','petrus-oud-bruin-5-5-abv','','','2014-05-01 20:42:10','2014-05-01 20:42:10','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=512',0,'food','',0);
INSERT INTO `jc_posts` VALUES (513,1,'2014-05-01 20:42:45','2014-05-01 20:42:45','An amber colored beer with the bitterness of an American IPA\r\nbut balanced with the fruitiness of a Belgian Triple.','TROUBADOUR MAGMA - 9% ABV','','publish','open','open','','troubadour-magma-9-abv','','','2014-05-01 20:42:45','2014-05-01 20:42:45','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=513',0,'food','',0);
INSERT INTO `jc_posts` VALUES (514,1,'2014-05-01 20:43:06','2014-05-01 20:43:06','A Flanders red ale with tart cherry notes.','CUVEE DES JACOBINS ROUGE - 5.5% ABV','','publish','open','open','','cuvee-des-jacobins-rouge-5-5-abv','','','2014-05-01 20:43:06','2014-05-01 20:43:06','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=514',0,'food','',0);
INSERT INTO `jc_posts` VALUES (515,1,'2014-05-01 20:43:39','2014-05-01 20:43:39','Classic Belgian IPA from the largest hop growing area in Belgium. Flavors of grass, lemon &amp; light fruity aroma encompass this beer.','POPERING HOMMEL BIER - 7.5% ABV ','','publish','open','open','','popering-hommel-bier-7-5-abv','','','2014-05-01 20:43:39','2014-05-01 20:43:39','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=515',0,'food','',0);
INSERT INTO `jc_posts` VALUES (516,1,'2014-05-01 20:44:10','2014-05-01 20:44:10','Authentic Belgian blond abbey beer with a slight hint of bitterness.','LEFFE BLOND - 6.6% ABV ','','publish','open','open','','leffe-blond-6-6-abv','','','2014-05-01 20:44:10','2014-05-01 20:44:10','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=516',0,'food','',0);
INSERT INTO `jc_posts` VALUES (517,1,'2014-05-01 20:44:33','2014-05-01 20:44:33','A dark triple with natural malt toffee-like sweetness and hoppy accents.','GULDEN DRAAK 10.5% ABV','','publish','open','open','','gulden-draak-10-5-abv','','','2014-05-01 20:44:33','2014-05-01 20:44:33','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=517',0,'food','',0);
INSERT INTO `jc_posts` VALUES (518,1,'2014-05-01 20:45:00','2014-05-01 20:45:00','Deep red Belgian fruit beer, matured with real cherries.','LIEFMANS CUVEE BRUT - 6% ABV','','publish','open','open','','liefmans-cuvee-brut-6-abv','','','2014-05-01 20:45:00','2014-05-01 20:45:00','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=518',0,'food','',0);
INSERT INTO `jc_posts` VALUES (519,1,'2014-05-01 20:45:23','2014-05-01 20:45:23','Traditional abbey-style dubbel with banana and melon.','ST. BERNADUS PATER 6 - 6.7% ABV','','publish','open','open','','st-bernadus-pater-6-6-7-abv','','','2014-05-01 20:45:23','2014-05-01 20:45:23','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=519',0,'food','',0);
INSERT INTO `jc_posts` VALUES (520,1,'2014-05-01 20:45:44','2014-05-01 20:45:44','Refreshing and classic triple. Perfectly balanced combination of\r\nsweet and bitter with notes of banana and raisins.','CHIMAY TRIPLE - 8% ABV','','publish','open','open','','chimay-triple-8-abv','','','2014-05-01 20:45:44','2014-05-01 20:45:44','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=520',0,'food','',0);
INSERT INTO `jc_posts` VALUES (521,1,'2014-05-01 20:46:04','2014-05-01 20:46:04','A dry, effervescent Belgian strong pale ale brewed\r\nwith three different kinds of yeasts.','DELIRIUM TREMENS - 8.5% ABV','','publish','open','open','','delirium-tremens-8-5-abv','','','2014-05-01 20:46:04','2014-05-01 20:46:04','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=521',0,'food','',0);
INSERT INTO `jc_posts` VALUES (522,1,'2014-05-01 20:46:29','2014-05-01 20:46:29','Malty sweet and pleasantly bitter with aromas of almond, vanilla and banana.','LA TRAPPE QUADRUPEL - 10%','','publish','open','open','','la-trappe-quadrupel-10','','','2014-05-01 20:46:29','2014-05-01 20:46:29','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=522',0,'food','',0);
INSERT INTO `jc_posts` VALUES (523,1,'2014-05-01 20:46:52','2014-05-01 20:46:52','A Belgian wheat beer with coriander and orange peel.','HOEGAARDEN WHITE - 4.9% ABV','','publish','open','open','','hoegaarden-white-4-9-abv','','','2014-05-01 20:46:52','2014-05-01 20:46:52','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=523',0,'food','',0);
INSERT INTO `jc_posts` VALUES (524,1,'2014-05-01 20:47:13','2014-05-01 20:47:13','A classic Abbey dubbel with a delightful caramel nose and a hint of sour','MAREDSOUS BRUNE - 8% ABV ','','publish','open','open','','maredsous-brune-8-abv','','','2014-05-01 20:47:13','2014-05-01 20:47:13','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=524',0,'food','',0);
INSERT INTO `jc_posts` VALUES (525,1,'2014-05-01 20:47:36','2014-05-01 20:47:36','Flander’s red ale matured in oak casks with\r\nnotes of passionfruit and chocolate.','DUCHESSE DE BOURGOGNE - 6% ABV','','publish','open','open','','duchesse-de-bourgogne-6-abv','','','2014-05-01 20:47:36','2014-05-01 20:47:36','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=525',0,'food','',0);
INSERT INTO `jc_posts` VALUES (526,1,'2014-05-01 20:47:57','2014-05-01 20:47:57','Wallonian artisanal strong brown ale with liquorice and mocha notes.','NOSTRADAMUS - 9% ABV','','publish','open','open','','nostradamus-9-abv','','','2014-05-01 20:47:57','2014-05-01 20:47:57','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=526',0,'food','',0);
INSERT INTO `jc_posts` VALUES (527,1,'2014-05-01 20:48:20','2014-05-01 20:48:20','This Flander’s oud bruin has been matured\r\nin oak barrels for 2-3 years. It’s sour with a bite similar to champagne.','PETRUS AGED PALE - 7.3% ABV','','publish','open','open','','petrus-aged-pale-7-3-abv','','','2014-05-01 20:48:20','2014-05-01 20:48:20','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=527',0,'food','',0);
INSERT INTO `jc_posts` VALUES (528,1,'2014-05-01 20:48:40','2014-05-01 20:48:40','Flemish sweet and sour ale with a fruity nose.','MONK’S CAFE - 5.5% ABV','','publish','open','open','','monks-cafe-5-5-abv','','','2014-05-01 20:48:40','2014-05-01 20:48:40','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=528',0,'food','',0);
INSERT INTO `jc_posts` VALUES (529,1,'2014-05-01 20:49:03','2014-05-01 20:49:03','A beautiful oak aged oud bruin with bright fruit notes, gentle acidity\r\nand a refreshing after taste.','VANDERGHINSTE - 5.5% ABV','','publish','open','open','','vanderghinste-5-5-abv','','','2014-05-01 20:49:03','2014-05-01 20:49:03','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=529',0,'food','',0);
INSERT INTO `jc_posts` VALUES (530,1,'2014-05-01 20:49:26','2014-05-01 20:49:26','Belgian amber with creamy fruit on the nose and mellow hops.','KWAK - 8.4% ABV','','publish','open','open','','kwak-8-4-abv','','','2014-05-01 20:49:26','2014-05-01 20:49:26','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=530',0,'food','',0);
INSERT INTO `jc_posts` VALUES (531,1,'2014-05-01 20:49:46','2014-05-01 20:49:46','Belgian pale ale with low hop bitterness and\r\nsmooth malts with hints of fresh bread and tropical fruit.','PIRAAT - 10.5% ABV','','publish','open','open','','piraat-10-5-abv','','','2014-05-01 20:49:46','2014-05-01 20:49:46','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=531',0,'food','',0);
INSERT INTO `jc_posts` VALUES (532,1,'2014-05-01 20:50:17','2014-05-01 20:50:17','A Belgian unfiltered IPA, with a balance between a bitterness (three types of hops are used) and a pleasant fruitiness.','HOUBLON CHOUFFE - 9% ABV ','','publish','open','open','','houblon-chouffe-9-abv','','','2014-05-01 20:50:17','2014-05-01 20:50:17','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=532',0,'food','',0);
INSERT INTO `jc_posts` VALUES (533,1,'2014-05-01 20:50:40','2014-05-01 20:50:40','Bright fruit, herbs and yeast encompass this beer.','TRIPLE KARMELIET - 8.4% ABV','','publish','open','open','','triple-karmeliet-8-4-abv','','','2014-05-01 20:50:40','2014-05-01 20:50:40','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=533',0,'food','',0);
INSERT INTO `jc_posts` VALUES (534,1,'2014-05-01 20:51:35','2014-05-01 20:51:35','A dark specialty beer with a subtle soft-sweet flavor, rich aromas of\r\ndried fruits and with a hint of chocolate in the aftertaste.','URTHEL SAMARANTH - 11.5 ABV','','publish','open','open','','urthel-samaranth','','','2014-05-01 20:51:35','2014-05-01 20:51:35','',0,'http://maxsonbroad.wpengine.com/?post_type=food&#038;p=534',0,'food','',0);
INSERT INTO `jc_posts` VALUES (535,1,'2014-05-01 20:55:26','2014-05-01 20:55:26',' ','','','publish','open','open','','535','','','2014-05-01 20:55:26','2014-05-01 20:55:26','',276,'http://maxsonbroad.wpengine.com/?p=535',7,'nav_menu_item','',0);
INSERT INTO `jc_posts` VALUES (536,1,'2014-05-01 20:55:26','2014-05-01 20:55:26',' ','','','publish','open','open','','536','','','2014-05-01 20:55:26','2014-05-01 20:55:26','',276,'http://maxsonbroad.wpengine.com/?p=536',6,'nav_menu_item','',0);
/*!40000 ALTER TABLE `jc_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jc_term_relationships`
--

DROP TABLE IF EXISTS `jc_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jc_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jc_term_relationships`
--

LOCK TABLES `jc_term_relationships` WRITE;
/*!40000 ALTER TABLE `jc_term_relationships` DISABLE KEYS */;
INSERT INTO `jc_term_relationships` VALUES (1,1,0);
INSERT INTO `jc_term_relationships` VALUES (38,6,0);
INSERT INTO `jc_term_relationships` VALUES (39,6,0);
INSERT INTO `jc_term_relationships` VALUES (40,6,0);
INSERT INTO `jc_term_relationships` VALUES (41,6,0);
INSERT INTO `jc_term_relationships` VALUES (42,6,0);
INSERT INTO `jc_term_relationships` VALUES (43,6,0);
INSERT INTO `jc_term_relationships` VALUES (45,6,0);
INSERT INTO `jc_term_relationships` VALUES (65,2,0);
INSERT INTO `jc_term_relationships` VALUES (65,7,0);
INSERT INTO `jc_term_relationships` VALUES (67,2,0);
INSERT INTO `jc_term_relationships` VALUES (67,7,0);
INSERT INTO `jc_term_relationships` VALUES (71,2,0);
INSERT INTO `jc_term_relationships` VALUES (71,7,0);
INSERT INTO `jc_term_relationships` VALUES (72,2,0);
INSERT INTO `jc_term_relationships` VALUES (72,7,0);
INSERT INTO `jc_term_relationships` VALUES (73,2,0);
INSERT INTO `jc_term_relationships` VALUES (73,7,0);
INSERT INTO `jc_term_relationships` VALUES (74,2,0);
INSERT INTO `jc_term_relationships` VALUES (74,7,0);
INSERT INTO `jc_term_relationships` VALUES (75,2,0);
INSERT INTO `jc_term_relationships` VALUES (75,7,0);
INSERT INTO `jc_term_relationships` VALUES (76,2,0);
INSERT INTO `jc_term_relationships` VALUES (76,7,0);
INSERT INTO `jc_term_relationships` VALUES (78,6,0);
INSERT INTO `jc_term_relationships` VALUES (80,2,0);
INSERT INTO `jc_term_relationships` VALUES (80,10,0);
INSERT INTO `jc_term_relationships` VALUES (81,2,0);
INSERT INTO `jc_term_relationships` VALUES (81,10,0);
INSERT INTO `jc_term_relationships` VALUES (82,2,0);
INSERT INTO `jc_term_relationships` VALUES (82,10,0);
INSERT INTO `jc_term_relationships` VALUES (84,2,0);
INSERT INTO `jc_term_relationships` VALUES (84,10,0);
INSERT INTO `jc_term_relationships` VALUES (85,2,0);
INSERT INTO `jc_term_relationships` VALUES (85,10,0);
INSERT INTO `jc_term_relationships` VALUES (86,2,0);
INSERT INTO `jc_term_relationships` VALUES (86,10,0);
INSERT INTO `jc_term_relationships` VALUES (88,2,0);
INSERT INTO `jc_term_relationships` VALUES (88,10,0);
INSERT INTO `jc_term_relationships` VALUES (89,2,0);
INSERT INTO `jc_term_relationships` VALUES (89,10,0);
INSERT INTO `jc_term_relationships` VALUES (91,2,0);
INSERT INTO `jc_term_relationships` VALUES (91,10,0);
INSERT INTO `jc_term_relationships` VALUES (93,8,0);
INSERT INTO `jc_term_relationships` VALUES (94,2,0);
INSERT INTO `jc_term_relationships` VALUES (94,8,0);
INSERT INTO `jc_term_relationships` VALUES (95,2,0);
INSERT INTO `jc_term_relationships` VALUES (95,8,0);
INSERT INTO `jc_term_relationships` VALUES (96,2,0);
INSERT INTO `jc_term_relationships` VALUES (96,8,0);
INSERT INTO `jc_term_relationships` VALUES (97,2,0);
INSERT INTO `jc_term_relationships` VALUES (97,8,0);
INSERT INTO `jc_term_relationships` VALUES (98,2,0);
INSERT INTO `jc_term_relationships` VALUES (98,8,0);
INSERT INTO `jc_term_relationships` VALUES (99,2,0);
INSERT INTO `jc_term_relationships` VALUES (99,8,0);
INSERT INTO `jc_term_relationships` VALUES (102,2,0);
INSERT INTO `jc_term_relationships` VALUES (102,8,0);
INSERT INTO `jc_term_relationships` VALUES (103,2,0);
INSERT INTO `jc_term_relationships` VALUES (103,8,0);
INSERT INTO `jc_term_relationships` VALUES (104,2,0);
INSERT INTO `jc_term_relationships` VALUES (104,8,0);
INSERT INTO `jc_term_relationships` VALUES (105,2,0);
INSERT INTO `jc_term_relationships` VALUES (105,9,0);
INSERT INTO `jc_term_relationships` VALUES (106,2,0);
INSERT INTO `jc_term_relationships` VALUES (106,9,0);
INSERT INTO `jc_term_relationships` VALUES (107,2,0);
INSERT INTO `jc_term_relationships` VALUES (107,9,0);
INSERT INTO `jc_term_relationships` VALUES (108,2,0);
INSERT INTO `jc_term_relationships` VALUES (108,9,0);
INSERT INTO `jc_term_relationships` VALUES (109,2,0);
INSERT INTO `jc_term_relationships` VALUES (109,9,0);
INSERT INTO `jc_term_relationships` VALUES (110,2,0);
INSERT INTO `jc_term_relationships` VALUES (110,9,0);
INSERT INTO `jc_term_relationships` VALUES (111,2,0);
INSERT INTO `jc_term_relationships` VALUES (111,9,0);
INSERT INTO `jc_term_relationships` VALUES (112,2,0);
INSERT INTO `jc_term_relationships` VALUES (112,9,0);
INSERT INTO `jc_term_relationships` VALUES (114,2,0);
INSERT INTO `jc_term_relationships` VALUES (114,9,0);
INSERT INTO `jc_term_relationships` VALUES (115,2,0);
INSERT INTO `jc_term_relationships` VALUES (115,9,0);
INSERT INTO `jc_term_relationships` VALUES (116,2,0);
INSERT INTO `jc_term_relationships` VALUES (116,9,0);
INSERT INTO `jc_term_relationships` VALUES (117,2,0);
INSERT INTO `jc_term_relationships` VALUES (117,9,0);
INSERT INTO `jc_term_relationships` VALUES (118,2,0);
INSERT INTO `jc_term_relationships` VALUES (118,9,0);
INSERT INTO `jc_term_relationships` VALUES (119,2,0);
INSERT INTO `jc_term_relationships` VALUES (119,9,0);
INSERT INTO `jc_term_relationships` VALUES (120,2,0);
INSERT INTO `jc_term_relationships` VALUES (120,9,0);
INSERT INTO `jc_term_relationships` VALUES (121,2,0);
INSERT INTO `jc_term_relationships` VALUES (121,9,0);
INSERT INTO `jc_term_relationships` VALUES (123,2,0);
INSERT INTO `jc_term_relationships` VALUES (123,12,0);
INSERT INTO `jc_term_relationships` VALUES (124,2,0);
INSERT INTO `jc_term_relationships` VALUES (124,11,0);
INSERT INTO `jc_term_relationships` VALUES (125,2,0);
INSERT INTO `jc_term_relationships` VALUES (125,11,0);
INSERT INTO `jc_term_relationships` VALUES (129,2,0);
INSERT INTO `jc_term_relationships` VALUES (129,11,0);
INSERT INTO `jc_term_relationships` VALUES (133,2,0);
INSERT INTO `jc_term_relationships` VALUES (133,11,0);
INSERT INTO `jc_term_relationships` VALUES (138,2,0);
INSERT INTO `jc_term_relationships` VALUES (138,11,0);
INSERT INTO `jc_term_relationships` VALUES (141,3,0);
INSERT INTO `jc_term_relationships` VALUES (141,14,0);
INSERT INTO `jc_term_relationships` VALUES (144,3,0);
INSERT INTO `jc_term_relationships` VALUES (144,14,0);
INSERT INTO `jc_term_relationships` VALUES (145,3,0);
INSERT INTO `jc_term_relationships` VALUES (145,14,0);
INSERT INTO `jc_term_relationships` VALUES (146,3,0);
INSERT INTO `jc_term_relationships` VALUES (146,14,0);
INSERT INTO `jc_term_relationships` VALUES (147,3,0);
INSERT INTO `jc_term_relationships` VALUES (147,14,0);
INSERT INTO `jc_term_relationships` VALUES (148,3,0);
INSERT INTO `jc_term_relationships` VALUES (148,14,0);
INSERT INTO `jc_term_relationships` VALUES (149,3,0);
INSERT INTO `jc_term_relationships` VALUES (149,14,0);
INSERT INTO `jc_term_relationships` VALUES (150,3,0);
INSERT INTO `jc_term_relationships` VALUES (150,14,0);
INSERT INTO `jc_term_relationships` VALUES (152,3,0);
INSERT INTO `jc_term_relationships` VALUES (152,14,0);
INSERT INTO `jc_term_relationships` VALUES (153,3,0);
INSERT INTO `jc_term_relationships` VALUES (153,14,0);
INSERT INTO `jc_term_relationships` VALUES (154,3,0);
INSERT INTO `jc_term_relationships` VALUES (154,14,0);
INSERT INTO `jc_term_relationships` VALUES (156,3,0);
INSERT INTO `jc_term_relationships` VALUES (156,16,0);
INSERT INTO `jc_term_relationships` VALUES (158,3,0);
INSERT INTO `jc_term_relationships` VALUES (158,16,0);
INSERT INTO `jc_term_relationships` VALUES (159,3,0);
INSERT INTO `jc_term_relationships` VALUES (159,16,0);
INSERT INTO `jc_term_relationships` VALUES (161,3,0);
INSERT INTO `jc_term_relationships` VALUES (161,16,0);
INSERT INTO `jc_term_relationships` VALUES (163,3,0);
INSERT INTO `jc_term_relationships` VALUES (163,16,0);
INSERT INTO `jc_term_relationships` VALUES (165,3,0);
INSERT INTO `jc_term_relationships` VALUES (165,16,0);
INSERT INTO `jc_term_relationships` VALUES (166,3,0);
INSERT INTO `jc_term_relationships` VALUES (166,16,0);
INSERT INTO `jc_term_relationships` VALUES (169,3,0);
INSERT INTO `jc_term_relationships` VALUES (169,16,0);
INSERT INTO `jc_term_relationships` VALUES (170,3,0);
INSERT INTO `jc_term_relationships` VALUES (170,16,0);
INSERT INTO `jc_term_relationships` VALUES (171,3,0);
INSERT INTO `jc_term_relationships` VALUES (171,16,0);
INSERT INTO `jc_term_relationships` VALUES (175,3,0);
INSERT INTO `jc_term_relationships` VALUES (175,16,0);
INSERT INTO `jc_term_relationships` VALUES (178,3,0);
INSERT INTO `jc_term_relationships` VALUES (178,18,0);
INSERT INTO `jc_term_relationships` VALUES (179,3,0);
INSERT INTO `jc_term_relationships` VALUES (179,18,0);
INSERT INTO `jc_term_relationships` VALUES (181,3,0);
INSERT INTO `jc_term_relationships` VALUES (181,18,0);
INSERT INTO `jc_term_relationships` VALUES (183,3,0);
INSERT INTO `jc_term_relationships` VALUES (183,18,0);
INSERT INTO `jc_term_relationships` VALUES (184,3,0);
INSERT INTO `jc_term_relationships` VALUES (184,18,0);
INSERT INTO `jc_term_relationships` VALUES (185,3,0);
INSERT INTO `jc_term_relationships` VALUES (185,18,0);
INSERT INTO `jc_term_relationships` VALUES (188,3,0);
INSERT INTO `jc_term_relationships` VALUES (188,19,0);
INSERT INTO `jc_term_relationships` VALUES (189,3,0);
INSERT INTO `jc_term_relationships` VALUES (189,15,0);
INSERT INTO `jc_term_relationships` VALUES (190,3,0);
INSERT INTO `jc_term_relationships` VALUES (190,15,0);
INSERT INTO `jc_term_relationships` VALUES (193,3,0);
INSERT INTO `jc_term_relationships` VALUES (193,15,0);
INSERT INTO `jc_term_relationships` VALUES (194,3,0);
INSERT INTO `jc_term_relationships` VALUES (194,15,0);
INSERT INTO `jc_term_relationships` VALUES (195,3,0);
INSERT INTO `jc_term_relationships` VALUES (195,15,0);
INSERT INTO `jc_term_relationships` VALUES (196,3,0);
INSERT INTO `jc_term_relationships` VALUES (196,15,0);
INSERT INTO `jc_term_relationships` VALUES (197,3,0);
INSERT INTO `jc_term_relationships` VALUES (197,15,0);
INSERT INTO `jc_term_relationships` VALUES (198,3,0);
INSERT INTO `jc_term_relationships` VALUES (198,15,0);
INSERT INTO `jc_term_relationships` VALUES (200,3,0);
INSERT INTO `jc_term_relationships` VALUES (200,17,0);
INSERT INTO `jc_term_relationships` VALUES (201,3,0);
INSERT INTO `jc_term_relationships` VALUES (201,17,0);
INSERT INTO `jc_term_relationships` VALUES (202,3,0);
INSERT INTO `jc_term_relationships` VALUES (202,17,0);
INSERT INTO `jc_term_relationships` VALUES (204,3,0);
INSERT INTO `jc_term_relationships` VALUES (204,17,0);
INSERT INTO `jc_term_relationships` VALUES (205,3,0);
INSERT INTO `jc_term_relationships` VALUES (205,17,0);
INSERT INTO `jc_term_relationships` VALUES (206,3,0);
INSERT INTO `jc_term_relationships` VALUES (206,17,0);
INSERT INTO `jc_term_relationships` VALUES (207,3,0);
INSERT INTO `jc_term_relationships` VALUES (207,17,0);
INSERT INTO `jc_term_relationships` VALUES (208,3,0);
INSERT INTO `jc_term_relationships` VALUES (208,17,0);
INSERT INTO `jc_term_relationships` VALUES (209,3,0);
INSERT INTO `jc_term_relationships` VALUES (209,17,0);
INSERT INTO `jc_term_relationships` VALUES (210,3,0);
INSERT INTO `jc_term_relationships` VALUES (210,17,0);
INSERT INTO `jc_term_relationships` VALUES (211,3,0);
INSERT INTO `jc_term_relationships` VALUES (211,17,0);
INSERT INTO `jc_term_relationships` VALUES (213,6,0);
INSERT INTO `jc_term_relationships` VALUES (215,6,0);
INSERT INTO `jc_term_relationships` VALUES (219,4,0);
INSERT INTO `jc_term_relationships` VALUES (219,20,0);
INSERT INTO `jc_term_relationships` VALUES (220,4,0);
INSERT INTO `jc_term_relationships` VALUES (220,20,0);
INSERT INTO `jc_term_relationships` VALUES (221,4,0);
INSERT INTO `jc_term_relationships` VALUES (221,20,0);
INSERT INTO `jc_term_relationships` VALUES (222,4,0);
INSERT INTO `jc_term_relationships` VALUES (222,20,0);
INSERT INTO `jc_term_relationships` VALUES (223,4,0);
INSERT INTO `jc_term_relationships` VALUES (223,20,0);
INSERT INTO `jc_term_relationships` VALUES (224,4,0);
INSERT INTO `jc_term_relationships` VALUES (224,20,0);
INSERT INTO `jc_term_relationships` VALUES (225,4,0);
INSERT INTO `jc_term_relationships` VALUES (225,20,0);
INSERT INTO `jc_term_relationships` VALUES (226,4,0);
INSERT INTO `jc_term_relationships` VALUES (226,20,0);
INSERT INTO `jc_term_relationships` VALUES (227,4,0);
INSERT INTO `jc_term_relationships` VALUES (227,21,0);
INSERT INTO `jc_term_relationships` VALUES (228,4,0);
INSERT INTO `jc_term_relationships` VALUES (228,21,0);
INSERT INTO `jc_term_relationships` VALUES (229,4,0);
INSERT INTO `jc_term_relationships` VALUES (229,21,0);
INSERT INTO `jc_term_relationships` VALUES (230,4,0);
INSERT INTO `jc_term_relationships` VALUES (230,21,0);
INSERT INTO `jc_term_relationships` VALUES (231,4,0);
INSERT INTO `jc_term_relationships` VALUES (231,22,0);
INSERT INTO `jc_term_relationships` VALUES (232,4,0);
INSERT INTO `jc_term_relationships` VALUES (232,22,0);
INSERT INTO `jc_term_relationships` VALUES (233,4,0);
INSERT INTO `jc_term_relationships` VALUES (233,22,0);
INSERT INTO `jc_term_relationships` VALUES (234,4,0);
INSERT INTO `jc_term_relationships` VALUES (234,22,0);
INSERT INTO `jc_term_relationships` VALUES (236,4,0);
INSERT INTO `jc_term_relationships` VALUES (236,23,0);
INSERT INTO `jc_term_relationships` VALUES (237,4,0);
INSERT INTO `jc_term_relationships` VALUES (237,23,0);
INSERT INTO `jc_term_relationships` VALUES (238,4,0);
INSERT INTO `jc_term_relationships` VALUES (238,23,0);
INSERT INTO `jc_term_relationships` VALUES (239,4,0);
INSERT INTO `jc_term_relationships` VALUES (239,23,0);
INSERT INTO `jc_term_relationships` VALUES (240,4,0);
INSERT INTO `jc_term_relationships` VALUES (240,25,0);
INSERT INTO `jc_term_relationships` VALUES (241,4,0);
INSERT INTO `jc_term_relationships` VALUES (241,25,0);
INSERT INTO `jc_term_relationships` VALUES (242,4,0);
INSERT INTO `jc_term_relationships` VALUES (242,25,0);
INSERT INTO `jc_term_relationships` VALUES (243,4,0);
INSERT INTO `jc_term_relationships` VALUES (243,25,0);
INSERT INTO `jc_term_relationships` VALUES (244,4,0);
INSERT INTO `jc_term_relationships` VALUES (244,25,0);
INSERT INTO `jc_term_relationships` VALUES (245,4,0);
INSERT INTO `jc_term_relationships` VALUES (245,25,0);
INSERT INTO `jc_term_relationships` VALUES (246,4,0);
INSERT INTO `jc_term_relationships` VALUES (246,25,0);
INSERT INTO `jc_term_relationships` VALUES (247,4,0);
INSERT INTO `jc_term_relationships` VALUES (247,25,0);
INSERT INTO `jc_term_relationships` VALUES (248,4,0);
INSERT INTO `jc_term_relationships` VALUES (248,25,0);
INSERT INTO `jc_term_relationships` VALUES (249,4,0);
INSERT INTO `jc_term_relationships` VALUES (249,25,0);
INSERT INTO `jc_term_relationships` VALUES (250,4,0);
INSERT INTO `jc_term_relationships` VALUES (250,25,0);
INSERT INTO `jc_term_relationships` VALUES (251,4,0);
INSERT INTO `jc_term_relationships` VALUES (251,24,0);
INSERT INTO `jc_term_relationships` VALUES (252,4,0);
INSERT INTO `jc_term_relationships` VALUES (252,24,0);
INSERT INTO `jc_term_relationships` VALUES (253,4,0);
INSERT INTO `jc_term_relationships` VALUES (253,24,0);
INSERT INTO `jc_term_relationships` VALUES (254,4,0);
INSERT INTO `jc_term_relationships` VALUES (254,24,0);
INSERT INTO `jc_term_relationships` VALUES (255,4,0);
INSERT INTO `jc_term_relationships` VALUES (255,24,0);
INSERT INTO `jc_term_relationships` VALUES (256,4,0);
INSERT INTO `jc_term_relationships` VALUES (256,24,0);
INSERT INTO `jc_term_relationships` VALUES (257,4,0);
INSERT INTO `jc_term_relationships` VALUES (257,24,0);
INSERT INTO `jc_term_relationships` VALUES (258,4,0);
INSERT INTO `jc_term_relationships` VALUES (258,24,0);
INSERT INTO `jc_term_relationships` VALUES (259,4,0);
INSERT INTO `jc_term_relationships` VALUES (259,24,0);
INSERT INTO `jc_term_relationships` VALUES (260,4,0);
INSERT INTO `jc_term_relationships` VALUES (260,24,0);
INSERT INTO `jc_term_relationships` VALUES (261,4,0);
INSERT INTO `jc_term_relationships` VALUES (261,24,0);
INSERT INTO `jc_term_relationships` VALUES (263,4,0);
INSERT INTO `jc_term_relationships` VALUES (263,24,0);
INSERT INTO `jc_term_relationships` VALUES (264,4,0);
INSERT INTO `jc_term_relationships` VALUES (264,26,0);
INSERT INTO `jc_term_relationships` VALUES (265,4,0);
INSERT INTO `jc_term_relationships` VALUES (265,26,0);
INSERT INTO `jc_term_relationships` VALUES (266,4,0);
INSERT INTO `jc_term_relationships` VALUES (266,26,0);
INSERT INTO `jc_term_relationships` VALUES (267,4,0);
INSERT INTO `jc_term_relationships` VALUES (267,26,0);
INSERT INTO `jc_term_relationships` VALUES (268,4,0);
INSERT INTO `jc_term_relationships` VALUES (268,26,0);
INSERT INTO `jc_term_relationships` VALUES (281,3,0);
INSERT INTO `jc_term_relationships` VALUES (281,16,0);
INSERT INTO `jc_term_relationships` VALUES (282,3,0);
INSERT INTO `jc_term_relationships` VALUES (282,16,0);
INSERT INTO `jc_term_relationships` VALUES (283,3,0);
INSERT INTO `jc_term_relationships` VALUES (283,16,0);
INSERT INTO `jc_term_relationships` VALUES (284,3,0);
INSERT INTO `jc_term_relationships` VALUES (284,16,0);
INSERT INTO `jc_term_relationships` VALUES (285,3,0);
INSERT INTO `jc_term_relationships` VALUES (285,16,0);
INSERT INTO `jc_term_relationships` VALUES (286,3,0);
INSERT INTO `jc_term_relationships` VALUES (286,16,0);
INSERT INTO `jc_term_relationships` VALUES (287,3,0);
INSERT INTO `jc_term_relationships` VALUES (287,14,0);
INSERT INTO `jc_term_relationships` VALUES (288,3,0);
INSERT INTO `jc_term_relationships` VALUES (288,14,0);
INSERT INTO `jc_term_relationships` VALUES (290,4,0);
INSERT INTO `jc_term_relationships` VALUES (290,22,0);
INSERT INTO `jc_term_relationships` VALUES (291,4,0);
INSERT INTO `jc_term_relationships` VALUES (291,22,0);
INSERT INTO `jc_term_relationships` VALUES (292,4,0);
INSERT INTO `jc_term_relationships` VALUES (292,23,0);
INSERT INTO `jc_term_relationships` VALUES (293,4,0);
INSERT INTO `jc_term_relationships` VALUES (293,26,0);
INSERT INTO `jc_term_relationships` VALUES (294,4,0);
INSERT INTO `jc_term_relationships` VALUES (294,28,0);
INSERT INTO `jc_term_relationships` VALUES (295,4,0);
INSERT INTO `jc_term_relationships` VALUES (295,28,0);
INSERT INTO `jc_term_relationships` VALUES (296,4,0);
INSERT INTO `jc_term_relationships` VALUES (296,28,0);
INSERT INTO `jc_term_relationships` VALUES (297,4,0);
INSERT INTO `jc_term_relationships` VALUES (297,28,0);
INSERT INTO `jc_term_relationships` VALUES (298,4,0);
INSERT INTO `jc_term_relationships` VALUES (298,28,0);
INSERT INTO `jc_term_relationships` VALUES (299,4,0);
INSERT INTO `jc_term_relationships` VALUES (299,28,0);
INSERT INTO `jc_term_relationships` VALUES (300,4,0);
INSERT INTO `jc_term_relationships` VALUES (300,28,0);
INSERT INTO `jc_term_relationships` VALUES (302,4,0);
INSERT INTO `jc_term_relationships` VALUES (302,28,0);
INSERT INTO `jc_term_relationships` VALUES (303,4,0);
INSERT INTO `jc_term_relationships` VALUES (303,29,0);
INSERT INTO `jc_term_relationships` VALUES (304,4,0);
INSERT INTO `jc_term_relationships` VALUES (304,29,0);
INSERT INTO `jc_term_relationships` VALUES (305,4,0);
INSERT INTO `jc_term_relationships` VALUES (305,29,0);
INSERT INTO `jc_term_relationships` VALUES (306,4,0);
INSERT INTO `jc_term_relationships` VALUES (306,29,0);
INSERT INTO `jc_term_relationships` VALUES (307,4,0);
INSERT INTO `jc_term_relationships` VALUES (307,29,0);
INSERT INTO `jc_term_relationships` VALUES (308,4,0);
INSERT INTO `jc_term_relationships` VALUES (308,29,0);
INSERT INTO `jc_term_relationships` VALUES (309,4,0);
INSERT INTO `jc_term_relationships` VALUES (309,29,0);
INSERT INTO `jc_term_relationships` VALUES (310,4,0);
INSERT INTO `jc_term_relationships` VALUES (310,29,0);
INSERT INTO `jc_term_relationships` VALUES (311,4,0);
INSERT INTO `jc_term_relationships` VALUES (311,29,0);
INSERT INTO `jc_term_relationships` VALUES (312,4,0);
INSERT INTO `jc_term_relationships` VALUES (312,29,0);
INSERT INTO `jc_term_relationships` VALUES (313,4,0);
INSERT INTO `jc_term_relationships` VALUES (313,29,0);
INSERT INTO `jc_term_relationships` VALUES (314,4,0);
INSERT INTO `jc_term_relationships` VALUES (314,27,0);
INSERT INTO `jc_term_relationships` VALUES (315,4,0);
INSERT INTO `jc_term_relationships` VALUES (315,27,0);
INSERT INTO `jc_term_relationships` VALUES (316,4,0);
INSERT INTO `jc_term_relationships` VALUES (316,27,0);
INSERT INTO `jc_term_relationships` VALUES (317,4,0);
INSERT INTO `jc_term_relationships` VALUES (317,27,0);
INSERT INTO `jc_term_relationships` VALUES (318,4,0);
INSERT INTO `jc_term_relationships` VALUES (318,27,0);
INSERT INTO `jc_term_relationships` VALUES (319,4,0);
INSERT INTO `jc_term_relationships` VALUES (319,27,0);
INSERT INTO `jc_term_relationships` VALUES (320,4,0);
INSERT INTO `jc_term_relationships` VALUES (320,27,0);
INSERT INTO `jc_term_relationships` VALUES (321,4,0);
INSERT INTO `jc_term_relationships` VALUES (321,27,0);
INSERT INTO `jc_term_relationships` VALUES (322,4,0);
INSERT INTO `jc_term_relationships` VALUES (322,30,0);
INSERT INTO `jc_term_relationships` VALUES (323,4,0);
INSERT INTO `jc_term_relationships` VALUES (323,30,0);
INSERT INTO `jc_term_relationships` VALUES (324,4,0);
INSERT INTO `jc_term_relationships` VALUES (324,30,0);
INSERT INTO `jc_term_relationships` VALUES (325,4,0);
INSERT INTO `jc_term_relationships` VALUES (325,30,0);
INSERT INTO `jc_term_relationships` VALUES (326,4,0);
INSERT INTO `jc_term_relationships` VALUES (326,30,0);
INSERT INTO `jc_term_relationships` VALUES (327,4,0);
INSERT INTO `jc_term_relationships` VALUES (327,30,0);
INSERT INTO `jc_term_relationships` VALUES (328,4,0);
INSERT INTO `jc_term_relationships` VALUES (328,30,0);
INSERT INTO `jc_term_relationships` VALUES (329,4,0);
INSERT INTO `jc_term_relationships` VALUES (329,30,0);
INSERT INTO `jc_term_relationships` VALUES (330,4,0);
INSERT INTO `jc_term_relationships` VALUES (330,30,0);
INSERT INTO `jc_term_relationships` VALUES (331,4,0);
INSERT INTO `jc_term_relationships` VALUES (331,30,0);
INSERT INTO `jc_term_relationships` VALUES (332,2,0);
INSERT INTO `jc_term_relationships` VALUES (332,8,0);
INSERT INTO `jc_term_relationships` VALUES (333,4,0);
INSERT INTO `jc_term_relationships` VALUES (333,30,0);
INSERT INTO `jc_term_relationships` VALUES (336,2,0);
INSERT INTO `jc_term_relationships` VALUES (336,8,0);
INSERT INTO `jc_term_relationships` VALUES (337,4,0);
INSERT INTO `jc_term_relationships` VALUES (337,31,0);
INSERT INTO `jc_term_relationships` VALUES (338,2,0);
INSERT INTO `jc_term_relationships` VALUES (338,9,0);
INSERT INTO `jc_term_relationships` VALUES (339,2,0);
INSERT INTO `jc_term_relationships` VALUES (339,9,0);
INSERT INTO `jc_term_relationships` VALUES (340,2,0);
INSERT INTO `jc_term_relationships` VALUES (340,9,0);
INSERT INTO `jc_term_relationships` VALUES (341,37,0);
INSERT INTO `jc_term_relationships` VALUES (343,2,0);
INSERT INTO `jc_term_relationships` VALUES (343,10,0);
INSERT INTO `jc_term_relationships` VALUES (344,2,0);
INSERT INTO `jc_term_relationships` VALUES (344,10,0);
INSERT INTO `jc_term_relationships` VALUES (346,37,0);
INSERT INTO `jc_term_relationships` VALUES (347,37,0);
INSERT INTO `jc_term_relationships` VALUES (348,37,0);
INSERT INTO `jc_term_relationships` VALUES (349,37,0);
INSERT INTO `jc_term_relationships` VALUES (350,2,0);
INSERT INTO `jc_term_relationships` VALUES (350,11,0);
INSERT INTO `jc_term_relationships` VALUES (351,2,0);
INSERT INTO `jc_term_relationships` VALUES (351,11,0);
INSERT INTO `jc_term_relationships` VALUES (352,2,0);
INSERT INTO `jc_term_relationships` VALUES (352,11,0);
INSERT INTO `jc_term_relationships` VALUES (353,37,0);
INSERT INTO `jc_term_relationships` VALUES (354,37,0);
INSERT INTO `jc_term_relationships` VALUES (355,37,0);
INSERT INTO `jc_term_relationships` VALUES (356,37,0);
INSERT INTO `jc_term_relationships` VALUES (357,37,0);
INSERT INTO `jc_term_relationships` VALUES (359,37,0);
INSERT INTO `jc_term_relationships` VALUES (360,37,0);
INSERT INTO `jc_term_relationships` VALUES (361,37,0);
INSERT INTO `jc_term_relationships` VALUES (362,37,0);
INSERT INTO `jc_term_relationships` VALUES (363,37,0);
INSERT INTO `jc_term_relationships` VALUES (364,37,0);
INSERT INTO `jc_term_relationships` VALUES (365,37,0);
INSERT INTO `jc_term_relationships` VALUES (366,37,0);
INSERT INTO `jc_term_relationships` VALUES (367,37,0);
INSERT INTO `jc_term_relationships` VALUES (368,37,0);
INSERT INTO `jc_term_relationships` VALUES (369,37,0);
INSERT INTO `jc_term_relationships` VALUES (370,37,0);
INSERT INTO `jc_term_relationships` VALUES (371,37,0);
INSERT INTO `jc_term_relationships` VALUES (372,37,0);
INSERT INTO `jc_term_relationships` VALUES (373,37,0);
INSERT INTO `jc_term_relationships` VALUES (374,37,0);
INSERT INTO `jc_term_relationships` VALUES (375,37,0);
INSERT INTO `jc_term_relationships` VALUES (376,37,0);
INSERT INTO `jc_term_relationships` VALUES (377,37,0);
INSERT INTO `jc_term_relationships` VALUES (378,37,0);
INSERT INTO `jc_term_relationships` VALUES (379,37,0);
INSERT INTO `jc_term_relationships` VALUES (380,37,0);
INSERT INTO `jc_term_relationships` VALUES (381,37,0);
INSERT INTO `jc_term_relationships` VALUES (382,37,0);
INSERT INTO `jc_term_relationships` VALUES (383,37,0);
INSERT INTO `jc_term_relationships` VALUES (384,43,0);
INSERT INTO `jc_term_relationships` VALUES (385,43,0);
INSERT INTO `jc_term_relationships` VALUES (386,43,0);
INSERT INTO `jc_term_relationships` VALUES (387,43,0);
INSERT INTO `jc_term_relationships` VALUES (388,44,0);
INSERT INTO `jc_term_relationships` VALUES (389,44,0);
INSERT INTO `jc_term_relationships` VALUES (390,44,0);
INSERT INTO `jc_term_relationships` VALUES (391,44,0);
INSERT INTO `jc_term_relationships` VALUES (392,44,0);
INSERT INTO `jc_term_relationships` VALUES (393,45,0);
INSERT INTO `jc_term_relationships` VALUES (394,45,0);
INSERT INTO `jc_term_relationships` VALUES (395,45,0);
INSERT INTO `jc_term_relationships` VALUES (396,45,0);
INSERT INTO `jc_term_relationships` VALUES (397,45,0);
INSERT INTO `jc_term_relationships` VALUES (398,45,0);
INSERT INTO `jc_term_relationships` VALUES (399,45,0);
INSERT INTO `jc_term_relationships` VALUES (400,45,0);
INSERT INTO `jc_term_relationships` VALUES (401,40,0);
INSERT INTO `jc_term_relationships` VALUES (402,40,0);
INSERT INTO `jc_term_relationships` VALUES (403,40,0);
INSERT INTO `jc_term_relationships` VALUES (404,40,0);
INSERT INTO `jc_term_relationships` VALUES (405,40,0);
INSERT INTO `jc_term_relationships` VALUES (406,40,0);
INSERT INTO `jc_term_relationships` VALUES (407,40,0);
INSERT INTO `jc_term_relationships` VALUES (408,40,0);
INSERT INTO `jc_term_relationships` VALUES (409,40,0);
INSERT INTO `jc_term_relationships` VALUES (410,40,0);
INSERT INTO `jc_term_relationships` VALUES (411,40,0);
INSERT INTO `jc_term_relationships` VALUES (412,40,0);
INSERT INTO `jc_term_relationships` VALUES (413,40,0);
INSERT INTO `jc_term_relationships` VALUES (414,40,0);
INSERT INTO `jc_term_relationships` VALUES (415,40,0);
INSERT INTO `jc_term_relationships` VALUES (416,40,0);
INSERT INTO `jc_term_relationships` VALUES (417,40,0);
INSERT INTO `jc_term_relationships` VALUES (418,40,0);
INSERT INTO `jc_term_relationships` VALUES (419,40,0);
INSERT INTO `jc_term_relationships` VALUES (420,40,0);
INSERT INTO `jc_term_relationships` VALUES (421,40,0);
INSERT INTO `jc_term_relationships` VALUES (422,40,0);
INSERT INTO `jc_term_relationships` VALUES (423,40,0);
INSERT INTO `jc_term_relationships` VALUES (424,40,0);
INSERT INTO `jc_term_relationships` VALUES (425,40,0);
INSERT INTO `jc_term_relationships` VALUES (426,40,0);
INSERT INTO `jc_term_relationships` VALUES (427,40,0);
INSERT INTO `jc_term_relationships` VALUES (428,40,0);
INSERT INTO `jc_term_relationships` VALUES (429,40,0);
INSERT INTO `jc_term_relationships` VALUES (430,40,0);
INSERT INTO `jc_term_relationships` VALUES (431,40,0);
INSERT INTO `jc_term_relationships` VALUES (432,40,0);
INSERT INTO `jc_term_relationships` VALUES (433,40,0);
INSERT INTO `jc_term_relationships` VALUES (434,40,0);
INSERT INTO `jc_term_relationships` VALUES (435,40,0);
INSERT INTO `jc_term_relationships` VALUES (436,40,0);
INSERT INTO `jc_term_relationships` VALUES (437,40,0);
INSERT INTO `jc_term_relationships` VALUES (438,40,0);
INSERT INTO `jc_term_relationships` VALUES (439,40,0);
INSERT INTO `jc_term_relationships` VALUES (440,40,0);
INSERT INTO `jc_term_relationships` VALUES (441,40,0);
INSERT INTO `jc_term_relationships` VALUES (442,40,0);
INSERT INTO `jc_term_relationships` VALUES (443,40,0);
INSERT INTO `jc_term_relationships` VALUES (444,40,0);
INSERT INTO `jc_term_relationships` VALUES (445,40,0);
INSERT INTO `jc_term_relationships` VALUES (446,40,0);
INSERT INTO `jc_term_relationships` VALUES (447,40,0);
INSERT INTO `jc_term_relationships` VALUES (448,40,0);
INSERT INTO `jc_term_relationships` VALUES (449,40,0);
INSERT INTO `jc_term_relationships` VALUES (450,40,0);
INSERT INTO `jc_term_relationships` VALUES (451,40,0);
INSERT INTO `jc_term_relationships` VALUES (452,40,0);
INSERT INTO `jc_term_relationships` VALUES (456,46,0);
INSERT INTO `jc_term_relationships` VALUES (457,46,0);
INSERT INTO `jc_term_relationships` VALUES (458,46,0);
INSERT INTO `jc_term_relationships` VALUES (459,46,0);
INSERT INTO `jc_term_relationships` VALUES (460,46,0);
INSERT INTO `jc_term_relationships` VALUES (461,46,0);
INSERT INTO `jc_term_relationships` VALUES (462,46,0);
INSERT INTO `jc_term_relationships` VALUES (463,46,0);
INSERT INTO `jc_term_relationships` VALUES (464,46,0);
INSERT INTO `jc_term_relationships` VALUES (465,46,0);
INSERT INTO `jc_term_relationships` VALUES (466,46,0);
INSERT INTO `jc_term_relationships` VALUES (467,46,0);
INSERT INTO `jc_term_relationships` VALUES (468,46,0);
INSERT INTO `jc_term_relationships` VALUES (469,46,0);
INSERT INTO `jc_term_relationships` VALUES (470,46,0);
INSERT INTO `jc_term_relationships` VALUES (471,46,0);
INSERT INTO `jc_term_relationships` VALUES (472,46,0);
INSERT INTO `jc_term_relationships` VALUES (473,46,0);
INSERT INTO `jc_term_relationships` VALUES (474,46,0);
INSERT INTO `jc_term_relationships` VALUES (475,46,0);
INSERT INTO `jc_term_relationships` VALUES (476,46,0);
INSERT INTO `jc_term_relationships` VALUES (477,46,0);
INSERT INTO `jc_term_relationships` VALUES (478,46,0);
INSERT INTO `jc_term_relationships` VALUES (479,46,0);
INSERT INTO `jc_term_relationships` VALUES (480,46,0);
INSERT INTO `jc_term_relationships` VALUES (481,46,0);
INSERT INTO `jc_term_relationships` VALUES (482,46,0);
INSERT INTO `jc_term_relationships` VALUES (483,46,0);
INSERT INTO `jc_term_relationships` VALUES (484,46,0);
INSERT INTO `jc_term_relationships` VALUES (485,46,0);
INSERT INTO `jc_term_relationships` VALUES (486,46,0);
INSERT INTO `jc_term_relationships` VALUES (487,46,0);
INSERT INTO `jc_term_relationships` VALUES (488,46,0);
INSERT INTO `jc_term_relationships` VALUES (489,46,0);
INSERT INTO `jc_term_relationships` VALUES (490,46,0);
INSERT INTO `jc_term_relationships` VALUES (491,46,0);
INSERT INTO `jc_term_relationships` VALUES (492,46,0);
INSERT INTO `jc_term_relationships` VALUES (493,46,0);
INSERT INTO `jc_term_relationships` VALUES (494,46,0);
INSERT INTO `jc_term_relationships` VALUES (495,46,0);
INSERT INTO `jc_term_relationships` VALUES (496,46,0);
INSERT INTO `jc_term_relationships` VALUES (497,46,0);
INSERT INTO `jc_term_relationships` VALUES (498,46,0);
INSERT INTO `jc_term_relationships` VALUES (499,46,0);
INSERT INTO `jc_term_relationships` VALUES (500,46,0);
INSERT INTO `jc_term_relationships` VALUES (501,46,0);
INSERT INTO `jc_term_relationships` VALUES (502,46,0);
INSERT INTO `jc_term_relationships` VALUES (503,46,0);
INSERT INTO `jc_term_relationships` VALUES (504,46,0);
INSERT INTO `jc_term_relationships` VALUES (505,46,0);
INSERT INTO `jc_term_relationships` VALUES (506,46,0);
INSERT INTO `jc_term_relationships` VALUES (507,46,0);
INSERT INTO `jc_term_relationships` VALUES (508,46,0);
INSERT INTO `jc_term_relationships` VALUES (509,46,0);
INSERT INTO `jc_term_relationships` VALUES (510,46,0);
INSERT INTO `jc_term_relationships` VALUES (511,47,0);
INSERT INTO `jc_term_relationships` VALUES (512,47,0);
INSERT INTO `jc_term_relationships` VALUES (513,47,0);
INSERT INTO `jc_term_relationships` VALUES (514,47,0);
INSERT INTO `jc_term_relationships` VALUES (515,47,0);
INSERT INTO `jc_term_relationships` VALUES (516,47,0);
INSERT INTO `jc_term_relationships` VALUES (517,47,0);
INSERT INTO `jc_term_relationships` VALUES (518,47,0);
INSERT INTO `jc_term_relationships` VALUES (519,47,0);
INSERT INTO `jc_term_relationships` VALUES (520,47,0);
INSERT INTO `jc_term_relationships` VALUES (521,47,0);
INSERT INTO `jc_term_relationships` VALUES (522,47,0);
INSERT INTO `jc_term_relationships` VALUES (523,47,0);
INSERT INTO `jc_term_relationships` VALUES (524,47,0);
INSERT INTO `jc_term_relationships` VALUES (525,47,0);
INSERT INTO `jc_term_relationships` VALUES (526,47,0);
INSERT INTO `jc_term_relationships` VALUES (527,47,0);
INSERT INTO `jc_term_relationships` VALUES (528,47,0);
INSERT INTO `jc_term_relationships` VALUES (529,47,0);
INSERT INTO `jc_term_relationships` VALUES (530,47,0);
INSERT INTO `jc_term_relationships` VALUES (531,47,0);
INSERT INTO `jc_term_relationships` VALUES (532,47,0);
INSERT INTO `jc_term_relationships` VALUES (533,47,0);
INSERT INTO `jc_term_relationships` VALUES (534,47,0);
INSERT INTO `jc_term_relationships` VALUES (535,6,0);
INSERT INTO `jc_term_relationships` VALUES (536,6,0);
/*!40000 ALTER TABLE `jc_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jc_term_taxonomy`
--

DROP TABLE IF EXISTS `jc_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jc_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jc_term_taxonomy`
--

LOCK TABLES `jc_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `jc_term_taxonomy` DISABLE KEYS */;
INSERT INTO `jc_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `jc_term_taxonomy` VALUES (2,2,'food_menu_groups','',0,58);
INSERT INTO `jc_term_taxonomy` VALUES (3,3,'food_menu_groups','',0,56);
INSERT INTO `jc_term_taxonomy` VALUES (4,4,'food_menu_groups','saturday: 11 am - 3 pm\r\nsunday: 10 am - 3 pm',0,91);
INSERT INTO `jc_term_taxonomy` VALUES (5,5,'food_menu_groups','',0,0);
INSERT INTO `jc_term_taxonomy` VALUES (6,6,'nav_menu','',0,12);
INSERT INTO `jc_term_taxonomy` VALUES (7,7,'food_menu_groups','',2,8);
INSERT INTO `jc_term_taxonomy` VALUES (8,8,'food_menu_groups','',2,12);
INSERT INTO `jc_term_taxonomy` VALUES (9,9,'food_menu_groups','comes with a side',2,19);
INSERT INTO `jc_term_taxonomy` VALUES (10,10,'food_menu_groups','add chicken $4, grilled shrimp $8, grilled calamari $6, steak $14, salmon $13',2,11);
INSERT INTO `jc_term_taxonomy` VALUES (11,11,'food_menu_groups','',2,8);
INSERT INTO `jc_term_taxonomy` VALUES (12,12,'food_menu_groups','',2,1);
INSERT INTO `jc_term_taxonomy` VALUES (13,13,'food_menu_groups','',2,0);
INSERT INTO `jc_term_taxonomy` VALUES (14,14,'food_menu_groups','',3,13);
INSERT INTO `jc_term_taxonomy` VALUES (15,15,'food_menu_groups','',3,8);
INSERT INTO `jc_term_taxonomy` VALUES (16,16,'food_menu_groups','comes with soup or salad',3,17);
INSERT INTO `jc_term_taxonomy` VALUES (17,17,'food_menu_groups','add chicken $4, shrimp $8, calamari $6, steak $9, salmon $13',3,11);
INSERT INTO `jc_term_taxonomy` VALUES (18,18,'food_menu_groups','comes with a side',3,6);
INSERT INTO `jc_term_taxonomy` VALUES (19,19,'food_menu_groups','',3,1);
INSERT INTO `jc_term_taxonomy` VALUES (20,20,'food_menu_groups','',4,8);
INSERT INTO `jc_term_taxonomy` VALUES (21,21,'food_menu_groups','served on an English muffin w/ fruit &amp; home fries',4,4);
INSERT INTO `jc_term_taxonomy` VALUES (22,22,'food_menu_groups','served w/ fruit, home fries &amp; an English muffin',4,6);
INSERT INTO `jc_term_taxonomy` VALUES (23,23,'food_menu_groups','',4,5);
INSERT INTO `jc_term_taxonomy` VALUES (24,24,'food_menu_groups','',4,12);
INSERT INTO `jc_term_taxonomy` VALUES (25,25,'food_menu_groups','',4,11);
INSERT INTO `jc_term_taxonomy` VALUES (26,26,'food_menu_groups','',4,6);
INSERT INTO `jc_term_taxonomy` VALUES (27,27,'food_menu_groups','',4,8);
INSERT INTO `jc_term_taxonomy` VALUES (28,28,'food_menu_groups','',4,8);
INSERT INTO `jc_term_taxonomy` VALUES (29,29,'food_menu_groups','',4,11);
INSERT INTO `jc_term_taxonomy` VALUES (30,30,'food_menu_groups','',4,11);
INSERT INTO `jc_term_taxonomy` VALUES (31,31,'food_menu_groups','',4,1);
INSERT INTO `jc_term_taxonomy` VALUES (37,37,'food_menu_groups','',0,35);
INSERT INTO `jc_term_taxonomy` VALUES (40,40,'food_menu_groups','',0,52);
INSERT INTO `jc_term_taxonomy` VALUES (43,43,'food_menu_groups','',0,4);
INSERT INTO `jc_term_taxonomy` VALUES (44,44,'food_menu_groups','',0,5);
INSERT INTO `jc_term_taxonomy` VALUES (45,45,'food_menu_groups','',0,8);
INSERT INTO `jc_term_taxonomy` VALUES (46,46,'food_menu_groups','',0,55);
INSERT INTO `jc_term_taxonomy` VALUES (47,47,'food_menu_groups','',0,24);
/*!40000 ALTER TABLE `jc_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jc_terms`
--

DROP TABLE IF EXISTS `jc_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jc_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jc_terms`
--

LOCK TABLES `jc_terms` WRITE;
/*!40000 ALTER TABLE `jc_terms` DISABLE KEYS */;
INSERT INTO `jc_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `jc_terms` VALUES (2,'Lunch','lunch',0);
INSERT INTO `jc_terms` VALUES (3,'Dinner','dinner',0);
INSERT INTO `jc_terms` VALUES (4,'Brunch','brunch',0);
INSERT INTO `jc_terms` VALUES (5,'Wine','wine',0);
INSERT INTO `jc_terms` VALUES (6,'main menu','main-menu',0);
INSERT INTO `jc_terms` VALUES (7,'Fruits de Mer','fruits-de-mer',0);
INSERT INTO `jc_terms` VALUES (8,'Hors d’Oeuvres','hors-doeuvres',0);
INSERT INTO `jc_terms` VALUES (9,'Sandwiches','sandwiches',0);
INSERT INTO `jc_terms` VALUES (10,'Salades','salades',0);
INSERT INTO `jc_terms` VALUES (11,'Entrees','entrees',0);
INSERT INTO `jc_terms` VALUES (12,'Sides','sides',0);
INSERT INTO `jc_terms` VALUES (13,'Pick 2','pick-2',0);
INSERT INTO `jc_terms` VALUES (14,'Hors d’Oeuvres','hors-doeuvres-dinner',0);
INSERT INTO `jc_terms` VALUES (15,'Fruits de Mer','fruits-de-mer-dinner',0);
INSERT INTO `jc_terms` VALUES (16,'Entrees','entrees-dinner',0);
INSERT INTO `jc_terms` VALUES (17,'Salades','salades-dinner',0);
INSERT INTO `jc_terms` VALUES (18,'Sandwiches','sandwiches-dinner',0);
INSERT INTO `jc_terms` VALUES (19,'Sides','sides-dinner',0);
INSERT INTO `jc_terms` VALUES (20,'Specialties','specialties',0);
INSERT INTO `jc_terms` VALUES (21,'Benedict','benedict',0);
INSERT INTO `jc_terms` VALUES (22,'Omelet','omelet',0);
INSERT INTO `jc_terms` VALUES (23,'Belgian Waffle','belgian-waffle',0);
INSERT INTO `jc_terms` VALUES (24,'A La Carte','a-la-carte',0);
INSERT INTO `jc_terms` VALUES (25,'Beverages','beverages',0);
INSERT INTO `jc_terms` VALUES (26,'Cocktail','cocktail',0);
INSERT INTO `jc_terms` VALUES (27,'Entrees','entrees-brunch',0);
INSERT INTO `jc_terms` VALUES (28,'Hors d\'Oeuvres','hors-doeuvres-brunch',0);
INSERT INTO `jc_terms` VALUES (29,'Sandwiches','sandwiches-brunch',0);
INSERT INTO `jc_terms` VALUES (30,'Salades','salades-brunch',0);
INSERT INTO `jc_terms` VALUES (31,'Sides','sides-brunch',0);
INSERT INTO `jc_terms` VALUES (37,'BLANC','blanc',0);
INSERT INTO `jc_terms` VALUES (40,'ROUGE','rouge',0);
INSERT INTO `jc_terms` VALUES (43,'SPARKLING','sparkling',0);
INSERT INTO `jc_terms` VALUES (44,'CHAMPAGNE','champagne',0);
INSERT INTO `jc_terms` VALUES (45,'PORT / MADEIRA / SHERRY','port-madeira-sherry',0);
INSERT INTO `jc_terms` VALUES (46,'Bottle','bottle',0);
INSERT INTO `jc_terms` VALUES (47,'Draught','draught',0);
/*!40000 ALTER TABLE `jc_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jc_usermeta`
--

DROP TABLE IF EXISTS `jc_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jc_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jc_usermeta`
--

LOCK TABLES `jc_usermeta` WRITE;
/*!40000 ALTER TABLE `jc_usermeta` DISABLE KEYS */;
INSERT INTO `jc_usermeta` VALUES (1,1,'first_name','');
INSERT INTO `jc_usermeta` VALUES (2,1,'last_name','');
INSERT INTO `jc_usermeta` VALUES (3,1,'nickname','admin');
INSERT INTO `jc_usermeta` VALUES (4,1,'description','');
INSERT INTO `jc_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `jc_usermeta` VALUES (6,1,'comment_shortcuts','false');
INSERT INTO `jc_usermeta` VALUES (7,1,'admin_color','fresh');
INSERT INTO `jc_usermeta` VALUES (8,1,'use_ssl','0');
INSERT INTO `jc_usermeta` VALUES (9,1,'show_admin_bar_front','true');
INSERT INTO `jc_usermeta` VALUES (10,1,'jc_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `jc_usermeta` VALUES (11,1,'jc_user_level','10');
INSERT INTO `jc_usermeta` VALUES (12,1,'dismissed_wp_pointers','wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp360_locks');
INSERT INTO `jc_usermeta` VALUES (13,1,'show_welcome_panel','0');
INSERT INTO `jc_usermeta` VALUES (14,1,'jc_dashboard_quick_press_last_post_id','279');
INSERT INTO `jc_usermeta` VALUES (15,1,'jc_user-settings','imgsize=full&mfold=o&libraryContent=browse&urlbutton=none&editor=tinymce&cats=pop&hidetb=1');
INSERT INTO `jc_usermeta` VALUES (16,1,'jc_user-settings-time','1398975787');
INSERT INTO `jc_usermeta` VALUES (17,1,'managenav-menuscolumnshidden','a:4:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}');
INSERT INTO `jc_usermeta` VALUES (18,1,'metaboxhidden_nav-menus','a:2:{i:0;s:12:\"add-post_tag\";i:1;s:24:\"add-themo_event_category\";}');
INSERT INTO `jc_usermeta` VALUES (19,1,'closedpostboxes_nav-menus','a:0:{}');
INSERT INTO `jc_usermeta` VALUES (20,1,'nav_menu_recently_edited','6');
INSERT INTO `jc_usermeta` VALUES (21,2,'first_name','');
INSERT INTO `jc_usermeta` VALUES (22,2,'last_name','');
INSERT INTO `jc_usermeta` VALUES (23,2,'nickname','wpengine');
INSERT INTO `jc_usermeta` VALUES (24,2,'description','');
INSERT INTO `jc_usermeta` VALUES (25,2,'rich_editing','true');
INSERT INTO `jc_usermeta` VALUES (26,2,'comment_shortcuts','false');
INSERT INTO `jc_usermeta` VALUES (27,2,'admin_color','fresh');
INSERT INTO `jc_usermeta` VALUES (28,2,'use_ssl','0');
INSERT INTO `jc_usermeta` VALUES (29,2,'show_admin_bar_front','true');
INSERT INTO `jc_usermeta` VALUES (30,2,'jc_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `jc_usermeta` VALUES (31,2,'jc_user_level','10');
INSERT INTO `jc_usermeta` VALUES (32,1,'default_password_nag','');
INSERT INTO `jc_usermeta` VALUES (33,1,'closedpostboxes_post','a:0:{}');
INSERT INTO `jc_usermeta` VALUES (34,1,'metaboxhidden_post','a:6:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}');
INSERT INTO `jc_usermeta` VALUES (35,1,'closedpostboxes_food','a:0:{}');
INSERT INTO `jc_usermeta` VALUES (36,1,'metaboxhidden_food','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `jc_usermeta` VALUES (37,1,'closedpostboxes_page','a:0:{}');
INSERT INTO `jc_usermeta` VALUES (38,1,'metaboxhidden_page','a:4:{i:0;s:16:\"commentstatusdiv\";i:1;s:11:\"commentsdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}');
INSERT INTO `jc_usermeta` VALUES (39,1,'edit_food_per_page','200');
INSERT INTO `jc_usermeta` VALUES (40,1,'edit_food_menu_groups_per_page','200');
/*!40000 ALTER TABLE `jc_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jc_users`
--

DROP TABLE IF EXISTS `jc_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jc_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jc_users`
--

LOCK TABLES `jc_users` WRITE;
/*!40000 ALTER TABLE `jc_users` DISABLE KEYS */;
INSERT INTO `jc_users` VALUES (1,'webmanager','$P$B/ZSLg2/GYXfrqsxwJeEYSkE.2d8KP.','webmanager','jason@picobarn.com','','2014-02-22 08:21:46','',0,'Max\'s on Broad');
INSERT INTO `jc_users` VALUES (2,'wpengine','$P$Bj3nNAcQlNj.Nl5F.v0Ntc6RUmjlHt0','wpengine','bitbucket@wpengine.com','http://wpengine.com','2014-02-27 20:37:50','',0,'wpengine');
/*!40000 ALTER TABLE `jc_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'Mr WordPress','','http://wordpress.org/','','2014-01-23 21:54:49','2014-01-23 21:54:49','Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.',0,'0','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://maxsonbroad.wpengine.com','yes');
INSERT INTO `wp_options` VALUES (2,'blogname','Max&#039;s on Broad','yes');
INSERT INTO `wp_options` VALUES (3,'blogdescription','Belgium Cuisine in Richmond, VA','yes');
INSERT INTO `wp_options` VALUES (4,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (5,'admin_email','jason@picobarn.com','yes');
INSERT INTO `wp_options` VALUES (6,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (7,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (8,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (9,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (10,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (11,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (12,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (13,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (17,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (18,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (19,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_pingback_flag','0','yes');
INSERT INTO `wp_options` VALUES (21,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (22,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (23,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (24,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_recently_updated_prepend','<em>','yes');
INSERT INTO `wp_options` VALUES (26,'links_recently_updated_append','</em>','yes');
INSERT INTO `wp_options` VALUES (27,'links_recently_updated_time','120','yes');
INSERT INTO `wp_options` VALUES (28,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (29,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (30,'permalink_structure','','yes');
INSERT INTO `wp_options` VALUES (31,'gzipcompression','0','yes');
INSERT INTO `wp_options` VALUES (32,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (33,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (34,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (35,'active_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (36,'home','http://maxsonbroad.wpengine.com','yes');
INSERT INTO `wp_options` VALUES (37,'category_base','','yes');
INSERT INTO `wp_options` VALUES (38,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (39,'advanced_edit','0','yes');
INSERT INTO `wp_options` VALUES (40,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (41,'gmt_offset','-5','yes');
INSERT INTO `wp_options` VALUES (42,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (43,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (44,'template','eatery','yes');
INSERT INTO `wp_options` VALUES (45,'stylesheet','eatery','yes');
INSERT INTO `wp_options` VALUES (46,'comment_whitelist','1','yes');
INSERT INTO `wp_options` VALUES (47,'blacklist_keys','','no');
INSERT INTO `wp_options` VALUES (48,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (49,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (50,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (51,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (52,'db_version','26691','yes');
INSERT INTO `wp_options` VALUES (53,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (54,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (55,'blog_public','0','yes');
INSERT INTO `wp_options` VALUES (56,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (57,'show_on_front','posts','yes');
INSERT INTO `wp_options` VALUES (58,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (59,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (60,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (61,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (62,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (63,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (64,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (65,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (66,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (67,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (68,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (69,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (70,'image_default_link_type','file','yes');
INSERT INTO `wp_options` VALUES (71,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (72,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (73,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (74,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (75,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (76,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (77,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (78,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (79,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (80,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (81,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (82,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (83,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (84,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (85,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (86,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (87,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (88,'page_on_front','0','yes');
INSERT INTO `wp_options` VALUES (89,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (90,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (91,'initial_db_version','26691','yes');
INSERT INTO `wp_options` VALUES (92,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:9:\"add_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (93,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (94,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (95,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (96,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (97,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (98,'sidebars_widgets','a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (99,'cron','a:4:{i:1393088026;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1393088125;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1393097520;a:1:{s:20:\"wp_maybe_auto_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (103,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:41:\"https://wordpress.org/wordpress-3.8.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:41:\"https://wordpress.org/wordpress-3.8.1.zip\";s:10:\"no_content\";s:52:\"https://wordpress.org/wordpress-3.8.1-no-content.zip\";s:11:\"new_bundled\";s:53:\"https://wordpress.org/wordpress-3.8.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"3.8.1\";s:7:\"version\";s:5:\"3.8.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"3.8\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1393085921;s:15:\"version_checked\";s:5:\"3.8.1\";s:12:\"translations\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (104,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1393085922;s:7:\"checked\";a:1:{s:19:\"akismet/akismet.php\";s:5:\"2.5.9\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (107,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1393085922;s:7:\"checked\";a:4:{s:6:\"eatery\";s:3:\"2.0\";s:14:\"twentyfourteen\";s:3:\"1.0\";s:14:\"twentythirteen\";s:3:\"1.1\";s:12:\"twentytwelve\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (108,'limit_login_retries','a:1:{s:11:\"71.14.1.242\";i:1;}','no');
INSERT INTO `wp_options` VALUES (109,'limit_login_retries_valid','a:1:{s:11:\"71.14.1.242\";i:1391748842;}','no');
INSERT INTO `wp_options` VALUES (110,'_transient_random_seed','c20534ca41ecb0af47027d65fe21a77d','yes');
INSERT INTO `wp_options` VALUES (113,'wpe_notices','a:2:{s:4:\"read\";s:0:\"\";s:8:\"messages\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (114,'wpe_notices_ttl','1391709327','yes');
INSERT INTO `wp_options` VALUES (117,'can_compress_scripts','0','yes');
INSERT INTO `wp_options` VALUES (134,'theme_mods_twentyfourteen','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1391705744;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}','yes');
INSERT INTO `wp_options` VALUES (135,'current_theme','Eatery','yes');
INSERT INTO `wp_options` VALUES (136,'theme_mods_eatery','a:1:{i:0;b:0;}','yes');
INSERT INTO `wp_options` VALUES (137,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (138,'sa_general','a:8:{s:16:\"footer_copyright\";s:0:\"\";s:16:\"google_analytics\";s:0:\"\";s:10:\"custom_css\";s:0:\"\";s:12:\"custom_email\";s:0:\"\";s:12:\"use_timthumb\";b:0;s:15:\"currency_symbol\";s:1:\"$\";s:27:\"currency_symbol_align_right\";i:0;s:18:\"reso_24_hour_clock\";s:0:\"\";}','yes');
INSERT INTO `wp_options` VALUES (139,'sa_layout','a:49:{s:11:\"layout_view\";s:5:\"fluid\";s:14:\"skin_selection\";s:5:\"black\";s:16:\"website_BG_color\";s:0:\"\";s:16:\"sidebar_BG_color\";s:0:\"\";s:18:\"sidebar_text_color\";s:0:\"\";s:23:\"sidebar_text_link_color\";s:0:\"\";s:21:\"sidebar_divider_color\";s:0:\"\";s:16:\"content_BG_color\";s:0:\"\";s:21:\"content_divider_color\";s:0:\"\";s:12:\"nav_BG_color\";s:0:\"\";s:16:\"nav_button_hover\";s:0:\"\";s:18:\"nav_button_current\";s:0:\"\";s:10:\"nav_sub_bg\";s:0:\"\";s:14:\"nav_text_color\";s:0:\"\";s:29:\"sidebar_text_link_hover_color\";s:0:\"\";s:17:\"use_custom_colors\";b:0;s:15:\"header_BG_image\";s:0:\"\";s:19:\"use_header_BG_image\";b:1;s:17:\"colorPalette_dark\";s:0:\"\";s:17:\"colorPalette_mid1\";s:0:\"\";s:17:\"colorPalette_mid2\";s:0:\"\";s:18:\"colorPalette_light\";s:0:\"\";s:21:\"colorPalette_offwhite\";s:0:\"\";s:24:\"colorPalette_brightwhite\";s:0:\"\";s:12:\"colorPalette\";s:119:\"colorPalette_dark,colorPalette_mid1,colorPalette_mid2,colorPalette_offwhite,colorPalette_brightwhite,colorPalette_light\";s:24:\"use_skin_header_BG_image\";b:0;s:14:\"header_default\";s:22:\"header_placeholder.png\";s:17:\"header_default_sm\";s:25:\"header_placeholder_sm.png\";s:25:\"sa_layout_header_BG_image\";s:0:\"\";s:28:\"sa_layout_header_BG_image_sm\";s:0:\"\";s:17:\"hide_page_corners\";s:1:\"0\";s:14:\"upload_image10\";s:0:\"\";s:14:\"upload_image11\";s:0:\"\";s:17:\"layout_skin_color\";s:0:\"\";s:13:\"upload_image0\";s:0:\"\";s:19:\"upload_image0-width\";s:0:\"\";s:20:\"upload_image0-height\";s:0:\"\";s:20:\"upload_image11-width\";s:0:\"\";s:21:\"upload_image11-height\";s:0:\"\";s:13:\"create_header\";s:0:\"\";s:13:\"upload_image1\";s:0:\"\";s:13:\"upload_image2\";s:0:\"\";s:13:\"upload_image3\";s:0:\"\";s:13:\"upload_image4\";s:0:\"\";s:13:\"upload_image5\";s:0:\"\";s:13:\"upload_image6\";s:0:\"\";s:13:\"upload_image7\";s:0:\"\";s:13:\"upload_image8\";s:0:\"\";s:17:\"upload_image_id_0\";s:0:\"\";}','yes');
INSERT INTO `wp_options` VALUES (140,'sa_social_media','a:19:{s:12:\"soc_facebook\";s:32:\"https://facebook.com/themovation\";s:11:\"soc_twitter\";s:30:\"http://twitter.com/themovation\";s:14:\"soc_googleplus\";s:0:\"\";s:12:\"soc_linkedin\";s:0:\"\";s:10:\"soc_tumblr\";s:0:\"\";s:14:\"soc_googlemaps\";s:0:\"\";s:14:\"soc_foursquare\";s:0:\"\";s:11:\"soc_youtube\";s:0:\"\";s:9:\"soc_vimeo\";s:0:\"\";s:8:\"soc_yelp\";s:0:\"\";s:14:\"soc_urbanspoon\";s:0:\"\";s:15:\"soc_tripadvisor\";s:0:\"\";s:10:\"soc_meetup\";s:0:\"\";s:7:\"soc_rss\";s:0:\"\";s:13:\"soc_pinterest\";s:0:\"\";s:9:\"soc_email\";s:0:\"\";s:9:\"soc_phone\";s:0:\"\";s:20:\"soc_use_custom_color\";b:0;s:14:\"soc_icon_color\";s:9:\"soc_5.png\";}','yes');
INSERT INTO `wp_options` VALUES (141,'sa_typography','a:19:{s:21:\"google_font_family_h1\";s:28:\"Arvo | Georgia, Times, serif\";s:20:\"google_font_family_p\";s:38:\"PT+Sans | Helvetica, Arial, sans-serif\";s:14:\"google_h1_font\";s:0:\"\";s:9:\"google_h1\";s:0:\"\";s:20:\"google_h1_fontfamily\";s:0:\"\";s:13:\"google_p_font\";s:0:\"\";s:8:\"google_p\";s:0:\"\";s:19:\"google_p_fontfamily\";s:0:\"\";s:7:\"h1_size\";s:0:\"\";s:7:\"h2_size\";s:0:\"\";s:7:\"h3_size\";s:0:\"\";s:7:\"h4_size\";s:0:\"\";s:7:\"h5_size\";s:0:\"\";s:7:\"h6_size\";s:0:\"\";s:6:\"p_size\";s:0:\"\";s:18:\"custom_google_font\";s:0:\"\";s:22:\"custom_google_font_css\";s:0:\"\";s:9:\"h1_sample\";s:0:\"\";s:8:\"p_sample\";s:0:\"\";}','yes');
INSERT INTO `wp_options` VALUES (142,'e_theme_setup_status','1','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2014-01-23 21:54:49','2014-01-23 21:54:49','Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!','Hello world!','','publish','open','open','','hello-world','','','2014-01-23 21:54:49','2014-01-23 21:54:49','',0,'http://maxsonbroad.wpengine.com/?p=1',0,'post','',0);
INSERT INTO `wp_posts` VALUES (2,1,'2014-01-23 21:54:49','2014-01-23 21:54:49','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://maxsonbroad.wpengine.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','publish','open','open','','sample-page','','','2014-01-23 21:54:49','2014-01-23 21:54:49','',0,'http://maxsonbroad.wpengine.com/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,2,'2014-02-06 16:55:27','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2014-02-06 16:55:27','0000-00-00 00:00:00','',0,'http://maxsonbroad.wpengine.com/?p=3',0,'post','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (2,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'nickname','wpengine');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (7,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (8,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (9,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (10,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (11,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (12,1,'dismissed_wp_pointers','wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp360_locks');
INSERT INTO `wp_usermeta` VALUES (13,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (14,2,'first_name','');
INSERT INTO `wp_usermeta` VALUES (15,2,'last_name','');
INSERT INTO `wp_usermeta` VALUES (16,2,'nickname','maxsonbroad');
INSERT INTO `wp_usermeta` VALUES (17,2,'description','');
INSERT INTO `wp_usermeta` VALUES (18,2,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (19,2,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (20,2,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (21,2,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (22,2,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (23,2,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (24,2,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (25,2,'default_password_nag','');
INSERT INTO `wp_usermeta` VALUES (26,2,'wp_dashboard_quick_press_last_post_id','3');
INSERT INTO `wp_usermeta` VALUES (27,2,'dismissed_wp_pointers','wp330_saving_widgets');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'wpengine','$P$ByGNM94ZCvCPuQfR9Vek396PtaT5ND1','wpengine','bitbucket@wpengine.com','http://wpengine.com','2014-01-23 21:54:49','',0,'wpengine');
INSERT INTO `wp_users` VALUES (2,'maxsonbroad','$P$Bkoa8FKxl27wU.HkAOu0QNoCSttUhl0','maxsonbroad','jason@picobarn.com','http://maxsonbroad.wpengine.com','2014-02-06 16:08:54','',0,'maxsonbroad');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-07-28 17:22:30
