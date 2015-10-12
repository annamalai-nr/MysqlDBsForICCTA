-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_475
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (5,'android.intent.action.CHOOSER'),(6,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(4,'android.intent.action.PICK'),(3,'android.intent.action.SENDTO'),(2,'android.intent.action.VIEW'),(7,'android.media.action.IMAGE_CAPTURE'),(8,'android.settings.LOCATION_SOURCE_SETTINGS'),(9,'com.speed.iconosys');
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
INSERT INTO `Applications` VALUES (1,'com.iconosys.clubstrobe',7),(2,'celebratethefourthphoto.photo.iconosys.eng',1),(3,'myheels.photo.iconosys.eng',4),(4,'wantedcowboy.photo.iconosys.eng',5),(5,'funnyfacebooth.iconosys.eng',3),(6,'maxspeed.iconosys.eng',4),(7,'eventbuzzer.iconosys.eng',3);
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
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.iconosys.clubstrobe.NewYearsStrobe'),(2,1,'com.iconosys.clubstrobe.Preferences'),(3,1,'com.iconosys.clubstrobe.RegistrationScreen'),(4,1,'com.iconosys.clubstrobe.ShowTerms'),(5,1,'com.iconosys.clubstrobe.OtherApps'),(6,2,'celebratethefourthphoto.photo.iconosys.eng.MeInJail'),(7,3,'myheels.photo.iconosys.eng.FrameIt'),(8,1,'com.iconosys.clubstrobe.AdView'),(9,2,'celebratethefourthphoto.photo.iconosys.eng.PhotoView'),(10,3,'myheels.photo.iconosys.eng.PhotoView'),(11,6,'maxspeed.iconosys.eng.MyMaxSpeed'),(12,4,'wantedcowboy.photo.iconosys.eng.MeInJail'),(13,5,'funnyfacebooth.iconosys.eng.FrameIt'),(14,6,'maxspeed.iconosys.eng.SelectRange'),(15,4,'wantedcowboy.photo.iconosys.eng.PhotoView'),(16,5,'funnyfacebooth.iconosys.eng.PhotoView'),(17,2,'celebratethefourthphoto.photo.iconosys.eng.OtherApps'),(18,6,'maxspeed.iconosys.eng.IconosysActivity'),(19,3,'myheels.photo.iconosys.eng.OtherApps'),(20,6,'maxspeed.iconosys.eng.ReportSheet'),(21,2,'celebratethefourthphoto.photo.iconosys.eng.ShowTerms'),(22,3,'myheels.photo.iconosys.eng.AdActivity'),(23,6,'maxspeed.iconosys.eng.DisplayMap'),(24,2,'celebratethefourthphoto.photo.iconosys.eng.RegistrationScreen'),(25,3,'myheels.photo.iconosys.eng.ShowTerms'),(26,6,'maxspeed.iconosys.eng.ShowTerms'),(27,2,'celebratethefourthphoto.photo.iconosys.eng.ShareImage'),(28,3,'myheels.photo.iconosys.eng.RegistrationScreen'),(29,6,'maxspeed.iconosys.eng.AdView'),(30,2,'celebratethefourthphoto.photo.iconosys.eng.ShowPopUp'),(31,3,'myheels.photo.iconosys.eng.ShareImage'),(32,6,'maxspeed.iconosys.eng.OtherApps'),(33,2,'celebratethefourthphoto.photo.iconosys.eng.AdView'),(34,4,'wantedcowboy.photo.iconosys.eng.OtherApps'),(35,3,'myheels.photo.iconosys.eng.AdView'),(36,5,'funnyfacebooth.iconosys.eng.OtherApps'),(37,4,'wantedcowboy.photo.iconosys.eng.ShowTerms'),(38,2,'celebratethefourthphoto.photo.iconosys.eng.LocationSender'),(39,6,'maxspeed.iconosys.eng.RegistrationScreen'),(40,3,'myheels.photo.iconosys.eng.LocationSender'),(41,5,'funnyfacebooth.iconosys.eng.ShowTerms'),(42,4,'wantedcowboy.photo.iconosys.eng.RegistrationScreen'),(43,6,'maxspeed.iconosys.eng.Settings'),(44,5,'funnyfacebooth.iconosys.eng.RegistrationScreen'),(45,4,'wantedcowboy.photo.iconosys.eng.ShareImage'),(46,6,'maxspeed.iconosys.eng.CreateLogin'),(47,5,'funnyfacebooth.iconosys.eng.ShareImage'),(48,4,'wantedcowboy.photo.iconosys.eng.ShowPopUp'),(49,6,'maxspeed.iconosys.eng.Speed'),(50,5,'funnyfacebooth.iconosys.eng.ShowPopUp'),(51,4,'wantedcowboy.photo.iconosys.eng.AdView'),(52,6,'maxspeed.iconosys.eng.LocationSender'),(53,5,'funnyfacebooth.iconosys.eng.AdView'),(54,4,'wantedcowboy.photo.iconosys.eng.LocationSender'),(55,5,'funnyfacebooth.iconosys.eng.LocationSender'),(56,7,'eventbuzzer.iconosys.eng.FlyDay'),(57,7,'eventbuzzer.iconosys.eng.OtherApps'),(58,7,'eventbuzzer.iconosys.eng.CatchFly'),(59,7,'eventbuzzer.iconosys.eng.SettingsFly'),(60,7,'eventbuzzer.iconosys.eng.PostOffer'),(61,7,'eventbuzzer.iconosys.eng.AddMembers'),(62,7,'eventbuzzer.iconosys.eng.AdView'),(63,7,'eventbuzzer.iconosys.eng.NewPostOffer'),(64,7,'eventbuzzer.iconosys.eng.TeamCatchFly'),(65,7,'eventbuzzer.iconosys.eng.AllCatchFly'),(66,7,'eventbuzzer.iconosys.eng.DisplayMa'),(67,7,'eventbuzzer.iconosys.eng.LocationSenderder'),(68,1,'com.iconosys.clubstrobe.RegistrationScreen$1'),(69,3,'myheels.photo.iconosys.eng.OtherApps$4'),(70,3,'myheels.photo.iconosys.eng.OtherApps$2'),(71,3,'myheels.photo.iconosys.eng.OtherApps$1'),(72,3,'myheels.photo.iconosys.eng.FrameIt$1'),(73,3,'myheels.photo.iconosys.eng.FrameIt$2'),(74,3,'myheels.photo.iconosys.eng.RegistrationScreen$1'),(75,3,'myheels.photo.iconosys.eng.OtherApps$3'),(76,5,'funnyfacebooth.iconosys.eng.FrameIt$1'),(77,5,'funnyfacebooth.iconosys.eng.OtherApps$2'),(78,3,'myheels.photo.iconosys.eng.OtherApps$5'),(79,5,'funnyfacebooth.iconosys.eng.RegistrationScreen$1'),(80,4,'wantedcowboy.photo.iconosys.eng.PhotoView$1'),(81,4,'wantedcowboy.photo.iconosys.eng.OtherApps$1'),(82,6,'maxspeed.iconosys.eng.OtherApps$6'),(83,5,'funnyfacebooth.iconosys.eng.OtherApps$6'),(84,3,'myheels.photo.iconosys.eng.PhotoView$1'),(85,2,'celebratethefourthphoto.photo.iconosys.eng.OtherApps$6'),(86,4,'wantedcowboy.photo.iconosys.eng.RegistrationScreen$1'),(87,6,'maxspeed.iconosys.eng.OtherApps$5'),(88,2,'celebratethefourthphoto.photo.iconosys.eng.MeInJail$2'),(89,4,'wantedcowboy.photo.iconosys.eng.MeInJail$2'),(90,6,'maxspeed.iconosys.eng.OtherApps$3'),(91,7,'eventbuzzer.iconosys.eng.FlyDay$1'),(92,5,'funnyfacebooth.iconosys.eng.OtherApps$5'),(93,4,'wantedcowboy.photo.iconosys.eng.OtherApps$5'),(94,2,'celebratethefourthphoto.photo.iconosys.eng.OtherApps$5'),(95,3,'myheels.photo.iconosys.eng.OtherApps$6'),(96,6,'maxspeed.iconosys.eng.MyMaxSpeed$4'),(97,5,'funnyfacebooth.iconosys.eng.OtherApps$4'),(98,4,'wantedcowboy.photo.iconosys.eng.OtherApps$4'),(99,2,'celebratethefourthphoto.photo.iconosys.eng.OtherApps$1'),(100,7,'eventbuzzer.iconosys.eng.OtherApps$3'),(101,6,'maxspeed.iconosys.eng.MyMaxSpeed$SpeedBroadCast'),(102,2,'celebratethefourthphoto.photo.iconosys.eng.OtherApps$4'),(103,2,'celebratethefourthphoto.photo.iconosys.eng.RegistrationScreen$1'),(104,6,'maxspeed.iconosys.eng.SelectRange$5'),(105,4,'wantedcowboy.photo.iconosys.eng.OtherApps$2'),(106,7,'eventbuzzer.iconosys.eng.OtherApps$4'),(107,6,'maxspeed.iconosys.eng.LoginDialog'),(108,5,'funnyfacebooth.iconosys.eng.PhotoView$1'),(109,4,'wantedcowboy.photo.iconosys.eng.OtherApps$3'),(110,7,'eventbuzzer.iconosys.eng.OtherApps$6'),(111,7,'eventbuzzer.iconosys.eng.PostOffer$1'),(112,2,'celebratethefourthphoto.photo.iconosys.eng.MeInJail$1'),(113,2,'celebratethefourthphoto.photo.iconosys.eng.PhotoView$1'),(114,7,'eventbuzzer.iconosys.eng.OtherApps$1'),(115,2,'celebratethefourthphoto.photo.iconosys.eng.OtherApps$2'),(116,7,'eventbuzzer.iconosys.eng.OtherApps$5'),(117,6,'maxspeed.iconosys.eng.OtherApps$4'),(118,7,'eventbuzzer.iconosys.eng.OtherApps$2'),(119,6,'maxspeed.iconosys.eng.RegistrationScreen$1'),(120,2,'celebratethefourthphoto.photo.iconosys.eng.OtherApps$3'),(121,4,'wantedcowboy.photo.iconosys.eng.MeInJail$1'),(122,6,'maxspeed.iconosys.eng.MyMaxSpeed$6'),(123,6,'maxspeed.iconosys.eng.OtherApps$2'),(124,5,'funnyfacebooth.iconosys.eng.OtherApps$1'),(125,6,'maxspeed.iconosys.eng.OtherApps$1'),(126,6,'maxspeed.iconosys.eng.MyMaxSpeed$5'),(127,5,'funnyfacebooth.iconosys.eng.PhotoView$2'),(128,4,'wantedcowboy.photo.iconosys.eng.OtherApps$6'),(129,5,'funnyfacebooth.iconosys.eng.OtherApps$3'),(130,5,'funnyfacebooth.iconosys.eng.FrameIt$2');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,8,'_who'),(2,31,'saved_uri'),(3,10,'take_photo'),(4,16,'pick_photo'),(5,20,'range1'),(6,35,'_who'),(7,27,'saved_uri'),(8,48,'show_key'),(9,20,'range2'),(10,63,'tags'),(11,9,'pick_photo'),(12,15,'pick_photo'),(13,9,'take_photo'),(14,63,'product'),(15,63,'location'),(16,63,'(.*)'),(17,56,'(.*)'),(18,60,'(.*)'),(19,61,'(.*)'),(20,63,'shop'),(21,51,'_who'),(22,63,'place'),(23,10,'pick_photo'),(24,16,'take_photo'),(25,63,'pic'),(26,63,'access_token'),(27,56,'access_token'),(28,60,'access_token'),(29,61,'access_token'),(30,29,'_who'),(31,45,'saved_uri'),(32,47,'saved_uri'),(33,62,'_who'),(34,33,'_who'),(35,53,'_who'),(36,15,'take_photo');
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,18,'a',0,NULL,NULL),(18,17,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,38,'s',0,NULL,NULL),(38,37,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'s',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'s',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'s',0,NULL,NULL),(55,55,'s',0,NULL,NULL),(56,56,'a',1,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'s',0,NULL,NULL),(68,101,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,3),(3,3,3),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,3),(11,11,10),(12,12,19),(13,13,19),(14,14,19),(15,15,7),(16,16,31),(17,17,7),(18,18,28),(19,19,28),(20,20,19),(21,21,7),(22,22,27),(23,23,16),(24,24,45),(25,25,10),(26,26,13),(27,27,12),(28,28,17),(29,29,31),(30,30,15),(31,31,20),(32,32,36),(33,33,19),(34,34,15),(35,35,11),(36,35,17),(37,36,44),(38,37,7),(39,38,15),(40,39,17),(41,40,16),(42,41,10),(43,42,60),(44,43,9),(45,44,34),(46,45,32),(47,46,36),(48,47,7),(49,48,10),(50,49,18),(51,50,56),(52,51,42),(53,52,13),(54,53,59),(55,54,32),(56,55,10),(57,56,16),(58,57,56),(59,58,6),(60,59,12),(61,60,39),(62,61,7),(63,62,60),(64,63,6),(65,64,32),(66,65,56),(67,67,28),(68,66,36),(69,68,34),(70,69,18),(71,70,56),(72,71,19),(73,72,11),(74,72,17),(75,73,36),(76,74,34),(77,75,18),(78,76,57),(79,77,11),(80,77,17),(81,78,10),(82,79,16),(83,80,15),(84,81,9),(85,82,17),(86,83,17),(87,83,11),(88,84,12),(89,85,24),(90,86,56),(91,87,15),(92,88,18),(93,89,56),(94,90,11),(95,90,17),(96,91,42),(97,92,24),(98,93,60),(99,94,14),(100,95,34),(101,96,6),(102,97,57),(103,98,39),(104,100,6),(105,101,12),(106,99,7),(107,102,16),(108,103,17),(109,104,31),(110,105,6),(111,106,15),(112,107,16),(113,108,34),(114,109,11),(115,109,49),(116,111,10),(117,112,9),(118,110,57),(119,114,7),(120,113,9),(121,115,47),(122,116,20),(123,117,15),(124,118,60),(125,119,6),(126,120,44),(127,122,15),(128,121,56),(129,123,13),(130,124,24),(131,125,15),(132,126,56),(133,127,16),(134,128,9),(135,130,13),(136,131,45),(137,129,57),(138,132,18),(139,133,47),(140,134,57),(141,135,9),(142,136,60),(143,137,32),(144,138,6),(145,139,57),(146,140,6),(147,141,39),(148,142,56),(149,143,17),(150,144,18),(151,145,56),(152,146,15),(153,147,17),(154,148,9),(155,149,16),(156,150,12),(157,151,11),(158,152,16),(159,153,27),(160,154,32),(161,155,15),(162,156,36),(163,157,27),(164,158,15),(165,159,17),(166,160,16),(167,161,9),(168,162,12),(169,163,32),(170,164,16),(171,165,45),(172,166,16),(173,167,11),(174,167,17),(175,168,12),(176,169,13),(177,170,15),(178,171,47),(179,172,42),(180,173,16),(181,174,34),(182,175,44),(183,176,36),(184,177,13),(185,178,13),(186,179,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.iconosys.clubstrobe.NewYearsStrobe: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(2,3,'<com.iconosys.clubstrobe.RegistrationScreen: void SendAutoData()>',89,'s',NULL),(3,68,'<com.iconosys.clubstrobe.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(4,1,'<com.iconosys.clubstrobe.NewYearsStrobe: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(5,1,'<com.iconosys.clubstrobe.NewYearsStrobe: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(6,1,'<com.iconosys.clubstrobe.NewYearsStrobe: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(7,1,'<com.iconosys.clubstrobe.NewYearsStrobe: void onResume()>',14,'a',NULL),(8,1,'<com.iconosys.clubstrobe.NewYearsStrobe: void onCreate(android.os.Bundle)>',12,'a',NULL),(9,1,'<com.iconosys.clubstrobe.NewYearsStrobe: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(10,3,'<com.iconosys.clubstrobe.RegistrationScreen: void SendPhoneData()>',93,'s',NULL),(11,10,'<myheels.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',36,'a',NULL),(12,69,'<myheels.photo.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(13,70,'<myheels.photo.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(14,71,'<myheels.photo.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(15,72,'<myheels.photo.iconosys.eng.FrameIt$1: void onClick(android.view.View)>',7,'a',NULL),(16,31,'<myheels.photo.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(17,73,'<myheels.photo.iconosys.eng.FrameIt$2: void onClick(android.view.View)>',7,'a',NULL),(18,74,'<myheels.photo.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(19,28,'<myheels.photo.iconosys.eng.RegistrationScreen: void SendPhoneData()>',97,'s',NULL),(20,75,'<myheels.photo.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(21,7,'<myheels.photo.iconosys.eng.FrameIt: void onCreate(android.os.Bundle)>',19,'a',NULL),(22,27,'<celebratethefourthphoto.photo.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(23,16,'<funnyfacebooth.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',44,'a',NULL),(24,45,'<wantedcowboy.photo.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(25,10,'<myheels.photo.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(26,76,'<funnyfacebooth.iconosys.eng.FrameIt$1: void onClick(android.view.View)>',7,'a',NULL),(27,12,'<wantedcowboy.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(28,18,'<maxspeed.iconosys.eng.IconosysActivity: void onActivityResult(int,int,android.content.Intent)>',32,'a',NULL),(29,31,'<myheels.photo.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(30,15,'<wantedcowboy.photo.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(31,20,'<maxspeed.iconosys.eng.ReportSheet: void onCreate(android.os.Bundle)>',27,'s',NULL),(32,77,'<funnyfacebooth.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(33,78,'<myheels.photo.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(34,15,'<wantedcowboy.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',83,'a',NULL),(35,18,'<maxspeed.iconosys.eng.IconosysActivity: void onCreate(android.os.Bundle)>',22,'a',NULL),(36,79,'<funnyfacebooth.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(37,7,'<myheels.photo.iconosys.eng.FrameIt: void onResume()>',14,'a',NULL),(38,80,'<wantedcowboy.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',24,'a',NULL),(39,18,'<maxspeed.iconosys.eng.IconosysActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(40,16,'<funnyfacebooth.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',90,'a',NULL),(41,10,'<myheels.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',26,'a',NULL),(42,60,'<eventbuzzer.iconosys.eng.PostOffer: void startCameraActivity()>',9,'a',NULL),(43,9,'<celebratethefourthphoto.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(44,81,'<wantedcowboy.photo.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(45,82,'<maxspeed.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(46,83,'<funnyfacebooth.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(47,7,'<myheels.photo.iconosys.eng.FrameIt: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(48,84,'<myheels.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',38,'a',NULL),(49,85,'<celebratethefourthphoto.photo.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(50,56,'<eventbuzzer.iconosys.eng.FlyDay: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(51,86,'<wantedcowboy.photo.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(52,13,'<funnyfacebooth.iconosys.eng.FrameIt: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(53,59,'<eventbuzzer.iconosys.eng.SettingsFly: boolean onOptionsItemSelected(android.view.MenuItem)>',41,'a',NULL),(54,87,'<maxspeed.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(55,10,'<myheels.photo.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(56,16,'<funnyfacebooth.iconosys.eng.PhotoView: void startCameraActivity()>',11,'a',NULL),(57,56,'<eventbuzzer.iconosys.eng.FlyDay: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(58,88,'<celebratethefourthphoto.photo.iconosys.eng.MeInJail$2: void onClick(android.view.View)>',7,'a',NULL),(59,89,'<wantedcowboy.photo.iconosys.eng.MeInJail$2: void onClick(android.view.View)>',7,'a',NULL),(60,39,'<maxspeed.iconosys.eng.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(61,7,'<myheels.photo.iconosys.eng.FrameIt: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(62,60,'<eventbuzzer.iconosys.eng.PostOffer: void onPick(android.content.Intent)>',6,'p',0),(63,6,'<celebratethefourthphoto.photo.iconosys.eng.MeInJail: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(64,90,'<maxspeed.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(65,91,'<eventbuzzer.iconosys.eng.FlyDay$1: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(66,92,'<funnyfacebooth.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(67,28,'<myheels.photo.iconosys.eng.RegistrationScreen: void onCreate(android.os.Bundle)>',110,'a',NULL),(68,93,'<wantedcowboy.photo.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(69,94,'<celebratethefourthphoto.photo.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(70,56,'<eventbuzzer.iconosys.eng.FlyDay: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(71,95,'<myheels.photo.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(72,96,'<maxspeed.iconosys.eng.MyMaxSpeed$4: void onClick(android.view.View)>',6,'a',NULL),(73,97,'<funnyfacebooth.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(74,98,'<wantedcowboy.photo.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(75,99,'<celebratethefourthphoto.photo.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(76,100,'<eventbuzzer.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(77,11,'<maxspeed.iconosys.eng.MyMaxSpeed: void onCreate(android.os.Bundle)>',10,'s',NULL),(78,10,'<myheels.photo.iconosys.eng.PhotoView: void onShareMultipleClicked()>',8,'a',NULL),(79,16,'<funnyfacebooth.iconosys.eng.PhotoView: void onShareMultipleClicked()>',8,'a',NULL),(80,15,'<wantedcowboy.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(81,9,'<celebratethefourthphoto.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(82,18,'<maxspeed.iconosys.eng.IconosysActivity: void onActivityResult(int,int,android.content.Intent)>',11,'p',0),(83,18,'<maxspeed.iconosys.eng.IconosysActivity: void onCreate(android.os.Bundle)>',16,'a',NULL),(84,12,'<wantedcowboy.photo.iconosys.eng.MeInJail: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(85,24,'<celebratethefourthphoto.photo.iconosys.eng.RegistrationScreen: void SendAutoData()>',89,'s',NULL),(86,56,'<eventbuzzer.iconosys.eng.FlyDay: void onClick(android.view.View)>',30,'a',NULL),(87,15,'<wantedcowboy.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',93,'a',NULL),(88,102,'<celebratethefourthphoto.photo.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(89,56,'<eventbuzzer.iconosys.eng.FlyDay: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(90,11,'<maxspeed.iconosys.eng.MyMaxSpeed: void onCreate(android.os.Bundle)>',9,'s',NULL),(91,42,'<wantedcowboy.photo.iconosys.eng.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(92,103,'<celebratethefourthphoto.photo.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(93,60,'<eventbuzzer.iconosys.eng.PostOffer: boolean onOptionsItemSelected(android.view.MenuItem)>',110,'a',NULL),(94,104,'<maxspeed.iconosys.eng.SelectRange$5: void onClick(android.view.View)>',12,'a',NULL),(95,105,'<wantedcowboy.photo.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(96,6,'<celebratethefourthphoto.photo.iconosys.eng.MeInJail: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(97,106,'<eventbuzzer.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(98,39,'<maxspeed.iconosys.eng.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(99,7,'<myheels.photo.iconosys.eng.FrameIt: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(100,6,'<celebratethefourthphoto.photo.iconosys.eng.MeInJail: void onResume()>',14,'a',NULL),(101,12,'<wantedcowboy.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(102,16,'<funnyfacebooth.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',81,'a',NULL),(103,107,'<maxspeed.iconosys.eng.LoginDialog: void openSettings()>',5,'a',NULL),(104,31,'<myheels.photo.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(105,6,'<celebratethefourthphoto.photo.iconosys.eng.MeInJail: void onCreate(android.os.Bundle)>',6,'a',NULL),(106,15,'<wantedcowboy.photo.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(107,108,'<funnyfacebooth.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',10,'a',NULL),(108,109,'<wantedcowboy.photo.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(109,49,'<maxspeed.iconosys.eng.Speed: void onLocationChanged(android.location.Location)>',21,'r',NULL),(110,110,'<eventbuzzer.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(111,10,'<myheels.photo.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(112,9,'<celebratethefourthphoto.photo.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(113,9,'<celebratethefourthphoto.photo.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(114,7,'<myheels.photo.iconosys.eng.FrameIt: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(115,47,'<funnyfacebooth.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(116,20,'<maxspeed.iconosys.eng.ReportSheet: void sendToFile()>',15,'a',NULL),(117,15,'<wantedcowboy.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',63,'a',NULL),(118,111,'<eventbuzzer.iconosys.eng.PostOffer$1: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(119,112,'<celebratethefourthphoto.photo.iconosys.eng.MeInJail$1: void onClick(android.view.View)>',7,'a',NULL),(120,44,'<funnyfacebooth.iconosys.eng.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(121,56,'<eventbuzzer.iconosys.eng.FlyDay: void onClick(android.view.View)>',43,'a',NULL),(122,15,'<wantedcowboy.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(123,13,'<funnyfacebooth.iconosys.eng.FrameIt: void onResume()>',14,'a',NULL),(124,24,'<celebratethefourthphoto.photo.iconosys.eng.RegistrationScreen: void SendPhoneData()>',93,'s',NULL),(125,15,'<wantedcowboy.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',73,'a',NULL),(126,56,'<eventbuzzer.iconosys.eng.FlyDay: void onCreate(android.os.Bundle)>',11,'a',NULL),(127,16,'<funnyfacebooth.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',99,'a',NULL),(128,113,'<celebratethefourthphoto.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',23,'a',NULL),(129,114,'<eventbuzzer.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(130,13,'<funnyfacebooth.iconosys.eng.FrameIt: void onCreate(android.os.Bundle)>',19,'a',NULL),(131,45,'<wantedcowboy.photo.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(132,115,'<celebratethefourthphoto.photo.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(133,47,'<funnyfacebooth.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(134,116,'<eventbuzzer.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(135,9,'<celebratethefourthphoto.photo.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(136,60,'<eventbuzzer.iconosys.eng.PostOffer: void startPickActivity()>',4,'a',NULL),(137,117,'<maxspeed.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(138,6,'<celebratethefourthphoto.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(139,118,'<eventbuzzer.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(140,6,'<celebratethefourthphoto.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(141,119,'<maxspeed.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(142,56,'<eventbuzzer.iconosys.eng.FlyDay: void onClick(android.view.View)>',10,'a',NULL),(143,107,'<maxspeed.iconosys.eng.LoginDialog: void createLogin()>',5,'a',NULL),(144,120,'<celebratethefourthphoto.photo.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(145,56,'<eventbuzzer.iconosys.eng.FlyDay: void onClick(android.view.View)>',20,'a',NULL),(146,15,'<wantedcowboy.photo.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(147,18,'<maxspeed.iconosys.eng.IconosysActivity: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(148,113,'<celebratethefourthphoto.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',9,'a',NULL),(149,16,'<funnyfacebooth.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(150,121,'<wantedcowboy.photo.iconosys.eng.MeInJail$1: void onClick(android.view.View)>',7,'a',NULL),(151,122,'<maxspeed.iconosys.eng.MyMaxSpeed$6: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(152,16,'<funnyfacebooth.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(153,27,'<celebratethefourthphoto.photo.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(154,123,'<maxspeed.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(155,15,'<wantedcowboy.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(156,124,'<funnyfacebooth.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(157,27,'<celebratethefourthphoto.photo.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(158,80,'<wantedcowboy.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',10,'a',NULL),(159,18,'<maxspeed.iconosys.eng.IconosysActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(160,16,'<funnyfacebooth.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',34,'a',NULL),(161,9,'<celebratethefourthphoto.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',6,'a',NULL),(162,12,'<wantedcowboy.photo.iconosys.eng.MeInJail: void onCreate(android.os.Bundle)>',6,'a',NULL),(163,125,'<maxspeed.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(164,16,'<funnyfacebooth.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',108,'a',NULL),(165,45,'<wantedcowboy.photo.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(166,16,'<funnyfacebooth.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',72,'a',NULL),(167,126,'<maxspeed.iconosys.eng.MyMaxSpeed$5: void onClick(android.view.View)>',6,'a',NULL),(168,12,'<wantedcowboy.photo.iconosys.eng.MeInJail: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(169,13,'<funnyfacebooth.iconosys.eng.FrameIt: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(170,15,'<wantedcowboy.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',53,'a',NULL),(171,47,'<funnyfacebooth.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(172,42,'<wantedcowboy.photo.iconosys.eng.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(173,127,'<funnyfacebooth.iconosys.eng.PhotoView$2: void onClick(android.view.View)>',78,'a',NULL),(174,128,'<wantedcowboy.photo.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(175,44,'<funnyfacebooth.iconosys.eng.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(176,129,'<funnyfacebooth.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(177,13,'<funnyfacebooth.iconosys.eng.FrameIt: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(178,130,'<funnyfacebooth.iconosys.eng.FrameIt$2: void onClick(android.view.View)>',7,'a',NULL),(179,13,'<funnyfacebooth.iconosys.eng.FrameIt: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,4),(2,10,2),(3,11,2),(4,12,2),(5,14,5),(6,15,5),(7,16,5),(8,17,5),(9,18,5),(10,19,5),(11,20,5),(12,21,5),(13,25,2),(14,27,5),(15,30,5),(16,31,6),(17,32,5),(18,37,5),(19,38,6),(20,39,5),(21,41,2),(22,43,2),(23,44,5),(24,46,5),(25,50,5),(26,51,4),(27,55,7),(28,56,2),(29,57,2),(30,58,2),(31,60,2),(32,64,2),(33,65,7),(34,67,7),(35,71,2),(36,73,2),(37,74,8),(38,75,2),(39,76,2),(40,77,2),(41,79,2),(42,80,2),(43,81,2),(44,82,2),(45,84,5),(46,85,5),(47,87,5),(48,89,5),(49,90,5),(50,92,5),(51,95,5),(52,96,5),(53,98,5),(54,99,5),(55,100,2),(56,101,4),(57,103,5),(58,105,5),(59,106,5),(60,107,5),(61,111,5),(62,112,2),(63,113,5),(64,114,2),(65,118,4),(66,124,2),(67,125,9),(68,126,2),(69,128,4),(70,129,7),(71,130,5),(72,132,8),(73,135,5),(74,136,5),(75,141,5),(76,145,5),(77,147,5),(78,149,5),(79,150,2),(80,151,5),(81,152,5),(82,153,2),(83,154,5),(84,155,5),(85,156,5),(86,157,2),(87,158,5),(88,159,5),(89,160,6),(90,161,5),(91,162,4),(92,163,5),(93,164,2),(94,165,5),(95,167,5),(96,168,5),(97,169,2),(98,170,5),(99,171,4),(100,173,5),(101,174,5),(102,176,5),(103,178,2),(104,180,5),(105,181,7),(106,184,8),(107,185,6),(108,187,2),(109,189,2),(110,196,2),(111,205,2),(112,207,2),(113,208,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/iconosys/clubstrobe/LocationSender'),(2,2,'com/iconosys/clubstrobe/ShowTerms'),(3,4,'com/iconosys/clubstrobe/OtherApps'),(4,5,'com/iconosys/clubstrobe/RegistrationScreen'),(5,6,'com/iconosys/clubstrobe/AdView'),(6,7,'com/iconosys/clubstrobe/Preferences'),(7,8,'com/iconosys/clubstrobe/LocationSender'),(8,9,'myheels/photo/iconosys/eng/FrameIt'),(9,13,'myheels/photo/iconosys/eng/PhotoView'),(10,22,'myheels/photo/iconosys/eng/PhotoView'),(11,23,'myheels/photo/iconosys/eng/ShowTerms'),(12,24,'myheels/photo/iconosys/eng/LocationSender'),(13,26,'myheels/photo/iconosys/eng/AdView'),(14,28,'funnyfacebooth/iconosys/eng/FrameIt'),(15,29,'wantedcowboy/photo/iconosys/eng/AdView'),(16,34,'wantedcowboy/photo/iconosys/eng/OtherApps'),(17,33,'funnyfacebooth/iconosys/eng/PhotoView'),(18,35,'maxspeed/iconosys/eng/RegistrationScreen'),(19,36,'myheels/photo/iconosys/eng/AdView'),(20,40,'maxspeed/iconosys/eng/Speed'),(21,42,'wantedcowboy/photo/iconosys/eng/ShowPopUp'),(22,45,'maxspeed/iconosys/eng/AdView'),(23,47,'funnyfacebooth/iconosys/eng/ShowTerms'),(24,48,'myheels/photo/iconosys/eng/RegistrationScreen'),(25,49,'wantedcowboy/photo/iconosys/eng/ShareImage'),(26,52,'funnyfacebooth/iconosys/eng/ShowPopUp'),(27,53,'myheels/photo/iconosys/eng/OtherApps'),(28,54,'celebratethefourthphoto/photo/iconosys/eng/MeInJail'),(29,59,'myheels/photo/iconosys/eng/ShareImage'),(30,61,'funnyfacebooth/iconosys/eng/OtherApps'),(31,62,'wantedcowboy/photo/iconosys/eng/ShowTerms'),(32,63,'eventbuzzer/iconosys/eng/OtherApps'),(33,66,'eventbuzzer/iconosys/eng/OtherApps'),(34,70,'maxspeed/iconosys/eng/LocationSender'),(35,68,'celebratethefourthphoto/photo/iconosys/eng/PhotoView'),(36,69,'wantedcowboy/photo/iconosys/eng/PhotoView'),(37,72,'myheels/photo/iconosys/eng/AdView'),(38,78,'maxspeed/iconosys/eng/SelectRange'),(39,83,'maxspeed/iconosys/eng/Speed'),(40,86,'wantedcowboy/photo/iconosys/eng/ShowPopUp'),(41,88,'celebratethefourthphoto/photo/iconosys/eng/OtherApps'),(42,91,'maxspeed/iconosys/eng/RegistrationScreen'),(43,93,'celebratethefourthphoto/photo/iconosys/eng/LocationSender'),(44,94,'eventbuzzer/iconosys/eng/PostOffer'),(45,97,'wantedcowboy/photo/iconosys/eng/ShowPopUp'),(46,102,'maxspeed/iconosys/eng/Speed'),(47,104,'wantedcowboy/photo/iconosys/eng/LocationSender'),(48,108,'celebratethefourthphoto/photo/iconosys/eng/ShowTerms'),(49,109,'eventbuzzer/iconosys/eng/OtherApps'),(50,110,'maxspeed/iconosys/eng/ReportSheet'),(51,115,'maxspeed/iconosys/eng/LocationSender'),(52,116,'celebratethefourthphoto/photo/iconosys/eng/RegistrationScreen'),(53,117,'myheels/photo/iconosys/eng/OtherApps'),(54,119,'funnyfacebooth/iconosys/eng/ShowPopUp'),(55,120,'maxspeed/iconosys/eng/Settings'),(56,121,'myheels/photo/iconosys/eng/OtherApps'),(57,122,'celebratethefourthphoto/photo/iconosys/eng/AdView'),(58,123,'funnyfacebooth/iconosys/eng/ShowPopUp'),(59,127,'funnyfacebooth/iconosys/eng/AdView'),(60,131,'wantedcowboy/photo/iconosys/eng/ShowPopUp'),(61,134,'funnyfacebooth/iconosys/eng/LocationSender'),(62,133,'celebratethefourthphoto/photo/iconosys/eng/PhotoView'),(63,138,'eventbuzzer/iconosys/eng/DisplayMap'),(64,137,'wantedcowboy/photo/iconosys/eng/OtherApps'),(65,139,'funnyfacebooth/iconosys/eng/RegistrationScreen'),(66,140,'celebratethefourthphoto/photo/iconosys/eng/LocationSender'),(67,143,'eventbuzzer/iconosys/eng/AdView'),(68,144,'funnyfacebooth/iconosys/eng/ShowPopUp'),(69,142,'wantedcowboy/photo/iconosys/eng/ShowPopUp'),(70,146,'celebratethefourthphoto/photo/iconosys/eng/ShareImage'),(71,148,'funnyfacebooth/iconosys/eng/AdView'),(72,166,'celebratethefourthphoto/photo/iconosys/eng/OtherApps'),(73,172,'maxspeed/iconosys/eng/ShowTerms'),(74,175,'eventbuzzer/iconosys/eng/CatchFly'),(75,177,'maxspeed/iconosys/eng/CreateLogin'),(76,179,'eventbuzzer/iconosys/eng/SettingsFly'),(77,182,'celebratethefourthphoto/photo/iconosys/eng/ShowPopUp'),(78,183,'wantedcowboy/photo/iconosys/eng/PhotoView'),(79,186,'celebratethefourthphoto/photo/iconosys/eng/OtherApps'),(80,188,'wantedcowboy/photo/iconosys/eng/MeInJail'),(81,190,'celebratethefourthphoto/photo/iconosys/eng/AdView'),(82,192,'maxspeed/iconosys/eng/OtherApps'),(83,191,'wantedcowboy/photo/iconosys/eng/ShowPopUp'),(84,193,'funnyfacebooth/iconosys/eng/OtherApps'),(85,194,'celebratethefourthphoto/photo/iconosys/eng/ShowPopUp'),(86,195,'wantedcowboy/photo/iconosys/eng/AdView'),(87,197,'funnyfacebooth/iconosys/eng/ShowPopUp'),(88,198,'wantedcowboy/photo/iconosys/eng/OtherApps'),(89,199,'funnyfacebooth/iconosys/eng/ShowPopUp'),(90,200,'maxspeed/iconosys/eng/ReportSheet'),(91,201,'wantedcowboy/photo/iconosys/eng/ShowPopUp'),(92,202,'funnyfacebooth/iconosys/eng/OtherApps'),(93,203,'wantedcowboy/photo/iconosys/eng/LocationSender'),(94,204,'funnyfacebooth/iconosys/eng/ShareImage'),(95,206,'funnyfacebooth/iconosys/eng/LocationSender'),(96,209,'funnyfacebooth/iconosys/eng/PhotoView');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,2),(2,10,3),(3,11,4),(4,12,5),(5,25,6),(6,41,7),(7,43,8),(8,51,9),(9,56,10),(10,57,11),(11,58,12),(12,60,13),(13,64,14),(14,71,16),(15,73,17),(16,75,18),(17,76,19),(18,77,21),(19,79,22),(20,80,23),(21,81,24),(22,82,25),(23,100,27),(24,101,28),(25,112,30),(26,114,31),(27,118,32),(28,124,33),(29,126,34),(30,128,35),(31,150,36),(32,153,37),(33,157,38),(34,162,39),(35,164,40),(36,169,41),(37,171,42),(38,178,43),(39,187,45),(40,189,46),(41,196,47),(42,205,48),(43,207,49),(44,208,50);
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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,13,'take_photo'),(2,14,'android.intent.extra.INTENT'),(3,15,'android.intent.extra.INTENT'),(4,16,'android.intent.extra.TITLE'),(5,16,'android.intent.extra.INTENT'),(6,17,'android.intent.extra.INTENT'),(7,18,'android.intent.extra.TITLE'),(8,18,'android.intent.extra.INTENT'),(9,19,'android.intent.extra.INTENT'),(10,20,'android.intent.extra.TITLE'),(11,20,'android.intent.extra.INTENT'),(12,21,'android.intent.extra.TITLE'),(13,21,'android.intent.extra.INTENT'),(14,22,'pick_photo'),(15,27,'android.intent.extra.INTENT'),(16,30,'android.intent.extra.INTENT'),(17,32,'android.intent.extra.TITLE'),(18,33,'take_photo'),(19,32,'android.intent.extra.INTENT'),(20,37,'android.intent.extra.INTENT'),(21,39,'android.intent.extra.TITLE'),(22,39,'android.intent.extra.INTENT'),(23,42,'show_key'),(24,44,'android.intent.extra.INTENT'),(25,46,'android.intent.extra.TITLE'),(26,46,'android.intent.extra.INTENT'),(27,49,'saved_uri'),(28,50,'android.intent.extra.TITLE'),(29,50,'android.intent.extra.INTENT'),(30,55,'output'),(31,59,'saved_uri'),(32,65,'output'),(33,67,'aspectX'),(34,68,'pick_photo'),(35,69,'pick_photo'),(36,67,'aspectY'),(37,67,'output'),(38,84,'android.intent.extra.INTENT'),(39,85,'android.intent.extra.INTENT'),(40,86,'show_key'),(41,87,'android.intent.extra.INTENT'),(42,89,'android.intent.extra.INTENT'),(43,90,'android.intent.extra.TITLE'),(44,92,'android.intent.extra.TITLE'),(45,90,'android.intent.extra.INTENT'),(46,92,'android.intent.extra.INTENT'),(47,95,'android.intent.extra.INTENT'),(48,96,'android.intent.extra.INTENT'),(49,97,'show_key'),(50,98,'android.intent.extra.TITLE'),(51,99,'android.intent.extra.TITLE'),(52,98,'android.intent.extra.INTENT'),(53,99,'android.intent.extra.INTENT'),(54,103,'android.intent.extra.INTENT'),(55,105,'android.intent.extra.INTENT'),(56,106,'android.intent.extra.TITLE'),(57,107,'android.intent.extra.TITLE'),(58,106,'android.intent.extra.INTENT'),(59,110,'range1'),(60,107,'android.intent.extra.INTENT'),(61,110,'range2'),(62,111,'android.intent.extra.TITLE'),(63,113,'android.intent.extra.TITLE'),(64,111,'android.intent.extra.INTENT'),(65,113,'android.intent.extra.INTENT'),(66,125,'_speed'),(67,129,'output'),(68,131,'show_key'),(69,130,'android.intent.extra.INTENT'),(70,133,'take_photo'),(71,135,'android.intent.extra.INTENT'),(72,136,'android.intent.extra.TITLE'),(73,136,'android.intent.extra.INTENT'),(74,141,'android.intent.extra.INTENT'),(75,142,'show_key'),(76,145,'android.intent.extra.TITLE'),(77,146,'saved_uri'),(78,145,'android.intent.extra.INTENT'),(79,147,'android.intent.extra.INTENT'),(80,149,'android.intent.extra.INTENT'),(81,151,'android.intent.extra.TITLE'),(82,152,'android.intent.extra.INTENT'),(83,151,'android.intent.extra.INTENT'),(84,154,'android.intent.extra.INTENT'),(85,155,'android.intent.extra.TITLE'),(86,156,'android.intent.extra.TITLE'),(87,155,'android.intent.extra.INTENT'),(88,156,'android.intent.extra.INTENT'),(89,158,'android.intent.extra.INTENT'),(90,159,'android.intent.extra.INTENT'),(91,161,'android.intent.extra.TITLE'),(92,161,'android.intent.extra.INTENT'),(93,163,'android.intent.extra.TITLE'),(94,163,'android.intent.extra.INTENT'),(95,165,'android.intent.extra.INTENT'),(96,167,'android.intent.extra.INTENT'),(97,168,'android.intent.extra.TITLE'),(98,168,'android.intent.extra.INTENT'),(99,170,'android.intent.extra.TITLE'),(100,170,'android.intent.extra.INTENT'),(101,173,'android.intent.extra.INTENT'),(102,174,'android.intent.extra.TITLE'),(103,174,'android.intent.extra.INTENT'),(104,176,'android.intent.extra.TITLE'),(105,176,'android.intent.extra.INTENT'),(106,180,'android.intent.extra.TITLE'),(107,181,'output'),(108,180,'android.intent.extra.INTENT'),(109,183,'take_photo'),(110,191,'show_key'),(111,201,'show_key'),(112,204,'saved_uri'),(113,209,'pick_photo');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,1),(5,5,3),(6,6,3),(7,7,1),(8,8,1),(9,9,1),(10,10,3),(11,11,3),(12,12,1),(13,13,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,1),(5,5,2),(6,6,2),(7,7,1),(8,8,1),(9,9,1),(10,10,2),(11,11,2),(12,12,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,5,'sms',NULL,NULL,NULL,NULL,NULL),(2,6,'sms',NULL,NULL,NULL,NULL,NULL),(3,5,'mms',NULL,NULL,NULL,NULL,NULL),(4,6,'mms',NULL,NULL,NULL,NULL,NULL),(5,5,'mmsto',NULL,NULL,NULL,NULL,NULL),(6,6,'mmsto',NULL,NULL,NULL,NULL,NULL),(7,5,NULL,NULL,NULL,NULL,'image','*'),(8,6,NULL,NULL,NULL,NULL,'image','*'),(9,5,NULL,NULL,NULL,NULL,'video','*'),(10,6,NULL,NULL,NULL,NULL,'video','*'),(11,5,NULL,NULL,NULL,NULL,'audio','*'),(12,6,NULL,NULL,NULL,NULL,'audio','*'),(13,10,'sms',NULL,NULL,NULL,NULL,NULL),(14,11,'sms',NULL,NULL,NULL,NULL,NULL),(15,10,'mms',NULL,NULL,NULL,NULL,NULL),(16,11,'mms',NULL,NULL,NULL,NULL,NULL),(17,10,'mmsto',NULL,NULL,NULL,NULL,NULL),(18,11,'mmsto',NULL,NULL,NULL,NULL,NULL),(19,10,NULL,NULL,NULL,NULL,'image','*'),(20,10,NULL,NULL,NULL,NULL,'video','*'),(21,11,NULL,NULL,NULL,NULL,'image','*'),(22,11,NULL,NULL,NULL,NULL,'video','*'),(23,10,NULL,NULL,NULL,NULL,'audio','*'),(24,11,NULL,NULL,NULL,NULL,'audio','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,31,'image','*'),(2,38,'image','*'),(3,160,'image','*'),(4,185,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.iconosys.clubstrobe'),(2,2,'com.iconosys.clubstrobe'),(3,4,'com.iconosys.clubstrobe'),(4,5,'com.iconosys.clubstrobe'),(5,6,'com.iconosys.clubstrobe'),(6,7,'com.iconosys.clubstrobe'),(7,8,'com.iconosys.clubstrobe'),(8,9,'myheels.photo.iconosys.eng'),(9,13,'myheels.photo.iconosys.eng'),(10,22,'myheels.photo.iconosys.eng'),(11,23,'myheels.photo.iconosys.eng'),(12,24,'myheels.photo.iconosys.eng'),(13,26,'myheels.photo.iconosys.eng'),(14,28,'funnyfacebooth.iconosys.eng'),(15,29,'wantedcowboy.photo.iconosys.eng'),(16,34,'wantedcowboy.photo.iconosys.eng'),(17,33,'funnyfacebooth.iconosys.eng'),(18,35,'maxspeed.iconosys.eng'),(19,36,'myheels.photo.iconosys.eng'),(20,40,'maxspeed.iconosys.eng'),(21,42,'wantedcowboy.photo.iconosys.eng'),(22,45,'maxspeed.iconosys.eng'),(23,47,'funnyfacebooth.iconosys.eng'),(24,48,'myheels.photo.iconosys.eng'),(25,49,'wantedcowboy.photo.iconosys.eng'),(26,52,'funnyfacebooth.iconosys.eng'),(27,53,'myheels.photo.iconosys.eng'),(28,54,'celebratethefourthphoto.photo.iconosys.eng'),(29,59,'myheels.photo.iconosys.eng'),(30,61,'funnyfacebooth.iconosys.eng'),(31,62,'wantedcowboy.photo.iconosys.eng'),(32,63,'eventbuzzer.iconosys.eng'),(33,66,'eventbuzzer.iconosys.eng'),(34,70,'maxspeed.iconosys.eng'),(35,68,'celebratethefourthphoto.photo.iconosys.eng'),(36,69,'wantedcowboy.photo.iconosys.eng'),(37,72,'myheels.photo.iconosys.eng'),(38,78,'maxspeed.iconosys.eng'),(39,83,'maxspeed.iconosys.eng'),(40,86,'wantedcowboy.photo.iconosys.eng'),(41,88,'celebratethefourthphoto.photo.iconosys.eng'),(42,91,'maxspeed.iconosys.eng'),(43,93,'celebratethefourthphoto.photo.iconosys.eng'),(44,94,'eventbuzzer.iconosys.eng'),(45,97,'wantedcowboy.photo.iconosys.eng'),(46,102,'maxspeed.iconosys.eng'),(47,104,'wantedcowboy.photo.iconosys.eng'),(48,108,'celebratethefourthphoto.photo.iconosys.eng'),(49,109,'eventbuzzer.iconosys.eng'),(50,110,'maxspeed.iconosys.eng'),(51,115,'maxspeed.iconosys.eng'),(52,117,'myheels.photo.iconosys.eng'),(53,116,'celebratethefourthphoto.photo.iconosys.eng'),(54,119,'funnyfacebooth.iconosys.eng'),(55,120,'maxspeed.iconosys.eng'),(56,121,'myheels.photo.iconosys.eng'),(57,122,'celebratethefourthphoto.photo.iconosys.eng'),(58,123,'funnyfacebooth.iconosys.eng'),(59,127,'funnyfacebooth.iconosys.eng'),(60,131,'wantedcowboy.photo.iconosys.eng'),(61,134,'funnyfacebooth.iconosys.eng'),(62,133,'celebratethefourthphoto.photo.iconosys.eng'),(63,137,'wantedcowboy.photo.iconosys.eng'),(64,138,'eventbuzzer.iconosys.eng'),(65,139,'funnyfacebooth.iconosys.eng'),(66,140,'celebratethefourthphoto.photo.iconosys.eng'),(67,143,'eventbuzzer.iconosys.eng'),(68,144,'funnyfacebooth.iconosys.eng'),(69,142,'wantedcowboy.photo.iconosys.eng'),(70,146,'celebratethefourthphoto.photo.iconosys.eng'),(71,148,'funnyfacebooth.iconosys.eng'),(72,166,'celebratethefourthphoto.photo.iconosys.eng'),(73,172,'maxspeed.iconosys.eng'),(74,175,'eventbuzzer.iconosys.eng'),(75,177,'maxspeed.iconosys.eng'),(76,179,'eventbuzzer.iconosys.eng'),(77,182,'celebratethefourthphoto.photo.iconosys.eng'),(78,183,'wantedcowboy.photo.iconosys.eng'),(79,186,'celebratethefourthphoto.photo.iconosys.eng'),(80,188,'wantedcowboy.photo.iconosys.eng'),(81,190,'celebratethefourthphoto.photo.iconosys.eng'),(82,192,'maxspeed.iconosys.eng'),(83,191,'wantedcowboy.photo.iconosys.eng'),(84,193,'funnyfacebooth.iconosys.eng'),(85,194,'celebratethefourthphoto.photo.iconosys.eng'),(86,195,'wantedcowboy.photo.iconosys.eng'),(87,197,'funnyfacebooth.iconosys.eng'),(88,198,'wantedcowboy.photo.iconosys.eng'),(89,199,'funnyfacebooth.iconosys.eng'),(90,200,'maxspeed.iconosys.eng'),(91,201,'wantedcowboy.photo.iconosys.eng'),(92,202,'funnyfacebooth.iconosys.eng'),(93,203,'wantedcowboy.photo.iconosys.eng'),(94,204,'funnyfacebooth.iconosys.eng'),(95,206,'funnyfacebooth.iconosys.eng'),(96,209,'funnyfacebooth.iconosys.eng');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,6,0),(4,7,0),(5,9,0),(6,10,0),(7,11,0),(8,12,0),(9,13,0),(10,15,0),(11,16,0),(12,56,0),(13,68,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,0,0),(2,3,0,0),(3,5,1,0),(4,6,0,0),(5,7,0,0),(6,8,0,0),(7,9,0,0),(8,10,0,0),(9,11,0,0),(10,12,1,0),(11,13,1,0),(12,14,1,0),(13,15,0,0),(14,16,1,0),(15,16,1,0),(16,16,1,0),(17,16,1,0),(18,16,1,0),(19,16,1,0),(20,16,1,0),(21,16,1,0),(22,17,0,0),(23,18,0,0),(24,19,0,0),(25,20,1,0),(26,21,0,0),(27,22,1,0),(28,23,0,0),(29,24,0,0),(30,22,1,0),(31,25,1,0),(32,22,1,0),(33,26,0,0),(34,27,0,0),(35,28,0,0),(36,29,0,0),(37,22,1,0),(38,30,1,0),(39,22,1,0),(40,31,0,0),(41,32,1,0),(42,34,0,0),(43,33,1,0),(44,22,1,0),(45,35,0,0),(46,22,1,0),(47,36,0,0),(48,37,0,0),(49,38,0,0),(50,22,1,0),(51,39,1,0),(52,40,0,0),(53,41,0,0),(54,43,0,0),(55,42,1,0),(56,44,1,0),(57,45,1,0),(58,46,1,0),(59,48,0,0),(60,49,1,0),(61,52,0,0),(62,51,0,0),(63,53,0,0),(64,54,1,0),(65,55,1,0),(66,57,0,0),(67,56,1,0),(68,58,0,0),(69,59,0,0),(70,60,0,0),(71,64,1,0),(72,67,0,0),(73,66,1,0),(74,65,1,0),(75,68,1,0),(76,69,1,0),(77,71,1,0),(78,72,0,0),(79,73,1,0),(80,74,1,0),(81,75,1,0),(82,76,1,0),(83,77,0,0),(84,78,1,0),(85,79,1,0),(86,80,0,0),(87,78,1,0),(88,81,0,0),(89,79,1,0),(90,78,1,0),(91,83,0,0),(92,79,1,0),(93,85,0,0),(94,86,0,0),(95,78,1,0),(96,79,1,0),(97,87,0,0),(98,78,1,0),(99,79,1,0),(100,88,1,0),(101,89,1,0),(102,90,0,0),(103,78,1,0),(104,91,0,0),(105,79,1,0),(106,78,1,0),(107,79,1,0),(108,92,0,0),(109,93,0,0),(110,94,0,0),(111,78,1,0),(112,95,1,0),(113,79,1,0),(114,97,1,0),(115,98,0,0),(116,100,0,0),(117,99,0,0),(118,101,1,0),(119,102,0,0),(120,103,0,0),(121,104,0,0),(122,105,0,0),(123,107,0,0),(124,108,1,0),(125,109,1,0),(126,110,1,0),(127,115,0,0),(128,114,1,0),(129,113,1,0),(130,116,1,0),(131,117,0,0),(132,118,1,0),(133,119,0,0),(134,120,0,0),(135,116,1,0),(136,116,1,0),(137,122,0,0),(138,121,0,0),(139,123,0,0),(140,124,0,0),(141,116,1,0),(142,125,0,0),(143,126,0,0),(144,127,0,0),(145,116,1,0),(146,128,0,0),(147,116,1,0),(148,130,0,0),(149,131,1,0),(150,129,1,0),(151,116,1,0),(152,131,1,0),(153,132,1,0),(154,133,1,0),(155,131,1,0),(156,116,1,0),(157,134,1,0),(158,133,1,0),(159,131,1,0),(160,135,1,0),(161,133,1,0),(162,136,1,0),(163,131,1,0),(164,137,1,0),(165,133,1,0),(166,138,0,0),(167,131,1,0),(168,133,1,0),(169,139,1,0),(170,131,1,0),(171,140,1,0),(172,141,0,0),(173,133,1,0),(174,131,1,0),(175,142,0,0),(176,133,1,0),(177,143,0,0),(178,144,1,0),(179,145,0,0),(180,133,1,0),(181,146,1,0),(182,148,0,0),(183,150,0,0),(184,151,1,0),(185,152,1,0),(186,153,0,0),(187,154,1,0),(188,155,0,0),(189,156,1,0),(190,157,0,0),(191,158,0,0),(192,159,0,0),(193,160,0,0),(194,161,0,0),(195,162,0,0),(196,163,1,0),(197,164,0,0),(198,165,0,0),(199,166,0,0),(200,167,0,0),(201,170,0,0),(202,171,0,0),(203,172,0,0),(204,173,0,0),(205,174,1,0),(206,175,0,0),(207,176,1,0),(208,177,1,0),(209,178,0,0);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (15,'android.permission.ACCESS_COARSE_LOCATION'),(17,'android.permission.ACCESS_FINE_LOCATION'),(6,'android.permission.CAMERA'),(12,'android.permission.CHANGE_CONFIGURATION'),(10,'android.permission.DEVICE_POWER'),(9,'android.permission.FLASHLIGHT'),(4,'android.permission.GET_ACCOUNTS'),(2,'android.permission.HARDWARE_TEST'),(8,'android.permission.INTERNET'),(3,'android.permission.READ_CONTACTS'),(5,'android.permission.READ_PHONE_STATE'),(16,'android.permission.READ_SMS'),(1,'android.permission.SEND_SMS'),(11,'android.permission.WAKE_LOCK'),(13,'android.permission.WRITE_EXTERNAL_STORAGE'),(7,'android.permission.WRITE_SETTINGS'),(14,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(2,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(3,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(4,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(5,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(6,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(7,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(8,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(9,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(10,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(11,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(12,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(13,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(14,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(15,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(16,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(17,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(18,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(19,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(20,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(21,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(22,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(23,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(24,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(25,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(26,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(27,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(28,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(29,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(30,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(31,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(32,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(33,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(34,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(35,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(36,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(37,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(38,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(39,NULL,NULL,'content://media/internal/images/media',NULL,NULL,NULL),(40,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(41,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(42,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(43,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(44,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(45,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(46,NULL,NULL,'market://details?id=drivereply.iconosys.eng',NULL,NULL,NULL),(47,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(48,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(49,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(50,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(51,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,4,1),(2,61,15),(3,70,20),(4,84,26),(5,96,29),(6,147,44),(7,179,51);
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,2,17),(14,2,16),(15,2,1),(16,3,17),(17,2,3),(18,3,1),(19,2,4),(20,3,16),(21,2,5),(22,3,3),(23,2,6),(24,3,5),(25,2,8),(26,3,6),(27,2,11),(28,3,8),(29,2,13),(30,3,11),(31,2,14),(32,3,13),(33,2,15),(34,4,1),(35,3,14),(36,4,3),(37,5,1),(38,3,15),(39,4,4),(40,5,3),(41,6,17),(42,5,4),(43,4,5),(44,6,1),(45,5,5),(46,4,6),(47,6,3),(48,5,6),(49,6,4),(50,4,8),(51,6,5),(52,4,11),(53,5,8),(54,5,11),(55,4,13),(56,6,8),(57,5,13),(58,6,11),(59,4,14),(60,5,14),(61,6,13),(62,4,15),(63,5,15),(64,6,15),(65,4,17),(66,5,17),(67,4,16),(68,5,16),(69,7,1),(70,7,3),(71,7,4),(72,7,5),(73,7,6),(74,7,8),(75,7,11),(76,7,13),(77,7,14),(78,7,15),(79,7,17),(80,7,16);
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

-- Dump completed on 2015-10-09  0:39:51
