-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: uberotel
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `amenity`
--

DROP TABLE IF EXISTS `amenity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `amenity` (
  `amenity_id` int(11) NOT NULL AUTO_INCREMENT,
  `short_desc` varchar(30) DEFAULT NULL,
  `long_desc` varchar(100) DEFAULT NULL,
  `status` varchar(4) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`amenity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenity`
--

LOCK TABLES `amenity` WRITE;
/*!40000 ALTER TABLE `amenity` DISABLE KEYS */;
INSERT INTO `amenity` VALUES (1,'Swimming Pool',NULL,'A','2016-09-01 18:30:00','2016-09-01 18:30:00','Admin','Admin'),(2,'SPA',NULL,'A','2016-09-01 18:30:00','2016-09-01 18:30:00','Admin','Admin'),(3,'Fitness Centre',NULL,'A','2016-09-01 18:30:00','2016-09-01 18:30:00','Admin','Admin'),(27,'Business Centre',NULL,'A','2016-09-01 18:30:00','2016-09-01 18:30:00','Admin','Admin'),(28,'Restaurant',NULL,'A','2016-09-01 18:30:00','2016-09-01 18:30:00','Admin','Admin'),(29,'BAR',NULL,'A','2016-09-01 18:30:00','2016-09-01 18:30:00','Admin','Admin'),(30,'Meeting / Event Rooms',NULL,'A','2016-09-01 18:30:00','2016-09-01 18:30:00','Admin','Admin'),(31,'Travel / Tour Desk',NULL,'A','2016-09-01 18:30:00','2016-09-01 18:30:00','Admin','Admin'),(32,'Room Service',NULL,'A','2016-09-01 18:30:00','2016-09-01 18:30:00','Admin','Admin'),(33,'Laundry Service',NULL,'A','2016-09-01 18:30:00','2016-09-01 18:30:00','Admin','Admin'),(34,'Doctor on Call',NULL,'A','2016-09-01 18:30:00','2016-09-01 18:30:00','Admin','Admin'),(35,'Free W-FI',NULL,'A','2016-09-01 18:30:00','2016-09-01 18:30:00','Admin','Admin'),(36,'24 Hour Room Service',NULL,'A','2016-09-01 18:30:00','2016-09-01 18:30:00','Admin','Admin'),(37,'Baby Sitting Service',NULL,'A','2016-09-01 18:30:00','2016-09-01 18:30:00','Admin','Admin'),(38,'Free Parking',NULL,'A','2016-09-01 18:30:00','2016-09-01 18:30:00','Admin','Admin'),(39,'Smoking Room',NULL,'A','2016-09-01 18:30:00','2016-09-01 18:30:00','Admin','Admin'),(40,'Safe Deposit Locker',NULL,'A','2016-09-01 18:30:00','2016-09-01 18:30:00','Admin','Admin'),(41,'Car Parking',NULL,'A','2016-09-01 18:30:00','2016-09-01 18:30:00','Admin','Admin'),(42,'In Room WI-Room',NULL,'A','2016-09-01 18:30:00','2016-09-01 18:30:00','Admin','Admin'),(43,'Non Smoking Room',NULL,'A','2016-09-01 18:30:00','2016-09-01 18:30:00','Admin','Admin'),(44,'In Room Safe',NULL,'A','2016-09-01 18:30:00','2016-09-01 18:30:00','Admin','Admin'),(45,'Pets Allowed',NULL,'A','2016-09-01 18:30:00','2016-09-01 18:30:00','Admin','Admin'),(46,'WI-FI at Lobby',NULL,'A','2016-09-01 18:30:00','2016-09-01 18:30:00','Admin','Admin'),(47,'Smoking Area',NULL,'A','2016-09-01 18:30:00','2016-09-01 18:30:00','Admin','Admin'),(48,'24 Hour Check In',NULL,'A','2016-09-01 18:30:00','2016-09-01 18:30:00','Admin','Admin'),(49,'Disabled Friendly',NULL,'A','2016-09-01 18:30:00','2016-09-01 18:30:00','Admin','Admin'),(50,'PC with Internet',NULL,'A','2016-09-01 18:30:00','2016-09-01 18:30:00','Admin','Admin');
/*!40000 ALTER TABLE `amenity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `availability_window`
--

