-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: usgo_agagd_db
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

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
-- Table structure for table `authteam`
--

DROP TABLE IF EXISTS `authteam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authteam` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `teamname` varchar(25) NOT NULL DEFAULT '',
  `teamlead` varchar(25) NOT NULL DEFAULT '',
  `status` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `teamname` (`teamname`,`teamlead`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `authuser`
--

DROP TABLE IF EXISTS `authuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(25) NOT NULL DEFAULT '',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `team` varchar(25) NOT NULL DEFAULT '',
  `level` int(4) NOT NULL DEFAULT '0',
  `status` varchar(10) NOT NULL DEFAULT '',
  `lastlogin` datetime DEFAULT NULL,
  `logincount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `biography`
--

DROP TABLE IF EXISTS `biography`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biography` (
  `Pin_Player` int(8) NOT NULL DEFAULT '0',
  `Bio_Type` char(1) NOT NULL DEFAULT '' COMMENT 'H=Html; T=txt',
  `Biography` mediumtext,
  `photopath` char(255) DEFAULT '',
  `Elab_Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`Pin_Player`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `changelog`
--

DROP TABLE IF EXISTS `changelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changelog` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_date` datetime NOT NULL,
  `model` varchar(255) NOT NULL,
  `record` varchar(255) NOT NULL,
  `record_id` varchar(255) NOT NULL,
  `user` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `changes` blob,
  PRIMARY KEY (`log_id`),
  KEY `log_date` (`log_date`),
  KEY `model` (`model`,`record_id`,`log_date`)
) ENGINE=MyISAM AUTO_INCREMENT=528265 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chapter`
--

DROP TABLE IF EXISTS `chapter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chapter` (
  `Chapter_Code` char(4) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `Chapter_Descr` varchar(50) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  PRIMARY KEY (`Chapter_Code`),
  KEY `Ind_Country` (`Chapter_Descr`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chapters`
--

DROP TABLE IF EXISTS `chapters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chapters` (
  `member_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `legacy_status` char(1) DEFAULT NULL,
  `code` char(4) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `rep_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `meeting_city` varchar(255) DEFAULT NULL,
  `contact_html` text,
  `contact_text` text,
  `meeting_text` text,
  `size` varchar(255) DEFAULT NULL,
  `events` text,
  `comments` text,
  `fees` varchar(255) DEFAULT NULL,
  `display` smallint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`member_id`),
  KEY `code` (`code`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `comments_authors`
--

DROP TABLE IF EXISTS `comments_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments_authors` (
  `Id` varchar(12) NOT NULL DEFAULT '',
  `Last_Name` varchar(50) NOT NULL DEFAULT '',
  `First_Name` varchar(50) NOT NULL DEFAULT '',
  `Country` char(3) NOT NULL DEFAULT '',
  `PIN` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `Country_Code` char(2) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Country_Descr` varchar(50) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Country_Flag` varchar(4) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`Country_Code`),
  KEY `Ind_Country` (`Country_Descr`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games` (
  `Game_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Tournament_Code` varchar(20) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '0',
  `Game_Date` date NOT NULL DEFAULT '0000-00-00',
  `Round` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `Pin_Player_1` int(8) unsigned NOT NULL DEFAULT '0',
  `Color_1` char(1) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '_',
  `Rank_1` char(3) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Pin_Player_2` int(8) unsigned NOT NULL DEFAULT '0',
  `Color_2` char(1) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '_',
  `Rank_2` char(3) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Handicap` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `Komi` tinyint(2) NOT NULL DEFAULT '0',
  `Result` char(1) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '_',
  `Sgf_Code` varchar(26) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `Online` tinyint(1) DEFAULT '0',
  `Exclude` tinyint(1) DEFAULT '0',
  `Rated` tinyint(1) DEFAULT '0',
  `Elab_Date` date NOT NULL DEFAULT '0000-00-00',
  UNIQUE KEY `Game_ID` (`Game_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=1260512 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `legacy_updated` date DEFAULT NULL,
  `legacy_web_updated` date DEFAULT NULL,
  `legacy_new` smallint(6) NOT NULL DEFAULT '0',
  `legacy_id` int(11) DEFAULT NULL,
  `legacy_citizen_of` varchar(100) DEFAULT NULL,
  `legacy_source` varchar(5) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `given_names` varchar(255) DEFAULT NULL,
  `family_name` varchar(255) DEFAULT NULL,
  `renewal_due` date DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `status` enum('accepted','archived','pending') DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) NOT NULL DEFAULT 'USA',
  `phone` varchar(255) DEFAULT NULL,
  `phone2` varchar(255) DEFAULT NULL,
  `cell` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email2` varchar(255) DEFAULT NULL,
  `chapter` varchar(100) DEFAULT NULL,
  `chapter_id` int(11) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `citizen` smallint(6) NOT NULL DEFAULT '0',
  `password_plaintext` varchar(255) DEFAULT NULL,
  `secret_q` varchar(255) DEFAULT NULL,
  `secret_a` varchar(255) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `reset_token` varchar(255) DEFAULT NULL,
  `reset_token_expires` datetime DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `notes` text,
  `dues_last_paid` datetime DEFAULT NULL,
  `last_changed` datetime DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `citizen_type` varchar(255) DEFAULT NULL,
  `non_citizen_country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`member_id`),
  KEY `type` (`type`),
  KEY `status` (`status`),
  KEY `region` (`region`),
  FULLTEXT KEY `tags` (`tags`),
  FULLTEXT KEY `full_name` (`full_name`)
) ENGINE=MyISAM AUTO_INCREMENT=24624 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `members_payments`
--

DROP TABLE IF EXISTS `members_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members_payments` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `years` int(11) DEFAULT NULL,
  `amount` decimal(7,2) DEFAULT NULL,
  `legacy_payment_type` varchar(30) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `note` text,
  `via` varchar(30) DEFAULT NULL,
  `processed_by` int(11) DEFAULT NULL,
  `txn_id` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `promo` varchar(255) DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL,
  `legacy_payment_method` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `member_id` (`member_id`)
) ENGINE=MyISAM AUTO_INCREMENT=370257 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `members_payments_view`
--

DROP TABLE IF EXISTS `members_payments_view`;
/*!50001 DROP VIEW IF EXISTS `members_payments_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `members_payments_view` AS SELECT 
 1 AS `payment_id`,
 1 AS `member_id`,
 1 AS `years`,
 1 AS `amount`,
 1 AS `legacy_payment_type`,
 1 AS `payment_method`,
 1 AS `payment_date`,
 1 AS `note`,
 1 AS `via`,
 1 AS `processed_by`,
 1 AS `txn_id`,
 1 AS `type`,
 1 AS `promo`,
 1 AS `payment_type`,
 1 AS `legacy_payment_method`,
 1 AS `full_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `members_regions`
--

DROP TABLE IF EXISTS `members_regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members_regions` (
  `region_id` int(11) NOT NULL AUTO_INCREMENT,
  `region` varchar(255) DEFAULT NULL,
  `states` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`region_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `members_tags`
--

DROP TABLE IF EXISTS `members_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members_tags` (
  `tag` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`tag`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `members_view`
--

DROP TABLE IF EXISTS `members_view`;
/*!50001 DROP VIEW IF EXISTS `members_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `members_view` AS SELECT 
 1 AS `member_id`,
 1 AS `legacy_updated`,
 1 AS `legacy_web_updated`,
 1 AS `legacy_new`,
 1 AS `legacy_id`,
 1 AS `legacy_citizen_of`,
 1 AS `legacy_source`,
 1 AS `full_name`,
 1 AS `given_names`,
 1 AS `family_name`,
 1 AS `renewal_due`,
 1 AS `join_date`,
 1 AS `dob`,
 1 AS `status`,
 1 AS `type`,
 1 AS `tags`,
 1 AS `address1`,
 1 AS `address2`,
 1 AS `city`,
 1 AS `state`,
 1 AS `zip`,
 1 AS `region`,
 1 AS `country`,
 1 AS `phone`,
 1 AS `phone2`,
 1 AS `cell`,
 1 AS `email`,
 1 AS `email2`,
 1 AS `chapter`,
 1 AS `chapter_id`,
 1 AS `occupation`,
 1 AS `citizen`,
 1 AS `password_plaintext`,
 1 AS `secret_q`,
 1 AS `secret_a`,
 1 AS `last_login`,
 1 AS `reset_token`,
 1 AS `reset_token_expires`,
 1 AS `password`,
 1 AS `notes`,
 1 AS `dues_last_paid`,
 1 AS `last_changed`,
 1 AS `gender`,
 1 AS `citizen_type`,
 1 AS `non_citizen_country`,
 1 AS `display`,
 1 AS `size`,
 1 AS `contact`,
 1 AS `rep_id`,
 1 AS `rating`,
 1 AS `sigma`,
 1 AS `tournaments`,
 1 AS `games`,
 1 AS `rating_updated`,
 1 AS `last_tourney`,
 1 AS `last_tourney_date`,
 1 AS `age`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `membership`
--

DROP TABLE IF EXISTS `membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membership` (
  `MType` varchar(8) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Membership_Type` char(35) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`MType`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(255) DEFAULT NULL,
  `recipients` text,
  `recipient_count` int(11) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `body` text,
  `attachments` text,
  `html` smallint(6) NOT NULL DEFAULT '0',
  `sent` datetime DEFAULT NULL,
  `success` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`notification_id`),
  KEY `sent` (`sent`)
) ENGINE=MyISAM AUTO_INCREMENT=72985 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `page_links`
--

DROP TABLE IF EXISTS `page_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_links` (
  `page_type` varchar(10) NOT NULL DEFAULT '',
  `page_key` varchar(10) NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT '0',
  `link` varchar(100) NOT NULL DEFAULT '',
  `comments` text NOT NULL,
  `image` blob NOT NULL,
  PRIMARY KEY (`page_type`,`page_key`,`pos`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pending_payments`
--

DROP TABLE IF EXISTS `pending_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pending_payments` (
  `member_id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `years` int(11) DEFAULT NULL,
  `amount` decimal(7,2) DEFAULT NULL,
  `promo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pin_changes`
--

DROP TABLE IF EXISTS `pin_changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pin_changes` (
  `Old_Pin_Player` int(8) NOT NULL DEFAULT '0',
  `New_Pin_Player` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Old_Pin_Player`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `player_variations`
--

DROP TABLE IF EXISTS `player_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_variations` (
  `Pin_Player` int(8) unsigned NOT NULL DEFAULT '0',
  `Field` varchar(30) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `Old` varchar(30) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `New` varchar(30) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players` (
  `Pin_Player` int(8) unsigned NOT NULL,
  `EGDID` int(8) unsigned NOT NULL DEFAULT '0',
  `Last_Name` varchar(30) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Name` varchar(30) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Country_Code` char(2) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '--',
  `State_Code` char(2) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '--',
  `Club` char(4) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT 'none',
  `Last_Rank` char(3) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Rating` float(7,5) DEFAULT NULL,
  `Sigma` float(6,5) DEFAULT NULL,
  `Tot_Tournaments` int(4) unsigned DEFAULT '0',
  `Tot_Games` int(5) unsigned DEFAULT '0',
  `Last_Appearance` varchar(20) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT 'null_tournament',
  `Elab_Date` date NOT NULL DEFAULT '0000-00-00',
  `MType` varchar(8) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `MExp` date NOT NULL DEFAULT '1900-01-01',
  PRIMARY KEY (`Pin_Player`),
  KEY `Ind_Players` (`Country_Code`,`Club`,`Last_Name`,`Name`),
  KEY `Reverse_Ind` (`Last_Name`,`Name`,`Pin_Player`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `promotions`
--

DROP TABLE IF EXISTS `promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotions` (
  `promo` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `generated_by` int(11) DEFAULT NULL,
  `used` smallint(6) NOT NULL DEFAULT '0',
  `generated_for` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quick_queries`
--

DROP TABLE IF EXISTS `quick_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quick_queries` (
  `query_id` int(11) NOT NULL AUTO_INCREMENT,
  `query_name` varchar(255) DEFAULT NULL,
  `query` varchar(255) DEFAULT NULL,
  `member_group` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`query_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratings` (
  `Pin_Player` int(8) unsigned NOT NULL,
  `Rating` float(7,5) DEFAULT NULL,
  `Sigma` float(6,5) DEFAULT NULL,
  `Elab_Date` date NOT NULL DEFAULT '0000-00-00',
  `Tournament_Code` varchar(65) DEFAULT NULL,
  PRIMARY KEY (`Pin_Player`,`Elab_Date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `name` varchar(255) NOT NULL,
  `val` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sgf`
--

DROP TABLE IF EXISTS `sgf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sgf` (
  `Comments_Author` varchar(20) DEFAULT NULL,
  `Sgf_Code` varchar(26) NOT NULL DEFAULT '0',
  `Sgf_File` blob NOT NULL,
  `Elab_Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  UNIQUE KEY `Tournament_Code` (`Sgf_Code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `State_Code` char(2) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `State_Name` char(35) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`State_Code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `Status_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Message` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`Status_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_reg`
--

DROP TABLE IF EXISTS `sys_reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_reg` (
  `Flag_Update` int(1) NOT NULL DEFAULT '0' COMMENT 'Se 0 fÃ  proseguire .. se 1 avvisa di upgrade in corso ',
  `Warning_Message` varchar(255) NOT NULL DEFAULT '',
  `Update_date` varchar(20) NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `id` int(11) DEFAULT NULL,
  `entrydate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tournaments`
--

DROP TABLE IF EXISTS `tournaments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tournaments` (
  `Tournament_Code` varchar(20) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '0',
  `Tournament_Descr` varchar(80) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT '',
  `Tournament_Date` date NOT NULL,
  `City` varchar(30) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `State_Code` char(2) DEFAULT NULL,
  `Country_Code` char(2) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '--',
  `Rounds` smallint(2) NOT NULL DEFAULT '0',
  `Total_Players` smallint(3) unsigned DEFAULT '0',
  `Wallist` text CHARACTER SET latin1 COLLATE latin1_bin,
  `Elab_Date` date NOT NULL DEFAULT '0000-00-00',
  `status` int(11) DEFAULT NULL,
  UNIQUE KEY `Tournament_Code` (`Tournament_Code`),
  KEY `FK_status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `admin` smallint(6) NOT NULL DEFAULT '0',
  `disabled` smallint(6) NOT NULL DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `reset_token` varchar(255) DEFAULT NULL,
  `reset_token_expires` datetime DEFAULT NULL,
  `preferences` text,
  `readonly` smallint(6) NOT NULL DEFAULT '0',
  `api_key` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `api_key` (`api_key`)
) ENGINE=MyISAM AUTO_INCREMENT=339 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Final view structure for view `members_payments_view`
--

/*!50001 DROP VIEW IF EXISTS `members_payments_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `members_payments_view` AS select `p`.`payment_id` AS `payment_id`,`p`.`member_id` AS `member_id`,`p`.`years` AS `years`,`p`.`amount` AS `amount`,`p`.`legacy_payment_type` AS `legacy_payment_type`,`p`.`payment_method` AS `payment_method`,`p`.`payment_date` AS `payment_date`,`p`.`note` AS `note`,`p`.`via` AS `via`,`p`.`processed_by` AS `processed_by`,`p`.`txn_id` AS `txn_id`,`p`.`type` AS `type`,`p`.`promo` AS `promo`,`p`.`payment_type` AS `payment_type`,`p`.`legacy_payment_method` AS `legacy_payment_method`,`m`.`full_name` AS `full_name` from (`members_payments` `p` left join `members` `m` on((`p`.`member_id` = `m`.`member_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `members_view`
--

/*!50001 DROP VIEW IF EXISTS `members_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `members_view` AS select `m`.`member_id` AS `member_id`,`m`.`legacy_updated` AS `legacy_updated`,`m`.`legacy_web_updated` AS `legacy_web_updated`,`m`.`legacy_new` AS `legacy_new`,`m`.`legacy_id` AS `legacy_id`,`m`.`legacy_citizen_of` AS `legacy_citizen_of`,`m`.`legacy_source` AS `legacy_source`,`m`.`full_name` AS `full_name`,`m`.`given_names` AS `given_names`,`m`.`family_name` AS `family_name`,`m`.`renewal_due` AS `renewal_due`,`m`.`join_date` AS `join_date`,`m`.`dob` AS `dob`,`m`.`status` AS `status`,`m`.`type` AS `type`,`m`.`tags` AS `tags`,`m`.`address1` AS `address1`,`m`.`address2` AS `address2`,`m`.`city` AS `city`,`m`.`state` AS `state`,`m`.`zip` AS `zip`,`m`.`region` AS `region`,`m`.`country` AS `country`,`m`.`phone` AS `phone`,`m`.`phone2` AS `phone2`,`m`.`cell` AS `cell`,`m`.`email` AS `email`,`m`.`email2` AS `email2`,`m`.`chapter` AS `chapter`,`m`.`chapter_id` AS `chapter_id`,`m`.`occupation` AS `occupation`,`m`.`citizen` AS `citizen`,`m`.`password_plaintext` AS `password_plaintext`,`m`.`secret_q` AS `secret_q`,`m`.`secret_a` AS `secret_a`,`m`.`last_login` AS `last_login`,`m`.`reset_token` AS `reset_token`,`m`.`reset_token_expires` AS `reset_token_expires`,`m`.`password` AS `password`,`m`.`notes` AS `notes`,`m`.`dues_last_paid` AS `dues_last_paid`,`m`.`last_changed` AS `last_changed`,`m`.`gender` AS `gender`,`m`.`citizen_type` AS `citizen_type`,`m`.`non_citizen_country` AS `non_citizen_country`,`c`.`display` AS `display`,`c`.`size` AS `size`,`c`.`contact` AS `contact`,`c`.`rep_id` AS `rep_id`,`p`.`Rating` AS `rating`,`p`.`Sigma` AS `sigma`,`p`.`Tot_Tournaments` AS `tournaments`,`p`.`Tot_Games` AS `games`,`p`.`Elab_Date` AS `rating_updated`,`t`.`Tournament_Descr` AS `last_tourney`,`t`.`Tournament_Date` AS `last_tourney_date`,if(`m`.`dob`,((date_format(now(),'%Y') - date_format(`m`.`dob`,'%Y')) - (date_format(now(),'00-%m-%d') < date_format(`m`.`dob`,'00-%m-%d'))),-(1)) AS `age` from (((`members` `m` left join `chapters` `c` on((`m`.`member_id` = `c`.`member_id`))) left join `players` `p` on((`m`.`member_id` = `p`.`Pin_Player`))) left join `tournaments` `t` on((`p`.`Last_Appearance` = `t`.`Tournament_Code`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-31 17:42:51
