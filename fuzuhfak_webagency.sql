-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 12, 2021 at 06:07 AM
-- Server version: 10.3.29-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fuzuhfak_webagency`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `article_id` int(20) NOT NULL,
  `article_title` varchar(200) DEFAULT NULL,
  `article_description` longtext DEFAULT NULL,
  `article_category` varchar(20) DEFAULT NULL,
  `article_date` varchar(20) DEFAULT NULL,
  `article_unique` varchar(200) DEFAULT NULL,
  `article_approval` varchar(20) DEFAULT NULL,
  `article_identify` varchar(100) DEFAULT NULL,
  `article_writer` varchar(50) DEFAULT NULL,
  `article_publicity` varchar(20) DEFAULT NULL,
  `article_circle` varchar(20) DEFAULT NULL,
  `article_unique_id` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`article_id`, `article_title`, `article_description`, `article_category`, `article_date`, `article_unique`, `article_approval`, `article_identify`, `article_writer`, `article_publicity`, `article_circle`, `article_unique_id`) VALUES
(189, 'TheMornStar - Leading Creative Digital Marketing Agency in Bangladesh BD', '&lt;p class=\"ql-align-justify\"&gt;TheMornStar - Leading Creative Digital Marketing Agency in Bangladesh BD&lt;/p&gt;&lt;p class=\"ql-align-justify\"&gt;&lt;span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px; white-space: normal;\"&gt;TheMornStars a leading-creative-agency are a united, full-service team with everything under one roof . Our strategic approach helps org see the whole forest before picking the right trees. We specialise in cutting edge Web Design, Web Development, Branding, Digital Marketing, E-Commerce and Wordpress solutions&lt;/span&gt;&lt;/p&gt;&lt;p class=\"ql-align-justify\"&gt;&lt;br&gt;&lt;/p&gt;&lt;p class=\"ql-align-justify\"&gt;&lt;strong style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 22px; text-align: justify; white-space: normal;\"&gt;Hi there! Nice to meet you.&lt;/strong&gt;We’re TheMornStar Team, one of the world\'s best one-stop-online-shops for everything digital marketing, branding and website development services to help you make your business illuminate through today’s cluttered marketplace, hassle-free.Every day, we strive to assist you in augmenting your brand’s online visibility, increasing reach &amp;amp; engagement with your target audience, and eventually driving sales. We provide affordable best custom website &amp;amp; digital marketing services&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h2 class=\"stategytitle\" style=\"margin-top: 0.1rem; margin-bottom: 0.1rem; border: 0px; vertical-align: baseline; font-size: 25px; white-space: normal;\"&gt;Success begins from the Planning&lt;/h2&gt;&lt;p style=\"padding-top: 10px; padding-bottom: 10px; border: 0px; vertical-align: baseline; white-space: normal; font-size: 21px; line-height: 30px; text-align: justify;\"&gt;We hate surprises, and we know you hate them too. Modern marketing requires a strong focus on operations, planning, visible KPI’s and clear steps owned by every partner and stakeholder. We thrive when we work with our clients from the very beginning.&lt;/p&gt;&lt;h2 class=\"stategytitle\" style=\"margin-top: 0.1rem; margin-bottom: 0.1rem; border: 0px; vertical-align: baseline; font-size: 25px; white-space: normal;\"&gt;Great marketing requires collaboration&lt;/h2&gt;&lt;p style=\"padding-top: 10px; padding-bottom: 10px; border: 0px; vertical-align: baseline; white-space: normal; font-size: 21px; line-height: 30px; text-align: justify;\"&gt;Our most successful projects all start with our clients letting us in, embedding us in their processes, or letting us design those marketing processes for them. We can provide great results if you truly let us in to talk with you and your colleagues.&lt;/p&gt;&lt;p style=\"padding-top: 10px; padding-bottom: 10px; border: 0px; vertical-align: baseline; white-space: normal; font-size: 21px; line-height: 30px; text-align: justify;\"&gt;&lt;br&gt;&lt;/p&gt;&lt;h2 class=\"stategytitle\" style=\"margin-top: 0.1rem; margin-bottom: 0.1rem; border: 0px; vertical-align: baseline; font-size: 25px; white-space: normal;\"&gt;Good Partnerships Require Earnest Work&lt;/h2&gt;&lt;p style=\"padding-top: 10px; padding-bottom: 10px; border: 0px; vertical-align: baseline; white-space: normal; font-size: 21px; line-height: 30px; text-align: justify;\"&gt;We don’t really do “attitude”, we believe the best work is created by a strong mix of kind communication, listening to the audience, and making sure we only reach out to them when it is good for them, because that is when it is good for us.&lt;/p&gt;&lt;h2 class=\"stategytitle\" style=\"margin-top: 0.1rem; margin-bottom: 0.1rem; border: 0px; vertical-align: baseline; font-size: 25px; white-space: normal;\"&gt;Creating designs with a touch of empathy.&lt;/h2&gt;&lt;p style=\"padding-top: 10px; padding-bottom: 10px; border: 0px; vertical-align: baseline; white-space: normal; font-size: 21px; line-height: 30px; text-align: justify;\"&gt;As one of the leading web design agencies in New York, we understand that every client has a unique set of requirements that can be in the form of either generating leads, increasing sales or boosting traffic on their virtual storefronts.&lt;/p&gt;', 'Technology', '2020-10-15 19:06:40', NULL, '1', 'TheMornStar---Leading-Creative-Digital-Marketing-Agency-in-Bangladesh-BD', 'hLneCwefDNyqHSYpB', 'Yes', 'All', '88767c9593u');

-- --------------------------------------------------------

--
-- Table structure for table `articlei`
--

CREATE TABLE `articlei` (
  `articleId` int(20) NOT NULL,
  `articleTitle` varchar(225) NOT NULL,
  `articleDescription` varchar(5000) NOT NULL,
  `articleUniqueId` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articlei`
