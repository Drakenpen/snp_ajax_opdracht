-- --------------------------------------------------------
-- Host:                         localhost
-- Server versie:                10.1.16-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Versie:              9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Databasestructuur van inschrijfsysteem2 wordt geschreven
CREATE DATABASE IF NOT EXISTS `inschrijfsysteem2` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `inschrijfsysteem2`;


-- Structuur van  tabel inschrijfsysteem2.activities wordt geschreven
CREATE TABLE IF NOT EXISTS `activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `banner_url` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `events` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumpen data van tabel inschrijfsysteem2.activities: ~6 rows (ongeveer)
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` (`id`, `event_id`, `title`, `banner_url`, `description`) VALUES
	(1, 1, 'Voetbal', 'img/voetbal.jpg', 'Voetbaltoernooi met teams van drie spelers. Het winnende team wint een speciale verrassing.'),
	(2, 1, 'Volleybal', 'img/volleybal.JPG', 'Volleyballen met teams van twee spelers. Eerst wordt er oefeningen gedaan en dan spelen tegen elkaar.'),
	(3, 2, 'Busreis', 'img/volleybal.JPG', 'Gezellig 18 uur in de bus. #Worth'),
	(4, 4, 'ICT', 'img/pc.JPG', 'ICT lokaal'),
	(5, 4, 'Techniek', ' img/techniek.JPG ', 'Techniek lokaal.');
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;


