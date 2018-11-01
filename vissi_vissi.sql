-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 01, 2018 at 01:45 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


CREATE DATABASE IF NOT EXISTS vissi_vissi;
USE vissi_vissi;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vissi_vissi`
--

-- --------------------------------------------------------

--
-- Table structure for table `pm_activity`
--

DROP TABLE IF EXISTS `pm_activity`;
CREATE TABLE IF NOT EXISTS `pm_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` int(11) NOT NULL,
  `max_children` int(11) DEFAULT '1',
  `max_adults` int(11) DEFAULT '1',
  `max_people` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `subtitle` varchar(250) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `descr` longtext,
  `duration` float DEFAULT '0',
  `duration_unit` varchar(50) DEFAULT NULL,
  `price` double DEFAULT '0',
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `home` int(11) DEFAULT '0',
  `checked` int(11) DEFAULT '0',
  `rank` int(11) DEFAULT '0',
  PRIMARY KEY (`id`,`lang`),
  KEY `activity_lang_fkey` (`lang`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm_activity`
--

INSERT INTO `pm_activity` (`id`, `lang`, `max_children`, `max_adults`, `max_people`, `title`, `subtitle`, `alias`, `descr`, `duration`, `duration_unit`, `price`, `lat`, `lng`, `home`, `checked`, `rank`) VALUES
(1, 1, 3, 3, 13, '', '', '', '', 3, 'weeks', 300, 44.786568, 20.44892159999995, 0, 1, 1),
(1, 2, 3, 3, 13, 'Planinarenje na Kopaoniku', 'Zagarantovan provod', 'planinarenje-na-kopaoniku', '<ul type=\"disc\">\r\n	<li><i>3, </i><i>4, 5, 6 ili 7 no</i><i>ći </i><i>na bazi polupansiona, po osobi, sa smeštajem u izabranom tipu sobe. U periodu od 01.07-31.08.2018. svakog četvrtka i subote </i><i>za vreme večere služe se jela sa roštilja;</i><i> </i><i>OPEN BAR (bezalkoholni napici, pivo)</i></li>\r\n</ul>\r\n\r\n<ul type=\"disc\">\r\n	<li>Pool party subotom od 13.00-15.00h; OPEN BAR - bezalkoholni napici, penušavo vino, pivo (važi u periodu 01.07.-31.08.2018.)</li>\r\n	<li>Gratis streličarstvo – obuka, vežbe I mini turnir ili celodnevni najam bicikla za uživanje u prirodi Kopaonika (važi u periodu 01.06.-15.09.2018)</li>\r\n</ul>\r\n\r\n<p rel=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; margin-left: 35.7pt; background-image: initial; background-color: white;\">· <i>Jedan poklon voucher - 20% popusta u Space Bowling centru – kuglanje za celu porodicu</i></p>\r\n\r\n<p>· <i>KID’S CLUB – korišćenje sadržaja dečije igraonice</i></p>\r\n\r\n<ul type=\"disc\">\r\n	<li>Neograničeno korišćenje sadržaja Spa & Wellness centra na 1.800m<sup>2</sup>: zatvoreni bazen dimenzija 18x9m, svlačionica (ormarić, bade mantil, papuče, peškir), Sauna svet – infrared sauna, finska sauna, ruska banja, parno kupatilo, slano-ledena pećina, kneipp, tepidarium, tropske kiše</li>\r\n	<li>Popust 10% na tretmane tela i lica za roditelje</li>\r\n	<li>Korišćenje sadržaja Fitnes centra</li>\r\n</ul>\r\n', 3, 'weeks', 300, 44.786568, 20.44892159999995, 0, 1, 1),
(1, 3, 3, 3, 13, '', '', '', '', 3, 'weeks', 300, 44.786568, 20.44892159999995, 0, 1, 1),
(2, 1, 3, 3, 13, '', '', '', '', 3, 'weeks', 300, 44.786568, 20.44892159999995, 0, 1, 2),
(2, 2, 3, 3, 13, 'Planinarenje na Zlatiboru', 'Zagarantovan provod', 'planinarenje-na-zlatiboru', '<ul type=\"disc\">\r\n	<li><i>3, </i><i>4, 5, 6 ili 7 no</i><i>ći </i><i>na bazi polupansiona, po osobi, sa smeštajem u izabranom tipu sobe. U periodu od 01.07-31.08.2018. svakog četvrtka i subote </i><i>za vreme večere služe se jela sa roštilja;</i><i> </i><i>OPEN BAR (bezalkoholni napici, pivo)</i></li>\r\n</ul>\r\n\r\n<ul type=\"disc\">\r\n	<li>Pool party subotom od 13.00-15.00h; OPEN BAR - bezalkoholni napici, penušavo vino, pivo (važi u periodu 01.07.-31.08.2018.)</li>\r\n	<li>Gratis streličarstvo – obuka, vežbe I mini turnir ili celodnevni najam bicikla za uživanje u prirodi Kopaonika (važi u periodu 01.06.-15.09.2018)</li>\r\n</ul>\r\n\r\n<p rel=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; margin-left: 35.7pt; background-image: initial; background-color: white;\">· <i>Jedan poklon voucher - 20% popusta u Space Bowling centru – kuglanje za celu porodicu</i></p>\r\n\r\n<p>· <i>KID’S CLUB – korišćenje sadržaja dečije igraonice</i></p>\r\n\r\n<ul type=\"disc\">\r\n	<li>Neograničeno korišćenje sadržaja Spa & Wellness centra na 1.800m<sup>2</sup>: zatvoreni bazen dimenzija 18x9m, svlačionica (ormarić, bade mantil, papuče, peškir), Sauna svet – infrared sauna, finska sauna, ruska banja, parno kupatilo, slano-ledena pećina, kneipp, tepidarium, tropske kiše</li>\r\n	<li>Popust 10% na tretmane tela i lica za roditelje</li>\r\n	<li>Korišćenje sadržaja Fitnes centra</li>\r\n</ul>\r\n', 3, 'weeks', 300, 44.786568, 20.44892159999995, 0, 1, 2),
(2, 3, 3, 3, 13, '', '', '', '', 3, 'weeks', 300, 44.786568, 20.44892159999995, 0, 1, 2),
(3, 1, 3, 3, 13, '', '', '', '', 3, 'weeks', 200, 44.786568, 20.44892159999995, 0, 1, 2),
(3, 2, 3, 3, 13, 'Rafting na Drini', 'Zagarantovan provod', 'rafting-na-drini', '<ul type=\"disc\">\r\n	<li><i>3, </i><i>4, 5, 6 ili 7 no</i><i>ći </i><i>na bazi polupansiona, po osobi, sa smeštajem u izabranom tipu sobe. U periodu od 01.07-31.08.2018. svakog četvrtka i subote </i><i>za vreme večere služe se jela sa roštilja;</i><i> </i><i>OPEN BAR (bezalkoholni napici, pivo)</i></li>\r\n</ul>\r\n\r\n<ul type=\"disc\">\r\n	<li>Pool party subotom od 13.00-15.00h; OPEN BAR - bezalkoholni napici, penušavo vino, pivo (važi u periodu 01.07.-31.08.2018.)</li>\r\n	<li>Gratis streličarstvo – obuka, vežbe I mini turnir ili celodnevni najam bicikla za uživanje u prirodi Kopaonika (važi u periodu 01.06.-15.09.2018)</li>\r\n</ul>\r\n\r\n<p rel=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px; margin-left: 35.7pt; background-image: initial; background-color: white;\">· <i>Jedan poklon voucher - 20% popusta u Space Bowling centru – kuglanje za celu porodicu</i></p>\r\n\r\n<p>· <i>KID’S CLUB – korišćenje sadržaja dečije igraonice</i></p>\r\n\r\n<ul type=\"disc\">\r\n	<li>Neograničeno korišćenje sadržaja Spa & Wellness centra na 1.800m<sup>2</sup>: zatvoreni bazen dimenzija 18x9m, svlačionica (ormarić, bade mantil, papuče, peškir), Sauna svet – infrared sauna, finska sauna, ruska banja, parno kupatilo, slano-ledena pećina, kneipp, tepidarium, tropske kiše</li>\r\n	<li>Popust 10% na tretmane tela i lica za roditelje</li>\r\n	<li>Korišćenje sadržaja Fitnes centra</li>\r\n</ul>\r\n', 3, 'weeks', 200, 44.786568, 20.44892159999995, 0, 1, 2),
(3, 3, 3, 3, 13, '', '', '', '', 3, 'weeks', 200, 44.786568, 20.44892159999995, 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pm_activity_file`
--

DROP TABLE IF EXISTS `pm_activity_file`;
CREATE TABLE IF NOT EXISTS `pm_activity_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `home` int(11) DEFAULT '0',
  `checked` int(11) DEFAULT '1',
  `rank` int(11) DEFAULT '0',
  `file` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`lang`),
  KEY `activity_file_fkey` (`id_item`,`lang`),
  KEY `activity_file_lang_fkey` (`lang`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm_activity_file`
--

INSERT INTO `pm_activity_file` (`id`, `lang`, `id_item`, `home`, `checked`, `rank`, `file`, `label`, `type`) VALUES
(1, 1, 1, NULL, 1, 1, 'dsc-6993.jpg', NULL, 'image'),
(1, 2, 1, NULL, 1, 1, 'dsc-6993.jpg', NULL, 'image'),
(1, 3, 1, NULL, 1, 1, 'dsc-6993.jpg', NULL, 'image'),
(3, 1, 2, NULL, 1, 3, 'bozicni-promo-box.jpg', '', 'image'),
(3, 2, 2, NULL, 1, 3, 'bozicni-promo-box.jpg', '', 'image'),
(3, 3, 2, NULL, 1, 3, 'bozicni-promo-box.jpg', '', 'image'),
(7, 1, 3, NULL, 1, 4, 'mk-paket-single-budi-u-formi.jpg', NULL, 'image'),
(7, 2, 3, NULL, 1, 4, 'mk-paket-single-budi-u-formi.jpg', NULL, 'image'),
(7, 3, 3, NULL, 1, 4, 'mk-paket-single-budi-u-formi.jpg', NULL, 'image');

-- --------------------------------------------------------

--
-- Table structure for table `pm_activity_session`
--

DROP TABLE IF EXISTS `pm_activity_session`;
CREATE TABLE IF NOT EXISTS `pm_activity_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_activity` int(11) NOT NULL,
  `days` varchar(20) DEFAULT NULL,
  `start_date` int(11) DEFAULT NULL,
  `end_date` int(11) DEFAULT NULL,
  `price` double DEFAULT '0',
  `price_child` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `discount_type` varchar(10) DEFAULT NULL,
  `id_tax` int(11) DEFAULT NULL,
  `taxes` text,
  PRIMARY KEY (`id`),
  KEY `activity_session_fkey` (`id_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pm_activity_session_hour`
--

DROP TABLE IF EXISTS `pm_activity_session_hour`;
CREATE TABLE IF NOT EXISTS `pm_activity_session_hour` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_activity_session` int(11) NOT NULL,
  `start_h` int(11) DEFAULT NULL,
  `start_m` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_session_hour_fkey` (`id_activity_session`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pm_appearance`
--

DROP TABLE IF EXISTS `pm_appearance`;
CREATE TABLE IF NOT EXISTS `pm_appearance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `header_type` int(11) DEFAULT NULL,
  `menu_position` int(11) DEFAULT NULL,
  `logo_position` int(11) DEFAULT NULL,
  `header_sticky` tinyint(1) DEFAULT NULL,
  `arrow_position` int(11) DEFAULT NULL,
  `booking_search_position` int(11) DEFAULT NULL,
  `footer_columns` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_AppearanceUser` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm_appearance`
--

INSERT INTO `pm_appearance` (`id`, `header_type`, `menu_position`, `logo_position`, `header_sticky`, `arrow_position`, `booking_search_position`, `footer_columns`, `user_id`) VALUES
(17, 1, 3, 1, 1, 1, 2, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pm_article`
--

DROP TABLE IF EXISTS `pm_article`;
CREATE TABLE IF NOT EXISTS `pm_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `subtitle` varchar(250) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `text` longtext,
  `url` varchar(250) DEFAULT NULL,
  `tags` varchar(250) DEFAULT NULL,
  `id_page` int(11) DEFAULT NULL,
  `users` text,
  `home` int(11) DEFAULT '0',
  `checked` int(11) DEFAULT '0',
  `rank` int(11) DEFAULT '0',
  `add_date` int(11) DEFAULT NULL,
  `edit_date` int(11) DEFAULT NULL,
  `publish_date` int(11) DEFAULT NULL,
  `unpublish_date` int(11) DEFAULT NULL,
  `comment` int(11) DEFAULT '0',
  `rating` int(11) DEFAULT '0',
  PRIMARY KEY (`id`,`lang`),
  KEY `article_lang_fkey` (`lang`),
  KEY `article_page_fkey` (`id_page`,`lang`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm_article`
--

INSERT INTO `pm_article` (`id`, `lang`, `title`, `subtitle`, `alias`, `text`, `url`, `tags`, `id_page`, `users`, `home`, `checked`, `rank`, `add_date`, `edit_date`, `publish_date`, `unpublish_date`, `comment`, `rating`) VALUES
(1, 1, 'Mon premier article', '', 'mon-premier-article', '', '', '', 5, '1', 0, 1, 1, 1524062141, 1524062141, NULL, NULL, 1, 0),
(1, 2, 'Dive into unknown waters!', '', 'scuba-diving', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Nullam molestie, nunc eu consequat varius, nisi metus iaculis nulla, nec ornare odio leo quis eros. Donec gravida eget velit eget pulvinar. Phasellus eget est quis est faucibus condimentum. Morbi tellus turpis, posuere vel tincidunt non, varius ac ante. Suspendisse in sem neque. Donec et faucibus justo. Nulla vitae nisl lacus. Fusce tincidunt quam nec vestibulum vestibulum. Vivamus vulputate, nunc non ullamcorper mattis, nunc orci imperdiet nulla, at laoreet ipsum nisl non leo. Aenean dapibus aliquet sem, ut lacinia magna mattis in.</p>\r\n\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempor arcu eu sapien ullamcorper sodales. Aenean eu massa in ante commodo scelerisque vitae sed sapien. Aenean eu dictum arcu. Mauris ultricies dolor eu molestie egestas.<br />\r\nProin feugiat, nunc at pellentesque fringilla, ex purus efficitur dolor, ac pretium odio lacus id leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse eu ipsum viverra dolor tempus vehicula eu eu risus. Praesent rutrum dapibus odio, nec accumsan justo fermentum in. Ut quis neque a ante facilisis bibendum.</p>\r\n', '', '', 5, '1', 0, 1, 1, 1524062141, 1524062141, NULL, NULL, 1, 0),
(1, 3, '', '', '', '', '', '', 5, '1', 0, 1, 1, 1524062141, 1524062141, NULL, NULL, 1, 0),
(4, 1, 'Première gallery', '', 'premiere-gallery', '', '', '1', 7, '1', 0, 1, 2, 1524062141, 1533736777, NULL, NULL, 0, 0),
(4, 2, 'City', '', 'city-gallery', '', '', '1', 7, '1', 0, 1, 2, 1524062141, 1533736777, NULL, NULL, 0, 0),
(4, 3, 'First gallery', '', 'first-gallery', '', '', '1', 7, '1', 0, 1, 2, 1524062141, 1533736777, NULL, NULL, 0, 0),
(5, 1, 'Amazing posts', '', 'amazing-posts', '', '', '1', 7, '1', 0, 1, 3, 1524062141, 1533736715, NULL, NULL, 0, 0),
(5, 2, 'Hotel', '', 'hotel-gallery', '', '', '1', 7, '1', 0, 1, 3, 1524062141, 1533736715, NULL, NULL, 0, 0),
(5, 3, 'Amazing posts', '', 'amazing-posts', '', '', '1', 7, '1', 0, 1, 3, 1524062141, 1533736715, NULL, NULL, 0, 0),
(6, 1, 'Amazing posts', '', 'amazing-posts', '', '', '1', 17, '1', 0, 1, 4, 1524062141, 1527684711, NULL, NULL, 0, 0),
(6, 2, 'Vacation out', '', 'vacation-out', '', '', '1', 17, '1', 0, 1, 4, 1524062141, 1527684711, NULL, NULL, 0, 0),
(6, 3, 'Amazing posts', '', 'amazing-posts', '', '', '1', 17, '1', 0, 1, 4, 1524062141, 1527684711, NULL, NULL, 0, 0),
(7, 1, '', '', '', '', '', '2', 1, '1', 1, 1, 5, 1530708609, 1530708609, 1530708060, NULL, 0, NULL),
(7, 2, 'Olga Rasenova', 'Olga Rasenova', 'olga-rasenova', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dui ante, commodo in pulvinar vitae, pellentesque in elit. Suspendisse ultrices, tortor a ornare volutpat, tortor tortor commodo justo, nec elementum ipsum lacus ac odio. Cras vel nisl ac mauris varius interdum vitae vel risus. Curabitur ornare convallis ipsum, quis consequat odio blandit eu. Nunc magna lorem, blandit id nisi non, ultricies convallis leo. Nulla libero lorem, dignissim quis urna id, ultricies hendrerit erat. Sed ex lacus, varius ac volutpat sit amet, tincidunt at odio. Proin a ipsum quis enim ultricies interdum quis at augue. Cras pharetra enim vel volutpat blandit. Fusce venenatis est in nibh interdum, auctor faucibus ligula viverra. Nam molestie iaculis arcu, nec sollicitudin massa tincidunt porttitor.</p>\r\n', '', '2', 1, '1', 1, 1, 5, 1530708609, 1530708609, 1530708060, NULL, 0, NULL),
(7, 3, '', '', '', '', '', '2', 1, '1', 1, 1, 5, 1530708609, 1530708609, 1530708060, NULL, 0, NULL),
(8, 1, '', '', '', '', '', '2', 1, '1', 1, 1, 6, 1530708609, 1530708711, 1530708060, NULL, 0, NULL),
(8, 2, 'Martin Sorelli', 'London, UK', 'martin-sorelli', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dui ante, commodo in pulvinar vitae, pellentesque in elit. Suspendisse ultrices, tortor a ornare volutpat, tortor tortor commodo justo, nec elementum ipsum lacus ac odio. Cras vel nisl ac mauris varius interdum vitae vel risus. Curabitur ornare convallis ipsum, quis consequat odio blandit eu. Nunc magna lorem, blandit id nisi non, ultricies convallis leo. Nulla libero lorem, dignissim quis urna id, ultricies hendrerit erat. Sed ex lacus, varius ac volutpat sit amet, tincidunt at odio. Proin a ipsum quis enim ultricies interdum quis at augue. Cras pharetra enim vel volutpat blandit. Fusce venenatis est in nibh interdum, auctor faucibus ligula viverra. Nam molestie iaculis arcu, nec sollicitudin massa tincidunt porttitor.</p>\r\n', '', '2', 1, '1', 1, 1, 6, 1530708609, 1530708711, 1530708060, NULL, 0, NULL),
(8, 3, '', '', '', '', '', '2', 1, '1', 1, 1, 6, 1530708609, 1530708711, 1530708060, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pm_article_file`
--

DROP TABLE IF EXISTS `pm_article_file`;
CREATE TABLE IF NOT EXISTS `pm_article_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `home` int(11) DEFAULT '0',
  `checked` int(11) DEFAULT '1',
  `rank` int(11) DEFAULT '0',
  `file` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`lang`),
  KEY `article_file_fkey` (`id_item`,`lang`),
  KEY `article_file_lang_fkey` (`lang`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm_article_file`
--

INSERT INTO `pm_article_file` (`id`, `lang`, `id_item`, `home`, `checked`, `rank`, `file`, `label`, `type`) VALUES
(4, 1, 4, 0, 1, 4, 'sample4.jpg', '', 'image'),
(4, 2, 4, 0, 1, 4, 'sample4.jpg', '', 'image'),
(4, 3, 4, 0, 1, 4, 'sample4.jpg', '', 'image'),
(5, 1, 1, 0, 1, 5, 'diving.jpg', '', 'image'),
(5, 2, 1, 0, 1, 5, 'diving.jpg', '', 'image'),
(5, 3, 1, 0, 1, 5, 'diving.jpg', '', 'image'),
(6, 1, 4, NULL, 1, 6, 'bozicni-promo-box-konaci.jpg', '', 'image'),
(6, 2, 4, NULL, 1, 6, 'bozicni-promo-box-konaci.jpg', '', 'image'),
(6, 3, 4, NULL, 1, 6, 'bozicni-promo-box-konaci.jpg', '', 'image'),
(7, 1, 4, NULL, 1, 7, 'mk-12.jpg', '', 'image'),
(7, 2, 4, NULL, 1, 7, 'mk-12.jpg', '', 'image'),
(7, 3, 4, NULL, 1, 7, 'mk-12.jpg', '', 'image'),
(8, 1, 4, NULL, 1, 8, 'dsc-6993.jpg', '', 'image'),
(8, 2, 4, NULL, 1, 8, 'dsc-6993.jpg', '', 'image'),
(8, 3, 4, NULL, 1, 8, 'dsc-6993.jpg', '', 'image'),
(9, 1, 4, NULL, 1, 9, 'bozicni-promo-box.jpg', '', 'image'),
(9, 2, 4, NULL, 1, 9, 'bozicni-promo-box.jpg', '', 'image'),
(9, 3, 4, NULL, 1, 9, 'bozicni-promo-box.jpg', '', 'image'),
(10, 1, 4, NULL, 1, 10, 'dsc-9530.png', '', 'image'),
(10, 2, 4, NULL, 1, 10, 'dsc-9530.png', '', 'image'),
(10, 3, 4, NULL, 1, 10, 'dsc-9530.png', '', 'image'),
(11, 1, 4, NULL, 1, 11, 'img-6985-i.jpg', '', 'image'),
(11, 2, 4, NULL, 1, 11, 'img-6985-i.jpg', '', 'image'),
(11, 3, 4, NULL, 1, 11, 'img-6985-i.jpg', '', 'image'),
(12, 1, 4, NULL, 1, 12, '170428-homepage-prolece.jpg', '', 'image'),
(12, 2, 4, NULL, 1, 12, '170428-homepage-prolece.jpg', '', 'image'),
(12, 3, 4, NULL, 1, 12, '170428-homepage-prolece.jpg', '', 'image'),
(39, 1, 5, NULL, 1, 13, 'mk-paket-single-oseti-prirodui.jpg', '', 'image'),
(39, 2, 5, NULL, 1, 13, 'mk-paket-single-oseti-prirodui.jpg', '', 'image'),
(39, 3, 5, NULL, 1, 13, 'mk-paket-single-oseti-prirodui.jpg', '', 'image'),
(43, 1, 6, NULL, 1, 14, 'kh.jpg', NULL, 'image'),
(43, 2, 6, NULL, 1, 14, 'kh.jpg', NULL, 'image'),
(43, 3, 6, NULL, 1, 14, 'kh.jpg', NULL, 'image'),
(44, 1, 6, NULL, 1, 13, 'mk-paket-single-oseti-prirodui.jpg', '', 'image'),
(45, 2, 6, NULL, 1, 13, 'mk-paket-single-oseti-prirodui.jpg', '', 'image'),
(46, 3, 6, NULL, 1, 13, 'mk-paket-single-oseti-prirodui.jpg', '', 'image');

-- --------------------------------------------------------

--
-- Table structure for table `pm_booking`
--

DROP TABLE IF EXISTS `pm_booking`;
CREATE TABLE IF NOT EXISTS `pm_booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_date` int(11) DEFAULT NULL,
  `edit_date` int(11) DEFAULT NULL,
  `from_date` int(11) DEFAULT NULL,
  `to_date` int(11) DEFAULT NULL,
  `nights` int(11) NOT NULL DEFAULT '1',
  `adults` int(11) DEFAULT '1',
  `children` int(11) DEFAULT '1',
  `tourist_tax` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `down_payment` float DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `country` varchar(100) NOT NULL,
  `comments` text,
  `status` int(11) DEFAULT '1',
  `trans` varchar(50) DEFAULT NULL,
  `payment_date` int(11) DEFAULT NULL,
  `payment_method` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pm_booking_activity`
--

DROP TABLE IF EXISTS `pm_booking_activity`;
CREATE TABLE IF NOT EXISTS `pm_booking_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_booking` int(11) NOT NULL,
  `id_activity` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `children` int(11) DEFAULT '0',
  `adults` int(11) DEFAULT '0',
  `duration` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT '0',
  `date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_activity_fkey` (`id_booking`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pm_booking_room`
--

DROP TABLE IF EXISTS `pm_booking_room`;
CREATE TABLE IF NOT EXISTS `pm_booking_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_booking` int(11) NOT NULL,
  `id_room` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `num` varchar(10) DEFAULT NULL,
  `children` int(11) DEFAULT '0',
  `adults` int(11) DEFAULT '0',
  `amount` double DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `booking_room_fkey` (`id_booking`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pm_booking_service`
--

DROP TABLE IF EXISTS `pm_booking_service`;
CREATE TABLE IF NOT EXISTS `pm_booking_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_booking` int(11) NOT NULL,
  `id_service` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `qty` int(11) DEFAULT '0',
  `amount` double DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `booking_service_fkey` (`id_booking`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pm_booking_tax`
--

DROP TABLE IF EXISTS `pm_booking_tax`;
CREATE TABLE IF NOT EXISTS `pm_booking_tax` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_booking` int(11) NOT NULL,
  `id_tax` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `booking_tax_fkey` (`id_booking`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pm_category`
--

DROP TABLE IF EXISTS `pm_category`;
CREATE TABLE IF NOT EXISTS `pm_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sub_id` int(11) NOT NULL DEFAULT '0',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`sub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pm_comment`
--

DROP TABLE IF EXISTS `pm_comment`;
CREATE TABLE IF NOT EXISTS `pm_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_type` varchar(30) DEFAULT NULL,
  `id_item` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `checked` int(11) DEFAULT '0',
  `add_date` int(11) DEFAULT NULL,
  `edit_date` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `msg` longtext,
  `ip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm_comment`
--

INSERT INTO `pm_comment` (`id`, `item_type`, `id_item`, `rating`, `checked`, `add_date`, `edit_date`, `name`, `email`, `msg`, `ip`) VALUES
(1, 'room', 1, 5, NULL, 1533640596, NULL, 'homegate', 'srdjan.nezic@yahoo.com', 'dadaa', '::1'),
(2, 'room', 1, NULL, NULL, 1533640627, NULL, 'homegate', 'srdjan.nezic@yahoo.com', 'dadaa', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `pm_country`
--

DROP TABLE IF EXISTS `pm_country`;
CREATE TABLE IF NOT EXISTS `pm_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm_country`
--

INSERT INTO `pm_country` (`id`, `name`, `code`) VALUES
(1, 'Afghanistan', 'AF'),
(2, 'Åland', 'AX'),
(3, 'Albania', 'AL'),
(4, 'Algeria', 'DZ'),
(5, 'American Samoa', 'AS'),
(6, 'Andorra', 'AD'),
(7, 'Angola', 'AO'),
(8, 'Anguilla', 'AI'),
(9, 'Antarctica', 'AQ'),
(10, 'Antigua and Barbuda', 'AG'),
(11, 'Argentina', 'AR'),
(12, 'Armenia', 'AM'),
(13, 'Aruba', 'AW'),
(14, 'Australia', 'AU'),
(15, 'Austria', 'AT'),
(16, 'Azerbaijan', 'AZ'),
(17, 'Bahamas', 'BS'),
(18, 'Bahrain', 'BH'),
(19, 'Bangladesh', 'BD'),
(20, 'Barbados', 'BB'),
(21, 'Belarus', 'BY'),
(22, 'Belgium', 'BE'),
(23, 'Belize', 'BZ'),
(24, 'Benin', 'BJ'),
(25, 'Bermuda', 'BM'),
(26, 'Bhutan', 'BT'),
(27, 'Bolivia', 'BO'),
(28, 'Bonaire', 'BQ'),
(29, 'Bosnia and Herzegovina', 'BA'),
(30, 'Botswana', 'BW'),
(31, 'Bouvet Island', 'BV'),
(32, 'Brazil', 'BR'),
(33, 'British Indian Ocean Territory', 'IO'),
(34, 'British Virgin Islands', 'VG'),
(35, 'Brunei', 'BN'),
(36, 'Bulgaria', 'BG'),
(37, 'Burkina Faso', 'BF'),
(38, 'Burundi', 'BI'),
(39, 'Cambodia', 'KH'),
(40, 'Cameroon', 'CM'),
(41, 'Canada', 'CA'),
(42, 'Cape Verde', 'CV'),
(43, 'Cayman Islands', 'KY'),
(44, 'Central African Republic', 'CF'),
(45, 'Chad', 'TD'),
(46, 'Chile', 'CL'),
(47, 'China', 'CN'),
(48, 'Christmas Island', 'CX'),
(49, 'Cocos [Keeling] Islands', 'CC'),
(50, 'Colombia', 'CO'),
(51, 'Comoros', 'KM'),
(52, 'Cook Islands', 'CK'),
(53, 'Costa Rica', 'CR'),
(54, 'Croatia', 'HR'),
(55, 'Cuba', 'CU'),
(56, 'Curacao', 'CW'),
(57, 'Cyprus', 'CY'),
(58, 'Czech Republic', 'CZ'),
(59, 'Democratic Republic of the Congo', 'CD'),
(60, 'Denmark', 'DK'),
(61, 'Djibouti', 'DJ'),
(62, 'Dominica', 'DM'),
(63, 'Dominican Republic', 'DO'),
(64, 'East Timor', 'TL'),
(65, 'Ecuador', 'EC'),
(66, 'Egypt', 'EG'),
(67, 'El Salvador', 'SV'),
(68, 'Equatorial Guinea', 'GQ'),
(69, 'Eritrea', 'ER'),
(70, 'Estonia', 'EE'),
(71, 'Ethiopia', 'ET'),
(72, 'Falkland Islands', 'FK'),
(73, 'Faroe Islands', 'FO'),
(74, 'Fiji', 'FJ'),
(75, 'Finland', 'FI'),
(76, 'France', 'FR'),
(77, 'French Guiana', 'GF'),
(78, 'French Polynesia', 'PF'),
(79, 'French Southern Territories', 'TF'),
(80, 'Gabon', 'GA'),
(81, 'Gambia', 'GM'),
(82, 'Georgia', 'GE'),
(83, 'Germany', 'DE'),
(84, 'Ghana', 'GH'),
(85, 'Gibraltar', 'GI'),
(86, 'Greece', 'GR'),
(87, 'Greenland', 'GL'),
(88, 'Grenada', 'GD'),
(89, 'Guadeloupe', 'GP'),
(90, 'Guam', 'GU'),
(91, 'Guatemala', 'GT'),
(92, 'Guernsey', 'GG'),
(93, 'Guinea', 'GN'),
(94, 'Guinea-Bissau', 'GW'),
(95, 'Guyana', 'GY'),
(96, 'Haiti', 'HT'),
(97, 'Heard Island and McDonald Islands', 'HM'),
(98, 'Honduras', 'HN'),
(99, 'Hong Kong', 'HK'),
(100, 'Hungary', 'HU'),
(101, 'Iceland', 'IS'),
(102, 'India', 'IN'),
(103, 'Indonesia', 'ID'),
(104, 'Iran', 'IR'),
(105, 'Iraq', 'IQ'),
(106, 'Ireland', 'IE'),
(107, 'Isle of Man', 'IM'),
(108, 'Israel', 'IL'),
(109, 'Italy', 'IT'),
(110, 'Ivory Coast', 'CI'),
(111, 'Jamaica', 'JM'),
(112, 'Japan', 'JP'),
(113, 'Jersey', 'JE'),
(114, 'Jordan', 'JO'),
(115, 'Kazakhstan', 'KZ'),
(116, 'Kenya', 'KE'),
(117, 'Kiribati', 'KI'),
(118, 'Kosovo', 'XK'),
(119, 'Kuwait', 'KW'),
(120, 'Kyrgyzstan', 'KG'),
(121, 'Laos', 'LA'),
(122, 'Latvia', 'LV'),
(123, 'Lebanon', 'LB'),
(124, 'Lesotho', 'LS'),
(125, 'Liberia', 'LR'),
(126, 'Libya', 'LY'),
(127, 'Liechtenstein', 'LI'),
(128, 'Lithuania', 'LT'),
(129, 'Luxembourg', 'LU'),
(130, 'Macao', 'MO'),
(131, 'Macedonia', 'MK'),
(132, 'Madagascar', 'MG'),
(133, 'Malawi', 'MW'),
(134, 'Malaysia', 'MY'),
(135, 'Maldives', 'MV'),
(136, 'Mali', 'ML'),
(137, 'Malta', 'MT'),
(138, 'Marshall Islands', 'MH'),
(139, 'Martinique', 'MQ'),
(140, 'Mauritania', 'MR'),
(141, 'Mauritius', 'MU'),
(142, 'Mayotte', 'YT'),
(143, 'Mexico', 'MX'),
(144, 'Micronesia', 'FM'),
(145, 'Moldova', 'MD'),
(146, 'Monaco', 'MC'),
(147, 'Mongolia', 'MN'),
(148, 'Montenegro', 'ME'),
(149, 'Montserrat', 'MS'),
(150, 'Morocco', 'MA'),
(151, 'Mozambique', 'MZ'),
(152, 'Myanmar [Burma]', 'MM'),
(153, 'Namibia', 'NA'),
(154, 'Nauru', 'NR'),
(155, 'Nepal', 'NP'),
(156, 'Netherlands', 'NL'),
(157, 'New Caledonia', 'NC'),
(158, 'New Zealand', 'NZ'),
(159, 'Nicaragua', 'NI'),
(160, 'Niger', 'NE'),
(161, 'Nigeria', 'NG'),
(162, 'Niue', 'NU'),
(163, 'Norfolk Island', 'NF'),
(164, 'North Korea', 'KP'),
(165, 'Northern Mariana Islands', 'MP'),
(166, 'Norway', 'NO'),
(167, 'Oman', 'OM'),
(168, 'Pakistan', 'PK'),
(169, 'Palau', 'PW'),
(170, 'Palestine', 'PS'),
(171, 'Panama', 'PA'),
(172, 'Papua New Guinea', 'PG'),
(173, 'Paraguay', 'PY'),
(174, 'Peru', 'PE'),
(175, 'Philippines', 'PH'),
(176, 'Pitcairn Islands', 'PN'),
(177, 'Poland', 'PL'),
(178, 'Portugal', 'PT'),
(179, 'Puerto Rico', 'PR'),
(180, 'Qatar', 'QA'),
(181, 'Republic of the Congo', 'CG'),
(182, 'Réunion', 'RE'),
(183, 'Romania', 'RO'),
(184, 'Russia', 'RU'),
(185, 'Rwanda', 'RW'),
(186, 'Saint Barthélemy', 'BL'),
(187, 'Saint Helena', 'SH'),
(188, 'Saint Kitts and Nevis', 'KN'),
(189, 'Saint Lucia', 'LC'),
(190, 'Saint Martin', 'MF'),
(191, 'Saint Pierre and Miquelon', 'PM'),
(192, 'Saint Vincent and the Grenadines', 'VC'),
(193, 'Samoa', 'WS'),
(194, 'San Marino', 'SM'),
(195, 'São Tomé and Príncipe', 'ST'),
(196, 'Saudi Arabia', 'SA'),
(197, 'Senegal', 'SN'),
(198, 'Serbia', 'RS'),
(199, 'Seychelles', 'SC'),
(200, 'Sierra Leone', 'SL'),
(201, 'Singapore', 'SG'),
(202, 'Sint Maarten', 'SX'),
(203, 'Slovakia', 'SK'),
(204, 'Slovenia', 'SI'),
(205, 'Solomon Islands', 'SB'),
(206, 'Somalia', 'SO'),
(207, 'South Africa', 'ZA'),
(208, 'South Georgia and the South Sandwich Islands', 'GS'),
(209, 'South Korea', 'KR'),
(210, 'South Sudan', 'SS'),
(211, 'Spain', 'ES'),
(212, 'Sri Lanka', 'LK'),
(213, 'Sudan', 'SD'),
(214, 'Suriname', 'SR'),
(215, 'Svalbard and Jan Mayen', 'SJ'),
(216, 'Swaziland', 'SZ'),
(217, 'Sweden', 'SE'),
(218, 'Switzerland', 'CH'),
(219, 'Syria', 'SY'),
(220, 'Taiwan', 'TW'),
(221, 'Tajikistan', 'TJ'),
(222, 'Tanzania', 'TZ'),
(223, 'Thailand', 'TH'),
(224, 'Togo', 'TG'),
(225, 'Tokelau', 'TK'),
(226, 'Tonga', 'TO'),
(227, 'Trinidad and Tobago', 'TT'),
(228, 'Tunisia', 'TN'),
(229, 'Turkey', 'TR'),
(230, 'Turkmenistan', 'TM'),
(231, 'Turks and Caicos Islands', 'TC'),
(232, 'Tuvalu', 'TV'),
(233, 'U.S. Minor Outlying Islands', 'UM'),
(234, 'U.S. Virgin Islands', 'VI'),
(235, 'Uganda', 'UG'),
(236, 'Ukraine', 'UA'),
(237, 'United Arab Emirates', 'AE'),
(238, 'United Kingdom', 'GB'),
(239, 'United States', 'US'),
(240, 'Uruguay', 'UY'),
(241, 'Uzbekistan', 'UZ'),
(242, 'Vanuatu', 'VU'),
(243, 'Vatican City', 'VA'),
(244, 'Venezuela', 'VE'),
(245, 'Vietnam', 'VN'),
(246, 'Wallis and Futuna', 'WF'),
(247, 'Western Sahara', 'EH'),
(248, 'Yemen', 'YE'),
(249, 'Zambia', 'ZM'),
(250, 'Zimbabwe', 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `pm_coupon`
--

DROP TABLE IF EXISTS `pm_coupon`;
CREATE TABLE IF NOT EXISTS `pm_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `discount` double DEFAULT '0',
  `discount_type` varchar(10) DEFAULT NULL,
  `rooms` text,
  `checked` int(11) DEFAULT '0',
  `publish_date` int(11) DEFAULT NULL,
  `unpublish_date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pm_currency`
--

DROP TABLE IF EXISTS `pm_currency`;
CREATE TABLE IF NOT EXISTS `pm_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(5) DEFAULT NULL,
  `sign` varchar(5) DEFAULT NULL,
  `main` int(11) DEFAULT '0',
  `rank` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm_currency`
--

INSERT INTO `pm_currency` (`id`, `code`, `sign`, `main`, `rank`) VALUES
(1, 'USD', '$', 1, 1),
(2, 'EUR', '€', 0, 2),
(3, 'GBP', '£', 0, 3),
(4, 'INR', '₹', 0, 4),
(5, 'AUD', 'A$', 0, 5),
(6, 'CAD', 'C$', 0, 6),
(7, 'CNY', '¥', 0, 7),
(8, 'TRY', '₺', 0, 8),
(9, 'RSD', 'Din.', NULL, 9);

-- --------------------------------------------------------

--
-- Table structure for table `pm_email_content`
--

DROP TABLE IF EXISTS `pm_email_content`;
CREATE TABLE IF NOT EXISTS `pm_email_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`,`lang`),
  KEY `email_content_lang_fkey` (`lang`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm_email_content`
--

INSERT INTO `pm_email_content` (`id`, `lang`, `name`, `subject`, `content`) VALUES
(1, 1, 'CONTACT', 'Contact', '<b>Nom:</b> {name}\r\n<b>Adresse:</b> {address}\r\n<b>Téléphone:</b> {phone}\r\n<b>E-mail:</b> {email}\r\n<b>Message:</b>\r\n{msg}'),
(1, 2, 'CONTACT', 'Contact', '<b>Name:</b> {name}<br>\r\n<b>Address:</b> {address}<br>\r\n<b>Phone:</b> {phone}<br>\r\n<b>E-mail:</b> {email}<br>\r\n<b>Message:</b><br>\r\n{msg}'),
(1, 3, 'CONTACT', 'Contact', '<b>Name:</b> {name}\r\n<b>Address:</b> {address}\r\n<b>Phone:</b> {phone}\r\n<b>E-mail:</b> {email}\r\n<b>Message:</b>\r\n{msg}'),
(2, 1, 'BOOKING_REQUEST', 'Demande de réservation', '<p><b>Adresse de facturation</b><br />\r\n{firstname} {lastname}<br />\r\n{address}<br />\r\n{postcode} {city}<br />\r\nSociété : {company}<br />\r\nTéléphone : {phone}<br />\r\nMobile : {mobile}<br />\r\nEmail : {email}</p>\r\n\r\n<p><strong>Détails de la réservation</strong><br />\r\nArrivée : <b>{Check_in}</b><br />\r\nDépart : <b>{Check_out}</b><br />\r\n<b>{num_nights}</b> nuit(s)<br />\r\n<b>{num_guests}</b> personne(s) - Adulte(s) : <b>{num_adults}</b> / Enfant(s) : <b>{num_children}</b></p>\r\n\r\n<p><b>Chambres</b></p>\r\n\r\n<p>{rooms}</p>\r\n\r\n<p><b>Services supplémentaires</b></p>\r\n\r\n<p>{extra_services}</p>\r\n\r\n<p><b>Activités</b></p>\r\n\r\n<p>{activities}</p>\r\n\r\n<p><b>Commentaires</b><br />\r\n{comments}</p>\r\n'),
(2, 2, 'BOOKING_REQUEST', 'Booking request', '<p><b>Billing address</b><br />\r\n{firstname} {lastname}<br />\r\n{address}<br />\r\n{postcode} {city}<br />\r\nCompany: {company}<br />\r\nPhone: {phone}<br />\r\nMobile: {mobile}<br />\r\nEmail: {email}</p>\r\n\r\n<p><strong>Booking details</strong><br />\r\nCheck in <b>{Check_in}</b><br />\r\nCheck out <b>{Check_out}</b><br />\r\n<b>{num_nights}</b> nights<br />\r\n<b>{num_guests}</b> persons - Adults: <b>{num_adults}</b> / Children: <b>{num_children}</b></p>\r\n\r\n<p><strong>Rooms</strong></p>\r\n\r\n<p>{rooms}</p>\r\n\r\n<p><b>Extra services</b></p>\r\n\r\n<p>{extra_services}</p>\r\n\r\n<p><b>Activities</b></p>\r\n\r\n<p>{activities}</p>\r\n\r\n<p><b>Comments</b><br />\r\n{comments}</p>\r\n'),
(2, 3, 'BOOKING_REQUEST', 'Booking request', '<p><b>Billing address</b><br />\r\n{firstname} {lastname}<br />\r\n{address}<br />\r\n{postcode} {city}<br />\r\nCompany: {company}<br />\r\nPhone: {phone}<br />\r\nMobile: {mobile}<br />\r\nEmail: {email}</p>\r\n\r\n<p><strong>Booking details</strong><br />\r\nCheck in <b>{Check_in}</b><br />\r\nCheck out <b>{Check_out}</b><br />\r\n<b>{num_nights}</b> nights<br />\r\n<b>{num_guests}</b> persons - Adults: <b>{num_adults}</b> / Children: <b>{num_children}</b></p>\r\n\r\n<p><strong>Rooms</strong></p>\r\n\r\n<p>{rooms}</p>\r\n\r\n<p><b>Extra services</b></p>\r\n\r\n<p>{extra_services}</p>\r\n\r\n<p><b>Activities</b></p>\r\n\r\n<p>{activities}</p>\r\n\r\n<p><b>Comments</b><br />\r\n{comments}</p>\r\n'),
(3, 1, 'BOOKING_CONFIRMATION', 'Confirmation de réservation', '<p><b>Adresse de facturation</b><br />\r\n{firstname} {lastname}<br />\r\n{address}<br />\r\n{postcode} {city}<br />\r\nSociété : {company}<br />\r\nTéléphone : {phone}<br />\r\nMobile : {mobile}<br />\r\nEmail : {email}</p>\r\n\r\n<p><strong>Détails de la réservation</strong><br />\r\nArrivée : <b>{Check_in}</b><br />\r\nDépart : <b>{Check_out}</b><br />\r\n<b>{num_nights}</b> nuit(s)<br />\r\n<b>{num_guests}</b> personne(s) - Adulte(s) : <b>{num_adults}</b> / Enfant(s) : <b>{num_children}</b></p>\r\n\r\n<p><b>Chambres</b></p>\r\n\r\n<p>{rooms}</p>\r\n\r\n<p><b>Services supplémentaires</b></p>\r\n\r\n<p>{extra_services}</p>\r\n\r\n<p><b>Activités</b></p>\r\n\r\n<p>{activities}</p>\r\n\r\n<p>Taxe de séjour : {tourist_tax}<br />\r\nRéduction: {discount}<br />\r\n{taxes}<br />\r\nTotal : <strong>{total} TTC</strong></p>\r\n\r\n<p>Acompte : <strong>{down_payment} TTC</strong></p>\r\n\r\n<p><b>Commentaires</b><br />\r\n{comments}</p>\r\n\r\n<p>{payment_notice}</p>\r\n'),
(3, 2, 'BOOKING_CONFIRMATION', 'Booking confirmation', '<p><b>Billing address</b><br />\r\n{firstname} {lastname}<br />\r\n{address}<br />\r\n{postcode} {city}<br />\r\nCompany: {company}<br />\r\nPhone: {phone}<br />\r\nMobile: {mobile}<br />\r\nEmail: {email}</p>\r\n\r\n<p><strong>Booking details</strong><br />\r\nCheck in <b>{Check_in}</b><br />\r\nCheck out <b>{Check_out}</b><br />\r\n<b>{num_nights}</b> nights<br />\r\n<b>{num_guests}</b> persons - Adults: <b>{num_adults}</b> / Children: <b>{num_children}</b></p>\r\n\r\n<p><strong>Rooms</strong></p>\r\n\r\n<p>{rooms}</p>\r\n\r\n<p><b>Extra services</b></p>\r\n\r\n<p>{extra_services}</p>\r\n\r\n<p><b>Activities</b></p>\r\n\r\n<p>{activities}</p>\r\n\r\n<p>Tourist tax: {tourist_tax}<br />\r\nDiscount: {discount}<br />\r\n{taxes}<br />\r\nTotal: <strong>{total} incl. VAT</strong></p>\r\n\r\n<p>Down payment: <strong>{down_payment} incl. VAT</strong></p>\r\n\r\n<p><b>Comments</b><br />\r\n{comments}</p>\r\n\r\n<p>{payment_notice}</p>\r\n'),
(3, 3, 'BOOKING_CONFIRMATION', 'Booking confirmation', '<p><b>Billing address</b><br />\r\n{firstname} {lastname}<br />\r\n{address}<br />\r\n{postcode} {city}<br />\r\nCompany: {company}<br />\r\nPhone: {phone}<br />\r\nMobile: {mobile}<br />\r\nEmail: {email}</p>\r\n\r\n<p><strong>Booking details</strong><br />\r\nCheck in <b>{Check_in}</b><br />\r\nCheck out <b>{Check_out}</b><br />\r\n<b>{num_nights}</b> nights<br />\r\n<b>{num_guests}</b> persons - Adults: <b>{num_adults}</b> / Children: <b>{num_children}</b></p>\r\n\r\n<p><strong>Rooms</strong></p>\r\n\r\n<p>{rooms}</p>\r\n\r\n<p><b>Extra services</b></p>\r\n\r\n<p>{extra_services}</p>\r\n\r\n<p><b>Activities</b></p>\r\n\r\n<p>{activities}</p>\r\n\r\n<p>Tourist tax: {tourist_tax}<br />\r\nDiscount: {discount}<br />\r\n{taxes}<br />\r\nTotal: <strong>{total} incl. VAT</strong></p>\r\n\r\n<p>Down payment: <strong>{down_payment} incl. VAT</strong></p>\r\n\r\n<p><b>Comments</b><br />\r\n{comments}</p>\r\n\r\n<p>{payment_notice}</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `pm_facility`
--

DROP TABLE IF EXISTS `pm_facility`;
CREATE TABLE IF NOT EXISTS `pm_facility` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `home` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT '0',
  PRIMARY KEY (`id`,`lang`),
  KEY `facility_lang_fkey` (`lang`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm_facility`
--

INSERT INTO `pm_facility` (`id`, `lang`, `name`, `home`, `rank`) VALUES
(1, 1, 'Climatisation', 1, 1),
(1, 2, 'Air conditioning', 1, 1),
(2, 1, 'Lit bébé', 1, 2),
(2, 2, 'Baby cot', 1, 2),
(3, 1, 'Balcon', 1, 3),
(3, 2, 'Balcony', 1, 3),
(4, 1, 'Barbecue', 1, 4),
(4, 2, 'Barbecue', 1, 4),
(5, 1, 'Salle de bain', 1, 5),
(5, 2, 'Bathroom', 1, 5),
(6, 1, 'Cafetière', 1, 6),
(6, 2, 'Coffeemaker', 1, 6),
(7, 1, 'Plaque de cuisson', 1, 7),
(7, 2, 'Cooktop', 1, 7),
(8, 1, 'Bureau', 1, 8),
(8, 2, 'Desk', 1, 8),
(9, 1, 'Lave vaisselle', 1, 9),
(9, 2, 'Dishwasher', 1, 9),
(10, 1, 'Ventilateur', NULL, 10),
(10, 2, 'Fan', NULL, 10),
(11, 1, 'Parking gratuit', NULL, 11),
(11, 2, 'Free parking', NULL, 11),
(12, 1, 'Réfrigérateur', NULL, 12),
(12, 2, 'Fridge', NULL, 12),
(13, 1, 'Sèche-cheveux', NULL, 13),
(13, 2, 'Hairdryer', NULL, 13),
(14, 1, 'Internet', NULL, 14),
(14, 2, 'Internet', NULL, 14),
(15, 1, 'Fer à repasser', NULL, 15),
(15, 2, 'Iron', NULL, 15),
(16, 1, 'Micro-ondes', NULL, 16),
(16, 2, 'Microwave', NULL, 16),
(17, 1, 'Mini-bar', NULL, 17),
(17, 2, 'Mini-bar', NULL, 17),
(18, 1, 'Non-fumeurs', NULL, 18),
(18, 2, 'Non-smoking', NULL, 18),
(19, 1, 'Parking payant', NULL, 19),
(19, 2, 'Paid parking', NULL, 19),
(20, 1, 'Animaux acceptés', NULL, 20),
(20, 2, 'Pets allowed', NULL, 20),
(21, 1, 'Animaux interdits', NULL, 21),
(21, 2, 'Pets not allowed', NULL, 21),
(22, 1, 'Radio', NULL, 22),
(22, 2, 'Radio', NULL, 22),
(23, 1, 'Coffre-fort', NULL, 23),
(23, 2, 'Safe', NULL, 23),
(24, 1, 'Chaines satellite', NULL, 24),
(24, 2, 'Satellite chanels', NULL, 24),
(25, 1, 'Salle d\'eau', NULL, 25),
(25, 2, 'Shower-room', NULL, 25),
(26, 1, 'Coin salon', NULL, 26),
(26, 2, 'Small lounge', NULL, 26),
(27, 1, 'Telephone', NULL, 27),
(27, 2, 'Telephone', NULL, 27),
(28, 1, 'Téléviseur', NULL, 28),
(28, 2, 'Television', NULL, 28),
(29, 1, 'Terrasse', NULL, 29),
(29, 2, 'Terrasse', NULL, 29),
(30, 1, 'Machine à laver', NULL, 30),
(30, 2, 'Washing machine', NULL, 30),
(31, 1, 'Accès handicapés', NULL, 31),
(31, 2, 'Wheelchair accessible', NULL, 31),
(32, 1, 'Wi-Fi', NULL, 31),
(32, 2, 'WiFi', NULL, 31),
(33, 1, 'Chaine hifi', NULL, 32),
(33, 2, 'Hi-fi system', NULL, 32),
(34, 1, 'Lecteur DVD', NULL, 33),
(34, 2, 'DVD player', NULL, 33),
(35, 1, 'Ascenceur', NULL, 34),
(35, 2, 'Elevator', NULL, 34),
(36, 1, 'Coin salon', NULL, 35),
(36, 2, 'Lounge', NULL, 35),
(37, 1, 'Restaurant', NULL, 36),
(37, 2, 'Restaurant', NULL, 36),
(38, 1, 'Service de chambre', NULL, 37),
(38, 2, 'Room service', NULL, 37),
(39, 1, 'Vestiaire', NULL, 38),
(39, 2, 'Cloakroom', NULL, 38);

-- --------------------------------------------------------

--
-- Table structure for table `pm_facility_file`
--

DROP TABLE IF EXISTS `pm_facility_file`;
CREATE TABLE IF NOT EXISTS `pm_facility_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `home` int(11) DEFAULT '0',
  `checked` int(11) DEFAULT '1',
  `rank` int(11) DEFAULT '0',
  `file` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`lang`),
  KEY `facility_file_fkey` (`id_item`,`lang`),
  KEY `facility_file_lang_fkey` (`lang`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm_facility_file`
--

INSERT INTO `pm_facility_file` (`id`, `lang`, `id_item`, `home`, `checked`, `rank`, `file`, `label`, `type`) VALUES
(1, 2, 31, 0, 1, 1, 'wheelchair.png', '', 'image'),
(2, 2, 20, 0, 1, 2, 'pet-allowed.png', '', 'image'),
(3, 2, 21, 0, 1, 3, 'pet-not-allowed.png', '', 'image'),
(4, 2, 3, 0, 1, 4, 'balcony.png', '', 'image'),
(5, 2, 4, 0, 1, 5, 'barbecue.png', '', 'image'),
(6, 2, 8, 0, 1, 6, 'desk.png', '', 'image'),
(7, 2, 6, 0, 1, 7, 'coffee.png', '', 'image'),
(8, 2, 24, 0, 1, 8, 'satellite.png', '', 'image'),
(9, 2, 1, 0, 1, 9, 'air-conditioning.png', '', 'image'),
(10, 2, 23, 0, 1, 10, 'safe.png', '', 'image'),
(11, 2, 26, 0, 1, 11, 'lounge.png', '', 'image'),
(12, 2, 15, 0, 1, 12, 'iron.png', '', 'image'),
(13, 2, 14, 0, 1, 13, 'adsl.png', '', 'image'),
(14, 2, 9, 0, 1, 14, 'dishwasher.png', '', 'image'),
(15, 2, 2, 0, 1, 15, 'baby-cot.png', '', 'image'),
(16, 2, 30, 0, 1, 16, 'washing-machine.png', '', 'image'),
(17, 2, 16, 0, 1, 17, 'microwaves.png', '', 'image'),
(18, 2, 17, 0, 1, 18, 'mini-bar.png', '', 'image'),
(19, 2, 18, 0, 1, 19, 'non-smoking.png', '', 'image'),
(20, 2, 11, 0, 1, 20, 'free-parking.png', '', 'image'),
(21, 2, 19, 0, 1, 21, 'paid-parking.png', '', 'image'),
(22, 2, 7, 0, 1, 22, 'cooktop.png', '', 'image'),
(23, 2, 22, 0, 1, 23, 'radio.png', '', 'image'),
(24, 2, 12, 0, 1, 24, 'fridge.png', '', 'image'),
(25, 2, 25, 0, 1, 25, 'shower.png', '', 'image'),
(26, 2, 5, 0, 1, 26, 'bath.png', '', 'image'),
(27, 2, 13, 0, 1, 27, 'hairdryer.png', '', 'image'),
(28, 2, 27, 0, 1, 28, 'phone.png', '', 'image'),
(29, 2, 28, 0, 1, 29, 'tv.png', '', 'image'),
(30, 2, 29, 0, 1, 30, 'terrasse.png', '', 'image'),
(31, 2, 10, 0, 1, 31, 'fan.png', '', 'image'),
(32, 2, 32, 0, 1, 32, 'wifi.png', '', 'image'),
(33, 2, 33, 0, 1, 33, 'hifi.png', '', 'image'),
(34, 2, 34, 0, 1, 34, 'dvd.png', '', 'image'),
(35, 2, 33, 0, 1, 33, 'elevator.png', '', 'image'),
(36, 2, 33, 0, 1, 33, 'lounge.png', '', 'image'),
(37, 2, 33, 0, 1, 33, 'restaurant.png', '', 'image'),
(38, 2, 33, 0, 1, 33, 'room-service.png', '', 'image'),
(39, 2, 33, 0, 1, 33, 'cloakroom.png', '', 'image');

-- --------------------------------------------------------

--
-- Table structure for table `pm_lang`
--

DROP TABLE IF EXISTS `pm_lang`;
CREATE TABLE IF NOT EXISTS `pm_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `locale` varchar(20) DEFAULT NULL,
  `main` int(11) DEFAULT '0',
  `checked` int(11) DEFAULT '0',
  `rank` int(11) DEFAULT '0',
  `tag` varchar(20) DEFAULT NULL,
  `rtl` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm_lang`
--

INSERT INTO `pm_lang` (`id`, `title`, `locale`, `main`, `checked`, `rank`, `tag`, `rtl`) VALUES
(1, 'Français', 'fr_FR', 0, 1, 2, 'fr', 0),
(2, 'English', 'en_GB', 1, 1, 1, 'en', 0),
(3, 'عربي', 'ar_MA', 0, 1, 3, 'ar', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pm_lang_file`
--

DROP TABLE IF EXISTS `pm_lang_file`;
CREATE TABLE IF NOT EXISTS `pm_lang_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_item` int(11) NOT NULL,
  `home` int(11) DEFAULT '0',
  `checked` int(11) DEFAULT '1',
  `rank` int(11) DEFAULT '0',
  `file` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lang_file_fkey` (`id_item`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm_lang_file`
--

INSERT INTO `pm_lang_file` (`id`, `id_item`, `home`, `checked`, `rank`, `file`, `label`, `type`) VALUES
(1, 1, 0, 1, 2, 'fr.png', '', 'image'),
(2, 2, 0, 1, 1, 'gb.png', '', 'image'),
(3, 3, 0, 1, 3, 'ar.png', '', 'image');

-- --------------------------------------------------------

--
-- Table structure for table `pm_location`
--

DROP TABLE IF EXISTS `pm_location`;
CREATE TABLE IF NOT EXISTS `pm_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `checked` int(11) DEFAULT '0',
  `pages` text,
  `text` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm_location`
--

INSERT INTO `pm_location` (`id`, `name`, `address`, `lat`, `lng`, `checked`, `pages`, `text`) VALUES
(1, 'Big Ben', 'London SW1A 0AA', 51.500729, -0.124625, 1, '2', ''),
(2, 'Home Best Location', 'London SW1A 0AA', 51.500729, -0.124625, 1, '1', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `pm_media`
--

DROP TABLE IF EXISTS `pm_media`;
CREATE TABLE IF NOT EXISTS `pm_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pm_media_file`
--

DROP TABLE IF EXISTS `pm_media_file`;
CREATE TABLE IF NOT EXISTS `pm_media_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_item` int(11) NOT NULL,
  `home` int(11) DEFAULT '0',
  `checked` int(11) DEFAULT '1',
  `rank` int(11) DEFAULT '0',
  `file` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_file_fkey` (`id_item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pm_menu`
--

DROP TABLE IF EXISTS `pm_menu`;
CREATE TABLE IF NOT EXISTS `pm_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `id_parent` int(11) DEFAULT NULL,
  `item_type` varchar(30) DEFAULT NULL,
  `id_item` int(11) DEFAULT NULL,
  `url` text,
  `main` int(11) DEFAULT '1',
  `footer` int(11) DEFAULT '0',
  `checked` int(11) DEFAULT '0',
  `rank` int(11) DEFAULT '0',
  PRIMARY KEY (`id`,`lang`),
  KEY `menu_lang_fkey` (`lang`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm_menu`
--

INSERT INTO `pm_menu` (`id`, `lang`, `name`, `title`, `id_parent`, `item_type`, `id_item`, `url`, `main`, `footer`, `checked`, `rank`) VALUES
(7, 1, 'Galerie', 'Galerie', NULL, 'page', 7, NULL, 1, 0, 1, 5),
(7, 2, 'Gallery', 'Gallery', NULL, 'page', 7, NULL, 1, 0, 1, 5),
(7, 3, 'معرض الصور', 'معرض الصور', NULL, 'page', 7, NULL, 1, 0, 1, 5),
(9, 1, 'Chambres', 'Chambres', NULL, 'page', 9, '', 1, 0, 1, 1),
(9, 2, 'Rooms & Suites', 'Rooms & Suites', NULL, 'page', 9, '', 1, 0, 1, 1),
(9, 3, 'الغرف', 'الغرف', NULL, 'page', 9, '', 1, 0, 1, 1),
(16, 1, 'Activités', 'Activités', NULL, 'page', 21, '', 1, 0, 1, 3),
(16, 2, 'Conferences & Events', 'Activities', NULL, 'page', 21, '', 1, 0, 1, 3),
(16, 3, 'Activities', 'Activities', NULL, 'page', 21, '', 1, 0, 1, 3),
(18, 1, 'Special Offers', 'Special Offers', NULL, 'page', 18, '', 1, 0, 1, 2),
(18, 2, 'Special Offers', 'Special Offers', NULL, 'page', 18, '', 1, 0, 1, 2),
(18, 3, 'Special Offers', 'Special Offers', NULL, 'page', 18, '', 1, 0, 1, 2),
(19, 1, 'Your beach', 'Your beach', NULL, 'page', 20, '', 1, 0, 1, 4),
(19, 2, 'Your beach', 'Your beach', NULL, 'page', 20, '', 1, 0, 1, 4),
(19, 3, 'Your beach', 'Your beach', NULL, 'page', 20, '', 1, 0, 1, 4),
(20, 1, 'About Us', 'About Us', NULL, 'page', 19, '', 1, 0, 1, 6),
(20, 2, 'About The Hotel', 'About The Hotel', NULL, 'page', 19, '', 1, 0, 1, 6),
(20, 3, 'About Us', 'About Us', NULL, 'page', 19, '', 1, 0, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `pm_message`
--

DROP TABLE IF EXISTS `pm_message`;
CREATE TABLE IF NOT EXISTS `pm_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_date` int(11) DEFAULT NULL,
  `edit_date` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` longtext,
  `phone` varchar(100) DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `msg` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pm_offer`
--

DROP TABLE IF EXISTS `pm_offer`;
CREATE TABLE IF NOT EXISTS `pm_offer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` int(11) NOT NULL,
  `max_children` int(11) DEFAULT '1',
  `max_adults` int(11) DEFAULT '1',
  `max_people` int(11) DEFAULT NULL,
  `min_people` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `subtitle` varchar(250) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `descr` longtext,
  `facilities` varchar(250) DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT '1',
  `price` double NOT NULL DEFAULT '0',
  `home` int(11) DEFAULT '0',
  `checked` int(11) DEFAULT '0',
  `rank` int(11) DEFAULT '0',
  `start_lock` int(11) DEFAULT NULL,
  `end_lock` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`lang`),
  KEY `offer_lang_fkey` (`lang`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm_offer`
--

INSERT INTO `pm_offer` (`id`, `lang`, `max_children`, `max_adults`, `max_people`, `min_people`, `title`, `subtitle`, `alias`, `descr`, `facilities`, `stock`, `price`, `home`, `checked`, `rank`, `start_lock`, `end_lock`) VALUES
(11, 1, 3, 2, 5, 2, 'Special Offer 2018', 'Special Offer 2018', 'special-offer-2018', '<p>test</p>\r\n', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39', 3, 100, 1, 1, 1, 1531180800, 1531699200),
(11, 2, 3, 2, 5, 2, 'Special Offer 2018', 'Special Offer 2018', 'special-offer-2018-1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in volup</p>\r\n', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39', 3, 100, 1, 1, 1, 1531180800, 1531699200),
(11, 3, 3, 2, 5, 2, 'Special Offer 2018', 'Special Offer 2018', 'special-offer-2018', '<p>test</p>\r\n', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39', 3, 100, 1, 1, 1, 1531180800, 1531699200),
(14, 1, 2, 4, 6, 1, '', '', '', '', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39', 3, 100, 1, 1, 2, 1531180800, 1531699200),
(14, 2, 2, 4, 6, 1, 'Special Offer 2018 2', 'Special Offer 2018 2 ', 'special-offer-2018-2', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in volup</p>\r\n', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39', 3, 100, 1, 1, 2, 1531180800, 1531699200),
(14, 3, 2, 4, 6, 1, '', '', '', '', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39', 3, 100, 1, 1, 2, 1531180800, 1531699200),
(15, 1, 4, 4, 8, 2, '', '', '', '', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39', 3, 100, 1, 1, 3, 1531180800, 1531699200),
(15, 2, 4, 4, 8, 2, 'Special Offer 2018 3', 'Special Offer 2018 3', 'special-offer-2018-3', '<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39', 3, 100, 1, 1, 3, 1531180800, 1531699200),
(15, 3, 4, 4, 8, 2, '', '', '', '', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39', 3, 100, 1, 1, 3, 1531180800, 1531699200);

-- --------------------------------------------------------

--
-- Table structure for table `pm_offer_file`
--

DROP TABLE IF EXISTS `pm_offer_file`;
CREATE TABLE IF NOT EXISTS `pm_offer_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `home` int(11) DEFAULT '0',
  `checked` int(11) DEFAULT '1',
  `rank` int(11) DEFAULT '0',
  `file` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`lang`),
  KEY `room_file_fkey` (`id_item`,`lang`),
  KEY `room_file_lang_fkey` (`lang`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm_offer_file`
--

INSERT INTO `pm_offer_file` (`id`, `lang`, `id_item`, `home`, `checked`, `rank`, `file`, `label`, `type`) VALUES
(40, 1, 11, NULL, 1, 4, 'room1.jpg', '', 'image'),
(40, 2, 11, NULL, 1, 4, 'room1.jpg', '', 'image'),
(40, 3, 11, NULL, 1, 4, 'room1.jpg', '', 'image'),
(41, 1, 14, NULL, 1, 5, 'room1.jpg', '', 'image'),
(41, 2, 14, NULL, 1, 5, 'room1.jpg', '', 'image'),
(41, 3, 14, NULL, 1, 5, 'room1.jpg', '', 'image'),
(42, 1, 15, NULL, 1, 6, 'room1.jpg', '', 'image'),
(42, 2, 15, NULL, 1, 6, 'room1.jpg', '', 'image'),
(42, 3, 15, NULL, 1, 6, 'room1.jpg', '', 'image');

-- --------------------------------------------------------

--
-- Table structure for table `pm_package`
--

DROP TABLE IF EXISTS `pm_package`;
CREATE TABLE IF NOT EXISTS `pm_package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users` text,
  `name` varchar(50) DEFAULT NULL,
  `days` text,
  `min_nights` int(11) DEFAULT NULL,
  `max_nights` int(11) DEFAULT NULL,
  `day_start` int(11) DEFAULT NULL,
  `day_end` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm_package`
--

INSERT INTO `pm_package` (`id`, `users`, `name`, `days`, `min_nights`, `max_nights`, `day_start`, `day_end`) VALUES
(1, '1', 'Week-end', '5,6,7', 0, 0, NULL, NULL),
(2, '1', 'Night', '1,2,3,4,5,6,7', 0, 0, NULL, NULL),
(3, '1', 'Mid-week', '1,2,3,4,5', 3, 4, NULL, NULL),
(4, '1', '2 nights', '1,2,3,4', 2, 2, NULL, NULL),
(5, '1', 'Week', '1,2,3,4,5,6,7', 7, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pm_package_file`
--

DROP TABLE IF EXISTS `pm_package_file`;
CREATE TABLE IF NOT EXISTS `pm_package_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `home` int(11) DEFAULT '0',
  `checked` int(11) DEFAULT '1',
  `rank` int(11) DEFAULT '0',
  `file` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`lang`),
  KEY `room_file_fkey` (`id_item`,`lang`),
  KEY `room_file_lang_fkey` (`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pm_page`
--

DROP TABLE IF EXISTS `pm_page`;
CREATE TABLE IF NOT EXISTS `pm_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `subtitle` varchar(250) DEFAULT NULL,
  `title_tag` varchar(250) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `descr` longtext,
  `robots` varchar(20) DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL,
  `intro` longtext,
  `text` longtext,
  `id_parent` int(11) DEFAULT NULL,
  `page_model` varchar(50) DEFAULT NULL,
  `article_model` varchar(50) DEFAULT NULL,
  `home` int(11) DEFAULT '0',
  `checked` int(11) DEFAULT '0',
  `rank` int(11) DEFAULT '0',
  `add_date` int(11) DEFAULT NULL,
  `edit_date` int(11) DEFAULT NULL,
  `comment` int(11) DEFAULT '0',
  `rating` int(11) DEFAULT '0',
  `system` int(11) DEFAULT '0',
  PRIMARY KEY (`id`,`lang`),
  KEY `page_lang_fkey` (`lang`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm_page`
--

INSERT INTO `pm_page` (`id`, `lang`, `name`, `title`, `subtitle`, `title_tag`, `alias`, `descr`, `robots`, `keywords`, `intro`, `text`, `id_parent`, `page_model`, `article_model`, `home`, `checked`, `rank`, `add_date`, `edit_date`, `comment`, `rating`, `system`) VALUES
(1, 1, 'Accueil', 'Lorem ipsum dolor sit amet', 'Consectetur adipiscing elit', 'Accueil', '', '', 'index,follow', '', '', '<p>[show_boxes col=\"3\" items=\"3\" table=\"pm_room\"]</p>\r\n', NULL, 'home', '', 1, 1, 1, 1524062141, 1533207554, 0, 0, 0),
(1, 2, 'Home', 'Panda Resort, Luxury Hotel', '', 'Panda Resort, web software to create and manage hotels websites', '', '', 'index,follow', '', '', '', NULL, 'home', '', 1, 1, 1, 1524062141, 1533207554, 0, 0, 0),
(1, 3, 'ترحيب', 'هو سقطت الساحلية ذات, أن.', 'غير بمعارضة وهولندا، الإقتصادية قد, فقد الفرنسي المعاهدات قد من.', 'ترحيب', '', '', 'index,follow', '', '', '<p>[show_boxes col=\"3\" items=\"3\" table=\"pm_room\"]</p>\r\n', NULL, 'home', '', 1, 1, 1, 1524062141, 1533207554, 0, 0, 0),
(2, 1, 'Contact', 'Contact', '', 'Contact', 'contact', '', 'index,follow', '', '', '', NULL, 'contact', '', 0, 1, 11, 1524062141, 1524062141, 0, 0, 0),
(2, 2, 'Contact', 'Contact', '', 'Contact', 'contact', '', 'index,follow', '', '', '', NULL, 'contact', '', 0, 1, 11, 1524062141, 1524062141, 0, 0, 0),
(2, 3, 'جهة الاتصال', 'جهة الاتصال', '', 'جهة الاتصال', 'contact', '', 'index,follow', '', '', '', NULL, 'contact', '', 0, 1, 11, 1524062141, 1524062141, 0, 0, 0),
(3, 1, 'Mentions légales', 'Mentions légales', '', 'Mentions légales', 'mentions-legales', '', 'index,follow', '', '', '', NULL, 'page', '', 0, 1, 12, 1524062141, 1524062141, 0, 0, 0),
(3, 2, 'Legal notices', 'Legal notices', '', 'Legal notices', 'legal-notices', '', 'index,follow', '', '', '', NULL, 'page', '', 0, 1, 12, 1524062141, 1524062141, 0, 0, 0),
(3, 3, 'يذكر القانونية', 'يذكر القانونية', '', 'يذكر القانونية', 'legal-notices', '', 'index,follow', '', '', '', NULL, 'page', '', 0, 1, 12, 1524062141, 1524062141, 0, 0, 0),
(4, 1, 'Plan du site', 'Plan du site', '', 'Plan du site', 'plan-site', '', 'index,follow', '', '', '', NULL, 'sitemap', '', 0, 1, 13, 1524062141, 1524062141, 0, 0, 0),
(4, 2, 'Sitemap', 'Sitemap', '', 'Sitemap', 'sitemap', '', 'index,follow', '', '', '', NULL, 'sitemap', '', 0, 1, 13, 1524062141, 1524062141, 0, 0, 0),
(4, 3, 'خريطة الموقع', 'خريطة الموقع', '', 'خريطة الموقع', 'sitemap', '', 'index,follow', '', '', '', NULL, 'sitemap', '', 0, 1, 13, 1524062141, 1524062141, 0, 0, 0),
(5, 1, 'Ma première page', 'Ma première page', '', 'Ma première page', 'my-first-page', '', 'index,follow', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla vel est at rhoncus. Cras porttitor ligula vel magna vehicula accumsan. Mauris eget elit et sem commodo interdum. Aenean dolor sem, tincidunt ac neque tempus, hendrerit blandit lacus. Vivamus placerat nulla in mi tristique, fringilla fermentum nisl vehicula. Nullam quis eros non magna tincidunt interdum ac eu eros. Morbi malesuada pulvinar ultrices. Etiam bibendum efficitur risus, sit amet venenatis urna ullamcorper non. Proin fermentum malesuada tortor, vitae mattis sem scelerisque in. Curabitur rutrum leo at mi efficitur suscipit. Vivamus tristique lorem eros, sit amet malesuada augue sodales sed.</p>\r\n', NULL, 'page', 'article', 0, 1, 2, 1524062141, 1524660186, 0, 0, 0),
(5, 2, 'Hotel', 'Hotel', '', 'Hotel', 'hotel2', '', 'index,follow', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla vel est at rhoncus. Cras porttitor ligula vel magna vehicula accumsan. Mauris eget elit et sem commodo interdum. Aenean dolor sem, tincidunt ac neque tempus, hendrerit blandit lacus. Vivamus placerat nulla in mi tristique, fringilla fermentum nisl vehicula. Nullam quis eros non magna tincidunt interdum ac eu eros. Morbi malesuada pulvinar ultrices. Etiam bibendum efficitur risus, sit amet venenatis urna ullamcorper non. Proin fermentum malesuada tortor, vitae mattis sem scelerisque in. Curabitur rutrum leo at mi efficitur suscipit. Vivamus tristique lorem eros, sit amet malesuada augue sodales sed.</p>\r\n', NULL, 'page', 'article', 0, 1, 2, 1524062141, 1524660186, 0, 0, 0),
(5, 3, 'صفحتي الأولى', 'صفحتي الأولى', '', 'صفحتي الأولى', 'my-first-page', '', 'index,follow', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla vel est at rhoncus. Cras porttitor ligula vel magna vehicula accumsan. Mauris eget elit et sem commodo interdum. Aenean dolor sem, tincidunt ac neque tempus, hendrerit blandit lacus. Vivamus placerat nulla in mi tristique, fringilla fermentum nisl vehicula. Nullam quis eros non magna tincidunt interdum ac eu eros. Morbi malesuada pulvinar ultrices. Etiam bibendum efficitur risus, sit amet venenatis urna ullamcorper non. Proin fermentum malesuada tortor, vitae mattis sem scelerisque in. Curabitur rutrum leo at mi efficitur suscipit. Vivamus tristique lorem eros, sit amet malesuada augue sodales sed.</p>\r\n', NULL, 'page', 'article', 0, 1, 2, 1524062141, 1524660186, 0, 0, 0),
(6, 1, 'Recherche', 'Recherche', '', 'Recherche', 'search', '', 'noindex,nofollow', '', '', '', NULL, 'search', '', 0, 1, 14, 1524062141, 1524062141, 0, 0, 1),
(6, 2, 'Search', 'Search', '', 'Search', 'search', '', 'noindex,nofollow', '', '', '', NULL, 'search', '', 0, 1, 14, 1524062141, 1524062141, 0, 0, 1),
(6, 3, 'بحث', 'بحث', '', 'بحث', 'search', '', 'noindex,nofollow', '', '', '', NULL, 'search', '', 0, 1, 14, 1524062141, 1524062141, 0, 0, 1),
(7, 1, 'Galerie', 'Galerie', '', 'Galerie', 'galerie', '', 'index,follow', '', '', '', NULL, 'gallery', 'gallery', 0, 1, 4, 1524062141, 1533810552, 0, 0, 0),
(7, 2, 'Gallery', 'Gallery', '', 'Gallery', 'gallery', '', 'index,follow', '', '', '', NULL, 'gallery', 'gallery', 0, 1, 4, 1524062141, 1533810552, 0, 0, 0),
(7, 3, 'صور معرض', 'صور معرض', '', 'صور معرض', 'gallery', '', 'index,follow', '', '', '', NULL, 'gallery', 'gallery', 0, 1, 4, 1524062141, 1533810552, 0, 0, 0),
(8, 1, '404', 'Erreur 404 : Page introuvable !', '', '404 Page introuvable', '404', '', 'noindex,nofollow', '', '', '<p>L\'URL demandée n\'a pas été trouvée sur ce serveur.<br />\r\nLa page que vous voulez afficher n\'existe pas, ou est temporairement indisponible.</p>\r\n\r\n<p>Merci d\'essayer les actions suivantes :</p>\r\n\r\n<ul>\r\n	<li>Assurez-vous que l\'URL dans la barre d\'adresse de votre navigateur est correctement orthographiée et formatée.</li>\r\n	<li>Si vous avez atteint cette page en cliquant sur un lien ou si vous pensez que cela concerne une erreur du serveur, contactez l\'administrateur pour l\'alerter.</li>\r\n</ul>\r\n', NULL, '404', '', 0, 1, 16, 1524062141, 1524062141, 0, 0, 1),
(8, 2, '404', '404 Error: Page not found!', '', '404 Not Found', '404', '', 'noindex,nofollow', '', '', '<p>The wanted URL was not found on this server.<br />\r\nThe page you wish to display does not exist, or is temporarily unavailable.</p>\r\n\r\n<p>Thank you for trying the following actions :</p>\r\n\r\n<ul>\r\n	<li>Be sure the URL in the address bar of your browser is correctly spelt and formated.</li>\r\n	<li>If you reached this page by clicking a link or if you think that it is about an error of the server, contact the administrator to alert him.</li>\r\n</ul>\r\n', NULL, '404', '', 0, 1, 16, 1524062141, 1524062141, 0, 0, 1),
(8, 3, '404', '404 Error: Page not found!', '', '404 Not Found', '404', '', 'noindex,nofollow', '', '', '<p>The wanted URL was not found on this server.<br />\r\nThe page you wish to display does not exist, or is temporarily unavailable.</p>\r\n\r\n<p>Thank you for trying the following actions :</p>\r\n\r\n<ul>\r\n	<li>Be sure the URL in the address bar of your browser is correctly spelt and formated.</li>\r\n	<li>If you reached this page by clicking a link or if you think that it is about an error of the server, contact the administrator to alert him.</li>\r\n</ul>\r\n', NULL, '404', '', 0, 1, 16, 1524062141, 1524062141, 0, 0, 1),
(9, 1, 'Chambres', 'Chambres', '', 'Chambres', 'chambres', '', 'index,follow', '', '', '', NULL, 'rooms', 'room', 0, 1, 3, 1524062141, 1533732349, 0, 0, 0),
(9, 2, 'Rooms', 'Rooms', '', 'Rooms', 'rooms', '', 'index,follow', '', '', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>\r\n', NULL, 'rooms', 'room', 0, 1, 3, 1524062141, 1533732349, 0, 0, 0),
(9, 3, 'الغرف', 'الغرف', '', 'الغرف', 'rooms', '', 'index,follow', '', '', '', NULL, 'rooms', 'room', 0, 1, 3, 1524062141, 1533732349, 0, 0, 0),
(10, 1, 'Réserver', 'Réserver', '', 'Réserver', 'reserver', '', 'noindex,nofollow', '', '', '', NULL, 'booking', '', 0, 1, 6, 1524062141, 1524062141, 0, 0, 1),
(10, 2, 'Booking', 'Booking', '', 'Booking', 'booking', '', 'noindex,nofollow', '', '', '', NULL, 'booking', '', 0, 1, 6, 1524062141, 1524062141, 0, 0, 1),
(10, 3, 'الحجز', 'الحجز', '', 'الحجز', 'booking', '', 'noindex,nofollow', '', '', '', NULL, 'booking', '', 0, 1, 6, 1524062141, 1524062141, 0, 0, 1),
(11, 1, 'Coordonnées', 'Coordonnées', '', 'Coordonnées', 'coordonnees', '', 'noindex,nofollow', '', '', '', 10, 'details', '', 0, 1, 7, 1524062141, 1524062141, 0, 0, 1),
(11, 2, 'Details', 'Booking details', '', 'Booking details', 'booking-details', '', 'noindex,nofollow', '', '', '', 10, 'details', '', 0, 1, 7, 1524062141, 1524062141, 0, 0, 1),
(11, 3, 'تفاصيل الحجز', 'تفاصيل الحجز', '', 'تفاصيل الحجز', 'booking-details', '', 'noindex,nofollow', '', '', '', 10, 'details', '', 0, 1, 7, 1524062141, 1524062141, 0, 0, 1),
(12, 1, 'Paiement', 'Paiement', '', 'Paiement', 'paiement', '', 'noindex,nofollow', '', '', '', 13, 'payment', '', 0, 1, 10, 1524062141, 1524062141, 0, 0, 1),
(12, 2, 'Payment', 'Payment', '', 'Payment', 'payment', '', 'noindex,nofollow', '', '', '', 13, 'payment', '', 0, 1, 10, 1524062141, 1524062141, 0, 0, 1),
(12, 3, 'دفع', 'دفع', '', 'دفع', 'payment', '', 'noindex,nofollow', '', '', '', 13, 'payment', '', 0, 1, 10, 1524062141, 1524062141, 0, 0, 1),
(13, 1, 'Résumé de la réservation', 'Résumé de la réservation', '', 'Résumé de la réservation', 'resume-reservation', '', 'noindex,nofollow', '', '', '', 11, 'summary', '', 0, 1, 8, 1524062141, 1524062141, 0, 0, 1),
(13, 2, 'Summary', 'Booking summary', '', 'Booking summary', 'booking-summary', '', 'noindex,nofollow', '', '', '', 11, 'summary', '', 0, 1, 8, 1524062141, 1524062141, 0, 0, 1),
(13, 3, 'ملخص الحجز', 'ملخص الحجز', '', 'ملخص الحجز', 'booking-summary', '', 'noindex,nofollow', '', '', '', 11, 'summary', '', 0, 1, 8, 1524062141, 1524062141, 0, 0, 1),
(14, 1, 'Espace client', 'Espace client', '', 'Espace client', 'espace-client', '', 'noindex,nofollow', '', '', '', NULL, 'account', '', 0, 1, 17, 1524062141, 1524062141, 0, 0, 1),
(14, 2, 'Account', 'Account', '', 'Account', 'account', '', 'noindex,nofollow', '', '', '', NULL, 'account', '', 0, 1, 17, 1524062141, 1524062141, 0, 0, 1),
(14, 3, 'Account', 'Account', '', 'Account', 'account', '', 'noindex,nofollow', '', '', '', NULL, 'account', '', 0, 1, 17, 1524062141, 1524062141, 0, 0, 1),
(15, 1, 'Activités', 'Activités', '', 'Activités', 'reservation-activitees', '', 'noindex,nofollow', '', '', '', 10, 'booking-activities', '', 0, 1, 9, 1524062141, 1524062141, 0, 0, 1),
(15, 2, 'Activities', 'Activities', '', 'Activities', 'booking-activities', '', 'noindex,nofollow', '', '', '', 10, 'booking-activities', '', 0, 1, 9, 1524062141, 1524062141, 0, 0, 1),
(15, 3, 'Activities', 'Activities', '', 'Activities', 'booking-activities', '', 'noindex,nofollow', '', '', '', 10, 'booking-activities', '', 0, 1, 9, 1524062141, 1524062141, 0, 0, 1),
(16, 1, 'Activités', 'Activités', '', 'Activités', 'activitees', '', 'noindex,follow', '', '', '', NULL, 'activities', 'activity', 0, 1, 5, 1524062141, 1524062141, 0, 0, 1),
(16, 2, 'Activities', 'Activities', '', 'Activities', 'activities', '', 'noindex,follow', '', '', '', NULL, 'activities', 'activity', 0, 1, 5, 1524062141, 1524062141, 0, 0, 1),
(16, 3, 'Activities', 'Activities', '', 'Activities', 'activities', '', 'noindex,follow', '', '', '', NULL, 'activities', 'activity', 0, 1, 5, 1524062141, 1524062141, 0, 0, 1),
(17, 1, 'Blog', 'Blog', '', 'Blog', 'blog', '', 'index,follow', '', '', '', NULL, 'blog', 'article-blog', 0, 1, 15, 1524062141, 1524062141, 0, 0, 0),
(17, 2, 'Blog', 'Blog', '', 'Blog', 'blog', '', 'index,follow', '', '', '', NULL, 'blog', 'article-blog', 0, 1, 15, 1524062141, 1524062141, 0, 0, 0),
(17, 3, 'مدونة', 'مدونة', '', 'مدونة', 'blog', '', 'index,follow', '', '', '', NULL, 'blog', 'article-blog', 0, 1, 15, 1524062141, 1524062141, 0, 0, 0),
(18, 1, 'Special Offers', 'Special Offers', '', 'special-offers', '', '', '', NULL, '', '', NULL, 'offers', 'offer', 0, 1, 18, 1530613153, 1533734392, 0, NULL, NULL),
(18, 2, 'Special Offers', 'Special Offers', '', 'Special Offers', 'special-offers', '', '', NULL, '', '', NULL, 'offers', 'offer', 0, 1, 18, 1530613153, 1533734392, 0, NULL, NULL),
(18, 3, 'Special Offers', 'Special Offers', '', 'special-offers', '', '', '', NULL, '', '', NULL, 'offers', 'offer', 0, 1, 18, 1530613153, 1533734392, 0, NULL, NULL),
(19, 1, 'About us', 'About us', '', 'about-us', '', '', '', NULL, '', '', NULL, 'page', '', 0, 1, 19, 1530618260, 1534154851, 0, NULL, NULL),
(19, 2, 'About us', 'About us', '', 'About us', 'about-us', '', '', NULL, '', '<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width: 100%;\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">Our Philosophy</th>\r\n			<th scope=\"col\">Our Values</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</td>\r\n			<td>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p> </p>\r\n\r\n<p> </p>\r\n\r\n<p> </p>\r\n', NULL, 'page', '', 0, 1, 19, 1530618260, 1534154851, 0, NULL, NULL),
(19, 3, 'About us', 'About us', '', 'about-us', '', '', '', NULL, '', '', NULL, 'page', '', 0, 1, 19, 1530618260, 1534154851, 0, NULL, NULL),
(20, 1, 'Your beach', 'Your beach', '', 'your-beach', '', '', '', NULL, '', '', NULL, 'page', '', 0, 1, 20, 1530618294, 1533899982, 0, NULL, NULL),
(20, 2, 'Your beach', 'Your beach', '', 'your-beach', 'your-beach', '', '', NULL, '', '', NULL, 'page', '', 0, 1, 20, 1530618294, 1533899982, 0, NULL, NULL),
(20, 3, 'Your beach', 'Your beach', '', 'your-beach', '', '', '', NULL, '', '', NULL, 'page', '', 0, 1, 20, 1530618294, 1533899982, 0, NULL, NULL),
(21, 1, '', '', '', '', '', '', '', NULL, '', '', NULL, 'page', '', 0, 1, 21, 1533900151, 1533900151, 0, NULL, NULL),
(21, 2, 'Conferences & Events', 'Conferences & Events', '', 'Conferences & Events', 'conferences-events', '', '', NULL, '', '', NULL, 'page', '', 0, 1, 21, 1533900151, 1533900151, 0, NULL, NULL),
(21, 3, '', '', '', '', '', '', '', NULL, '', '', NULL, 'page', '', 0, 1, 21, 1533900151, 1533900151, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pm_page_file`
--

DROP TABLE IF EXISTS `pm_page_file`;
CREATE TABLE IF NOT EXISTS `pm_page_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `home` int(11) DEFAULT '0',
  `checked` int(11) DEFAULT '1',
  `rank` int(11) DEFAULT '0',
  `file` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`lang`),
  KEY `page_file_fkey` (`id_item`,`lang`),
  KEY `page_file_lang_fkey` (`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pm_rate`
--

DROP TABLE IF EXISTS `pm_rate`;
CREATE TABLE IF NOT EXISTS `pm_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_room` int(11) NOT NULL,
  `start_date` int(11) DEFAULT NULL,
  `end_date` int(11) DEFAULT NULL,
  `id_package` int(11) DEFAULT NULL,
  `price` double DEFAULT '0',
  `child_price` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `discount_type` varchar(10) DEFAULT NULL,
  `people` int(11) DEFAULT NULL,
  `price_sup` double DEFAULT NULL,
  `fixed_sup` double DEFAULT NULL,
  `id_tax` int(11) DEFAULT NULL,
  `taxes` text,
  PRIMARY KEY (`id`),
  KEY `rate_room_fkey` (`id_room`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pm_room`
--

DROP TABLE IF EXISTS `pm_room`;
CREATE TABLE IF NOT EXISTS `pm_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` int(11) NOT NULL,
  `max_children` int(11) DEFAULT '1',
  `max_adults` int(11) DEFAULT '1',
  `max_people` int(11) DEFAULT NULL,
  `min_people` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `subtitle` varchar(250) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `descr` longtext,
  `facilities` varchar(250) DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT '1',
  `price` double NOT NULL DEFAULT '0',
  `home` int(11) DEFAULT '0',
  `checked` int(11) DEFAULT '0',
  `rank` int(11) DEFAULT '0',
  `start_lock` int(11) DEFAULT NULL,
  `end_lock` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`lang`),
  KEY `room_lang_fkey` (`lang`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm_room`
--

INSERT INTO `pm_room` (`id`, `lang`, `max_children`, `max_adults`, `max_people`, `min_people`, `title`, `subtitle`, `alias`, `descr`, `facilities`, `stock`, `price`, `home`, `checked`, `rank`, `start_lock`, `end_lock`) VALUES
(1, 1, 2, 2, 2, 1, 'Chambre Double Deluxe', 'Petit-déjeuner inclus', 'chambre-double-deluxe', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut eleifend diam. Etiam molestie quam at nunc tempus, ac porttitor ante rutrum. Donec ipsum orci, molestie sit amet nibh a, accumsan varius nisl. Suspendisse blandit efficitur interdum. Nulla auctor tortor eu volutpat imperdiet. Nam at tempus sapien, sit amet porttitor neque. Nam lacinia ex libero, vel egestas ante vehicula nec.</p>\r\n\r\n<p>Sed sed dignissim est. Donec egestas nisl eu congue rhoncus. Nulla finibus malesuada mauris, et pellentesque diam scelerisque non. Duis auctor dapibus augue sed malesuada. Nam placerat at libero quis aliquam. Phasellus quam orci, dapibus sit amet finibus a, convallis volutpat arcu. Nullam condimentum quam id urna scelerisque varius. Duis a metus metus.</p>\r\n', '1,5,11,13,17,18,21,23,24,25,27,28,29,32', 4, 145, 1, 1, 1, NULL, NULL),
(1, 2, 2, 2, 2, 1, 'Deluxe Double Bedroom', 'Breakfast included', 'deluxe-double-bedroom', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut eleifend diam. Etiam molestie quam at nunc tempus, ac porttitor ante rutrum. Donec ipsum orci, molestie sit amet nibh a, accumsan varius nisl. Suspendisse blandit efficitur interdum. Nulla auctor tortor eu volutpat imperdiet. Nam at tempus sapien, sit amet porttitor neque. Nam lacinia ex libero, vel egestas ante vehicula nec.</p>\r\n\r\n<p>Sed sed dignissim est. Donec egestas nisl eu congue rhoncus. Nulla finibus malesuada mauris, et pellentesque diam scelerisque non. Duis auctor dapibus augue sed malesuada. Nam placerat at libero quis aliquam. Phasellus quam orci, dapibus sit amet finibus a, convallis volutpat arcu. Nullam condimentum quam id urna scelerisque varius. Duis a metus metus.</p>\r\n', '1,5,11,13,17,18,21,23,24,25,27,28,29,32', 4, 145, 1, 1, 1, NULL, NULL),
(1, 3, 2, 2, 2, 1, 'Deluxe Double Bedroom', 'Breakfast included', 'deluxe-double-bedroom', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut eleifend diam. Etiam molestie quam at nunc tempus, ac porttitor ante rutrum. Donec ipsum orci, molestie sit amet nibh a, accumsan varius nisl. Suspendisse blandit efficitur interdum. Nulla auctor tortor eu volutpat imperdiet. Nam at tempus sapien, sit amet porttitor neque. Nam lacinia ex libero, vel egestas ante vehicula nec.</p>\r\n\r\n<p>Sed sed dignissim est. Donec egestas nisl eu congue rhoncus. Nulla finibus malesuada mauris, et pellentesque diam scelerisque non. Duis auctor dapibus augue sed malesuada. Nam placerat at libero quis aliquam. Phasellus quam orci, dapibus sit amet finibus a, convallis volutpat arcu. Nullam condimentum quam id urna scelerisque varius. Duis a metus metus.</p>\r\n', '1,5,11,13,17,18,21,23,24,25,27,28,29,32', 4, 145, 1, 1, 1, NULL, NULL),
(3, 1, 4, 5, 5, 1, 'Suite Royale', 'Suite avec Piscine & Jacuzzi', 'suite-royale', '', '1,2,5,11,13,17,18,21,23,24,25,27,28,32,35,36,37,38,39', 2, 410, 1, 1, 2, NULL, NULL),
(3, 2, 4, 5, 5, 1, 'Royal suite', 'Pool & Jacuzzi Suite', 'royal-suite', '', '1,2,5,11,13,17,18,21,23,24,25,27,28,32,35,36,37,38,39', 2, 410, 1, 1, 2, NULL, NULL),
(3, 3, 4, 5, 5, 1, 'Royal suite', 'Pool & Jacuzzi Suite', 'royal-suite', '', '1,2,5,11,13,17,18,21,23,24,25,27,28,32,35,36,37,38,39', 2, 410, 1, 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pm_room_file`
--

DROP TABLE IF EXISTS `pm_room_file`;
CREATE TABLE IF NOT EXISTS `pm_room_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `home` int(11) DEFAULT '0',
  `checked` int(11) DEFAULT '1',
  `rank` int(11) DEFAULT '0',
  `file` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`lang`),
  KEY `room_file_fkey` (`id_item`,`lang`),
  KEY `room_file_lang_fkey` (`lang`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm_room_file`
--

INSERT INTO `pm_room_file` (`id`, `lang`, `id_item`, `home`, `checked`, `rank`, `file`, `label`, `type`) VALUES
(5, 1, 1, NULL, 1, 4, 'room1.jpg', NULL, 'image'),
(5, 2, 1, NULL, 1, 4, 'room1.jpg', NULL, 'image'),
(5, 3, 1, NULL, 1, 4, 'room1.jpg', NULL, 'image'),
(6, 1, 3, NULL, 1, 5, 'room1.jpg', NULL, 'image'),
(6, 2, 3, NULL, 1, 5, 'room1.jpg', NULL, 'image'),
(6, 3, 3, NULL, 1, 5, 'room1.jpg', NULL, 'image');

-- --------------------------------------------------------

--
-- Table structure for table `pm_service`
--

DROP TABLE IF EXISTS `pm_service`;
CREATE TABLE IF NOT EXISTS `pm_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `descr` text,
  `long_descr` text,
  `type` varchar(50) DEFAULT NULL,
  `rooms` varchar(250) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `id_tax` int(11) DEFAULT NULL,
  `taxes` text,
  `checked` int(11) DEFAULT '0',
  `rank` int(11) DEFAULT '0',
  PRIMARY KEY (`id`,`lang`),
  KEY `service_lang_fkey` (`lang`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm_service`
--

INSERT INTO `pm_service` (`id`, `lang`, `title`, `descr`, `long_descr`, `type`, `rooms`, `price`, `id_tax`, `taxes`, `checked`, `rank`) VALUES
(1, 1, 'Set de toilette', '1 serviette de toilette, 1 drap de douche, 1 tapis', '', 'qty-night', '4,1,3,2', 7, 1, '', 1, 1),
(1, 2, 'Rent of towel (kit)', '1 hand towel, 1 bath towel, 1 bath mat', '', 'qty-night', '4,1,3,2', 7, 1, '', 1, 1),
(1, 3, 'Rent of towel (kit)', '1 hand towel, 1 bath towel, 1 bath mat', '', 'qty-night', '4,1,3,2', 7, 1, '', 1, 1),
(2, 1, 'Ménage', '', '', 'package', '1,3,2', 50, 1, '', 1, 2),
(2, 2, 'Housework', '', '', 'package', '1,3,2', 50, 1, '', 1, 2),
(2, 3, 'Housework', '', '', 'package', '1,3,2', 50, 1, '', 1, 2),
(3, 1, 'Chauffage', '', '', 'night', '1,3,2', 8, 1, '', 1, 3),
(3, 2, 'Heating', '', '', 'night', '1,3,2', 8, 1, '', 1, 3),
(3, 3, 'Heating', '', '', 'night', '1,3,2', 8, 1, '', 1, 3),
(4, 1, 'Animal domestique', 'Précisez la race ci-dessous', '', 'qty-night', '4,1,3,2', 5, 1, '', 1, 4),
(4, 2, 'Pet', 'Specify the breed below', '', 'qty-night', '4,1,3,2', 5, 1, '', 1, 4),
(4, 3, 'Pet', 'Specify the breed below', '', 'qty-night', '4,1,3,2', 5, 1, '', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `pm_slide`
--

DROP TABLE IF EXISTS `pm_slide`;
CREATE TABLE IF NOT EXISTS `pm_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` int(11) NOT NULL,
  `legend` text,
  `url` varchar(250) DEFAULT NULL,
  `id_page` int(11) DEFAULT NULL,
  `checked` int(11) DEFAULT '0',
  `rank` int(11) DEFAULT '0',
  `id_slider` int(11) DEFAULT '1',
  PRIMARY KEY (`id`,`lang`),
  KEY `slide_lang_fkey` (`lang`),
  KEY `slide_page_fkey` (`id_page`,`lang`),
  KEY `FK_SlideSlider` (`id_slider`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm_slide`
--

INSERT INTO `pm_slide` (`id`, `lang`, `legend`, `url`, `id_page`, `checked`, `rank`, `id_slider`) VALUES
(2, 1, '', '', 1, 1, 1, 1),
(2, 2, '<h1>Enjoy the sunset</h1>\r\n\r\n<h2>The most beautiful beaches, turquoise clean sea, vibrant Mediterranean energy</h2>\r\n\r\n<a class=\"btn btn-royalSlider\"><span>Explore</span><a> \r\n', '', 1, 1, 1, 1),
(2, 3, '', '', 1, 1, 1, 1),
(3, 1, '', '', 19, 1, 2, NULL),
(3, 2, '', '', 19, 1, 2, NULL),
(3, 3, '', '', 19, 1, 2, NULL),
(5, 1, '', '', 19, 1, 3, NULL),
(5, 2, '', '', 19, 1, 3, NULL),
(5, 3, '', '', 19, 1, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pm_slider`
--

DROP TABLE IF EXISTS `pm_slider`;
CREATE TABLE IF NOT EXISTS `pm_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `rank` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm_slider`
--

INSERT INTO `pm_slider` (`id`, `name`, `rank`) VALUES
(1, 'Main Slider', 1),
(2, 'Main Slider', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pm_slide_file`
--

DROP TABLE IF EXISTS `pm_slide_file`;
CREATE TABLE IF NOT EXISTS `pm_slide_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `home` int(11) DEFAULT '0',
  `checked` int(11) DEFAULT '1',
  `rank` int(11) DEFAULT '0',
  `file` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`lang`),
  KEY `slide_file_fkey` (`id_item`,`lang`),
  KEY `slide_file_lang_fkey` (`lang`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm_slide_file`
--

INSERT INTO `pm_slide_file` (`id`, `lang`, `id_item`, `home`, `checked`, `rank`, `file`, `label`, `type`) VALUES
(3, 1, 3, NULL, 1, 4, 'bmw-e46-black-wallpaper-3.jpg', '', 'image'),
(3, 2, 3, NULL, 1, 4, 'bmw-e46-black-wallpaper-3.jpg', '', 'image'),
(3, 3, 3, NULL, 1, 4, 'bmw-e46-black-wallpaper-3.jpg', '', 'image'),
(10, 1, 5, NULL, 1, 5, 'aktuelnosti-danielwellington-946x400px.png', '', 'image'),
(10, 2, 5, NULL, 1, 5, 'aktuelnosti-danielwellington-946x400px.png', '', 'image'),
(10, 3, 5, NULL, 1, 5, 'aktuelnosti-danielwellington-946x400px.png', '', 'image'),
(11, 1, 2, NULL, 1, 6, 'fotografija.jpg', '', 'image'),
(11, 2, 2, NULL, 1, 6, 'fotografija.jpg', '', 'image'),
(11, 3, 2, NULL, 1, 6, 'fotografija.jpg', '', 'image');

-- --------------------------------------------------------

--
-- Table structure for table `pm_social`
--

DROP TABLE IF EXISTS `pm_social`;
CREATE TABLE IF NOT EXISTS `pm_social` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `url` text,
  `checked` int(11) DEFAULT '1',
  `rank` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pm_tag`
--

DROP TABLE IF EXISTS `pm_tag`;
CREATE TABLE IF NOT EXISTS `pm_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` int(11) NOT NULL,
  `value` varchar(250) DEFAULT NULL,
  `pages` varchar(250) DEFAULT NULL,
  `checked` int(11) DEFAULT '0',
  `rank` int(11) DEFAULT '0',
  PRIMARY KEY (`id`,`lang`),
  KEY `tag_lang_fkey` (`lang`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm_tag`
--

INSERT INTO `pm_tag` (`id`, `lang`, `value`, `pages`, `checked`, `rank`) VALUES
(1, 1, 'Uncategorised', '5', 1, 1),
(1, 2, 'Uncategorised', '5', 1, 1),
(1, 3, 'Uncategorised', '5', 1, 1),
(2, 1, 'Testimonial', '', 1, 2),
(2, 2, 'Testimonial', '', 1, 2),
(2, 3, 'Testimonial', '', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pm_tax`
--

DROP TABLE IF EXISTS `pm_tax`;
CREATE TABLE IF NOT EXISTS `pm_tax` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `value` double DEFAULT '0',
  `checked` int(11) DEFAULT '0',
  `rank` int(11) DEFAULT '0',
  PRIMARY KEY (`id`,`lang`),
  KEY `tax_lang_fkey` (`lang`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm_tax`
--

INSERT INTO `pm_tax` (`id`, `lang`, `name`, `value`, `checked`, `rank`) VALUES
(1, 1, 'TVA', 10, 1, 1),
(1, 2, 'VAT', 10, 1, 1),
(1, 3, 'VAT', 10, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pm_text`
--

DROP TABLE IF EXISTS `pm_text`;
CREATE TABLE IF NOT EXISTS `pm_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `value` text,
  `display_on` varchar(10) NOT NULL DEFAULT 'front',
  PRIMARY KEY (`id`,`lang`),
  KEY `text_lang_fkey` (`lang`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm_text`
--

INSERT INTO `pm_text` (`id`, `lang`, `name`, `value`, `display_on`) VALUES
(1, 1, 'CREATION', 'Création', 'front'),
(1, 2, 'CREATION', 'Creation', 'front'),
(1, 3, 'CREATION', 'إنشاء', 'front'),
(2, 1, 'MESSAGE', 'Message', 'front'),
(2, 2, 'MESSAGE', 'Message', 'front'),
(2, 3, 'MESSAGE', 'رسالة', 'front'),
(3, 1, 'EMAIL', 'E-mail', 'front'),
(3, 2, 'EMAIL', 'E-mail', 'front'),
(3, 3, 'EMAIL', 'بَرِيدٌ إلِكْترونيّ', 'front'),
(4, 1, 'PHONE', 'Tél.', 'front'),
(4, 2, 'PHONE', 'Phone', 'front'),
(4, 3, 'PHONE', 'رقم هاتف', 'front'),
(5, 1, 'FAX', 'Fax', 'front'),
(5, 2, 'FAX', 'Fax', 'front'),
(5, 3, 'FAX', 'فاكس', 'front'),
(6, 1, 'COMPANY', 'Société', 'front'),
(6, 2, 'COMPANY', 'Company', 'front'),
(6, 3, 'COMPANY', 'مشروع', 'front'),
(7, 1, 'COPY_CODE', 'Recopiez le code', 'front'),
(7, 2, 'COPY_CODE', 'Copy the code', 'front'),
(7, 3, 'COPY_CODE', 'رمز الأمان', 'front'),
(8, 1, 'SUBJECT', 'Sujet', 'front'),
(8, 2, 'SUBJECT', 'Subject', 'front'),
(8, 3, 'SUBJECT', 'موضوع', 'front'),
(9, 1, 'REQUIRED_FIELD', 'Champ requis', 'front'),
(9, 2, 'REQUIRED_FIELD', 'Required field', 'front'),
(9, 3, 'REQUIRED_FIELD', 'الحقل المطلوب', 'front'),
(10, 1, 'INVALID_CAPTCHA_CODE', 'Le code de sécurité saisi est incorrect', 'front'),
(10, 2, 'INVALID_CAPTCHA_CODE', 'Invalid security code', 'front'),
(10, 3, 'INVALID_CAPTCHA_CODE', 'رمز الحماية أدخلته غير صحيح', 'front'),
(11, 1, 'INVALID_EMAIL', 'Adresse e-mail invalide', 'front'),
(11, 2, 'INVALID_EMAIL', 'Invalid email address', 'front'),
(11, 3, 'INVALID_EMAIL', 'بريد إلكتروني خاطئ', 'front'),
(12, 1, 'FIRSTNAME', 'Prénom', 'front'),
(12, 2, 'FIRSTNAME', 'Firstname', 'front'),
(12, 3, 'FIRSTNAME', 'الاسم الأول', 'front'),
(13, 1, 'LASTNAME', 'Nom', 'front'),
(13, 2, 'LASTNAME', 'Lastname', 'front'),
(13, 3, 'LASTNAME', 'اسم العائلة', 'front'),
(14, 1, 'ADDRESS', 'Adresse', 'front'),
(14, 2, 'ADDRESS', 'Address', 'front'),
(14, 3, 'ADDRESS', 'عنوان الشارع', 'front'),
(15, 1, 'POSTCODE', 'Code postal', 'front'),
(15, 2, 'POSTCODE', 'Post code', 'front'),
(15, 3, 'POSTCODE', 'الرمز البريدي', 'front'),
(16, 1, 'CITY', 'Ville', 'front'),
(16, 2, 'CITY', 'City', 'front'),
(16, 3, 'CITY', 'مدينة', 'front'),
(17, 1, 'MOBILE', 'Portable', 'front'),
(17, 2, 'MOBILE', 'Mobile', 'front'),
(17, 3, 'MOBILE', 'هاتف', 'front'),
(18, 1, 'ADD', 'Ajouter', 'front'),
(18, 2, 'ADD', 'Add', 'front'),
(18, 3, 'ADD', 'إضافة على', 'front'),
(19, 1, 'EDIT', 'Modifier', 'front'),
(19, 2, 'EDIT', 'Edit', 'front'),
(19, 3, 'EDIT', 'تغيير', 'front'),
(20, 1, 'INVALID_INPUT', 'Saisie invalide', 'front'),
(20, 2, 'INVALID_INPUT', 'Invalid input', 'front'),
(20, 3, 'INVALID_INPUT', 'إدخال غير صالح', 'front'),
(21, 1, 'MAIL_DELIVERY_FAILURE', 'Echec lors de l\'envoi du message.', 'front'),
(21, 2, 'MAIL_DELIVERY_FAILURE', 'A failure occurred during the delivery of this message.', 'front'),
(21, 3, 'MAIL_DELIVERY_FAILURE', 'حدث فشل أثناء تسليم هذه الرسالة.', 'front'),
(22, 1, 'MAIL_DELIVERY_SUCCESS', 'Merci de votre intérêt, votre message a bien été envoyé.\nNous vous contacterons dans les plus brefs délais.', 'front'),
(22, 2, 'MAIL_DELIVERY_SUCCESS', 'Thank you for your interest, your message has been sent.\nWe will contact you as soon as possible.', 'front'),
(22, 3, 'MAIL_DELIVERY_SUCCESS', 'خزان لاهتمامك ، تم إرسال رسالتك . سوف نتصل بك في أقرب وقت ممكن .', 'front'),
(23, 1, 'SEND', 'Envoyer', 'front'),
(23, 2, 'SEND', 'Send', 'front'),
(23, 3, 'SEND', 'ارسل انت', 'front'),
(24, 1, 'FORM_ERRORS', 'Le formulaire comporte des erreurs.', 'front'),
(24, 2, 'FORM_ERRORS', 'The following form contains some errors.', 'front'),
(24, 3, 'FORM_ERRORS', 'النموذج التالي يحتوي على بعض الأخطاء.', 'front'),
(25, 1, 'FROM_DATE', 'Du', 'front'),
(25, 2, 'FROM_DATE', 'From', 'front'),
(25, 3, 'FROM_DATE', 'من', 'front'),
(26, 1, 'TO_DATE', 'au', 'front'),
(26, 2, 'TO_DATE', 'till', 'front'),
(26, 3, 'TO_DATE', 'حتى', 'front'),
(27, 1, 'FROM', 'De', 'front'),
(27, 2, 'FROM', 'From', 'front'),
(27, 3, 'FROM', 'من', 'front'),
(28, 1, 'TO', 'à', 'front'),
(28, 2, 'TO', 'to', 'front'),
(28, 3, 'TO', 'إلى', 'front'),
(29, 1, 'BOOK', 'Réserver', 'front'),
(29, 2, 'BOOK', 'Book', 'front'),
(29, 3, 'BOOK', 'للحجز', 'front'),
(30, 1, 'READMORE', 'Lire la suite', 'front'),
(30, 2, 'READMORE', 'Read more', 'front'),
(30, 3, 'READMORE', 'اقرأ المزيد', 'front'),
(31, 1, 'BACK', 'Retour', 'front'),
(31, 2, 'BACK', 'Back', 'front'),
(31, 3, 'BACK', 'عودة', 'front'),
(32, 1, 'DISCOVER', 'Découvrir', 'front'),
(32, 2, 'DISCOVER', 'Discover', 'front'),
(32, 3, 'DISCOVER', 'اكتشف', 'front'),
(33, 1, 'ALL', 'Tous', 'front'),
(33, 2, 'ALL', 'All', 'front'),
(33, 3, 'ALL', 'كل', 'front'),
(34, 1, 'ALL_RIGHTS_RESERVED', 'Tous droits réservés', 'front'),
(34, 2, 'ALL_RIGHTS_RESERVED', 'All rights reserved', 'front'),
(34, 3, 'ALL_RIGHTS_RESERVED', 'جميع الحقوق محفوظه', 'front'),
(35, 1, 'FORGOTTEN_PASSWORD', 'Mot de passe oublié ?', 'front'),
(35, 2, 'FORGOTTEN_PASSWORD', 'Forgotten password?', 'front'),
(35, 3, 'FORGOTTEN_PASSWORD', 'هل نسيت كلمة المرور؟', 'front'),
(36, 1, 'LOG_IN', 'Connexion', 'front'),
(36, 2, 'LOG_IN', 'Log in', 'front'),
(36, 3, 'LOG_IN', 'تسجيل الدخول', 'front'),
(37, 1, 'SIGN_UP', 'Inscription', 'front'),
(37, 2, 'SIGN_UP', 'Sign up', 'front'),
(37, 3, 'SIGN_UP', 'تسجيل', 'front'),
(38, 1, 'LOG_OUT', 'Déconnexion', 'front'),
(38, 2, 'LOG_OUT', 'Log out', 'front'),
(38, 3, 'LOG_OUT', 'تسجيل الخروج', 'front'),
(39, 1, 'SEARCH', 'Rechercher', 'front'),
(39, 2, 'SEARCH', 'Search', 'front'),
(39, 3, 'SEARCH', 'ابحث عن', 'front'),
(40, 1, 'RESET_PASS_SUCCESS', 'Votre nouveau mot de passe vous a été envoyé sur votre adresse e-mail.', 'front'),
(40, 2, 'RESET_PASS_SUCCESS', 'Your new password was sent to you on your e-mail.', 'front'),
(40, 3, 'RESET_PASS_SUCCESS', 'تم إرسال كلمة المرور الجديدة إلى عنوان البريد الإلكتروني الخاص بك', 'front'),
(41, 1, 'PASS_TOO_SHORT', 'Le mot de passe doit contenir 6 caractères au minimum', 'front'),
(41, 2, 'PASS_TOO_SHORT', 'The password must contain 6 characters at least', 'front'),
(41, 3, 'PASS_TOO_SHORT', 'يجب أن يحتوي على كلمة المرور ستة أحرف على الأقل', 'front'),
(42, 1, 'PASS_DONT_MATCH', 'Les mots de passe doivent correspondre', 'front'),
(42, 2, 'PASS_DONT_MATCH', 'The passwords don\'t match', 'front'),
(42, 3, 'PASS_DONT_MATCH', 'يجب أن تتطابق كلمات المرور', 'front'),
(43, 1, 'ACCOUNT_EXISTS', 'Un compte existe déjà avec cette adresse e-mail', 'front'),
(43, 2, 'ACCOUNT_EXISTS', 'An account already exists with this e-mail', 'front'),
(43, 3, 'ACCOUNT_EXISTS', 'حساب موجود بالفعل مع هذا عنوان البريد الإلكتروني', 'front'),
(44, 1, 'ACCOUNT_CREATED', 'Votre compte a bien été créé. Vous allez recevoir un email de confirmation. Cliquez sur le lien de cet e-mail pour confirmer votre compte avant de continuer.', 'front'),
(44, 2, 'ACCOUNT_CREATED', 'Your account has been created. You will receive a confirmation email. Click on the link in this email to confirm your account before continuing.', 'front'),
(44, 3, 'ACCOUNT_CREATED', 'Your account has been created. You will receive a confirmation email. Click on the link in this email to confirm your account before continuing.', 'front'),
(45, 1, 'INCORRECT_LOGIN', 'Les informations de connexion sont incorrectes.', 'front'),
(45, 2, 'INCORRECT_LOGIN', 'Incorrect login information.', 'front'),
(45, 3, 'INCORRECT_LOGIN', 'معلومات تسجيل الدخول غير صحيحة.', 'front'),
(46, 1, 'I_SIGN_UP', 'Je m\'inscris', 'front'),
(46, 2, 'I_SIGN_UP', 'I sign up', 'front'),
(46, 3, 'I_SIGN_UP', 'يمكنني الاشتراك', 'front'),
(47, 1, 'ALREADY_HAVE_ACCOUNT', 'J\'ai déjà un compte', 'front'),
(47, 2, 'ALREADY_HAVE_ACCOUNT', 'I already have an account', 'front'),
(47, 3, 'ALREADY_HAVE_ACCOUNT', 'لدي بالفعل حساب', 'front'),
(48, 1, 'MY_ACCOUNT', 'Mon compte', 'front'),
(48, 2, 'MY_ACCOUNT', 'My account', 'front'),
(48, 3, 'MY_ACCOUNT', 'حسابي', 'front'),
(49, 1, 'COMMENTS', 'Commentaires', 'front'),
(49, 2, 'COMMENTS', 'Comments', 'front'),
(49, 3, 'COMMENTS', 'تعليقات', 'front'),
(50, 1, 'LET_US_KNOW', 'Faîtes-nous savoir ce que vous pensez', 'front'),
(50, 2, 'LET_US_KNOW', 'Let us know what you think', 'front'),
(50, 3, 'LET_US_KNOW', 'ماذا عن رايك؟', 'front'),
(51, 1, 'COMMENT_SUCCESS', 'Merci de votre intérêt, votre commentaire va être soumis à validation.', 'front'),
(51, 2, 'COMMENT_SUCCESS', 'Thank you for your interest, your comment will be checked.', 'front'),
(51, 3, 'COMMENT_SUCCESS', 'شكرا ل اهتمامك، و سيتم التحقق من صحة للتعليق.', 'front'),
(52, 1, 'NO_SEARCH_RESULT', 'Aucun résultat. Vérifiez l\'orthographe des termes de recherche (> 3 caractères) ou essayez d\'autres mots.', 'front'),
(52, 2, 'NO_SEARCH_RESULT', 'No result. Check the spelling terms of search (> 3 characters) or try other words.', 'front'),
(52, 3, 'NO_SEARCH_RESULT', 'لا نتيجة. التدقيق الإملائي للكلمات (أكثر من ثلاثة أحرف ) أو محاولة بعبارة أخرى .', 'front'),
(53, 1, 'SEARCH_EXCEEDED', 'Nombre de recherches dépassé.', 'front'),
(53, 2, 'SEARCH_EXCEEDED', 'Number of researches exceeded.', 'front'),
(53, 3, 'SEARCH_EXCEEDED', 'عدد من الأبحاث السابقة .', 'front'),
(54, 1, 'SECONDS', 'secondes', 'front'),
(54, 2, 'SECONDS', 'seconds', 'front'),
(54, 3, 'SECONDS', 'ثواني', 'front'),
(55, 1, 'FOR_A_TOTAL_OF', 'sur un total de', 'front'),
(55, 2, 'FOR_A_TOTAL_OF', 'for a total of', 'front'),
(55, 3, 'FOR_A_TOTAL_OF', 'من الكل', 'front'),
(56, 1, 'COMMENT', 'Commentaire', 'front'),
(56, 2, 'COMMENT', 'Comment', 'front'),
(56, 3, 'COMMENT', 'تعقيب', 'front'),
(57, 1, 'VIEW', 'Visionner', 'front'),
(57, 2, 'VIEW', 'View', 'front'),
(57, 3, 'VIEW', 'ل عرض', 'front'),
(58, 1, 'RECENT_ARTICLES', 'Articles récents', 'front'),
(58, 2, 'RECENT_ARTICLES', 'Recent articles', 'front'),
(58, 3, 'RECENT_ARTICLES', 'المقالات الأخيرة', 'front'),
(59, 1, 'RSS_FEED', 'Flux RSS', 'front'),
(59, 2, 'RSS_FEED', 'RSS feed', 'front'),
(59, 3, 'RSS_FEED', 'تغذية RSS', 'front'),
(60, 1, 'COUNTRY', 'Pays', 'front'),
(60, 2, 'COUNTRY', 'Country', 'front'),
(60, 3, 'COUNTRY', 'Country', 'front'),
(61, 1, 'ROOM', 'Chambre', 'front'),
(61, 2, 'ROOM', 'Room', 'front'),
(61, 3, 'ROOM', 'Room', 'front'),
(62, 1, 'INCL_VAT', 'TTC', 'front'),
(62, 2, 'INCL_VAT', 'incl. VAT', 'front'),
(62, 3, 'INCL_VAT', 'incl. VAT', 'front'),
(63, 1, 'NIGHTS', 'nuit(s)', 'front'),
(63, 2, 'NIGHTS', 'night(s)', 'front'),
(63, 3, 'NIGHTS', 'night(s)', 'front'),
(64, 1, 'ADULTS', 'Adultes', 'front'),
(64, 2, 'ADULTS', 'Adults', 'front'),
(64, 3, 'ADULTS', 'Adults', 'front'),
(65, 1, 'CHILDREN', 'Enfants', 'front'),
(65, 2, 'CHILDREN', 'Children', 'front'),
(65, 3, 'CHILDREN', 'Children', 'front'),
(66, 1, 'PERSONS', 'personnes', 'front'),
(66, 2, 'PERSONS', 'persons', 'front'),
(66, 3, 'PERSONS', 'persons', 'front'),
(67, 1, 'CONTACT_DETAILS', 'Coordonnées', 'front'),
(67, 2, 'CONTACT_DETAILS', 'Contact details', 'front'),
(67, 3, 'CONTACT_DETAILS', 'Contact details', 'front'),
(68, 1, 'NO_AVAILABILITY', 'Aucune disponibilité', 'front'),
(68, 2, 'NO_AVAILABILITY', 'No availability', 'front'),
(68, 3, 'NO_AVAILABILITY', 'No availability', 'front'),
(69, 1, 'AVAILABILITIES', 'Disponibilités', 'front'),
(69, 2, 'AVAILABILITIES', 'Availabilities', 'front'),
(69, 3, 'AVAILABILITIES', 'Availabilities', 'front'),
(70, 1, 'CHECK', 'Vérifier', 'front'),
(70, 2, 'CHECK', 'Check', 'front'),
(70, 3, 'CHECK', 'Check', 'front'),
(71, 1, 'BOOKING_DETAILS', 'Détails de la réservation', 'front'),
(71, 2, 'BOOKING_DETAILS', 'Booking details', 'front'),
(71, 3, 'BOOKING_DETAILS', 'Booking details', 'front'),
(72, 1, 'SPECIAL_REQUESTS', 'Demandes spéciales', 'front'),
(72, 2, 'SPECIAL_REQUESTS', 'Special requests', 'front'),
(72, 3, 'SPECIAL_REQUESTS', 'Special requests', 'front'),
(73, 1, 'PREVIOUS_STEP', 'Étape précédente', 'front'),
(73, 2, 'PREVIOUS_STEP', 'Previous step', 'front'),
(73, 3, 'PREVIOUS_STEP', 'Previous step', 'front'),
(74, 1, 'CONFIRM_BOOKING', 'Confirmer la réservation', 'front'),
(74, 2, 'CONFIRM_BOOKING', 'Confirm the booking', 'front'),
(74, 3, 'CONFIRM_BOOKING', 'Confirm the booking', 'front'),
(75, 1, 'ALSO_DISCOVER', 'Découvrez aussi', 'front'),
(75, 2, 'ALSO_DISCOVER', 'Also discover', 'front'),
(75, 3, 'ALSO_DISCOVER', 'Also discover', 'front'),
(76, 1, 'CHECK_PEOPLE', 'Merci de vérifier le nombre de personnes pour l\'hébergement choisi.', 'front'),
(76, 2, 'CHECK_PEOPLE', 'Please verify the number of people for the chosen accommodation', 'front'),
(76, 3, 'CHECK_PEOPLE', 'Please verify the number of people for the chosen accommodation', 'front'),
(77, 1, 'BOOKING', 'Réservation', 'front'),
(77, 2, 'BOOKING', 'Booking', 'front'),
(77, 3, 'BOOKING', 'Booking', 'front'),
(78, 1, 'NIGHT', 'nuit', 'front'),
(78, 2, 'NIGHT', 'night', 'front'),
(78, 3, 'NIGHT', 'night', 'front'),
(79, 1, 'WEEK', 'semaine', 'front'),
(79, 2, 'WEEK', 'week', 'front'),
(79, 3, 'WEEK', 'week', 'front'),
(80, 1, 'EXTRA_SERVICES', 'Services supplémentaires', 'front'),
(80, 2, 'EXTRA_SERVICES', 'Extra services', 'front'),
(80, 3, 'EXTRA_SERVICES', 'Extra services', 'front'),
(81, 1, 'BOOKING_TERMS', '', 'front'),
(81, 2, 'BOOKING_TERMS', '', 'front'),
(81, 3, 'BOOKING_TERMS', '', 'front'),
(82, 1, 'NEXT_STEP', 'Étape suivante', 'front'),
(82, 2, 'NEXT_STEP', 'Next step', 'front'),
(82, 3, 'NEXT_STEP', 'Next step', 'front'),
(83, 1, 'TOURIST_TAX', 'Taxe de séjour', 'front'),
(83, 2, 'TOURIST_TAX', 'Tourist tax', 'front'),
(83, 3, 'TOURIST_TAX', 'Tourist tax', 'front'),
(84, 1, 'CHECK_IN', 'Arrivée', 'front'),
(84, 2, 'CHECK_IN', 'Check in', 'front'),
(84, 3, 'CHECK_IN', 'Check in', 'front'),
(85, 1, 'CHECK_OUT', 'Départ', 'front'),
(85, 2, 'CHECK_OUT', 'Check out', 'front'),
(85, 3, 'CHECK_OUT', 'Check out', 'front'),
(86, 1, 'TOTAL', 'Total', 'front'),
(86, 2, 'TOTAL', 'Total', 'front'),
(86, 3, 'TOTAL', 'Total', 'front'),
(87, 1, 'CAPACITY', 'Capacité', 'front'),
(87, 2, 'CAPACITY', 'Capacity', 'front'),
(87, 3, 'CAPACITY', 'Capacity', 'front'),
(88, 1, 'FACILITIES', 'Équipements', 'front'),
(88, 2, 'FACILITIES', 'Facilities', 'front'),
(88, 3, 'FACILITIES', 'Facilities', 'front'),
(89, 1, 'PRICE', 'Prix', 'front'),
(89, 2, 'PRICE', 'Price', 'front'),
(89, 3, 'PRICE', 'Price', 'front'),
(90, 1, 'MORE_DETAILS', 'Plus d\'infos', 'front'),
(90, 2, 'MORE_DETAILS', 'More details', 'front'),
(90, 3, 'MORE_DETAILS', 'More details', 'front'),
(91, 1, 'FROM_PRICE', 'À partir de', 'front'),
(91, 2, 'FROM_PRICE', 'From', 'front'),
(91, 3, 'FROM_PRICE', 'From', 'front'),
(92, 1, 'AMOUNT', 'Montant', 'front'),
(92, 2, 'AMOUNT', 'Amount', 'front'),
(92, 3, 'AMOUNT', 'Amount', 'front'),
(93, 1, 'PAY', 'Payer', 'front'),
(93, 2, 'PAY', 'Check out', 'front'),
(93, 3, 'PAY', 'Check out', 'front'),
(94, 1, 'PAYMENT_PAYPAL_NOTICE', 'Cliquez sur \"Payer\" ci-dessous, vous allez être redirigé vers le site sécurisé de PayPal', 'front'),
(94, 2, 'PAYMENT_PAYPAL_NOTICE', 'Click on \"Check Out\" below, you will be redirected towards the secure site of PayPal', 'front'),
(94, 3, 'PAYMENT_PAYPAL_NOTICE', 'Click on \"Check Out\" below, you will be redirected towards the secure site of PayPal', 'front'),
(95, 1, 'PAYMENT_CANCEL_NOTICE', 'Le paiement a été annulé.<br>Merci de votre visite et à bientôt.', 'front'),
(95, 2, 'PAYMENT_CANCEL_NOTICE', 'The payment has been cancelled.<br>Thank you for your visit and see you soon.', 'front'),
(95, 3, 'PAYMENT_CANCEL_NOTICE', 'The payment has been cancelled.<br>Thank you for your visit and see you soon.', 'front'),
(96, 1, 'PAYMENT_SUCCESS_NOTICE', 'Le paiement a été réalisé avec succès.<br>Merci de votre visite et à bientôt !', 'front'),
(96, 2, 'PAYMENT_SUCCESS_NOTICE', 'Your payment has been successfully processed.<br>Thank you for your visit and see you soon!', 'front'),
(96, 3, 'PAYMENT_SUCCESS_NOTICE', 'Your payment has been successfully processed.<br>Thank you for your visit and see you soon!', 'front'),
(97, 1, 'BILLING_ADDRESS', 'Adresse de facturation', 'front'),
(97, 2, 'BILLING_ADDRESS', 'Billing address', 'front'),
(97, 3, 'BILLING_ADDRESS', 'Billing address', 'front'),
(98, 1, 'DOWN_PAYMENT', 'Acompte', 'front'),
(98, 2, 'DOWN_PAYMENT', 'Down payment', 'front'),
(98, 3, 'DOWN_PAYMENT', 'Down payment', 'front'),
(99, 1, 'PAYMENT_CHECK_NOTICE', 'Merci d\'envoyer un chèque à \"Panda Resort, Santorini 847 00, Greece\" d\'un montant de {amount}.<br>Votre réservation sera validée à réception du paiement.<br>Merci de votre visite et à bientôt !', 'front'),
(99, 2, 'PAYMENT_CHECK_NOTICE', 'Thank you for sending a check of {amount} to \"Panda Resort, Santorini 847 00, Greece\".<br>Your reservation will be confirmed upon receipt of the payment.<br>Thank you for your visit and see you soon!', 'front'),
(99, 3, 'PAYMENT_CHECK_NOTICE', 'Thank you for sending a check of {amount} to \"Panda Resort, Santorini 847 00, Greece\".<br>Your reservation will be confirmed upon receipt of the payment.<br>Thank you for your visit and see you soon!', 'front'),
(100, 1, 'PAYMENT_ARRIVAL_NOTICE', 'Veuillez régler le solde de votre réservation d\'un montant de {amount} à votre arrivée.<br>Merci de votre visite et à bientôt !', 'front'),
(100, 2, 'PAYMENT_ARRIVAL_NOTICE', 'Thank you for paying the balance of {amount} for your booking on your arrival.<br>Thank you for your visit and see you soon!', 'front'),
(100, 3, 'PAYMENT_ARRIVAL_NOTICE', 'Thank you for paying the balance of {amount} for your booking on your arrival.<br>Thank you for your visit and see you soon!', 'front'),
(101, 1, 'MAX_PEOPLE', 'Pers. max', 'front'),
(101, 2, 'MAX_PEOPLE', 'Max people', 'front'),
(101, 3, 'MAX_PEOPLE', 'Max people', 'front'),
(102, 1, 'VAT_AMOUNT', 'Dont TVA', 'front'),
(102, 2, 'VAT_AMOUNT', 'VAT amount', 'front'),
(102, 3, 'VAT_AMOUNT', 'VAT amount', 'front'),
(103, 1, 'MIN_NIGHTS', 'Nuits min', 'front'),
(103, 2, 'MIN_NIGHTS', 'Min nights', 'front'),
(103, 3, 'MIN_NIGHTS', 'Min nights', 'front'),
(104, 1, 'MIN_PEOPLE', 'Pers. min', 'front'),
(104, 2, 'MIN_PEOPLE', 'Min people', 'front'),
(104, 3, 'MIN_PEOPLE', 'Min people', 'front'),
(105, 1, 'RATINGS', 'Note(s)', 'front'),
(105, 2, 'RATINGS', 'Rating(s)', 'front'),
(105, 3, 'RATINGS', 'Rating(s)', 'front'),
(106, 1, 'MAKE_A_REQUEST', 'Faire une demande', 'front'),
(106, 2, 'MAKE_A_REQUEST', 'Make a request', 'front'),
(106, 3, 'MAKE_A_REQUEST', 'Make a request', 'front'),
(109, 1, 'FULLNAME', 'Nom complet', 'front'),
(109, 2, 'FULLNAME', 'Full Name', 'front'),
(109, 3, 'FULLNAME', 'Full Name', 'front'),
(110, 1, 'PASSWORD', 'Mot de passe', 'front'),
(110, 2, 'PASSWORD', 'Password', 'front'),
(110, 3, 'PASSWORD', 'Password', 'front'),
(111, 1, 'LOG_IN_WITH_FACEBOOK', 'Enregistrez-vous avec Facebook', 'front'),
(111, 2, 'LOG_IN_WITH_FACEBOOK', 'Log in with Facebook', 'front'),
(111, 3, 'LOG_IN_WITH_FACEBOOK', 'Log in with Facebook', 'front'),
(112, 1, 'OR', 'Ou', 'front'),
(112, 2, 'OR', 'Or', 'front'),
(112, 3, 'OR', 'Or', 'front'),
(113, 1, 'NEW_PASSWORD', 'Nouveau mot de passe', 'front'),
(113, 2, 'NEW_PASSWORD', 'New password', 'front'),
(113, 3, 'NEW_PASSWORD', 'New password', 'front'),
(114, 1, 'NEW_PASSWORD_NOTICE', 'Merci d\'entrer l\'adresse e-mail correspondant à votre compte. Un nouveau mot de passe vous sera envoyé par e-mail.', 'front'),
(114, 2, 'NEW_PASSWORD_NOTICE', 'Please enter your e-mail address corresponding to your account. A new password will be sent to you by e-mail.', 'front'),
(114, 3, 'NEW_PASSWORD_NOTICE', 'Please enter your e-mail address corresponding to your account. A new password will be sent to you by e-mail.', 'front'),
(115, 1, 'USERNAME', 'Utilisateur', 'front'),
(115, 2, 'USERNAME', 'Username', 'front'),
(115, 3, 'USERNAME', 'Username', 'front'),
(116, 1, 'PASSWORD_CONFIRM', 'Confirmer mot de passe', 'front'),
(116, 2, 'PASSWORD_CONFIRM', 'Confirm password', 'front'),
(116, 3, 'PASSWORD_CONFIRM', 'Confirm password', 'front'),
(117, 1, 'USERNAME_EXISTS', 'Un compte existe déjà avec ce nom d\'utilisateur', 'front'),
(117, 2, 'USERNAME_EXISTS', 'An account already exists with this username', 'front'),
(117, 3, 'USERNAME_EXISTS', 'An account already exists with this username', 'front'),
(118, 1, 'ACCOUNT_EDIT_SUCCESS', 'Les informations de votre compte ont bien été modifiées.', 'front'),
(118, 2, 'ACCOUNT_EDIT_SUCCESS', 'Your account information have been changed.', 'front'),
(118, 3, 'ACCOUNT_EDIT_SUCCESS', 'Your account information have been changed.', 'front'),
(119, 1, 'ACCOUNT_EDIT_FAILURE', 'Echec de la modification des informations de compte.', 'front'),
(119, 2, 'ACCOUNT_EDIT_FAILURE', 'An error occured during the modification of the account information.', 'front'),
(119, 3, 'ACCOUNT_EDIT_FAILURE', 'An error occured during the modification of the account information.', 'front'),
(120, 1, 'ACCOUNT_CREATE_FAILURE', 'Echec de la création du compte.', 'front'),
(120, 2, 'ACCOUNT_CREATE_FAILURE', 'Failed to create account.', 'front'),
(120, 3, 'ACCOUNT_CREATE_FAILURE', 'Failed to create account.', 'front'),
(121, 1, 'PAYMENT_CHECK', 'Par chèque', 'front'),
(121, 2, 'PAYMENT_CHECK', 'By check', 'front'),
(121, 3, 'PAYMENT_CHECK', 'By check', 'front'),
(122, 1, 'PAYMENT_ARRIVAL', 'A l\'arrivée', 'front'),
(122, 2, 'PAYMENT_ARRIVAL', 'On arrival', 'front'),
(122, 3, 'PAYMENT_ARRIVAL', 'On arrival', 'front'),
(123, 1, 'CHOOSE_PAYMENT', 'Choisissez un moyen de paiement', 'front'),
(123, 2, 'CHOOSE_PAYMENT', 'Choose a method of payment', 'front'),
(123, 3, 'CHOOSE_PAYMENT', 'Choose a method of payment', 'front'),
(124, 1, 'PAYMENT_CREDIT_CARDS', 'Cartes de credit', 'front'),
(124, 2, 'PAYMENT_CREDIT_CARDS', 'Credit cards', 'front'),
(124, 3, 'PAYMENT_CREDIT_CARDS', 'Credit cards', 'front'),
(125, 1, 'MAX_ADULTS', 'Adultes max', 'front'),
(125, 2, 'MAX_ADULTS', 'Max adults', 'front'),
(125, 3, 'MAX_ADULTS', 'Max adults', 'front'),
(126, 1, 'MAX_CHILDREN', 'Enfants max', 'front'),
(126, 2, 'MAX_CHILDREN', 'Max children', 'front'),
(126, 3, 'MAX_CHILDREN', 'Max children', 'front'),
(127, 1, 'PAYMENT_CARDS_NOTICE', 'Cliquez sur \"Payer\" ci-dessous, vous allez être redirigé vers le site sécurisé de 2Checkout.com', 'front'),
(127, 2, 'PAYMENT_CARDS_NOTICE', 'Click on \"Check Out\" below, you will be redirected towards the secure site of 2Checkout.com', 'front'),
(127, 3, 'PAYMENT_CARDS_NOTICE', 'Click on \"Check Out\" below, you will be redirected towards the secure site of 2Checkout.com', 'front'),
(128, 1, 'COOKIES_NOTICE', 'Les cookies nous aident à fournir une meilleure expérience utilisateur. En utilisant notre site, vous acceptez l\'utilisation de cookies.', 'front'),
(128, 2, 'COOKIES_NOTICE', 'Cookies help us provide better user experience. By using our website, you agree to the use of cookies.', 'front'),
(128, 3, 'COOKIES_NOTICE', 'Cookies help us provide better user experience. By using our website, you agree to the use of cookies.', 'front'),
(129, 1, 'DURATION', 'Durée', 'front'),
(129, 2, 'DURATION', 'Duration', 'front'),
(129, 3, 'DURATION', 'Duration', 'front'),
(130, 1, 'PERSON', 'Personne', 'front'),
(130, 2, 'PERSON', 'Person', 'front'),
(130, 3, 'PERSON', 'Person', 'front'),
(131, 1, 'CHOOSE_A_DATE', 'Choisissez une date', 'front'),
(131, 2, 'CHOOSE_A_DATE', 'Choose a date', 'front'),
(131, 3, 'CHOOSE_A_DATE', 'Choose a date', 'front'),
(132, 1, 'TIMESLOT', 'Horaire', 'front'),
(132, 2, 'TIMESLOT', 'Time slot', 'front'),
(132, 3, 'TIMESLOT', 'Time slot', 'front'),
(133, 1, 'ACTIVITIES', 'Activités', 'front'),
(133, 2, 'ACTIVITIES', 'Activities', 'front'),
(133, 3, 'ACTIVITIES', 'Activities', 'front'),
(134, 1, 'DESTINATION', 'Destination', 'front'),
(134, 2, 'DESTINATION', 'Destination', 'front'),
(134, 3, 'DESTINATION', 'Destination', 'front'),
(135, 1, 'NO_HOTEL_FOUND', 'Aucun hotel trouvé', 'front'),
(135, 2, 'NO_HOTEL_FOUND', 'No hotel found', 'front'),
(135, 3, 'NO_HOTEL_FOUND', 'No hotel found', 'front'),
(136, 1, 'FOR', 'pour', 'front'),
(136, 2, 'FOR', 'for', 'front'),
(136, 3, 'FOR', 'for', 'front'),
(137, 1, 'FIND_ACTIVITIES_AND_TOURS', 'Découvrez nos activités et excursions', 'front'),
(137, 2, 'FIND_ACTIVITIES_AND_TOURS', 'Find out our activities and tours', 'front'),
(137, 3, 'FIND_ACTIVITIES_AND_TOURS', 'Find out our activities and tours', 'front'),
(138, 1, 'MINUTES', 'minute(s)', 'front'),
(138, 2, 'MINUTES', 'minute(s)', 'front'),
(138, 3, 'MINUTES', 'minute(s)', 'front'),
(139, 1, 'HOURS', 'heure(s)', 'front'),
(139, 2, 'HOURS', 'hour(s)', 'front'),
(139, 3, 'HOURS', 'hour(s)', 'front'),
(140, 1, 'DAYS', 'jour(s)', 'front'),
(140, 2, 'DAYS', 'day(s)', 'front'),
(140, 3, 'DAYS', 'day(s)', 'front'),
(141, 1, 'WEEKS', 'semaine(s)', 'front'),
(141, 2, 'WEEKS', 'week(s)', 'front'),
(141, 3, 'WEEKS', 'week(s)', 'front'),
(142, 1, 'RESULTS', 'Résultats', 'front'),
(142, 2, 'RESULTS', 'Results', 'front'),
(142, 3, 'RESULTS', 'Results', 'front'),
(143, 1, 'BOOKING_HISTORY', 'Historique des réservations', 'front'),
(143, 2, 'BOOKING_HISTORY', 'Booking history', 'front'),
(143, 3, 'BOOKING_HISTORY', 'Booking history', 'front'),
(144, 1, 'BOOKING_SUMMARY', 'Résumé de la réservation', 'front'),
(144, 2, 'BOOKING_SUMMARY', 'Booking summary', 'front'),
(144, 3, 'BOOKING_SUMMARY', 'Booking summary', 'front'),
(145, 1, 'BOOKING_DATE', 'Date de la réservations', 'front'),
(145, 2, 'BOOKING_DATE', 'Booking date', 'front'),
(145, 3, 'BOOKING_DATE', 'Booking date', 'front'),
(146, 1, 'NO_BOOKING_YET', 'Pas encore de réservation...', 'front'),
(146, 2, 'NO_BOOKING_YET', 'No booking yet...', 'front'),
(146, 3, 'NO_BOOKING_YET', 'No booking yet...', 'front'),
(147, 1, 'PAYMENT', 'Paiement', 'front'),
(147, 2, 'PAYMENT', 'Payment', 'front'),
(147, 3, 'PAYMENT', 'Payment', 'front'),
(148, 1, 'PAYMENT_DATE', 'Date du paiement', 'front'),
(148, 2, 'PAYMENT_DATE', 'Payment date', 'front'),
(148, 3, 'PAYMENT_DATE', 'Payment date', 'front'),
(149, 1, 'PAYMENT_METHOD', 'Méthode de paiement', 'front'),
(149, 2, 'PAYMENT_METHOD', 'Payment method', 'front'),
(149, 3, 'PAYMENT_METHOD', 'Payment method', 'front'),
(150, 1, 'NUM_TRANSACTION', 'N°transaction', 'front'),
(150, 2, 'NUM_TRANSACTION', 'Num. transaction', 'front'),
(150, 3, 'NUM_TRANSACTION', 'Num. transaction', 'front'),
(151, 1, 'STATUS', 'Statut', 'front'),
(151, 2, 'STATUS', 'Status', 'front'),
(151, 3, 'STATUS', 'Status', 'front'),
(152, 1, 'AWAITING', 'En attente', 'front'),
(152, 2, 'AWAITING', 'Awaiting', 'front'),
(152, 3, 'AWAITING', 'Awaiting', 'front'),
(153, 1, 'CANCELLED', 'Annulé', 'front'),
(153, 2, 'CANCELLED', 'Cancelled', 'front'),
(153, 3, 'CANCELLED', 'Cancelled', 'front'),
(154, 1, 'REJECTED_PAYMENT', 'Paiement rejeté', 'front'),
(154, 2, 'REJECTED_PAYMENT', 'Rejected payment', 'front'),
(154, 3, 'REJECTED_PAYMENT', 'Rejected payment', 'front'),
(155, 1, 'PAYED', 'Payé', 'front'),
(155, 2, 'PAYED', 'Payed', 'front'),
(155, 3, 'PAYED', 'Payed', 'front'),
(156, 1, 'INCL_TAX', 'TTC', 'front'),
(156, 2, 'INCL_TAX', 'incl. tax', 'front'),
(156, 3, 'INCL_TAX', 'incl. tax', 'front'),
(157, 1, 'TAGS', 'Tags', 'front'),
(157, 2, 'TAGS', 'Tags', 'front'),
(157, 3, 'TAGS', 'Tags', 'front'),
(158, 1, 'ARCHIVES', 'Archives', 'front'),
(158, 2, 'ARCHIVES', 'Archives', 'front'),
(158, 3, 'ARCHIVES', 'Archives', 'front'),
(162, 1, 'LOAD_MORE', 'Voir plus', 'front'),
(162, 2, 'LOAD_MORE', 'Load more', 'front'),
(162, 3, 'LOAD_MORE', 'Load more', 'front'),
(163, 1, 'DO_YOU_HAVE_A_COUPON', 'Avez-vous un code promo ?', 'front'),
(163, 2, 'DO_YOU_HAVE_A_COUPON', 'Do you have a coupon?', 'front'),
(163, 3, 'DO_YOU_HAVE_A_COUPON', 'Do you have a coupon?', 'front'),
(164, 1, 'DISCOUNT', 'Réduction', 'front'),
(164, 2, 'DISCOUNT', 'Discount', 'front'),
(164, 3, 'DISCOUNT', 'Discount', 'front'),
(165, 1, 'COUPON_CODE_SUCCESS', 'Félicitations ! Le code promo a été ajouté avec succès.', 'front'),
(165, 2, 'COUPON_CODE_SUCCESS', 'Congratulations! The coupon code has been successfully added.', 'front'),
(165, 3, 'COUPON_CODE_SUCCESS', 'Congratulations! The coupon code has been successfully added.', 'front'),
(166, 1, 'ROOMS', 'chambres', 'front'),
(166, 2, 'ROOMS', 'rooms', 'front'),
(166, 3, 'ROOMS', 'rooms', 'front'),
(167, 1, 'ADULT', 'adulte', 'front'),
(167, 2, 'ADULT', 'adult', 'front'),
(167, 3, 'ADULT', 'adult', 'front'),
(168, 1, 'CHILD', 'enfant', 'front'),
(168, 2, 'CHILD', 'child', 'front'),
(168, 3, 'CHILD', 'child', 'front'),
(169, 1, 'ACTIVITY', 'Activité', 'front'),
(169, 2, 'ACTIVITY', 'Activity', 'front'),
(169, 3, 'ACTIVITY', 'Activity', 'front'),
(170, 1, 'DATE', 'Date', 'front'),
(170, 2, 'DATE', 'Date', 'front'),
(170, 3, 'DATE', 'Date', 'front'),
(171, 1, 'QUANTITY', 'Quantité', 'front'),
(171, 2, 'QUANTITY', 'Quantity', 'front'),
(171, 3, 'QUANTITY', 'Quantity', 'front'),
(172, 1, 'SERVICE', 'Service', 'front'),
(172, 2, 'SERVICE', 'Service', 'front'),
(172, 3, 'SERVICE', 'Service', 'front'),
(173, 1, 'BOOKING_NOTICE', '<h2>Réservez sur notre site</h2><p class=\"lead mb0\">Dépêchez-vous ! Sélectionnez vos chambres, complétez votre réservation et profitez de nos packages et offres spéciales ! <br><b>Meilleur prix garanti !</b></p>', 'front'),
(173, 2, 'BOOKING_NOTICE', '<h2>Book on our website</h2><p class=\"lead mb0\">Hurry up! Select the your rooms, complete your booking and take advantage of our special offers and packages!<br><b>Best price guarantee!</b></p>', 'front'),
(173, 3, 'BOOKING_NOTICE', '<h2>Book on our website</h2><p class=\"lead mb0\">Hurry up! Select the your rooms, complete your booking and take advantage of our special offers and packages!<br><b>Best price guarantee!</b></p>', 'front'),
(174, 1, 'CONTINUE_AS_GUEST', 'Continuer sans m\'enregistrer', 'front'),
(174, 2, 'CONTINUE_AS_GUEST', 'Continue as guest', 'front'),
(174, 3, 'CONTINUE_AS_GUEST', 'Continue as guest', 'front'),
(175, 1, 'NUM_ROOMS', 'Nb chambres', 'front'),
(175, 2, 'NUM_ROOMS', 'Num rooms', 'front'),
(175, 3, 'NUM_ROOMS', 'Num rooms', 'front'),
(176, 1, 'ITEM', 'Item', 'front'),
(176, 2, 'ITEM', 'Item', 'front'),
(176, 3, 'ITEM', 'Item', 'front'),
(177, 1, 'DISPLAY_ON', 'Display on', 'back'),
(177, 2, 'DISPLAY_ON', 'Display on', 'back'),
(177, 3, 'DISPLAY_ON', 'Display on', 'back'),
(178, 1, 'CLASSIC', 'Classic', 'back'),
(178, 2, 'CLASSIC', 'Classic', 'back'),
(178, 3, 'CLASSIC', 'Classic', 'back'),
(179, 1, 'FULL_SCREEN', 'Full Screen', 'back'),
(179, 2, 'FULL_SCREEN', 'Full Screen', 'back'),
(179, 3, 'FULL_SCREEN', 'Full Screen', 'back'),
(180, 1, 'STICKY', '', 'back'),
(180, 2, 'STICKY', 'Sticky', 'back'),
(180, 3, 'STICKY', '', 'back'),
(181, 1, 'LEFT', 'Left', 'back'),
(181, 2, 'LEFT', 'Left', 'back'),
(181, 3, 'LEFT', 'Left', 'back'),
(182, 1, 'CENTER', 'Center', 'back'),
(182, 2, 'CENTER', 'Center', 'back'),
(182, 3, 'CENTER', 'Center', 'back'),
(183, 1, 'RIGHT', 'Right', 'back'),
(183, 2, 'RIGHT', 'Right', 'back'),
(183, 3, 'RIGHT', 'Right', 'back'),
(184, 1, 'MENU_POSITION', 'Menu position', 'back'),
(184, 2, 'MENU_POSITION', 'Menu position', 'back'),
(184, 3, 'MENU_POSITION', 'Menu position', 'back'),
(185, 1, 'LOGO_POSITION', '', 'back'),
(185, 2, 'LOGO_POSITION', 'Logo Position', 'back'),
(185, 3, 'LOGO_POSITION', '', 'back'),
(186, 1, 'TOP', 'Top', 'back'),
(186, 2, 'TOP', 'Top', 'back'),
(186, 3, 'TOP', 'Top', 'back'),
(187, 1, 'BOTTOM', 'Bottom', 'back'),
(187, 2, 'BOTTOM', 'Bottom', 'back'),
(187, 3, 'BOTTOM', 'Bottom', 'back'),
(188, 1, 'ARROW_POSITION', 'Arrow Position', 'back'),
(188, 2, 'ARROW_POSITION', 'Arrow Position', 'back'),
(188, 3, 'ARROW_POSITION', 'Arrow Position', 'back'),
(189, 1, 'BOOKING_SEARCH_POSITION', 'Booking Search Position', 'back'),
(189, 2, 'BOOKING_SEARCH_POSITION', 'Booking Search Position', 'back'),
(189, 3, 'BOOKING_SEARCH_POSITION', 'Booking Search Position', 'back'),
(190, 1, 'FOOTER_COLUMNS', 'Footer Columns', 'back'),
(190, 2, 'FOOTER_COLUMNS', 'Footer Columns', 'back'),
(190, 3, 'FOOTER_COLUMNS', 'Footer Columns', 'back'),
(191, 1, 'DUPLICATE', '', 'back'),
(191, 2, 'DUPLICATE', 'Duplicate', 'back'),
(191, 3, 'DUPLICATE', '', 'back'),
(192, 1, 'SLIDER', 'Slider', 'back'),
(192, 2, 'SLIDER', 'Slider', 'back'),
(192, 3, 'SLIDER', 'Slider', 'back'),
(193, 1, 'OFFERS', '', 'back'),
(193, 2, 'OFFERS', 'Offers', 'back'),
(193, 3, 'OFFERS', '', 'back'),
(194, 1, 'ITEM', '', 'back'),
(194, 2, 'ITEM', 'Item', 'back'),
(194, 3, 'ITEM', '', 'back'),
(195, 1, 'PROMO_CODE', 'Promo code', 'front'),
(195, 2, 'PROMO_CODE', 'Promo code', 'front'),
(195, 3, 'PROMO_CODE', 'Promo code', 'front'),
(196, 1, 'BOOK_NOW', 'Book now', 'front'),
(196, 2, 'BOOK_NOW', 'Book now', 'front'),
(196, 3, 'BOOK_NOW', 'Book now', 'front'),
(197, 1, 'ARRIVAL_DATE', 'Arrival date', 'front'),
(197, 2, 'ARRIVAL_DATE', 'Arrival date', 'front'),
(197, 3, 'ARRIVAL_DATE', 'Arrival date', 'front'),
(198, 1, 'DEPARTURE_DATE', 'Departure date', 'front'),
(198, 2, 'DEPARTURE_DATE', 'Departure date', 'front'),
(198, 3, 'DEPARTURE_DATE', 'Departure date', 'front'),
(199, 1, 'PERSONS', 'Persons', 'front'),
(199, 2, 'PERSONS', 'Persons', 'front'),
(199, 3, 'PERSONS', 'Persons', 'front');

-- --------------------------------------------------------

--
-- Table structure for table `pm_user`
--

DROP TABLE IF EXISTS `pm_user`;
CREATE TABLE IF NOT EXISTS `pm_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `login` varchar(50) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `add_date` int(11) DEFAULT NULL,
  `edit_date` int(11) DEFAULT NULL,
  `checked` int(11) DEFAULT '0',
  `fb_id` varchar(50) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm_user`
--

INSERT INTO `pm_user` (`id`, `firstname`, `lastname`, `email`, `login`, `pass`, `type`, `add_date`, `edit_date`, `checked`, `fb_id`, `address`, `postcode`, `city`, `company`, `country`, `mobile`, `phone`, `token`) VALUES
(1, 'Administrator', '', 'srdjan.nezic@wollson.rs', 'Srdjan', 'c9c36e373fc789fc502b0bf0cd5ab4cf', 'administrator', 1524062141, 1524062141, 1, '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pm_widget`
--

DROP TABLE IF EXISTS `pm_widget`;
CREATE TABLE IF NOT EXISTS `pm_widget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `showtitle` int(11) DEFAULT NULL,
  `pos` varchar(20) DEFAULT NULL,
  `allpages` int(11) DEFAULT NULL,
  `pages` varchar(250) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `content` longtext,
  `class` varchar(200) DEFAULT NULL,
  `checked` int(11) DEFAULT '0',
  `rank` int(11) DEFAULT '0',
  PRIMARY KEY (`id`,`lang`),
  KEY `widget_lang_fkey` (`lang`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm_widget`
--

INSERT INTO `pm_widget` (`id`, `lang`, `title`, `showtitle`, `pos`, `allpages`, `pages`, `type`, `content`, `class`, `checked`, `rank`) VALUES
(1, 1, 'Qui sommes-nous ?', 1, 'footer_col_1', 1, '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget auctor ipsum. Mauris pharetra neque a mauris commodo, at aliquam leo malesuada. Maecenas eget elit eu ligula rhoncus dapibus at non erat. In sed velit eget eros gravida consectetur varius imperdiet lectus.</p>\r\n', NULL, 1, 1),
(1, 2, 'About us', 1, 'footer_col_1', 1, '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget auctor ipsum. Mauris pharetra neque a mauris commodo, at aliquam leo malesuada. Maecenas eget elit eu ligula rhoncus dapibus at non erat. In sed velit eget eros gravida consectetur varius imperdiet lectus.</p>\r\n', NULL, 1, 1),
(1, 3, 'عنا', 1, 'footer_col_1', 1, '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget auctor ipsum. Mauris pharetra neque a mauris commodo, at aliquam leo malesuada. Maecenas eget elit eu ligula rhoncus dapibus at non erat. In sed velit eget eros gravida consectetur varius imperdiet lectus.</p>\r\n', NULL, 1, 1),
(3, 1, 'Derniers articles', 1, 'footer_col_2', 1, '', 'latest_articles', '', '', 1, 2),
(3, 2, 'Latest articles', 1, 'footer_col_2', 1, '', 'latest_articles', '', '', 1, 2),
(3, 3, 'المقالات الأخيرة', 1, 'footer_col_2', 1, '', 'latest_articles', '', '', 1, 2),
(4, 1, 'Contactez-nous', 0, 'footer_col_3', 1, '', 'contact_informations', '', '', 1, 3),
(4, 2, 'Contact us', 0, 'footer_col_3', 1, '', 'contact_informations', '', '', 1, 3),
(4, 3, 'اتصل بنا', 0, 'footer_col_3', 1, '', 'contact_informations', '', '', 1, 3),
(6, 1, 'Blog side', 0, 'right', 0, '17', 'blog_side', '', '', 1, 4),
(6, 2, 'Blog side', 0, 'right', 0, '17', 'blog_side', '', '', 1, 4),
(6, 3, 'Blog side', 0, 'right', 0, '17', 'blog_side', '', '', 1, 4);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pm_activity`
--
ALTER TABLE `pm_activity`
  ADD CONSTRAINT `activity_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pm_activity_file`
--
ALTER TABLE `pm_activity_file`
  ADD CONSTRAINT `activity_file_fkey` FOREIGN KEY (`id_item`,`lang`) REFERENCES `pm_activity` (`id`, `lang`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `activity_file_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pm_activity_session`
--
ALTER TABLE `pm_activity_session`
  ADD CONSTRAINT `activity_session_fkey` FOREIGN KEY (`id_activity`) REFERENCES `pm_activity` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pm_activity_session_hour`
--
ALTER TABLE `pm_activity_session_hour`
  ADD CONSTRAINT `activity_session_hour_fkey` FOREIGN KEY (`id_activity_session`) REFERENCES `pm_activity_session` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pm_appearance`
--
ALTER TABLE `pm_appearance`
  ADD CONSTRAINT `FK_AppearanceUser` FOREIGN KEY (`user_id`) REFERENCES `pm_user` (`id`);

--
-- Constraints for table `pm_article`
--
ALTER TABLE `pm_article`
  ADD CONSTRAINT `article_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `article_page_fkey` FOREIGN KEY (`id_page`,`lang`) REFERENCES `pm_page` (`id`, `lang`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pm_article_file`
--
ALTER TABLE `pm_article_file`
  ADD CONSTRAINT `article_file_fkey` FOREIGN KEY (`id_item`,`lang`) REFERENCES `pm_article` (`id`, `lang`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `article_file_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pm_booking_activity`
--
ALTER TABLE `pm_booking_activity`
  ADD CONSTRAINT `booking_activity_fkey` FOREIGN KEY (`id_booking`) REFERENCES `pm_booking` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pm_booking_room`
--
ALTER TABLE `pm_booking_room`
  ADD CONSTRAINT `booking_room_fkey` FOREIGN KEY (`id_booking`) REFERENCES `pm_booking` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pm_booking_service`
--
ALTER TABLE `pm_booking_service`
  ADD CONSTRAINT `booking_service_fkey` FOREIGN KEY (`id_booking`) REFERENCES `pm_booking` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pm_booking_tax`
--
ALTER TABLE `pm_booking_tax`
  ADD CONSTRAINT `booking_tax_fkey` FOREIGN KEY (`id_booking`) REFERENCES `pm_booking` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pm_email_content`
--
ALTER TABLE `pm_email_content`
  ADD CONSTRAINT `email_content_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pm_facility`
--
ALTER TABLE `pm_facility`
  ADD CONSTRAINT `facility_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pm_facility_file`
--
ALTER TABLE `pm_facility_file`
  ADD CONSTRAINT `facility_file_fkey` FOREIGN KEY (`id_item`,`lang`) REFERENCES `pm_facility` (`id`, `lang`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `facility_file_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pm_lang_file`
--
ALTER TABLE `pm_lang_file`
  ADD CONSTRAINT `lang_file_fkey` FOREIGN KEY (`id_item`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pm_media_file`
--
ALTER TABLE `pm_media_file`
  ADD CONSTRAINT `media_file_fkey` FOREIGN KEY (`id_item`) REFERENCES `pm_media` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pm_menu`
--
ALTER TABLE `pm_menu`
  ADD CONSTRAINT `menu_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pm_page`
--
ALTER TABLE `pm_page`
  ADD CONSTRAINT `page_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pm_page_file`
--
ALTER TABLE `pm_page_file`
  ADD CONSTRAINT `page_file_fkey` FOREIGN KEY (`id_item`,`lang`) REFERENCES `pm_page` (`id`, `lang`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `page_file_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pm_rate`
--
ALTER TABLE `pm_rate`
  ADD CONSTRAINT `rate_room_fkey` FOREIGN KEY (`id_room`) REFERENCES `pm_room` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pm_room`
--
ALTER TABLE `pm_room`
  ADD CONSTRAINT `room_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pm_room_file`
--
ALTER TABLE `pm_room_file`
  ADD CONSTRAINT `room_file_fkey` FOREIGN KEY (`id_item`,`lang`) REFERENCES `pm_room` (`id`, `lang`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `room_file_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pm_service`
--
ALTER TABLE `pm_service`
  ADD CONSTRAINT `service_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pm_slide`
--
ALTER TABLE `pm_slide`
  ADD CONSTRAINT `FK_SlideSlider` FOREIGN KEY (`id_slider`) REFERENCES `pm_slider` (`id`),
  ADD CONSTRAINT `slide_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `slide_page_fkey` FOREIGN KEY (`id_page`,`lang`) REFERENCES `pm_page` (`id`, `lang`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pm_slide_file`
--
ALTER TABLE `pm_slide_file`
  ADD CONSTRAINT `slide_file_fkey` FOREIGN KEY (`id_item`,`lang`) REFERENCES `pm_slide` (`id`, `lang`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `slide_file_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pm_tag`
--
ALTER TABLE `pm_tag`
  ADD CONSTRAINT `tag_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pm_tax`
--
ALTER TABLE `pm_tax`
  ADD CONSTRAINT `tax_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pm_text`
--
ALTER TABLE `pm_text`
  ADD CONSTRAINT `text_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pm_widget`
--
ALTER TABLE `pm_widget`
  ADD CONSTRAINT `widget_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
