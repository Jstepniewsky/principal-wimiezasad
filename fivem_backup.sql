/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.8.3-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: fivem_server
-- ------------------------------------------------------
-- Server version	11.8.3-MariaDB-0+deb13u1 from Debian

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `addon_account`
--

DROP TABLE IF EXISTS `addon_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addon_account`
--

LOCK TABLES `addon_account` WRITE;
/*!40000 ALTER TABLE `addon_account` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `addon_account` VALUES
('bank_savings','Savings account',0),
('caution','caution',0),
('society_ambulance','EMS',1),
('society_banker','Bank',1),
('society_cardealer','Cardealer',1),
('society_mechanic','Mechanic',1),
('society_police','Police',1),
('society_taxi','Taxi',1);
/*!40000 ALTER TABLE `addon_account` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `addon_account_data`
--

DROP TABLE IF EXISTS `addon_account_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(46) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  KEY `index_addon_account_data_account_name` (`account_name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addon_account_data`
--

LOCK TABLES `addon_account_data` WRITE;
/*!40000 ALTER TABLE `addon_account_data` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `addon_account_data` VALUES
(1,'society_cardealer',0,NULL),
(2,'society_police',0,NULL),
(3,'society_ambulance',0,NULL),
(4,'society_mechanic',0,NULL),
(5,'society_taxi',0,NULL),
(9,'society_banker',0,NULL),
(10,'bank_savings',0,'char1:6db110927a05fd3328ad7fc4f04b2d0077166733'),
(11,'caution',0,'char1:6db110927a05fd3328ad7fc4f04b2d0077166733'),
(12,'bank_savings',0,'6db110927a05fd3328ad7fc4f04b2d0077166733'),
(13,'caution',0,'6db110927a05fd3328ad7fc4f04b2d0077166733'),
(14,'bank_savings',0,'char1:c63b583a0adbd3cfca2ca710fa544f9c72e75b1f'),
(15,'caution',0,'char1:c63b583a0adbd3cfca2ca710fa544f9c72e75b1f');
/*!40000 ALTER TABLE `addon_account_data` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `addon_inventory`
--

DROP TABLE IF EXISTS `addon_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addon_inventory`
--

LOCK TABLES `addon_inventory` WRITE;
/*!40000 ALTER TABLE `addon_inventory` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `addon_inventory` VALUES
('propery','Property',0),
('society_ambulance','EMS',1),
('society_cardealer','Cardealer',1),
('society_mechanic','Mechanic',1),
('society_police','Police',1),
('society_taxi','Taxi',1);
/*!40000 ALTER TABLE `addon_inventory` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `addon_inventory_items`
--

DROP TABLE IF EXISTS `addon_inventory_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(46) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  KEY `index_addon_inventory_inventory_name` (`inventory_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addon_inventory_items`
--

LOCK TABLES `addon_inventory_items` WRITE;
/*!40000 ALTER TABLE `addon_inventory_items` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `addon_inventory_items` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `banking`
--

DROP TABLE IF EXISTS `banking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `banking` (
  `identifier` varchar(46) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `amount` int(64) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `balance` int(11) DEFAULT 0,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banking`
--

LOCK TABLES `banking` WRITE;
/*!40000 ALTER TABLE `banking` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `banking` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `billing`
--

DROP TABLE IF EXISTS `billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `billing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(46) DEFAULT NULL,
  `sender` varchar(60) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(40) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing`
--

LOCK TABLES `billing` WRITE;
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `cardealer_vehicles`
--

DROP TABLE IF EXISTS `cardealer_vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardealer_vehicles`
--

LOCK TABLES `cardealer_vehicles` WRITE;
/*!40000 ALTER TABLE `cardealer_vehicles` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `cardealer_vehicles` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `datastore`
--

DROP TABLE IF EXISTS `datastore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datastore`
--

LOCK TABLES `datastore` WRITE;
/*!40000 ALTER TABLE `datastore` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `datastore` VALUES
('property','Property',0),
('propery','Property',0),
('society_ambulance','EMS',1),
('society_mechanic','Mechanic',1),
('society_police','Police',1),
('society_taxi','Taxi',1),
('user_ears','Ears',0),
('user_glasses','Glasses',0),
('user_helmet','Helmet',0),
('user_mask','Mask',0);
/*!40000 ALTER TABLE `datastore` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `datastore_data`
--

DROP TABLE IF EXISTS `datastore_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `owner` varchar(46) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  KEY `index_datastore_data_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datastore_data`
--

LOCK TABLES `datastore_data` WRITE;
/*!40000 ALTER TABLE `datastore_data` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `datastore_data` VALUES
(1,'society_police',NULL,'{}'),
(2,'society_ambulance',NULL,'{}'),
(3,'society_mechanic',NULL,'{}'),
(4,'society_taxi',NULL,'{}'),
(5,'property',NULL,'{}'),
(6,'property',NULL,'{}'),
(7,'property',NULL,'{}'),
(8,'property','char1:6db110927a05fd3328ad7fc4f04b2d0077166733','{}'),
(9,'user_ears','char1:6db110927a05fd3328ad7fc4f04b2d0077166733','{}'),
(10,'user_glasses','char1:6db110927a05fd3328ad7fc4f04b2d0077166733','{}'),
(11,'user_helmet','char1:6db110927a05fd3328ad7fc4f04b2d0077166733','{}'),
(12,'user_mask','char1:6db110927a05fd3328ad7fc4f04b2d0077166733','{}'),
(13,'property',NULL,'{}'),
(14,'property',NULL,'{}'),
(15,'property',NULL,'{}'),
(16,'property',NULL,'{}'),
(17,'property',NULL,'{}'),
(18,'property',NULL,'{}'),
(19,'property',NULL,'{}'),
(20,'property',NULL,'{}'),
(21,'property',NULL,'{}'),
(22,'property',NULL,'{}'),
(23,'property',NULL,'{}'),
(24,'property',NULL,'{}'),
(25,'property',NULL,'{}'),
(26,'property',NULL,'{}'),
(27,'property',NULL,'{}'),
(28,'property',NULL,'{}'),
(29,'property',NULL,'{}'),
(30,'property',NULL,'{}'),
(31,'property',NULL,'{}'),
(32,'property',NULL,'{}'),
(33,'property',NULL,'{}'),
(34,'property',NULL,'{}'),
(35,'property',NULL,'{}'),
(36,'property',NULL,'{}'),
(37,'property',NULL,'{}'),
(38,'property',NULL,'{}'),
(39,'property',NULL,'{}'),
(40,'property',NULL,'{}'),
(41,'property','6db110927a05fd3328ad7fc4f04b2d0077166733','{}'),
(42,'user_ears','6db110927a05fd3328ad7fc4f04b2d0077166733','{}'),
(43,'user_glasses','6db110927a05fd3328ad7fc4f04b2d0077166733','{}'),
(44,'user_helmet','6db110927a05fd3328ad7fc4f04b2d0077166733','{}'),
(45,'user_mask','6db110927a05fd3328ad7fc4f04b2d0077166733','{}'),
(46,'property',NULL,'{}'),
(47,'property',NULL,'{}'),
(48,'property',NULL,'{}'),
(49,'property',NULL,'{}'),
(50,'property',NULL,'{}'),
(51,'property',NULL,'{}'),
(52,'property',NULL,'{}'),
(53,'property',NULL,'{}'),
(54,'property',NULL,'{}'),
(55,'property',NULL,'{}'),
(56,'property',NULL,'{}'),
(57,'property',NULL,'{}'),
(58,'property',NULL,'{}'),
(59,'property','char1:c63b583a0adbd3cfca2ca710fa544f9c72e75b1f','{}'),
(60,'user_ears','char1:c63b583a0adbd3cfca2ca710fa544f9c72e75b1f','{}'),
(61,'user_glasses','char1:c63b583a0adbd3cfca2ca710fa544f9c72e75b1f','{}'),
(62,'user_helmet','char1:c63b583a0adbd3cfca2ca710fa544f9c72e75b1f','{}'),
(63,'user_mask','char1:c63b583a0adbd3cfca2ca710fa544f9c72e75b1f','{}'),
(64,'property',NULL,'{}'),
(65,'property',NULL,'{}'),
(66,'property',NULL,'{}'),
(67,'property',NULL,'{}'),
(68,'property',NULL,'{}'),
(69,'property',NULL,'{}'),
(70,'property',NULL,'{}'),
(71,'property',NULL,'{}'),
(72,'property',NULL,'{}'),
(73,'property',NULL,'{}'),
(74,'property',NULL,'{}'),
(75,'property',NULL,'{}'),
(76,'property',NULL,'{}'),
(77,'property',NULL,'{}'),
(78,'property',NULL,'{}'),
(79,'property',NULL,'{}'),
(80,'property',NULL,'{}'),
(81,'property',NULL,'{}'),
(82,'property',NULL,'{}'),
(83,'property',NULL,'{}'),
(84,'property',NULL,'{}'),
(85,'property',NULL,'{}'),
(86,'property',NULL,'{}'),
(87,'propery','char1:6db110927a05fd3328ad7fc4f04b2d0077166733','{}'),
(88,'property',NULL,'{}'),
(89,'property',NULL,'{}'),
(90,'property',NULL,'{}'),
(91,'property',NULL,'{}'),
(92,'propery','char1:c63b583a0adbd3cfca2ca710fa544f9c72e75b1f','{}'),
(93,'property',NULL,'{}'),
(94,'property',NULL,'{}'),
(95,'property',NULL,'{}'),
(96,'property',NULL,'{}'),
(97,'property',NULL,'{}'),
(98,'property',NULL,'{}'),
(99,'property',NULL,'{}'),
(100,'property',NULL,'{}'),
(101,'property',NULL,'{}'),
(102,'property',NULL,'{}'),
(103,'property',NULL,'{}'),
(104,'property',NULL,'{}'),
(105,'property',NULL,'{}'),
(106,'property',NULL,'{}'),
(107,'property',NULL,'{}'),
(108,'property',NULL,'{}'),
(109,'property',NULL,'{}'),
(110,'property',NULL,'{}'),
(111,'property',NULL,'{}'),
(112,'property',NULL,'{}'),
(113,'property',NULL,'{}'),
(114,'property',NULL,'{}'),
(115,'property',NULL,'{}'),
(116,'property',NULL,'{}'),
(117,'property',NULL,'{}'),
(118,'property',NULL,'{}'),
(119,'property',NULL,'{}'),
(120,'property',NULL,'{}'),
(121,'property',NULL,'{}'),
(122,'property',NULL,'{}'),
(123,'property',NULL,'{}'),
(124,'property',NULL,'{}'),
(125,'property',NULL,'{}'),
(126,'property',NULL,'{}'),
(127,'property',NULL,'{}'),
(128,'property',NULL,'{}'),
(129,'property',NULL,'{}'),
(130,'property',NULL,'{}'),
(131,'property',NULL,'{}'),
(132,'property',NULL,'{}'),
(133,'property',NULL,'{}'),
(134,'property',NULL,'{}'),
(135,'property',NULL,'{}'),
(136,'property',NULL,'{}'),
(137,'property',NULL,'{}'),
(138,'property',NULL,'{}'),
(139,'property',NULL,'{}'),
(140,'property',NULL,'{}'),
(141,'property',NULL,'{}'),
(142,'property',NULL,'{}'),
(143,'property',NULL,'{}'),
(144,'property',NULL,'{}'),
(145,'property',NULL,'{}'),
(146,'property',NULL,'{}'),
(147,'property',NULL,'{}'),
(148,'property',NULL,'{}'),
(149,'property',NULL,'{}'),
(150,'property',NULL,'{}'),
(151,'property',NULL,'{}'),
(152,'property',NULL,'{}'),
(153,'property',NULL,'{}'),
(154,'property',NULL,'{}'),
(155,'property',NULL,'{}'),
(156,'property',NULL,'{}'),
(157,'property',NULL,'{}'),
(158,'property',NULL,'{}'),
(159,'property',NULL,'{}'),
(160,'property',NULL,'{}'),
(161,'property',NULL,'{}'),
(162,'property',NULL,'{}'),
(163,'property',NULL,'{}'),
(164,'property',NULL,'{}'),
(165,'property',NULL,'{}'),
(166,'property',NULL,'{}'),
(167,'property',NULL,'{}'),
(168,'property',NULL,'{}'),
(169,'property',NULL,'{}'),
(170,'property',NULL,'{}'),
(171,'property',NULL,'{}'),
(172,'property',NULL,'{}'),
(173,'property',NULL,'{}'),
(174,'property',NULL,'{}'),
(175,'property',NULL,'{}'),
(176,'property',NULL,'{}'),
(177,'property',NULL,'{}'),
(178,'property',NULL,'{}'),
(179,'property',NULL,'{}'),
(180,'property',NULL,'{}'),
(181,'property',NULL,'{}'),
(182,'property',NULL,'{}'),
(183,'property',NULL,'{}'),
(184,'property',NULL,'{}'),
(185,'property',NULL,'{}'),
(186,'property',NULL,'{}'),
(187,'property',NULL,'{}'),
(188,'property',NULL,'{}'),
(189,'property',NULL,'{}'),
(190,'property',NULL,'{}'),
(191,'property',NULL,'{}'),
(192,'property',NULL,'{}'),
(193,'property',NULL,'{}'),
(194,'property',NULL,'{}'),
(195,'property',NULL,'{}'),
(196,'property',NULL,'{}'),
(197,'property',NULL,'{}'),
(198,'property',NULL,'{}'),
(199,'property',NULL,'{}'),
(200,'property',NULL,'{}'),
(201,'property',NULL,'{}'),
(202,'property',NULL,'{}'),
(203,'property',NULL,'{}'),
(204,'property',NULL,'{}'),
(205,'property',NULL,'{}'),
(206,'property',NULL,'{}'),
(207,'property',NULL,'{}'),
(208,'property',NULL,'{}'),
(209,'property',NULL,'{}'),
(210,'property',NULL,'{}'),
(211,'property',NULL,'{}'),
(212,'property',NULL,'{}'),
(213,'property',NULL,'{}'),
(214,'property',NULL,'{}'),
(215,'property',NULL,'{}'),
(216,'property',NULL,'{}'),
(217,'property',NULL,'{}'),
(218,'property',NULL,'{}'),
(219,'property',NULL,'{}'),
(220,'property',NULL,'{}'),
(221,'property',NULL,'{}'),
(222,'property',NULL,'{}'),
(223,'property',NULL,'{}'),
(224,'property',NULL,'{}'),
(225,'property',NULL,'{}'),
(226,'property',NULL,'{}'),
(227,'property',NULL,'{}'),
(228,'property',NULL,'{}'),
(229,'property',NULL,'{}'),
(230,'property',NULL,'{}'),
(231,'property',NULL,'{}'),
(232,'property',NULL,'{}'),
(233,'property',NULL,'{}'),
(234,'property',NULL,'{}'),
(235,'property',NULL,'{}'),
(236,'property',NULL,'{}'),
(237,'property',NULL,'{}'),
(238,'property',NULL,'{}'),
(239,'property',NULL,'{}'),
(240,'property',NULL,'{}'),
(241,'property',NULL,'{}'),
(242,'property',NULL,'{}'),
(243,'property',NULL,'{}'),
(244,'property',NULL,'{}'),
(245,'property',NULL,'{}'),
(246,'property',NULL,'{}'),
(247,'property',NULL,'{}'),
(248,'property',NULL,'{}'),
(249,'property',NULL,'{}'),
(250,'property',NULL,'{}'),
(251,'property',NULL,'{}'),
(252,'property',NULL,'{}'),
(253,'property',NULL,'{}'),
(254,'property',NULL,'{}'),
(255,'property',NULL,'{}'),
(256,'property',NULL,'{}');
/*!40000 ALTER TABLE `datastore_data` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `fine_types`
--

DROP TABLE IF EXISTS `fine_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fine_types`
--

LOCK TABLES `fine_types` WRITE;
/*!40000 ALTER TABLE `fine_types` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `fine_types` VALUES
(1,'Misuse of a horn',30,0),
(2,'Illegally Crossing a continuous Line',40,0),
(3,'Driving on the wrong side of the road',250,0),
(4,'Illegal U-Turn',250,0),
(5,'Illegally Driving Off-road',170,0),
(6,'Refusing a Lawful Command',30,0),
(7,'Illegally Stopping a Vehicle',150,0),
(8,'Illegal Parking',70,0),
(9,'Failing to Yield to the right',70,0),
(10,'Failure to comply with Vehicle Information',90,0),
(11,'Failing to stop at a Stop Sign ',105,0),
(12,'Failing to stop at a Red Light',130,0),
(13,'Illegal Passing',100,0),
(14,'Driving an illegal Vehicle',100,0),
(15,'Driving without a License',1500,0),
(16,'Hit and Run',800,0),
(17,'Exceeding Speeds Over < 5 mph',90,0),
(18,'Exceeding Speeds Over 5-15 mph',120,0),
(19,'Exceeding Speeds Over 15-30 mph',180,0),
(20,'Exceeding Speeds Over > 30 mph',300,0),
(21,'Impeding traffic flow',110,1),
(22,'Public Intoxication',90,1),
(23,'Disorderly conduct',90,1),
(24,'Obstruction of Justice',130,1),
(25,'Insults towards Civilans',75,1),
(26,'Disrespecting of an LEO',110,1),
(27,'Verbal Threat towards a Civilan',90,1),
(28,'Verbal Threat towards an LEO',150,1),
(29,'Providing False Information',250,1),
(30,'Attempt of Corruption',1500,1),
(31,'Brandishing a weapon in city Limits',120,2),
(32,'Brandishing a Lethal Weapon in city Limits',300,2),
(33,'No Firearms License',600,2),
(34,'Possession of an Illegal Weapon',700,2),
(35,'Possession of Burglary Tools',300,2),
(36,'Grand Theft Auto',1800,2),
(37,'Intent to Sell/Distrube of an illegal Substance',1500,2),
(38,'Frabrication of an Illegal Substance',1500,2),
(39,'Possession of an Illegal Substance ',650,2),
(40,'Kidnapping of a Civilan',1500,2),
(41,'Kidnapping of an LEO',2000,2),
(42,'Robbery',650,2),
(43,'Armed Robbery of a Store',650,2),
(44,'Armed Robbery of a Bank',1500,2),
(45,'Assault on a Civilian',2000,3),
(46,'Assault of an LEO',2500,3),
(47,'Attempt of Murder of a Civilian',3000,3),
(48,'Attempt of Murder of an LEO',5000,3),
(49,'Murder of a Civilian',10000,3),
(50,'Murder of an LEO',30000,3),
(51,'Involuntary manslaughter',1800,3),
(52,'Fraud',2000,2);
/*!40000 ALTER TABLE `fine_types` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `house_decorations`
--

DROP TABLE IF EXISTS `house_decorations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `house_decorations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `house` varchar(50) DEFAULT NULL,
  `creator` varchar(70) NOT NULL DEFAULT '0',
  `modelName` varchar(50) NOT NULL DEFAULT '0',
  `coords` text DEFAULT NULL,
  `rotation` text NOT NULL DEFAULT '',
  `inStash` tinyint(1) NOT NULL DEFAULT 0,
  `inHouse` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `uniq` varchar(50) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `lightData` text DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`,`house`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `house_decorations`
--

LOCK TABLES `house_decorations` WRITE;
/*!40000 ALTER TABLE `house_decorations` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `house_decorations` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `house_objects`
--

DROP TABLE IF EXISTS `house_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `house_objects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creator` varchar(50) NOT NULL DEFAULT '0',
  `model` varchar(50) NOT NULL DEFAULT '0',
  `coords` text NOT NULL,
  `house` varchar(80) DEFAULT NULL,
  `construction` varchar(50) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `house_objects`
--

LOCK TABLES `house_objects` WRITE;
/*!40000 ALTER TABLE `house_objects` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `house_objects` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `house_plants`
--

DROP TABLE IF EXISTS `house_plants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `house_plants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `building` varchar(50) DEFAULT NULL,
  `stage` varchar(50) DEFAULT 'stage-a',
  `sort` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `food` int(11) DEFAULT 100,
  `health` int(11) DEFAULT 100,
  `progress` int(11) DEFAULT 0,
  `coords` text DEFAULT NULL,
  `plantid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `building` (`building`),
  KEY `plantid` (`plantid`)
) ENGINE=InnoDB AUTO_INCREMENT=7123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `house_plants`
--

LOCK TABLES `house_plants` WRITE;
/*!40000 ALTER TABLE `house_plants` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `house_plants` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `house_rents`
--

DROP TABLE IF EXISTS `house_rents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `house_rents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house` varchar(50) NOT NULL DEFAULT '',
  `identifier` varchar(80) NOT NULL DEFAULT '',
  `payed` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `house_rents`
--

LOCK TABLES `house_rents` WRITE;
/*!40000 ALTER TABLE `house_rents` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `house_rents` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `houselocations`
--

DROP TABLE IF EXISTS `houselocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `houselocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) DEFAULT NULL,
  `coords` text DEFAULT NULL,
  `owned` tinyint(2) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `defaultPrice` int(11) DEFAULT NULL,
  `tier` smallint(6) DEFAULT NULL,
  `garage` text DEFAULT NULL,
  `garageShell` text DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `mlo` text DEFAULT NULL,
  `ipl` text DEFAULT NULL,
  `console` int(11) DEFAULT NULL,
  `board` text DEFAULT NULL,
  `for_sale` int(11) DEFAULT 1,
  `extra_imgs` text DEFAULT NULL,
  `description` text NOT NULL DEFAULT '',
  `creatorJob` varchar(50) DEFAULT NULL,
  `blip` text DEFAULT NULL,
  `upgrades` text DEFAULT NULL,
  `apartmentCount` int(11) DEFAULT NULL,
  `creatorGotMoney` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`) USING BTREE,
  KEY `name` (`name`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `houselocations`
--

LOCK TABLES `houselocations` WRITE;
/*!40000 ALTER TABLE `houselocations` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `houselocations` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 1,
  `rare` tinyint(4) NOT NULL DEFAULT 0,
  `can_remove` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `items` VALUES
('air_filter','Air Filter',1,0,1),
('alive_chicken','Living chicken',1,0,1),
('awd_drivetrain','AWD Drivetrain',1,0,1),
('bandage','Bandage',2,0,1),
('blowpipe','Blowtorch',2,0,1),
('brakepad_replacement','Brakepad Replacement',1,0,1),
('bread','Bread',1,0,1),
('bulletproof_tyres','Bulletproof Tyres',1,0,1),
('cannabis','Cannabis',3,0,1),
('carokit','Body Kit',3,0,1),
('carotool','Tools',2,0,1),
('ceramic_brakes','Ceramic Brakes',1,0,1),
('cleaning_kit','Cleaning Kit',1,0,1),
('clothe','Cloth',1,0,1),
('clutch_replacement','Clutch Replacement',1,0,1),
('copper','Copper',1,0,1),
('cosmetic_part','Cosmetic Parts',1,0,1),
('cutted_wood','Cut wood',1,0,1),
('diamond','Diamond',1,0,1),
('drift_tuning_kit','Drift Tuning Kit',1,0,1),
('duct_tape','Duct Tape',1,0,1),
('empty_nitrous_bottle','Empty Nitrous Bottle',1,0,1),
('engine_oil','Engine Oil',1,0,1),
('essence','Gas',1,0,1),
('ev_battery','EV Battery',1,0,1),
('ev_coolant','EV Coolant',1,0,1),
('ev_motor','EV Motor',1,0,1),
('extras_kit','Extras Kit',1,0,1),
('fabric','Fabric',1,0,1),
('fish','Fish',1,0,1),
('fixkit','Repair Kit',3,0,1),
('fixtool','Repair Tools',2,0,1),
('fwd_drivetrain','FWD Drivetrain',1,0,1),
('gazbottle','Gas Bottle',2,0,1),
('gold','Gold',1,0,1),
('i4_engine','I4 Engine',1,0,1),
('iron','Iron',1,0,1),
('lighting_controller','Lighting Controller',1,0,1),
('manual_gearbox','Manual Gearbox',1,0,1),
('marijuana','Marijuana',2,0,1),
('mechanic_tablet','Mechanic Tablet',1,0,1),
('medikit','Medikit',2,0,1),
('nitrous_bottle','Nitrous Bottle',1,0,1),
('nitrous_install_kit','Nitrous Install Kit',1,0,1),
('offroad_tyres','Offroad Tyres',1,0,1),
('packaged_chicken','Chicken fillet',1,0,1),
('packaged_plank','Packaged wood',1,0,1),
('performance_part','Performance Parts',1,0,1),
('petrol','Oil',1,0,1),
('petrol_raffin','Processed oil',1,0,1),
('phone','Phone',1,0,1),
('racing_gps','Racing GPS',1,0,1),
('radio','Radio',1,0,1),
('repair_kit','Vehicle Repair Kit',1,0,1),
('respray_kit','Respray Kit',1,0,1),
('rwd_drivetrain','RWD Drivetrain',1,0,1),
('semi_slick_tyres','Semi Slick Tyres',1,0,1),
('slaughtered_chicken','Slaughtered chicken',1,0,1),
('slick_tyres','Slick Tyres',1,0,1),
('spark_plug','Spark Plug',1,0,1),
('stancing_kit','Stance Kit',1,0,1),
('stone','Stone',1,0,1),
('suspension_parts','Suspension Parts',1,0,1),
('turbocharger','Turbo',1,0,1),
('tyre_replacement','Tyre Replacement',1,0,1),
('tyre_smoke_kit','Tyre Smoke Kit',1,0,1),
('v12_engine','V12 Engine',1,0,1),
('v6_engine','V6 Engine',1,0,1),
('v8_engine','V8 Engine',1,0,1),
('vehicle_wheels','Vehicle Wheels Set',1,0,1),
('washed_stone','Washed stone',1,0,1),
('water','Water',1,0,1),
('wood','Wood',1,0,1),
('wool','Wool',1,0,1);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `job_grades`
--

DROP TABLE IF EXISTS `job_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_grades`
--

LOCK TABLES `job_grades` WRITE;
/*!40000 ALTER TABLE `job_grades` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `job_grades` VALUES
(1,'unemployed',0,'unemployed','Unemployed',200,'{}','{}'),
(2,'police',0,'recruit','Recruit',20,'{}','{}'),
(3,'police',1,'officer','Officer',40,'{}','{}'),
(4,'police',2,'sergeant','Sergeant',60,'{}','{}'),
(5,'police',3,'lieutenant','Lieutenant',85,'{}','{}'),
(6,'police',4,'boss','Captain',100,'{}','{}'),
(11,'cardealer',0,'recruit','Recruit',10,'{}','{}'),
(12,'cardealer',1,'novice','Novice',25,'{}','{}'),
(13,'cardealer',2,'experienced','Experienced',40,'{}','{}'),
(14,'cardealer',3,'boss','Boss',0,'{}','{}'),
(15,'lumberjack',0,'employee','Employee',0,'{}','{}'),
(16,'fisherman',0,'employee','Employee',0,'{}','{}'),
(17,'fueler',0,'employee','Employee',0,'{}','{}'),
(18,'reporter',0,'employee','Employee',0,'{}','{}'),
(19,'tailor',0,'employee','Employee',0,'{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":24,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}','{\"mask_1\":0,\"arms\":5,\"glasses_1\":5,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":1,\"torso_1\":52,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":23,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":42,\"tshirt_2\":4,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":36,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}'),
(20,'miner',0,'employee','Employee',0,'{\"tshirt_2\":1,\"ears_1\":8,\"glasses_1\":15,\"torso_2\":0,\"ears_2\":2,\"glasses_2\":3,\"shoes_2\":1,\"pants_1\":75,\"shoes_1\":51,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":7,\"torso_1\":71,\"tshirt_1\":59,\"arms\":2,\"bags_2\":0,\"helmet_1\":0}','{}'),
(21,'slaughterer',0,'employee','Employee',0,'{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":67,\"pants_1\":36,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":0,\"torso_1\":56,\"beard_2\":6,\"shoes_1\":12,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":15,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}','{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}'),
(22,'ambulance',0,'ambulance','Jr. EMT',20,'{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}','{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(23,'ambulance',1,'doctor','EMT',40,'{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}','{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(24,'ambulance',2,'chief_doctor','Sr. EMT',60,'{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}','{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(25,'ambulance',3,'boss','EMT Supervisor',80,'{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}','{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(26,'mechanic',0,'recrue','Recruit',12,'{}','{}'),
(27,'mechanic',1,'novice','Novice',24,'{}','{}'),
(28,'mechanic',2,'experimente','Experienced',36,'{}','{}'),
(29,'mechanic',3,'chief','Leader',48,'{}','{}'),
(30,'mechanic',4,'boss','Boss',0,'{}','{}'),
(31,'taxi',0,'recrue','Recruit',12,'{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}','{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(32,'taxi',1,'novice','Cabby',24,'{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}','{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(33,'taxi',2,'experimente','Experienced',36,'{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}','{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(34,'taxi',3,'uber','Uber Cabby',48,'{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}','{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(35,'taxi',4,'boss','Lead Cabby',0,'{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}','{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(36,'banker',0,'advisor','Consultant',10,'{}','{}'),
(37,'banker',1,'banker','Banker',20,'{}','{}'),
(38,'banker',2,'business_banker','Investment banker',30,'{}','{}'),
(39,'banker',3,'trader','Broker',40,'{}','{}'),
(40,'banker',4,'boss','Boss',0,'{}','{}');
/*!40000 ALTER TABLE `job_grades` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'civ',
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `jobs` VALUES
('ambulance','EMS','ems',0),
('banker','Banker','civ',0),
('cardealer','Cardealer','civ',0),
('fisherman','Fisherman','civ',0),
('fueler','Fueler','civ',0),
('lumberjack','Lumberjack','civ',0),
('mechanic','Mechanic','mechanic',0),
('miner','Miner','civ',0),
('police','LSPD','leo',0),
('reporter','Reporter','civ',0),
('slaughterer','Butcher','civ',0),
('tailor','Tailor','civ',0),
('taxi','Taxi','civ',0),
('unemployed','Unemployed','civ',0);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `kaves_mechanics`
--

DROP TABLE IF EXISTS `kaves_mechanics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `kaves_mechanics` (
  `plate` text DEFAULT NULL,
  `data` longtext DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaves_mechanics`
--

LOCK TABLES `kaves_mechanics` WRITE;
/*!40000 ALTER TABLE `kaves_mechanics` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `kaves_mechanics` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `licenses`
--

DROP TABLE IF EXISTS `licenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licenses`
--

LOCK TABLES `licenses` WRITE;
/*!40000 ALTER TABLE `licenses` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `licenses` VALUES
('boat','Boat License'),
('dmv','Driving Permit'),
('drive','Drivers License'),
('drive_bike','Motorcycle License'),
('drive_truck','Commercial Drivers License'),
('weed_processing','Weed Processing License');
/*!40000 ALTER TABLE `licenses` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `management_outfits`
--

DROP TABLE IF EXISTS `management_outfits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `management_outfits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `minrank` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT 'Cool Outfit',
  `gender` varchar(50) NOT NULL DEFAULT 'male',
  `model` varchar(50) DEFAULT NULL,
  `props` varchar(1000) DEFAULT NULL,
  `components` varchar(1500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_outfits`
--

LOCK TABLES `management_outfits` WRITE;
/*!40000 ALTER TABLE `management_outfits` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `management_outfits` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `mechanic_data`
--

DROP TABLE IF EXISTS `mechanic_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `mechanic_data` (
  `name` varchar(100) NOT NULL,
  `label` varchar(255) NOT NULL,
  `balance` float NOT NULL DEFAULT 0,
  `owner_id` varchar(255) DEFAULT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mechanic_data`
--

LOCK TABLES `mechanic_data` WRITE;
/*!40000 ALTER TABLE `mechanic_data` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `mechanic_data` VALUES
('bennys','',0,NULL,NULL),
('lscustoms','',0,NULL,NULL);
/*!40000 ALTER TABLE `mechanic_data` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `mechanic_employees`
--

DROP TABLE IF EXISTS `mechanic_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `mechanic_employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `mechanic` varchar(255) NOT NULL,
  `role` varchar(100) NOT NULL,
  `joined` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mechanic_employees`
--

LOCK TABLES `mechanic_employees` WRITE;
/*!40000 ALTER TABLE `mechanic_employees` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `mechanic_employees` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `mechanic_invoices`
--

DROP TABLE IF EXISTS `mechanic_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `mechanic_invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) DEFAULT NULL,
  `mechanic` varchar(255) NOT NULL,
  `total` float NOT NULL,
  `data` text NOT NULL,
  `paid` tinyint(1) DEFAULT 0,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mechanic_invoices`
--

LOCK TABLES `mechanic_invoices` WRITE;
/*!40000 ALTER TABLE `mechanic_invoices` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `mechanic_invoices` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `mechanic_orders`
--

DROP TABLE IF EXISTS `mechanic_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `mechanic_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `mechanic` varchar(255) NOT NULL,
  `plate` varchar(10) NOT NULL,
  `amount_paid` float NOT NULL DEFAULT 0,
  `cart` text NOT NULL,
  `props_to_apply` text NOT NULL,
  `installation_progress` text DEFAULT NULL,
  `fulfilled` tinyint(1) DEFAULT 0,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mechanic_orders`
--

LOCK TABLES `mechanic_orders` WRITE;
/*!40000 ALTER TABLE `mechanic_orders` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `mechanic_orders` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `mechanic_servicing_history`
--

DROP TABLE IF EXISTS `mechanic_servicing_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `mechanic_servicing_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `mechanic` varchar(255) NOT NULL,
  `plate` varchar(10) NOT NULL,
  `serviced_part` varchar(10) NOT NULL,
  `mileage_km` float NOT NULL DEFAULT 0,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mechanic_servicing_history`
--

LOCK TABLES `mechanic_servicing_history` WRITE;
/*!40000 ALTER TABLE `mechanic_servicing_history` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `mechanic_servicing_history` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `mechanic_settings`
--

DROP TABLE IF EXISTS `mechanic_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `mechanic_settings` (
  `identifier` varchar(255) NOT NULL,
  `preferences` text DEFAULT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mechanic_settings`
--

LOCK TABLES `mechanic_settings` WRITE;
/*!40000 ALTER TABLE `mechanic_settings` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `mechanic_settings` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `mechanic_vehicledata`
--

DROP TABLE IF EXISTS `mechanic_vehicledata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `mechanic_vehicledata` (
  `plate` varchar(10) NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mechanic_vehicledata`
--

LOCK TABLES `mechanic_vehicledata` WRITE;
/*!40000 ALTER TABLE `mechanic_vehicledata` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `mechanic_vehicledata` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `multicharacter_slots`
--

DROP TABLE IF EXISTS `multicharacter_slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `multicharacter_slots` (
  `identifier` varchar(46) NOT NULL,
  `slots` int(11) NOT NULL,
  PRIMARY KEY (`identifier`) USING BTREE,
  KEY `slots` (`slots`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multicharacter_slots`
--

LOCK TABLES `multicharacter_slots` WRITE;
/*!40000 ALTER TABLE `multicharacter_slots` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `multicharacter_slots` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `owned_vehicles`
--

DROP TABLE IF EXISTS `owned_vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `owned_vehicles` (
  `owner` varchar(46) DEFAULT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(4) NOT NULL DEFAULT 0,
  `parking` varchar(60) DEFAULT NULL,
  `pound` varchar(60) DEFAULT NULL,
  `mileage` float DEFAULT 0,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owned_vehicles`
--

LOCK TABLES `owned_vehicles` WRITE;
/*!40000 ALTER TABLE `owned_vehicles` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `owned_vehicles` VALUES
('char1:6db110927a05fd3328ad7fc4f04b2d0077166733','FWT 895','{\"modFrontBumper\":-1,\"modDoorSpeaker\":-1,\"windowTint\":-1,\"tyresCanBurst\":1,\"modHydrolic\":-1,\"modCustomFrontWheels\":false,\"modFrontWheels\":-1,\"modStruts\":-1,\"tankHealth\":998.8,\"modSpeakers\":-1,\"color1\":88,\"plate\":\"FWT 895\",\"modAirFilter\":-1,\"modTransmission\":-1,\"engineHealth\":988.8,\"modRoof\":-1,\"xenonColor\":255,\"modDial\":-1,\"modRightFender\":-1,\"fuelLevel\":65,\"modGrille\":-1,\"doorsBroken\":{\"4\":false,\"3\":false,\"0\":false,\"2\":false,\"1\":false},\"tyreSmokeColor\":[255,255,255],\"modTrimA\":-1,\"wheelColor\":0,\"model\":-295689028,\"modWindows\":-1,\"modBackWheels\":-1,\"modAerials\":-1,\"modTrunk\":-1,\"neonColor\":[255,0,255],\"modExhaust\":-1,\"tyreBurst\":{\"4\":false,\"1\":false,\"0\":false,\"5\":false},\"modHood\":-1,\"modArchCover\":-1,\"modSuspension\":-1,\"interiorColor\":31,\"dirtLevel\":0.2,\"modTurbo\":false,\"modDashboard\":-1,\"neonEnabled\":[false,false,false,false],\"modSpoilers\":-1,\"extras\":[],\"windowsBroken\":{\"4\":true,\"3\":false,\"6\":false,\"5\":true,\"0\":false,\"7\":false,\"2\":false,\"1\":false},\"modBrakes\":-1,\"dashboardColor\":134,\"modRoofLivery\":-1,\"wheels\":0,\"modEngineBlock\":-1,\"modLivery\":-1,\"modFender\":-1,\"modPlateHolder\":-1,\"modTrimB\":-1,\"plateIndex\":0,\"modXenon\":false,\"modOrnaments\":-1,\"modTank\":-1,\"modShifterLeavers\":-1,\"modFrame\":-1,\"pearlescentColor\":0,\"modAPlate\":-1,\"modSmokeEnabled\":false,\"modVanityPlate\":-1,\"modArmor\":-1,\"modCustomBackWheels\":false,\"modLightbar\":-1,\"modHorns\":-1,\"bodyHealth\":992.5,\"modRearBumper\":-1,\"modSteeringWheel\":-1,\"modEngine\":-1,\"modSeats\":-1,\"modSideSkirt\":-1,\"color2\":88}','car',NULL,0,NULL,NULL,3.27),
('char1:6db110927a05fd3328ad7fc4f04b2d0077166733','NBZ 915','{\"modFrontBumper\":-1,\"modDoorSpeaker\":-1,\"windowTint\":-1,\"tyresCanBurst\":1,\"modHydrolic\":-1,\"modCustomFrontWheels\":false,\"modFrontWheels\":-1,\"modStruts\":-1,\"tankHealth\":996.9,\"modSpeakers\":-1,\"color1\":38,\"plate\":\"NBZ 915\",\"modAirFilter\":-1,\"modTransmission\":-1,\"engineHealth\":957.8,\"modRoof\":-1,\"xenonColor\":255,\"modDial\":-1,\"modLightbar\":-1,\"fuelLevel\":60,\"modGrille\":-1,\"doorsBroken\":{\"4\":false,\"3\":false,\"0\":false,\"2\":false,\"1\":false},\"tyreSmokeColor\":[255,255,255],\"modOrnaments\":-1,\"wheelColor\":0,\"modTrimB\":-1,\"modWindows\":-1,\"modBackWheels\":-1,\"modAerials\":-1,\"modTrunk\":-1,\"bodyHealth\":970.9,\"modExhaust\":-1,\"tyreBurst\":{\"4\":false,\"0\":false,\"1\":false,\"5\":false},\"modHood\":-1,\"modArchCover\":-1,\"modSuspension\":-1,\"interiorColor\":111,\"dirtLevel\":5.1,\"modTurbo\":false,\"modDashboard\":-1,\"neonEnabled\":[false,false,false,false],\"modSpoilers\":-1,\"modBrakes\":-1,\"windowsBroken\":{\"4\":true,\"3\":false,\"6\":false,\"5\":true,\"0\":false,\"7\":false,\"2\":false,\"1\":false},\"neonColor\":[255,0,255],\"modXenon\":false,\"dashboardColor\":111,\"wheels\":1,\"modAPlate\":-1,\"extras\":[],\"modSteeringWheel\":-1,\"model\":1841130506,\"modRightFender\":-1,\"plateIndex\":0,\"modShifterLeavers\":-1,\"modTrimA\":-1,\"modTank\":-1,\"modPlateHolder\":-1,\"modFrame\":-1,\"pearlescentColor\":134,\"modRoofLivery\":-1,\"modEngine\":-1,\"modVanityPlate\":-1,\"modArmor\":-1,\"modSmokeEnabled\":false,\"modCustomBackWheels\":false,\"modHorns\":-1,\"modEngineBlock\":-1,\"modRearBumper\":-1,\"modFender\":-1,\"modLivery\":-1,\"modSeats\":-1,\"modSideSkirt\":-1,\"color2\":38}','car',NULL,0,NULL,NULL,0.9),
('char1:6db110927a05fd3328ad7fc4f04b2d0077166733','TMO 666','{\"modDashboard\":-1,\"modFrame\":-1,\"modTrimB\":-1,\"plateIndex\":0,\"engineHealth\":973,\"modRoofLivery\":-1,\"modCustomBackWheels\":false,\"interiorColor\":93,\"modShifterLeavers\":-1,\"fuelLevel\":65,\"modHydrolic\":-1,\"modTrunk\":-1,\"dashboardColor\":93,\"plate\":\"TMO 666\",\"modSteeringWheel\":-1,\"modSideSkirt\":-1,\"tyreBurst\":{\"4\":false,\"0\":false,\"1\":false,\"5\":false},\"modAPlate\":-1,\"modHorns\":-1,\"tyresCanBurst\":1,\"modXenon\":false,\"bodyHealth\":982,\"pearlescentColor\":54,\"modTransmission\":-1,\"modHood\":-1,\"tyreSmokeColor\":[255,255,255],\"dirtLevel\":3.2,\"modExhaust\":2,\"tankHealth\":998.2,\"modArchCover\":-1,\"extras\":[],\"neonColor\":[255,0,255],\"color1\":49,\"modAerials\":-1,\"modTrimA\":-1,\"modDoorSpeaker\":-1,\"windowTint\":-1,\"wheelColor\":112,\"modBackWheels\":-1,\"modBrakes\":-1,\"doorsBroken\":{\"0\":false,\"3\":false,\"4\":false,\"1\":false,\"2\":false},\"modLivery\":-1,\"modFrontBumper\":-1,\"modOrnaments\":-1,\"windowsBroken\":{\"7\":false,\"0\":false,\"5\":true,\"6\":false,\"3\":false,\"4\":true,\"1\":false,\"2\":false},\"modDial\":-1,\"modRoof\":-1,\"neonEnabled\":[false,false,false,false],\"modGrille\":-1,\"modFrontWheels\":-1,\"modLightbar\":-1,\"modSmokeEnabled\":1,\"modTurbo\":false,\"modSeats\":-1,\"modTank\":-1,\"modSpoilers\":-1,\"modSuspension\":-1,\"modArmor\":-1,\"modCustomFrontWheels\":false,\"modAirFilter\":-1,\"modStruts\":-1,\"model\":2049897956,\"color2\":49,\"modRightFender\":-1,\"xenonColor\":255,\"wheels\":1,\"modEngineBlock\":-1,\"modFender\":-1,\"modVanityPlate\":-1,\"modEngine\":-1,\"modPlateHolder\":-1,\"modRearBumper\":-1,\"modWindows\":-1,\"modSpeakers\":-1}','car',NULL,0,NULL,NULL,11.22);
/*!40000 ALTER TABLE `owned_vehicles` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_backups`
--

DROP TABLE IF EXISTS `phone_backups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_backups` (
  `id` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_backups_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_backups`
--

LOCK TABLES `phone_backups` WRITE;
/*!40000 ALTER TABLE `phone_backups` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `phone_backups` VALUES
('char1:c63b583a0adbd3cfca2ca710fa544f9c72e75b1f','2056441810'),
('char1:6db110927a05fd3328ad7fc4f04b2d0077166733','9073299501');
/*!40000 ALTER TABLE `phone_backups` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_clock_alarms`
--

DROP TABLE IF EXISTS `phone_clock_alarms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_clock_alarms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `hours` int(2) NOT NULL DEFAULT 0,
  `minutes` int(2) NOT NULL DEFAULT 0,
  `label` varchar(50) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`,`phone_number`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_clock_alarms_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_clock_alarms`
--

LOCK TABLES `phone_clock_alarms` WRITE;
/*!40000 ALTER TABLE `phone_clock_alarms` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_clock_alarms` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_crypto`
--

DROP TABLE IF EXISTS `phone_crypto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_crypto` (
  `id` varchar(100) NOT NULL,
  `coin` varchar(15) NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `invested` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`,`coin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_crypto`
--

LOCK TABLES `phone_crypto` WRITE;
/*!40000 ALTER TABLE `phone_crypto` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_crypto` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_darkchat_accounts`
--

DROP TABLE IF EXISTS `phone_darkchat_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_darkchat_accounts` (
  `phone_number` varchar(15) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`username`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_darkchat_accounts_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_darkchat_accounts`
--

LOCK TABLES `phone_darkchat_accounts` WRITE;
/*!40000 ALTER TABLE `phone_darkchat_accounts` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_darkchat_accounts` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_darkchat_channels`
--

DROP TABLE IF EXISTS `phone_darkchat_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_darkchat_channels` (
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_darkchat_channels`
--

LOCK TABLES `phone_darkchat_channels` WRITE;
/*!40000 ALTER TABLE `phone_darkchat_channels` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_darkchat_channels` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_darkchat_members`
--

DROP TABLE IF EXISTS `phone_darkchat_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_darkchat_members` (
  `channel_name` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  PRIMARY KEY (`channel_name`,`username`),
  KEY `username` (`username`),
  CONSTRAINT `phone_darkchat_members_ibfk_1` FOREIGN KEY (`channel_name`) REFERENCES `phone_darkchat_channels` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_darkchat_members_ibfk_2` FOREIGN KEY (`username`) REFERENCES `phone_darkchat_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_darkchat_members`
--

LOCK TABLES `phone_darkchat_members` WRITE;
/*!40000 ALTER TABLE `phone_darkchat_members` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_darkchat_members` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_darkchat_messages`
--

DROP TABLE IF EXISTS `phone_darkchat_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_darkchat_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(50) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `channel` (`channel`),
  KEY `sender` (`sender`),
  CONSTRAINT `phone_darkchat_messages_ibfk_1` FOREIGN KEY (`channel`) REFERENCES `phone_darkchat_channels` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_darkchat_messages_ibfk_2` FOREIGN KEY (`sender`) REFERENCES `phone_darkchat_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_darkchat_messages`
--

LOCK TABLES `phone_darkchat_messages` WRITE;
/*!40000 ALTER TABLE `phone_darkchat_messages` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_darkchat_messages` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_instagram_accounts`
--

DROP TABLE IF EXISTS `phone_instagram_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_instagram_accounts` (
  `display_name` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `profile_image` varchar(500) DEFAULT NULL,
  `bio` varchar(100) DEFAULT NULL,
  `post_count` int(11) NOT NULL DEFAULT 0,
  `story_count` int(11) NOT NULL DEFAULT 0,
  `follower_count` int(11) NOT NULL DEFAULT 0,
  `following_count` int(11) NOT NULL DEFAULT 0,
  `phone_number` varchar(15) NOT NULL,
  `private` tinyint(1) DEFAULT 0,
  `verified` tinyint(1) DEFAULT 0,
  `date_joined` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`username`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_instagram_accounts_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_instagram_accounts`
--

LOCK TABLES `phone_instagram_accounts` WRITE;
/*!40000 ALTER TABLE `phone_instagram_accounts` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_instagram_accounts` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_instagram_comments`
--

DROP TABLE IF EXISTS `phone_instagram_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_instagram_comments` (
  `id` varchar(10) NOT NULL,
  `post_id` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `comment` varchar(500) NOT NULL DEFAULT '',
  `like_count` int(11) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `username` (`username`),
  CONSTRAINT `phone_instagram_comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `phone_instagram_posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `phone_instagram_comments_ibfk_2` FOREIGN KEY (`username`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_instagram_comments`
--

LOCK TABLES `phone_instagram_comments` WRITE;
/*!40000 ALTER TABLE `phone_instagram_comments` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_instagram_comments` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`fivem_user`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_instagram_increment_comment_count
AFTER INSERT ON phone_instagram_comments
FOR EACH ROW
BEGIN
    UPDATE phone_instagram_posts
    SET comment_count = comment_count + 1
    WHERE id = NEW.post_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`fivem_user`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_instagram_decrement_comment_count
AFTER DELETE ON phone_instagram_comments
FOR EACH ROW
BEGIN
    UPDATE phone_instagram_posts
    SET comment_count = comment_count - 1
    WHERE id = OLD.post_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phone_instagram_follow_requests`
--

DROP TABLE IF EXISTS `phone_instagram_follow_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_instagram_follow_requests` (
  `requester` varchar(20) NOT NULL,
  `requestee` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`requester`,`requestee`),
  KEY `requestee` (`requestee`),
  CONSTRAINT `phone_instagram_follow_requests_ibfk_1` FOREIGN KEY (`requester`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_instagram_follow_requests_ibfk_2` FOREIGN KEY (`requestee`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_instagram_follow_requests`
--

LOCK TABLES `phone_instagram_follow_requests` WRITE;
/*!40000 ALTER TABLE `phone_instagram_follow_requests` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_instagram_follow_requests` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_instagram_follows`
--

DROP TABLE IF EXISTS `phone_instagram_follows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_instagram_follows` (
  `followed` varchar(20) NOT NULL,
  `follower` varchar(20) NOT NULL,
  PRIMARY KEY (`followed`,`follower`),
  KEY `follower` (`follower`),
  CONSTRAINT `phone_instagram_follows_ibfk_1` FOREIGN KEY (`followed`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_instagram_follows_ibfk_2` FOREIGN KEY (`follower`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_instagram_follows`
--

LOCK TABLES `phone_instagram_follows` WRITE;
/*!40000 ALTER TABLE `phone_instagram_follows` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_instagram_follows` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`fivem_user`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_instagram_update_counts_after_follow
AFTER INSERT ON phone_instagram_follows
FOR EACH ROW
BEGIN
    UPDATE phone_instagram_accounts
    SET follower_count = follower_count + 1
    WHERE username = NEW.followed;

    UPDATE phone_instagram_accounts
    SET following_count = following_count + 1
    WHERE username = NEW.follower;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`fivem_user`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_instagram_update_counts_after_unfollow
AFTER DELETE ON phone_instagram_follows
FOR EACH ROW
BEGIN
    UPDATE phone_instagram_accounts
    SET follower_count = follower_count - 1
    WHERE username = OLD.followed;

    UPDATE phone_instagram_accounts
    SET following_count = following_count - 1
    WHERE username = OLD.follower;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phone_instagram_likes`
--

DROP TABLE IF EXISTS `phone_instagram_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_instagram_likes` (
  `id` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `is_comment` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`,`username`),
  KEY `username` (`username`),
  CONSTRAINT `phone_instagram_likes_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_instagram_likes`
--

LOCK TABLES `phone_instagram_likes` WRITE;
/*!40000 ALTER TABLE `phone_instagram_likes` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_instagram_likes` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`fivem_user`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_instagram_increment_like_count
AFTER INSERT ON phone_instagram_likes
FOR EACH ROW
BEGIN
    IF NEW.is_comment = 0 THEN
        UPDATE phone_instagram_posts
        SET like_count = like_count + 1
        WHERE id = NEW.id;
    ELSE
        UPDATE phone_instagram_comments
        SET like_count = like_count + 1
        WHERE id = NEW.id;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`fivem_user`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_instagram_decrement_like_count
AFTER DELETE ON phone_instagram_likes
FOR EACH ROW
BEGIN
    IF OLD.is_comment = 0 THEN
        UPDATE phone_instagram_posts
        SET like_count = like_count - 1
        WHERE id = OLD.id;
    ELSE
        UPDATE phone_instagram_comments
        SET like_count = like_count - 1
        WHERE id = OLD.id;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phone_instagram_messages`
--

DROP TABLE IF EXISTS `phone_instagram_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_instagram_messages` (
  `id` varchar(10) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `recipient` varchar(20) NOT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `sender` (`sender`),
  KEY `recipient` (`recipient`),
  CONSTRAINT `phone_instagram_messages_ibfk_1` FOREIGN KEY (`sender`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_instagram_messages_ibfk_2` FOREIGN KEY (`recipient`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_instagram_messages`
--

LOCK TABLES `phone_instagram_messages` WRITE;
/*!40000 ALTER TABLE `phone_instagram_messages` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_instagram_messages` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_instagram_notifications`
--

DROP TABLE IF EXISTS `phone_instagram_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_instagram_notifications` (
  `id` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `from` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `post_id` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `from` (`from`),
  CONSTRAINT `phone_instagram_notifications_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_instagram_notifications_ibfk_2` FOREIGN KEY (`from`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_instagram_notifications`
--

LOCK TABLES `phone_instagram_notifications` WRITE;
/*!40000 ALTER TABLE `phone_instagram_notifications` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_instagram_notifications` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_instagram_posts`
--

DROP TABLE IF EXISTS `phone_instagram_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_instagram_posts` (
  `id` varchar(10) NOT NULL,
  `media` text DEFAULT NULL,
  `caption` varchar(500) NOT NULL DEFAULT '',
  `location` varchar(50) DEFAULT NULL,
  `like_count` int(11) NOT NULL DEFAULT 0,
  `comment_count` int(11) NOT NULL DEFAULT 0,
  `username` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  CONSTRAINT `phone_instagram_posts_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_instagram_posts`
--

LOCK TABLES `phone_instagram_posts` WRITE;
/*!40000 ALTER TABLE `phone_instagram_posts` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_instagram_posts` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`fivem_user`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_instagram_increment_post_count
AFTER INSERT ON phone_instagram_posts
FOR EACH ROW
BEGIN
    UPDATE phone_instagram_accounts
    SET post_count = post_count + 1
    WHERE username = NEW.username;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`fivem_user`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_instagram_decrement_post_count
AFTER DELETE ON phone_instagram_posts
FOR EACH ROW
BEGIN
    UPDATE phone_instagram_accounts
    SET post_count = post_count - 1
    WHERE username = OLD.username;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phone_instagram_stories`
--

DROP TABLE IF EXISTS `phone_instagram_stories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_instagram_stories` (
  `id` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `image` varchar(500) NOT NULL,
  `metadata` longtext DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  CONSTRAINT `phone_instagram_stories_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_instagram_stories`
--

LOCK TABLES `phone_instagram_stories` WRITE;
/*!40000 ALTER TABLE `phone_instagram_stories` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_instagram_stories` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`fivem_user`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_instagram_increment_story_count
AFTER INSERT ON phone_instagram_stories
FOR EACH ROW
BEGIN
    UPDATE phone_instagram_accounts
    SET story_count = story_count + 1
    WHERE username = NEW.username;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`fivem_user`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_instagram_decrement_story_count
AFTER DELETE ON phone_instagram_stories
FOR EACH ROW
BEGIN
    UPDATE phone_instagram_accounts
    SET story_count = story_count - 1
    WHERE username = OLD.username;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phone_instagram_stories_views`
--

DROP TABLE IF EXISTS `phone_instagram_stories_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_instagram_stories_views` (
  `story_id` varchar(50) NOT NULL,
  `viewer` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`story_id`,`viewer`),
  KEY `viewer` (`viewer`),
  CONSTRAINT `phone_instagram_stories_views_ibfk_1` FOREIGN KEY (`story_id`) REFERENCES `phone_instagram_stories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `phone_instagram_stories_views_ibfk_2` FOREIGN KEY (`viewer`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_instagram_stories_views`
--

LOCK TABLES `phone_instagram_stories_views` WRITE;
/*!40000 ALTER TABLE `phone_instagram_stories_views` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_instagram_stories_views` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_last_phone`
--

DROP TABLE IF EXISTS `phone_last_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_last_phone` (
  `id` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_last_phone_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_last_phone`
--

LOCK TABLES `phone_last_phone` WRITE;
/*!40000 ALTER TABLE `phone_last_phone` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_last_phone` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_logged_in_accounts`
--

DROP TABLE IF EXISTS `phone_logged_in_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_logged_in_accounts` (
  `phone_number` varchar(15) NOT NULL,
  `app` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`phone_number`,`app`,`username`),
  CONSTRAINT `phone_logged_in_accounts_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_logged_in_accounts`
--

LOCK TABLES `phone_logged_in_accounts` WRITE;
/*!40000 ALTER TABLE `phone_logged_in_accounts` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_logged_in_accounts` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_mail_accounts`
--

DROP TABLE IF EXISTS `phone_mail_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_mail_accounts` (
  `address` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_mail_accounts`
--

LOCK TABLES `phone_mail_accounts` WRITE;
/*!40000 ALTER TABLE `phone_mail_accounts` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_mail_accounts` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_mail_deleted`
--

DROP TABLE IF EXISTS `phone_mail_deleted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_mail_deleted` (
  `message_id` int(10) unsigned NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`message_id`,`address`),
  KEY `address` (`address`),
  CONSTRAINT `phone_mail_deleted_ibfk_1` FOREIGN KEY (`message_id`) REFERENCES `phone_mail_messages` (`id`) ON DELETE CASCADE,
  CONSTRAINT `phone_mail_deleted_ibfk_2` FOREIGN KEY (`address`) REFERENCES `phone_mail_accounts` (`address`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_mail_deleted`
--

LOCK TABLES `phone_mail_deleted` WRITE;
/*!40000 ALTER TABLE `phone_mail_deleted` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_mail_deleted` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_mail_messages`
--

DROP TABLE IF EXISTS `phone_mail_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_mail_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recipient` varchar(100) NOT NULL,
  `sender` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `attachments` longtext DEFAULT NULL,
  `actions` longtext DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_recipient` (`recipient`),
  KEY `idx_sender` (`sender`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_mail_messages`
--

LOCK TABLES `phone_mail_messages` WRITE;
/*!40000 ALTER TABLE `phone_mail_messages` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_mail_messages` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_maps_locations`
--

DROP TABLE IF EXISTS `phone_maps_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_maps_locations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `x_pos` float NOT NULL,
  `y_pos` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_maps_locations_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_maps_locations`
--

LOCK TABLES `phone_maps_locations` WRITE;
/*!40000 ALTER TABLE `phone_maps_locations` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_maps_locations` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_marketplace_posts`
--

DROP TABLE IF EXISTS `phone_marketplace_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_marketplace_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `attachments` text DEFAULT NULL,
  `price` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_marketplace_posts_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_marketplace_posts`
--

LOCK TABLES `phone_marketplace_posts` WRITE;
/*!40000 ALTER TABLE `phone_marketplace_posts` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_marketplace_posts` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_message_channels`
--

DROP TABLE IF EXISTS `phone_message_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_message_channels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_group` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(50) DEFAULT NULL,
  `last_message` varchar(50) NOT NULL DEFAULT '',
  `last_message_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_message_channels`
--

LOCK TABLES `phone_message_channels` WRITE;
/*!40000 ALTER TABLE `phone_message_channels` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_message_channels` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_message_members`
--

DROP TABLE IF EXISTS `phone_message_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_message_members` (
  `channel_id` int(11) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `is_owner` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `unread` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`channel_id`,`phone_number`),
  KEY `idx_members_phone_number` (`phone_number`),
  CONSTRAINT `phone_message_members_ibfk_1` FOREIGN KEY (`channel_id`) REFERENCES `phone_message_channels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_message_members`
--

LOCK TABLES `phone_message_members` WRITE;
/*!40000 ALTER TABLE `phone_message_members` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_message_members` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_message_messages`
--

DROP TABLE IF EXISTS `phone_message_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_message_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id` int(11) NOT NULL,
  `sender` varchar(15) NOT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `channel_id` (`channel_id`),
  CONSTRAINT `phone_message_messages_ibfk_1` FOREIGN KEY (`channel_id`) REFERENCES `phone_message_channels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_message_messages`
--

LOCK TABLES `phone_message_messages` WRITE;
/*!40000 ALTER TABLE `phone_message_messages` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_message_messages` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_music_playlists`
--

DROP TABLE IF EXISTS `phone_music_playlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_music_playlists` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cover` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_music_playlists_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_music_playlists`
--

LOCK TABLES `phone_music_playlists` WRITE;
/*!40000 ALTER TABLE `phone_music_playlists` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `phone_music_playlists` VALUES
(1,'9073299501','1',NULL);
/*!40000 ALTER TABLE `phone_music_playlists` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_music_saved_playlists`
--

DROP TABLE IF EXISTS `phone_music_saved_playlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_music_saved_playlists` (
  `playlist_id` int(10) unsigned NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  PRIMARY KEY (`playlist_id`,`phone_number`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_music_saved_playlists_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `phone_music_playlists` (`id`) ON DELETE CASCADE,
  CONSTRAINT `phone_music_saved_playlists_ibfk_2` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_music_saved_playlists`
--

LOCK TABLES `phone_music_saved_playlists` WRITE;
/*!40000 ALTER TABLE `phone_music_saved_playlists` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `phone_music_saved_playlists` VALUES
(1,'9073299501');
/*!40000 ALTER TABLE `phone_music_saved_playlists` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_music_songs`
--

DROP TABLE IF EXISTS `phone_music_songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_music_songs` (
  `song_id` varchar(100) NOT NULL,
  `playlist_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`song_id`,`playlist_id`),
  KEY `playlist_id` (`playlist_id`),
  CONSTRAINT `phone_music_songs_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `phone_music_playlists` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_music_songs`
--

LOCK TABLES `phone_music_songs` WRITE;
/*!40000 ALTER TABLE `phone_music_songs` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_music_songs` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_notes`
--

DROP TABLE IF EXISTS `phone_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` longtext DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_notes_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_notes`
--

LOCK TABLES `phone_notes` WRITE;
/*!40000 ALTER TABLE `phone_notes` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `phone_notes` VALUES
(1,'9073299501','New Note','','2025-10-26 18:17:12');
/*!40000 ALTER TABLE `phone_notes` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_notifications`
--

DROP TABLE IF EXISTS `phone_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `app` varchar(50) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `thumbnail` varchar(500) DEFAULT NULL,
  `avatar` varchar(500) DEFAULT NULL,
  `show_avatar` tinyint(1) DEFAULT 0,
  `custom_data` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_notifications_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_notifications`
--

LOCK TABLES `phone_notifications` WRITE;
/*!40000 ALTER TABLE `phone_notifications` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_notifications` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_phone_blocked_numbers`
--

DROP TABLE IF EXISTS `phone_phone_blocked_numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_phone_blocked_numbers` (
  `phone_number` varchar(15) NOT NULL,
  `blocked_number` varchar(15) NOT NULL,
  PRIMARY KEY (`phone_number`,`blocked_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_phone_blocked_numbers`
--

LOCK TABLES `phone_phone_blocked_numbers` WRITE;
/*!40000 ALTER TABLE `phone_phone_blocked_numbers` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_phone_blocked_numbers` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_phone_calls`
--

DROP TABLE IF EXISTS `phone_phone_calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_phone_calls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `caller` varchar(15) NOT NULL,
  `callee` varchar(15) NOT NULL,
  `duration` int(11) NOT NULL DEFAULT 0,
  `answered` tinyint(1) DEFAULT 0,
  `hide_caller_id` tinyint(1) DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_calls_missed` (`callee`,`answered`),
  KEY `idx_calls_callee_id` (`callee`),
  KEY `idx_calls_caller_id` (`caller`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_phone_calls`
--

LOCK TABLES `phone_phone_calls` WRITE;
/*!40000 ALTER TABLE `phone_phone_calls` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_phone_calls` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_phone_contacts`
--

DROP TABLE IF EXISTS `phone_phone_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_phone_contacts` (
  `contact_phone_number` varchar(15) NOT NULL,
  `firstname` varchar(50) NOT NULL DEFAULT '',
  `lastname` varchar(50) NOT NULL DEFAULT '',
  `profile_image` varchar(500) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `favourite` tinyint(1) DEFAULT 0,
  `phone_number` varchar(15) NOT NULL,
  PRIMARY KEY (`contact_phone_number`,`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_phone_contacts`
--

LOCK TABLES `phone_phone_contacts` WRITE;
/*!40000 ALTER TABLE `phone_phone_contacts` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_phone_contacts` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_phone_voicemail`
--

DROP TABLE IF EXISTS `phone_phone_voicemail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_phone_voicemail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `caller` varchar(15) NOT NULL,
  `callee` varchar(15) NOT NULL,
  `url` varchar(500) NOT NULL,
  `duration` int(11) NOT NULL,
  `hide_caller_id` tinyint(1) DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_phone_voicemail`
--

LOCK TABLES `phone_phone_voicemail` WRITE;
/*!40000 ALTER TABLE `phone_phone_voicemail` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_phone_voicemail` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_phones`
--

DROP TABLE IF EXISTS `phone_phones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_phones` (
  `id` varchar(100) NOT NULL,
  `owner_id` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `pin` varchar(4) DEFAULT NULL,
  `face_id` varchar(100) DEFAULT NULL,
  `settings` longtext DEFAULT NULL,
  `is_setup` tinyint(1) DEFAULT 0,
  `assigned` tinyint(1) DEFAULT 0,
  `battery` int(11) NOT NULL DEFAULT 100,
  `last_seen` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone_number` (`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_phones`
--

LOCK TABLES `phone_phones` WRITE;
/*!40000 ALTER TABLE `phone_phones` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `phone_phones` VALUES
('char1:6db110927a05fd3328ad7fc4f04b2d0077166733','char1:6db110927a05fd3328ad7fc4f04b2d0077166733','9073299501','Telefon Jacob','4041','char1:6db110927a05fd3328ad7fc4f04b2d0077166733','{\"lockscreen\":{\"color\":\"gradient\",\"fontStyle\":1,\"layout\":1},\"latestVersion\":\"2.3.7\",\"storage\":{\"total\":128000000,\"used\":8576331},\"streamerMode\":false,\"locale\":\"en\",\"security\":{\"pinCode\":false,\"faceId\":false},\"sound\":{\"callVolume\":0.5,\"texttone\":\"default\",\"ringtone\":\"default\",\"volume\":0.35,\"silent\":false},\"doNotDisturb\":false,\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Mail\",\"Weather\",\"Wallet\",\"Garage\",\"Home\",\"Maps\",\"Notes\",\"Calculator\",\"VoiceMemo\",\"Music\",\"Services\"]],\"time\":{\"twelveHourClock\":false},\"wallpaper\":{\"background\":\"cloud8\",\"blur\":false},\"phone\":{\"showCallerId\":true},\"notifications\":[],\"version\":\"2.3.7\",\"weather\":{\"celcius\":false},\"name\":\"Telefon Jacob\",\"airplaneMode\":false,\"display\":{\"brightness\":1,\"automatic\":false,\"theme\":\"dark\",\"size\":0.7}}',1,0,100,'2025-12-20 20:22:28'),
('char1:c63b583a0adbd3cfca2ca710fa544f9c72e75b1f','char1:c63b583a0adbd3cfca2ca710fa544f9c72e75b1f','2056441810','Telefon Jan',NULL,NULL,'{\"wallpaper\":{\"background\":\"cloud8\",\"blur\":false},\"sound\":{\"callVolume\":0.5,\"ringtone\":\"default\",\"texttone\":\"default\",\"silent\":false,\"volume\":0.5},\"security\":{\"pinCode\":false,\"faceId\":false},\"airplaneMode\":false,\"locale\":\"en\",\"doNotDisturb\":false,\"version\":\"2.3.7\",\"streamerMode\":false,\"display\":{\"size\":0.7,\"brightness\":1,\"automatic\":false,\"theme\":\"dark\"},\"time\":{\"twelveHourClock\":false},\"lockscreen\":{\"color\":\"gradient\",\"layout\":1,\"fontStyle\":1},\"weather\":{\"celcius\":false},\"notifications\":[],\"latestVersion\":\"2.3.7\",\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Mail\",\"Weather\",\"Wallet\",\"Garage\",\"Home\",\"Maps\",\"Notes\",\"Calculator\",\"VoiceMemo\",\"Music\",\"Services\"]],\"storage\":{\"used\":8576331,\"total\":128000000},\"name\":\"Telefon Jan\",\"phone\":{\"showCallerId\":true}}',1,0,100,'2025-11-05 00:16:34');
/*!40000 ALTER TABLE `phone_phones` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_photo_album_members`
--

DROP TABLE IF EXISTS `phone_photo_album_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_photo_album_members` (
  `album_id` int(11) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  PRIMARY KEY (`album_id`,`phone_number`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_photo_album_members_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `phone_photo_albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_photo_album_members_ibfk_2` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_photo_album_members`
--

LOCK TABLES `phone_photo_album_members` WRITE;
/*!40000 ALTER TABLE `phone_photo_album_members` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_photo_album_members` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_photo_album_photos`
--

DROP TABLE IF EXISTS `phone_photo_album_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_photo_album_photos` (
  `album_id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  PRIMARY KEY (`album_id`,`photo_id`),
  KEY `photo_id` (`photo_id`),
  CONSTRAINT `phone_photo_album_photos_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `phone_photo_albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_photo_album_photos_ibfk_2` FOREIGN KEY (`photo_id`) REFERENCES `phone_photos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_photo_album_photos`
--

LOCK TABLES `phone_photo_album_photos` WRITE;
/*!40000 ALTER TABLE `phone_photo_album_photos` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_photo_album_photos` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_photo_albums`
--

DROP TABLE IF EXISTS `phone_photo_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_photo_albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `title` varchar(100) NOT NULL,
  `shared` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_photo_albums_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_photo_albums`
--

LOCK TABLES `phone_photo_albums` WRITE;
/*!40000 ALTER TABLE `phone_photo_albums` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_photo_albums` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_photos`
--

DROP TABLE IF EXISTS `phone_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `link` varchar(500) NOT NULL,
  `is_video` tinyint(1) DEFAULT 0,
  `size` float NOT NULL DEFAULT 0,
  `metadata` varchar(20) DEFAULT NULL,
  `is_favourite` tinyint(1) DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_photos_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_photos`
--

LOCK TABLES `phone_photos` WRITE;
/*!40000 ALTER TABLE `phone_photos` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_photos` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_services_channels`
--

DROP TABLE IF EXISTS `phone_services_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_services_channels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `company` varchar(50) NOT NULL,
  `last_message` varchar(100) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_services_channels`
--

LOCK TABLES `phone_services_channels` WRITE;
/*!40000 ALTER TABLE `phone_services_channels` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_services_channels` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_services_messages`
--

DROP TABLE IF EXISTS `phone_services_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_services_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `channel_id` int(10) unsigned NOT NULL,
  `sender` varchar(15) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `x_pos` int(11) DEFAULT NULL,
  `y_pos` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `channel_id` (`channel_id`),
  CONSTRAINT `phone_services_messages_ibfk_1` FOREIGN KEY (`channel_id`) REFERENCES `phone_services_channels` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_services_messages`
--

LOCK TABLES `phone_services_messages` WRITE;
/*!40000 ALTER TABLE `phone_services_messages` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_services_messages` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_tiktok_accounts`
--

DROP TABLE IF EXISTS `phone_tiktok_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tiktok_accounts` (
  `name` varchar(30) NOT NULL,
  `bio` varchar(100) DEFAULT NULL,
  `avatar` varchar(500) DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `verified` tinyint(1) DEFAULT 0,
  `follower_count` int(11) NOT NULL DEFAULT 0,
  `following_count` int(11) NOT NULL DEFAULT 0,
  `like_count` int(11) NOT NULL DEFAULT 0,
  `video_count` int(11) NOT NULL DEFAULT 0,
  `twitter` varchar(20) DEFAULT NULL,
  `instagram` varchar(20) DEFAULT NULL,
  `show_likes` tinyint(1) DEFAULT 1,
  `phone_number` varchar(15) NOT NULL,
  `date_joined` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`username`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_tiktok_accounts_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tiktok_accounts`
--

LOCK TABLES `phone_tiktok_accounts` WRITE;
/*!40000 ALTER TABLE `phone_tiktok_accounts` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_tiktok_accounts` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_tiktok_channels`
--

DROP TABLE IF EXISTS `phone_tiktok_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tiktok_channels` (
  `id` varchar(10) NOT NULL,
  `last_message` varchar(50) NOT NULL,
  `member_1` varchar(20) NOT NULL,
  `member_2` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `member_1` (`member_1`,`member_2`),
  KEY `member_2` (`member_2`),
  CONSTRAINT `phone_tiktok_channels_ibfk_1` FOREIGN KEY (`member_1`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_channels_ibfk_2` FOREIGN KEY (`member_2`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tiktok_channels`
--

LOCK TABLES `phone_tiktok_channels` WRITE;
/*!40000 ALTER TABLE `phone_tiktok_channels` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_tiktok_channels` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_tiktok_comments`
--

DROP TABLE IF EXISTS `phone_tiktok_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tiktok_comments` (
  `id` varchar(10) NOT NULL,
  `reply_to` varchar(10) DEFAULT NULL,
  `video_id` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `comment` varchar(550) NOT NULL,
  `likes` int(11) NOT NULL DEFAULT 0,
  `replies` int(11) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `video_id` (`video_id`),
  KEY `username` (`username`),
  KEY `reply_to` (`reply_to`),
  CONSTRAINT `phone_tiktok_comments_ibfk_1` FOREIGN KEY (`video_id`) REFERENCES `phone_tiktok_videos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_comments_ibfk_2` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_comments_ibfk_3` FOREIGN KEY (`reply_to`) REFERENCES `phone_tiktok_comments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tiktok_comments`
--

LOCK TABLES `phone_tiktok_comments` WRITE;
/*!40000 ALTER TABLE `phone_tiktok_comments` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_tiktok_comments` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`fivem_user`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_tiktok_increment_video_comments
AFTER INSERT ON phone_tiktok_comments
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_videos
    SET comments = comments + 1
    WHERE id = NEW.video_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`fivem_user`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_tiktok_decrement_video_comments
BEFORE DELETE ON phone_tiktok_comments
FOR EACH ROW
BEGIN
    DECLARE v_replies_count INT;

    
    SELECT COUNT(*) INTO v_replies_count
    FROM phone_tiktok_comments
    WHERE reply_to = OLD.id;

    
    UPDATE phone_tiktok_videos
    SET comments = comments - (1 + v_replies_count)
    WHERE id = OLD.video_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phone_tiktok_comments_likes`
--

DROP TABLE IF EXISTS `phone_tiktok_comments_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tiktok_comments_likes` (
  `username` varchar(20) NOT NULL,
  `comment_id` varchar(10) NOT NULL,
  PRIMARY KEY (`username`,`comment_id`),
  KEY `comment_id` (`comment_id`),
  CONSTRAINT `phone_tiktok_comments_likes_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_comments_likes_ibfk_2` FOREIGN KEY (`comment_id`) REFERENCES `phone_tiktok_comments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tiktok_comments_likes`
--

LOCK TABLES `phone_tiktok_comments_likes` WRITE;
/*!40000 ALTER TABLE `phone_tiktok_comments_likes` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_tiktok_comments_likes` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`fivem_user`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_tiktok_increment_comment_likes
AFTER INSERT ON phone_tiktok_comments_likes
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_comments
    SET likes = likes + 1
    WHERE id = NEW.comment_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`fivem_user`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_tiktok_decrement_comment_likes
AFTER DELETE ON phone_tiktok_comments_likes
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_comments
    SET likes = likes - 1
    WHERE id = OLD.comment_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phone_tiktok_follows`
--

DROP TABLE IF EXISTS `phone_tiktok_follows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tiktok_follows` (
  `followed` varchar(20) NOT NULL,
  `follower` varchar(20) NOT NULL,
  PRIMARY KEY (`followed`,`follower`),
  KEY `follower` (`follower`),
  CONSTRAINT `phone_tiktok_follows_ibfk_1` FOREIGN KEY (`followed`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_follows_ibfk_2` FOREIGN KEY (`follower`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tiktok_follows`
--

LOCK TABLES `phone_tiktok_follows` WRITE;
/*!40000 ALTER TABLE `phone_tiktok_follows` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_tiktok_follows` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`fivem_user`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_tiktok_update_counts_after_follow
AFTER INSERT ON phone_tiktok_follows
FOR EACH ROW
BEGIN
    
    UPDATE phone_tiktok_accounts
    SET follower_count = follower_count + 1
    WHERE username = NEW.followed;

    
    UPDATE phone_tiktok_accounts
    SET following_count = following_count + 1
    WHERE username = NEW.follower;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`fivem_user`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_tiktok_update_counts_after_unfollow
AFTER DELETE ON phone_tiktok_follows
FOR EACH ROW
BEGIN
    
    UPDATE phone_tiktok_accounts
    SET follower_count = follower_count - 1
    WHERE username = OLD.followed;

    
    UPDATE phone_tiktok_accounts
    SET following_count = following_count - 1
    WHERE username = OLD.follower;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phone_tiktok_likes`
--

DROP TABLE IF EXISTS `phone_tiktok_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tiktok_likes` (
  `username` varchar(20) NOT NULL,
  `video_id` varchar(10) NOT NULL,
  PRIMARY KEY (`username`,`video_id`),
  KEY `video_id` (`video_id`),
  CONSTRAINT `phone_tiktok_likes_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_likes_ibfk_2` FOREIGN KEY (`video_id`) REFERENCES `phone_tiktok_videos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tiktok_likes`
--

LOCK TABLES `phone_tiktok_likes` WRITE;
/*!40000 ALTER TABLE `phone_tiktok_likes` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_tiktok_likes` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`fivem_user`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_tiktok_increment_video_likes
AFTER INSERT ON phone_tiktok_likes
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_videos
    SET likes = likes + 1
    WHERE id = NEW.video_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`fivem_user`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_tiktok_increment_account_likes
AFTER INSERT ON phone_tiktok_likes
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_accounts
    JOIN phone_tiktok_videos ON phone_tiktok_videos.username = phone_tiktok_accounts.username
    SET phone_tiktok_accounts.like_count = phone_tiktok_accounts.like_count + 1
    WHERE phone_tiktok_videos.id = NEW.video_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`fivem_user`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_tiktok_decrement_video_likes
AFTER DELETE ON phone_tiktok_likes
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_videos
    SET likes = likes - 1
    WHERE id = OLD.video_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`fivem_user`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_tiktok_decrement_account_likes
AFTER DELETE ON phone_tiktok_likes
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_accounts
    JOIN phone_tiktok_videos ON phone_tiktok_videos.username = phone_tiktok_accounts.username
    SET phone_tiktok_accounts.like_count = phone_tiktok_accounts.like_count - 1
    WHERE phone_tiktok_videos.id = OLD.video_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phone_tiktok_messages`
--

DROP TABLE IF EXISTS `phone_tiktok_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tiktok_messages` (
  `id` varchar(10) NOT NULL,
  `channel_id` varchar(10) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `content` varchar(500) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `channel_id` (`channel_id`),
  KEY `sender` (`sender`),
  CONSTRAINT `phone_tiktok_messages_ibfk_1` FOREIGN KEY (`channel_id`) REFERENCES `phone_tiktok_channels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_messages_ibfk_2` FOREIGN KEY (`sender`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tiktok_messages`
--

LOCK TABLES `phone_tiktok_messages` WRITE;
/*!40000 ALTER TABLE `phone_tiktok_messages` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_tiktok_messages` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`fivem_user`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_tiktok_update_last_message
AFTER INSERT ON phone_tiktok_messages
FOR EACH ROW
BEGIN
    DECLARE modified_content TEXT CHARACTER SET utf8mb4;

    IF NEW.content LIKE '<!SHARED-VIDEO-URL%' THEN
        SET modified_content = 'Shared a video';
    ELSEIF LENGTH(NEW.content) > 50 THEN
        SET modified_content = CONCAT(SUBSTR(NEW.content, 1, 17), '...');
    ELSE
        SET modified_content = NEW.content;
    END IF;

    UPDATE phone_tiktok_channels
    SET last_message = modified_content
    WHERE id = NEW.channel_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phone_tiktok_notifications`
--

DROP TABLE IF EXISTS `phone_tiktok_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tiktok_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `from` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `video_id` varchar(10) DEFAULT NULL,
  `comment_id` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `from` (`from`),
  KEY `video_id` (`video_id`),
  KEY `comment_id` (`comment_id`),
  CONSTRAINT `phone_tiktok_notifications_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_notifications_ibfk_2` FOREIGN KEY (`from`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_notifications_ibfk_3` FOREIGN KEY (`video_id`) REFERENCES `phone_tiktok_videos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_notifications_ibfk_4` FOREIGN KEY (`comment_id`) REFERENCES `phone_tiktok_comments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tiktok_notifications`
--

LOCK TABLES `phone_tiktok_notifications` WRITE;
/*!40000 ALTER TABLE `phone_tiktok_notifications` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_tiktok_notifications` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_tiktok_pinned_videos`
--

DROP TABLE IF EXISTS `phone_tiktok_pinned_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tiktok_pinned_videos` (
  `username` varchar(20) NOT NULL,
  `video_id` varchar(10) NOT NULL,
  PRIMARY KEY (`username`,`video_id`),
  KEY `video_id` (`video_id`),
  CONSTRAINT `phone_tiktok_pinned_videos_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_pinned_videos_ibfk_2` FOREIGN KEY (`video_id`) REFERENCES `phone_tiktok_videos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tiktok_pinned_videos`
--

LOCK TABLES `phone_tiktok_pinned_videos` WRITE;
/*!40000 ALTER TABLE `phone_tiktok_pinned_videos` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_tiktok_pinned_videos` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_tiktok_saves`
--

DROP TABLE IF EXISTS `phone_tiktok_saves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tiktok_saves` (
  `username` varchar(20) NOT NULL,
  `video_id` varchar(10) NOT NULL,
  PRIMARY KEY (`username`,`video_id`),
  KEY `video_id` (`video_id`),
  CONSTRAINT `phone_tiktok_saves_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_saves_ibfk_2` FOREIGN KEY (`video_id`) REFERENCES `phone_tiktok_videos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tiktok_saves`
--

LOCK TABLES `phone_tiktok_saves` WRITE;
/*!40000 ALTER TABLE `phone_tiktok_saves` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_tiktok_saves` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`fivem_user`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_tiktok_increment_video_saves
AFTER INSERT ON phone_tiktok_saves
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_videos
    SET saves = saves + 1
    WHERE id = NEW.video_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`fivem_user`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_tiktok_decrement_video_saves
AFTER DELETE ON phone_tiktok_saves
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_videos
    SET saves = saves - 1
    WHERE id = OLD.video_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phone_tiktok_unread_messages`
--

DROP TABLE IF EXISTS `phone_tiktok_unread_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tiktok_unread_messages` (
  `username` varchar(20) NOT NULL,
  `channel_id` varchar(10) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`username`,`channel_id`),
  KEY `channel_id` (`channel_id`),
  CONSTRAINT `phone_tiktok_unread_messages_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_unread_messages_ibfk_2` FOREIGN KEY (`channel_id`) REFERENCES `phone_tiktok_channels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tiktok_unread_messages`
--

LOCK TABLES `phone_tiktok_unread_messages` WRITE;
/*!40000 ALTER TABLE `phone_tiktok_unread_messages` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_tiktok_unread_messages` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_tiktok_videos`
--

DROP TABLE IF EXISTS `phone_tiktok_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tiktok_videos` (
  `id` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `src` varchar(500) NOT NULL,
  `caption` varchar(100) DEFAULT NULL,
  `metadata` longtext DEFAULT NULL,
  `music` text DEFAULT NULL,
  `likes` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `saves` int(11) NOT NULL DEFAULT 0,
  `pinned_comment` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  CONSTRAINT `phone_tiktok_videos_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tiktok_videos`
--

LOCK TABLES `phone_tiktok_videos` WRITE;
/*!40000 ALTER TABLE `phone_tiktok_videos` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_tiktok_videos` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`fivem_user`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_tiktok_increment_video_count
AFTER INSERT ON phone_tiktok_videos
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_accounts
    SET video_count = video_count + 1
    WHERE username = NEW.username;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phone_tiktok_views`
--

DROP TABLE IF EXISTS `phone_tiktok_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tiktok_views` (
  `username` varchar(20) NOT NULL,
  `video_id` varchar(10) NOT NULL,
  PRIMARY KEY (`username`,`video_id`),
  KEY `video_id` (`video_id`),
  CONSTRAINT `phone_tiktok_views_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_views_ibfk_2` FOREIGN KEY (`video_id`) REFERENCES `phone_tiktok_videos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tiktok_views`
--

LOCK TABLES `phone_tiktok_views` WRITE;
/*!40000 ALTER TABLE `phone_tiktok_views` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_tiktok_views` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`fivem_user`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_tiktok_increment_video_views
AFTER INSERT ON phone_tiktok_views
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_videos
    SET views = views + 1
    WHERE id = NEW.video_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phone_tinder_accounts`
--

DROP TABLE IF EXISTS `phone_tinder_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tinder_accounts` (
  `name` varchar(50) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `photos` text DEFAULT NULL,
  `bio` varchar(500) DEFAULT NULL,
  `dob` date NOT NULL,
  `is_male` tinyint(1) NOT NULL,
  `interested_men` tinyint(1) NOT NULL,
  `interested_women` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `last_seen` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`phone_number`),
  CONSTRAINT `phone_tinder_accounts_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tinder_accounts`
--

LOCK TABLES `phone_tinder_accounts` WRITE;
/*!40000 ALTER TABLE `phone_tinder_accounts` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_tinder_accounts` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_tinder_matches`
--

DROP TABLE IF EXISTS `phone_tinder_matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tinder_matches` (
  `phone_number_1` varchar(15) NOT NULL,
  `phone_number_2` varchar(15) NOT NULL,
  `latest_message` varchar(1000) DEFAULT NULL,
  `latest_message_timestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`phone_number_1`,`phone_number_2`),
  KEY `phone_number_2` (`phone_number_2`),
  CONSTRAINT `phone_tinder_matches_ibfk_1` FOREIGN KEY (`phone_number_1`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tinder_matches_ibfk_2` FOREIGN KEY (`phone_number_2`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tinder_matches`
--

LOCK TABLES `phone_tinder_matches` WRITE;
/*!40000 ALTER TABLE `phone_tinder_matches` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_tinder_matches` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_tinder_messages`
--

DROP TABLE IF EXISTS `phone_tinder_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tinder_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(15) NOT NULL,
  `recipient` varchar(15) NOT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `sender` (`sender`),
  KEY `recipient` (`recipient`),
  CONSTRAINT `phone_tinder_messages_ibfk_1` FOREIGN KEY (`sender`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tinder_messages_ibfk_2` FOREIGN KEY (`recipient`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tinder_messages`
--

LOCK TABLES `phone_tinder_messages` WRITE;
/*!40000 ALTER TABLE `phone_tinder_messages` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_tinder_messages` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_tinder_swipes`
--

DROP TABLE IF EXISTS `phone_tinder_swipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tinder_swipes` (
  `swiper` varchar(15) NOT NULL,
  `swipee` varchar(15) NOT NULL,
  `liked` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`swiper`,`swipee`),
  KEY `swipee` (`swipee`),
  CONSTRAINT `phone_tinder_swipes_ibfk_1` FOREIGN KEY (`swiper`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tinder_swipes_ibfk_2` FOREIGN KEY (`swipee`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tinder_swipes`
--

LOCK TABLES `phone_tinder_swipes` WRITE;
/*!40000 ALTER TABLE `phone_tinder_swipes` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_tinder_swipes` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_twitter_accounts`
--

DROP TABLE IF EXISTS `phone_twitter_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_twitter_accounts` (
  `display_name` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `bio` varchar(100) DEFAULT NULL,
  `profile_image` varchar(500) DEFAULT NULL,
  `profile_header` varchar(500) DEFAULT NULL,
  `pinned_tweet` varchar(50) DEFAULT NULL,
  `verified` tinyint(1) DEFAULT 0,
  `follower_count` int(11) NOT NULL DEFAULT 0,
  `following_count` int(11) NOT NULL DEFAULT 0,
  `private` tinyint(1) DEFAULT 0,
  `date_joined` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`username`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_twitter_accounts_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_twitter_accounts`
--

LOCK TABLES `phone_twitter_accounts` WRITE;
/*!40000 ALTER TABLE `phone_twitter_accounts` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_twitter_accounts` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_twitter_follow_requests`
--

DROP TABLE IF EXISTS `phone_twitter_follow_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_twitter_follow_requests` (
  `requester` varchar(20) NOT NULL,
  `requestee` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`requester`,`requestee`),
  KEY `requestee` (`requestee`),
  CONSTRAINT `phone_twitter_follow_requests_ibfk_1` FOREIGN KEY (`requester`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_twitter_follow_requests_ibfk_2` FOREIGN KEY (`requestee`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_twitter_follow_requests`
--

LOCK TABLES `phone_twitter_follow_requests` WRITE;
/*!40000 ALTER TABLE `phone_twitter_follow_requests` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_twitter_follow_requests` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_twitter_follows`
--

DROP TABLE IF EXISTS `phone_twitter_follows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_twitter_follows` (
  `followed` varchar(20) NOT NULL,
  `follower` varchar(20) NOT NULL,
  `notifications` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`followed`,`follower`),
  KEY `follower` (`follower`),
  CONSTRAINT `phone_twitter_follows_ibfk_1` FOREIGN KEY (`followed`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_twitter_follows_ibfk_2` FOREIGN KEY (`follower`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_twitter_follows`
--

LOCK TABLES `phone_twitter_follows` WRITE;
/*!40000 ALTER TABLE `phone_twitter_follows` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_twitter_follows` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`fivem_user`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_twitter_update_counts_after_follow
AFTER INSERT ON phone_twitter_follows
FOR EACH ROW
BEGIN
    
    UPDATE phone_twitter_accounts
    SET follower_count = follower_count + 1
    WHERE username = NEW.followed;

    
    UPDATE phone_twitter_accounts
    SET following_count = following_count + 1
    WHERE username = NEW.follower;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`fivem_user`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_twitter_update_counts_after_unfollow
AFTER DELETE ON phone_twitter_follows
FOR EACH ROW
BEGIN
    
    UPDATE phone_twitter_accounts
    SET follower_count = follower_count - 1
    WHERE username = OLD.followed;

    
    UPDATE phone_twitter_accounts
    SET following_count = following_count - 1
    WHERE username = OLD.follower;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phone_twitter_hashtags`
--

DROP TABLE IF EXISTS `phone_twitter_hashtags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_twitter_hashtags` (
  `hashtag` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `last_used` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`hashtag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_twitter_hashtags`
--

LOCK TABLES `phone_twitter_hashtags` WRITE;
/*!40000 ALTER TABLE `phone_twitter_hashtags` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_twitter_hashtags` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_twitter_likes`
--

DROP TABLE IF EXISTS `phone_twitter_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_twitter_likes` (
  `tweet_id` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`tweet_id`,`username`),
  KEY `username` (`username`),
  CONSTRAINT `phone_twitter_likes_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_twitter_likes`
--

LOCK TABLES `phone_twitter_likes` WRITE;
/*!40000 ALTER TABLE `phone_twitter_likes` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_twitter_likes` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`fivem_user`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_twitter_update_like_count_after_like
AFTER INSERT ON phone_twitter_likes
FOR EACH ROW
BEGIN
    UPDATE phone_twitter_tweets
    SET like_count = like_count + 1
    WHERE id = NEW.tweet_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`fivem_user`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_twitter_update_like_count_after_unlike
AFTER DELETE ON phone_twitter_likes
FOR EACH ROW
BEGIN
    UPDATE phone_twitter_tweets
    SET like_count = like_count - 1
    WHERE id = OLD.tweet_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phone_twitter_messages`
--

DROP TABLE IF EXISTS `phone_twitter_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_twitter_messages` (
  `id` varchar(10) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `recipient` varchar(20) NOT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `sender` (`sender`),
  KEY `recipient` (`recipient`),
  CONSTRAINT `phone_twitter_messages_ibfk_1` FOREIGN KEY (`sender`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_twitter_messages_ibfk_2` FOREIGN KEY (`recipient`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_twitter_messages`
--

LOCK TABLES `phone_twitter_messages` WRITE;
/*!40000 ALTER TABLE `phone_twitter_messages` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_twitter_messages` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_twitter_notifications`
--

DROP TABLE IF EXISTS `phone_twitter_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_twitter_notifications` (
  `id` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `from` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `tweet_id` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `from` (`from`),
  CONSTRAINT `phone_twitter_notifications_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_twitter_notifications_ibfk_2` FOREIGN KEY (`from`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_twitter_notifications`
--

LOCK TABLES `phone_twitter_notifications` WRITE;
/*!40000 ALTER TABLE `phone_twitter_notifications` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_twitter_notifications` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_twitter_promoted`
--

DROP TABLE IF EXISTS `phone_twitter_promoted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_twitter_promoted` (
  `tweet_id` varchar(50) NOT NULL,
  `promotions` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tweet_id`),
  CONSTRAINT `phone_twitter_promoted_ibfk_1` FOREIGN KEY (`tweet_id`) REFERENCES `phone_twitter_tweets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_twitter_promoted`
--

LOCK TABLES `phone_twitter_promoted` WRITE;
/*!40000 ALTER TABLE `phone_twitter_promoted` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_twitter_promoted` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_twitter_retweets`
--

DROP TABLE IF EXISTS `phone_twitter_retweets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_twitter_retweets` (
  `tweet_id` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`tweet_id`,`username`),
  KEY `username` (`username`),
  CONSTRAINT `phone_twitter_retweets_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_twitter_retweets`
--

LOCK TABLES `phone_twitter_retweets` WRITE;
/*!40000 ALTER TABLE `phone_twitter_retweets` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_twitter_retweets` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`fivem_user`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_twitter_update_retweet_count_after_retweet
AFTER INSERT ON phone_twitter_retweets
FOR EACH ROW
BEGIN
    UPDATE phone_twitter_tweets
    SET retweet_count = retweet_count + 1
    WHERE id = NEW.tweet_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`fivem_user`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_twitter_update_retweet_count_after_unretweet
AFTER DELETE ON phone_twitter_retweets
FOR EACH ROW
BEGIN
    UPDATE phone_twitter_tweets
    SET retweet_count = retweet_count - 1
    WHERE id = OLD.tweet_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phone_twitter_tweets`
--

DROP TABLE IF EXISTS `phone_twitter_tweets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_twitter_tweets` (
  `id` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `content` varchar(280) DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `reply_to` varchar(50) DEFAULT NULL,
  `like_count` int(11) DEFAULT 0,
  `reply_count` int(11) DEFAULT 0,
  `retweet_count` int(11) DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  CONSTRAINT `phone_twitter_tweets_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_twitter_tweets`
--

LOCK TABLES `phone_twitter_tweets` WRITE;
/*!40000 ALTER TABLE `phone_twitter_tweets` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_twitter_tweets` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_voice_memos_recordings`
--

DROP TABLE IF EXISTS `phone_voice_memos_recordings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_voice_memos_recordings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `file_name` varchar(50) NOT NULL,
  `file_url` varchar(500) NOT NULL,
  `file_length` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_voice_memos_recordings_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_voice_memos_recordings`
--

LOCK TABLES `phone_voice_memos_recordings` WRITE;
/*!40000 ALTER TABLE `phone_voice_memos_recordings` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_voice_memos_recordings` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_wallet_transactions`
--

DROP TABLE IF EXISTS `phone_wallet_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_wallet_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `amount` int(11) NOT NULL,
  `company` varchar(50) NOT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_wallet_transactions_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_wallet_transactions`
--

LOCK TABLES `phone_wallet_transactions` WRITE;
/*!40000 ALTER TABLE `phone_wallet_transactions` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_wallet_transactions` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `phone_yellow_pages_posts`
--

DROP TABLE IF EXISTS `phone_yellow_pages_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_yellow_pages_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `attachment` varchar(500) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_yellow_pages_posts`
--

LOCK TABLES `phone_yellow_pages_posts` WRITE;
/*!40000 ALTER TABLE `phone_yellow_pages_posts` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `phone_yellow_pages_posts` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `player_houses`
--

DROP TABLE IF EXISTS `player_houses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_houses` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `house` varchar(50) DEFAULT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `owner` varchar(46) DEFAULT NULL,
  `keyholders` text DEFAULT NULL,
  `stash` text DEFAULT NULL,
  `outfit` text DEFAULT NULL,
  `logout` text DEFAULT NULL,
  `decorateStash` text DEFAULT NULL,
  `charge` text DEFAULT NULL,
  `credit` varchar(50) DEFAULT NULL,
  `creditPrice` varchar(50) DEFAULT NULL,
  `console` text DEFAULT NULL,
  `decorateCoords` text DEFAULT NULL,
  `rented` int(11) DEFAULT NULL,
  `rentPrice` int(11) DEFAULT NULL,
  `rentable` int(11) DEFAULT NULL,
  `purchasable` int(11) DEFAULT NULL,
  `vaultCodes` text DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `house` (`house`) USING BTREE,
  KEY `owner` (`owner`) USING BTREE,
  KEY `citizenid` (`citizenid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_houses`
--

LOCK TABLES `player_houses` WRITE;
/*!40000 ALTER TABLE `player_houses` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `player_houses` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `player_outfit_codes`
--

DROP TABLE IF EXISTS `player_outfit_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_outfit_codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `outfitid` int(11) NOT NULL,
  `code` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `FK_player_outfit_codes_player_outfits` (`outfitid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_outfit_codes`
--

LOCK TABLES `player_outfit_codes` WRITE;
/*!40000 ALTER TABLE `player_outfit_codes` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `player_outfit_codes` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `player_outfits`
--

DROP TABLE IF EXISTS `player_outfits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_outfits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `outfitname` varchar(50) NOT NULL DEFAULT '0',
  `model` varchar(50) DEFAULT NULL,
  `props` varchar(1000) DEFAULT NULL,
  `components` varchar(1500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `citizenid_outfitname_model` (`citizenid`,`outfitname`,`model`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_outfits`
--

LOCK TABLES `player_outfits` WRITE;
/*!40000 ALTER TABLE `player_outfits` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `player_outfits` VALUES
(26,'char1:6db110927a05fd3328ad7fc4f04b2d0077166733','guwno01','mp_m_freemode_01','[{\"texture\":-1,\"prop_id\":0,\"drawable\":-1},{\"texture\":-1,\"prop_id\":1,\"drawable\":-1},{\"texture\":-1,\"prop_id\":2,\"drawable\":-1},{\"texture\":-1,\"prop_id\":6,\"drawable\":-1},{\"texture\":-1,\"prop_id\":7,\"drawable\":-1}]','[{\"texture\":0,\"component_id\":0,\"drawable\":0},{\"texture\":0,\"component_id\":1,\"drawable\":15},{\"texture\":0,\"component_id\":2,\"drawable\":0},{\"texture\":0,\"component_id\":3,\"drawable\":0},{\"texture\":0,\"component_id\":4,\"drawable\":25},{\"texture\":0,\"component_id\":5,\"drawable\":0},{\"texture\":0,\"component_id\":6,\"drawable\":1},{\"texture\":0,\"component_id\":7,\"drawable\":0},{\"texture\":0,\"component_id\":8,\"drawable\":21},{\"texture\":0,\"component_id\":9,\"drawable\":0},{\"texture\":0,\"component_id\":10,\"drawable\":0},{\"texture\":0,\"component_id\":11,\"drawable\":142}]');
/*!40000 ALTER TABLE `player_outfits` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `playerskins`
--

DROP TABLE IF EXISTS `playerskins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `playerskins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `skin` text NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playerskins`
--

LOCK TABLES `playerskins` WRITE;
/*!40000 ALTER TABLE `playerskins` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `playerskins` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `race_tracks`
--

DROP TABLE IF EXISTS `race_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `race_tracks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `checkpoints` text DEFAULT NULL,
  `metadata` text DEFAULT NULL,
  `creatorid` varchar(50) DEFAULT NULL,
  `creatorname` varchar(50) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  `raceid` varchar(50) DEFAULT NULL,
  `access` text DEFAULT NULL,
  `curated` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `raceid` (`raceid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `race_tracks`
--

LOCK TABLES `race_tracks` WRITE;
/*!40000 ALTER TABLE `race_tracks` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `race_tracks` VALUES
(41,'Elysian','[{\"offset\":{\"right\":{\"x\":181.15985107421876,\"z\":5.40758514404296,\"y\":-3009.4013671875},\"left\":{\"x\":203.15435791015626,\"z\":5.45968914031982,\"y\":-3009.89111328125}},\"coords\":{\"x\":192.1571044921875,\"z\":5.43363714218139,\"y\":-3009.646240234375}},{\"offset\":{\"right\":{\"x\":163.58200073242188,\"z\":5.27955627441406,\"y\":-3114.1845703125},\"left\":{\"x\":191.57095336914063,\"z\":5.27972698211669,\"y\":-3113.3984375}},\"coords\":{\"x\":177.57647705078126,\"z\":5.27964162826538,\"y\":-3113.79150390625}},{\"offset\":{\"right\":{\"x\":162.92498779296876,\"z\":5.280686378479,\"y\":-3243.04296875},\"left\":{\"x\":190.92404174804688,\"z\":5.28138065338134,\"y\":-3242.8125}},\"coords\":{\"x\":176.9245147705078,\"z\":5.28103351593017,\"y\":-3242.927734375}},{\"offset\":{\"right\":{\"x\":222.17843627929688,\"z\":5.31390762329101,\"y\":-3336.1171875},\"left\":{\"x\":222.85586547851566,\"z\":5.65613365173339,\"y\":-3320.13525390625}},\"coords\":{\"x\":222.51715087890626,\"z\":5.4850206375122,\"y\":-3328.126220703125}},{\"offset\":{\"right\":{\"x\":303.6312255859375,\"z\":4.07163667678833,\"y\":-3266.755126953125},\"left\":{\"x\":263.8367309570313,\"z\":6.65055227279663,\"y\":-3263.633544921875}},\"coords\":{\"x\":283.7339782714844,\"z\":5.36109447479248,\"y\":-3265.1943359375}},{\"offset\":{\"right\":{\"x\":311.6166076660156,\"z\":5.53333759307861,\"y\":-3052.705322265625},\"left\":{\"x\":285.6551208496094,\"z\":5.59668350219726,\"y\":-3054.118408203125}},\"coords\":{\"x\":298.6358642578125,\"z\":5.56501054763793,\"y\":-3053.411865234375}},{\"offset\":{\"right\":{\"x\":311.6123352050781,\"z\":5.70897102355957,\"y\":-2852.6396484375},\"left\":{\"x\":285.0413513183594,\"z\":5.69374752044677,\"y\":-2861.47021484375}},\"coords\":{\"x\":298.32684326171877,\"z\":5.70135927200317,\"y\":-2857.054931640625}},{\"offset\":{\"right\":{\"x\":239.22425842285157,\"z\":5.68052816390991,\"y\":-2800.593505859375},\"left\":{\"x\":260.7420349121094,\"z\":5.702157497406,\"y\":-2815.187744140625}},\"coords\":{\"x\":249.98313903808598,\"z\":5.69134283065795,\"y\":-2807.890625}},{\"offset\":{\"right\":{\"x\":214.3609161376953,\"z\":5.70750474929809,\"y\":-2878.798583984375},\"left\":{\"x\":243.13877868652345,\"z\":5.57682657241821,\"y\":-2887.273193359375}},\"coords\":{\"x\":228.74984741210938,\"z\":5.64216566085815,\"y\":-2883.035888671875}},{\"offset\":{\"right\":{\"x\":183.5851593017578,\"z\":5.34761714935302,\"y\":-2973.802001953125},\"left\":{\"x\":212.44078063964845,\"z\":5.88906192779541,\"y\":-2981.990966796875}},\"coords\":{\"x\":198.01296997070313,\"z\":5.61833953857421,\"y\":-2977.896484375}}]','{\"description\":\"No locals to bother you down here. Short circuit\", \"raceType\":\"circuit_only\"}','CITIZENID','Coffee',1045,'CW-7666','{}',1),
(42,'Cop Blocked','[{\"coords\":{\"x\":-52.340576171875,\"y\":-254.4996795654297,\"z\":45.27838516235351},\"offset\":{\"right\":{\"x\":-59.57617568969726,\"y\":-272.0677490234375,\"z\":45.18244934082031},\"left\":{\"x\":-45.10497665405273,\"y\":-236.93161010742188,\"z\":45.37432098388672}}},{\"coords\":{\"x\":92.44344329833985,\"y\":-308.3395690917969,\"z\":45.82535934448242},\"offset\":{\"right\":{\"x\":87.71641540527344,\"y\":-322.5751953125,\"z\":45.78256225585937},\"left\":{\"x\":97.17047119140624,\"y\":-294.10394287109377,\"z\":45.86815643310547}}},{\"coords\":{\"x\":220.2377471923828,\"y\":-353.2974548339844,\"z\":43.72373962402344},\"offset\":{\"right\":{\"x\":215.26016235351569,\"y\":-367.4474182128906,\"z\":43.67737579345703},\"left\":{\"x\":225.21533203125,\"y\":-339.1474914550781,\"z\":43.77010345458984}}},{\"coords\":{\"x\":434.8890075683594,\"y\":-369.8930969238281,\"z\":46.63096618652344},\"offset\":{\"right\":{\"x\":445.4563293457031,\"y\":-381.9068298339844,\"z\":46.58695602416992},\"left\":{\"x\":424.3216857910156,\"y\":-357.8793640136719,\"z\":46.67497634887695}}},{\"coords\":{\"x\":674.4837036132813,\"y\":-388.93560791015627,\"z\":41.22829818725586},\"offset\":{\"right\":{\"x\":681.6497802734375,\"y\":-397.2798156738281,\"z\":41.37491607666015},\"left\":{\"x\":667.317626953125,\"y\":-380.5914001464844,\"z\":41.08168029785156}}},{\"coords\":{\"x\":709.2294921875,\"y\":-373.5025939941406,\"z\":41.29356384277344},\"offset\":{\"right\":{\"x\":713.5905151367188,\"y\":-385.74517822265627,\"z\":40.97649765014648},\"left\":{\"x\":704.8684692382813,\"y\":-361.260009765625,\"z\":41.61063003540039}}},{\"coords\":{\"x\":774.9202880859375,\"y\":-348.205078125,\"z\":48.19004440307617},\"offset\":{\"right\":{\"x\":779.3623046875,\"y\":-361.4795227050781,\"z\":47.94928741455078},\"left\":{\"x\":770.478271484375,\"y\":-334.9306335449219,\"z\":48.43080139160156}}},{\"coords\":{\"x\":947.6083984375,\"y\":-312.1497192382813,\"z\":66.55909729003906},\"offset\":{\"right\":{\"x\":958.8895874023438,\"y\":-320.4372863769531,\"z\":66.33312225341797},\"left\":{\"x\":936.3272094726564,\"y\":-303.8621520996094,\"z\":66.78507232666016}}},{\"coords\":{\"x\":1010.8661499023438,\"y\":-189.2675323486328,\"z\":70.17040252685547},\"offset\":{\"right\":{\"x\":1026.255126953125,\"y\":-174.9826812744141,\"z\":69.82213592529297},\"left\":{\"x\":995.4771728515624,\"y\":-203.55238342285157,\"z\":70.51866912841797}}},{\"coords\":{\"x\":936.9588623046876,\"y\":-144.921142578125,\"z\":74.34542846679688},\"offset\":{\"right\":{\"x\":945.0501098632813,\"y\":-129.97019958496098,\"z\":74.38632202148438},\"left\":{\"x\":928.8676147460938,\"y\":-159.8720855712891,\"z\":74.30453491210938}}},{\"coords\":{\"x\":835.392333984375,\"y\":-80.7162094116211,\"z\":80.15900421142578},\"offset\":{\"right\":{\"x\":845.0849609375,\"y\":-66.75006866455078,\"z\":80.17166900634766},\"left\":{\"x\":825.69970703125,\"y\":-94.6823501586914,\"z\":80.1463394165039}}},{\"coords\":{\"x\":714.3644409179688,\"y\":-2.98843121528625,\"z\":83.4005355834961},\"offset\":{\"right\":{\"x\":726.5390625,\"y\":11.59783458709716,\"z\":83.26177978515625},\"left\":{\"x\":702.1898193359375,\"y\":-17.57469749450683,\"z\":83.53929138183594}}},{\"coords\":{\"x\":475.57135009765627,\"y\":6.85476112365722,\"z\":86.1971435546875},\"offset\":{\"right\":{\"x\":459.230224609375,\"y\":19.99349594116211,\"z\":87.35513305664063},\"left\":{\"x\":491.9124755859375,\"y\":-6.28397274017334,\"z\":85.03915405273438}}},{\"coords\":{\"x\":340.6079711914063,\"y\":-103.55077362060549,\"z\":67.06570434570313},\"offset\":{\"right\":{\"x\":344.4402770996094,\"y\":-85.96365356445313,\"z\":67.14834594726563},\"left\":{\"x\":336.7756652832031,\"y\":-121.1378936767578,\"z\":66.98306274414063}}},{\"coords\":{\"x\":241.789291381836,\"y\":-67.8154296875,\"z\":69.22379302978516},\"offset\":{\"right\":{\"x\":246.367431640625,\"y\":-54.59113693237305,\"z\":68.82526397705078},\"left\":{\"x\":237.21115112304688,\"y\":-81.03971862792969,\"z\":69.62232208251953}}},{\"coords\":{\"x\":139.30531311035157,\"y\":-30.49337768554687,\"z\":67.125732421875},\"offset\":{\"right\":{\"x\":143.55392456054688,\"y\":-17.15555000305175,\"z\":66.89836883544922},\"left\":{\"x\":135.05670166015626,\"y\":-43.83120727539062,\"z\":67.35309600830078}}},{\"coords\":{\"x\":27.08864593505859,\"y\":8.11531543731689,\"z\":69.66206359863281},\"offset\":{\"right\":{\"x\":31.94835472106933,\"y\":21.24244308471679,\"z\":69.41336059570313},\"left\":{\"x\":22.22893714904785,\"y\":-5.01181125640869,\"z\":69.9107666015625}}},{\"coords\":{\"x\":-50.02418518066406,\"y\":16.54994201660156,\"z\":71.70174407958985},\"offset\":{\"right\":{\"x\":-62.20967483520508,\"y\":26.91838264465332,\"z\":71.79814147949219},\"left\":{\"x\":-37.83869552612305,\"y\":6.1815013885498,\"z\":71.6053466796875}}},{\"coords\":{\"x\":-74.2797622680664,\"y\":-88.04427337646485,\"z\":57.37857437133789},\"offset\":{\"right\":{\"x\":-87.15961456298828,\"y\":-82.55711364746094,\"z\":57.35347747802734},\"left\":{\"x\":-61.39990997314453,\"y\":-93.53143310546877,\"z\":57.40367126464844}}},{\"coords\":{\"x\":-99.25440216064452,\"y\":-209.050048828125,\"z\":44.6744155883789},\"offset\":{\"right\":{\"x\":-115.97314453125,\"y\":-202.3842926025391,\"z\":44.90129470825195},\"left\":{\"x\":-82.53565979003906,\"y\":-215.71580505371098,\"z\":44.44753646850586}}}]','{\"description\":\"Fly across Hawick in this medium circuit\", \"raceType\":\"circuit_only\"}','CITIZENID','Coffee',2578,'CW-3232','{}',1),
(43,'Oil Fields','[{\"offset\":{\"left\":{\"x\":1921.7457275390626,\"y\":-965.1456909179688,\"z\":78.92194366455078},\"right\":{\"x\":1911.3773193359376,\"y\":-952.9600219726563,\"z\":78.84455108642578}},\"coords\":{\"x\":1916.5615234375,\"y\":-959.0528564453125,\"z\":78.88324737548828}},{\"offset\":{\"left\":{\"x\":1857.3009033203126,\"y\":-1035.27685546875,\"z\":78.9571762084961},\"right\":{\"x\":1843.2991943359376,\"y\":-1027.535400390625,\"z\":78.8052749633789}},\"coords\":{\"x\":1850.300048828125,\"y\":-1031.4061279296876,\"z\":78.8812255859375}},{\"offset\":{\"left\":{\"x\":1723.8350830078126,\"y\":-1302.1593017578126,\"z\":85.46202087402344},\"right\":{\"x\":1715.1278076171876,\"y\":-1288.7369384765626,\"z\":85.30499267578125}},\"coords\":{\"x\":1719.4814453125,\"y\":-1295.4481201171876,\"z\":85.38350677490235}},{\"offset\":{\"left\":{\"x\":1581.508544921875,\"y\":-1415.2469482421876,\"z\":79.5208511352539},\"right\":{\"x\":1569.734130859375,\"y\":-1404.4139404296876,\"z\":79.41463470458985}},\"coords\":{\"x\":1575.621337890625,\"y\":-1409.8304443359376,\"z\":79.46774291992188}},{\"offset\":{\"left\":{\"x\":1408.17529296875,\"y\":-1562.08349609375,\"z\":56.74676132202148},\"right\":{\"x\":1398.6005859375,\"y\":-1549.2646484375,\"z\":56.76100540161133}},\"coords\":{\"x\":1403.387939453125,\"y\":-1555.674072265625,\"z\":56.7538833618164}},{\"offset\":{\"left\":{\"x\":1397.223388671875,\"y\":-1679.0247802734376,\"z\":61.42361068725586},\"right\":{\"x\":1368.575439453125,\"y\":-1693.2415771484376,\"z\":60.33577346801758}},\"coords\":{\"x\":1382.8994140625,\"y\":-1686.1331787109376,\"z\":60.87969207763672}},{\"offset\":{\"left\":{\"x\":1441.968994140625,\"y\":-1871.516357421875,\"z\":71.7821273803711},\"right\":{\"x\":1410.099365234375,\"y\":-1868.89111328125,\"z\":70.58490753173828}},\"coords\":{\"x\":1426.0341796875,\"y\":-1870.2037353515626,\"z\":71.18351745605469}},{\"offset\":{\"left\":{\"x\":1321.0855712890626,\"y\":-2035.7681884765626,\"z\":46.29645538330078},\"right\":{\"x\":1310.5316162109376,\"y\":-2009.8372802734376,\"z\":46.74478149414062}},\"coords\":{\"x\":1315.80859375,\"y\":-2022.802734375,\"z\":46.5206184387207}},{\"offset\":{\"left\":{\"x\":1298.4227294921876,\"y\":-2160.6064453125,\"z\":48.3809585571289},\"right\":{\"x\":1261.8687744140626,\"y\":-2170.9892578125,\"z\":48.29378509521484}},\"coords\":{\"x\":1280.145751953125,\"y\":-2165.7978515625,\"z\":48.33737182617187}},{\"offset\":{\"left\":{\"x\":1300.618408203125,\"y\":-2490.0302734375,\"z\":46.23427581787109},\"right\":{\"x\":1277.981689453125,\"y\":-2470.35888671875,\"z\":47.01488494873047}},\"coords\":{\"x\":1289.300048828125,\"y\":-2480.194580078125,\"z\":46.62458038330078}},{\"offset\":{\"left\":{\"x\":1219.9039306640626,\"y\":-2554.048095703125,\"z\":37.95227432250976},\"right\":{\"x\":1205.5845947265626,\"y\":-2525.437744140625,\"z\":38.5789909362793}},\"coords\":{\"x\":1212.7442626953126,\"y\":-2539.742919921875,\"z\":38.26563262939453}},{\"offset\":{\"left\":{\"x\":1204.7398681640626,\"y\":-2587.668212890625,\"z\":38.84534072875976},\"right\":{\"x\":1191.5963134765626,\"y\":-2599.959228515625,\"z\":38.4259147644043}},\"coords\":{\"x\":1198.1680908203126,\"y\":-2593.813720703125,\"z\":38.63562774658203}},{\"offset\":{\"left\":{\"x\":1287.6092529296876,\"y\":-2590.04345703125,\"z\":46.05852127075195},\"right\":{\"x\":1293.3780517578126,\"y\":-2607.0927734375,\"z\":45.83569717407226}},\"coords\":{\"x\":1290.49365234375,\"y\":-2598.568115234375,\"z\":45.94710922241211}},{\"offset\":{\"left\":{\"x\":1474.85888671875,\"y\":-2577.89501953125,\"z\":48.62173461914062},\"right\":{\"x\":1473.4169921875,\"y\":-2595.8369140625,\"z\":48.58549499511719}},\"coords\":{\"x\":1474.137939453125,\"y\":-2586.865966796875,\"z\":48.6036148071289}},{\"offset\":{\"left\":{\"x\":1614.07373046875,\"y\":-2527.820068359375,\"z\":70.39791870117188},\"right\":{\"x\":1615.933837890625,\"y\":-2545.721435546875,\"z\":70.12693786621094}},\"coords\":{\"x\":1615.0037841796876,\"y\":-2536.770751953125,\"z\":70.2624282836914}},{\"offset\":{\"left\":{\"x\":1637.870849609375,\"y\":-2465.951171875,\"z\":85.03759002685547},\"right\":{\"x\":1656.103271484375,\"y\":-2457.73291015625,\"z\":84.83441925048828}},\"coords\":{\"x\":1646.987060546875,\"y\":-2461.842041015625,\"z\":84.93600463867188}},{\"offset\":{\"left\":{\"x\":1651.661865234375,\"y\":-2374.65087890625,\"z\":95.50850677490235},\"right\":{\"x\":1659.597412109375,\"y\":-2393.00537109375,\"z\":95.12383270263672}},\"coords\":{\"x\":1655.629638671875,\"y\":-2383.828125,\"z\":95.31616973876953}},{\"offset\":{\"left\":{\"x\":1660.17236328125,\"y\":-2242.2587890625,\"z\":110.48942565917969},\"right\":{\"x\":1677.0576171875,\"y\":-2231.54052734375,\"z\":110.37687683105469}},\"coords\":{\"x\":1668.614990234375,\"y\":-2236.899658203125,\"z\":110.43315124511719}},{\"offset\":{\"left\":{\"x\":1643.15673828125,\"y\":-2182.4423828125,\"z\":108.1628646850586},\"right\":{\"x\":1663.006591796875,\"y\":-2184.88720703125,\"z\":108.07466888427735}},\"coords\":{\"x\":1653.0816650390626,\"y\":-2183.664794921875,\"z\":108.11876678466797}},{\"offset\":{\"left\":{\"x\":1668.9849853515626,\"y\":-2125.289306640625,\"z\":107.3171157836914},\"right\":{\"x\":1685.6710205078126,\"y\":-2136.313232421875,\"z\":107.1130599975586}},\"coords\":{\"x\":1677.3280029296876,\"y\":-2130.80126953125,\"z\":107.215087890625}},{\"offset\":{\"left\":{\"x\":1704.851806640625,\"y\":-2035.1514892578126,\"z\":109.71421813964844},\"right\":{\"x\":1724.734375,\"y\":-2033.0086669921876,\"z\":109.41288757324219}},\"coords\":{\"x\":1714.7930908203126,\"y\":-2034.080078125,\"z\":109.56355285644531}},{\"offset\":{\"left\":{\"x\":1724.115966796875,\"y\":-1934.779052734375,\"z\":116.56684875488281},\"right\":{\"x\":1738.9716796875,\"y\":-1948.169189453125,\"z\":116.4354248046875}},\"coords\":{\"x\":1731.5438232421876,\"y\":-1941.47412109375,\"z\":116.50113677978516}},{\"offset\":{\"left\":{\"x\":1727.021484375,\"y\":-1856.69970703125,\"z\":114.59398651123047},\"right\":{\"x\":1739.813232421875,\"y\":-1844.037353515625,\"z\":114.40775299072266}},\"coords\":{\"x\":1733.4173583984376,\"y\":-1850.3685302734376,\"z\":114.50086975097656}},{\"offset\":{\"left\":{\"x\":1749.5191650390626,\"y\":-1724.7320556640626,\"z\":116.83601379394531},\"right\":{\"x\":1756.8944091796876,\"y\":-1738.9266357421876,\"z\":116.49278259277344}},\"coords\":{\"x\":1753.206787109375,\"y\":-1731.829345703125,\"z\":116.66439819335938}},{\"offset\":{\"left\":{\"x\":1783.052734375,\"y\":-1576.3099365234376,\"z\":114.90847778320313},\"right\":{\"x\":1798.60400390625,\"y\":-1572.5635986328126,\"z\":114.55335998535156}},\"coords\":{\"x\":1790.828369140625,\"y\":-1574.436767578125,\"z\":114.73091888427735}},{\"offset\":{\"left\":{\"x\":1816.4461669921876,\"y\":-1441.6431884765626,\"z\":121.87100219726563},\"right\":{\"x\":1828.3360595703126,\"y\":-1452.3492431640626,\"z\":121.76425170898438}},\"coords\":{\"x\":1822.39111328125,\"y\":-1446.9962158203126,\"z\":121.817626953125}},{\"offset\":{\"left\":{\"x\":1902.969970703125,\"y\":-1309.09912109375,\"z\":132.86131286621095},\"right\":{\"x\":1922.72607421875,\"y\":-1312.192626953125,\"z\":133.2161102294922}},\"coords\":{\"x\":1912.8480224609376,\"y\":-1310.6458740234376,\"z\":133.03871154785157}},{\"offset\":{\"left\":{\"x\":1893.434814453125,\"y\":-1224.3486328125,\"z\":120.21672058105469},\"right\":{\"x\":1911.176513671875,\"y\":-1227.370361328125,\"z\":119.90072631835938}},\"coords\":{\"x\":1902.3056640625,\"y\":-1225.8594970703126,\"z\":120.05872344970703}},{\"offset\":{\"left\":{\"x\":1931.357421875,\"y\":-1094.519775390625,\"z\":96.63494873046875},\"right\":{\"x\":1949.085693359375,\"y\":-1097.6337890625,\"z\":96.51239013671875}},\"coords\":{\"x\":1940.2215576171876,\"y\":-1096.0767822265626,\"z\":96.57366943359375}},{\"offset\":{\"left\":{\"x\":1989.5108642578126,\"y\":-995.7977905273438,\"z\":84.53192901611328},\"right\":{\"x\":2005.3375244140626,\"y\":-1004.3679809570313,\"z\":84.27709197998047}},\"coords\":{\"x\":1997.4241943359376,\"y\":-1000.0828857421875,\"z\":84.40451049804688}},{\"offset\":{\"left\":{\"x\":1992.694091796875,\"y\":-964.9097290039063,\"z\":79.57564544677735},\"right\":{\"x\":2010.294677734375,\"y\":-961.1401977539063,\"z\":79.6906509399414}},\"coords\":{\"x\":2001.494384765625,\"y\":-963.0249633789063,\"z\":79.63314819335938}}]','{\"description\":\"Circuit race around the oil fields that fuel your cars\", \"raceType\":\"circuit_only\"}','CITIZENID','Coffee',4030,'CW-4925','{}',1),
(44,'Devils Touge','[{\"coords\":{\"y\":-371.5877990722656,\"z\":34.87500762939453,\"x\":-510.4322814941406},\"offset\":{\"right\":{\"y\":-388.5529174804687,\"z\":34.50762939453125,\"x\":-511.4569091796875},\"left\":{\"y\":-354.6226806640625,\"z\":35.24238586425781,\"x\":-509.40765380859377}}},{\"coords\":{\"y\":-397.3887939453125,\"z\":31.70195007324218,\"x\":-200.75738525390626},\"offset\":{\"right\":{\"y\":-412.4798889160156,\"z\":32.13766098022461,\"x\":-192.9427490234375},\"left\":{\"y\":-382.2976989746094,\"z\":31.26623916625977,\"x\":-208.572021484375}}},{\"coords\":{\"y\":-138.5001983642578,\"z\":56.68759536743164,\"x\":-87.43092346191406},\"offset\":{\"right\":{\"y\":-142.46287536621095,\"z\":56.57668304443359,\"x\":-70.89958953857422},\"left\":{\"y\":-134.5375213623047,\"z\":56.79850769042969,\"x\":-103.9622573852539}}},{\"coords\":{\"y\":78.6716537475586,\"z\":73.76529693603516,\"x\":-31.23219490051269},\"offset\":{\"right\":{\"y\":73.51509857177735,\"z\":73.70114135742188,\"x\":-17.14653396606445},\"left\":{\"y\":83.82820892333985,\"z\":73.82945251464844,\"x\":-45.31785583496094}}},{\"coords\":{\"y\":386.9282531738281,\"z\":114.53620147705078,\"x\":103.458251953125},\"offset\":{\"right\":{\"y\":380.9574279785156,\"z\":114.23310089111328,\"x\":108.7740249633789},\"left\":{\"y\":392.8990783691406,\"z\":114.83930206298828,\"x\":98.1424789428711}}},{\"coords\":{\"y\":399.8387451171875,\"z\":116.81597900390624,\"x\":318.6685485839844},\"offset\":{\"right\":{\"y\":393.2679443359375,\"z\":116.7958984375,\"x\":316.25518798828127},\"left\":{\"y\":406.4095458984375,\"z\":116.8360595703125,\"x\":321.0819091796875}}},{\"coords\":{\"y\":280.1034240722656,\"z\":102.39488983154296,\"x\":466.24957275390627},\"offset\":{\"right\":{\"y\":269.73492431640627,\"z\":102.50691223144533,\"x\":462.5778503417969},\"left\":{\"y\":290.471923828125,\"z\":102.28286743164063,\"x\":469.9212951660156}}},{\"coords\":{\"y\":309.3448486328125,\"z\":105.74745178222656,\"x\":609.338623046875},\"offset\":{\"right\":{\"y\":301.9033508300781,\"z\":105.58219909667968,\"x\":614.39794921875},\"left\":{\"y\":316.7863464355469,\"z\":105.91270446777344,\"x\":604.279296875}}},{\"coords\":{\"y\":455.2260437011719,\"z\":119.83137512207033,\"x\":909.9212646484376},\"offset\":{\"right\":{\"y\":452.7286071777344,\"z\":120.31674194335938,\"x\":921.6484985351563},\"left\":{\"y\":457.7234802246094,\"z\":119.34600830078124,\"x\":898.1940307617188}}},{\"coords\":{\"y\":514.4160766601563,\"z\":104.01200103759766,\"x\":981.0866088867188},\"offset\":{\"right\":{\"y\":504.8818359375,\"z\":103.73435974121094,\"x\":978.0830688476563},\"left\":{\"y\":523.9503173828125,\"z\":104.28964233398438,\"x\":984.0901489257813}}},{\"coords\":{\"y\":519.5407104492188,\"z\":94.54176330566406,\"x\":1056.5831298828126},\"offset\":{\"right\":{\"y\":513.6204833984375,\"z\":94.4605712890625,\"x\":1061.963134765625},\"left\":{\"y\":525.4609375,\"z\":94.62295532226563,\"x\":1051.203125}}},{\"coords\":{\"y\":675.14404296875,\"z\":126.11238098144533,\"x\":1148.07080078125},\"offset\":{\"right\":{\"y\":671.4967651367188,\"z\":126.3691635131836,\"x\":1157.37841796875},\"left\":{\"y\":678.7913208007813,\"z\":125.85559844970705,\"x\":1138.76318359375}}},{\"coords\":{\"y\":755.5865478515625,\"z\":149.5244903564453,\"x\":1114.8406982421876},\"offset\":{\"right\":{\"y\":765.583251953125,\"z\":149.6618194580078,\"x\":1115.0576171875},\"left\":{\"y\":745.58984375,\"z\":149.3871612548828,\"x\":1114.623779296875}}},{\"coords\":{\"y\":768.6824951171875,\"z\":153.84754943847657,\"x\":1078.20068359375},\"offset\":{\"right\":{\"y\":768.1757202148438,\"z\":153.52317810058595,\"x\":1088.1826171875},\"left\":{\"y\":769.1892700195313,\"z\":154.1719207763672,\"x\":1068.21875}}},{\"coords\":{\"y\":1146.1414794921876,\"z\":171.30776977539063,\"x\":1151.953125},\"offset\":{\"right\":{\"y\":1144.0006103515626,\"z\":171.34503173828126,\"x\":1159.6612548828126},\"left\":{\"y\":1148.2823486328126,\"z\":171.2705078125,\"x\":1144.2449951171876}}},{\"coords\":{\"y\":1641.3765869140626,\"z\":164.5110626220703,\"x\":1051.6641845703126},\"offset\":{\"right\":{\"y\":1639.1337890625,\"z\":164.38507080078126,\"x\":1059.34228515625},\"left\":{\"y\":1643.619384765625,\"z\":164.63705444335938,\"x\":1043.986083984375}}},{\"coords\":{\"y\":1769.32666015625,\"z\":234.1060028076172,\"x\":423.2825927734375},\"offset\":{\"right\":{\"y\":1776.271240234375,\"z\":234.0186462402344,\"x\":417.5584716796875},\"left\":{\"y\":1762.382080078125,\"z\":234.193359375,\"x\":429.0067138671875}}},{\"coords\":{\"y\":1674.20703125,\"z\":230.83560180664066,\"x\":203.83706665039066},\"offset\":{\"right\":{\"y\":1683.5419921875,\"z\":230.7488250732422,\"x\":200.2522125244141},\"left\":{\"y\":1664.8720703125,\"z\":230.92237854003904,\"x\":207.4219207763672}}},{\"coords\":{\"y\":1665.563720703125,\"z\":227.9800720214844,\"x\":128.28050231933595},\"offset\":{\"right\":{\"y\":1672.8275146484376,\"z\":228.0259704589844,\"x\":135.15325927734376},\"left\":{\"y\":1658.2999267578126,\"z\":227.9341735839844,\"x\":121.4077377319336}}},{\"coords\":{\"y\":1860.669677734375,\"z\":197.6771697998047,\"x\":-128.5625457763672},\"offset\":{\"right\":{\"y\":1871.186279296875,\"z\":197.68212890625,\"x\":-125.33734130859377},\"left\":{\"y\":1850.153076171875,\"z\":197.67221069335936,\"x\":-131.78775024414063}}},{\"coords\":{\"y\":1846.239013671875,\"z\":197.26138305664066,\"x\":-228.1758728027344},\"offset\":{\"right\":{\"y\":1852.849853515625,\"z\":197.2654266357422,\"x\":-232.6809844970703},\"left\":{\"y\":1839.628173828125,\"z\":197.25733947753904,\"x\":-223.67076110839845}}},{\"coords\":{\"y\":1978.2227783203126,\"z\":205.1627655029297,\"x\":-526.2551879882813},\"offset\":{\"right\":{\"y\":1983.9013671875,\"z\":205.1675262451172,\"x\":-533.237548828125},\"left\":{\"y\":1972.544189453125,\"z\":205.1580047607422,\"x\":-519.2728271484375}}},{\"coords\":{\"y\":1716.922607421875,\"z\":200.6162567138672,\"x\":-753.3041381835938},\"offset\":{\"right\":{\"y\":1717.7093505859376,\"z\":200.6096954345703,\"x\":-762.2696533203125},\"left\":{\"y\":1716.1358642578126,\"z\":200.6228179931641,\"x\":-744.338623046875}}},{\"coords\":{\"y\":1554.6968994140626,\"z\":218.03689575195313,\"x\":-768.2259521484375},\"offset\":{\"right\":{\"y\":1558.7513427734376,\"z\":217.84518432617188,\"x\":-777.3651733398438},\"left\":{\"y\":1550.6424560546876,\"z\":218.2286071777344,\"x\":-759.0867309570313}}},{\"coords\":{\"y\":1133.0103759765626,\"z\":261.10797119140627,\"x\":-717.5108032226563},\"offset\":{\"right\":{\"y\":1126.926513671875,\"z\":260.7527160644531,\"x\":-725.4392700195313},\"left\":{\"y\":1139.09423828125,\"z\":261.4632263183594,\"x\":-709.5823364257813}}},{\"coords\":{\"y\":923.4232177734376,\"z\":232.71731567382813,\"x\":-704.7056884765625},\"offset\":{\"right\":{\"y\":922.2752685546876,\"z\":232.8983612060547,\"x\":-714.637939453125},\"left\":{\"y\":924.5711669921876,\"z\":232.53627014160157,\"x\":-694.7734375}}},{\"coords\":{\"y\":786.7579345703125,\"z\":166.2924041748047,\"x\":-1052.3134765625},\"offset\":{\"right\":{\"y\":793.7166748046875,\"z\":166.43870544433595,\"x\":-1053.05810546875},\"left\":{\"y\":779.7991943359375,\"z\":166.14610290527345,\"x\":-1051.56884765625}}},{\"coords\":{\"y\":476.10845947265627,\"z\":107.97335815429688,\"x\":-1412.881591796875},\"offset\":{\"right\":{\"y\":471.08990478515627,\"z\":108.0354995727539,\"x\":-1416.1695556640626},\"left\":{\"y\":481.12701416015627,\"z\":107.91121673583985,\"x\":-1409.5936279296876}}},{\"coords\":{\"y\":406.6505432128906,\"z\":68.27764892578125,\"x\":-1074.10302734375},\"offset\":{\"right\":{\"y\":407.2733459472656,\"z\":68.27607727050781,\"x\":-1082.0787353515626},\"left\":{\"y\":406.0277404785156,\"z\":68.27922058105469,\"x\":-1066.1273193359376}}},{\"coords\":{\"y\":267.3129577636719,\"z\":63.79012298583984,\"x\":-1107.6795654296876},\"offset\":{\"right\":{\"y\":284.22369384765627,\"z\":63.90777587890625,\"x\":-1109.41552734375},\"left\":{\"y\":250.40223693847657,\"z\":63.67247009277344,\"x\":-1105.943603515625}}},{\"coords\":{\"y\":82.6058578491211,\"z\":51.82279586791992,\"x\":-1435.579833984375},\"offset\":{\"right\":{\"y\":81.59521484375,\"z\":52.07783508300781,\"x\":-1451.5458984375},\"left\":{\"y\":83.61650085449219,\"z\":51.56775665283203,\"x\":-1419.61376953125}}},{\"coords\":{\"y\":-56.9217643737793,\"z\":51.01789093017578,\"x\":-1359.63037109375},\"offset\":{\"right\":{\"y\":-72.90697479248047,\"z\":50.86559295654297,\"x\":-1358.95947265625},\"left\":{\"y\":-40.93655776977539,\"z\":51.17018890380859,\"x\":-1360.30126953125}}},{\"coords\":{\"y\":-142.99905395507813,\"z\":38.72564315795898,\"x\":-1138.7503662109376},\"offset\":{\"right\":{\"y\":-156.80291748046876,\"z\":39.10597229003906,\"x\":-1146.831787109375},\"left\":{\"y\":-129.1951904296875,\"z\":38.3453140258789,\"x\":-1130.6689453125}}},{\"coords\":{\"y\":-152.71517944335938,\"z\":37.17106246948242,\"x\":-958.6815185546876},\"offset\":{\"right\":{\"y\":-165.06260681152345,\"z\":37.53186416625976,\"x\":-952.0928344726563},\"left\":{\"y\":-140.3677520751953,\"z\":36.81026077270508,\"x\":-965.2702026367188}}},{\"coords\":{\"y\":-79.55953979492188,\"z\":37.20301818847656,\"x\":-814.7227783203125},\"offset\":{\"right\":{\"y\":-92.11891174316406,\"z\":37.2029914855957,\"x\":-808.537109375},\"left\":{\"y\":-67.00016784667969,\"z\":37.20304489135742,\"x\":-820.908447265625}}},{\"coords\":{\"y\":-144.57159423828126,\"z\":36.83731842041016,\"x\":-747.9846801757813},\"offset\":{\"right\":{\"y\":-153.0546417236328,\"z\":36.85140228271485,\"x\":-766.0964965820313},\"left\":{\"y\":-136.0885467529297,\"z\":36.82323455810547,\"x\":-729.8728637695313}}},{\"coords\":{\"y\":-324.3406066894531,\"z\":34.1538200378418,\"x\":-643.2421264648438},\"offset\":{\"right\":{\"y\":-334.7373352050781,\"z\":34.16994094848633,\"x\":-660.3274536132813},\"left\":{\"y\":-313.9438781738281,\"z\":34.13769912719726,\"x\":-626.1567993164063}}},{\"coords\":{\"y\":-369.6502990722656,\"z\":34.49242782592773,\"x\":-549.92041015625},\"offset\":{\"right\":{\"y\":-389.6353454589844,\"z\":34.1157112121582,\"x\":-549.2449340820313},\"left\":{\"y\":-349.6652526855469,\"z\":34.86914443969726,\"x\":-550.5958862304688}}}]','{\"raceType\":\"circuit_only\"}','CITIZENID','Tailshake',9148,'CW-7664','{}',1),
(45,'Zancudo Petrol Station','[{\"coords\":{\"y\":2286.38818359375,\"z\":29.5360164642334,\"x\":-2582.39453125},\"offset\":{\"right\":{\"y\":2295.38623046875,\"z\":29.5368709564209,\"x\":-2582.578369140625},\"left\":{\"y\":2277.39013671875,\"z\":29.5351619720459,\"x\":-2582.210693359375}}},{\"coords\":{\"y\":2266.02197265625,\"z\":19.92663764953613,\"x\":-2731.85595703125},\"offset\":{\"right\":{\"y\":2273.914306640625,\"z\":19.82643890380859,\"x\":-2739.517578125},\"left\":{\"y\":2258.129638671875,\"z\":20.02683639526367,\"x\":-2724.1943359375}}},{\"coords\":{\"y\":2143.631591796875,\"z\":39.21545791625976,\"x\":-2918.5322265625},\"offset\":{\"right\":{\"y\":2152.415771484375,\"z\":39.20609664916992,\"x\":-2925.1533203125},\"left\":{\"y\":2134.847412109375,\"z\":39.22481918334961,\"x\":-2911.9111328125}}},{\"coords\":{\"y\":1974.99658203125,\"z\":30.07115745544433,\"x\":-2995.92333984375},\"offset\":{\"right\":{\"y\":1978.7825927734376,\"z\":30.06380653381347,\"x\":-3006.251220703125},\"left\":{\"y\":1971.2105712890626,\"z\":30.07850837707519,\"x\":-2985.595458984375}}},{\"coords\":{\"y\":1726.0665283203126,\"z\":36.27307891845703,\"x\":-3038.636474609375},\"offset\":{\"right\":{\"y\":1724.296630859375,\"z\":36.2833137512207,\"x\":-3049.4931640625},\"left\":{\"y\":1727.83642578125,\"z\":36.26284408569336,\"x\":-3027.77978515625}}},{\"coords\":{\"y\":1427.916748046875,\"z\":24.20453071594238,\"x\":-3031.9716796875},\"offset\":{\"right\":{\"y\":1435.2930908203126,\"z\":24.23441886901855,\"x\":-3040.1318359375},\"left\":{\"y\":1420.5404052734376,\"z\":24.17464256286621,\"x\":-3023.8115234375}}},{\"coords\":{\"y\":1276.93994140625,\"z\":19.72138023376465,\"x\":-3097.6484375},\"offset\":{\"right\":{\"y\":1278.2586669921876,\"z\":19.71355247497558,\"x\":-3108.569091796875},\"left\":{\"y\":1275.6212158203126,\"z\":19.72920799255371,\"x\":-3086.727783203125}}},{\"coords\":{\"y\":1191.3839111328126,\"z\":19.85276222229004,\"x\":-3096.392578125},\"offset\":{\"right\":{\"y\":1186.0137939453126,\"z\":19.8722858428955,\"x\":-3100.8828125},\"left\":{\"y\":1196.7540283203126,\"z\":19.83323860168457,\"x\":-3091.90234375}}},{\"coords\":{\"y\":1189.047119140625,\"z\":21.13960456848144,\"x\":-3069.420166015625},\"offset\":{\"right\":{\"y\":1183.3162841796876,\"z\":21.13852882385254,\"x\":-3067.643310546875},\"left\":{\"y\":1194.7779541015626,\"z\":21.14068031311035,\"x\":-3071.197021484375}}},{\"coords\":{\"y\":1270.015869140625,\"z\":29.23141288757324,\"x\":-3019.80908203125},\"offset\":{\"right\":{\"y\":1268.0504150390626,\"z\":29.27007102966308,\"x\":-3014.140380859375},\"left\":{\"y\":1271.9813232421876,\"z\":29.1927547454834,\"x\":-3025.477783203125}}},{\"coords\":{\"y\":1322.180419921875,\"z\":47.55038833618164,\"x\":-2911.379638671875},\"offset\":{\"right\":{\"y\":1319.749755859375,\"z\":47.49108123779297,\"x\":-2916.864990234375},\"left\":{\"y\":1324.611083984375,\"z\":47.60969543457031,\"x\":-2905.894287109375}}},{\"coords\":{\"y\":1309.326416015625,\"z\":72.23029327392578,\"x\":-2801.451171875},\"offset\":{\"right\":{\"y\":1305.394775390625,\"z\":72.24642944335938,\"x\":-2796.9189453125},\"left\":{\"y\":1313.258056640625,\"z\":72.21415710449219,\"x\":-2805.9833984375}}},{\"coords\":{\"y\":1488.5211181640626,\"z\":103.85919952392578,\"x\":-2711.396240234375},\"offset\":{\"right\":{\"y\":1485.25439453125,\"z\":103.82662200927736,\"x\":-2706.363525390625},\"left\":{\"y\":1491.787841796875,\"z\":103.89177703857422,\"x\":-2716.428955078125}}},{\"coords\":{\"y\":1505.8619384765626,\"z\":115.51280212402344,\"x\":-2662.52392578125},\"offset\":{\"right\":{\"y\":1500.14501953125,\"z\":116.39110565185549,\"x\":-2660.92822265625},\"left\":{\"y\":1511.578857421875,\"z\":114.6344985961914,\"x\":-2664.11962890625}}},{\"coords\":{\"y\":1534.9373779296876,\"z\":118.86908721923828,\"x\":-2641.859619140625},\"offset\":{\"right\":{\"y\":1532.9229736328126,\"z\":119.4931869506836,\"x\":-2636.242431640625},\"left\":{\"y\":1536.9517822265626,\"z\":118.24498748779296,\"x\":-2647.476806640625}}},{\"coords\":{\"y\":1601.122802734375,\"z\":124.88906860351564,\"x\":-2639.4921875},\"offset\":{\"right\":{\"y\":1599.2137451171876,\"z\":124.86848449707033,\"x\":-2633.803955078125},\"left\":{\"y\":1603.0318603515626,\"z\":124.90965270996094,\"x\":-2645.180419921875}}},{\"coords\":{\"y\":1662.490966796875,\"z\":140.61363220214845,\"x\":-2589.830078125},\"offset\":{\"right\":{\"y\":1656.8800048828126,\"z\":140.6110076904297,\"x\":-2587.704833984375},\"left\":{\"y\":1668.1019287109376,\"z\":140.6162567138672,\"x\":-2591.955322265625}}},{\"coords\":{\"y\":1699.36572265625,\"z\":153.52525329589845,\"x\":-2503.76904296875},\"offset\":{\"right\":{\"y\":1698.755615234375,\"z\":153.54624938964845,\"x\":-2497.80029296875},\"left\":{\"y\":1699.975830078125,\"z\":153.50425720214845,\"x\":-2509.73779296875}}},{\"coords\":{\"y\":1809.9937744140626,\"z\":160.7616729736328,\"x\":-2483.81591796875},\"offset\":{\"right\":{\"y\":1813.8782958984376,\"z\":160.82872009277345,\"x\":-2479.24365234375},\"left\":{\"y\":1806.1092529296876,\"z\":160.6946258544922,\"x\":-2488.38818359375}}},{\"coords\":{\"y\":1926.21240234375,\"z\":170.69207763671876,\"x\":-2531.585693359375},\"offset\":{\"right\":{\"y\":1922.115478515625,\"z\":170.67152404785157,\"x\":-2527.2021484375},\"left\":{\"y\":1930.309326171875,\"z\":170.71263122558598,\"x\":-2535.96923828125}}},{\"coords\":{\"y\":1942.7227783203128,\"z\":179.57598876953126,\"x\":-2398.279296875},\"offset\":{\"right\":{\"y\":1937.2034912109376,\"z\":179.51528930664066,\"x\":-2400.631591796875},\"left\":{\"y\":1948.2420654296876,\"z\":179.63668823242188,\"x\":-2395.927001953125}}},{\"coords\":{\"y\":1865.3734130859376,\"z\":181.78074645996098,\"x\":-2299.155517578125},\"offset\":{\"right\":{\"y\":1859.37744140625,\"z\":181.77674865722657,\"x\":-2299.37548828125},\"left\":{\"y\":1871.369384765625,\"z\":181.7847442626953,\"x\":-2298.935546875}}},{\"coords\":{\"y\":1932.533935546875,\"z\":188.65647888183598,\"x\":-2189.466796875},\"offset\":{\"right\":{\"y\":1927.390625,\"z\":188.6602478027344,\"x\":-2186.376953125},\"left\":{\"y\":1937.67724609375,\"z\":188.6527099609375,\"x\":-2192.556640625}}},{\"coords\":{\"y\":1997.404052734375,\"z\":190.11883544921876,\"x\":-2117.3173828125},\"offset\":{\"right\":{\"y\":1991.4542236328128,\"z\":190.0986785888672,\"x\":-2116.543701171875},\"left\":{\"y\":2003.3538818359376,\"z\":190.1389923095703,\"x\":-2118.091064453125}}},{\"coords\":{\"y\":1990.4749755859376,\"z\":189.40304565429688,\"x\":-2036.95654296875},\"offset\":{\"right\":{\"y\":1991.129150390625,\"z\":189.4127655029297,\"x\":-2042.9207763671876},\"left\":{\"y\":1989.82080078125,\"z\":189.3933258056641,\"x\":-2030.9923095703128}}},{\"coords\":{\"y\":1915.6834716796876,\"z\":186.04066467285157,\"x\":-2013.9644775390626},\"offset\":{\"right\":{\"y\":1909.8079833984376,\"z\":186.0521240234375,\"x\":-2015.18017578125},\"left\":{\"y\":1921.5589599609376,\"z\":186.02920532226566,\"x\":-2012.748779296875}}},{\"coords\":{\"y\":1847.133056640625,\"z\":182.6196441650391,\"x\":-1970.64306640625},\"offset\":{\"right\":{\"y\":1849.92431640625,\"z\":182.6221466064453,\"x\":-1975.9542236328128},\"left\":{\"y\":1844.341796875,\"z\":182.6171417236328,\"x\":-1965.3319091796876}}},{\"coords\":{\"y\":1759.655029296875,\"z\":175.14193725585938,\"x\":-1950.3385009765626},\"offset\":{\"right\":{\"y\":1753.6700439453126,\"z\":175.1614227294922,\"x\":-1949.91455078125},\"left\":{\"y\":1765.6400146484376,\"z\":175.12245178222657,\"x\":-1950.762451171875}}},{\"coords\":{\"y\":1811.4168701171876,\"z\":165.08514404296876,\"x\":-1879.3135986328128},\"offset\":{\"right\":{\"y\":1810.0074462890626,\"z\":165.1204833984375,\"x\":-1873.4815673828128},\"left\":{\"y\":1812.8262939453128,\"z\":165.0498046875,\"x\":-1885.1456298828128}}},{\"coords\":{\"y\":1881.0499267578128,\"z\":148.72862243652345,\"x\":-1794.967041015625},\"offset\":{\"right\":{\"y\":1883.813232421875,\"z\":148.7108917236328,\"x\":-1789.6412353515626},\"left\":{\"y\":1878.28662109375,\"z\":148.7463531494141,\"x\":-1800.2928466796876}}},{\"coords\":{\"y\":1996.4200439453128,\"z\":141.937255859375,\"x\":-1878.8614501953128},\"offset\":{\"right\":{\"y\":1996.3453369140626,\"z\":141.9148712158203,\"x\":-1872.8619384765626},\"left\":{\"y\":1996.4947509765626,\"z\":141.9596405029297,\"x\":-1884.8609619140626}}},{\"coords\":{\"y\":2058.122802734375,\"z\":122.85993957519533,\"x\":-1774.36767578125},\"offset\":{\"right\":{\"y\":2053.70849609375,\"z\":122.89470672607422,\"x\":-1770.303955078125},\"left\":{\"y\":2062.537109375,\"z\":122.8251724243164,\"x\":-1778.431396484375}}},{\"coords\":{\"y\":2151.24951171875,\"z\":99.21678924560549,\"x\":-1656.9517822265626},\"offset\":{\"right\":{\"y\":2146.538818359375,\"z\":99.30598449707033,\"x\":-1653.23681640625},\"left\":{\"y\":2155.960205078125,\"z\":99.12759399414064,\"x\":-1660.666748046875}}},{\"coords\":{\"y\":2240.99365234375,\"z\":82.38408660888672,\"x\":-1705.3250732421876},\"offset\":{\"right\":{\"y\":2245.822021484375,\"z\":82.37613677978516,\"x\":-1701.7633056640626},\"left\":{\"y\":2236.165283203125,\"z\":82.39203643798828,\"x\":-1708.8868408203126}}},{\"coords\":{\"y\":2304.875732421875,\"z\":65.41776275634766,\"x\":-1856.7689208984376},\"offset\":{\"right\":{\"y\":2310.856201171875,\"z\":65.4240951538086,\"x\":-1856.284912109375},\"left\":{\"y\":2298.895263671875,\"z\":65.41143035888672,\"x\":-1857.2529296875}}},{\"coords\":{\"y\":2278.445068359375,\"z\":46.92208099365234,\"x\":-2015.054443359375},\"offset\":{\"right\":{\"y\":2284.436279296875,\"z\":46.94633102416992,\"x\":-2014.732421875},\"left\":{\"y\":2272.453857421875,\"z\":46.89783096313476,\"x\":-2015.37646484375}}},{\"coords\":{\"y\":2308.68115234375,\"z\":37.09455490112305,\"x\":-2112.849853515625},\"offset\":{\"right\":{\"y\":2314.656494140625,\"z\":37.09966278076172,\"x\":-2113.39404296875},\"left\":{\"y\":2302.705810546875,\"z\":37.08944702148437,\"x\":-2112.3056640625}}},{\"coords\":{\"y\":2273.703369140625,\"z\":32.19904708862305,\"x\":-2257.154541015625},\"offset\":{\"right\":{\"y\":2278.8701171875,\"z\":32.19766235351562,\"x\":-2260.204833984375},\"left\":{\"y\":2268.53662109375,\"z\":32.20043182373047,\"x\":-2254.104248046875}}},{\"coords\":{\"y\":2291.46875,\"z\":31.5549030303955,\"x\":-2438.587646484375},\"offset\":{\"right\":{\"y\":2297.1806640625,\"z\":31.57423019409179,\"x\":-2436.751220703125},\"left\":{\"y\":2285.7568359375,\"z\":31.53557586669922,\"x\":-2440.424072265625}}},{\"coords\":{\"y\":2286.3828125,\"z\":29.52339363098144,\"x\":-2582.52685546875},\"offset\":{\"right\":{\"y\":2295.3798828125,\"z\":29.51794242858886,\"x\":-2582.757568359375},\"left\":{\"y\":2277.3857421875,\"z\":29.52884483337402,\"x\":-2582.296142578125}}}]',NULL,'CITIZENID','ilmicioletale',4933,'CW-8087','{}',1),
(46,'Zancudo Sprint','[{\"coords\":{\"z\":44.11223220825195,\"x\":-2256.849365234375,\"y\":4326.6884765625},\"offset\":{\"left\":{\"z\":44.19839859008789,\"x\":-2264.6513671875,\"y\":4324.92236328125},\"right\":{\"z\":44.02606582641601,\"x\":-2249.04736328125,\"y\":4328.45458984375}}},{\"coords\":{\"z\":40.85072708129883,\"x\":-2264.4267578125,\"y\":4377.568359375},\"offset\":{\"left\":{\"z\":40.73799133300781,\"x\":-2268.205078125,\"y\":4378.87646484375},\"right\":{\"z\":40.96346282958984,\"x\":-2260.6484375,\"y\":4376.26025390625}}},{\"coords\":{\"z\":38.74330139160156,\"x\":-2242.9189453125,\"y\":4431.54248046875},\"offset\":{\"left\":{\"z\":38.80965805053711,\"x\":-2245.475830078125,\"y\":4434.61767578125},\"right\":{\"z\":38.67694473266601,\"x\":-2240.362060546875,\"y\":4428.46728515625}}},{\"coords\":{\"z\":34.05620193481445,\"x\":-2199.084228515625,\"y\":4485.59130859375},\"offset\":{\"left\":{\"z\":33.84563827514648,\"x\":-2202.66455078125,\"y\":4487.3623046875},\"right\":{\"z\":34.26676559448242,\"x\":-2195.50390625,\"y\":4483.8203125}}},{\"coords\":{\"z\":33.96925354003906,\"x\":-2164.881591796875,\"y\":4518.5078125},\"offset\":{\"left\":{\"z\":33.96320343017578,\"x\":-2165.021240234375,\"y\":4522.50537109375},\"right\":{\"z\":33.97530364990234,\"x\":-2164.741943359375,\"y\":4514.51025390625}}},{\"coords\":{\"z\":28.82595252990722,\"x\":-2090.8564453125,\"y\":4511.24658203125},\"offset\":{\"left\":{\"z\":28.81850051879882,\"x\":-2091.1552734375,\"y\":4515.2353515625},\"right\":{\"z\":28.83340454101562,\"x\":-2090.5576171875,\"y\":4507.2578125}}},{\"coords\":{\"z\":27.6301155090332,\"x\":-2035.1630859375,\"y\":4523.50830078125},\"offset\":{\"left\":{\"z\":27.73784255981445,\"x\":-2033.6153564453128,\"y\":4527.1953125},\"right\":{\"z\":27.52238845825195,\"x\":-2036.7108154296876,\"y\":4519.8212890625}}},{\"coords\":{\"z\":32.30507278442383,\"x\":-1972.865966796875,\"y\":4489.171875},\"offset\":{\"left\":{\"z\":32.32128524780273,\"x\":-1969.9371337890626,\"y\":4491.89599609375},\"right\":{\"z\":32.28886032104492,\"x\":-1975.7947998046876,\"y\":4486.44775390625}}},{\"coords\":{\"z\":33.38861846923828,\"x\":-1958.9832763671876,\"y\":4471.875},\"offset\":{\"left\":{\"z\":33.13693237304687,\"x\":-1955.70263671875,\"y\":4474.1494140625},\"right\":{\"z\":33.64030456542969,\"x\":-1962.263916015625,\"y\":4469.6005859375}}},{\"coords\":{\"z\":34.17923355102539,\"x\":-1946.1064453125,\"y\":4460.71728515625},\"offset\":{\"left\":{\"z\":33.38080215454101,\"x\":-1945.668701171875,\"y\":4466.64794921875},\"right\":{\"z\":34.97766494750976,\"x\":-1946.544189453125,\"y\":4454.78662109375}}},{\"coords\":{\"z\":29.56040573120117,\"x\":-1920.5986328125,\"y\":4477.65869140625},\"offset\":{\"left\":{\"z\":29.17958450317382,\"x\":-1923.9195556640626,\"y\":4481.376953125},\"right\":{\"z\":29.94122695922851,\"x\":-1917.2777099609376,\"y\":4473.9404296875}}},{\"coords\":{\"z\":26.16768646240234,\"x\":-1883.20458984375,\"y\":4480.52587890625},\"offset\":{\"left\":{\"z\":25.90925025939941,\"x\":-1884.395263671875,\"y\":4485.375},\"right\":{\"z\":26.42612266540527,\"x\":-1882.013916015625,\"y\":4475.6767578125}}},{\"coords\":{\"z\":21.62620162963867,\"x\":-1844.819091796875,\"y\":4499.92626953125},\"offset\":{\"left\":{\"z\":21.19057464599609,\"x\":-1843.781494140625,\"y\":4504.7978515625},\"right\":{\"z\":22.06182861328125,\"x\":-1845.856689453125,\"y\":4495.0546875}}},{\"coords\":{\"z\":16.81292915344238,\"x\":-1811.54150390625,\"y\":4479.18408203125},\"offset\":{\"left\":{\"z\":16.54586410522461,\"x\":-1810.4273681640626,\"y\":4484.05126953125},\"right\":{\"z\":17.07999420166015,\"x\":-1812.6556396484376,\"y\":4474.31689453125}}},{\"coords\":{\"z\":5.41567516326904,\"x\":-1757.879638671875,\"y\":4463.9736328125},\"offset\":{\"left\":{\"z\":5.73346138000488,\"x\":-1755.2833251953126,\"y\":4468.23486328125},\"right\":{\"z\":5.0978889465332,\"x\":-1760.4759521484376,\"y\":4459.71240234375}}},{\"coords\":{\"z\":1.87412655353546,\"x\":-1665.1468505859376,\"y\":4449.53759765625},\"offset\":{\"left\":{\"z\":1.41591942310333,\"x\":-1662.7906494140626,\"y\":4453.923828125},\"right\":{\"z\":2.3323335647583,\"x\":-1667.5030517578126,\"y\":4445.1513671875}}},{\"coords\":{\"z\":1.8424162864685,\"x\":-1614.2169189453126,\"y\":4380.48046875},\"offset\":{\"left\":{\"z\":1.88582789897918,\"x\":-1609.75732421875,\"y\":4382.7412109375},\"right\":{\"z\":1.79900467395782,\"x\":-1618.676513671875,\"y\":4378.2197265625}}},{\"coords\":{\"z\":3.76294469833374,\"x\":-1553.65234375,\"y\":4327.0869140625},\"offset\":{\"left\":{\"z\":3.58115029335021,\"x\":-1551.467529296875,\"y\":4331.58056640625},\"right\":{\"z\":3.94473910331726,\"x\":-1555.837158203125,\"y\":4322.59326171875}}},{\"coords\":{\"z\":2.42341828346252,\"x\":-1466.15966796875,\"y\":4304.28515625},\"offset\":{\"left\":{\"z\":2.45702457427978,\"x\":-1465.7359619140626,\"y\":4310.27001953125},\"right\":{\"z\":2.38981199264526,\"x\":-1466.5833740234376,\"y\":4298.30029296875}}},{\"coords\":{\"z\":4.15459728240966,\"x\":-1402.850830078125,\"y\":4303.64990234375},\"offset\":{\"left\":{\"z\":3.52234697341918,\"x\":-1402.2645263671876,\"y\":4307.5556640625},\"right\":{\"z\":4.78684759140014,\"x\":-1403.4371337890626,\"y\":4299.744140625}}},{\"coords\":{\"z\":5.65349292755126,\"x\":-1342.9195556640626,\"y\":4318.92431640625},\"offset\":{\"left\":{\"z\":5.80060863494873,\"x\":-1345.2916259765626,\"y\":4322.1416015625},\"right\":{\"z\":5.5063772201538,\"x\":-1340.5474853515626,\"y\":4315.70703125}}},{\"coords\":{\"z\":7.41466426849365,\"x\":-1237.251953125,\"y\":4362.29150390625},\"offset\":{\"left\":{\"z\":7.43791055679321,\"x\":-1237.9112548828126,\"y\":4366.23681640625},\"right\":{\"z\":7.39141798019409,\"x\":-1236.5926513671876,\"y\":4358.34619140625}}},{\"coords\":{\"z\":7.41084861755371,\"x\":-1165.62060546875,\"y\":4365.07763671875},\"offset\":{\"left\":{\"z\":7.41402626037597,\"x\":-1166.43701171875,\"y\":4368.99365234375},\"right\":{\"z\":7.40767097473144,\"x\":-1164.80419921875,\"y\":4361.16162109375}}},{\"coords\":{\"z\":13.34563732147216,\"x\":-1071.8681640625,\"y\":4371.7412109375},\"offset\":{\"left\":{\"z\":15.04289054870605,\"x\":-1070.1124267578126,\"y\":4382.466796875},\"right\":{\"z\":11.64838409423828,\"x\":-1073.6239013671876,\"y\":4361.015625}}},{\"coords\":{\"z\":11.22719764709472,\"x\":-962.3970336914064,\"y\":4350.21484375},\"offset\":{\"left\":{\"z\":11.03585147857666,\"x\":-962.6928100585938,\"y\":4355.20263671875},\"right\":{\"z\":11.41854381561279,\"x\":-962.1012573242188,\"y\":4345.22705078125}}},{\"coords\":{\"z\":19.5855770111084,\"x\":-876.5358276367188,\"y\":4391.9765625},\"offset\":{\"left\":{\"z\":19.68398475646972,\"x\":-879.4190673828125,\"y\":4396.060546875},\"right\":{\"z\":19.48716926574707,\"x\":-873.652587890625,\"y\":4387.892578125}}},{\"coords\":{\"z\":18.91035842895507,\"x\":-809.7577514648438,\"y\":4410.39013671875},\"offset\":{\"left\":{\"z\":19.11100387573242,\"x\":-808.6151123046875,\"y\":4415.25390625},\"right\":{\"z\":18.70971298217773,\"x\":-810.900390625,\"y\":4405.5263671875}}},{\"coords\":{\"z\":19.67461204528808,\"x\":-745.44873046875,\"y\":4412.794921875},\"offset\":{\"left\":{\"z\":19.71253585815429,\"x\":-746.3036499023438,\"y\":4417.72119140625},\"right\":{\"z\":19.63668823242187,\"x\":-744.5938110351563,\"y\":4407.86865234375}}},{\"coords\":{\"z\":25.32780265808105,\"x\":-687.7816772460938,\"y\":4388.78857421875},\"offset\":{\"left\":{\"z\":25.22755622863769,\"x\":-685.8093872070313,\"y\":4393.3818359375},\"right\":{\"z\":25.42804908752441,\"x\":-689.7539672851563,\"y\":4384.1953125}}},{\"coords\":{\"z\":50.91108322143555,\"x\":-589.7083740234375,\"y\":4363.71240234375},\"offset\":{\"left\":{\"z\":51.00346755981445,\"x\":-588.5853271484375,\"y\":4367.55029296875},\"right\":{\"z\":50.81869888305664,\"x\":-590.8314208984375,\"y\":4359.87451171875}}},{\"coords\":{\"z\":65.78436279296875,\"x\":-495.2115783691406,\"y\":4353.5146484375},\"offset\":{\"left\":{\"z\":65.775634765625,\"x\":-492.7489013671875,\"y\":4356.66650390625},\"right\":{\"z\":65.7930908203125,\"x\":-497.67425537109377,\"y\":4350.36279296875}}},{\"coords\":{\"z\":56.82502365112305,\"x\":-416.52154541015627,\"y\":4289.4990234375},\"offset\":{\"left\":{\"z\":56.74670791625976,\"x\":-414.2548522949219,\"y\":4292.7939453125},\"right\":{\"z\":56.90333938598633,\"x\":-418.7882385253906,\"y\":4286.2041015625}}},{\"coords\":{\"z\":42.81773376464844,\"x\":-338.3056335449219,\"y\":4252.20166015625},\"offset\":{\"left\":{\"z\":42.83132934570312,\"x\":-335.0643005371094,\"y\":4254.54541015625},\"right\":{\"z\":42.80413818359375,\"x\":-341.5469665527344,\"y\":4249.85791015625}}},{\"coords\":{\"z\":44.20049667358398,\"x\":-241.4145965576172,\"y\":4228.1298828125},\"offset\":{\"left\":{\"z\":44.20173645019531,\"x\":-241.0870361328125,\"y\":4232.1162109375},\"right\":{\"z\":44.19925689697265,\"x\":-241.74215698242188,\"y\":4224.1435546875}}},{\"coords\":{\"z\":44.13401412963867,\"x\":-202.7253875732422,\"y\":4220.5595703125},\"offset\":{\"left\":{\"z\":44.09271240234375,\"x\":-203.25828552246098,\"y\":4226.53564453125},\"right\":{\"z\":44.17531585693359,\"x\":-202.19248962402345,\"y\":4214.58349609375}}},{\"coords\":{\"z\":44.35789108276367,\"x\":-167.77093505859376,\"y\":4245.66748046875},\"offset\":{\"left\":{\"z\":44.35652542114258,\"x\":-171.08551025390626,\"y\":4249.4111328125},\"right\":{\"z\":44.35925674438476,\"x\":-164.45635986328126,\"y\":4241.923828125}}},{\"coords\":{\"z\":45.26468658447265,\"x\":-100.05821990966796,\"y\":4293.8525390625},\"offset\":{\"left\":{\"z\":45.26012802124023,\"x\":-102.30169677734377,\"y\":4297.1640625},\"right\":{\"z\":45.26924514770508,\"x\":-97.8147430419922,\"y\":4290.541015625}}},{\"coords\":{\"z\":56.46329498291015,\"x\":-49.6675796508789,\"y\":4408.77734375},\"offset\":{\"left\":{\"z\":56.71890640258789,\"x\":-52.76509094238281,\"y\":4411.29541015625},\"right\":{\"z\":56.20768356323242,\"x\":-46.570068359375,\"y\":4406.25927734375}}},{\"coords\":{\"z\":59.12195587158203,\"x\":13.43776893615722,\"y\":4452.548828125},\"offset\":{\"left\":{\"z\":59.19240570068359,\"x\":12.60110664367675,\"y\":4456.45947265625},\"right\":{\"z\":59.05150604248047,\"x\":14.27443122863769,\"y\":4448.63818359375}}},{\"coords\":{\"z\":72.6594467163086,\"x\":127.75250244140624,\"y\":4425.84130859375},\"offset\":{\"left\":{\"z\":72.69580078125,\"x\":129.2264862060547,\"y\":4429.5595703125},\"right\":{\"z\":72.62309265136719,\"x\":126.27851104736328,\"y\":4422.123046875}}},{\"coords\":{\"z\":61.98148727416992,\"x\":299.3467712402344,\"y\":4516.10693359375},\"offset\":{\"left\":{\"z\":61.78820419311523,\"x\":299.27532958984377,\"y\":4522.103515625},\"right\":{\"z\":62.17477035522461,\"x\":299.418212890625,\"y\":4510.1103515625}}},{\"coords\":{\"z\":62.27444076538086,\"x\":368.2682495117188,\"y\":4460.0400390625},\"offset\":{\"left\":{\"z\":62.13192749023437,\"x\":373.38275146484377,\"y\":4463.173828125},\"right\":{\"z\":62.41695404052734,\"x\":363.15374755859377,\"y\":4456.90625}}},{\"coords\":{\"z\":62.74337387084961,\"x\":444.2218017578125,\"y\":4361.22021484375},\"offset\":{\"left\":{\"z\":62.9765739440918,\"x\":445.04388427734377,\"y\":4367.1591796875},\"right\":{\"z\":62.51017379760742,\"x\":443.3997192382813,\"y\":4355.28125}}},{\"coords\":{\"z\":55.14636993408203,\"x\":495.34326171875,\"y\":4311.740234375},\"offset\":{\"left\":{\"z\":55.05460357666015,\"x\":501.2787170410156,\"y\":4312.61328125},\"right\":{\"z\":55.2381362915039,\"x\":489.4078063964844,\"y\":4310.8671875}}},{\"coords\":{\"z\":50.04796600341797,\"x\":863.4036254882813,\"y\":4255.78125},\"offset\":{\"left\":{\"z\":49.67533874511719,\"x\":857.4392700195313,\"y\":4256.31787109375},\"right\":{\"z\":50.42059326171875,\"x\":869.3679809570313,\"y\":4255.24462890625}}},{\"coords\":{\"z\":57.36433029174805,\"x\":1071.971923828125,\"y\":4445.73779296875},\"offset\":{\"left\":{\"z\":57.37883758544922,\"x\":1074.3017578125,\"y\":4451.26708984375},\"right\":{\"z\":57.34982299804687,\"x\":1069.64208984375,\"y\":4440.20849609375}}},{\"coords\":{\"z\":54.7417984008789,\"x\":1214.8389892578126,\"y\":4456.384765625},\"offset\":{\"left\":{\"z\":54.80121612548828,\"x\":1211.279052734375,\"y\":4461.21435546875},\"right\":{\"z\":54.68238067626953,\"x\":1218.39892578125,\"y\":4451.55517578125}}},{\"coords\":{\"z\":58.28782272338867,\"x\":1346.6715087890626,\"y\":4489.55712890625},\"offset\":{\"left\":{\"z\":58.22243499755859,\"x\":1343.8048095703126,\"y\":4494.82763671875},\"right\":{\"z\":58.35321044921875,\"x\":1349.5382080078126,\"y\":4484.28662109375}}},{\"coords\":{\"z\":50.41799163818359,\"x\":1543.9686279296876,\"y\":4561.90185546875},\"offset\":{\"left\":{\"z\":50.50675201416015,\"x\":1542.01416015625,\"y\":4567.57373046875},\"right\":{\"z\":50.32923126220703,\"x\":1545.923095703125,\"y\":4556.22998046875}}}]','{\"raceType\":\"sprint\"}','CITIZENID','ilmicioletale',4896,'CW-4267','{}',1),
(47,'HSPU','[{\"coords\":{\"z\":325.15087890625,\"x\":-387.7688598632813,\"y\":1179.626220703125},\"offset\":{\"left\":{\"z\":323.9072570800781,\"x\":-386.2536315917969,\"y\":1184.2259521484376},\"right\":{\"z\":326.3945007324219,\"x\":-389.2840881347656,\"y\":1175.0264892578126}}},{\"coords\":{\"z\":310.418701171875,\"x\":-259.7069396972656,\"y\":1264.41943359375},\"offset\":{\"left\":{\"z\":310.43096923828127,\"x\":-266.79766845703127,\"y\":1268.1236572265626},\"right\":{\"z\":310.40643310546877,\"x\":-252.61619567871095,\"y\":1260.7152099609376}}},{\"coords\":{\"z\":294.2252197265625,\"x\":-179.09573364257813,\"y\":1378.920654296875},\"offset\":{\"left\":{\"z\":294.2637634277344,\"x\":-186.6234130859375,\"y\":1376.2127685546876},\"right\":{\"z\":294.1866760253906,\"x\":-171.56805419921876,\"y\":1381.6285400390626}}},{\"coords\":{\"z\":300.8497619628906,\"x\":-517.8108520507813,\"y\":1326.0838623046876},\"offset\":{\"left\":{\"z\":300.7950439453125,\"x\":-516.2027587890625,\"y\":1318.247314453125},\"right\":{\"z\":300.90447998046877,\"x\":-519.4189453125,\"y\":1333.92041015625}}},{\"coords\":{\"z\":265.19891357421877,\"x\":-698.6935424804688,\"y\":1188.0963134765626},\"offset\":{\"left\":{\"z\":263.8399963378906,\"x\":-694.852294921875,\"y\":1183.6920166015626},\"right\":{\"z\":266.5578308105469,\"x\":-702.5347900390625,\"y\":1192.5006103515626}}},{\"coords\":{\"z\":261.7866821289063,\"x\":-768.1461181640625,\"y\":1191.78466796875},\"offset\":{\"left\":{\"z\":260.826171875,\"x\":-773.5426635742188,\"y\":1189.344482421875},\"right\":{\"z\":262.7471923828125,\"x\":-762.7495727539063,\"y\":1194.224853515625}}},{\"coords\":{\"z\":200.73719787597657,\"x\":-763.452392578125,\"y\":1683.3760986328126},\"offset\":{\"left\":{\"z\":199.7495269775391,\"x\":-768.3964233398438,\"y\":1686.62890625},\"right\":{\"z\":201.7248687744141,\"x\":-758.5083618164063,\"y\":1680.123291015625}}},{\"coords\":{\"z\":205.365951538086,\"x\":-534.3758544921875,\"y\":1965.3997802734376},\"offset\":{\"left\":{\"z\":204.1248779296875,\"x\":-539.9415893554688,\"y\":1967.2659912109376},\"right\":{\"z\":206.6070251464844,\"x\":-528.8101196289063,\"y\":1963.5335693359376}}},{\"coords\":{\"z\":197.89540100097657,\"x\":-253.92404174804688,\"y\":1832.31884765625},\"offset\":{\"left\":{\"z\":196.87339782714845,\"x\":-256.4438171386719,\"y\":1837.6673583984376},\"right\":{\"z\":198.9174041748047,\"x\":-251.40428161621098,\"y\":1826.9703369140626}}},{\"coords\":{\"z\":197.92236328125,\"x\":-124.20548248291016,\"y\":1859.6407470703128},\"offset\":{\"left\":{\"z\":196.553451538086,\"x\":-122.8287353515625,\"y\":1865.3179931640626},\"right\":{\"z\":199.2912750244141,\"x\":-125.5822296142578,\"y\":1853.9635009765626}}},{\"coords\":{\"z\":226.381591796875,\"x\":83.5237808227539,\"y\":1695.611083984375},\"offset\":{\"left\":{\"z\":226.3815155029297,\"x\":86.13288116455078,\"y\":1701.01416015625},\"right\":{\"z\":226.3816680908203,\"x\":80.91468048095703,\"y\":1690.2080078125}}},{\"coords\":{\"z\":238.85606384277345,\"x\":155.65158081054688,\"y\":1485.46728515625},\"offset\":{\"left\":{\"z\":237.69227600097657,\"x\":160.73800659179688,\"y\":1488.4293212890626},\"right\":{\"z\":240.0198516845703,\"x\":150.56515502929688,\"y\":1482.5052490234376}}},{\"coords\":{\"z\":238.3094024658203,\"x\":239.0494842529297,\"y\":1350.8895263671876},\"offset\":{\"left\":{\"z\":236.8118896484375,\"x\":244.7320251464844,\"y\":1352.100341796875},\"right\":{\"z\":239.80691528320313,\"x\":233.366943359375,\"y\":1349.6787109375}}},{\"coords\":{\"z\":254.4127197265625,\"x\":134.11788940429688,\"y\":1392.736572265625},\"offset\":{\"left\":{\"z\":252.95652770996098,\"x\":133.60386657714845,\"y\":1386.938720703125},\"right\":{\"z\":255.8689117431641,\"x\":134.6319122314453,\"y\":1398.534423828125}}},{\"coords\":{\"z\":282.0643615722656,\"x\":-79.83805084228516,\"y\":1504.904541015625},\"offset\":{\"left\":{\"z\":282.0642395019531,\"x\":-81.96759796142578,\"y\":1499.295166015625},\"right\":{\"z\":282.0644836425781,\"x\":-77.70850372314453,\"y\":1510.513916015625}}},{\"coords\":{\"z\":287.66021728515627,\"x\":-140.47406005859376,\"y\":1512.3170166015626},\"offset\":{\"left\":{\"z\":287.7491760253906,\"x\":-139.9065704345703,\"y\":1504.337646484375},\"right\":{\"z\":287.5712585449219,\"x\":-141.0415496826172,\"y\":1520.29638671875}}},{\"coords\":{\"z\":306.1158142089844,\"x\":-460.981689453125,\"y\":1331.3038330078126},\"offset\":{\"left\":{\"z\":306.1566162109375,\"x\":-453.0932312011719,\"y\":1332.634521484375},\"right\":{\"z\":306.07501220703127,\"x\":-468.8701477050781,\"y\":1329.97314453125}}},{\"coords\":{\"z\":325.16595458984377,\"x\":-430.4809875488281,\"y\":1190.9625244140626},\"offset\":{\"left\":{\"z\":324.1077270507813,\"x\":-429.1232604980469,\"y\":1196.7103271484376},\"right\":{\"z\":326.2241821289063,\"x\":-431.8387145996094,\"y\":1185.2147216796876}}}]','{\"description\":\"If you dont beat the 2:10 lap time you have to buy me a coffee\", \"raceType\":\"circuit_only\"}','CITIZENID','NoSwear',3959,'CW-9030','{}',1),
(48,'Southside Sprint','[{\"coords\":{\"y\":-1760.225830078125,\"z\":29.36194038391113,\"x\":-113.32921600341796},\"offset\":{\"right\":{\"y\":-1766.4486083984376,\"z\":29.21957778930664,\"x\":-118.35480499267578},\"left\":{\"y\":-1754.0030517578126,\"z\":29.50430297851562,\"x\":-108.30362701416016}}},{\"coords\":{\"y\":-1894.669921875,\"z\":21.21682167053222,\"x\":68.70814514160156},\"offset\":{\"right\":{\"y\":-1899.2752685546876,\"z\":21.13143730163574,\"x\":73.97917175292969},\"left\":{\"y\":-1890.0645751953126,\"z\":21.30220603942871,\"x\":63.43711853027344}}},{\"coords\":{\"y\":-1868.48388671875,\"z\":23.82795143127441,\"x\":114.32415771484377},\"offset\":{\"right\":{\"y\":-1874.7091064453126,\"z\":23.48455047607422,\"x\":111.1416015625},\"left\":{\"y\":-1862.2586669921876,\"z\":24.17135238647461,\"x\":117.5067138671875}}},{\"coords\":{\"y\":-1914.4783935546876,\"z\":22.8807258605957,\"x\":203.72703552246098},\"offset\":{\"right\":{\"y\":-1920.3785400390626,\"z\":22.22195434570312,\"x\":200.01840209960936},\"left\":{\"y\":-1908.5782470703126,\"z\":23.53949737548828,\"x\":207.4356689453125}}},{\"coords\":{\"y\":-1968.9581298828126,\"z\":18.42771530151367,\"x\":166.9515838623047},\"offset\":{\"right\":{\"y\":-1964.344482421875,\"z\":18.4072093963623,\"x\":161.68716430664063},\"left\":{\"y\":-1973.57177734375,\"z\":18.44822120666504,\"x\":172.21600341796876}}},{\"coords\":{\"y\":-2028.5673828125,\"z\":17.87018585205078,\"x\":137.2245330810547},\"offset\":{\"right\":{\"y\":-2028.233642578125,\"z\":17.67826652526855,\"x\":130.23512268066407},\"left\":{\"y\":-2028.901123046875,\"z\":18.062105178833,\"x\":144.2139434814453}}},{\"coords\":{\"y\":-2049.568603515625,\"z\":17.91439437866211,\"x\":198.43118286132813},\"offset\":{\"right\":{\"y\":-2061.236083984375,\"z\":18.02547836303711,\"x\":192.6990203857422},\"left\":{\"y\":-2037.901123046875,\"z\":17.80331039428711,\"x\":204.1633453369141}}},{\"coords\":{\"y\":-2152.796875,\"z\":14.19787788391113,\"x\":311.0249938964844},\"offset\":{\"right\":{\"y\":-2160.6240234375,\"z\":13.54529857635498,\"x\":304.8353576660156},\"left\":{\"y\":-2144.9697265625,\"z\":14.85045719146728,\"x\":317.2146301269531}}},{\"coords\":{\"y\":-2144.107421875,\"z\":17.64271736145019,\"x\":412.7559509277344},\"offset\":{\"right\":{\"y\":-2149.88916015625,\"z\":17.69853019714355,\"x\":420.9148254394531},\"left\":{\"y\":-2138.32568359375,\"z\":17.58690452575683,\"x\":404.5970764160156}}},{\"coords\":{\"y\":-2077.64453125,\"z\":23.15605545043945,\"x\":468.5089111328125},\"offset\":{\"right\":{\"y\":-2084.546875,\"z\":23.29125213623047,\"x\":475.7435607910156},\"left\":{\"y\":-2070.7421875,\"z\":23.02085876464844,\"x\":461.2742614746094}}},{\"coords\":{\"y\":-2019.6002197265626,\"z\":23.17243385314941,\"x\":449.6446228027344},\"offset\":{\"right\":{\"y\":-2009.7174072265626,\"z\":23.24762535095215,\"x\":459.56048583984377},\"left\":{\"y\":-2029.4830322265626,\"z\":23.09724235534668,\"x\":439.728759765625}}},{\"coords\":{\"y\":-1891.3895263671876,\"z\":25.48711204528809,\"x\":330.5835266113281},\"offset\":{\"right\":{\"y\":-1885.3892822265626,\"z\":25.14642333984375,\"x\":335.86376953125},\"left\":{\"y\":-1897.3897705078126,\"z\":25.82780075073242,\"x\":325.30328369140627}}},{\"coords\":{\"y\":-1763.9510498046876,\"z\":28.72109031677246,\"x\":177.21697998046876},\"offset\":{\"right\":{\"y\":-1757.955810546875,\"z\":28.62443351745605,\"x\":182.51304626464845},\"left\":{\"y\":-1769.9462890625,\"z\":28.81774711608886,\"x\":171.92091369628907}}},{\"coords\":{\"y\":-1611.87548828125,\"z\":28.85005187988281,\"x\":-4.60164546966552},\"offset\":{\"right\":{\"y\":-1606.2987060546876,\"z\":28.76941299438477,\"x\":1.13354778289794},\"left\":{\"y\":-1617.4522705078126,\"z\":28.93069076538086,\"x\":-10.336838722229}}},{\"coords\":{\"y\":-1530.240234375,\"z\":33.3100357055664,\"x\":-101.75933837890624},\"offset\":{\"right\":{\"y\":-1524.38134765625,\"z\":33.12421035766601,\"x\":-96.31517791748049},\"left\":{\"y\":-1536.09912109375,\"z\":33.4958610534668,\"x\":-107.20349884033205}}},{\"coords\":{\"y\":-1439.5008544921876,\"z\":30.93794631958008,\"x\":-214.89122009277345},\"offset\":{\"right\":{\"y\":-1433.1258544921876,\"z\":30.94374656677246,\"x\":-210.05804443359376},\"left\":{\"y\":-1445.8758544921876,\"z\":30.93214607238769,\"x\":-219.72439575195313}}},{\"coords\":{\"y\":-1422.414306640625,\"z\":30.86265563964844,\"x\":-256.2709045410156},\"offset\":{\"right\":{\"y\":-1415.4532470703126,\"z\":30.74725723266601,\"x\":-256.9991149902344},\"left\":{\"y\":-1429.3753662109376,\"z\":30.97805404663086,\"x\":-255.54269409179688}}},{\"coords\":{\"y\":-1460.218994140625,\"z\":30.85860633850097,\"x\":-282.7162780761719},\"offset\":{\"right\":{\"y\":-1459.104248046875,\"z\":30.89967536926269,\"x\":-289.6268310546875},\"left\":{\"y\":-1461.333740234375,\"z\":30.81753730773925,\"x\":-275.80572509765627}}},{\"coords\":{\"y\":-1638.488525390625,\"z\":18.65974426269531,\"x\":-357.8591613769531},\"offset\":{\"right\":{\"y\":-1634.31494140625,\"z\":18.60874557495117,\"x\":-363.4786987304687},\"left\":{\"y\":-1642.662109375,\"z\":18.71074295043945,\"x\":-352.2396240234375}}},{\"coords\":{\"y\":-1816.564208984375,\"z\":20.89498138427734,\"x\":-402.2857360839844},\"offset\":{\"right\":{\"y\":-1818.5216064453126,\"z\":20.74164962768554,\"x\":-409.0047607421875},\"left\":{\"y\":-1814.6068115234376,\"z\":21.04831314086914,\"x\":-395.5667114257813}}},{\"coords\":{\"y\":-1834.2818603515626,\"z\":23.41063499450683,\"x\":-330.70989990234377},\"offset\":{\"right\":{\"y\":-1841.1490478515626,\"z\":23.22631454467773,\"x\":-332.0543518066406},\"left\":{\"y\":-1827.4146728515626,\"z\":23.59495544433593,\"x\":-329.3654479980469}}},{\"coords\":{\"y\":-1821.98974609375,\"z\":29.49941825866699,\"x\":-231.40773010253904},\"offset\":{\"right\":{\"y\":-1828.048828125,\"z\":29.59061241149902,\"x\":-227.90362548828126},\"left\":{\"y\":-1815.9306640625,\"z\":29.40822410583496,\"x\":-234.91183471679688}}},{\"coords\":{\"y\":-1782.8223876953126,\"z\":29.40845489501953,\"x\":-165.7869415283203},\"offset\":{\"right\":{\"y\":-1788.4813232421876,\"z\":29.3069839477539,\"x\":-161.6680145263672},\"left\":{\"y\":-1777.1634521484376,\"z\":29.50992584228515,\"x\":-169.90586853027345}}}]','{\"description\":\"South Side is on the hunt for the ultimate Race King or Queen. Are you the chosen one to claim the crown?\", \"raceType\":\"sprint\"}','CITIZENID','ciphertv',2582,'CW-3610','{}',1),
(49,'High-Hill Hijinks','[{\"coords\":{\"z\":24.18918800354004,\"y\":-174.23878479003907,\"x\":-2058.68896484375},\"offset\":{\"left\":{\"z\":24.21828079223632,\"y\":-181.7250518798828,\"x\":-2055.868408203125},\"right\":{\"z\":24.16009521484375,\"y\":-166.7525177001953,\"x\":-2061.509521484375}}},{\"coords\":{\"z\":16.39933967590332,\"y\":-233.72691345214845,\"x\":-2134.77197265625},\"offset\":{\"left\":{\"z\":16.48214530944824,\"y\":-237.74609375,\"x\":-2127.85546875},\"right\":{\"z\":16.3165340423584,\"y\":-229.70773315429688,\"x\":-2141.6884765625}}},{\"coords\":{\"z\":12.6775951385498,\"y\":-332.6751403808594,\"x\":-2184.907958984375},\"offset\":{\"left\":{\"z\":12.87374210357666,\"y\":-341.1178283691406,\"x\":-2181.79638671875},\"right\":{\"z\":12.48144817352295,\"y\":-324.2324523925781,\"x\":-2188.01953125}}},{\"coords\":{\"z\":16.91022109985351,\"y\":-212.4425811767578,\"x\":-2464.942138671875},\"offset\":{\"left\":{\"z\":16.9064826965332,\"y\":-218.8575439453125,\"x\":-2467.74365234375},\"right\":{\"z\":16.91395950317382,\"y\":-206.02761840820313,\"x\":-2462.140625}}},{\"coords\":{\"z\":14.1447696685791,\"y\":57.62279891967773,\"x\":-2826.685791015625},\"offset\":{\"left\":{\"z\":14.14350032806396,\"y\":51.25756454467773,\"x\":-2829.598388671875},\"right\":{\"z\":14.14603900909423,\"y\":63.98803329467773,\"x\":-2823.773193359375}}},{\"coords\":{\"z\":14.85400962829589,\"y\":232.63751220703126,\"x\":-3068.1494140625},\"offset\":{\"left\":{\"z\":15.0361623764038,\"y\":226.58119201660157,\"x\":-3071.65478515625},\"right\":{\"z\":14.67185688018798,\"y\":238.69383239746098,\"x\":-3064.64404296875}}},{\"coords\":{\"z\":20.42885398864746,\"y\":745.8052978515625,\"x\":-3084.89013671875},\"offset\":{\"left\":{\"z\":20.17327499389648,\"y\":749.8613891601563,\"x\":-3090.589599609375},\"right\":{\"z\":20.68443298339844,\"y\":741.7492065429688,\"x\":-3079.190673828125}}},{\"coords\":{\"z\":16.05182647705078,\"y\":836.9495849609375,\"x\":-3123.770263671875},\"offset\":{\"left\":{\"z\":15.9230031967163,\"y\":834.4703369140625,\"x\":-3130.315185546875},\"right\":{\"z\":16.18065071105957,\"y\":839.4288330078125,\"x\":-3117.225341796875}}},{\"coords\":{\"z\":12.07406234741211,\"y\":982.0936279296875,\"x\":-3229.374755859375},\"offset\":{\"left\":{\"z\":12.17106819152832,\"y\":981.1641845703125,\"x\":-3238.326171875},\"right\":{\"z\":11.97705650329589,\"y\":983.0230712890625,\"x\":-3220.42333984375}}},{\"coords\":{\"z\":8.89853382110595,\"y\":1199.06494140625,\"x\":-3180.9599609375},\"offset\":{\"left\":{\"z\":8.96695232391357,\"y\":1199.2152099609376,\"x\":-3189.95849609375},\"right\":{\"z\":8.83011531829834,\"y\":1198.9146728515626,\"x\":-3171.96142578125}}},{\"coords\":{\"z\":19.77123260498047,\"y\":1253.911865234375,\"x\":-3109.22021484375},\"offset\":{\"left\":{\"z\":19.75432777404785,\"y\":1252.8624267578126,\"x\":-3101.289306640625},\"right\":{\"z\":19.78813743591309,\"y\":1254.9613037109376,\"x\":-3117.151123046875}}},{\"coords\":{\"z\":21.32436370849609,\"y\":1189.839111328125,\"x\":-3066.968994140625},\"offset\":{\"left\":{\"z\":21.2685604095459,\"y\":1195.16259765625,\"x\":-3069.736328125},\"right\":{\"z\":21.38016700744629,\"y\":1184.515625,\"x\":-3064.20166015625}}},{\"coords\":{\"z\":32.69803619384765,\"y\":1298.2100830078126,\"x\":-3004.870849609375},\"offset\":{\"left\":{\"z\":32.67031478881836,\"y\":1301.46435546875,\"x\":-3009.91162109375},\"right\":{\"z\":32.72575759887695,\"y\":1294.955810546875,\"x\":-2999.830078125}}},{\"coords\":{\"z\":77.6662368774414,\"y\":1335.9649658203126,\"x\":-2777.5234375},\"offset\":{\"left\":{\"z\":77.65728759765625,\"y\":1339.7662353515626,\"x\":-2782.165771484375},\"right\":{\"z\":77.67518615722656,\"y\":1332.1636962890626,\"x\":-2772.881103515625}}},{\"coords\":{\"z\":124.50038146972656,\"y\":1473.685302734375,\"x\":-2633.997314453125},\"offset\":{\"left\":{\"z\":124.55901336669922,\"y\":1475.7025146484376,\"x\":-2628.346923828125},\"right\":{\"z\":124.4417495727539,\"y\":1471.6680908203126,\"x\":-2639.647705078125}}},{\"coords\":{\"z\":162.81524658203126,\"y\":1118.884765625,\"x\":-2623.475830078125},\"offset\":{\"left\":{\"z\":162.8806610107422,\"y\":1120.389892578125,\"x\":-2617.66796875},\"right\":{\"z\":162.7498321533203,\"y\":1117.379638671875,\"x\":-2629.28369140625}}},{\"coords\":{\"z\":194.8414764404297,\"y\":1034.8189697265626,\"x\":-2422.194091796875},\"offset\":{\"left\":{\"z\":194.8628387451172,\"y\":1040.7296142578126,\"x\":-2421.16259765625},\"right\":{\"z\":194.8201141357422,\"y\":1028.9083251953126,\"x\":-2423.2255859375}}},{\"coords\":{\"z\":186.9688720703125,\"y\":995.6871948242188,\"x\":-2157.74951171875},\"offset\":{\"left\":{\"z\":187.08534240722657,\"y\":999.5621337890624,\"x\":-2153.170166015625},\"right\":{\"z\":186.85240173339845,\"y\":991.812255859375,\"x\":-2162.328857421875}}},{\"coords\":{\"z\":162.05120849609376,\"y\":822.8612670898438,\"x\":-2019.4385986328126},\"offset\":{\"left\":{\"z\":162.06826782226563,\"y\":822.1405029296875,\"x\":-2013.4820556640626},\"right\":{\"z\":162.03414916992188,\"y\":823.58203125,\"x\":-2025.3951416015626}}},{\"coords\":{\"z\":140.5968780517578,\"y\":751.1669311523438,\"x\":-1903.937255859375},\"offset\":{\"left\":{\"z\":140.6139373779297,\"y\":755.91259765625,\"x\":-1907.6085205078126},\"right\":{\"z\":140.57981872558595,\"y\":746.4212646484375,\"x\":-1900.2659912109376}}},{\"coords\":{\"z\":139.4486541748047,\"y\":797.2158203125,\"x\":-1765.43505859375},\"offset\":{\"left\":{\"z\":139.5384979248047,\"y\":792.7322387695313,\"x\":-1760.0601806640626},\"right\":{\"z\":139.3588104248047,\"y\":801.6994018554688,\"x\":-1770.8099365234376}}},{\"coords\":{\"z\":125.13976287841796,\"y\":671.649658203125,\"x\":-1922.4866943359376},\"offset\":{\"left\":{\"z\":125.07227325439452,\"y\":667.267578125,\"x\":-1917.0284423828126},\"right\":{\"z\":125.2072525024414,\"y\":676.03173828125,\"x\":-1927.9449462890626}}},{\"coords\":{\"z\":93.8378677368164,\"y\":383.4694213867187,\"x\":-1968.0806884765626},\"offset\":{\"left\":{\"z\":93.89115142822266,\"y\":384.2811584472656,\"x\":-1961.128173828125},\"right\":{\"z\":93.78458404541016,\"y\":382.6576843261719,\"x\":-1975.033203125}}},{\"coords\":{\"z\":66.98880767822266,\"y\":41.03237152099609,\"x\":-1746.31396484375},\"offset\":{\"left\":{\"z\":67.11170959472656,\"y\":55.1412239074707,\"x\":-1733.5889892578126},\"right\":{\"z\":66.86590576171875,\"y\":26.92351913452148,\"x\":-1759.0389404296876}}},{\"coords\":{\"z\":54.96126174926758,\"y\":-194.32379150390626,\"x\":-1587.6162109375},\"offset\":{\"left\":{\"z\":55.02985763549805,\"y\":-196.7978973388672,\"x\":-1581.068359375},\"right\":{\"z\":54.89266586303711,\"y\":-191.8496856689453,\"x\":-1594.1640625}}},{\"coords\":{\"z\":45.21129989624023,\"y\":-339.1641540527344,\"x\":-1760.25146484375},\"offset\":{\"left\":{\"z\":45.23727798461914,\"y\":-345.2388000488281,\"x\":-1763.7296142578126},\"right\":{\"z\":45.18532180786133,\"y\":-333.0895080566406,\"x\":-1756.7733154296876}}},{\"coords\":{\"z\":36.81180191040039,\"y\":-197.1964569091797,\"x\":-1888.3553466796876},\"offset\":{\"left\":{\"z\":36.52742767333984,\"y\":-202.4972991943359,\"x\":-1892.918212890625},\"right\":{\"z\":37.09617614746094,\"y\":-191.89561462402345,\"x\":-1883.79248046875}}}]',NULL,'CITIZENID','xdDevion',6049,'CW-9628','{}',1);
/*!40000 ALTER TABLE `race_tracks` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `racer_names`
--

DROP TABLE IF EXISTS `racer_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `racer_names` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` text NOT NULL,
  `racername` text NOT NULL,
  `lasttouched` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `races` int(11) NOT NULL DEFAULT 0,
  `wins` int(11) NOT NULL DEFAULT 0,
  `tracks` int(11) NOT NULL DEFAULT 0,
  `auth` varchar(50) DEFAULT 'racer',
  `crew` varchar(50) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `revoked` tinyint(4) DEFAULT 0,
  `ranking` int(11) DEFAULT 0,
  `active` int(11) NOT NULL DEFAULT 0,
  `crypto` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `racer_names`
--

LOCK TABLES `racer_names` WRITE;
/*!40000 ALTER TABLE `racer_names` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `racer_names` VALUES
(47,'char1:6db110927a05fd3328ad7fc4f04b2d0077166733','jaq8s0n','2025-10-27 20:21:17',0,0,0,'god','aroundtheworld','char1:6db110927a05fd3328ad7fc4f04b2d0077166733',0,0,1,101999);
/*!40000 ALTER TABLE `racer_names` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `racing_crews`
--

DROP TABLE IF EXISTS `racing_crews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `racing_crews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crew_name` text DEFAULT NULL,
  `members` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `wins` int(11) DEFAULT NULL,
  `races` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `founder_name` text DEFAULT NULL,
  `founder_citizenid` text DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  CONSTRAINT `members` CHECK (json_valid(`members`))
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `racing_crews`
--

LOCK TABLES `racing_crews` WRITE;
/*!40000 ALTER TABLE `racing_crews` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `racing_crews` VALUES
(17,'aroundtheworld','[{\"citizenID\": \"char1:6db110927a05fd3328ad7fc4f04b2d0077166733\", \"racername\": \"jaq8s0n\", \"rank\": 0}]',0,0,0,'jaq8s0n','char1:6db110927a05fd3328ad7fc4f04b2d0077166733');
/*!40000 ALTER TABLE `racing_crews` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `racing_races`
--

DROP TABLE IF EXISTS `racing_races`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `racing_races` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `raceId` varchar(255) NOT NULL,
  `trackId` varchar(255) NOT NULL,
  `results` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`results`)),
  `amountOfRacers` int(11) NOT NULL,
  `laps` int(11) NOT NULL,
  `hostName` varchar(255) DEFAULT NULL,
  `maxClass` varchar(50) DEFAULT NULL,
  `ghosting` tinyint(1) NOT NULL DEFAULT 0,
  `ranked` tinyint(1) NOT NULL DEFAULT 0,
  `reversed` tinyint(1) NOT NULL DEFAULT 0,
  `firstPerson` tinyint(1) NOT NULL DEFAULT 0,
  `automated` tinyint(1) NOT NULL DEFAULT 0,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `silent` tinyint(1) NOT NULL DEFAULT 0,
  `buyIn` int(11) NOT NULL DEFAULT 0,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_raceId` (`raceId`),
  KEY `idx_trackId` (`trackId`),
  KEY `idx_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `racing_races`
--

LOCK TABLES `racing_races` WRITE;
/*!40000 ALTER TABLE `racing_races` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `racing_races` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `real_vehicleshop`
--

DROP TABLE IF EXISTS `real_vehicleshop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `real_vehicleshop` (
  `id` int(11) DEFAULT NULL,
  `information` longtext DEFAULT NULL,
  `vehicles` longtext DEFAULT NULL,
  `categories` longtext DEFAULT NULL,
  `feedbacks` longtext DEFAULT NULL,
  `complaints` longtext DEFAULT NULL,
  `preorders` longtext DEFAULT NULL,
  `employees` longtext DEFAULT NULL,
  `soldvehicles` longtext DEFAULT NULL,
  `transactions` longtext DEFAULT NULL,
  `perms` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `real_vehicleshop`
--

LOCK TABLES `real_vehicleshop` WRITE;
/*!40000 ALTER TABLE `real_vehicleshop` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `real_vehicleshop` VALUES
(1,'{\"Owner\":\"\",\"Discount\":0,\"Rating\":0,\"Money\":10000,\"Name\":\"Real Cardealer\"}','[{\"name\":\"t20\",\"model\":\"Custom\",\"stock\":1,\"information\":{\"Braking\":100,\"TopSpeed\":273,\"Acceleration\":89,\"Suspension\":100,\"Handling\":89},\"label\":\"T20\",\"discount\":0,\"category\":\"sports\",\"price\":150000,\"img\":\"https://docs.fivem.net/vehicles/t20.webp\"},{\"name\":\"sultanrs\",\"model\":\"\",\"stock\":1,\"information\":{\"Braking\":100,\"TopSpeed\":273,\"Acceleration\":89,\"Suspension\":100,\"Handling\":89},\"label\":\"Sultan RS\",\"discount\":0,\"category\":\"sedans\",\"price\":50000,\"img\":\"https://docs.fivem.net/vehicles/sultanrs.webp\"}]','[{\"name\":\"all\",\"label\":\"All\"},{\"name\":\"sports\",\"label\":\"Sports\"},{\"name\":\"sedans\",\"label\":\"Sedans\"},{\"name\":\"muscle\",\"label\":\"Muscles\"},{\"name\":\"super\",\"label\":\"Supers\"}]','[]','[]','[]','[]','[]','[]','[{\"permissions\":[{\"value\":true,\"description\":\"The player can, for example, change the company name and other management actions like perm create.\",\"name\":\"administration\",\"label\":\"Administration\"},{\"value\":true,\"description\":\"Player can withdraw and deposit money.\",\"name\":\"withdrawdeposit\",\"label\":\"Withdraw & Deposit\"},{\"value\":true,\"description\":\"Player can accept/reject preorder request.\",\"name\":\"preorder\",\"label\":\"Preorder\"},{\"value\":true,\"description\":\"Player can start discount campaign.\",\"name\":\"discount\",\"label\":\"Discount\"},{\"value\":true,\"description\":\"Player can remove all log data.\",\"name\":\"removelog\",\"label\":\"Remove Log\"},{\"value\":true,\"description\":\"Player can give bonus to other staff members.\",\"name\":\"bonus\",\"label\":\"Bonus\"},{\"value\":true,\"description\":\"Player can bring a raise.\",\"name\":\"raise\",\"label\":\"Raise\"},{\"value\":true,\"description\":\"Player can fire staff members.\",\"name\":\"fire\",\"label\":\"Fire Employees\"},{\"value\":true,\"description\":\"Player can demote and promote employees.\",\"name\":\"rankchange\",\"label\":\"Edit Staff Rank\"},{\"value\":true,\"description\":\"Player can hire staff members.\",\"name\":\"hire\",\"label\":\"Hire Staff\"},{\"value\":true,\"description\":\"Player can give penalty to other staff members.\",\"name\":\"penalty\",\"label\":\"Give Penalty\"},{\"value\":true,\"description\":\"Player can add, remove and edit categories.\",\"name\":\"category\",\"label\":\"Edit/Remove/Add Category\"},{\"value\":true,\"description\":\"Player can buy vehicle stock.\",\"name\":\"buyvehicle\",\"label\":\"Buy Vehicle Stock\"},{\"value\":true,\"description\":\"Player can edit vehicle category, price, give discount etc.\",\"name\":\"editvehicle\",\"label\":\"Edit Vehicles\"},{\"value\":true,\"description\":\"Player can remove feedbacks.\",\"name\":\"removefeedback\",\"label\":\"Remove Feedbacks\"},{\"value\":true,\"description\":\"Player can remove complaints.\",\"name\":\"removecomplaints\",\"label\":\"Remove Complaints\"}],\"name\":\"owner\",\"label\":\"Owner\",\"removable\":false,\"editable\":false}]'),
(2,'{\"Owner\":\"\",\"Discount\":0,\"Rating\":0,\"Money\":10000,\"Name\":\"Real Boatshop\"}','[{\"name\":\"seashark2\",\"model\":\"Normal\",\"stock\":1,\"information\":{\"Braking\":100,\"TopSpeed\":273,\"Acceleration\":89,\"Suspension\":100,\"Handling\":89},\"label\":\"Seashark2\",\"discount\":0,\"category\":\"all\",\"price\":15000,\"img\":\"https://docs.fivem.net/vehicles/seashark2.webp\"},{\"name\":\"seashark3\",\"model\":\"Turbo\",\"stock\":1,\"information\":{\"Braking\":100,\"TopSpeed\":273,\"Acceleration\":89,\"Suspension\":100,\"Handling\":89},\"label\":\"Seashark3\",\"discount\":0,\"category\":\"all\",\"price\":50000,\"img\":\"https://docs.fivem.net/vehicles/seashark3.webp\"}]','[{\"name\":\"all\",\"label\":\"All\"}]','[]','[]','[]','[]','[]','[]','[{\"permissions\":[{\"value\":true,\"description\":\"The player can, for example, change the company name and other management actions like perm create.\",\"name\":\"administration\",\"label\":\"Administration\"},{\"value\":true,\"description\":\"Player can withdraw and deposit money.\",\"name\":\"withdrawdeposit\",\"label\":\"Withdraw & Deposit\"},{\"value\":true,\"description\":\"Player can accept/reject preorder request.\",\"name\":\"preorder\",\"label\":\"Preorder\"},{\"value\":true,\"description\":\"Player can start discount campaign.\",\"name\":\"discount\",\"label\":\"Discount\"},{\"value\":true,\"description\":\"Player can remove all log data.\",\"name\":\"removelog\",\"label\":\"Remove Log\"},{\"value\":true,\"description\":\"Player can give bonus to other staff members.\",\"name\":\"bonus\",\"label\":\"Bonus\"},{\"value\":true,\"description\":\"Player can bring a raise.\",\"name\":\"raise\",\"label\":\"Raise\"},{\"value\":true,\"description\":\"Player can fire staff members.\",\"name\":\"fire\",\"label\":\"Fire Employees\"},{\"value\":true,\"description\":\"Player can demote and promote employees.\",\"name\":\"rankchange\",\"label\":\"Edit Staff Rank\"},{\"value\":true,\"description\":\"Player can hire staff members.\",\"name\":\"hire\",\"label\":\"Hire Staff\"},{\"value\":true,\"description\":\"Player can give penalty to other staff members.\",\"name\":\"penalty\",\"label\":\"Give Penalty\"},{\"value\":true,\"description\":\"Player can add, remove and edit categories.\",\"name\":\"category\",\"label\":\"Edit/Remove/Add Category\"},{\"value\":true,\"description\":\"Player can buy vehicle stock.\",\"name\":\"buyvehicle\",\"label\":\"Buy Vehicle Stock\"},{\"value\":true,\"description\":\"Player can edit vehicle category, price, give discount etc.\",\"name\":\"editvehicle\",\"label\":\"Edit Vehicles\"},{\"value\":true,\"description\":\"Player can remove feedbacks.\",\"name\":\"removefeedback\",\"label\":\"Remove Feedbacks\"},{\"value\":true,\"description\":\"Player can remove complaints.\",\"name\":\"removecomplaints\",\"label\":\"Remove Complaints\"}],\"name\":\"owner\",\"label\":\"Owner\",\"removable\":false,\"editable\":false}]'),
(3,'{\"Owner\":\"\",\"Discount\":0,\"Rating\":0,\"Money\":10000,\"Name\":\"Real Aircraft\"}','[{\"name\":\"volatus\",\"model\":\"Luxury Helicopter\",\"stock\":1,\"information\":{\"Braking\":100,\"TopSpeed\":273,\"Acceleration\":89,\"Suspension\":100,\"Handling\":89},\"label\":\"Volatus\",\"discount\":0,\"category\":\"helicopter\",\"price\":50000,\"img\":\"https://docs.fivem.net/vehicles/volatus.webp\"},{\"name\":\"buzzard\",\"model\":\"Combat Helicopter\",\"stock\":1,\"information\":{\"Braking\":95,\"TopSpeed\":250,\"Acceleration\":90,\"Suspension\":95,\"Handling\":90},\"label\":\"Buzzard\",\"discount\":0,\"category\":\"helicopter\",\"price\":750000,\"img\":\"https://docs.fivem.net/vehicles/buzzard.webp\"}]','[{\"name\":\"all\",\"label\":\"All\"},{\"name\":\"helicopter\",\"label\":\"Helicopter\"},{\"name\":\"plane\",\"label\":\"Plane\"}]','[]','[]','[]','[]','[]','[]','[{\"permissions\":[{\"value\":true,\"description\":\"The player can, for example, change the company name and other management actions like perm create.\",\"name\":\"administration\",\"label\":\"Administration\"},{\"value\":true,\"description\":\"Player can withdraw and deposit money.\",\"name\":\"withdrawdeposit\",\"label\":\"Withdraw & Deposit\"},{\"value\":true,\"description\":\"Player can accept/reject preorder request.\",\"name\":\"preorder\",\"label\":\"Preorder\"},{\"value\":true,\"description\":\"Player can start discount campaign.\",\"name\":\"discount\",\"label\":\"Discount\"},{\"value\":true,\"description\":\"Player can remove all log data.\",\"name\":\"removelog\",\"label\":\"Remove Log\"},{\"value\":true,\"description\":\"Player can give bonus to other staff members.\",\"name\":\"bonus\",\"label\":\"Bonus\"},{\"value\":true,\"description\":\"Player can bring a raise.\",\"name\":\"raise\",\"label\":\"Raise\"},{\"value\":true,\"description\":\"Player can fire staff members.\",\"name\":\"fire\",\"label\":\"Fire Employees\"},{\"value\":true,\"description\":\"Player can demote and promote employees.\",\"name\":\"rankchange\",\"label\":\"Edit Staff Rank\"},{\"value\":true,\"description\":\"Player can hire staff members.\",\"name\":\"hire\",\"label\":\"Hire Staff\"},{\"value\":true,\"description\":\"Player can give penalty to other staff members.\",\"name\":\"penalty\",\"label\":\"Give Penalty\"},{\"value\":true,\"description\":\"Player can add, remove and edit categories.\",\"name\":\"category\",\"label\":\"Edit/Remove/Add Category\"},{\"value\":true,\"description\":\"Player can buy vehicle stock.\",\"name\":\"buyvehicle\",\"label\":\"Buy Vehicle Stock\"},{\"value\":true,\"description\":\"Player can edit vehicle category, price, give discount etc.\",\"name\":\"editvehicle\",\"label\":\"Edit Vehicles\"},{\"value\":true,\"description\":\"Player can remove feedbacks.\",\"name\":\"removefeedback\",\"label\":\"Remove Feedbacks\"},{\"value\":true,\"description\":\"Player can remove complaints.\",\"name\":\"removecomplaints\",\"label\":\"Remove Complaints\"}],\"name\":\"owner\",\"label\":\"Owner\",\"removable\":false,\"editable\":false}]');
/*!40000 ALTER TABLE `real_vehicleshop` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `rented_vehicles`
--

DROP TABLE IF EXISTS `rented_vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(46) DEFAULT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rented_vehicles`
--

LOCK TABLES `rented_vehicles` WRITE;
/*!40000 ALTER TABLE `rented_vehicles` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `rented_vehicles` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `society_moneywash`
--

DROP TABLE IF EXISTS `society_moneywash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(46) DEFAULT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `society_moneywash`
--

LOCK TABLES `society_moneywash` WRITE;
/*!40000 ALTER TABLE `society_moneywash` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `society_moneywash` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `track_times`
--

DROP TABLE IF EXISTS `track_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `track_times` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trackId` varchar(255) NOT NULL,
  `racerName` varchar(255) NOT NULL,
  `carClass` varchar(50) NOT NULL,
  `vehicleModel` varchar(255) NOT NULL,
  `raceType` varchar(50) NOT NULL,
  `time` int(11) NOT NULL,
  `reversed` tinyint(1) NOT NULL DEFAULT 0,
  `pbHistory` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`pbHistory`)),
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_trackId` (`trackId`),
  KEY `idx_racerName` (`racerName`),
  KEY `idx_track_racer_class` (`trackId`,`racerName`,`carClass`,`raceType`,`reversed`),
  KEY `idx_time` (`time`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `track_times`
--

LOCK TABLES `track_times` WRITE;
/*!40000 ALTER TABLE `track_times` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `track_times` VALUES
(1,'CW-4925','jaq8s0n','B','RETINUE','Circuit',144966,0,'[144966]','2025-11-14 03:37:08');
/*!40000 ALTER TABLE `track_times` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `user_licenses`
--

DROP TABLE IF EXISTS `user_licenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) NOT NULL,
  `owner` varchar(46) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_licenses`
--

LOCK TABLES `user_licenses` WRITE;
/*!40000 ALTER TABLE `user_licenses` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `user_licenses` VALUES
(1,'dmv','char1:6db110927a05fd3328ad7fc4f04b2d0077166733'),
(2,'drive','char1:6db110927a05fd3328ad7fc4f04b2d0077166733');
/*!40000 ALTER TABLE `user_licenses` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `identifier` varchar(46) NOT NULL,
  `ssn` varchar(11) NOT NULL,
  `accounts` longtext DEFAULT NULL,
  `group` varchar(50) DEFAULT 'user',
  `inventory` longtext DEFAULT NULL,
  `job` varchar(20) DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext DEFAULT NULL,
  `metadata` longtext DEFAULT NULL,
  `position` longtext DEFAULT NULL,
  `firstname` varchar(16) DEFAULT NULL,
  `lastname` varchar(16) DEFAULT NULL,
  `dateofbirth` varchar(10) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `skin` longtext DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `disabled` tinyint(1) DEFAULT 0,
  `last_property` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `last_seen` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `phone_number` varchar(20) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `playtime` int(11) DEFAULT 0,
  `inside` varchar(50) DEFAULT '',
  PRIMARY KEY (`identifier`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `unique_ssn` (`ssn`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `users` VALUES
('6db110927a05fd3328ad7fc4f04b2d0077166733','725-12-9879','{\"bank\":50000}','admin',NULL,'unemployed',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[]',0,4,0,NULL,'2025-10-24 01:19:44','2025-10-24 01:22:01',NULL,NULL,0,''),
('char1:6db110927a05fd3328ad7fc4f04b2d0077166733','503-82-9712','{\"bank\":48833200,\"money\":1000,\"black_money\":0}','admin','{\"racing_gps\":1}','unemployed',0,'[]','{\"lastPlaytime\":80323,\"jobDuty\":false,\"armor\":0,\"health\":155}','{\"z\":30.4256591796875,\"heading\":133.2283477783203,\"x\":-210.39559936523438,\"y\":-1325.90771484375}','Jacob','Blunt','21/06/1979','m',182,'{\"components\":[{\"texture\":0,\"component_id\":0,\"drawable\":0},{\"texture\":0,\"component_id\":2,\"drawable\":0},{\"texture\":0,\"component_id\":3,\"drawable\":0},{\"texture\":0,\"component_id\":4,\"drawable\":25},{\"texture\":0,\"component_id\":5,\"drawable\":0},{\"texture\":0,\"component_id\":7,\"drawable\":0},{\"texture\":0,\"component_id\":9,\"drawable\":0},{\"texture\":0,\"component_id\":10,\"drawable\":0},{\"texture\":0,\"component_id\":1,\"drawable\":15},{\"texture\":0,\"component_id\":11,\"drawable\":142},{\"texture\":0,\"component_id\":8,\"drawable\":21},{\"texture\":0,\"component_id\":6,\"drawable\":1}],\"eyeColor\":-1,\"faceFeatures\":{\"chinBoneSize\":0,\"chinHole\":0,\"noseWidth\":0,\"eyesOpening\":0,\"noseBoneTwist\":0,\"cheeksBoneWidth\":0,\"jawBoneWidth\":0,\"noseBoneHigh\":0,\"chinBoneLowering\":0,\"neckThickness\":0,\"nosePeakLowering\":0,\"nosePeakSize\":0,\"eyeBrownHigh\":0,\"eyeBrownForward\":0,\"jawBoneBackSize\":0,\"cheeksBoneHigh\":0,\"cheeksWidth\":0,\"nosePeakHigh\":0,\"chinBoneLenght\":0,\"lipsThickness\":0},\"props\":[{\"texture\":-1,\"prop_id\":0,\"drawable\":-1},{\"texture\":-1,\"prop_id\":1,\"drawable\":-1},{\"texture\":-1,\"prop_id\":2,\"drawable\":-1},{\"texture\":-1,\"prop_id\":6,\"drawable\":-1},{\"texture\":-1,\"prop_id\":7,\"drawable\":-1}],\"tattoos\":[],\"headOverlays\":{\"lipstick\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":0},\"blemishes\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":0},\"complexion\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":0},\"sunDamage\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":0},\"eyebrows\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":0},\"blush\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":0},\"chestHair\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":0},\"beard\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":0},\"ageing\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":0},\"makeUp\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":0},\"bodyBlemishes\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":0},\"moleAndFreckles\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":0}},\"headBlend\":{\"skinSecond\":0,\"skinMix\":0,\"thirdMix\":0,\"shapeMix\":0,\"skinFirst\":0,\"shapeThird\":0,\"skinThird\":0,\"shapeSecond\":0,\"shapeFirst\":0},\"model\":\"mp_m_freemode_01\",\"hair\":{\"color\":0,\"style\":0,\"texture\":0,\"highlight\":0}}','[{\"name\":\"drunk\",\"val\":0,\"percent\":0.0},{\"name\":\"hunger\",\"val\":8400,\"percent\":0.84},{\"name\":\"thirst\",\"val\":131300,\"percent\":13.13}]',1,3,0,NULL,'2025-10-09 00:22:57','2025-12-20 21:20:36',NULL,4041,23580,''),
('char1:c63b583a0adbd3cfca2ca710fa544f9c72e75b1f','269-50-7565','{\"money\":0,\"black_money\":0,\"bank\":953400}','user','[]','unemployed',0,'[]','{\"health\":200,\"lastPlaytime\":7933,\"armor\":0,\"jobDuty\":false}','{\"heading\":102.04724884033203,\"z\":29.3472900390625,\"y\":-1000.2197875976563,\"x\":414.18463134765627}','Jan','Spocony','10/09/2005','m',177,'{\"model\":\"mp_m_freemode_01\",\"headOverlays\":{\"complexion\":{\"secondColor\":0,\"style\":0,\"color\":0,\"opacity\":0},\"eyebrows\":{\"secondColor\":0,\"style\":0,\"color\":0,\"opacity\":0},\"beard\":{\"secondColor\":0,\"style\":0,\"color\":0,\"opacity\":0},\"moleAndFreckles\":{\"secondColor\":0,\"style\":0,\"color\":0,\"opacity\":0},\"blemishes\":{\"secondColor\":0,\"style\":0,\"color\":0,\"opacity\":0},\"ageing\":{\"secondColor\":0,\"style\":0,\"color\":0,\"opacity\":0},\"bodyBlemishes\":{\"secondColor\":0,\"style\":0,\"color\":0,\"opacity\":0},\"makeUp\":{\"secondColor\":0,\"style\":0,\"color\":0,\"opacity\":0},\"chestHair\":{\"secondColor\":0,\"style\":0,\"color\":0,\"opacity\":0},\"blush\":{\"secondColor\":0,\"style\":0,\"color\":0,\"opacity\":0},\"lipstick\":{\"secondColor\":0,\"style\":0,\"color\":0,\"opacity\":0},\"sunDamage\":{\"secondColor\":0,\"style\":0,\"color\":0,\"opacity\":0}},\"hair\":{\"highlight\":0,\"style\":0,\"color\":0,\"texture\":0},\"headBlend\":{\"shapeMix\":0.5,\"shapeSecond\":12,\"skinThird\":0,\"shapeFirst\":37,\"skinSecond\":0,\"skinMix\":0,\"skinFirst\":0,\"shapeThird\":0,\"thirdMix\":0},\"components\":[{\"component_id\":0,\"drawable\":0,\"texture\":0},{\"component_id\":1,\"drawable\":0,\"texture\":0},{\"component_id\":2,\"drawable\":0,\"texture\":0},{\"component_id\":3,\"drawable\":0,\"texture\":0},{\"component_id\":4,\"drawable\":0,\"texture\":0},{\"component_id\":5,\"drawable\":0,\"texture\":0},{\"component_id\":6,\"drawable\":0,\"texture\":0},{\"component_id\":7,\"drawable\":0,\"texture\":0},{\"component_id\":8,\"drawable\":0,\"texture\":0},{\"component_id\":9,\"drawable\":0,\"texture\":0},{\"component_id\":10,\"drawable\":0,\"texture\":0},{\"component_id\":11,\"drawable\":0,\"texture\":0}],\"tattoos\":[],\"faceFeatures\":{\"chinBoneLenght\":0,\"eyeBrownForward\":0,\"noseBoneTwist\":0,\"noseBoneHigh\":0,\"cheeksWidth\":0,\"jawBoneWidth\":0,\"nosePeakHigh\":0,\"chinHole\":0,\"chinBoneSize\":0,\"jawBoneBackSize\":0,\"cheeksBoneWidth\":0,\"neckThickness\":0,\"eyeBrownHigh\":0,\"nosePeakLowering\":0,\"noseWidth\":0,\"lipsThickness\":0,\"nosePeakSize\":0,\"cheeksBoneHigh\":0,\"eyesOpening\":0,\"chinBoneLowering\":0},\"props\":[{\"texture\":-1,\"prop_id\":0,\"drawable\":-1},{\"texture\":-1,\"prop_id\":1,\"drawable\":-1},{\"texture\":-1,\"prop_id\":2,\"drawable\":-1},{\"texture\":-1,\"prop_id\":6,\"drawable\":-1},{\"texture\":-1,\"prop_id\":7,\"drawable\":-1}],\"eyeColor\":-1}','[{\"val\":0,\"percent\":0.0,\"name\":\"drunk\"},{\"val\":488160,\"percent\":48.81599999999999,\"name\":\"hunger\"},{\"val\":491120,\"percent\":49.112,\"name\":\"thirst\"}]',0,5,0,NULL,'2025-10-24 23:02:54','2025-11-05 00:19:13',NULL,NULL,1560,'');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `vehicle_categories`
--

DROP TABLE IF EXISTS `vehicle_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_categories`
--

LOCK TABLES `vehicle_categories` WRITE;
/*!40000 ALTER TABLE `vehicle_categories` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `vehicle_categories` VALUES
('compacts','Compacts'),
('coupes','Coupés'),
('motorcycles','Motos'),
('muscle','Muscle'),
('offroad','Off Road'),
('sedans','Sedans'),
('sports','Sports'),
('sportsclassics','Sports Classics'),
('super','Super'),
('suvs','SUVs'),
('vans','Vans');
/*!40000 ALTER TABLE `vehicle_categories` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `vehicle_sold`
--

DROP TABLE IF EXISTS `vehicle_sold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_sold` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_sold`
--

LOCK TABLES `vehicle_sold` WRITE;
/*!40000 ALTER TABLE `vehicle_sold` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `vehicle_sold` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `vehicles` VALUES
('Adder','adder',900000,'super'),
('Akuma','AKUMA',7500,'motorcycles'),
('Alpha','alpha',60000,'sports'),
('Ardent','ardent',1150000,'sportsclassics'),
('Asea','asea',5500,'sedans'),
('Autarch','autarch',1955000,'super'),
('Avarus','avarus',18000,'motorcycles'),
('Bagger','bagger',13500,'motorcycles'),
('Baller','baller2',40000,'suvs'),
('Baller Sport','baller3',60000,'suvs'),
('Banshee','banshee',70000,'sports'),
('Banshee 900R','banshee2',255000,'super'),
('Bati 801','bati',12000,'motorcycles'),
('Bati 801RR','bati2',19000,'motorcycles'),
('Bestia GTS','bestiagts',55000,'sports'),
('BF400','bf400',6500,'motorcycles'),
('Bf Injection','bfinjection',16000,'offroad'),
('Bifta','bifta',12000,'offroad'),
('Bison','bison',45000,'vans'),
('Blade','blade',15000,'muscle'),
('Blazer','blazer',6500,'offroad'),
('Blazer Sport','blazer4',8500,'offroad'),
('blazer5','blazer5',1755600,'offroad'),
('Blista','blista',8000,'compacts'),
('BMX (velo)','bmx',160,'motorcycles'),
('Bobcat XL','bobcatxl',32000,'vans'),
('Brawler','brawler',45000,'offroad'),
('Brioso R/A','brioso',18000,'compacts'),
('Btype','btype',62000,'sportsclassics'),
('Btype Hotroad','btype2',155000,'sportsclassics'),
('Btype Luxe','btype3',85000,'sportsclassics'),
('Buccaneer','buccaneer',18000,'muscle'),
('Buccaneer Rider','buccaneer2',24000,'muscle'),
('Buffalo','buffalo',12000,'sports'),
('Buffalo S','buffalo2',20000,'sports'),
('Bullet','bullet',90000,'super'),
('Burrito','burrito3',19000,'vans'),
('Camper','camper',42000,'vans'),
('Carbonizzare','carbonizzare',75000,'sports'),
('Carbon RS','carbonrs',18000,'motorcycles'),
('Casco','casco',30000,'sportsclassics'),
('Cavalcade','cavalcade2',55000,'suvs'),
('Cheetah','cheetah',375000,'super'),
('Chimera','chimera',38000,'motorcycles'),
('Chino','chino',15000,'muscle'),
('Chino Luxe','chino2',19000,'muscle'),
('Cliffhanger','cliffhanger',9500,'motorcycles'),
('Cognoscenti Cabrio','cogcabrio',55000,'coupes'),
('Cognoscenti','cognoscenti',55000,'sedans'),
('Comet','comet2',65000,'sports'),
('Comet SR','comet5',1145000,'sports'),
('Contender','contender',70000,'suvs'),
('Coquette','coquette',65000,'sports'),
('Coquette Classic','coquette2',40000,'sportsclassics'),
('Coquette BlackFin','coquette3',55000,'muscle'),
('Cruiser (velo)','cruiser',510,'motorcycles'),
('Cyclone','cyclone',1890000,'super'),
('Daemon','daemon',11500,'motorcycles'),
('Daemon High','daemon2',13500,'motorcycles'),
('Defiler','defiler',9800,'motorcycles'),
('Deluxo','deluxo',4721500,'sportsclassics'),
('Dominator','dominator',35000,'muscle'),
('Double T','double',28000,'motorcycles'),
('Dubsta','dubsta',45000,'suvs'),
('Dubsta Luxuary','dubsta2',60000,'suvs'),
('Bubsta 6x6','dubsta3',120000,'offroad'),
('Dukes','dukes',28000,'muscle'),
('Dune Buggy','dune',8000,'offroad'),
('Elegy','elegy2',38500,'sports'),
('Emperor','emperor',8500,'sedans'),
('Enduro','enduro',5500,'motorcycles'),
('Entity XF','entityxf',425000,'super'),
('Esskey','esskey',4200,'motorcycles'),
('Exemplar','exemplar',32000,'coupes'),
('F620','f620',40000,'coupes'),
('Faction','faction',20000,'muscle'),
('Faction Rider','faction2',30000,'muscle'),
('Faction XL','faction3',40000,'muscle'),
('Faggio','faggio',1900,'motorcycles'),
('Vespa','faggio2',2800,'motorcycles'),
('Felon','felon',42000,'coupes'),
('Felon GT','felon2',55000,'coupes'),
('Feltzer','feltzer2',55000,'sports'),
('Stirling GT','feltzer3',65000,'sportsclassics'),
('Fixter (velo)','fixter',225,'motorcycles'),
('FMJ','fmj',185000,'super'),
('Fhantom','fq2',17000,'suvs'),
('Fugitive','fugitive',12000,'sedans'),
('Furore GT','furoregt',45000,'sports'),
('Fusilade','fusilade',40000,'sports'),
('Gargoyle','gargoyle',16500,'motorcycles'),
('Gauntlet','gauntlet',30000,'muscle'),
('Gang Burrito','gburrito',45000,'vans'),
('Burrito','gburrito2',29000,'vans'),
('Glendale','glendale',6500,'sedans'),
('Grabger','granger',50000,'suvs'),
('Gresley','gresley',47500,'suvs'),
('GT 500','gt500',785000,'sportsclassics'),
('Guardian','guardian',45000,'offroad'),
('Hakuchou','hakuchou',31000,'motorcycles'),
('Hakuchou Sport','hakuchou2',55000,'motorcycles'),
('Hermes','hermes',535000,'muscle'),
('Hexer','hexer',12000,'motorcycles'),
('Hotknife','hotknife',125000,'muscle'),
('Huntley S','huntley',40000,'suvs'),
('Hustler','hustler',625000,'muscle'),
('Infernus','infernus',180000,'super'),
('Innovation','innovation',23500,'motorcycles'),
('Intruder','intruder',7500,'sedans'),
('Issi','issi2',10000,'compacts'),
('Jackal','jackal',38000,'coupes'),
('Jester','jester',65000,'sports'),
('Jester(Racecar)','jester2',135000,'sports'),
('Journey','journey',6500,'vans'),
('Kamacho','kamacho',345000,'offroad'),
('Khamelion','khamelion',38000,'sports'),
('Kuruma','kuruma',30000,'sports'),
('Landstalker','landstalker',35000,'suvs'),
('RE-7B','le7b',325000,'super'),
('Lynx','lynx',40000,'sports'),
('Mamba','mamba',70000,'sports'),
('Manana','manana',12800,'sportsclassics'),
('Manchez','manchez',5300,'motorcycles'),
('Massacro','massacro',65000,'sports'),
('Massacro(Racecar)','massacro2',130000,'sports'),
('Mesa','mesa',16000,'suvs'),
('Mesa Trail','mesa3',40000,'suvs'),
('Minivan','minivan',13000,'vans'),
('Monroe','monroe',55000,'sportsclassics'),
('The Liberator','monster',210000,'offroad'),
('Moonbeam','moonbeam',18000,'vans'),
('Moonbeam Rider','moonbeam2',35000,'vans'),
('Nemesis','nemesis',5800,'motorcycles'),
('Neon','neon',1500000,'sports'),
('Nightblade','nightblade',35000,'motorcycles'),
('Nightshade','nightshade',65000,'muscle'),
('9F','ninef',65000,'sports'),
('9F Cabrio','ninef2',80000,'sports'),
('Omnis','omnis',35000,'sports'),
('Oppressor','oppressor',3524500,'super'),
('Oracle XS','oracle2',35000,'coupes'),
('Osiris','osiris',160000,'super'),
('Panto','panto',10000,'compacts'),
('Paradise','paradise',19000,'vans'),
('Pariah','pariah',1420000,'sports'),
('Patriot','patriot',55000,'suvs'),
('PCJ-600','pcj',6200,'motorcycles'),
('Penumbra','penumbra',28000,'sports'),
('Pfister','pfister811',85000,'super'),
('Phoenix','phoenix',12500,'muscle'),
('Picador','picador',18000,'muscle'),
('Pigalle','pigalle',20000,'sportsclassics'),
('Prairie','prairie',12000,'compacts'),
('Premier','premier',8000,'sedans'),
('Primo Custom','primo2',14000,'sedans'),
('X80 Proto','prototipo',2500000,'super'),
('Radius','radi',29000,'suvs'),
('raiden','raiden',1375000,'sports'),
('Rapid GT','rapidgt',35000,'sports'),
('Rapid GT Convertible','rapidgt2',45000,'sports'),
('Rapid GT3','rapidgt3',885000,'sportsclassics'),
('Reaper','reaper',150000,'super'),
('Rebel','rebel2',35000,'offroad'),
('Regina','regina',5000,'sedans'),
('Retinue','retinue',615000,'sportsclassics'),
('Revolter','revolter',1610000,'sports'),
('riata','riata',380000,'offroad'),
('Rocoto','rocoto',45000,'suvs'),
('Ruffian','ruffian',6800,'motorcycles'),
('Ruiner 2','ruiner2',5745600,'muscle'),
('Rumpo','rumpo',15000,'vans'),
('Rumpo Trail','rumpo3',19500,'vans'),
('Sabre Turbo','sabregt',20000,'muscle'),
('Sabre GT','sabregt2',25000,'muscle'),
('Sanchez','sanchez',5300,'motorcycles'),
('Sanchez Sport','sanchez2',5300,'motorcycles'),
('Sanctus','sanctus',25000,'motorcycles'),
('Sandking','sandking',55000,'offroad'),
('Savestra','savestra',990000,'sportsclassics'),
('SC 1','sc1',1603000,'super'),
('Schafter','schafter2',25000,'sedans'),
('Schafter V12','schafter3',50000,'sports'),
('Scorcher (velo)','scorcher',280,'motorcycles'),
('Seminole','seminole',25000,'suvs'),
('Sentinel','sentinel',32000,'coupes'),
('Sentinel XS','sentinel2',40000,'coupes'),
('Sentinel3','sentinel3',650000,'sports'),
('Seven 70','seven70',39500,'sports'),
('ETR1','sheava',220000,'super'),
('Shotaro Concept','shotaro',320000,'motorcycles'),
('Slam Van','slamvan3',11500,'muscle'),
('Sovereign','sovereign',22000,'motorcycles'),
('Stinger','stinger',80000,'sportsclassics'),
('Stinger GT','stingergt',75000,'sportsclassics'),
('Streiter','streiter',500000,'sports'),
('Stretch','stretch',90000,'sedans'),
('Stromberg','stromberg',3185350,'sports'),
('Sultan','sultan',15000,'sports'),
('Sultan RS','sultanrs',65000,'super'),
('Super Diamond','superd',130000,'sedans'),
('Surano','surano',50000,'sports'),
('Surfer','surfer',12000,'vans'),
('T20','t20',300000,'super'),
('Tailgater','tailgater',30000,'sedans'),
('Tampa','tampa',16000,'muscle'),
('Drift Tampa','tampa2',80000,'sports'),
('Thrust','thrust',24000,'motorcycles'),
('Tri bike (velo)','tribike3',520,'motorcycles'),
('Trophy Truck','trophytruck',60000,'offroad'),
('Trophy Truck Limited','trophytruck2',80000,'offroad'),
('Tropos','tropos',40000,'sports'),
('Turismo R','turismor',350000,'super'),
('Tyrus','tyrus',600000,'super'),
('Vacca','vacca',120000,'super'),
('Vader','vader',7200,'motorcycles'),
('Verlierer','verlierer2',70000,'sports'),
('Vigero','vigero',12500,'muscle'),
('Virgo','virgo',14000,'muscle'),
('Viseris','viseris',875000,'sportsclassics'),
('Visione','visione',2250000,'super'),
('Voltic','voltic',90000,'super'),
('Voltic 2','voltic2',3830400,'super'),
('Voodoo','voodoo',7200,'muscle'),
('Vortex','vortex',9800,'motorcycles'),
('Warrener','warrener',4000,'sedans'),
('Washington','washington',9000,'sedans'),
('Windsor','windsor',95000,'coupes'),
('Windsor Drop','windsor2',125000,'coupes'),
('Woflsbane','wolfsbane',9000,'motorcycles'),
('XLS','xls',32000,'suvs'),
('Yosemite','yosemite',485000,'muscle'),
('Youga','youga',10800,'vans'),
('Youga Luxuary','youga2',14500,'vans'),
('Z190','z190',900000,'sportsclassics'),
('Zentorno','zentorno',1500000,'super'),
('Zion','zion',36000,'coupes'),
('Zion Cabrio','zion2',45000,'coupes'),
('Zombie','zombiea',9500,'motorcycles'),
('Zombie Luxuary','zombieb',12000,'motorcycles'),
('Z-Type','ztype',220000,'sportsclassics');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `whitelist`
--

DROP TABLE IF EXISTS `whitelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `whitelist` (
  `identifier` varchar(46) NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `whitelist`
--

LOCK TABLES `whitelist` WRITE;
/*!40000 ALTER TABLE `whitelist` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `whitelist` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-01-15 18:35:10
