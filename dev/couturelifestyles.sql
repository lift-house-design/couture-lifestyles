-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: couturelifestyles
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.14.04.1

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
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `author` int(10) unsigned NOT NULL DEFAULT '1',
  `tags` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (2,'New blog post','New blog post','2014-09-30 17:53:50',1,''),(3,'Filling the Void','Four aggressive, younger builders figure out how to make money in a still-weak housing market. \n\nIn 2009, the median age of a single-family home builder was 53 years old, according to an NAHB survey of its members. And a destabilizing recession hasn\'t helped housing replenish its ranks with fresh talent. But despite - or perhaps because of - market conditions, a generation of builders in their 30s and 40s is asserting itself with new ideas and energy.\n\nThe following profiles feature four such builders whose distinguishing characteristic is their willingness to try new things and shift gears when experiments didn\'t work as planned. These builders also rely more than their predecessors on systems and processes to monitor their financial and operational performance, as well as their customers\' preferences. To quote one of our subjects about his company\'s early success, \"Everything we\'ve been doing we\'re doing on purpose.\"\nGetting to Know You\n\nGary Hartogh, founder of Couture Homes, stops at nothing to deliver exactly what his clients are looking for. Recently, Hartogh even spent three days living with one client in the prospect\'s house in Chicago.\n\nHartogh, who in another life was one of South Africa\'s largest builder/developers - believes the Lifestyle Discovery Process is the foundation for achieving their larger ambition to licensing Couture as a brand. Couture is currently beta-testing its licensing concept with another builder, Orlando, Fla.-based Arturo Barcelona Homes, whose own ethnographic process is geared toward developing standard house plans.\n\nMeanwhile, Couture continues to refine and grow. It recently completed a 9,751-square-foot house in 165 days. This home was the first in Palm Beach County, Fla., to obtain green certification through the NAHB\'s National Green Building Standard. In addition, Couture recently signed an agreement for a seven-house community, its first.\n\nAnd in August, the company hired its first full-time architect. Couture has even employed architects from Canada and Italy in the past. The reason? Couture stops at nothing to keep Couture\'s designs fresh, and innovative.','2014-10-03 17:05:54',1,'');
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bot_check`
--

DROP TABLE IF EXISTS `bot_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bot_check` (
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` char(42) NOT NULL,
  KEY `time` (`time`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bot_check`
--

LOCK TABLES `bot_check` WRITE;
/*!40000 ALTER TABLE `bot_check` DISABLE KEYS */;
INSERT INTO `bot_check` VALUES ('2014-04-30 15:48:06','0080533be4e7103078980f895d7883064a173e8f7a'),('2014-04-30 16:28:05','00960893f621a178f7cdc4a57d0d57f41da807fbc6');
/*!40000 ALTER TABLE `bot_check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration`
--

DROP TABLE IF EXISTS `configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configuration` (
  `name` varchar(100) NOT NULL,
  `label` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  `example` varchar(100) NOT NULL,
  `help` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`),
  KEY `name_2` (`name`,`label`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration`
--

LOCK TABLES `configuration` WRITE;
/*!40000 ALTER TABLE `configuration` DISABLE KEYS */;
INSERT INTO `configuration` VALUES ('contact_recipient','Contact Recipient Email','','bain@lifthousedesign.com','This is the email address that will received messages sent through the contact form.'),('ga_code','Google Analytics Code','','UA-000000-01','If you want to track your page views using Google Analytics, enter the provided code here.'),('google_site_verification','Allow Google Site Verification','No','No','Setting this field to \"Yes\" will allow Google to automatically verify your website (required for Google Webmaster Tools). It is important that you set this field back to \"No\" after your site has been verified or someone else may try to claim it!');
/*!40000 ALTER TABLE `configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` VALUES ('about','<h3>Couture Homes</h3>\n<p>At Couture Homes, we are extremely passionate about building luxury homes. From the art of a flawlessly designed entry way, to the architectural precision of a custom kitchen, we are committed to meeting all of your expectations.</p>\n<p>&nbsp;</p>\n<p>Designing and building a custom home is different from any other product purchase. It provides a unique opportunity of being intimately involved with a work-in-process. You get to watch your home being built from the ground up. Whether you are in town to view build progress in person, or watch via our interactive website, you will be kept up to date on the progress of your Couture Home.</p>\n<p>&nbsp;</p>\n<p>Do you want to be intimately involved in the home planning process,or sit back, relax and let us do all the heavy lifting? Whichever your preference, we have engineered our process to meet your preferred level of involvement.</p>','aside','No','No','','',0,'0'),('aboutus','<div style=\"float: left; width: 400px;\"><img style=\"float: none;\" src=\"/assets/img/Couture-Homes_indoor_theatre.jpg\" alt=\"\" /><br /> <a href=\"/assets/media/couture-homes.pdf\" target=\"_blank\"><img src=\"/assets/content/about_view-the-pdf.png\" alt=\"\" /></a></div>\n<div style=\"margin-left: 400px;\">\n<h2>Beyond common custom home building; <em>Couture</em>.</h2>\n<p>Why Couture? Welcome to the new standard in luxury home building. Where value and accountability meet style and sophistication.</p>\n<p>&nbsp;</p>\n<p>At Couture Homes, we offer two uncommon, 5-star approaches to building your home. The first is our Lifestyle Collection which utilizes the Lifestyle Discovery Process to create a home in perfect harmony with you and your needs. Our approach to luxury home building is unrivaled. We begin by studying and mapping your lifestyle. We then design the perfect home, just for you. Every facet of your home will enhance your daily routine and experience. From the very beginning, you are involved intimately in every detail of your home. It is the only way to create a truly bespoke home.</p>\n<p>&nbsp;</p>\n<p>Our second approach? The Designer Collection. Our Designer Label approach utilizes a visioneering process to develop a unique vision for your home. Then we assemble a world-class team of architects and designers who specialize in your personal style. Through this approach, we cater to architecturally sophisticated clients who appreciate buying a home much like they would fine art or Haute Couture fashion. It is the ultimate approach to luxury homebuilding. Our primary objective is to create create a home which is the epitome of style and sophistication.</p>\n</div>\n<p>&nbsp;</p>\n<p>In addition to our unparalleled building and design approach, we offer each client \"a home for next season.\" We guarantee that you will be more than satisfied with our ability to deliver a state of the art home in a timely fashion. Couture Homes are currently available in southeast Florida.</p>\n<p>&nbsp;</p>\n<h2>Our Commitment To You.</h2>\n<p>At Couture Homes, we are extremely passionate about building luxury homes. From the art of a flawlessly designed entry way, to the architectural precision of a custom kitchen, we are committed to meeting all of your expectations.</p>\n<p>&nbsp;</p>\n<p>Designing and building a custom home is different from any other product purchase. It provides a unique opportunity of being intimately involved with a work-in-process. You get to watch your home being built from the ground up. Whether you are in town to view build progress in person, or watch via our interactive website, you will be kept up to date on the progress of your Couture Home.</p>\n<p>&nbsp;</p>\n<p>Do you want to be intimately involved in the home planning process,or sit back, relax and let us do all the heavy lifting? Whichever your preference, we have engineered our process to meet your preferred level of involvement.</p>\n<p>&nbsp;</p>','page','Yes','Yes','About','',6,'0'),('designer-collection','<p><img src=\"/assets/content/designer-collection_1.jpg\" alt=\"\" /></p>\n<h2>The Couture Homes Designer Collection:</h2>\n<p>Pushing the envelope and delivering cutting-edge luxury homes, our Designer label breaks down barriers. Looking for a custom home that incorporates functionality, innovation, and style? Look no further. Our Designer Label Homes are sure to impress.</p>\n<p>&nbsp;</p>\n<p>Through a revolutionary visioneering process, we establish a vision that works for you. From there, we assemble a world-class team of architects and designers . Each designer and architect is selected with with your style and goals in mind. This approach allows us to cater specifically to you. Passionate about custom architecture? We cater to your sophisticated style and taste. It is the ultimate approach to luxury homebuilding and creates a home, which is the epitome of style.</p>\n<p>&nbsp;</p>','page','Yes','Yes','Designer Collection','Designer Collection',0,'aboutus'),('lifestyle-collection','<p><img src=\"/assets/content/lifestyle-collection_1.jpg\" alt=\"\" /></p>\n<h2>Homes In Perfect Harmony With You</h2>\n<p>Here, your lifestyle is designed into every facet of your home. Whether inspired by timeless tradition or reflecting the utmost in modern sophistication, the Lifestyle Collection is designed and built around you.</p>\n<p>&nbsp;</p>\n<p>Through our trademarked &ldquo;Lifestyle Discovery Process&trade;,&rdquo; we develop a true connection with you and your unique lifestyle. All architectural and interior elements of your new Lifestyle Collection home will exist seamlessly within your way of life.</p>\n<p>&nbsp;</p>\n<p>This unrivaled approach to luxury home building where your lifestyle is studied and mapped and then designed into every facet of your home. You are involved intimately in every detail of your home. It is the way to create a truly bespoke home.</p>\n<p>&nbsp;</p>','page','Yes','Yes','Lifestyle Collection','Lifestyle Collection',3,'aboutus'),('old-palm','<div style=\"float: left; width: 400px;\"><img src=\"/assets/content/old-palm_1.jpg\" alt=\"\" /><br /><br /> <img src=\"/assets/content/old-palm_2.jpg\" alt=\"\" /></div>\n<h2>Amazing Homes, Amazing Golf.</h2>\n<p>Old Palm Golf Club is among the world\'s most beautiful and luxurious Golf Club Communities. Offering three gracious and distinct neighborhoods, Old Palm is sure to have what you are looking for. Here, each home is built and designed with the most exacting standards. Couple that with unique characteristics to match your personal style, and you will be glad to call your Couture Home in Old Palm home.</p>\n<p>&nbsp;</p>\n<p>With a range of ultra-luxurious custom estate homes from the elegantly simple to the simply elegant, Old Palm Golf Club offers beautiful new homes in harmony with their surroundings, all with exceptional amenities and offering views of the golf course, water features or preserves. One of these luxury estates is sure to suit your needs.</p>\n<p><br /> Visit the Old Palm Golf Club Website</p>','page','Yes','Yes','Old Palm','Old Palm',3,'where-we-build'),('where-we-build','<p><img src=\"/assets/img/Couture-Homes_where-we-build_trusses.jpg\" alt=\"\" /></p>\n<h2>Sunny Florida</h2>\n<p>At Couture Homes, we build great homes at the confluence of your unique spirit and our knowledge. The result? We provide you with superior value and a five star experience; from start to finish. Specifically, we build in Old Palm with a focus on exclusive gated golf course communities &amp; waterfront properties. We will build on your lot or help you find a home site that meets your needs with your Realtor.</p>','page','Yes','Yes','Where We Build','Where We Build',2,'0');
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `message` text,
  `data` text,
  `type` enum('log','error') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_feed`
--

DROP TABLE IF EXISTS `news_feed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_feed` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `author` int(10) unsigned NOT NULL DEFAULT '1',
  `tags` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_feed`
--

LOCK TABLES `news_feed` WRITE;
/*!40000 ALTER TABLE `news_feed` DISABLE KEYS */;
INSERT INTO `news_feed` VALUES (3,'Filling The Void','<p>\nFour aggressive, younger builders figure out how to make money in a still-weak housing market. \n</p>\n<br />\n<p>\nIn 2009, the median age of a single-family home builder was 53 years old, according to an NAHB survey of its members. And a destabilizing recession hasn\'t helped housing replenish its ranks with fresh talent. But despite - or perhaps because of - market conditions, a generation of builders in their 30s and 40s is asserting itself with new ideas and energy.\n</p>\n<br />\n<p>\nThe following profiles feature four such builders whose distinguishing characteristic is their willingness to try new things and shift gears when experiments didn\'t work as planned. These builders also rely more than their predecessors on systems and processes to monitor their financial and operational performance, as well as their customers\' preferences. To quote one of our subjects about his company\'s early success, \"Everything we\'ve been doing we\'re doing on purpose.\"\nGetting to Know You\n</p>\n<br />\n<p>\nGary Hartogh, founder of Couture Homes, stops at nothing to deliver exactly what his clients are looking for. Recently, Hartogh even spent three days living with one client in the prospect\'s house in Chicago.\n</p>\n<br />\n<p>\nHartogh, who in another life was one of South Africa\'s largest builder/developers - believes the Lifestyle Discovery Process is the foundation for achieving their larger ambition to licensing Couture as a brand. Couture is currently beta-testing its licensing concept with another builder, Orlando, Fla.-based Arturo Barcelona Homes, whose own ethnographic process is geared toward developing standard house plans.\n</p>\n<br />\n<p>\nMeanwhile, Couture continues to refine and grow. It recently completed a 9,751-square-foot house in 165 days. This home was the first in Palm Beach County, Fla., to obtain green certification through the NAHB\'s National Green Building Standard. In addition, Couture recently signed an agreement for a seven-house community, its first.\n</p>\n<br />\n<p>\nAnd in August, the company hired its first full-time architect. Couture has even employed architects from Canada and Italy in the past. The reason? Couture stops at nothing to keep Couture\'s designs fresh, and innovative.\n</p>\n<br />','2014-10-03 19:10:09',1,'');
/*!40000 ALTER TABLE `news_feed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media`
--

DROP TABLE IF EXISTS `social_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_media` (
  `label` varchar(30) NOT NULL,
  `value` varchar(100) NOT NULL DEFAULT '',
  `name` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media`
--

LOCK TABLES `social_media` WRITE;
/*!40000 ALTER TABLE `social_media` DISABLE KEYS */;
INSERT INTO `social_media` VALUES ('Facebook','','facebook'),('Google+','','googleplus'),('Instagram','','instagram'),('LinkedIn','','linkedin'),('Pinterest','','pinterest'),('Twitter','','twitter'),('YouTube','','youtube');
/*!40000 ALTER TABLE `social_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'mike@lifthousedesign.com','5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8','Mike','Beattie',NULL,0,'0000-00-00 00:00:00','2014-10-06 00:33:00','2014-10-06 00:33:00',NULL,'administrator'),(2,'tara@lifthousedesign.com','5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8','Tara','Beattie',NULL,0,'0000-00-00 00:00:00','2014-10-06 01:57:47','2014-10-06 01:57:47',NULL,'administrator');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-10-06  1:35:01