DROP TABLE IF EXISTS `availability_window`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `availability_window` (
  `availability_window_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hotel_id` bigint(20) NOT NULL,
  `room_type_id` int(11) DEFAULT NULL,
  `room_id` bigint(20) DEFAULT NULL,
  `type_of_room` varchar(45) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `max_occupancy` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`availability_window_id`),
  KEY `avlblty_hotel_id` (`hotel_id`),
  KEY `avlblty_room_type_id` (`room_type_id`),
  KEY `avlblty_room_id` (`room_id`),
  CONSTRAINT `avlblty_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `avlblty_room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `avlblty_room_type_id` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`room_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `availability_window`
--

LOCK TABLES `availability_window` WRITE;
/*!40000 ALTER TABLE `availability_window` DISABLE KEYS */;
/*!40000 ALTER TABLE `availability_window` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bed_type`
--

DROP TABLE IF EXISTS `bed_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bed_type` (
  `idbed_type` int(11) NOT NULL,
  `bed_type_desc` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idbed_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bed_type`
--

LOCK TABLES `bed_type` WRITE;
/*!40000 ALTER TABLE `bed_type` DISABLE KEYS */;
INSERT INTO `bed_type` VALUES (1,'Single','A',NULL,NULL,NULL,NULL),(2,'Double','A',NULL,NULL,NULL,NULL),(3,'Extra Child','A',NULL,NULL,NULL,NULL),(4,'Extra Person','A',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `bed_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_channel`
--

DROP TABLE IF EXISTS `booking_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_channel` (
  `id_booking_channel` int(11) NOT NULL,
  `booking_channel_desc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_booking_channel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_channel`
--

LOCK TABLES `booking_channel` WRITE;
/*!40000 ALTER TABLE `booking_channel` DISABLE KEYS */;
INSERT INTO `booking_channel` VALUES (1,'Direct'),(2,'Agent'),(3,'OTA'),(4,'Uberotel');
/*!40000 ALTER TABLE `booking_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_details`
--

DROP TABLE IF EXISTS `customer_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_details` (
  `customer_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) DEFAULT NULL,
  `thumb_img_link` varchar(60) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `active_flag` varchar(10) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_details`
--

LOCK TABLES `customer_details` WRITE;
/*!40000 ALTER TABLE `customer_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digital_asset`
--

DROP TABLE IF EXISTS `digital_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digital_asset` (
  `digital_asset_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `asset_type` varchar(45) NOT NULL,
  `hotel_id` bigint(20) DEFAULT NULL,
  `room_type_id` int(11) DEFAULT NULL,
  `room_id` bigint(20) DEFAULT NULL,
  `use_room_type` varchar(45) DEFAULT NULL,
  `no_of_assets` int(11) DEFAULT NULL,
  `asset_detail` varchar(256) DEFAULT NULL,
  `asset_res_ht_px` int(11) DEFAULT NULL,
  `asset_res_wd_px` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`digital_asset_id`),
  UNIQUE KEY `digital_asset_unique_key` (`asset_type`,`hotel_id`,`room_type_id`,`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digital_asset`
--

LOCK TABLES `digital_asset` WRITE;
/*!40000 ALTER TABLE `digital_asset` DISABLE KEYS */;
INSERT INTO `digital_asset` VALUES (1,'HT_THUMB',12,0,0,NULL,0,NULL,0,0,'2016-10-28 18:30:00','UserIdOfAdminUser',NULL,NULL),(2,'HT_DETAIL',12,0,0,NULL,0,NULL,0,0,'2016-10-28 18:30:00','UserIdOfAdminUser',NULL,NULL),(5,'RT_THUMB',12,1,0,NULL,0,NULL,0,0,'2016-11-04 18:30:00','UserIdOfAdminUser',NULL,NULL),(6,'RT_DETAIL',12,1,0,NULL,0,NULL,0,0,'2016-11-04 18:30:00','UserIdOfAdminUser',NULL,NULL),(7,'RM_THUMB',12,1,5,NULL,0,NULL,0,0,'2016-11-04 18:30:00','UserIdOfAdminUser',NULL,NULL),(8,'RM_DETAIL',12,1,5,NULL,0,NULL,0,0,'2016-11-04 18:30:00','UserIdOfAdminUser',NULL,NULL),(9,'RM_THUMB',12,1,6,NULL,0,NULL,0,0,'2016-11-04 18:30:00','UserIdOfAdminUser',NULL,NULL),(10,'RM_DETAIL',12,1,6,NULL,0,NULL,0,0,'2016-11-04 18:30:00','UserIdOfAdminUser',NULL,NULL),(11,'RM_THUMB',12,2,7,NULL,0,NULL,0,0,'2016-11-04 18:30:00','UserIdOfAdminUser',NULL,NULL),(12,'RM_DETAIL',12,2,7,NULL,0,NULL,0,0,'2016-11-04 18:30:00','UserIdOfAdminUser',NULL,NULL),(13,'RT_THUMB',12,2,0,NULL,0,NULL,0,0,'2016-11-04 18:30:00','UserIdOfAdminUser',NULL,NULL),(14,'RT_DETAIL',12,2,0,NULL,0,NULL,0,0,'2016-11-04 18:30:00','UserIdOfAdminUser',NULL,NULL),(15,'RM_THUMB',12,3,8,NULL,0,NULL,0,0,'2016-11-04 18:30:00','UserIdOfAdminUser',NULL,NULL),(16,'RM_DETAIL',12,3,8,NULL,0,NULL,0,0,'2016-11-04 18:30:00','UserIdOfAdminUser',NULL,NULL),(17,'RT_THUMB',12,3,0,NULL,0,NULL,0,0,'2016-11-04 18:30:00','UserIdOfAdminUser',NULL,NULL),(18,'RT_DETAIL',12,3,0,NULL,0,NULL,0,0,'2016-11-04 18:30:00','UserIdOfAdminUser',NULL,NULL),(19,'RM_THUMB',12,1,9,NULL,0,NULL,0,0,'2016-11-04 18:30:00','UserIdOfAdminUser',NULL,NULL),(20,'RM_DETAIL',12,1,9,NULL,0,NULL,0,0,'2016-11-04 18:30:00','UserIdOfAdminUser',NULL,NULL),(21,'RM_THUMB',12,3,10,NULL,0,NULL,0,0,'2016-11-04 18:30:00','UserIdOfAdminUser',NULL,NULL),(22,'RM_DETAIL',12,3,10,NULL,0,NULL,0,0,'2016-11-04 18:30:00','UserIdOfAdminUser',NULL,NULL),(23,'RM_THUMB',12,1,11,NULL,0,NULL,0,0,'2016-11-04 18:30:00','UserIdOfAdminUser',NULL,NULL),(24,'RM_DETAIL',12,1,11,NULL,0,NULL,0,0,'2016-11-04 18:30:00','UserIdOfAdminUser',NULL,NULL),(25,'RM_THUMB',12,2,12,NULL,0,NULL,0,0,'2016-11-04 18:30:00','UserIdOfAdminUser',NULL,NULL),(26,'RM_DETAIL',12,2,12,NULL,0,NULL,0,0,'2016-11-04 18:30:00','UserIdOfAdminUser',NULL,NULL),(27,'RM_THUMB',12,1,13,NULL,0,NULL,0,0,'2016-11-04 18:30:00','UserIdOfAdminUser',NULL,NULL),(28,'RM_DETAIL',12,1,13,NULL,0,NULL,0,0,'2016-11-04 18:30:00','UserIdOfAdminUser',NULL,NULL),(29,'HT_THUMB',13,0,0,NULL,0,NULL,0,0,'2016-11-14 18:30:00','UserIdOfAdminUser',NULL,NULL),(30,'HT_DETAIL',13,0,0,NULL,0,NULL,0,0,'2016-11-14 18:30:00','UserIdOfAdminUser',NULL,NULL),(31,'HT_THUMB',14,0,0,NULL,0,NULL,0,0,'2016-11-14 18:30:00','UserIdOfAdminUser',NULL,NULL),(32,'HT_DETAIL',14,0,0,NULL,0,NULL,0,0,'2016-11-14 18:30:00','UserIdOfAdminUser',NULL,NULL),(33,'HT_THUMB',15,0,0,NULL,0,NULL,0,0,'2016-11-14 18:30:00','UserIdOfAdminUser',NULL,NULL),(34,'HT_DETAIL',15,0,0,NULL,0,NULL,0,0,'2016-11-14 18:30:00','UserIdOfAdminUser',NULL,NULL),(35,'HT_THUMB',16,0,0,NULL,0,NULL,0,0,'2016-11-21 18:30:00','UserIdOfAdminUser',NULL,NULL),(36,'HT_DETAIL',16,0,0,NULL,0,NULL,0,0,'2016-11-21 18:30:00','UserIdOfAdminUser',NULL,NULL);
/*!40000 ALTER TABLE `digital_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel` (
  `hotel_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hotel_name` varchar(100) NOT NULL,
  `short_desc` varchar(100) DEFAULT NULL,
  `detailed_desc` varchar(500) DEFAULT NULL,
  `htl_address` varchar(256) DEFAULT NULL,
  `htl_amenities` varchar(500) DEFAULT NULL,
  `htl_rating` varchar(45) DEFAULT NULL,
  `htl_avlbl_start_date` date DEFAULT NULL,
  `htl_avlbl_end_date` date DEFAULT NULL,
  `use_hotel_avlbl` varchar(45) DEFAULT NULL,
  `active_flag` varchar(10) DEFAULT NULL,
  `verified_flag` varchar(10) DEFAULT NULL,
  `htl_thumb_img_link` varchar(256) DEFAULT NULL,
  `htl_slide_img_link` varchar(256) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`hotel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES (3,'Hotel001','Short001','Detailed Description','Hotel/Resort Address','[1, 2, 35, 36, 45, 46]',NULL,'2016-10-01','2016-10-31',NULL,NULL,NULL,NULL,NULL,'2016-10-23 18:30:00','UserIdOfAdminUser',NULL,NULL),(4,'Hotel001','Short001','Detailed Description','Hotel/Resort Address  MAINAK Updated This','[2, 3, 27, 36, 37, 38]',NULL,'2016-10-01','2016-11-30',NULL,NULL,NULL,NULL,NULL,'2016-10-23 18:30:00','UserIdOfAdminUser','2016-10-26 18:30:00','UserIdOfAdminUser'),(5,'Hotel/Resort Name','Short Description','Detailed Description','Hotel/Resort Address','[2, 34, 36, 44, 46, 47]',NULL,'2016-10-01','2016-10-31',NULL,NULL,NULL,NULL,NULL,'2016-10-23 18:30:00','UserIdOfAdminUser',NULL,NULL),(6,'New Hotel 001','New Hotel 001','New Hotel 001','New Hotel 001','[27, 28, 29]',NULL,'2016-10-01','2016-10-31',NULL,NULL,NULL,NULL,NULL,'2016-10-25 18:30:00','UserIdOfAdminUser',NULL,NULL),(7,'New Hotel 001','New Hotel 001','New Hotel 001','New Hotel 001','[27, 28, 29]',NULL,'2016-10-01','2016-10-31',NULL,NULL,NULL,NULL,NULL,'2016-10-25 18:30:00','UserIdOfAdminUser',NULL,NULL),(8,'New Hotel 001','New Hotel 001','New Hotel 001','New Hotel 001','[27, 28, 29]',NULL,'2016-10-01','2016-10-31',NULL,NULL,NULL,NULL,NULL,'2016-10-25 18:30:00','UserIdOfAdminUser',NULL,NULL),(9,'New Hotel 001','New Hotel 001','New Hotel 001','New Hotel 001','[27, 28, 29]',NULL,'2016-10-01','2016-10-31',NULL,NULL,NULL,NULL,NULL,'2016-10-25 18:30:00','UserIdOfAdminUser',NULL,NULL),(10,'hotel005','hotel005','hotel005','mainak','[27, 28, 36, 37, 44, 45]',NULL,'2016-10-01','2016-10-31',NULL,NULL,NULL,NULL,NULL,'2016-10-25 18:30:00','UserIdOfAdminUser','2016-10-25 18:30:00','UserIdOfAdminUser'),(11,'nnnnnnn','nnnnnnn','nnnnnnn','nnnnnnn','[2, 34, 42, 50]',NULL,'2016-10-01','2016-10-31',NULL,NULL,NULL,NULL,NULL,'2016-10-28 18:30:00','UserIdOfAdminUser',NULL,NULL),(12,'Jewel of the East','This is a hotel near mountains','Hotel Specific Detailed Features','MMR Manner Bldg 3030','[2, 3, 27, 33, 41]',NULL,'2016-11-01','2017-04-30',NULL,NULL,NULL,NULL,NULL,'2016-10-28 18:30:00','UserIdOfAdminUser','2016-11-04 18:30:00','UserIdOfAdminUser'),(13,'TEST001','TEST001','TEST001','TEST001','[1, 2, 3, 35, 36, 37]',NULL,'2016-11-18','2016-11-30',NULL,NULL,NULL,NULL,NULL,'2016-11-14 18:30:00','UserIdOfAdminUser',NULL,NULL),(14,'TEST002','TEST002','TEST002','TEST002','[1, 2, 3, 34]',NULL,'2016-11-15','2016-11-29',NULL,NULL,NULL,NULL,NULL,'2016-11-14 18:30:00','UserIdOfAdminUser',NULL,NULL),(15,'TEST003','TEST003','TEST003','TEST003','[1, 2, 3, 27, 28]',NULL,'2016-11-16','2016-11-30',NULL,NULL,NULL,NULL,NULL,'2016-11-14 18:30:00','UserIdOfAdminUser',NULL,NULL),(16,'TEST004','TEST004','TEST004','TEST004','[1, 2]',NULL,'2016-11-24','2016-11-30',NULL,NULL,NULL,NULL,NULL,'2016-11-21 18:30:00','UserIdOfAdminUser',NULL,NULL);
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_amenity`
--

DROP TABLE IF EXISTS `hotel_amenity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_amenity` (
  `hotel_amenity_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amenity_id` int(11) NOT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`hotel_amenity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_amenity`
--

LOCK TABLES `hotel_amenity` WRITE;
/*!40000 ALTER TABLE `hotel_amenity` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotel_amenity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_rate_config_dtl`
--

DROP TABLE IF EXISTS `hotel_rate_config_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_rate_config_dtl` (
  `hotel_rate_config_dtl_id` int(11) NOT NULL AUTO_INCREMENT,
  `rate_config_id` int(11) DEFAULT NULL,
  `room_type_id` int(11) DEFAULT NULL,
  `meal_plan_id` int(11) DEFAULT NULL,
  `occupancy_id` int(11) DEFAULT NULL,
  `rate` double DEFAULT NULL,
  PRIMARY KEY (`hotel_rate_config_dtl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_rate_config_dtl`
--

LOCK TABLES `hotel_rate_config_dtl` WRITE;
/*!40000 ALTER TABLE `hotel_rate_config_dtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotel_rate_config_dtl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_srch_tag`
--

DROP TABLE IF EXISTS `hotel_srch_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_srch_tag` (
  `hotel_srch_tag_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hotel_id` varchar(45) NOT NULL,
  `hotel_name` varchar(256) DEFAULT NULL COMMENT 'hotel Name',
  `srch_tag` varchar(1000) DEFAULT NULL COMMENT 'Autogenerated by Batch',
  `destination` varchar(256) DEFAULT NULL COMMENT 'txtAreaInfo',
  `location` varchar(256) DEFAULT NULL COMMENT 'txtLocation',
  `airport` varchar(256) DEFAULT NULL COMMENT 'txtAirport',
  `rail_station` varchar(256) DEFAULT NULL COMMENT 'txtStation',
  `status` varchar(4) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`hotel_srch_tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_srch_tag`
--

LOCK TABLES `hotel_srch_tag` WRITE;
/*!40000 ALTER TABLE `hotel_srch_tag` DISABLE KEYS */;
INSERT INTO `hotel_srch_tag` VALUES (1,'3','Hotel001',NULL,'Area','Location001','Airport001','Railway001',NULL,'2016-10-23 18:30:00',NULL,'UserIdOfAdminUser',NULL),(2,'4','Hotel001',NULL,'Area001','Location001','Airport001','Railway001',NULL,'2016-10-23 18:30:00','2016-10-26 18:30:00','UserIdOfAdminUser','UserIdOfAdminUser'),(3,'5','Hotel/Resort Name',NULL,'Area','Location','Nearby Airport','Nearby Railway Station',NULL,'2016-10-23 18:30:00',NULL,'UserIdOfAdminUser',NULL),(4,'6','New Hotel 001',NULL,'New Hotel 001','New Hotel 001','New Hotel 001','New Hotel 001',NULL,'2016-10-25 18:30:00',NULL,'UserIdOfAdminUser',NULL),(5,'7','New Hotel 001',NULL,'New Hotel 001','New Hotel 001','New Hotel 001','New Hotel 001',NULL,'2016-10-25 18:30:00',NULL,'UserIdOfAdminUser',NULL),(6,'8','New Hotel 001',NULL,'New Hotel 001','New Hotel 001','New Hotel 001','New Hotel 001',NULL,'2016-10-25 18:30:00',NULL,'UserIdOfAdminUser',NULL),(7,'9','New Hotel 001',NULL,'New Hotel 001','New Hotel 001','New Hotel 001','New Hotel 001',NULL,'2016-10-25 18:30:00',NULL,'UserIdOfAdminUser',NULL),(8,'10','hotel005',NULL,'hotel005','hotel005','hotel005','hotel005',NULL,'2016-10-25 18:30:00','2016-10-25 18:30:00','UserIdOfAdminUser','UserIdOfAdminUser'),(9,'11','nnnnnnn',NULL,'nnnnnnn','nnnnnnn','nnnnnnn','nnnnnnn',NULL,'2016-10-28 18:30:00',NULL,'UserIdOfAdminUser',NULL),(10,'12','Jewel of the East',NULL,'Mall Road, Gangtok','M G Marg','Bagdogra, IXB','NJP, Siliguri',NULL,'2016-10-28 18:30:00','2016-11-04 18:30:00','UserIdOfAdminUser','UserIdOfAdminUser'),(11,'13','TEST001',NULL,'TEST001','TEST001','TEST001','TEST001',NULL,'2016-11-14 18:30:00',NULL,'UserIdOfAdminUser',NULL),(12,'14','TEST002',NULL,'TEST002','TEST002','TEST002','TEST002',NULL,'2016-11-14 18:30:00',NULL,'UserIdOfAdminUser',NULL),(13,'15','TEST003',NULL,'TEST003','TEST003','TEST003','TEST003',NULL,'2016-11-14 18:30:00',NULL,'UserIdOfAdminUser',NULL),(14,'16','TEST004',NULL,'TEST004','TEST004','TEST004','TEST004',NULL,'2016-11-21 18:30:00',NULL,'UserIdOfAdminUser',NULL);
/*!40000 ALTER TABLE `hotel_srch_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `htl_login`
--

DROP TABLE IF EXISTS `htl_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `htl_login` (
  `htl_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `htl_username` varchar(45) NOT NULL,
  `htl_password` varchar(45) NOT NULL,
  `status` varchar(4) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`htl_login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `htl_login`
--

LOCK TABLES `htl_login` WRITE;
/*!40000 ALTER TABLE `htl_login` DISABLE KEYS */;
INSERT INTO `htl_login` VALUES (1,'admin','admin','A'),(2,'sadmin','admin123','A');
/*!40000 ALTER TABLE `htl_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `htl_rate_config`
--

DROP TABLE IF EXISTS `htl_rate_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `htl_rate_config` (
  `id_htl_rate_config` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_id` bigint(20) DEFAULT NULL,
  `booking_channel_id` int(11) DEFAULT NULL,
  `season_id` int(11) DEFAULT NULL,
  `active_flag` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_htl_rate_config`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `htl_rate_config`
--

LOCK TABLES `htl_rate_config` WRITE;
/*!40000 ALTER TABLE `htl_rate_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `htl_rate_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `htl_user_role_map`
--

DROP TABLE IF EXISTS `htl_user_role_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `htl_user_role_map` (
  `usr_role_map_id` int(11) NOT NULL AUTO_INCREMENT,
  `htl_login_id` int(11) NOT NULL,
  `htl_role_id` int(11) NOT NULL,
  `hotel_id` bigint(20) NOT NULL,
  PRIMARY KEY (`usr_role_map_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `htl_user_role_map`
--

LOCK TABLES `htl_user_role_map` WRITE;
/*!40000 ALTER TABLE `htl_user_role_map` DISABLE KEYS */;
INSERT INTO `htl_user_role_map` VALUES (6,2,1,4),(8,1,1,5),(9,1,1,12),(10,1,1,10),(11,1,1,13),(12,1,1,14),(13,1,1,15),(14,1,1,16);
/*!40000 ALTER TABLE `htl_user_role_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meal_plan`
--

DROP TABLE IF EXISTS `meal_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meal_plan` (
  `idmeal_plan` int(11) NOT NULL,
  `meal_plan_desc` varchar(45) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idmeal_plan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meal_plan`
--

LOCK TABLES `meal_plan` WRITE;
/*!40000 ALTER TABLE `meal_plan` DISABLE KEYS */;
INSERT INTO `meal_plan` VALUES (1,'EP',NULL,NULL,NULL,NULL,'A'),(2,'AP',NULL,NULL,NULL,NULL,'A'),(3,'MAP',NULL,NULL,NULL,NULL,'A'),(4,'CP',NULL,NULL,NULL,NULL,'A');
/*!40000 ALTER TABLE `meal_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rate`
--

DROP TABLE IF EXISTS `rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rate` (
  `rate_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hotel_id` bigint(20) NOT NULL,
  `room_type_id` int(11) DEFAULT NULL,
  `room_id` bigint(20) DEFAULT NULL,
  `base_price` decimal(8,2) DEFAULT NULL,
  `season_price` decimal(8,2) DEFAULT NULL,
  `negotiate_slab` varchar(45) DEFAULT NULL,
  `offer_discount_percent` int(11) DEFAULT NULL,
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_date` timestamp NULL DEFAULT NULL,
  `active_flag` varchar(10) DEFAULT NULL,
  `verified_flag` varchar(10) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `meal_plan_id` int(11) NOT NULL,
  PRIMARY KEY (`rate_id`),
  KEY `hotel_id` (`hotel_id`),
  KEY `room_type_id` (`room_type_id`),
  KEY `room_id` (`room_id`),
  KEY `fk_meal_plan_id` (`meal_plan_id`),
  CONSTRAINT `fk_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_meal_plan_id` FOREIGN KEY (`meal_plan_id`) REFERENCES `meal_plan` (`idmeal_plan`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_room_type_id` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`room_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rate`
--

LOCK TABLES `rate` WRITE;
/*!40000 ALTER TABLE `rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation_details`
--

DROP TABLE IF EXISTS `reservation_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservation_details` (
  `reservation_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pnr` varchar(45) DEFAULT NULL,
  `customer_id` bigint(20) NOT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `room_type_id` int(11) DEFAULT NULL,
  `type_of_room` varchar(45) DEFAULT NULL,
  `room_id` bigint(20) DEFAULT NULL,
  `rate_booked` decimal(8,2) DEFAULT NULL,
  `requested_occupancy` int(11) DEFAULT NULL,
  `reservation_status` varchar(20) DEFAULT NULL,
  `channel_booked` varchar(20) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`reservation_id`),
  KEY `room_id` (`room_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer_details` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation_details`
--

LOCK TABLES `reservation_details` WRITE;
/*!40000 ALTER TABLE `reservation_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservation_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `room_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `room_desc` varchar(60) DEFAULT NULL,
  `room_thumb_img_link` varchar(256) DEFAULT NULL,
  `rt_thumb_img_link` varchar(256) DEFAULT NULL,
  `room_avlbl_start_date` date DEFAULT NULL,
  `room_avlbl_end_date` date DEFAULT NULL,
  `active_flag` varchar(10) DEFAULT NULL,
  `verified_flag` varchar(10) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `room_type_id` int(11) NOT NULL,
  `hotel_id` bigint(20) DEFAULT NULL,
  `room_number` varchar(45) NOT NULL,
  `bed_type_id` int(11) NOT NULL,
  `max_occ` int(11) DEFAULT NULL,
  PRIMARY KEY (`room_id`),
  KEY `hotel_id` (`hotel_id`),
  KEY `room_type_id` (`room_type_id`),
  KEY `bed_type_id` (`bed_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (5,'Ok Did some correction',NULL,NULL,NULL,NULL,NULL,NULL,'2016-11-04 18:30:00','UserIdOfAdminUser','2016-11-05 18:30:00','UserIdOfAdminUser',1,12,'101',1,2),(6,'Description',NULL,NULL,NULL,NULL,NULL,NULL,'2016-11-04 18:30:00','UserIdOfAdminUser','2016-11-05 18:30:00','UserIdOfAdminUser',1,12,'102',2,2),(7,'Extra Child Correction',NULL,NULL,NULL,NULL,NULL,NULL,'2016-11-04 18:30:00','UserIdOfAdminUser','2016-11-05 18:30:00','UserIdOfAdminUser',2,12,'201',3,4),(8,'Super Deluxe Correction',NULL,NULL,NULL,NULL,NULL,NULL,'2016-11-04 18:30:00','UserIdOfAdminUser','2016-11-05 18:30:00','UserIdOfAdminUser',3,12,'301',1,4),(9,'MAINAK STANDARD',NULL,NULL,NULL,NULL,NULL,NULL,'2016-11-04 18:30:00','UserIdOfAdminUser','2016-11-05 18:30:00','UserIdOfAdminUser',1,12,'103',2,3),(10,'MAINAK SUPER DELUXE',NULL,NULL,NULL,NULL,NULL,NULL,'2016-11-04 18:30:00','UserIdOfAdminUser','2016-11-22 18:30:00','UserIdOfAdminUser',3,12,'302',2,4),(11,'MAINAK EXTRA CHILD',NULL,NULL,NULL,NULL,NULL,NULL,'2016-11-04 18:30:00','UserIdOfAdminUser','2016-11-05 18:30:00','UserIdOfAdminUser',1,12,'104',3,3),(12,'One Serious Entry',NULL,NULL,NULL,NULL,NULL,NULL,'2016-11-04 18:30:00','UserIdOfAdminUser','2016-11-05 18:30:00','UserIdOfAdminUser',2,12,'202',2,4),(13,'Hello This is Again Some Update',NULL,NULL,NULL,NULL,NULL,NULL,'2016-11-04 18:30:00','UserIdOfAdminUser','2016-11-05 18:30:00','UserIdOfAdminUser',1,12,'105',4,3);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_type`
--

DROP TABLE IF EXISTS `room_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_type` (
  `room_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `rt_desc` varchar(60) DEFAULT NULL,
  `rt_thumb_img_link` varchar(256) DEFAULT NULL,
  `rt_avlbl_start_date` date DEFAULT NULL,
  `rt_avlbl_end_date` date DEFAULT NULL,
  `use_room_type_avlbl` varchar(10) DEFAULT NULL,
  `active_flag` varchar(10) DEFAULT NULL,
  `verified_flag` varchar(10) DEFAULT NULL,
  `room_typecol` varchar(45) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`room_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_type`
--

LOCK TABLES `room_type` WRITE;
/*!40000 ALTER TABLE `room_type` DISABLE KEYS */;
INSERT INTO `room_type` VALUES (1,'Standard',NULL,NULL,NULL,NULL,'A',NULL,NULL,NULL,NULL,NULL,NULL),(2,'Deluxe',NULL,NULL,NULL,NULL,'A',NULL,NULL,NULL,NULL,NULL,NULL),(3,'Super Deluxe',NULL,NULL,NULL,NULL,'A',NULL,NULL,NULL,NULL,NULL,NULL),(4,'Executive',NULL,NULL,NULL,NULL,'A',NULL,NULL,NULL,NULL,NULL,NULL),(5,'Royal',NULL,NULL,NULL,NULL,'A',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `room_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `season_master`
--

DROP TABLE IF EXISTS `season_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `season_master` (
  `id_season_master` int(11) NOT NULL,
  `season_desc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_season_master`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `season_master`
--

LOCK TABLES `season_master` WRITE;
/*!40000 ALTER TABLE `season_master` DISABLE KEYS */;
INSERT INTO `season_master` VALUES (1,'Default'),(2,'Red'),(3,'Green'),(4,'Blue'),(5,'White');
/*!40000 ALTER TABLE `season_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-16 21:45:13
