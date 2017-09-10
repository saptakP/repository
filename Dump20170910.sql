-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: damweb
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
INSERT INTO `amenity` VALUES (1,'Swimming Pool',NULL,'A','2017-09-09 06:34:33','2017-09-09 06:34:33','Admin','Admin'),(2,'SPA',NULL,'A','2017-09-09 06:34:33','2017-09-09 06:34:33','Admin','Admin'),(3,'Fitness Centre',NULL,'A','2017-09-09 06:34:33','2017-09-09 06:34:33','Admin','Admin'),(27,'Business Centre',NULL,'A','2017-09-09 06:34:33','2017-09-09 06:34:33','Admin','Admin'),(28,'Restaurant',NULL,'A','2017-09-09 06:34:33','2017-09-09 06:34:33','Admin','Admin'),(29,'BAR',NULL,'A','2017-09-09 06:34:33','2017-09-09 06:34:33','Admin','Admin'),(30,'Meeting / Event Rooms',NULL,'A','2017-09-09 06:34:33','2017-09-09 06:34:33','Admin','Admin'),(31,'Travel / Tour Desk',NULL,'A','2017-09-09 06:34:33','2017-09-09 06:34:33','Admin','Admin'),(32,'Room Service',NULL,'A','2017-09-09 06:34:33','2017-09-09 06:34:33','Admin','Admin'),(33,'Laundry Service',NULL,'A','2017-09-09 06:34:33','2017-09-09 06:34:33','Admin','Admin'),(34,'Doctor on Call',NULL,'A','2017-09-09 06:34:33','2017-09-09 06:34:33','Admin','Admin'),(35,'Free W-FI',NULL,'A','2017-09-09 06:34:33','2017-09-09 06:34:33','Admin','Admin'),(36,'24 Hour Room Service',NULL,'A','2017-09-09 06:34:33','2017-09-09 06:34:33','Admin','Admin'),(37,'Baby Sitting Service',NULL,'A','2017-09-09 06:34:33','2017-09-09 06:34:33','Admin','Admin'),(38,'Free Parking',NULL,'A','2017-09-09 06:34:33','2017-09-09 06:34:33','Admin','Admin'),(39,'Smoking Room',NULL,'A','2017-09-09 06:34:33','2017-09-09 06:34:33','Admin','Admin'),(40,'Safe Deposit Locker',NULL,'A','2017-09-09 06:34:33','2017-09-09 06:34:33','Admin','Admin'),(41,'Car Parking',NULL,'A','2017-09-09 06:34:33','2017-09-09 06:34:33','Admin','Admin'),(42,'In Room WI-Room',NULL,'A','2017-09-09 06:34:33','2017-09-09 06:34:33','Admin','Admin'),(43,'Non Smoking Room',NULL,'A','2017-09-09 06:34:33','2017-09-09 06:34:33','Admin','Admin'),(44,'In Room Safe',NULL,'A','2017-09-09 06:34:33','2017-09-09 06:34:33','Admin','Admin'),(45,'Pets Allowed',NULL,'A','2017-09-09 06:34:33','2017-09-09 06:34:33','Admin','Admin'),(46,'WI-FI at Lobby',NULL,'A','2017-09-09 06:34:33','2017-09-09 06:34:33','Admin','Admin'),(47,'Smoking Area',NULL,'A','2017-09-09 06:34:33','2017-09-09 06:34:33','Admin','Admin'),(48,'24 Hour Check In',NULL,'A','2017-09-09 06:34:33','2017-09-09 06:34:33','Admin','Admin'),(49,'Disabled Friendly',NULL,'A','2017-09-09 06:34:33','2017-09-09 06:34:33','Admin','Admin'),(50,'PC with Internet',NULL,'A','2017-09-09 06:34:33','2017-09-09 06:34:33','Admin','Admin');
/*!40000 ALTER TABLE `amenity` ENABLE KEYS */;
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
  `htl_amenity_id` int(11) NOT NULL,
  `use_room_type` varchar(45) DEFAULT NULL,
  `no_of_assets` int(11) DEFAULT NULL,
  `asset_detail` varchar(256) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `last_refresh_date` date NOT NULL,
  PRIMARY KEY (`digital_asset_id`),
  UNIQUE KEY `digital_asset_unique_key` (`asset_type`,`hotel_id`,`room_type_id`,`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digital_asset`
--

LOCK TABLES `digital_asset` WRITE;
/*!40000 ALTER TABLE `digital_asset` DISABLE KEYS */;
INSERT INTO `digital_asset` VALUES (1,'HT_THUMB',12,0,0,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00'),(2,'HT_DETAIL',12,0,0,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00'),(5,'RT_THUMB',12,1,0,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00'),(6,'RT_DETAIL',12,1,0,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00'),(7,'RM_THUMB',12,1,5,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00'),(8,'RM_DETAIL',12,1,5,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00'),(9,'RM_THUMB',12,1,6,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00'),(10,'RM_DETAIL',12,1,6,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00'),(11,'RM_THUMB',12,2,7,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00'),(12,'RM_DETAIL',12,2,7,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00'),(13,'RT_THUMB',12,2,0,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00'),(14,'RT_DETAIL',12,2,0,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00'),(15,'RM_THUMB',12,3,8,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00'),(16,'RM_DETAIL',12,3,8,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00'),(17,'RT_THUMB',12,3,0,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00'),(18,'RT_DETAIL',12,3,0,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00'),(19,'RM_THUMB',12,1,9,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00'),(20,'RM_DETAIL',12,1,9,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00'),(21,'RM_THUMB',12,3,10,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00'),(22,'RM_DETAIL',12,3,10,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00'),(23,'RM_THUMB',12,1,11,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00'),(24,'RM_DETAIL',12,1,11,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00'),(25,'RM_THUMB',12,2,12,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00'),(26,'RM_DETAIL',12,2,12,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00'),(27,'RM_THUMB',12,1,13,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00'),(28,'RM_DETAIL',12,1,13,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00'),(29,'HT_THUMB',3,0,0,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00'),(30,'HT_DETAIL',3,0,0,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00'),(31,'HT_THUMB',14,0,0,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00'),(32,'HT_DETAIL',14,0,0,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00'),(33,'HT_THUMB',15,0,0,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00'),(34,'HT_DETAIL',15,0,0,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00'),(35,'HT_THUMB',16,0,0,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00'),(36,'HT_DETAIL',16,0,0,0,NULL,0,NULL,'2017-09-09 09:15:37','Admin','2017-09-09 09:15:37','Admin','0000-00-00');
/*!40000 ALTER TABLE `digital_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digital_asset_details`
--

DROP TABLE IF EXISTS `digital_asset_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digital_asset_details` (
  `da_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `digital_asset_id` int(11) DEFAULT NULL,
  `asset_name` varchar(60) DEFAULT NULL,
  `digital_asset_location` varchar(256) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `last_refresh_date` date DEFAULT NULL,
  PRIMARY KEY (`da_details_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digital_asset_details`
--

LOCK TABLES `digital_asset_details` WRITE;
/*!40000 ALTER TABLE `digital_asset_details` DISABLE KEYS */;
INSERT INTO `digital_asset_details` VALUES (1,1,'LingtamResort_20170909.JPG','static/assets/HSR01/HT_THUMB','STALE','2017-09-08','2017-09-08','2017-09-10'),(2,2,'gallery-image-1.jpg','static/assets/HSR01/HT_DETAIL','STALE','2017-09-08','2017-09-08','2017-09-10'),(3,2,'gallery-image-2.jpg','static/assets/HSR01/HT_DETAIL','STALE','2017-09-08','2017-09-08','2017-09-10'),(4,2,'gallery-image-3.jpg','static/assets/HSR01/HT_DETAIL','STALE','2017-09-08','2017-09-08','2017-09-10'),(5,29,'gallery-image-6.jpg','static/assets/HTB01/HT_DETAIL','STALE','2017-09-08','2017-09-08','2017-09-10'),(6,2,'gallery-image-4.jpg','static/assets/HSR01/HT_DETAIL','STALE','2017-09-08','2017-09-09','2017-09-10'),(7,2,'gallery-image-5.jpg','static/assets/HSR01/HT_DETAIL','STALE','2017-09-08','2017-09-09','2017-09-10'),(8,29,'gallery-image-6.jpg','static/assets/HTB01/HT_DETAIL','STALE','2017-09-08','2017-09-08','2017-09-10'),(9,29,'gallery-image-6.jpg','static/assets/HTB01/HT_DETAIL','STALE','2017-09-08','2017-09-08','2017-09-10'),(10,29,'gallery-image-6.jpg','static/assets/HTB01/HT_DETAIL','STALE','2017-09-08','2017-09-09','2017-09-10'),(11,29,'gallery-image-6.jpg','static/assets/HTB01/HT_DETAIL','STALE','2017-09-08','2017-09-10','2017-09-10');
/*!40000 ALTER TABLE `digital_asset_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel` (
  `hotel_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hotel_code` varchar(45) NOT NULL,
  `hotel_name` varchar(100) NOT NULL,
  `short_desc` varchar(100) DEFAULT NULL,
  `detailed_desc` mediumtext,
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
  `htl_360score` int(11) NOT NULL,
  `htl_video_link` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`hotel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES (3,'HTB01','Taj Bengal','5-star hotel in Kolkata','Posh rooms & suites in a high-end hotel with 8 restaurants serving a range of international fare.','34B, Belvedere Road, Alipore, Kolkata, West Bengal 700027\r\n','[1, 2, 35, 36, 45, 46]',NULL,'2016-10-01','2016-10-31',NULL,NULL,NULL,'static/assets/HTB01/HT_THUMB/imgname_20170909.jpg',NULL,'2017-09-09 09:00:22','Admin','2017-09-09 09:00:22','Admin',96,'https://player.vimeo.com/video/36911719?color=009f8b&byline=0&portrait=0'),(4,'HRS30','Hotel Royal Sheraton','Hotel Royal Sheraton','<p>Set amidst a variety of local attractions, Hotel Royal Sheraton, a budget heritage property, features traditional Rajasthan architecture and décor. It offers 3 dining options, Ayurvedic massage services and rooms with free Wi-Fi.</p><p>The cosy air-conditioned rooms come with unique wall paintings, warm light and wooden flooring. Included in all units are a TV, tea/coffee maker and an attached bathroom with shower facilities.</p><p>The rooftop restaurant serves a variety of Rajasthani specialities, while local and international dishes are available at Rajwada Restaurant. Light snack and refreshing cocktails are offered at Rajwada Bar.</p><p>This property has a business centre and tour desk, where staff can assist with ticking and concierge services. Same-day laundry services are also available upon request.</p><p>Sheraton Royal Hotel is 500 m from Hawa Mahal and 600 m from the City Palace. It is 1 km from the Amer Bus Terminus and 6 km from Nahar Garh Fort.</p><p>If you want to request something specific, you can do that in the next step, before you book. Once you book, we\'ll provide details so you can contact the property directly.</p><p>Hotel Royal Sheraton has been welcoming Booking.com guests since 13 Jun 2012.</p>','Kolkata','[2, 3, 27, 36, 37, 38]',NULL,'2016-10-01','2016-11-30',NULL,NULL,NULL,NULL,NULL,'2017-09-09 09:00:22','Admin','2017-09-09 09:00:22','Admin',80,'https://player.vimeo.com/video/36911719?color=009f8b&byline=0&portrait=0'),(5,'HHJ90','Hilton Jaipur','Hilton Jaipur','Located just 3 km from Jaipur Railway Station, Hilton Jaipur operates a 24-hour front desk to assist guests at all hours.','Hotel/Resort Address','[2, 34, 36, 44, 46, 47]',NULL,'2016-10-01','2016-10-31',NULL,NULL,NULL,NULL,NULL,'2017-09-09 09:00:22','Admin','2017-09-09 09:00:22','Admin',60,'https://player.vimeo.com/video/36911719?color=009f8b&byline=0&portrait=0'),(6,'HJI09','Jaipur Inn','Jaipur Inn,17 SHIV MARG BANI PARK, 302016 Jaipur, India','<p>Set amidst a variety of local attractions, Hotel Royal Sheraton, a budget heritage property, features traditional Rajasthan architecture and décor. It offers 3 dining options, Ayurvedic massage services and rooms with free Wi-Fi.</p><p>The cosy air-conditioned rooms come with unique wall paintings, warm light and wooden flooring. Included in all units are a TV, tea/coffee maker and an attached bathroom with shower facilities.</p><p>The rooftop restaurant serves a variety of Rajasthani specialities, while local and international dishes are available at Rajwada Restaurant. Light snack and refreshing cocktails are offered at Rajwada Bar.</p><p>This property has a business centre and tour desk, where staff can assist with ticking and concierge services. Same-day laundry services are also available upon request.</p><p>Sheraton Royal Hotel is 500 m from Hawa Mahal and 600 m from the City Palace. It is 1 km from the Amer Bus Terminus and 6 km from Nahar Garh Fort.</p><p>If you want to request something specific, you can do that in the next step, before you book. Once you book, we\'ll provide details so you can contact the property directly.</p><p>Hotel Royal Sheraton has been welcoming Booking.com guests since 13 Jun 2012.</p>','17 SHIV MARG BANI PARK, 302016 Jaipur, India','[27, 28, 29]',NULL,'2016-10-01','2016-10-31',NULL,NULL,NULL,NULL,NULL,'2017-09-09 09:00:22','Admin','2017-09-09 09:00:22','Admin',85,'https://player.vimeo.com/video/36911719?color=009f8b&byline=0&portrait=0'),(12,'HSR01','Silk Route Resort','This is a hotel near mountains','','Lintam, Sikkim','[2, 3, 27, 33, 41]',NULL,'2017-08-31','2018-02-28',NULL,NULL,NULL,'static/assets/HSR01/HT_THUMB/LingtamResort_20170909.JPG',NULL,'2017-09-09 09:00:22','Admin','2017-09-09 09:00:22','Admin',90,'https://player.vimeo.com/video/36911719?color=009f8b&byline=0&portrait=0');
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
-- Table structure for table `htl_login`
--

DROP TABLE IF EXISTS `htl_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `htl_login` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `status` varchar(4) NOT NULL DEFAULT 'A',
  `user_type` varchar(45) NOT NULL,
  `ref_key` varchar(60) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `htl_login`
--

LOCK TABLES `htl_login` WRITE;
/*!40000 ALTER TABLE `htl_login` DISABLE KEYS */;
INSERT INTO `htl_login` VALUES (1,'saptak','lv56FjDA8qRVwADdz/fT2A==','A','Customer','SUNUms+WXVrfKSNySj0j3g==32'),(2,'admin','SUNUms+WXVrfKSNySj0j3g==','A','Admin','lv56FjDA8qRVwADdz/fT2A=='),(3,'pratik','lv56FjDA8qRVwADdz/fT2A==','A','CUST','SUNUms+WXVrfKSNySj0j3g==31'),(4,'Ruksha','lv56FjDA8qRVwADdz/fT2A==','A','CUST','SUNUms+WXVrfKSNySj0j3g==33');
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
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `RVW_ID` int(11) NOT NULL AUTO_INCREMENT,
  `RVW_DATE` datetime NOT NULL,
  `RVW_CLEAN` int(11) DEFAULT NULL,
  `RVW_SERVICE` int(11) DEFAULT NULL,
  `RVW_STAFF` int(11) DEFAULT NULL,
  `RVW_LOC` int(11) DEFAULT NULL,
  `RVW_MONEY` int(11) DEFAULT NULL,
  `RVW_OVR_RATE` float DEFAULT NULL,
  `RVW_FOOD` int(11) DEFAULT NULL,
  `RVW_CMT_PROS` text,
  `RVW_CMT_CONS` text,
  `RVW_STATE` varchar(20) DEFAULT NULL,
  `hotel_code` varchar(20) DEFAULT NULL,
  `username` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`RVW_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,'2017-09-10 19:11:34',0,1,4,5,3,3,5,'Located on a pedestrian or walking street along the old town square in city. The hotel is an old building but well renovated into a 5-star hotel.We requested for an early check-in, it was approved, we request for a late check-out, it was approved also, even on a off season time, some hotel would not have approved it.The reception personnel were very helpful in advise on what to do in the city.Breakfast were good, will fresh fruits and juices, fried eggs, sliced salmons and everything you would want for breakfast.','No such','PENDING','HTB01','Ruksha'),(2,'2017-09-10 19:16:08',4,4,5,5,4,4,4,'We stayed between Xmas and New Year 2011 for 3 nights in this wonderful hotel.The location is absolutely brilliant being only 300 yards from the Old Town Square.We were lucky to get a \'free\' room up grade to one of the superb loft conversion - two level room with the four poster beds -Nice ! .All the staff were very helpful.','No such','D','HSR01','pratik'),(3,'2017-09-10 19:27:01',4,4,5,5,5,4,3,'We stayed at the Ventana for 2 nights a few days before Christmas 2010 and it was everything I hoped it would be. It\'s well located off the main square and the main Christmas markets and room we paid for (the attic loft deluxe) was probably the best hotel room I\'ve ever stayed in. The included breakfast was good enough and the mini bar in the room','no such','A','HTB01','saptak');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-11 11:44:46