-- Structuur van  tabel inschrijfsysteem2.events wordt geschreven
CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `large_banner_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `small_banner_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumpen data van tabel inschrijfsysteem2.events: ~5 rows (ongeveer)
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` (`id`, `title`, `large_banner_url`, `small_banner_url`, `start_date`, `end_date`) VALUES
	(1, 'Sportdag', 'img/Banner_Sportdag.png', 'img/Banner_Sportdag.png', '2017-02-03 10:27:49', '0000-00-00 00:00:00'),
	(2, 'Disneyland', 'img/Banner_Sportdag.png', 'img/sportdag.jpg', '2016-11-29 15:06:19', '0000-00-00 00:00:00'),
	(4, 'Opendag', 'img/Banner_Opendag.png', '', '2017-02-17 14:48:03', '2017-02-17 14:48:03'),
	(7, 'Computer Reparatiedag', 'img/Banner_PCRPR.png', '', '2017-02-17 14:48:03', '2017-02-17 15:00:00');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;


-- Structuur van  tabel inschrijfsysteem2.members wordt geschreven
CREATE TABLE IF NOT EXISTS `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `gebruikersnaam` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `wachtwoord_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `voornaam` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `voorvoegsel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `achternaam` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ingeschreven` int(11) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  `validation_token` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wachtwoord` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `isadmin` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumpen data van tabel inschrijfsysteem2.members: ~14 rows (ongeveer)
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` (`id`, `email`, `gebruikersnaam`, `wachtwoord_hash`, `voornaam`, `voorvoegsel`, `achternaam`, `ingeschreven`, `active`, `validation_token`, `wachtwoord`, `isadmin`) VALUES
	(1, 'romy-bijkerk@hotmail.com', 'Romy96', 'Htmldiv1', 'Romy', '', 'Bijkerk', 0, 0, NULL, '', 0),
	(4, 'Admin@live.nl', 'Admin', 'f19a86bcd60e668b1d8a2b8530f8b9f4', 'Kevin', '', 'Drakenpen', 0, 1, NULL, '', 1),
	(5, 'ecyrecseys@live.nl', 'ecysrcyesrec', '$2y$10$ytVpKNWI44xAufGLqScz5O/iM2I2GZsD/8CrrBguiQv2Bv4057/bm', 'vcyre', 'ecyrseycr', 'eycrsyec', 0, 1, NULL, '', 0),
	(6, 'kevink@davinci.nl', 'KevinK1', '$2y$10$m77W6XdZxppn0mFUEKafwuyif6Mle.BJaEIkQW6qe.mMKlPDwrUM6', 'Kevin', '', 'Kok', 0, 0, 'dx0pNuhYSr', '', 0),
	(7, 'maybe@live.nl', 'vewewver', '$2y$10$iUnfHnE1Vi83oKj/omk/2upWc80G0I4GHJRe0Och3kkoEU/ygsLZK', 'vatrrt', 'membe', 'vevevewev', 0, 0, NULL, '', 0),
	(8, 'mem@live.nl', 'dhfdhfhf', 'e1b849f9631ffc1829b2e31402373e3c', 'ggsdsf', 'hdsfdf', 'dhfdfhdfh', 0, 1, NULL, '', 0),
	(9, 'md5@live.nl', 'berrtbet', 'md5', 'md5', 'bsybsr', 'srbrb', 0, 1, NULL, '', 0),
	(54, 'user@mydavinci.nl', 'Leerling', '$10$okOzrRBkImW2yPFG984JAe3Ywu5i1OmfTtoprWA/xNjrUlpUw5k7O', 'User', '', 'Name', 0, 1, NULL, 'f19a86bcd60e668b1d8a2b8530f8b9f4', 1),
	(56, 'succes2@live.nl', 'succestwee', '$2y$10$EEZ3Rfmvyau4Gbq6mFZzeusRInnTYroNnzu4f.8bdWJCbIGInuKLu', 'test3', 'voor', 'naam', 0, 0, NULL, '', 0),
	(57, 'Test@live.nl', 'Test', '$2y$10$CZ3TJxX/I4zd3NElVXb89eVfzlf1OCzPushPDFVZK75ObKQeGZ.j6', 'Test', 'Voor', 'Naam', 0, 0, NULL, '', 0),
	(59, 'Test2@live.nl', 'Test2', '$2y$10$l0b/hGepKprs/JbEsd9Mkeu/.UWd7wxAq7w77RkQSaH0dwKVVMcNa', 'Test2', 'Achter', 'Naam', 0, 0, NULL, '', 0),
	(61, 'kevin@mydavinci.nl', 'Gebruiker', '$2y$10$9SveZAgQyoc57LGPfXkMguOwYfJyHoOK6K7uMZqN9JSO7XfJcES1q', 'KevinTest', '', 'Test', 0, 1, NULL, '', 0),
	(62, 'LoginTest@live.nl', 'LoginTest', 'f19a86bcd60e668b1d8a2b8530f8b9f4', 'Login', '', 'Test', 0, 1, NULL, '', 1),
	(64, 'meme@machine.net', 'meme machine', 'f19a86bcd60e668b1d8a2b8530f8b9f4', 'meme ', 'meme', 'machine', 0, 1, NULL, '', 0);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;


-- Structuur van  tabel inschrijfsysteem2.members_activities wordt geschreven
CREATE TABLE IF NOT EXISTS `members_activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_members_activities_activities` (`activity_id`),
  KEY `FK_members_activities_members` (`member_id`),
  CONSTRAINT `FK_members_activities_activities` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`),
  CONSTRAINT `FK_members_activities_members` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

-- Dumpen data van tabel inschrijfsysteem2.members_activities: ~7 rows (ongeveer)
/*!40000 ALTER TABLE `members_activities` DISABLE KEYS */;
INSERT INTO `members_activities` (`id`, `activity_id`, `member_id`) VALUES
	(34, 5, 4),
	(35, 1, 4),
	(37, 2, 4),
	(38, 4, 4);
/*!40000 ALTER TABLE `members_activities` ENABLE KEYS */;


-- Structuur van  tabel inschrijfsysteem2.song wordt geschreven
CREATE TABLE IF NOT EXISTS `song` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artist` varchar(50) DEFAULT NULL,
  `track` varchar(50) DEFAULT NULL,
  `link` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Dumpen data van tabel inschrijfsysteem2.song: ~7 rows (ongeveer)
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` (`id`, `artist`, `track`, `link`) VALUES
	(9, '4', '4', '4'),
	(11, 'ney', 'enr', 'ner'),
	(12, 'mezbe', '3', '34'),
	(13, 'membe', 'membaswihr', 'of niet'),
	(14, 'rweqer', 'rewwer', 'wrewre'),
	(15, 'test', 'final', 'nee.net'),
	(16, '4', '4', '4');
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
