-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2014 at 10:15 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `couturelifestyles`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `author` int(10) unsigned NOT NULL DEFAULT '1',
  `tags` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `name`, `content`, `time`, `author`, `tags`) VALUES
(1, 'asdfasdf', 'asdfasd', '2014-09-30 17:48:44', 1, ''),
(2, 'New blog post', 'New blog post', '2014-09-30 17:53:50', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `bot_check`
--

DROP TABLE IF EXISTS `bot_check`;
CREATE TABLE IF NOT EXISTS `bot_check` (
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` char(42) NOT NULL,
  KEY `time` (`time`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bot_check`
--

INSERT INTO `bot_check` (`time`, `name`) VALUES
('2014-04-30 15:48:06', '0080533be4e7103078980f895d7883064a173e8f7a'),
('2014-04-30 16:28:05', '00960893f621a178f7cdc4a57d0d57f41da807fbc6');

-- --------------------------------------------------------

--
-- Table structure for table `configuration`
--

DROP TABLE IF EXISTS `configuration`;
CREATE TABLE IF NOT EXISTS `configuration` (
  `name` varchar(100) NOT NULL,
  `label` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  `example` varchar(100) NOT NULL,
  `help` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`),
  KEY `name_2` (`name`,`label`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `configuration`
--

INSERT INTO `configuration` (`name`, `label`, `value`, `example`, `help`) VALUES
('contact_recipient', 'Contact Recipient Email', '', 'bain@lifthousedesign.com', 'This is the email address that will received messages sent through the contact form.'),
('ga_code', 'Google Analytics Code', '', 'UA-000000-01', 'If you want to track your page views using Google Analytics, enter the provided code here.'),
('google_site_verification', 'Allow Google Site Verification', 'No', 'No', 'Setting this field to "Yes" will allow Google to automatically verify your website (required for Google Webmaster Tools). It is important that you set this field back to "No" after your site has been verified or someone else may try to claim it!');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
CREATE TABLE IF NOT EXISTS `content` (
  `name` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `type` enum('permanent','aside','page') NOT NULL DEFAULT 'page',
  `topbar` enum('Yes','No') NOT NULL DEFAULT 'No',
  `footer` enum('Yes','No') NOT NULL DEFAULT 'No',
  `title` varchar(500) NOT NULL DEFAULT '',
  `description` varchar(500) NOT NULL DEFAULT '',
  `weight` int(11) NOT NULL,
  `parent` varchar(50) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`name`, `content`, `type`, `topbar`, `footer`, `title`, `description`, `weight`, `parent`) VALUES
('about', '<h3>Jesse McCheane Vredenburgh</h3>\n<p>...known as Mic to his friends is a songwriter and instrumentalist living in Austin, TX. He received a B.M. and M.M. in cello&nbsp;performance from the Butler School of Music at the University of Texas. Since relocating to Austin from El Paso in 2007,&nbsp;Mic has jumped head first into the Austin music community. As a classical cellist, he has performed with the Miro String&nbsp;Quartet and participated in the Heifetz Music Institute.</p>\n<h3>An Austin Musician</h3>\n<p>Mic has played both cello and guitar with independent acts such as David Ramirez, B. Sterling Archer, The Brilliance,&nbsp;Future Humans, and the up and coming indie rock act, Zsu. He has performed live in the studio for Austin radio programs&nbsp;such as Jason and Deb in the Morning on 101X and KVRX Local Live.</p>\n<h3>Favorites</h3>\n<p>Cello Luthier: Raymond Melanson</p>\n<p>Bow Maker: Jean Adam</p>\n<p>Guitar of Choice: 1958 Custom Shop Les Paul</p>\n<p>Amp of Choice: Marshall Plexi</p>\n<p>Pick of Choice: Dunlop 2.0 mm</p>\n<h3>Full Spectrum</h3>\n<p>Mic enjoys writing and listening to all kinds of music from Bach to Zeppelin to Michael Jackson.</p>', 'aside', 'No', 'No', '', '', 0, '0'),
('aboutus', '<h3>Jesse McCheane Vredenburgh</h3>\r\n<p>...known as Mic to his friends is a songwriter and instrumentalist living in Austin, TX. He received a B.M. and M.M. in cello performance from the Butler School of Music at the University of Texas. Since relocating to Austin from El Paso in 2007, Mic has jumped head first into the Austin music community. As a classical cellist, he has performed with the Miro String Quartet and participated in the Heifetz Music Institute.</p>\r\n<h3>An Austin Musician</h3>\r\n<p>Mic has played both cello and guitar with independent acts such as David Ramirez, B. Sterling Archer, The Brilliance, Future Humans, and the up and coming indie rock act, Zsu. He has performed live in the studio for Austin radio programs such as Jason and Deb in the Morning on 101X and KVRX Local Live.</p>\r\n<h3>Favorites</h3>\r\n<p>Cello Luthier: Raymond Melanson</p>\r\n<p>Bow Maker: Jean Adam</p>\r\n<p>Guitar of Choice: 1958 Custom Shop Les Paul</p>\r\n<p>Amp of Choice: Marshall Plexi</p>\r\n<p>Pick of Choice: Dunlop 2.0 mm</p>\r\n<h3>Full Spectrum</h3>\r\n<p>Mic enjoys writing and listening to all kinds of music from Bach to Zeppelin to Michael Jackson.</p>', 'page', 'Yes', 'Yes', 'About', '', 6, '0'),
('designer-collection', 'Designer Collection content', 'page', 'Yes', 'Yes', 'Designer Collection', 'Designer Collection', 0, 'aboutus'),
('frenchmans-creek', 'Page content', 'page', 'Yes', 'Yes', 'Frenchman''s Creek', 'Frenchman''s Creek', 1, 'where-we-build'),
('gallery', 'Page content', 'page', 'Yes', 'Yes', 'Gallery', 'Gallery', 4, '0'),
('lifestyle-collection', 'Lifestyle Collection content', 'page', 'Yes', 'Yes', 'Lifestyle Collection', 'Lifestyle Collection', 3, 'aboutus'),
('old-palm', 'Page content', 'page', 'Yes', 'Yes', 'Old Palm', 'Old Palm', 3, 'where-we-build'),
('prima', 'Prima content', 'page', 'Yes', 'Yes', 'Prima', 'Prima', 0, 'aboutus'),
('where-we-build', '<div id="contents_middle">\r\n                	<div class="right-image"><img src="images/Couture-Homes_Why_Couture_side3.jpg"></div>\r\n                    <div class="right-image"><a href="media/Couture-Homes_Luxe_4page_Reader_Spread.pdf"><img src="images/couture-homes_luxe_4_page_reader.png" alt="Couture Homes - Luxe - 4 Page Reader Spread"></a></div>\r\n                    <h2>Why Couture</h2>\r\n                    <p>\r\n       	      Beyond common custom home building is <a href="about.php" title="About Couture Homes" target="_self">Couture</a>—where value and accountability meet style and sophistication. Welcome to the new standard in luxury home building. </p>\r\n                    <p>\r\n                   	At <a href="about.php" title="About Couture Homes" target="_self">Couture Homes</a>, we offer two uncommon, 5-star approaches to building your home. </p>\r\n                    <p>\r\n   	        The first is our <a href="lifestyle.php" title="The Lifestyle Collection" target="_self">Lifestyle Collection</a> which utilizes the Lifestyle Discovery Process to create a home in perfect harmony with you. It is an unrivaled approach to luxury home building where your lifestyle is studied and mapped and then designed into every facet of your home. You are involved intimately in every detail of your home. It is the way to create a truly bespoke home. </p>\r\n                    <p>\r\n        The second is our <a href="designer.php" title="Coutuer Homes Designer Label Homes" target="_self">Designer label</a> approach which utilizes a Visioneering process to develop a vision for your home. <a href="about.php" title="About Couture Homes" target="_self">Couture Homes</a> then assembles a world-class team of architects and designers who specialize in your style to bring your vision to life.  This approach caters to architecturally sophisticated clients who appreciate buying a home much like they would fine art or Haute Couture fashion. It is the ultimate approach to luxury homebuilding and creates a home which is the eptiome of style and sophistication. </p>\r\n                    <p>\r\n"a home for next season." Their building practices are state of the art and they have the team to deliver on this very timely promise. <a href="where_we_build.php" title="Where Couture Homes Builds" target="_self">Couture Homes</a> are available in <a href="orlando.php" title="Couture Homes in Orlando" target="_self">Orlando</a> and in sourtheast Florida including <a href="old_palm.php" title="Couture Homes in Old Palm" target="_self">Old Palm</a>, <a href="frenchmans_creek.php" title="Couture Homes at Frenchman''s Creek" target="_self">Frenchman''s Creek</a> and <a href="orlando.php" title="Couture Homes in Orlando" target="_self">Orlando</a>. </p>\r\n					<a href="americas_best_builder.php" target="_self" alt="Couture-Homes Named America''s Best Builder"><img src="images/ABB_Logo_250x210.jpg" width="200" height="168" border="0"></a>\r\n                    <p style="margin-bottom:50px;"> </p>\r\n                </div>', 'page', 'Yes', 'Yes', 'Where We Build', 'Where We Build', 2, '0');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE IF NOT EXISTS `log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `message` text,
  `data` text,
  `type` enum('log','error') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `news_feed`
--

DROP TABLE IF EXISTS `news_feed`;
CREATE TABLE IF NOT EXISTS `news_feed` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `author` int(10) unsigned NOT NULL DEFAULT '1',
  `tags` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `news_feed`
--

INSERT INTO `news_feed` (`id`, `name`, `content`, `time`, `author`, `tags`) VALUES
(1, 'asdfasdf', 'asdfasd', '2014-09-30 17:48:44', 1, ''),
(2, 'New blog post', 'New blog post', '2014-09-30 17:53:50', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

DROP TABLE IF EXISTS `social_media`;
CREATE TABLE IF NOT EXISTS `social_media` (
  `label` varchar(30) NOT NULL,
  `value` varchar(100) NOT NULL DEFAULT '',
  `name` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`label`, `value`, `name`) VALUES
('Facebook', '', 'facebook'),
('Google+', '', 'googleplus'),
('Instagram', '', 'instagram'),
('LinkedIn', '', 'linkedin'),
('Pinterest', '', 'pinterest'),
('Twitter', '', 'twitter'),
('YouTube', '', 'youtube');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `first_name` varchar(32) DEFAULT NULL,
  `last_name` varchar(32) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `phone_text_capable` tinyint(4) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirm_code` char(80) DEFAULT NULL,
  `role` enum('developer','administrator','manager','blogger','user') NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `first_name`, `last_name`, `phone`, `phone_text_capable`, `created_at`, `updated_at`, `last_login`, `confirm_code`, `role`) VALUES
(1, 'mike@lifthousedesign.com', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Mike', 'Beattie', NULL, 0, '0000-00-00 00:00:00', '2014-09-30 19:19:04', '2014-09-30 19:19:04', NULL, 'administrator'),
(2, 'tara@lifthousedesign.com', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Tara', 'Beattie', NULL, 0, '0000-00-00 00:00:00', NULL, NULL, NULL, 'administrator');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