--

INSERT INTO `articlei` (`articleId`, `articleTitle`, `articleDescription`, `articleUniqueId`) VALUES
(20, 'undefined', 'undefined', 'LJvcvvkogmq'),
(21, 'undefined', 'undefined', 'q0pReq1mLqG'),
(22, 'undefined', 'undefined', 'BbuEVL9SC0e');

-- --------------------------------------------------------

--
-- Table structure for table `auth-users`
--

CREATE TABLE `auth-users` (
  `authId` int(10) NOT NULL,
  `authUserAltName` varchar(225) NOT NULL,
  `authProviderName` varchar(255) NOT NULL,
  `authProviderId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth-users`
--

INSERT INTO `auth-users` (`authId`, `authUserAltName`, `authProviderName`, `authProviderId`) VALUES
(49, '21MhKyfdJZb', 'Google', '100548837027434548810'),
(51, '21MhKyfdJZb', 'Discord', '421651011808002053'),
(52, '21MhKyfdJZb', 'LinkedIn', '8DyEV5Rqmp'),
(53, '21MhKyfdJZb', 'Facebook', '3634079926817538'),
(54, 'h7UeuAGTJ9j', 'github', '20471308');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `career_id` int(100) NOT NULL,
  `career_name` varchar(200) DEFAULT NULL,
  `career_type` varchar(100) DEFAULT NULL,
  `career_fullname` varchar(100) DEFAULT NULL,
  `career_email` varchar(100) DEFAULT NULL,
  `career_phone` varchar(100) DEFAULT NULL,
  `career_portfolio` varchar(100) DEFAULT NULL,
  `career_cover` varchar(5000) DEFAULT NULL,
  `career_string` varchar(200) DEFAULT NULL,
  `career_unique` varchar(100) DEFAULT NULL,
  `career_approval` varchar(100) DEFAULT NULL,
  `career_date` varchar(100) DEFAULT NULL,
  `career_uniqueid` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`career_id`, `career_name`, `career_type`, `career_fullname`, `career_email`, `career_phone`, `career_portfolio`, `career_cover`, `career_string`, `career_unique`, `career_approval`, `career_date`, `career_uniqueid`) VALUES
