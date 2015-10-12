-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_488
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.12.04.1

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
-- Table structure for table `ActionStrings`
--

DROP TABLE IF EXISTS `ActionStrings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ActionStrings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `st` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `st` (`st`),
  KEY `st_idx` (`st`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (5,'android.intent.action.CHOOSER'),(7,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(4,'android.intent.action.PICK'),(3,'android.intent.action.SENDTO'),(2,'android.intent.action.VIEW'),(6,'android.media.action.IMAGE_CAPTURE');
/*!40000 ALTER TABLE `ActionStrings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Aliases`
--

DROP TABLE IF EXISTS `Aliases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Aliases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `component_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `component_id` (`component_id`),
  KEY `target_id` (`target_id`),
  CONSTRAINT `Aliases_ibfk_1` FOREIGN KEY (`component_id`) REFERENCES `Components` (`id`),
  CONSTRAINT `Aliases_ibfk_2` FOREIGN KEY (`target_id`) REFERENCES `Components` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Aliases`
--

LOCK TABLES `Aliases` WRITE;
/*!40000 ALTER TABLE `Aliases` DISABLE KEYS */;
/*!40000 ALTER TABLE `Aliases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Applications`
--

DROP TABLE IF EXISTS `Applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Applications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'eng.trickersticks.us',5),(2,'mykitty.timer.iconosys',1),(3,'nike.countdown.iconosys.eng',1),(4,'eng.trickersticks.fastestcars',2),(5,'myteam.photo.iconosys.eng',9),(6,'hair.photo.iconosys.eng',1),(7,'hearthealth.timer.iconosys.eng',2);
/*!40000 ALTER TABLE `Applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CategoryStrings`
--

DROP TABLE IF EXISTS `CategoryStrings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CategoryStrings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `st` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `st` (`st`),
  KEY `st_idx` (`st`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER');
/*!40000 ALTER TABLE `CategoryStrings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Classes`
--

DROP TABLE IF EXISTS `Classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `class_idx` (`class`) USING HASH,
  KEY `app_id_idx` (`app_id`) USING HASH,
  CONSTRAINT `Classes_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `Applications` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'eng.trickersticks.us.TrickerSticks'),(2,1,'eng.trickersticks.us.GlowSticks'),(3,1,'eng.trickersticks.us.Registration'),(4,2,'mykitty.timer.iconosys.ChristmasTimer'),(5,2,'mykitty.timer.iconosys.ContactsList'),(6,2,'mykitty.timer.iconosys.MessageService'),(7,3,'nike.countdown.iconosys.eng.ChristmasTimer'),(8,3,'nike.countdown.iconosys.eng.ContactsList'),(9,3,'nike.countdown.iconosys.eng.OtherApps'),(10,4,'eng.trickersticks.fastestcars.TrickerSticks'),(11,3,'nike.countdown.iconosys.eng.MessageService'),(12,4,'eng.trickersticks.fastestcars.GlowSticks'),(13,4,'eng.trickersticks.fastestcars.ShowTerms'),(14,4,'eng.trickersticks.fastestcars.RegistrationScreen'),(15,5,'myteam.photo.iconosys.eng.MeInJail'),(16,4,'eng.trickersticks.fastestcars.AdView'),(17,6,'hair.photo.iconosys.eng.FrameIt'),(18,4,'eng.trickersticks.fastestcars.OtherApps'),(19,5,'myteam.photo.iconosys.eng.PhotoView'),(20,4,'eng.trickersticks.fastestcars.LocationSender'),(21,6,'hair.photo.iconosys.eng.PhotoView'),(22,7,'hearthealth.timer.iconosys.eng.ChristmasTimer'),(23,7,'hearthealth.timer.iconosys.eng.ContactsList'),(24,7,'hearthealth.timer.iconosys.eng.OtherApps'),(25,5,'myteam.photo.iconosys.eng.OtherApps'),(26,6,'hair.photo.iconosys.eng.OtherApps'),(27,7,'hearthealth.timer.iconosys.eng.RegistrationScreen'),(28,5,'myteam.photo.iconosys.eng.ShowTerms'),(29,6,'hair.photo.iconosys.eng.AdActivity'),(30,7,'hearthealth.timer.iconosys.eng.ShowTerms'),(31,5,'myteam.photo.iconosys.eng.RegistrationScreen'),(32,6,'hair.photo.iconosys.eng.ShowTerms'),(33,7,'hearthealth.timer.iconosys.eng.AdView'),(34,5,'myteam.photo.iconosys.eng.ShareImage'),(35,6,'hair.photo.iconosys.eng.RegistrationScreen'),(36,7,'hearthealth.timer.iconosys.eng.IconosysActivity'),(37,5,'myteam.photo.iconosys.eng.ShowPopUp'),(38,6,'hair.photo.iconosys.eng.ShareImage'),(39,7,'hearthealth.timer.iconosys.eng.MessageService'),(40,5,'myteam.photo.iconosys.eng.AdView'),(41,6,'hair.photo.iconosys.eng.AdView'),(42,7,'hearthealth.timer.iconosys.eng.LocationSender'),(43,5,'myteam.photo.iconosys.eng.LocationSender'),(44,6,'hair.photo.iconosys.eng.LocationSender'),(45,3,'nike.countdown.iconosys.eng.OtherApps$1'),(46,3,'nike.countdown.iconosys.eng.ChristmasTimer$2'),(47,3,'nike.countdown.iconosys.eng.OtherApps$2'),(48,4,'eng.trickersticks.fastestcars.OtherApps$5'),(49,4,'eng.trickersticks.fastestcars.OtherApps$2'),(50,4,'eng.trickersticks.fastestcars.RegistrationScreen$1'),(51,4,'eng.trickersticks.fastestcars.OtherApps$4'),(52,4,'eng.trickersticks.fastestcars.OtherApps$6'),(53,4,'eng.trickersticks.fastestcars.OtherApps$1'),(54,4,'eng.trickersticks.fastestcars.OtherApps$3'),(55,6,'hair.photo.iconosys.eng.RegistrationScreen$1'),(56,6,'hair.photo.iconosys.eng.PhotoView$1'),(57,7,'hearthealth.timer.iconosys.eng.OtherApps$5'),(58,5,'myteam.photo.iconosys.eng.OtherApps$1'),(59,6,'hair.photo.iconosys.eng.OtherApps$5'),(60,5,'myteam.photo.iconosys.eng.RegistrationScreen$1'),(61,5,'myteam.photo.iconosys.eng.OtherApps$6'),(62,7,'hearthealth.timer.iconosys.eng.OtherApps$6'),(63,5,'myteam.photo.iconosys.eng.OtherApps$3'),(64,6,'hair.photo.iconosys.eng.OtherApps$3'),(65,7,'hearthealth.timer.iconosys.eng.OtherApps$1'),(66,5,'myteam.photo.iconosys.eng.OtherApps$4'),(67,6,'hair.photo.iconosys.eng.OtherApps$2'),(68,6,'hair.photo.iconosys.eng.OtherApps$1'),(69,7,'hearthealth.timer.iconosys.eng.RegistrationScreen$1'),(70,5,'myteam.photo.iconosys.eng.MeInJail$2'),(71,6,'hair.photo.iconosys.eng.FrameIt$2'),(72,6,'hair.photo.iconosys.eng.FrameIt$1'),(73,7,'hearthealth.timer.iconosys.eng.OtherApps$2'),(74,7,'hearthealth.timer.iconosys.eng.OtherApps$3'),(75,6,'hair.photo.iconosys.eng.OtherApps$6'),(76,7,'hearthealth.timer.iconosys.eng.OtherApps$4'),(77,5,'myteam.photo.iconosys.eng.OtherApps$2'),(78,6,'hair.photo.iconosys.eng.OtherApps$4'),(79,5,'myteam.photo.iconosys.eng.OtherApps$5'),(80,5,'myteam.photo.iconosys.eng.PhotoView$1'),(81,5,'myteam.photo.iconosys.eng.MeInJail$1');
/*!40000 ALTER TABLE `Classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ComponentExtras`
--

DROP TABLE IF EXISTS `ComponentExtras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ComponentExtras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `component_id` int(11) NOT NULL,
  `extra` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `component_id` (`component_id`),
  CONSTRAINT `ComponentExtras_ibfk_1` FOREIGN KEY (`component_id`) REFERENCES `Components` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,16,'_who'),(2,21,'take_photo'),(3,21,'pick_photo'),(4,38,'saved_uri'),(5,33,'_who'),(6,34,'saved_uri'),(7,19,'take_photo'),(8,41,'_who'),(9,19,'pick_photo'),(10,40,'_who');
/*!40000 ALTER TABLE `ComponentExtras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Components`
--

DROP TABLE IF EXISTS `Components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `kind` char(1) COLLATE utf8mb4_bin NOT NULL,
  `exported` tinyint(1) NOT NULL,
  `permission` int(11) DEFAULT NULL,
  `missing` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_id` (`class_id`),
  KEY `permission` (`permission`),
  CONSTRAINT `Components_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `Classes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `Components_ibfk_2` FOREIGN KEY (`permission`) REFERENCES `PermissionStrings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'s',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'s',0,NULL,NULL),(43,43,'s',0,NULL,NULL),(44,44,'s',0,NULL,NULL);
/*!40000 ALTER TABLE `Components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExitPointComponents`
--

DROP TABLE IF EXISTS `ExitPointComponents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExitPointComponents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exit_id` int(11) NOT NULL,
  `component_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `exit_id` (`exit_id`),
  KEY `component_id` (`component_id`),
  CONSTRAINT `ExitPointComponents_ibfk_1` FOREIGN KEY (`exit_id`) REFERENCES `ExitPoints` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ExitPointComponents_ibfk_2` FOREIGN KEY (`component_id`) REFERENCES `Components` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,4),(3,3,5),(4,4,5),(5,5,7),(6,6,9),(7,7,7),(8,8,9),(9,9,8),(10,10,8),(11,11,7),(12,12,18),(13,13,18),(14,14,12),(15,15,14),(16,16,14),(17,17,12),(18,18,18),(19,19,18),(20,20,12),(21,21,18),(22,22,12),(23,23,14),(24,24,10),(25,25,12),(26,26,18),(27,27,10),(28,28,38),(29,29,17),(30,30,35),(31,31,21),(32,32,21),(33,33,17),(34,34,35),(35,35,21),(36,36,21),(37,37,36),(38,38,27),(39,39,36),(40,39,22),(41,40,24),(42,41,25),(43,42,36),(44,43,26),(45,44,36),(46,44,22),(47,45,31),(48,46,38),(49,47,36),(50,48,19),(51,49,23),(52,50,15),(53,51,21),(54,52,25),(55,53,36),(56,54,17),(57,55,24),(58,56,25),(59,57,26),(60,58,24),(61,59,15),(62,60,25),(63,61,26),(64,62,23),(65,63,36),(66,63,22),(67,64,31),(68,65,21),(69,66,27),(70,67,19),(71,68,26),(72,69,27),(73,70,15),(74,71,17),(75,72,36),(76,73,15),(77,74,17),(78,75,24),(79,76,34),(80,77,17),(81,78,24),(82,79,38),(83,80,36),(84,81,26),(85,82,22),(86,82,36),(87,83,17),(88,84,24),(89,85,17),(90,86,21),(91,87,25),(92,88,35),(93,89,26),(94,90,25),(95,91,19),(96,92,15),(97,93,15),(98,94,34),(99,95,34),(100,96,19),(101,97,19),(102,98,15),(103,99,19),(104,100,19),(105,101,15),(106,102,31),(107,103,19);
/*!40000 ALTER TABLE `ExitPointComponents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExitPoints`
--

DROP TABLE IF EXISTS `ExitPoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExitPoints` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `method` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  `instruction` mediumint(9) NOT NULL,
  `exit_kind` char(1) COLLATE utf8mb4_bin NOT NULL,
  `missing` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_id` (`class_id`),
  CONSTRAINT `ExitPoints_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `Classes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<eng.trickersticks.us.TrickerSticks: void onCreate(android.os.Bundle)>',6,'a',NULL),(2,4,'<mykitty.timer.iconosys.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(3,5,'<mykitty.timer.iconosys.ContactsList: void next()>',3,'p',NULL),(4,5,'<mykitty.timer.iconosys.ContactsList: void onStart()>',4,'p',NULL),(5,7,'<nike.countdown.iconosys.eng.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(6,45,'<nike.countdown.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',8,'a',NULL),(7,46,'<nike.countdown.iconosys.eng.ChristmasTimer$2: void onClick(android.view.View)>',6,'a',NULL),(8,47,'<nike.countdown.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',8,'a',NULL),(9,8,'<nike.countdown.iconosys.eng.ContactsList: void onStart()>',4,'p',NULL),(10,8,'<nike.countdown.iconosys.eng.ContactsList: void next()>',3,'p',NULL),(11,7,'<nike.countdown.iconosys.eng.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(12,48,'<eng.trickersticks.fastestcars.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(13,49,'<eng.trickersticks.fastestcars.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(14,12,'<eng.trickersticks.fastestcars.GlowSticks: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(15,14,'<eng.trickersticks.fastestcars.RegistrationScreen: void SendAutoData()>',93,'s',NULL),(16,50,'<eng.trickersticks.fastestcars.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(17,12,'<eng.trickersticks.fastestcars.GlowSticks: void onCreate(android.os.Bundle)>',14,'a',NULL),(18,51,'<eng.trickersticks.fastestcars.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(19,52,'<eng.trickersticks.fastestcars.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(20,12,'<eng.trickersticks.fastestcars.GlowSticks: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(21,53,'<eng.trickersticks.fastestcars.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(22,12,'<eng.trickersticks.fastestcars.GlowSticks: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(23,14,'<eng.trickersticks.fastestcars.RegistrationScreen: void SendPhoneData()>',97,'s',NULL),(24,10,'<eng.trickersticks.fastestcars.TrickerSticks: void onResume()>',18,'a',NULL),(25,12,'<eng.trickersticks.fastestcars.GlowSticks: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(26,54,'<eng.trickersticks.fastestcars.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(27,10,'<eng.trickersticks.fastestcars.TrickerSticks: void onResume()>',14,'a',NULL),(28,38,'<hair.photo.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(29,17,'<hair.photo.iconosys.eng.FrameIt: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(30,35,'<hair.photo.iconosys.eng.RegistrationScreen: void onCreate(android.os.Bundle)>',110,'a',NULL),(31,21,'<hair.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',26,'a',NULL),(32,21,'<hair.photo.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(33,17,'<hair.photo.iconosys.eng.FrameIt: void onCreate(android.os.Bundle)>',19,'a',NULL),(34,55,'<hair.photo.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(35,56,'<hair.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',38,'a',NULL),(36,21,'<hair.photo.iconosys.eng.PhotoView: void onShareMultipleClicked()>',8,'a',NULL),(37,36,'<hearthealth.timer.iconosys.eng.IconosysActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(38,27,'<hearthealth.timer.iconosys.eng.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(39,36,'<hearthealth.timer.iconosys.eng.IconosysActivity: void onCreate(android.os.Bundle)>',22,'a',NULL),(40,57,'<hearthealth.timer.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(41,58,'<myteam.photo.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(42,36,'<hearthealth.timer.iconosys.eng.IconosysActivity: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(43,59,'<hair.photo.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(44,22,'<hearthealth.timer.iconosys.eng.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(45,60,'<myteam.photo.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(46,38,'<hair.photo.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(47,36,'<hearthealth.timer.iconosys.eng.IconosysActivity: void onActivityResult(int,int,android.content.Intent)>',11,'p',0),(48,19,'<myteam.photo.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(49,23,'<hearthealth.timer.iconosys.eng.ContactsList: void onStart()>',4,'p',NULL),(50,15,'<myteam.photo.iconosys.eng.MeInJail: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(51,21,'<hair.photo.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(52,61,'<myteam.photo.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(53,36,'<hearthealth.timer.iconosys.eng.IconosysActivity: void onActivityResult(int,int,android.content.Intent)>',36,'a',NULL),(54,17,'<hair.photo.iconosys.eng.FrameIt: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(55,62,'<hearthealth.timer.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(56,63,'<myteam.photo.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(57,64,'<hair.photo.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(58,65,'<hearthealth.timer.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(59,15,'<myteam.photo.iconosys.eng.MeInJail: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(60,66,'<myteam.photo.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(61,67,'<hair.photo.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(62,23,'<hearthealth.timer.iconosys.eng.ContactsList: void next()>',3,'p',NULL),(63,22,'<hearthealth.timer.iconosys.eng.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',27,'a',NULL),(64,31,'<myteam.photo.iconosys.eng.RegistrationScreen: void SendAutoData()>',89,'s',NULL),(65,21,'<hair.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',36,'a',NULL),(66,27,'<hearthealth.timer.iconosys.eng.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(67,19,'<myteam.photo.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(68,68,'<hair.photo.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(69,69,'<hearthealth.timer.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(70,70,'<myteam.photo.iconosys.eng.MeInJail$2: void onClick(android.view.View)>',7,'a',NULL),(71,71,'<hair.photo.iconosys.eng.FrameIt$2: void onClick(android.view.View)>',7,'a',NULL),(72,36,'<hearthealth.timer.iconosys.eng.IconosysActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(73,15,'<myteam.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(74,72,'<hair.photo.iconosys.eng.FrameIt$1: void onClick(android.view.View)>',7,'a',NULL),(75,73,'<hearthealth.timer.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(76,34,'<myteam.photo.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(77,17,'<hair.photo.iconosys.eng.FrameIt: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(78,74,'<hearthealth.timer.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(79,38,'<hair.photo.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(80,36,'<hearthealth.timer.iconosys.eng.IconosysActivity: void onActivityResult(int,int,android.content.Intent)>',32,'a',NULL),(81,75,'<hair.photo.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(82,36,'<hearthealth.timer.iconosys.eng.IconosysActivity: void onCreate(android.os.Bundle)>',16,'a',NULL),(83,17,'<hair.photo.iconosys.eng.FrameIt: void onResume()>',14,'a',NULL),(84,76,'<hearthealth.timer.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(85,17,'<hair.photo.iconosys.eng.FrameIt: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(86,21,'<hair.photo.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(87,77,'<myteam.photo.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(88,35,'<hair.photo.iconosys.eng.RegistrationScreen: void SendPhoneData()>',97,'s',NULL),(89,78,'<hair.photo.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(90,79,'<myteam.photo.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(91,80,'<myteam.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',9,'a',NULL),(92,15,'<myteam.photo.iconosys.eng.MeInJail: void onCreate(android.os.Bundle)>',6,'a',NULL),(93,15,'<myteam.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(94,34,'<myteam.photo.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(95,34,'<myteam.photo.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(96,19,'<myteam.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(97,19,'<myteam.photo.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(98,15,'<myteam.photo.iconosys.eng.MeInJail: void onResume()>',14,'a',NULL),(99,19,'<myteam.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',6,'a',NULL),(100,19,'<myteam.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(101,81,'<myteam.photo.iconosys.eng.MeInJail$1: void onClick(android.view.View)>',7,'a',NULL),(102,31,'<myteam.photo.iconosys.eng.RegistrationScreen: void SendPhoneData()>',93,'s',NULL),(103,80,'<myteam.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',23,'a',NULL);
/*!40000 ALTER TABLE `ExitPoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Extras`
--

DROP TABLE IF EXISTS `Extras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Extras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method` varchar(512) NOT NULL,
  `type` varchar(512) DEFAULT NULL,
  `extra` varchar(512) NOT NULL,
  `reserved` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Extras`
--

LOCK TABLES `Extras` WRITE;
/*!40000 ALTER TABLE `Extras` DISABLE KEYS */;
/*!40000 ALTER TABLE `Extras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IActions`
--

DROP TABLE IF EXISTS `IActions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IActions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `action` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  KEY `action` (`action`),
  CONSTRAINT `IActions_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `IActions_ibfk_2` FOREIGN KEY (`action`) REFERENCES `ActionStrings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,2),(2,5,2),(3,6,2),(4,8,2),(5,9,2),(6,13,2),(7,14,2),(8,16,2),(9,19,4),(10,20,2),(11,22,5),(12,23,5),(13,24,5),(14,25,5),(15,26,5),(16,27,5),(17,28,5),(18,29,5),(19,32,6),(20,36,5),(21,37,5),(22,38,4),(23,39,5),(24,40,5),(25,42,5),(26,44,5),(27,45,5),(28,46,2),(29,47,5),(30,48,2),(31,49,2),(32,53,7),(33,55,2),(34,56,4),(35,57,2),(36,58,2),(37,59,2),(38,60,2),(39,61,2),(40,62,2),(41,67,7),(42,68,2),(43,73,4),(44,75,2),(45,76,5),(46,77,5),(47,78,2),(48,79,5),(49,82,5),(50,83,2),(51,84,5),(52,86,5),(53,88,5),(54,89,2),(55,91,5),(56,92,2),(57,94,2),(58,95,2),(59,102,6);
/*!40000 ALTER TABLE `IActions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ICategories`
--

DROP TABLE IF EXISTS `ICategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ICategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  KEY `category` (`category`),
  CONSTRAINT `ICategories_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ICategories_ibfk_2` FOREIGN KEY (`category`) REFERENCES `CategoryStrings` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ICategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IClasses`
--

DROP TABLE IF EXISTS `IClasses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IClasses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `class` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  CONSTRAINT `IClasses_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'eng/trickersticks/us/GlowSticks'),(2,2,'mykitty/timer/iconosys/ContactsList'),(3,3,'nike/countdown/iconosys/eng/ContactsList'),(4,7,'nike/countdown/iconosys/eng/OtherApps'),(5,10,'eng/trickersticks/fastestcars/LocationSender'),(6,11,'eng/trickersticks/fastestcars/ShowTerms'),(7,12,'eng/trickersticks/fastestcars/AdView'),(8,15,'eng/trickersticks/fastestcars/OtherApps'),(9,17,'eng/trickersticks/fastestcars/LocationSender'),(10,18,'eng/trickersticks/fastestcars/GlowSticks'),(11,21,'eng/trickersticks/fastestcars/RegistrationScreen'),(12,30,'hair/photo/iconosys/eng/AdView'),(13,31,'hair/photo/iconosys/eng/OtherApps'),(14,33,'hair/photo/iconosys/eng/AdView'),(15,34,'hair/photo/iconosys/eng/ShowTerms'),(16,35,'hair/photo/iconosys/eng/ShareImage'),(17,41,'hearthealth/timer/iconosys/eng/LocationSender'),(18,43,'hearthealth/timer/iconosys/eng/AdView'),(19,50,'hearthealth/timer/iconosys/eng/ContactsList'),(20,51,'myteam/photo/iconosys/eng/ShowTerms'),(21,52,'hair/photo/iconosys/eng/OtherApps'),(22,54,'hearthealth/timer/iconosys/eng/AdView'),(23,63,'hearthealth/timer/iconosys/eng/OtherApps'),(24,64,'myteam/photo/iconosys/eng/LocationSender'),(25,65,'hair/photo/iconosys/eng/FrameIt'),(26,66,'hearthealth/timer/iconosys/eng/LocationSender'),(27,69,'hearthealth/timer/iconosys/eng/ShowTerms'),(28,70,'myteam/photo/iconosys/eng/PhotoView'),(29,71,'hair/photo/iconosys/eng/PhotoView'),(30,72,'hearthealth/timer/iconosys/eng/OtherApps'),(31,74,'hair/photo/iconosys/eng/PhotoView'),(32,80,'hair/photo/iconosys/eng/AdView'),(33,81,'hearthealth/timer/iconosys/eng/RegistrationScreen'),(34,85,'hearthealth/timer/iconosys/eng/RegistrationScreen'),(35,87,'hair/photo/iconosys/eng/RegistrationScreen'),(36,90,'hair/photo/iconosys/eng/OtherApps'),(37,93,'hair/photo/iconosys/eng/LocationSender'),(38,96,'myteam/photo/iconosys/eng/ShowPopUp'),(39,97,'myteam/photo/iconosys/eng/AdView'),(40,98,'myteam/photo/iconosys/eng/OtherApps'),(41,99,'myteam/photo/iconosys/eng/AdView'),(42,100,'myteam/photo/iconosys/eng/OtherApps'),(43,101,'myteam/photo/iconosys/eng/OtherApps'),(44,103,'myteam/photo/iconosys/eng/RegistrationScreen'),(45,104,'myteam/photo/iconosys/eng/ShowPopUp'),(46,105,'myteam/photo/iconosys/eng/MeInJail'),(47,106,'myteam/photo/iconosys/eng/PhotoView'),(48,107,'myteam/photo/iconosys/eng/LocationSender'),(49,108,'myteam/photo/iconosys/eng/ShareImage');
/*!40000 ALTER TABLE `IClasses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IData`
--

DROP TABLE IF EXISTS `IData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IData` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  KEY `data` (`data`),
  CONSTRAINT `IData_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `IData_ibfk_2` FOREIGN KEY (`data`) REFERENCES `UriData` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,4,3),(2,5,4),(3,6,5),(4,8,8),(5,9,9),(6,13,11),(7,14,12),(8,16,13),(9,19,14),(10,20,15),(11,38,16),(12,46,17),(13,48,19),(14,49,20),(15,55,22),(16,56,23),(17,57,24),(18,58,25),(19,59,27),(20,60,28),(21,61,30),(22,62,31),(23,68,32),(24,73,33),(25,75,34),(26,78,36),(27,83,37),(28,89,38),(29,92,39),(30,94,40),(31,95,41);
/*!40000 ALTER TABLE `IData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IExtras`
--

DROP TABLE IF EXISTS `IExtras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IExtras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `extra` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  CONSTRAINT `IExtras_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,22,'android.intent.extra.INTENT'),(2,23,'android.intent.extra.INTENT'),(3,24,'android.intent.extra.TITLE'),(4,24,'android.intent.extra.INTENT'),(5,25,'android.intent.extra.INTENT'),(6,26,'android.intent.extra.TITLE'),(7,26,'android.intent.extra.INTENT'),(8,27,'android.intent.extra.INTENT'),(9,28,'android.intent.extra.TITLE'),(10,28,'android.intent.extra.INTENT'),(11,29,'android.intent.extra.TITLE'),(12,29,'android.intent.extra.INTENT'),(13,32,'output'),(14,35,'saved_uri'),(15,36,'android.intent.extra.INTENT'),(16,37,'android.intent.extra.INTENT'),(17,39,'android.intent.extra.TITLE'),(18,39,'android.intent.extra.INTENT'),(19,40,'android.intent.extra.INTENT'),(20,42,'android.intent.extra.TITLE'),(21,42,'android.intent.extra.INTENT'),(22,44,'android.intent.extra.INTENT'),(23,45,'android.intent.extra.TITLE'),(24,45,'android.intent.extra.INTENT'),(25,47,'android.intent.extra.TITLE'),(26,47,'android.intent.extra.INTENT'),(27,70,'pick_photo'),(28,71,'pick_photo'),(29,74,'take_photo'),(30,76,'android.intent.extra.INTENT'),(31,77,'android.intent.extra.INTENT'),(32,79,'android.intent.extra.TITLE'),(33,79,'android.intent.extra.INTENT'),(34,82,'android.intent.extra.INTENT'),(35,84,'android.intent.extra.TITLE'),(36,84,'android.intent.extra.INTENT'),(37,86,'android.intent.extra.INTENT'),(38,88,'android.intent.extra.TITLE'),(39,88,'android.intent.extra.INTENT'),(40,91,'android.intent.extra.TITLE'),(41,91,'android.intent.extra.INTENT'),(42,102,'output'),(43,106,'take_photo'),(44,108,'saved_uri');
/*!40000 ALTER TABLE `IExtras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IFActions`
--

DROP TABLE IF EXISTS `IFActions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IFActions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_id` int(11) NOT NULL,
  `action` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filter_id` (`filter_id`),
  KEY `action_idx` (`action`) USING HASH,
  CONSTRAINT `IFActions_ibfk_1` FOREIGN KEY (`filter_id`) REFERENCES `IntentFilters` (`id`) ON DELETE CASCADE,
  CONSTRAINT `IFActions_ibfk_2` FOREIGN KEY (`action`) REFERENCES `ActionStrings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,2),(7,7,1),(8,8,1),(9,9,1),(10,10,3),(11,11,3),(12,12,1),(13,13,1);
/*!40000 ALTER TABLE `IFActions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IFCategories`
--

DROP TABLE IF EXISTS `IFCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IFCategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filter_id` (`filter_id`),
  KEY `category_idx` (`category`) USING HASH,
  CONSTRAINT `IFCategories_ibfk_1` FOREIGN KEY (`filter_id`) REFERENCES `IntentFilters` (`id`) ON DELETE CASCADE,
  CONSTRAINT `IFCategories_ibfk_2` FOREIGN KEY (`category`) REFERENCES `CategoryStrings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,4,1),(4,6,2),(5,7,1),(6,8,1),(7,9,1),(8,10,2),(9,11,2),(10,12,1);
/*!40000 ALTER TABLE `IFCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IFData`
--

DROP TABLE IF EXISTS `IFData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IFData` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_id` int(11) DEFAULT NULL,
  `scheme` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `host` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `port` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `path` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `type` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `subtype` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `filter_id` (`filter_id`),
  CONSTRAINT `IFData_ibfk_1` FOREIGN KEY (`filter_id`) REFERENCES `IntentFilters` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,10,'sms',NULL,NULL,NULL,NULL,NULL),(2,10,'mms',NULL,NULL,NULL,NULL,NULL),(3,11,'sms',NULL,NULL,NULL,NULL,NULL),(4,10,'mmsto',NULL,NULL,NULL,NULL,NULL),(5,11,'mms',NULL,NULL,NULL,NULL,NULL),(6,11,'mmsto',NULL,NULL,NULL,NULL,NULL),(7,10,NULL,NULL,NULL,NULL,'image','*'),(8,10,NULL,NULL,NULL,NULL,'video','*'),(9,11,NULL,NULL,NULL,NULL,'image','*'),(10,11,NULL,NULL,NULL,NULL,'video','*'),(11,10,NULL,NULL,NULL,NULL,'audio','*'),(12,11,NULL,NULL,NULL,NULL,'audio','*');
/*!40000 ALTER TABLE `IFData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IFMimeTypes`
--

DROP TABLE IF EXISTS `IFMimeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IFMimeTypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_id` int(11) NOT NULL,
  `type` varchar(512) NOT NULL,
  `subtype` varchar(512) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filter_id` (`filter_id`),
  KEY `type_idx` (`type`,`subtype`),
  CONSTRAINT `IFMimeTypes_ibfk_1` FOREIGN KEY (`filter_id`) REFERENCES `IntentFilters` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFMimeTypes`
--

LOCK TABLES `IFMimeTypes` WRITE;
/*!40000 ALTER TABLE `IFMimeTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `IFMimeTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IMimeTypes`
--

DROP TABLE IF EXISTS `IMimeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IMimeTypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  `subtype` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  KEY `type_idx` (`type`),
  KEY `subtype_idx` (`subtype`),
  CONSTRAINT `IMimeTypes_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,53,'image','*'),(2,67,'image','*');
/*!40000 ALTER TABLE `IMimeTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IPackages`
--

DROP TABLE IF EXISTS `IPackages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IPackages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `package` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  CONSTRAINT `IPackages_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'eng.trickersticks.us'),(2,2,'mykitty.timer.iconosys'),(3,3,'nike.countdown.iconosys.eng'),(4,7,'nike.countdown.iconosys.eng'),(5,10,'eng.trickersticks.fastestcars'),(6,11,'eng.trickersticks.fastestcars'),(7,12,'eng.trickersticks.fastestcars'),(8,15,'eng.trickersticks.fastestcars'),(9,17,'eng.trickersticks.fastestcars'),(10,18,'eng.trickersticks.fastestcars'),(11,21,'eng.trickersticks.fastestcars'),(12,30,'hair.photo.iconosys.eng'),(13,31,'hair.photo.iconosys.eng'),(14,33,'hair.photo.iconosys.eng'),(15,34,'hair.photo.iconosys.eng'),(16,35,'hair.photo.iconosys.eng'),(17,41,'hearthealth.timer.iconosys.eng'),(18,43,'hearthealth.timer.iconosys.eng'),(19,50,'hearthealth.timer.iconosys.eng'),(20,51,'myteam.photo.iconosys.eng'),(21,52,'hair.photo.iconosys.eng'),(22,54,'hearthealth.timer.iconosys.eng'),(23,63,'hearthealth.timer.iconosys.eng'),(24,64,'myteam.photo.iconosys.eng'),(25,65,'hair.photo.iconosys.eng'),(26,66,'hearthealth.timer.iconosys.eng'),(27,69,'hearthealth.timer.iconosys.eng'),(28,70,'myteam.photo.iconosys.eng'),(29,71,'hair.photo.iconosys.eng'),(30,72,'hearthealth.timer.iconosys.eng'),(31,74,'hair.photo.iconosys.eng'),(32,80,'hair.photo.iconosys.eng'),(33,81,'hearthealth.timer.iconosys.eng'),(34,85,'hearthealth.timer.iconosys.eng'),(35,87,'hair.photo.iconosys.eng'),(36,90,'hair.photo.iconosys.eng'),(37,93,'hair.photo.iconosys.eng'),(38,96,'myteam.photo.iconosys.eng'),(39,97,'myteam.photo.iconosys.eng'),(40,98,'myteam.photo.iconosys.eng'),(41,99,'myteam.photo.iconosys.eng'),(42,100,'myteam.photo.iconosys.eng'),(43,101,'myteam.photo.iconosys.eng'),(44,103,'myteam.photo.iconosys.eng'),(45,104,'myteam.photo.iconosys.eng'),(46,105,'myteam.photo.iconosys.eng'),(47,106,'myteam.photo.iconosys.eng'),(48,107,'myteam.photo.iconosys.eng'),(49,108,'myteam.photo.iconosys.eng');
/*!40000 ALTER TABLE `IPackages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IccStmts`
--

DROP TABLE IF EXISTS `IccStmts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IccStmts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exit_id` int(11) NOT NULL,
  `stmt_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IccStmts`
--

LOCK TABLES `IccStmts` WRITE;
/*!40000 ALTER TABLE `IccStmts` DISABLE KEYS */;
/*!40000 ALTER TABLE `IccStmts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IntentFilters`
--

DROP TABLE IF EXISTS `IntentFilters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IntentFilters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `component_id` int(11) NOT NULL,
  `alias` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `c_id_idx` (`component_id`) USING HASH,
  CONSTRAINT `IntentFilters_ibfk_1` FOREIGN KEY (`component_id`) REFERENCES `Components` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,5,0),(4,7,0),(5,8,0),(6,9,0),(7,10,0),(8,15,0),(9,17,0),(10,19,0),(11,21,0),(12,22,0),(13,23,0);
/*!40000 ALTER TABLE `IntentFilters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IntentPermissions`
--

DROP TABLE IF EXISTS `IntentPermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IntentPermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exit_id` int(11) NOT NULL,
  `i_permission` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `exit_id` (`exit_id`),
  KEY `i_permission` (`i_permission`),
  CONSTRAINT `IntentPermissions_ibfk_1` FOREIGN KEY (`exit_id`) REFERENCES `ExitPoints` (`id`) ON DELETE CASCADE,
  CONSTRAINT `IntentPermissions_ibfk_2` FOREIGN KEY (`i_permission`) REFERENCES `PermissionStrings` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentPermissions`
--

LOCK TABLES `IntentPermissions` WRITE;
/*!40000 ALTER TABLE `IntentPermissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `IntentPermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Intents`
--

DROP TABLE IF EXISTS `Intents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Intents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exit_id` int(11) NOT NULL,
  `implicit` tinyint(1) NOT NULL,
  `alias` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `exit_id` (`exit_id`),
  CONSTRAINT `Intents_ibfk_1` FOREIGN KEY (`exit_id`) REFERENCES `ExitPoints` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,5,0,0),(4,6,1,0),(5,7,1,0),(6,8,1,0),(7,11,0,0),(8,12,1,0),(9,13,1,0),(10,15,0,0),(11,16,0,0),(12,17,0,0),(13,18,1,0),(14,19,1,0),(15,20,0,0),(16,21,1,0),(17,23,0,0),(18,24,0,0),(19,25,1,0),(20,26,1,0),(21,27,0,0),(22,28,1,0),(23,28,1,0),(24,28,1,0),(25,28,1,0),(26,28,1,0),(27,28,1,0),(28,28,1,0),(29,28,1,0),(30,30,0,0),(31,31,0,0),(32,32,1,0),(33,33,0,0),(34,34,0,0),(35,35,0,0),(36,36,1,0),(37,36,1,0),(38,37,1,0),(39,36,1,0),(40,36,1,0),(41,38,0,0),(42,36,1,0),(43,39,0,0),(44,36,1,0),(45,36,1,0),(46,40,1,0),(47,36,1,0),(48,41,1,0),(49,43,1,0),(50,44,0,0),(51,45,0,0),(52,46,0,0),(53,51,1,0),(54,53,0,0),(55,52,1,0),(56,54,1,0),(57,55,1,0),(58,56,1,0),(59,57,1,0),(60,58,1,0),(61,60,1,0),(62,61,1,0),(63,63,0,0),(64,64,0,0),(65,65,0,0),(66,66,0,0),(67,67,1,0),(68,68,1,0),(69,69,0,0),(70,70,0,0),(71,71,0,0),(72,72,0,0),(73,73,1,0),(74,74,0,0),(75,75,1,0),(76,76,1,0),(77,76,1,0),(78,78,1,0),(79,76,1,0),(80,79,0,0),(81,80,0,0),(82,76,1,0),(83,81,1,0),(84,76,1,0),(85,82,0,0),(86,76,1,0),(87,83,0,0),(88,76,1,0),(89,84,1,0),(90,85,0,0),(91,76,1,0),(92,87,1,0),(93,88,0,0),(94,89,1,0),(95,90,1,0),(96,91,0,0),(97,92,0,0),(98,93,0,0),(99,94,0,0),(100,95,0,0),(101,96,0,0),(102,97,1,0),(103,98,0,0),(104,99,0,0),(105,100,0,0),(106,101,0,0),(107,102,0,0),(108,103,0,0);
/*!40000 ALTER TABLE `Intents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Links`
--

DROP TABLE IF EXISTS `Links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `component_id` int(11) NOT NULL,
  `type` int(11) DEFAULT '0',
  `reserved` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=325 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,50,23,2,NULL),(2,63,24,2,NULL),(3,102,22,2,NULL),(4,76,22,2,NULL),(5,77,22,2,NULL),(6,79,22,2,NULL),(7,82,22,2,NULL),(8,84,22,2,NULL),(9,86,22,2,NULL),(10,88,22,2,NULL),(11,91,22,2,NULL),(12,32,22,2,NULL),(13,36,22,2,NULL),(14,37,22,2,NULL),(15,39,22,2,NULL),(16,40,22,2,NULL),(17,42,22,2,NULL),(18,44,22,2,NULL),(19,45,22,2,NULL),(20,47,22,2,NULL),(21,22,22,2,NULL),(22,23,22,2,NULL),(23,24,22,2,NULL),(24,25,22,2,NULL),(25,26,22,2,NULL),(26,27,22,2,NULL),(27,28,22,2,NULL),(28,29,22,2,NULL),(29,102,23,2,NULL),(30,76,23,2,NULL),(31,77,23,2,NULL),(32,79,23,2,NULL),(33,82,23,2,NULL),(34,84,23,2,NULL),(35,86,23,2,NULL),(36,88,23,2,NULL),(37,91,23,2,NULL),(38,32,23,2,NULL),(39,36,23,2,NULL),(40,37,23,2,NULL),(41,39,23,2,NULL),(42,40,23,2,NULL),(43,42,23,2,NULL),(44,44,23,2,NULL),(45,45,23,2,NULL),(46,47,23,2,NULL),(47,22,23,2,NULL),(48,23,23,2,NULL),(49,24,23,2,NULL),(50,25,23,2,NULL),(51,26,23,2,NULL),(52,27,23,2,NULL),(53,28,23,2,NULL),(54,29,23,2,NULL),(55,41,42,2,NULL),(56,66,42,2,NULL),(57,43,33,2,NULL),(58,54,33,2,NULL),(59,72,24,2,NULL),(60,81,27,2,NULL),(61,85,27,2,NULL),(62,97,40,2,NULL),(63,98,25,2,NULL),(64,103,31,2,NULL),(65,102,15,2,NULL),(66,76,15,2,NULL),(67,77,15,2,NULL),(68,79,15,2,NULL),(69,82,15,2,NULL),(70,84,15,2,NULL),(71,86,15,2,NULL),(72,88,15,2,NULL),(73,91,15,2,NULL),(74,32,15,2,NULL),(75,36,15,2,NULL),(76,37,15,2,NULL),(77,39,15,2,NULL),(78,40,15,2,NULL),(79,42,15,2,NULL),(80,44,15,2,NULL),(81,45,15,2,NULL),(82,47,15,2,NULL),(83,22,15,2,NULL),(84,23,15,2,NULL),(85,24,15,2,NULL),(86,25,15,2,NULL),(87,26,15,2,NULL),(88,27,15,2,NULL),(89,28,15,2,NULL),(90,29,15,2,NULL),(91,101,25,2,NULL),(92,104,37,2,NULL),(93,105,15,2,NULL),(94,102,1,2,NULL),(95,102,4,2,NULL),(96,102,5,2,NULL),(97,102,7,2,NULL),(98,102,8,2,NULL),(99,102,9,2,NULL),(100,102,10,2,NULL),(101,102,17,2,NULL),(102,64,43,2,NULL),(103,107,43,2,NULL),(104,99,40,2,NULL),(105,100,25,2,NULL),(106,76,1,2,NULL),(107,77,1,2,NULL),(108,79,1,2,NULL),(109,82,1,2,NULL),(110,84,1,2,NULL),(111,86,1,2,NULL),(112,88,1,2,NULL),(113,91,1,2,NULL),(114,76,4,2,NULL),(115,77,4,2,NULL),(116,79,4,2,NULL),(117,82,4,2,NULL),(118,84,4,2,NULL),(119,86,4,2,NULL),(120,88,4,2,NULL),(121,91,4,2,NULL),(122,76,5,2,NULL),(123,77,5,2,NULL),(124,3,8,2,NULL),(125,79,5,2,NULL),(126,7,9,2,NULL),(127,82,5,2,NULL),(128,76,7,2,NULL),(129,84,5,2,NULL),(130,77,7,2,NULL),(131,86,5,2,NULL),(132,79,7,2,NULL),(133,88,5,2,NULL),(134,82,7,2,NULL),(135,91,5,2,NULL),(136,84,7,2,NULL),(137,86,7,2,NULL),(138,88,7,2,NULL),(139,91,7,2,NULL),(140,32,7,2,NULL),(141,76,8,2,NULL),(142,36,7,2,NULL),(143,77,8,2,NULL),(144,2,5,2,NULL),(145,37,7,2,NULL),(146,79,8,2,NULL),(147,39,7,2,NULL),(148,32,4,2,NULL),(149,82,8,2,NULL),(150,40,7,2,NULL),(151,84,8,2,NULL),(152,36,4,2,NULL),(153,42,7,2,NULL),(154,86,8,2,NULL),(155,37,4,2,NULL),(156,44,7,2,NULL),(157,88,8,2,NULL),(158,39,4,2,NULL),(159,45,7,2,NULL),(160,91,8,2,NULL),(161,40,4,2,NULL),(162,47,7,2,NULL),(163,76,9,2,NULL),(164,42,4,2,NULL),(165,22,7,2,NULL),(166,77,9,2,NULL),(167,44,4,2,NULL),(168,23,7,2,NULL),(169,79,9,2,NULL),(170,45,4,2,NULL),(171,24,7,2,NULL),(172,82,9,2,NULL),(173,47,4,2,NULL),(174,25,7,2,NULL),(175,84,9,2,NULL),(176,26,7,2,NULL),(177,22,4,2,NULL),(178,86,9,2,NULL),(179,27,7,2,NULL),(180,23,4,2,NULL),(181,88,9,2,NULL),(182,28,7,2,NULL),(183,24,4,2,NULL),(184,91,9,2,NULL),(185,29,7,2,NULL),(186,25,4,2,NULL),(187,76,10,2,NULL),(188,26,4,2,NULL),(189,32,8,2,NULL),(190,77,10,2,NULL),(191,27,4,2,NULL),(192,79,10,2,NULL),(193,36,8,2,NULL),(194,28,4,2,NULL),(195,82,10,2,NULL),(196,37,8,2,NULL),(197,29,4,2,NULL),(198,84,10,2,NULL),(199,39,8,2,NULL),(200,32,5,2,NULL),(201,86,10,2,NULL),(202,40,8,2,NULL),(203,36,5,2,NULL),(204,88,10,2,NULL),(205,42,8,2,NULL),(206,37,5,2,NULL),(207,91,10,2,NULL),(208,44,8,2,NULL),(209,39,5,2,NULL),(210,76,17,2,NULL),(211,45,8,2,NULL),(212,40,5,2,NULL),(213,77,17,2,NULL),(214,47,8,2,NULL),(215,42,5,2,NULL),(216,79,17,2,NULL),(217,22,8,2,NULL),(218,44,5,2,NULL),(219,82,17,2,NULL),(220,23,8,2,NULL),(221,45,5,2,NULL),(222,84,17,2,NULL),(223,24,8,2,NULL),(224,47,5,2,NULL),(225,86,17,2,NULL),(226,25,8,2,NULL),(227,22,5,2,NULL),(228,88,17,2,NULL),(229,26,8,2,NULL),(230,23,5,2,NULL),(231,91,17,2,NULL),(232,27,8,2,NULL),(233,24,5,2,NULL),(234,28,8,2,NULL),(235,25,5,2,NULL),(236,29,8,2,NULL),(237,26,5,2,NULL),(238,32,9,2,NULL),(239,27,5,2,NULL),(240,36,9,2,NULL),(241,28,5,2,NULL),(242,37,9,2,NULL),(243,29,5,2,NULL),(244,39,9,2,NULL),(245,40,9,2,NULL),(246,42,9,2,NULL),(247,44,9,2,NULL),(248,45,9,2,NULL),(249,47,9,2,NULL),(250,22,9,2,NULL),(251,23,9,2,NULL),(252,24,9,2,NULL),(253,25,9,2,NULL),(254,26,9,2,NULL),(255,27,9,2,NULL),(256,28,9,2,NULL),(257,29,9,2,NULL),(258,33,41,2,NULL),(259,87,35,2,NULL),(260,90,26,2,NULL),(261,32,17,2,NULL),(262,36,17,2,NULL),(263,1,2,2,NULL),(264,37,17,2,NULL),(265,32,1,2,NULL),(266,39,17,2,NULL),(267,36,1,2,NULL),(268,40,17,2,NULL),(269,37,1,2,NULL),(270,42,17,2,NULL),(271,39,1,2,NULL),(272,44,17,2,NULL),(273,40,1,2,NULL),(274,45,17,2,NULL),(275,42,1,2,NULL),(276,47,17,2,NULL),(277,44,1,2,NULL),(278,22,17,2,NULL),(279,45,1,2,NULL),(280,23,17,2,NULL),(281,47,1,2,NULL),(282,24,17,2,NULL),(283,22,1,2,NULL),(284,25,17,2,NULL),(285,23,1,2,NULL),(286,26,17,2,NULL),(287,24,1,2,NULL),(288,27,17,2,NULL),(289,25,1,2,NULL),(290,28,17,2,NULL),(291,26,1,2,NULL),(292,29,17,2,NULL),(293,27,1,2,NULL),(294,31,26,2,NULL),(295,28,1,2,NULL),(296,65,17,2,NULL),(297,29,1,2,NULL),(298,32,10,2,NULL),(299,36,10,2,NULL),(300,37,10,2,NULL),(301,39,10,2,NULL),(302,40,10,2,NULL),(303,42,10,2,NULL),(304,44,10,2,NULL),(305,45,10,2,NULL),(306,47,10,2,NULL),(307,30,41,2,NULL),(308,93,44,2,NULL),(309,52,26,2,NULL),(310,80,41,2,NULL),(311,22,10,2,NULL),(312,23,10,2,NULL),(313,24,10,2,NULL),(314,25,10,2,NULL),(315,26,10,2,NULL),(316,27,10,2,NULL),(317,28,10,2,NULL),(318,29,10,2,NULL),(319,18,12,2,NULL),(320,21,14,2,NULL),(321,12,16,2,NULL),(322,15,18,2,NULL),(323,10,20,2,NULL),(324,17,20,2,NULL);
/*!40000 ALTER TABLE `Links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAuthorities`
--

DROP TABLE IF EXISTS `PAuthorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PAuthorities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_id` int(11) NOT NULL,
  `authority` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `provider_id` (`provider_id`),
  CONSTRAINT `PAuthorities_ibfk_1` FOREIGN KEY (`provider_id`) REFERENCES `Providers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
/*!40000 ALTER TABLE `PAuthorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Paths`
--

DROP TABLE IF EXISTS `Paths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Paths` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `sink` int(11) NOT NULL,
  `paths` text,
  `type` varchar(512) NOT NULL,
  `icc` int(11) NOT NULL,
  `reserved` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Paths`
--

LOCK TABLES `Paths` WRITE;
/*!40000 ALTER TABLE `Paths` DISABLE KEYS */;
/*!40000 ALTER TABLE `Paths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionStrings`
--

DROP TABLE IF EXISTS `PermissionStrings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionStrings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `st` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `st` (`st`),
  KEY `st_idx` (`st`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (9,'android.permission.ACCESS_COARSE_LOCATION'),(7,'android.permission.ACCESS_FINE_LOCATION'),(12,'android.permission.CAMERA'),(10,'android.permission.GET_ACCOUNTS'),(3,'android.permission.INTERNET'),(4,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(5,'android.permission.READ_SMS'),(2,'android.permission.SEND_SMS'),(11,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(8,'android.permission.WRITE_SMS');
/*!40000 ALTER TABLE `PermissionStrings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Permissions`
--

DROP TABLE IF EXISTS `Permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Permissions` (
  `id` int(11) NOT NULL,
  `level` char(1) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`,`level`),
  CONSTRAINT `Permissions_ibfk_1` FOREIGN KEY (`id`) REFERENCES `PermissionStrings` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Permissions`
--

LOCK TABLES `Permissions` WRITE;
/*!40000 ALTER TABLE `Permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `Permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProviderLinks`
--

DROP TABLE IF EXISTS `ProviderLinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProviderLinks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src_component_id` int(11) NOT NULL,
  `dest_component_id` int(11) NOT NULL,
  `reserved` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProviderLinks`
--

LOCK TABLES `ProviderLinks` WRITE;
/*!40000 ALTER TABLE `ProviderLinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProviderLinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Providers`
--

DROP TABLE IF EXISTS `Providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Providers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `component_id` int(11) NOT NULL,
  `grant_uri_permissions` tinyint(1) NOT NULL,
  `read_permission` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  `write_permission` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `component_id` (`component_id`),
  CONSTRAINT `Providers_ibfk_1` FOREIGN KEY (`component_id`) REFERENCES `Components` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
/*!40000 ALTER TABLE `Providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stmts`
--

DROP TABLE IF EXISTS `Stmts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stmts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stmt` varchar(512) NOT NULL,
  `method` varchar(512) NOT NULL,
  `class_id` int(11) NOT NULL,
  `jimpleIndex` int(11) NOT NULL,
  `isIcc` tinyint(1) NOT NULL,
  `type` varchar(512) NOT NULL,
  `reserved` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stmts`
--

LOCK TABLES `Stmts` WRITE;
/*!40000 ALTER TABLE `Stmts` DISABLE KEYS */;
/*!40000 ALTER TABLE `Stmts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UriData`
--

DROP TABLE IF EXISTS `UriData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UriData` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scheme` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `ssp` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `uri` longtext COLLATE utf8mb4_bin,
  `path` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `query` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  `authority` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(2,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'http://registration.nike3on3.com/',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(7,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(8,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(9,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(10,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(11,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(12,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(13,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(14,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(15,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(16,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(17,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(18,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(19,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(20,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(21,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(22,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(23,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(24,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(25,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(26,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(27,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(28,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(29,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(30,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(31,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(32,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(33,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(34,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(35,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(36,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(37,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(38,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(39,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(40,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(41,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL);
/*!40000 ALTER TABLE `UriData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Uris`
--

DROP TABLE IF EXISTS `Uris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Uris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exit_id` int(11) NOT NULL,
  `data` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exit_id` (`exit_id`),
  KEY `data` (`data`),
  CONSTRAINT `Uris_ibfk_1` FOREIGN KEY (`exit_id`) REFERENCES `ExitPoints` (`id`) ON DELETE CASCADE,
  CONSTRAINT `Uris_ibfk_2` FOREIGN KEY (`data`) REFERENCES `UriData` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,3,1),(2,4,2),(3,9,6),(4,10,7),(5,14,10),(6,42,18),(7,49,21),(8,59,26),(9,62,29),(10,77,35);
/*!40000 ALTER TABLE `Uris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UsesPermissions`
--

DROP TABLE IF EXISTS `UsesPermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UsesPermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `uses_permission` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_id` (`app_id`),
  KEY `uses_permission_idx` (`uses_permission`) USING HASH,
  CONSTRAINT `UsesPermissions_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `Applications` (`id`) ON DELETE CASCADE,
  CONSTRAINT `UsesPermissions_ibfk_2` FOREIGN KEY (`uses_permission`) REFERENCES `PermissionStrings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,2,3),(7,2,4),(8,3,1),(9,3,2),(10,3,3),(11,3,4),(12,4,1),(13,4,2),(14,4,3),(15,4,4),(16,4,5),(17,4,6),(18,4,7),(19,4,8),(20,4,9),(21,5,1),(22,5,2),(23,4,10),(24,5,3),(25,4,11),(26,5,4),(27,6,1),(28,5,5),(29,6,2),(30,5,6),(31,6,3),(32,5,7),(33,6,4),(34,6,5),(35,5,8),(36,5,9),(37,6,6),(38,5,10),(39,6,7),(40,6,8),(41,5,11),(42,7,1),(43,6,9),(44,5,12),(45,7,2),(46,6,11),(47,7,3),(48,6,12),(49,7,4),(50,7,6),(51,7,7),(52,7,9),(53,7,10),(54,7,11);
/*!40000 ALTER TABLE `UsesPermissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-12  3:30:40