(7, 'PHP-WEB-DEVELOPER', 'fulltime', 'Md Ahad Aminul ', 'mdahadaminul@gmail.com', '01521257123', 'https://www.themornstar.com', 'Here are some writing for demo post .okay.', 'ahHMqT', 'Dhaka,Bangladesh', 'Yes', '2019-12-13 10:19:21', 'mMXbcKZkeO-XqxykN'),
(8, 'PHP-WEB-DEVELOPER', 'fulltime', 'Md Ahad Aminul Islam', 'mdahadaminul@gmail.com', '01521257123', 'https://www.themonrstar.com', 'abc', 'ahHMqT', 'Dhaka,Bangladesh', 'Yes', '2019-12-13 10:21:47', 'cQsAswERb-LPpOhLb');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cid` int(10) NOT NULL,
  `categoriesname` varchar(500) DEFAULT NULL,
  `sub-directory-id` varchar(10) DEFAULT NULL,
  `unique-id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cid`, `categoriesname`, `sub-directory-id`, `unique-id`) VALUES
(1, 'Shirts', '1', '1'),
(2, 'Fashion Hoodies & Sweatshirts', '1', '1'),
(3, 'Sweaters', NULL, NULL),
(4, 'Jackets & Coats', NULL, NULL),
(5, 'Jeans', NULL, NULL),
(6, 'Pants', NULL, NULL),
(7, 'T-Shirts & Tanks', NULL, NULL),
(8, 'Sleep & Lounge', NULL, NULL),
(9, 'Suits & Coats', NULL, NULL),
(10, 'Panjabi & Fatua', NULL, NULL),
(11, 'Polo Shirts', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `collection_id` int(55) NOT NULL,
  `collection_name` varchar(55) DEFAULT NULL,
  `collection_title` varchar(120) DEFAULT NULL,
  `collection_info` varchar(200) DEFAULT NULL,
  `collection_description` varchar(2000) DEFAULT NULL,
  `collection_serial` varchar(55) DEFAULT NULL,
  `collection_date` varchar(55) DEFAULT NULL,
  `collection_time` varchar(55) DEFAULT NULL,
  `collection_unique` varchar(55) DEFAULT NULL,
  `collection_alt_unique` varchar(55) DEFAULT NULL,
  `collection_type` varchar(55) DEFAULT NULL,
  `collection_publicity` varchar(55) DEFAULT NULL,
  `collection_creator` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` (`collection_id`, `collection_name`, `collection_title`, `collection_info`, `collection_description`, `collection_serial`, `collection_date`, `collection_time`, `collection_unique`, `collection_alt_unique`, `collection_type`, `collection_publicity`, `collection_creator`) VALUES
(1, 'Medium', 'My Collection', 'here is collection for me.', 'no description', '1', '10/8/2017', '10am', '5asdf5sf4sfs5fssfsdf', 'sfsfs4fs5f4sf6s5f6s5f6sfs', 'Public', 'yes', '8'),
(2, 'Collection', 'My Collection', 'here is collection for me.', 'no description', '1', '10/8/2017', '10am', '5asdf5sf4sfs5fssfsdf', 'sfsfs4fs5f4sf6s5f6s5f6sfs', 'Public', 'yes', '8');

-- --------------------------------------------------------

--
-- Table structure for table `communities`
--

CREATE TABLE `communities` (
  `community_id` int(55) NOT NULL,
  `community_name` varchar(100) DEFAULT NULL,
  `community_title` varchar(100) DEFAULT NULL,
  `community_info` varchar(500) DEFAULT NULL,
  `community_description` varchar(2000) DEFAULT NULL,
  `community_category` varchar(55) DEFAULT NULL,
  `community_catalog` varchar(55) DEFAULT NULL,
  `community_startdate` varchar(55) DEFAULT NULL,
  `community_type` varchar(55) DEFAULT NULL,
  `community_publicity` varchar(55) DEFAULT NULL,
  `community_unique` varchar(55) DEFAULT NULL,
  `community_creator` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `communities`
--

INSERT INTO `communities` (`community_id`, `community_name`, `community_title`, `community_info`, `community_description`, `community_category`, `community_catalog`, `community_startdate`, `community_type`, `community_publicity`, `community_unique`, `community_creator`) VALUES
(1, 'Community', 'abc', 'c', 'd', 'd', 'd', 'd', 'd', 'd', 'd', 'd'),
(2, 'Medium', 'abc', 'c', 'd', 'd', 'd', 'd', 'd', 'd', 'd', 'd');

-- --------------------------------------------------------

--
-- Table structure for table `dropzone`
--

CREATE TABLE `dropzone` (
  `id` int(10) NOT NULL,
  `filename` varchar(500) DEFAULT NULL,
  `file` varchar(500) DEFAULT NULL,
  `thumbnail` varchar(500) DEFAULT NULL,
  `fileunique` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dropzone`
--

INSERT INTO `dropzone` (`id`, `filename`, `file`, `thumbnail`, `fileunique`) VALUES
(126, '2e7be4bd-0736-43e4-9197-e3cfa22a06c21573894420148-HRX-by-Hrithik-Roshan-Men-Track-Pants-5311573894417652-1.jpg', '6235R3cmP4.jpg', 'thumbnail_6235R3cmP4.jpg', '1580PL2155'),
(127, '0_x1DPANdk_1xoZ8kN.png', '12316x9Ix2s.png', 'thumbnail_12316x9Ix2s.png', '4159y86k22'),
(128, 'unnamed-2.jpg', '1065B121V7.jpg', 'thumbnail_1065B121V7.jpg', '3300243u13'),
(129, 'pexels-andrea-piacquadio-927022.jpg', '678130114m3.jpg', 'thumbnail_678130114m3.jpg', '88767c9593u');

-- --------------------------------------------------------

--
-- Table structure for table `event_file`
--

CREATE TABLE `event_file` (
  `event_fileid` int(20) NOT NULL,
  `event_filename` varchar(500) DEFAULT NULL,
  `event_fileurl` varchar(50) DEFAULT NULL,
  `event_file_unique` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_file`
--

INSERT INTO `event_file` (`event_fileid`, `event_filename`, `event_fileurl`, `event_file_unique`) VALUES
(1, '2e7be4bd-0736-43e4-9197-e3cfa22a06c21573894420148-HRX-by-Hrithik-Roshan-Men-Track-Pants-5311573894417652-1.jpg', '1576228489.jpg', 'KxRkKNPfyYNaFAnjb'),
(4, '1_viR6TsTu96IsGlRnwpI94g.jpeg', '1576228906.jpeg', 'cQsAswERb-LPpOhLb'),
(5, 'JASPER PRINT 7 25,2 x 30,9 cm.pdf', '1576408861.pdf', 'tzkOgjLgKFXHeCPWP'),
(6, 'JASPER PRINT 7 PLACEMENT.pdf', '1576408870.pdf', 'tzkOgjLgKFXHeCPWP');

-- --------------------------------------------------------

--
-- Table structure for table `ipaddress`
--

CREATE TABLE `ipaddress` (
  `ip_id` int(10) NOT NULL,
  `ip_number` varchar(20) DEFAULT NULL,
  `ip_activation` varchar(10) DEFAULT NULL,
  `join_date` varchar(30) DEFAULT NULL,
  `ip_altusername` varchar(20) DEFAULT NULL,
  `ip_country` varchar(100) NOT NULL,
  `ip_city` varchar(20) DEFAULT NULL,
  `ip_region` varchar(20) DEFAULT NULL,
  `ip_postal` varchar(20) DEFAULT NULL,
  `ip_loc` varchar(100) DEFAULT NULL,
  `ip_recentdate` varchar(30) DEFAULT NULL,
  `ip_count` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ipaddress`
--

INSERT INTO `ipaddress` (`ip_id`, `ip_number`, `ip_activation`, `join_date`, `ip_altusername`, `ip_country`, `ip_city`, `ip_region`, `ip_postal`, `ip_loc`, `ip_recentdate`, `ip_count`) VALUES
(3, '103.87.214.161', NULL, '13-12-2019', '__dBwPhqrpjbfWnBE', 'BD', 'Dhaka', 'Dhaka', '1000', '23.7104,90.4074', NULL, NULL),
(4, '::1', NULL, '13-12-2019', 'hLneCwefDNyqHSYpB', '', '', '', '', '', NULL, NULL),
(5, '127.0.0.1', NULL, '13-12-2019', 'ngxcYZfmZ_TwWe-XY', '', '', '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notificationId` int(64) NOT NULL,
  `notificationFrom` varchar(64) NOT NULL,
  `notificationTo` varchar(64) NOT NULL,
  `notificationDate` varchar(64) NOT NULL,
  `notificationTime` varchar(64) NOT NULL,
  `notificationText` varchar(255) NOT NULL,
  `notificationLink` varchar(255) NOT NULL,
  `notificationStatus` varchar(10) NOT NULL,
  `notificationAction` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `amount`, `address`, `status`, `transaction_id`, `currency`) VALUES
(0, 'John Doe', 'john.doe@email.com', '01711111111', 0, 'Dhaka', 'Pending', 'TYISHL-SSLCZ_TEST_5dcb1be4e6f23', 'BDT'),
(0, 'John Doe', 'john.doe@email.com', '01711111111', 0, 'Dhaka', 'Pending', 'TYISHL-SSLCZ_TEST_5dcb1be5f1305', 'BDT'),
(0, 'John Doe', 'john.doe@email.com', '01711111111', 0, 'Dhaka', 'Pending', 'TYISHL-SSLCZ_TEST_5dcb1bf366ef3', 'BDT'),
(0, 'John Doe', 'john.doe@email.com', '01711111111', 0, 'Dhaka', 'Pending', 'TYISHL-SSLCZ_TEST_5dcb1bf7e1cf5', 'BDT'),
(0, 'John Doe', 'mdahadaminul@gmail.com', '01947670546', 1200, 'Dhaka', 'Pending', 'TYISHL-SSLCZ_TEST_5dcb1c301a4ea', 'BDT'),
(0, 'John Doe', 'mdahadaminul@gmail.com', '01947670546', 1200, 'Dhaka', 'Success', 'TYISHL-SSLCZ_TEST_5dcb1d3d93d41', 'BDT'),
(0, 'John Doe', 'mdahadaminul@gmail.com', '01947670546', 1200, 'Dhaka', 'Success', 'TYISHL-SSLCZ_TEST_5dcb1db48b7c1', 'BDT');

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `portfolio_id` int(100) NOT NULL,
  `portfolio_type` varchar(100) DEFAULT NULL,
  `portfolio_company_name` varchar(100) DEFAULT NULL,
  `portfolio_company_logo` varchar(100) DEFAULT NULL,
  `portfolio_company_slogan` varchar(100) DEFAULT NULL,
  `portfolio_technologies` varchar(100) DEFAULT NULL,
  `portfolio_link` varchar(100) DEFAULT NULL,
  `portfolio_review` varchar(500) DEFAULT NULL,
  `portfolio_ratings` varchar(100) DEFAULT NULL,
  `portfolio_complete_date` varchar(100) DEFAULT NULL,
  `portfolio_leader` varchar(100) DEFAULT NULL,
  `portfolio_unique` varchar(100) DEFAULT NULL,
  `portfolio_approval` varchar(100) DEFAULT NULL,
  `portfolio_country` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`portfolio_id`, `portfolio_type`, `portfolio_company_name`, `portfolio_company_logo`, `portfolio_company_slogan`, `portfolio_technologies`, `portfolio_link`, `portfolio_review`, `portfolio_ratings`, `portfolio_complete_date`, `portfolio_leader`, `portfolio_unique`, `portfolio_approval`, `portfolio_country`) VALUES
(2, 'Bugs Fixing , Design , Development', 'Trineugen', 'trineugen.png\r\n', 'Expand your options for International shipping with Global eParcel Solutions.', 'HTML,CSS,BOOSTRAP,PHOTOSHOP', 'https://trineugen.com', 'Nice Development ', '5', 'July,2017', 'Md Aminul Islam', 'trineugen', '1', 'United Kingdom'),
(3, 'Web Design', 'Sebeum', 'sebeum.png', 'Make your Cripto Currency Account safe.', 'HTML,CSS,BOOSTRAP,PHOTOSHOP', 'https://sebeum.com/', 'Amazing design ', '5', 'November,2017', 'Md Aminul Islam', 'Sebeum', '1', 'Argentina'),
(4, 'Social Integration', 'CMAFAS', 'CMAFAS.png', 'MARKET LEADER IN FINANCIAL EXAM PREP', 'PHP SOCIAL INTEGRATION ', 'https://www.cmfas.com.sg/', 'GREAT WORK', '5', 'November,2017', 'Md Aminul Islam', 'cmfas', '1', 'Singapore'),
(5, 'APACHE REWRITE RULES', 'Htgagnant', 'Htgagnant.png', 'MARKET LEADER IN FINANCIAL EXAM PREP', 'PHP SOCIAL INTEGRATION ', 'https://www.Htgagnant.com', 'GREAT WORK', '5', 'January,2018', 'Md Aminul Islam', 'htgagnant', '1', 'France'),
(6, 'BACKEND DEVELOPMENT', 'Oceanx', 'Htgagnant.png', 'Ocean Experiences ', 'BACKEND DEVELOPMENT', 'https://oceanexperiences.co.za/', 'GREAT WORK', '5', 'june,2018', 'Md Aminul Islam', 'oceanexperiences', '1', 'South Africa'),
(7, 'BACKEND DEVELOPMENT', 'MediaUnited', 'MediaUnited.png', 'Ads Campaign for black ', 'PHP , AJAX ,WEB DESIGN ', 'https://mediaunited.co.uk/', 'Amazing Work done.', '5', 'April,2019', 'Md Aminul Islam', 'mediaunited', '1', 'United Kingdom'),
(8, 'FRONT END DEVELOPMENT', 'ThePPPTrust', 'ThePPPTrust.png', 'The PPI Deadline Clock is Ticking...', 'PHP , AJAX ,WEB DESIGN ', 'https://ThePPPTrust.org/', 'Amazing Work done.', '5', 'May,2019', 'Md Aminul Islam', 'ThePPPTrust', '1', 'United Kingdom'),
(9, 'BACKEND DEVELOPMENT', 'UEarnUnited', 'UEarnUnited.png', 'Ads Campaign for black ', 'PHP , AJAX ,WEB DESIGN ', 'https://UEarnUnited.com/', 'Amazing Work done.', '5', 'AUGUST,2019', 'Md Aminul Islam', 'uearnunited', '1', 'United Kingdom'),
(10, 'WEB PERFORMANCE ', 'Global_link ', 'globalink.png', 'backlink company in usa', 'PHP , AJAX ,WEB DESIGN ', 'http://globall.ink/', 'Amazing Work done.', '5', 'AUGUST,2019', 'Md Aminul Islam', 'globallink', '1', 'United States'),
(11, 'WEB PERFORMANCE ', ' Disrupting Diversity ', 'disruptingdiversity.png', 'Disrupting Diversity', 'PHP , AJAX ,WEB DESIGN ', 'http://disruptingdiversity.org/', 'Work done successfully.', '5', 'september,2019', 'Md Aminul Islam', 'disruptingdiversity', '1', 'United Kingdom'),
(12, 'Social Integration', 'Global eParcel  ', 'globaleparcel.png\r\n', 'MARKET LEADER IN FINANCIAL EXAM PREP', 'PHP SOCIAL INTEGRATION ', 'https://home.globaleparcel.com/', 'GREAT WORK', '5', 'November,2017', 'Md Aminul Islam', 'globaleparcel', '1', 'United Kingdom');

-- --------------------------------------------------------

--
-- Table structure for table `product-directory`
--

CREATE TABLE `product-directory` (
  `id` int(10) NOT NULL,
  `directory_name` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product-directory`
--

INSERT INTO `product-directory` (`id`, `directory_name`) VALUES
(1, 'Men\'s Fashion'),
(2, 'Women\'s Fashion'),
(3, 'Baby'),
(4, 'Girls\' Fashion'),
(5, 'Boys\' Fashion'),
(6, 'Electronics'),
(7, 'Luggage'),
(8, 'Movies & Television'),
(9, 'Software'),
(10, 'Health and Household'),
(11, 'Home and Kitchen'),
(12, 'Beauty and personal care'),
(13, 'Computers'),
(14, 'Books & Audible'),
(15, 'Automotive'),
(16, 'Software'),
(17, 'Toys and Games'),
(18, 'Video Games'),
(19, 'Arts & Crafts'),
(20, 'Pet supplies'),
(21, 'Sports and Outdoors'),
(22, 'Automotive'),
(23, 'Industrial and Scientific'),
(24, 'Tools & Home Improvement'),
(25, 'Smart Home'),
(26, 'Appstore for Android'),
(27, 'E-readers & Books');

-- --------------------------------------------------------

--
-- Table structure for table `product-subdirectory`
--

CREATE TABLE `product-subdirectory` (
  `id` int(10) NOT NULL,
  `subdirectoryname` varchar(500) DEFAULT NULL,
  `directory-id` varchar(10) DEFAULT NULL,
  `unique-id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product-subdirectory`
--

INSERT INTO `product-subdirectory` (`id`, `subdirectoryname`, `directory-id`, `unique-id`) VALUES
(1, 'Clothing', '1', NULL),
(2, 'Shoes', '1', NULL),
(3, 'Watches', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `publisher_id` int(55) NOT NULL,
  `publisher_name` varchar(55) DEFAULT NULL,
  `publisher_title` varchar(100) DEFAULT NULL,
  `publisher_info` varchar(200) DEFAULT NULL,
  `publisher_description` varchar(2000) DEFAULT NULL,
  `publisher_category` varchar(55) DEFAULT NULL,
  `publisher_catalog` varchar(55) DEFAULT NULL,
  `publisher_startdate` varchar(55) DEFAULT NULL,
  `publisher_type` varchar(55) DEFAULT NULL,
  `publisher_publicity` varchar(55) DEFAULT NULL,
  `publisher_unique` varchar(55) DEFAULT NULL,
  `publisher_alt_unique` varchar(55) DEFAULT NULL,
  `publisher_creator` varchar(55) DEFAULT NULL,
  `publisher_status` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`publisher_id`, `publisher_name`, `publisher_title`, `publisher_info`, `publisher_description`, `publisher_category`, `publisher_catalog`, `publisher_startdate`, `publisher_type`, `publisher_publicity`, `publisher_unique`, `publisher_alt_unique`, `publisher_creator`, `publisher_status`) VALUES
(1, 'Publisher', 'Mr . Lolipop Khan', 'I am Mr Lolipop', 'This page is for Mr Lolipop', 'Artilce', 'teacher-writings', '10/08/2017', 'Yes', 'Yes', 'H5s56fsfsd3fsdf', '4531s0fs1df3s3fsdf', '8', 'Active'),
(2, 'BraveSign', 'Math is fun', 'we will talk over math term', 'Mathematics is the queen of Science.', 'Artilce', 'teacher-writings', '10/08/2017', 'Yes', 'Yes', 'H5s56fsfsd3fsdf', '4531s0fs1df3s3fsdf', '8', 'Active'),
(3, 'Medium', 'BraveSign', 'the being who do brave work keep sign for welfare.', 'Mathematics is the queen of Science.', 'Artilce', 'teacher-writings', '10/08/2017', 'Yes', 'Yes', 'H5s56fsfsd3fsdf', '4531s0fs1df3s3fsdf', '8', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `quote_id` int(20) NOT NULL,
  `quote_fullname` varchar(100) DEFAULT NULL,
  `quote_email` varchar(100) DEFAULT NULL,
  `quote_company` varchar(100) DEFAULT NULL,
  `quote_skype` varchar(100) DEFAULT NULL,
  `quote_type` varchar(200) DEFAULT NULL,
  `quote_source` varchar(100) DEFAULT NULL,
  `quote_budget` varchar(100) DEFAULT NULL,
  `quote_timeline` varchar(100) DEFAULT NULL,
  `quote_description` varchar(5000) DEFAULT NULL,
  `quote_unique` varchar(100) DEFAULT NULL,
  `quote_approval` varchar(100) DEFAULT NULL,
  `quote_date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`quote_id`, `quote_fullname`, `quote_email`, `quote_company`, `quote_skype`, `quote_type`, `quote_source`, `quote_budget`, `quote_timeline`, `quote_description`, `quote_unique`, `quote_approval`, `quote_date`) VALUES
(3, 'Md Ahad Aminul', 'mdahadaminul@gmail.com', 'abc', 'abc', 'bugs-fixing-of-website', 'Facebook', '1000', '90', 'abc', '1', '1', '2019-12-13 10:11:09'),
(4, 'Jhone Doe', 'mdahadaminul@gmail.com', 'abc', 'abc', 'ranking-local-business-promotional-video', 'Facebook', '1000', '90', 'abc', '1', '1', '2019-12-13 10:12:15');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `subcategories` int(10) NOT NULL,
  `subcategoriesname` varchar(500) DEFAULT NULL,
  `categoriesid` varchar(10) DEFAULT NULL,
  `unique-id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`subcategories`, `subcategoriesname`, `categoriesid`, `unique-id`) VALUES
(1, 'Polo-Shirt', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `updated_at` varchar(100) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `updated_at`, `created_at`) VALUES
(7, 'Laravel', NULL, NULL),
(8, 'Laravel 5', NULL, NULL),
(9, 'Laravel 4', NULL, NULL),
(10, 'Laravel 22', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uniquemaster`
--

CREATE TABLE `uniquemaster` (
  `uniqueMasterId` int(64) NOT NULL,
  `uniqueMaster` varchar(64) NOT NULL,
  `uniqueMasterTags` varchar(500) NOT NULL,
  `uniqueMasterCategories` varchar(500) NOT NULL,
  `uniqueMasterCreatedBy` varchar(225) NOT NULL,
  `uniqueMasterPostedTo` varchar(255) NOT NULL,
  `uniqueMasterCreatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `uniqueMasterAudience` varchar(64) NOT NULL,
  `uniqueMasterPublicity` varchar(10) NOT NULL,
  `uniqueMasterOrigin` varchar(225) NOT NULL,
  `uniqueMasterLanguage` varchar(64) NOT NULL,
  `uniqueMasterStatus` varchar(10) NOT NULL,
  `uniqueMasterType` varchar(10) NOT NULL,
  `uniqueMasterAction` varchar(10) NOT NULL,
  `uniqueMasterNotificationStatus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(64) NOT NULL,
  `userAltName` varchar(64) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userFirstName` varchar(64) DEFAULT NULL,
  `userLastName` varchar(64) DEFAULT NULL,
  `userPassword` varchar(500) NOT NULL,
  `userJoined` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userLastLogged` varchar(100) NOT NULL,
  `userActivation` varchar(255) NOT NULL,
  `userType` varchar(10) NOT NULL,
  `userAvatar` varchar(255) DEFAULT NULL,
  `userCurrency` varchar(10) NOT NULL,
  `userOrigin` varchar(64) NOT NULL,
  `userLanguage` varchar(64) NOT NULL,
  `userMobile` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userAltName`, `userName`, `userEmail`, `userFirstName`, `userLastName`, `userPassword`, `userJoined`, `userLastLogged`, `userActivation`, `userType`, `userAvatar`, `userCurrency`, `userOrigin`, `userLanguage`, `userMobile`) VALUES
(72, '21MhKyfdJZb', '', 'mdahadaminul@gmail.com', NULL, NULL, '9f7df2a1d3039207c4fcad24548a359b', '2021-06-12 13:53:58', '', 'gdqdSWGD6xjzhrVJ3aQBoh5LP9wKEKuKh2dqwNzGlPSn4kCqGDnZdmnx1om8O2NM', '', NULL, '', '', '', ''),
(73, 'h7UeuAGTJ9j', '', 'themornstars@gmail.com', NULL, NULL, '', '2021-06-12 13:58:53', '', 'uZfQJlGgRpauwUHRWVSzeF5Xf8Tgre91vSg2UyOF3qTlKS77MZJtmmEpH0TdmnKk', '', 'https://avatars.githubusercontent.com/u/20471308?v=4', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `articlei`
--
ALTER TABLE `articlei`
  ADD PRIMARY KEY (`articleId`);

--
-- Indexes for table `auth-users`
--
ALTER TABLE `auth-users`
  ADD PRIMARY KEY (`authId`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`career_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`collection_id`);

--
-- Indexes for table `communities`
--
ALTER TABLE `communities`
  ADD PRIMARY KEY (`community_id`);

--
-- Indexes for table `dropzone`
--
ALTER TABLE `dropzone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_file`
--
ALTER TABLE `event_file`
  ADD PRIMARY KEY (`event_fileid`);

--
-- Indexes for table `ipaddress`
--
ALTER TABLE `ipaddress`
  ADD PRIMARY KEY (`ip_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notificationId`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`portfolio_id`);

--
-- Indexes for table `product-directory`
--
ALTER TABLE `product-directory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product-subdirectory`
--
ALTER TABLE `product-subdirectory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`publisher_id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`quote_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`subcategories`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uniquemaster`
--
ALTER TABLE `uniquemaster`
  ADD PRIMARY KEY (`uniqueMasterId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `article_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `articlei`
--
ALTER TABLE `articlei`
  MODIFY `articleId` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `auth-users`
--
ALTER TABLE `auth-users`
  MODIFY `authId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `career_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `collection_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `communities`
--
ALTER TABLE `communities`
  MODIFY `community_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dropzone`
--
ALTER TABLE `dropzone`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `event_file`
--
ALTER TABLE `event_file`
  MODIFY `event_fileid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ipaddress`
--
ALTER TABLE `ipaddress`
  MODIFY `ip_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notificationId` int(64) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `portfolio_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product-directory`
--
ALTER TABLE `product-directory`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `product-subdirectory`
--
ALTER TABLE `product-subdirectory`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `publisher_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `quote_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `subcategories` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `uniquemaster`
--
ALTER TABLE `uniquemaster`
  MODIFY `uniqueMasterId` int(64) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
