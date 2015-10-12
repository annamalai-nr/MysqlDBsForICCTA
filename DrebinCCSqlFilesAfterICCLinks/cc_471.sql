-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_471
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (4,'android.appwidget.action.APPWIDGET_UPDATE'),(8,'android.intent.action.CHOOSER'),(6,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(5,'android.intent.action.PICK'),(2,'android.intent.action.SENDTO'),(3,'android.intent.action.VIEW'),(7,'android.media.action.IMAGE_CAPTURE'),(10,'android.settings.LOCATION_SOURCE_SETTINGS'),(9,'com.speed.iconosys');
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
INSERT INTO `Applications` VALUES (1,'firstkiss.timer.iconosys',1),(2,'ctia.iconosys.motorola.eng',7),(3,'mugshotfun.iconosys.eng',7),(4,'com.iconosys.springbreakstrobe',1),(5,'fourthofjulyphoto.photo.iconosys.eng',1),(6,'maxspeed.iconosys.eng',5),(7,'wedplankit.iconosys.eng',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'firstkiss.timer.iconosys.ChristmasTimer'),(2,1,'firstkiss.timer.iconosys.ContactsList'),(3,1,'firstkiss.timer.iconosys.OtherApps'),(4,1,'firstkiss.timer.iconosys.MessageService'),(5,2,'ctia.iconosys.motorola.eng.MeInJail'),(6,3,'mugshotfun.iconosys.eng.MeInJail'),(7,4,'com.iconosys.springbreakstrobe.NewYearsStrobe'),(8,2,'ctia.iconosys.motorola.eng.PhotoView'),(9,3,'mugshotfun.iconosys.eng.PhotoView'),(10,4,'com.iconosys.springbreakstrobe.Preferences'),(11,5,'fourthofjulyphoto.photo.iconosys.eng.MeInJail'),(12,4,'com.iconosys.springbreakstrobe.RegistrationScreen'),(13,4,'com.iconosys.springbreakstrobe.ShowTerms'),(14,5,'fourthofjulyphoto.photo.iconosys.eng.PhotoView'),(15,4,'com.iconosys.springbreakstrobe.OtherApps'),(16,2,'ctia.iconosys.motorola.eng.OtherApps'),(17,3,'mugshotfun.iconosys.eng.OtherApps'),(18,2,'ctia.iconosys.motorola.eng.ShowTerms'),(19,3,'mugshotfun.iconosys.eng.ShowTerms'),(20,4,'com.iconosys.springbreakstrobe.AdView'),(21,2,'ctia.iconosys.motorola.eng.RegistrationScreen'),(22,3,'mugshotfun.iconosys.eng.RegistrationScreen'),(23,6,'maxspeed.iconosys.eng.MyMaxSpeed'),(24,2,'ctia.iconosys.motorola.eng.ShareImage'),(25,3,'mugshotfun.iconosys.eng.ShareImage'),(26,2,'ctia.iconosys.motorola.eng.ShowPopUp'),(27,3,'mugshotfun.iconosys.eng.ShowPopUp'),(28,5,'fourthofjulyphoto.photo.iconosys.eng.OtherApps'),(29,6,'maxspeed.iconosys.eng.SelectRange'),(30,2,'ctia.iconosys.motorola.eng.AdView'),(31,3,'mugshotfun.iconosys.eng.AdView'),(32,5,'fourthofjulyphoto.photo.iconosys.eng.ShowTerms'),(33,6,'maxspeed.iconosys.eng.IconosysActivity'),(34,2,'ctia.iconosys.motorola.eng.LocationSender'),(35,5,'fourthofjulyphoto.photo.iconosys.eng.RegistrationScreen'),(36,3,'mugshotfun.iconosys.eng.LocationSender'),(37,6,'maxspeed.iconosys.eng.ReportSheet'),(38,5,'fourthofjulyphoto.photo.iconosys.eng.ShareImage'),(39,6,'maxspeed.iconosys.eng.DisplayMap'),(40,5,'fourthofjulyphoto.photo.iconosys.eng.ShowPopUp'),(41,6,'maxspeed.iconosys.eng.ShowTerms'),(42,5,'fourthofjulyphoto.photo.iconosys.eng.AdView'),(43,6,'maxspeed.iconosys.eng.AdView'),(44,5,'fourthofjulyphoto.photo.iconosys.eng.LocationSender'),(45,6,'maxspeed.iconosys.eng.OtherApps'),(46,6,'maxspeed.iconosys.eng.RegistrationScreen'),(47,6,'maxspeed.iconosys.eng.Settings'),(48,6,'maxspeed.iconosys.eng.CreateLogin'),(49,6,'maxspeed.iconosys.eng.Speed'),(50,6,'maxspeed.iconosys.eng.LocationSender'),(51,6,'maxspeed.iconosys.eng.MyMaxSpeedWidget'),(52,7,'wedplankit.iconosys.eng.MyReceiptManager'),(53,7,'wedplankit.iconosys.eng.ShowPopUp'),(54,7,'wedplankit.iconosys.eng.MileageAdd'),(55,7,'wedplankit.iconosys.eng.OtherApps'),(56,7,'wedplankit.iconosys.eng.ReviewSelection'),(57,7,'wedplankit.iconosys.eng.TakePicture'),(58,7,'wedplankit.iconosys.eng.Review'),(59,7,'wedplankit.iconosys.eng.DisplayCategory'),(60,7,'wedplankit.iconosys.eng.ShowCat'),(61,7,'wedplankit.iconosys.eng.Preview'),(62,7,'wedplankit.iconosys.eng.SpreadSheet'),(63,7,'wedplankit.iconosys.eng.MileageSheet'),(64,7,'wedplankit.iconosys.eng.SaveSend'),(65,7,'wedplankit.iconosys.eng.Mileage'),(66,7,'wedplankit.iconosys.eng.ShowPopUpReport'),(67,7,'wedplankit.iconosys.eng.AdView'),(68,7,'wedplankit.iconosys.eng.RegistrationScreen'),(69,7,'wedplankit.iconosys.eng.MileageSend'),(70,7,'wedplankit.iconosys.eng.SelectRange'),(71,7,'wedplankit.iconosys.eng.ReportSheet'),(72,7,'wedplankit.iconosys.eng.ShowTerms'),(73,1,'firstkiss.timer.iconosys.OtherApps$4'),(74,7,'wedplankit.iconosys.eng.Settings'),(75,7,'wedplankit.iconosys.eng.LocationSender'),(76,1,'firstkiss.timer.iconosys.OtherApps$6'),(77,1,'firstkiss.timer.iconosys.OtherApps$1'),(78,1,'firstkiss.timer.iconosys.OtherApps$5'),(79,1,'firstkiss.timer.iconosys.OtherApps$2'),(80,1,'firstkiss.timer.iconosys.OtherApps$3'),(81,4,'com.iconosys.springbreakstrobe.RegistrationScreen$1'),(82,3,'mugshotfun.iconosys.eng.OtherApps$3'),(83,2,'ctia.iconosys.motorola.eng.OtherApps$4'),(84,3,'mugshotfun.iconosys.eng.OtherApps$6'),(85,3,'mugshotfun.iconosys.eng.MeInJail$2'),(86,2,'ctia.iconosys.motorola.eng.MeInJail$2'),(87,2,'ctia.iconosys.motorola.eng.MeInJail$1'),(88,5,'fourthofjulyphoto.photo.iconosys.eng.PhotoView$1'),(89,3,'mugshotfun.iconosys.eng.PhotoView$1'),(90,3,'mugshotfun.iconosys.eng.RegistrationScreen$1'),(91,6,'maxspeed.iconosys.eng.MyMaxSpeed$4'),(92,3,'mugshotfun.iconosys.eng.OtherApps$2'),(93,6,'maxspeed.iconosys.eng.OtherApps$3'),(94,6,'maxspeed.iconosys.eng.OtherApps$4'),(95,3,'mugshotfun.iconosys.eng.OtherApps$5'),(96,6,'maxspeed.iconosys.eng.LoginDialog'),(97,3,'mugshotfun.iconosys.eng.OtherApps$4'),(98,2,'ctia.iconosys.motorola.eng.OtherApps$3'),(99,3,'mugshotfun.iconosys.eng.OtherApps$1'),(100,6,'maxspeed.iconosys.eng.RegistrationScreen$1'),(101,2,'ctia.iconosys.motorola.eng.OtherApps$5'),(102,3,'mugshotfun.iconosys.eng.MeInJail$1'),(103,2,'ctia.iconosys.motorola.eng.RegistrationScreen$1'),(104,5,'fourthofjulyphoto.photo.iconosys.eng.OtherApps$5'),(105,2,'ctia.iconosys.motorola.eng.OtherApps$1'),(106,6,'maxspeed.iconosys.eng.OtherApps$6'),(107,5,'fourthofjulyphoto.photo.iconosys.eng.MeInJail$1'),(108,2,'ctia.iconosys.motorola.eng.OtherApps$6'),(109,6,'maxspeed.iconosys.eng.OtherApps$2'),(110,5,'fourthofjulyphoto.photo.iconosys.eng.OtherApps$2'),(111,6,'maxspeed.iconosys.eng.MyMaxSpeed$6'),(112,2,'ctia.iconosys.motorola.eng.PhotoView$1'),(113,5,'fourthofjulyphoto.photo.iconosys.eng.MeInJail$2'),(114,6,'maxspeed.iconosys.eng.OtherApps$5'),(115,5,'fourthofjulyphoto.photo.iconosys.eng.OtherApps$4'),(116,2,'ctia.iconosys.motorola.eng.OtherApps$2'),(117,5,'fourthofjulyphoto.photo.iconosys.eng.OtherApps$1'),(118,6,'maxspeed.iconosys.eng.SelectRange$5'),(119,5,'fourthofjulyphoto.photo.iconosys.eng.RegistrationScreen$1'),(120,6,'maxspeed.iconosys.eng.MyMaxSpeed$SpeedBroadCast'),(121,6,'maxspeed.iconosys.eng.OtherApps$1'),(122,5,'fourthofjulyphoto.photo.iconosys.eng.OtherApps$3'),(123,5,'fourthofjulyphoto.photo.iconosys.eng.OtherApps$6'),(124,7,'wedplankit.iconosys.eng.Settings$3'),(125,7,'wedplankit.iconosys.eng.OtherApps$1'),(126,7,'wedplankit.iconosys.eng.OtherApps$6'),(127,6,'maxspeed.iconosys.eng.MyMaxSpeed$5'),(128,7,'wedplankit.iconosys.eng.Mileage$8'),(129,7,'wedplankit.iconosys.eng.MileageSend$1'),(130,7,'wedplankit.iconosys.eng.Review$3'),(131,7,'wedplankit.iconosys.eng.SaveSend$4'),(132,7,'wedplankit.iconosys.eng.MyReceiptManager$5'),(133,7,'wedplankit.iconosys.eng.MyReceiptManager$2'),(134,7,'wedplankit.iconosys.eng.MyReceiptManager$3'),(135,7,'wedplankit.iconosys.eng.OtherApps$4'),(136,7,'wedplankit.iconosys.eng.OtherApps$2'),(137,7,'wedplankit.iconosys.eng.Mileage$5'),(138,7,'wedplankit.iconosys.eng.Review$1'),(139,7,'wedplankit.iconosys.eng.SelectRange$5'),(140,7,'wedplankit.iconosys.eng.RegistrationScreen$1'),(141,7,'wedplankit.iconosys.eng.MyReceiptManager$1'),(142,7,'wedplankit.iconosys.eng.Mileage$4'),(143,7,'wedplankit.iconosys.eng.OtherApps$3'),(144,7,'wedplankit.iconosys.eng.OtherApps$5');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,20,'_who'),(2,8,'take_photo'),(3,8,'pick_photo'),(4,32,'_who'),(5,29,'_who'),(6,24,'saved_uri'),(7,15,'pick_photo'),(8,15,'take_photo'),(9,37,'range2'),(10,9,'pick_photo'),(11,9,'take_photo'),(12,25,'saved_uri'),(13,38,'saved_uri'),(14,42,'_who'),(15,37,'range1'),(16,43,'_who'),(17,52,'(.*)'),(18,71,'id'),(19,62,'_cat'),(20,71,'Category'),(21,54,'_mileage'),(22,52,'access_token'),(23,69,'_id'),(24,56,'report_type'),(25,70,'Category'),(26,71,'range2'),(27,70,'id'),(28,71,'range1'),(29,70,'report_type'),(30,67,'_who'),(31,56,'id'),(32,64,'_id');
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,15,'a',1,NULL,NULL),(15,14,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,30,'a',0,NULL,NULL),(30,29,'a',0,NULL,NULL),(31,32,'a',0,NULL,NULL),(32,31,'a',0,NULL,NULL),(33,34,'s',0,NULL,NULL),(34,33,'a',0,NULL,NULL),(35,36,'s',0,NULL,NULL),(36,35,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'s',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,50,'s',0,NULL,NULL),(51,51,'r',1,NULL,NULL),(52,52,'a',1,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,74,'a',0,NULL,NULL),(74,75,'s',0,NULL,NULL),(75,120,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,3),(3,3,3),(4,4,3),(5,5,3),(6,6,3),(7,7,3),(8,8,2),(9,9,2),(10,10,1),(11,11,12),(12,12,12),(13,13,7),(14,14,12),(15,15,7),(16,16,7),(17,17,7),(18,18,7),(19,19,7),(20,20,7),(21,21,9),(22,22,6),(23,23,21),(24,24,17),(25,25,21),(26,26,22),(27,27,6),(28,28,16),(29,29,17),(30,30,8),(31,31,6),(32,32,5),(33,33,5),(34,34,6),(35,35,5),(36,36,38),(37,37,22),(38,38,5),(39,39,15),(40,40,9),(41,41,8),(42,42,15),(43,43,9),(44,44,15),(45,45,24),(46,46,9),(47,47,6),(48,48,8),(49,49,36),(50,50,22),(51,51,8),(52,52,11),(53,53,23),(54,53,34),(55,54,17),(56,55,24),(57,56,15),(58,57,45),(59,58,9),(60,59,11),(61,60,34),(62,61,25),(63,62,11),(64,63,45),(65,64,36),(66,65,17),(67,66,34),(68,67,38),(69,68,9),(70,69,34),(71,70,17),(72,71,49),(73,71,23),(74,72,16),(75,73,17),(76,74,46),(77,75,16),(78,76,23),(79,76,34),(80,77,6),(81,78,5),(82,79,23),(83,79,34),(84,80,21),(85,81,9),(86,82,28),(87,83,51),(88,84,16),(89,85,6),(90,86,45),(91,87,6),(92,88,11),(93,89,16),(94,90,9),(95,91,34),(96,92,38),(97,93,5),(98,94,25),(99,95,45),(100,96,28),(101,97,25),(102,98,8),(103,99,23),(104,100,15),(105,101,8),(106,102,11),(107,103,34),(108,104,8),(109,106,28),(110,105,45),(111,107,5),(112,108,8),(113,109,46),(114,110,11),(115,112,37),(116,113,15),(117,111,16),(118,114,28),(119,115,30),(120,116,36),(121,117,11),(122,118,15),(123,119,34),(124,120,15),(125,121,45),(126,122,28),(127,123,34),(128,123,23),(129,124,28),(130,125,23),(131,125,34),(132,126,11),(133,127,37),(134,128,73),(135,129,65),(136,130,52),(137,131,55),(138,132,46),(139,133,55),(140,134,34),(141,134,23),(142,135,65),(143,136,34),(144,137,69),(145,138,58),(146,139,52),(147,140,58),(148,141,64),(149,142,56),(150,143,52),(151,144,52),(152,145,52),(153,146,65),(154,147,68),(155,148,58),(156,149,52),(157,150,73),(158,151,55),(159,152,52),(160,153,68),(161,154,65),(162,155,55),(163,156,63),(164,157,52),(165,158,65),(166,159,65),(167,160,57),(168,161,62),(169,162,58),(170,163,52),(171,164,65),(172,165,65),(173,166,58),(174,167,70),(175,168,68),(176,169,52),(177,170,52),(178,171,52),(179,172,71),(180,173,58),(181,174,65),(182,175,56),(183,176,73),(184,177,73),(185,178,55),(186,179,55),(187,180,52),(188,181,73);
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
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<firstkiss.timer.iconosys.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',27,'a',NULL),(2,73,'<firstkiss.timer.iconosys.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(3,76,'<firstkiss.timer.iconosys.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(4,77,'<firstkiss.timer.iconosys.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(5,78,'<firstkiss.timer.iconosys.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(6,79,'<firstkiss.timer.iconosys.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(7,80,'<firstkiss.timer.iconosys.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(8,2,'<firstkiss.timer.iconosys.ContactsList: void onStart()>',4,'p',NULL),(9,2,'<firstkiss.timer.iconosys.ContactsList: void next()>',3,'p',NULL),(10,1,'<firstkiss.timer.iconosys.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(11,12,'<com.iconosys.springbreakstrobe.RegistrationScreen: void SendAutoData()>',89,'s',NULL),(12,12,'<com.iconosys.springbreakstrobe.RegistrationScreen: void SendPhoneData()>',93,'s',NULL),(13,7,'<com.iconosys.springbreakstrobe.NewYearsStrobe: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(14,81,'<com.iconosys.springbreakstrobe.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(15,7,'<com.iconosys.springbreakstrobe.NewYearsStrobe: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(16,7,'<com.iconosys.springbreakstrobe.NewYearsStrobe: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(17,7,'<com.iconosys.springbreakstrobe.NewYearsStrobe: void onResume()>',14,'a',NULL),(18,7,'<com.iconosys.springbreakstrobe.NewYearsStrobe: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(19,7,'<com.iconosys.springbreakstrobe.NewYearsStrobe: void onCreate(android.os.Bundle)>',12,'a',NULL),(20,7,'<com.iconosys.springbreakstrobe.NewYearsStrobe: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(21,9,'<mugshotfun.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(22,6,'<mugshotfun.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(23,21,'<ctia.iconosys.motorola.eng.RegistrationScreen: void SendPhoneData()>',93,'s',NULL),(24,82,'<mugshotfun.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(25,21,'<ctia.iconosys.motorola.eng.RegistrationScreen: void SendAutoData()>',89,'s',NULL),(26,22,'<mugshotfun.iconosys.eng.RegistrationScreen: void SendPhoneData()>',93,'s',NULL),(27,6,'<mugshotfun.iconosys.eng.MeInJail: void onCreate(android.os.Bundle)>',6,'a',NULL),(28,83,'<ctia.iconosys.motorola.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(29,84,'<mugshotfun.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(30,8,'<ctia.iconosys.motorola.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(31,6,'<mugshotfun.iconosys.eng.MeInJail: void onResume()>',14,'a',NULL),(32,5,'<ctia.iconosys.motorola.eng.MeInJail: void onResume()>',10,'a',NULL),(33,5,'<ctia.iconosys.motorola.eng.MeInJail: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(34,85,'<mugshotfun.iconosys.eng.MeInJail$2: void onClick(android.view.View)>',7,'a',NULL),(35,86,'<ctia.iconosys.motorola.eng.MeInJail$2: void onClick(android.view.View)>',7,'a',NULL),(36,38,'<fourthofjulyphoto.photo.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(37,22,'<mugshotfun.iconosys.eng.RegistrationScreen: void SendAutoData()>',89,'s',NULL),(38,87,'<ctia.iconosys.motorola.eng.MeInJail$1: void onClick(android.view.View)>',7,'a',NULL),(39,88,'<fourthofjulyphoto.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',9,'a',NULL),(40,9,'<mugshotfun.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(41,8,'<ctia.iconosys.motorola.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(42,14,'<fourthofjulyphoto.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(43,89,'<mugshotfun.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',9,'a',NULL),(44,88,'<fourthofjulyphoto.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',23,'a',NULL),(45,24,'<ctia.iconosys.motorola.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(46,9,'<mugshotfun.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(47,6,'<mugshotfun.iconosys.eng.MeInJail: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(48,8,'<ctia.iconosys.motorola.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',6,'a',NULL),(49,35,'<fourthofjulyphoto.photo.iconosys.eng.RegistrationScreen: void SendPhoneData()>',93,'s',NULL),(50,90,'<mugshotfun.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(51,8,'<ctia.iconosys.motorola.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(52,11,'<fourthofjulyphoto.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(53,91,'<maxspeed.iconosys.eng.MyMaxSpeed$4: void onClick(android.view.View)>',6,'a',NULL),(54,92,'<mugshotfun.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(55,24,'<ctia.iconosys.motorola.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(56,14,'<fourthofjulyphoto.photo.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(57,93,'<maxspeed.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(58,9,'<mugshotfun.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(59,11,'<fourthofjulyphoto.photo.iconosys.eng.MeInJail: void onResume()>',14,'a',NULL),(60,33,'<maxspeed.iconosys.eng.IconosysActivity: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(61,25,'<mugshotfun.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(62,11,'<fourthofjulyphoto.photo.iconosys.eng.MeInJail: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(63,94,'<maxspeed.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(64,35,'<fourthofjulyphoto.photo.iconosys.eng.RegistrationScreen: void SendAutoData()>',89,'s',NULL),(65,95,'<mugshotfun.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(66,33,'<maxspeed.iconosys.eng.IconosysActivity: void onActivityResult(int,int,android.content.Intent)>',11,'p',0),(67,38,'<fourthofjulyphoto.photo.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(68,9,'<mugshotfun.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(69,96,'<maxspeed.iconosys.eng.LoginDialog: void createLogin()>',5,'a',NULL),(70,97,'<mugshotfun.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(71,49,'<maxspeed.iconosys.eng.Speed: void onLocationChanged(android.location.Location)>',21,'r',NULL),(72,98,'<ctia.iconosys.motorola.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(73,99,'<mugshotfun.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(74,100,'<maxspeed.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(75,101,'<ctia.iconosys.motorola.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(76,23,'<maxspeed.iconosys.eng.MyMaxSpeed: void onCreate(android.os.Bundle)>',9,'s',NULL),(77,102,'<mugshotfun.iconosys.eng.MeInJail$1: void onClick(android.view.View)>',7,'a',NULL),(78,5,'<ctia.iconosys.motorola.eng.MeInJail: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(79,33,'<maxspeed.iconosys.eng.IconosysActivity: void onCreate(android.os.Bundle)>',22,'a',NULL),(80,103,'<ctia.iconosys.motorola.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(81,9,'<mugshotfun.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',6,'a',NULL),(82,104,'<fourthofjulyphoto.photo.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(83,51,'<maxspeed.iconosys.eng.MyMaxSpeedWidget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',9,'s',NULL),(84,105,'<ctia.iconosys.motorola.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(85,6,'<mugshotfun.iconosys.eng.MeInJail: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(86,106,'<maxspeed.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(87,6,'<mugshotfun.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(88,107,'<fourthofjulyphoto.photo.iconosys.eng.MeInJail$1: void onClick(android.view.View)>',7,'a',NULL),(89,108,'<ctia.iconosys.motorola.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(90,89,'<mugshotfun.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',23,'a',NULL),(91,33,'<maxspeed.iconosys.eng.IconosysActivity: void onActivityResult(int,int,android.content.Intent)>',32,'a',NULL),(92,38,'<fourthofjulyphoto.photo.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(93,5,'<ctia.iconosys.motorola.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(94,25,'<mugshotfun.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(95,109,'<maxspeed.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(96,110,'<fourthofjulyphoto.photo.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(97,25,'<mugshotfun.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(98,8,'<ctia.iconosys.motorola.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(99,111,'<maxspeed.iconosys.eng.MyMaxSpeed$6: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(100,14,'<fourthofjulyphoto.photo.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(101,112,'<ctia.iconosys.motorola.eng.PhotoView$1: void onClick(android.view.View)>',23,'a',NULL),(102,113,'<fourthofjulyphoto.photo.iconosys.eng.MeInJail$2: void onClick(android.view.View)>',7,'a',NULL),(103,33,'<maxspeed.iconosys.eng.IconosysActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(104,8,'<ctia.iconosys.motorola.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(105,114,'<maxspeed.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(106,115,'<fourthofjulyphoto.photo.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(107,5,'<ctia.iconosys.motorola.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(108,112,'<ctia.iconosys.motorola.eng.PhotoView$1: void onClick(android.view.View)>',9,'a',NULL),(109,46,'<maxspeed.iconosys.eng.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(110,11,'<fourthofjulyphoto.photo.iconosys.eng.MeInJail: void onCreate(android.os.Bundle)>',6,'a',NULL),(111,116,'<ctia.iconosys.motorola.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(112,37,'<maxspeed.iconosys.eng.ReportSheet: void onCreate(android.os.Bundle)>',28,'s',NULL),(113,14,'<fourthofjulyphoto.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',6,'a',NULL),(114,117,'<fourthofjulyphoto.photo.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(115,118,'<maxspeed.iconosys.eng.SelectRange$5: void onClick(android.view.View)>',12,'a',NULL),(116,119,'<fourthofjulyphoto.photo.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(117,11,'<fourthofjulyphoto.photo.iconosys.eng.MeInJail: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(118,14,'<fourthofjulyphoto.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(119,33,'<maxspeed.iconosys.eng.IconosysActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(120,14,'<fourthofjulyphoto.photo.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(121,121,'<maxspeed.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(122,122,'<fourthofjulyphoto.photo.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(123,23,'<maxspeed.iconosys.eng.MyMaxSpeed: void onCreate(android.os.Bundle)>',10,'s',NULL),(124,123,'<fourthofjulyphoto.photo.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(125,33,'<maxspeed.iconosys.eng.IconosysActivity: void onCreate(android.os.Bundle)>',16,'a',NULL),(126,11,'<fourthofjulyphoto.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(127,37,'<maxspeed.iconosys.eng.ReportSheet: void sendToFile()>',15,'a',NULL),(128,124,'<wedplankit.iconosys.eng.Settings$3: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(129,65,'<wedplankit.iconosys.eng.Mileage: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(130,52,'<wedplankit.iconosys.eng.MyReceiptManager: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(131,125,'<wedplankit.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(132,46,'<maxspeed.iconosys.eng.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(133,126,'<wedplankit.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(134,127,'<maxspeed.iconosys.eng.MyMaxSpeed$5: void onClick(android.view.View)>',6,'a',NULL),(135,128,'<wedplankit.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(136,96,'<maxspeed.iconosys.eng.LoginDialog: void openSettings()>',5,'a',NULL),(137,129,'<wedplankit.iconosys.eng.MileageSend$1: void onClick(android.view.View)>',49,'a',NULL),(138,58,'<wedplankit.iconosys.eng.Review: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(139,52,'<wedplankit.iconosys.eng.MyReceiptManager: void onCreate(android.os.Bundle)>',6,'a',NULL),(140,130,'<wedplankit.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(141,131,'<wedplankit.iconosys.eng.SaveSend$4: void onClick(android.view.View)>',89,'a',NULL),(142,56,'<wedplankit.iconosys.eng.ReviewSelection: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(143,52,'<wedplankit.iconosys.eng.MyReceiptManager: void onActivityResult(int,int,android.content.Intent)>',11,'p',0),(144,132,'<wedplankit.iconosys.eng.MyReceiptManager$5: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(145,133,'<wedplankit.iconosys.eng.MyReceiptManager$2: void onClick(android.view.View)>',7,'a',NULL),(146,65,'<wedplankit.iconosys.eng.Mileage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(147,68,'<wedplankit.iconosys.eng.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(148,130,'<wedplankit.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(149,134,'<wedplankit.iconosys.eng.MyReceiptManager$3: void onClick(android.view.View)>',6,'a',NULL),(150,124,'<wedplankit.iconosys.eng.Settings$3: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(151,135,'<wedplankit.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(152,132,'<wedplankit.iconosys.eng.MyReceiptManager$5: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(153,68,'<wedplankit.iconosys.eng.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(154,128,'<wedplankit.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(155,136,'<wedplankit.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(156,63,'<wedplankit.iconosys.eng.MileageSheet: void sendToFile()>',21,'a',NULL),(157,52,'<wedplankit.iconosys.eng.MyReceiptManager: void onResume()>',10,'a',NULL),(158,137,'<wedplankit.iconosys.eng.Mileage$5: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(159,65,'<wedplankit.iconosys.eng.Mileage: void calcDistance()>',34,'a',NULL),(160,57,'<wedplankit.iconosys.eng.TakePicture: void startCameraActivity()>',9,'a',NULL),(161,62,'<wedplankit.iconosys.eng.SpreadSheet: void sendToFile()>',21,'a',NULL),(162,138,'<wedplankit.iconosys.eng.Review$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(163,132,'<wedplankit.iconosys.eng.MyReceiptManager$5: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(164,128,'<wedplankit.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(165,128,'<wedplankit.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(166,130,'<wedplankit.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(167,139,'<wedplankit.iconosys.eng.SelectRange$5: void onClick(android.view.View)>',18,'a',NULL),(168,140,'<wedplankit.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(169,132,'<wedplankit.iconosys.eng.MyReceiptManager$5: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(170,141,'<wedplankit.iconosys.eng.MyReceiptManager$1: void onClick(android.view.View)>',7,'a',NULL),(171,52,'<wedplankit.iconosys.eng.MyReceiptManager: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(172,71,'<wedplankit.iconosys.eng.ReportSheet: void sendToFile()>',22,'a',NULL),(173,130,'<wedplankit.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(174,142,'<wedplankit.iconosys.eng.Mileage$4: void onClick(android.view.View)>',6,'a',NULL),(175,56,'<wedplankit.iconosys.eng.ReviewSelection: void getSelection(android.util.SparseBooleanArray)>',20,'a',NULL),(176,124,'<wedplankit.iconosys.eng.Settings$3: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(177,74,'<wedplankit.iconosys.eng.Settings: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(178,143,'<wedplankit.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(179,144,'<wedplankit.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(180,52,'<wedplankit.iconosys.eng.MyReceiptManager: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(181,124,'<wedplankit.iconosys.eng.Settings$3: void onClick(android.content.DialogInterface,int)>',19,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,3),(2,3,3),(3,4,3),(4,5,3),(5,6,3),(6,7,3),(7,15,5),(8,17,6),(9,18,5),(10,20,3),(11,24,3),(12,25,3),(13,26,7),(14,35,7),(15,45,5),(16,47,3),(17,48,8),(18,49,6),(19,50,8),(20,51,3),(21,54,8),(22,56,8),(23,57,8),(24,58,3),(25,60,3),(26,61,8),(27,62,8),(28,63,8),(29,66,8),(30,67,8),(31,68,8),(32,69,3),(33,70,9),(34,71,8),(35,72,3),(36,73,8),(37,74,3),(38,76,8),(39,77,3),(40,78,8),(41,81,8),(42,86,3),(43,87,3),(44,88,3),(45,91,3),(46,95,5),(47,97,3),(48,98,3),(49,99,8),(50,100,6),(51,101,8),(52,102,10),(53,103,8),(54,107,8),(55,108,8),(56,111,3),(57,110,3),(58,112,8),(59,114,8),(60,117,8),(61,120,3),(62,121,3),(63,125,5),(64,126,7),(65,127,3),(66,128,3),(67,130,3),(68,133,8),(69,134,8),(70,136,8),(71,137,8),(72,139,8),(73,140,8),(74,141,8),(75,142,3),(76,143,8),(77,145,3),(78,149,8),(79,150,8),(80,151,8),(81,152,8),(82,153,8),(83,154,8),(84,155,8),(85,156,8),(86,160,8),(87,161,8),(88,162,8),(89,163,8),(90,164,8),(91,165,8),(92,166,8),(93,167,8),(94,176,3),(95,180,3),(96,181,8),(97,182,8),(98,183,8),(99,184,8),(100,185,8),(101,186,8),(102,187,8),(103,188,8),(104,190,10),(105,192,7),(106,193,8),(107,194,8),(108,195,8),(109,196,8),(110,197,8),(111,198,8),(112,199,8),(113,200,8),(114,210,5),(115,211,8),(116,212,8),(117,213,8),(118,214,8),(119,215,8),(120,216,8),(121,217,8),(122,218,8),(123,224,3),(124,225,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'firstkiss/timer/iconosys/OtherApps'),(2,8,'firstkiss/timer/iconosys/ContactsList'),(3,9,'com/iconosys/springbreakstrobe/LocationSender'),(4,10,'com/iconosys/springbreakstrobe/LocationSender'),(5,11,'com/iconosys/springbreakstrobe/Preferences'),(6,12,'com/iconosys/springbreakstrobe/ShowTerms'),(7,13,'com/iconosys/springbreakstrobe/OtherApps'),(8,14,'com/iconosys/springbreakstrobe/RegistrationScreen'),(9,16,'com/iconosys/springbreakstrobe/AdView'),(10,19,'ctia/iconosys/motorola/eng/LocationSender'),(11,21,'ctia/iconosys/motorola/eng/LocationSender'),(12,22,'mugshotfun/iconosys/eng/LocationSender'),(13,23,'mugshotfun/iconosys/eng/AdView'),(14,27,'mugshotfun/iconosys/eng/RegistrationScreen'),(15,28,'ctia/iconosys/motorola/eng/RegistrationScreen'),(16,29,'mugshotfun/iconosys/eng/PhotoView'),(17,31,'fourthofjulyphoto/photo/iconosys/eng/OtherApps'),(18,30,'ctia/iconosys/motorola/eng/PhotoView'),(19,32,'mugshotfun/iconosys/eng/LocationSender'),(20,33,'ctia/iconosys/motorola/eng/PhotoView'),(21,34,'fourthofjulyphoto/photo/iconosys/eng/ShowPopUp'),(22,37,'fourthofjulyphoto/photo/iconosys/eng/OtherApps'),(23,36,'ctia/iconosys/motorola/eng/MeInJail'),(24,38,'mugshotfun/iconosys/eng/ShowPopUp'),(25,39,'ctia/iconosys/motorola/eng/OtherApps'),(26,40,'fourthofjulyphoto/photo/iconosys/eng/ShareImage'),(27,41,'ctia/iconosys/motorola/eng/ShowPopUp'),(28,42,'fourthofjulyphoto/photo/iconosys/eng/LocationSender'),(29,43,'mugshotfun/iconosys/eng/ShowTerms'),(30,44,'ctia/iconosys/motorola/eng/OtherApps'),(31,46,'maxspeed/iconosys/eng/SelectRange'),(32,52,'mugshotfun/iconosys/eng/MeInJail'),(33,53,'fourthofjulyphoto/photo/iconosys/eng/RegistrationScreen'),(34,55,'mugshotfun/iconosys/eng/OtherApps'),(35,59,'fourthofjulyphoto/photo/iconosys/eng/LocationSender'),(36,64,'mugshotfun/iconosys/eng/OtherApps'),(37,65,'maxspeed/iconosys/eng/CreateLogin'),(38,75,'maxspeed/iconosys/eng/ShowTerms'),(39,79,'maxspeed/iconosys/eng/Speed'),(40,80,'mugshotfun/iconosys/eng/PhotoView'),(41,82,'maxspeed/iconosys/eng/AdView'),(42,83,'ctia/iconosys/motorola/eng/ShowTerms'),(43,84,'mugshotfun/iconosys/eng/ShowPopUp'),(44,85,'maxspeed/iconosys/eng/Speed'),(45,89,'mugshotfun/iconosys/eng/OtherApps'),(46,90,'fourthofjulyphoto/photo/iconosys/eng/PhotoView'),(47,93,'maxspeed/iconosys/eng/RegistrationScreen'),(48,92,'mugshotfun/iconosys/eng/ShareImage'),(49,94,'fourthofjulyphoto/photo/iconosys/eng/AdView'),(50,96,'mugshotfun/iconosys/eng/AdView'),(51,104,'ctia/iconosys/motorola/eng/ShareImage'),(52,106,'maxspeed/iconosys/eng/OtherApps'),(53,105,'fourthofjulyphoto/photo/iconosys/eng/PhotoView'),(54,109,'ctia/iconosys/motorola/eng/OtherApps'),(55,113,'ctia/iconosys/motorola/eng/ShowPopUp'),(56,115,'maxspeed/iconosys/eng/LocationSender'),(57,116,'fourthofjulyphoto/photo/iconosys/eng/AdView'),(58,119,'fourthofjulyphoto/photo/iconosys/eng/ShowPopUp'),(59,118,'maxspeed/iconosys/eng/Speed'),(60,122,'maxspeed/iconosys/eng/ReportSheet'),(61,123,'fourthofjulyphoto/photo/iconosys/eng/ShowTerms'),(62,124,'fourthofjulyphoto/photo/iconosys/eng/MeInJail'),(63,129,'maxspeed/iconosys/eng/Speed'),(64,131,'maxspeed/iconosys/eng/RegistrationScreen'),(65,132,'fourthofjulyphoto/photo/iconosys/eng/OtherApps'),(66,135,'wedplankit/iconosys/eng/ReviewSelection'),(67,138,'wedplankit/iconosys/eng/MileageSheet'),(68,144,'maxspeed/iconosys/eng/LocationSender'),(69,146,'maxspeed/iconosys/eng/ReportSheet'),(70,147,'wedplankit/iconosys/eng/ReviewSelection'),(71,148,'maxspeed/iconosys/eng/Settings'),(72,157,'wedplankit/iconosys/eng/OtherApps'),(73,158,'wedplankit/iconosys/eng/AdView'),(74,159,'wedplankit/iconosys/eng/ReviewSelection'),(75,168,'wedplankit/iconosys/eng/OtherApps'),(76,169,'wedplankit/iconosys/eng/ReviewSelection'),(77,170,'wedplankit/iconosys/eng/Review'),(78,171,'wedplankit/iconosys/eng/OtherApps'),(79,172,'wedplankit/iconosys/eng/LocationSender'),(80,173,'wedplankit/iconosys/eng/ReviewSelection'),(81,174,'wedplankit/iconosys/eng/Settings'),(82,175,'wedplankit/iconosys/eng/SelectRange'),(83,177,'wedplankit/iconosys/eng/ReviewSelection'),(84,178,'wedplankit/iconosys/eng/LocationSender'),(85,179,'wedplankit/iconosys/eng/ReviewSelection'),(86,189,'wedplankit/iconosys/eng/RegistrationScreen'),(87,191,'wedplankit/iconosys/eng/MileageAdd'),(88,201,'wedplankit/iconosys/eng/SelectRange'),(89,202,'wedplankit/iconosys/eng/ReviewSelection'),(90,203,'wedplankit/iconosys/eng/ReviewSelection'),(91,204,'wedplankit/iconosys/eng/SelectRange'),(92,205,'wedplankit/iconosys/eng/ReviewSelection'),(93,206,'wedplankit/iconosys/eng/ReportSheet'),(94,207,'wedplankit/iconosys/eng/ShowTerms'),(95,208,'wedplankit/iconosys/eng/SelectRange'),(96,209,'wedplankit/iconosys/eng/TakePicture'),(97,219,'wedplankit/iconosys/eng/SelectRange'),(98,220,'wedplankit/iconosys/eng/MileageSheet'),(99,221,'wedplankit/iconosys/eng/SelectRange'),(100,222,'wedplankit/iconosys/eng/ReviewSelection'),(101,223,'wedplankit/iconosys/eng/OtherApps'),(102,226,'wedplankit/iconosys/eng/OtherApps'),(103,227,'wedplankit/iconosys/eng/ReviewSelection');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,3,2),(3,4,3),(4,5,4),(5,6,5),(6,7,6),(7,15,10),(8,18,11),(9,20,12),(10,24,13),(11,25,14),(12,45,16),(13,47,17),(14,51,18),(15,58,21),(16,60,22),(17,69,23),(18,72,24),(19,74,25),(20,77,26),(21,86,28),(22,87,29),(23,88,30),(24,91,31),(25,95,32),(26,97,33),(27,98,34),(28,110,36),(29,111,35),(30,120,37),(31,121,38),(32,125,39),(33,127,40),(34,128,41),(35,130,42),(36,142,44),(37,145,45),(38,176,46),(39,180,47),(40,210,48),(41,224,49),(42,225,50);
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
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,26,'output'),(2,29,'pick_photo'),(3,30,'pick_photo'),(4,33,'take_photo'),(5,35,'output'),(6,40,'saved_uri'),(7,48,'android.intent.extra.INTENT'),(8,50,'android.intent.extra.INTENT'),(9,54,'android.intent.extra.TITLE'),(10,54,'android.intent.extra.INTENT'),(11,56,'android.intent.extra.INTENT'),(12,57,'android.intent.extra.TITLE'),(13,57,'android.intent.extra.INTENT'),(14,61,'android.intent.extra.INTENT'),(15,63,'android.intent.extra.TITLE'),(16,62,'android.intent.extra.INTENT'),(17,63,'android.intent.extra.INTENT'),(18,66,'android.intent.extra.INTENT'),(19,67,'android.intent.extra.TITLE'),(20,67,'android.intent.extra.INTENT'),(21,68,'android.intent.extra.TITLE'),(22,68,'android.intent.extra.INTENT'),(23,70,'_speed'),(24,71,'android.intent.extra.INTENT'),(25,73,'android.intent.extra.TITLE'),(26,73,'android.intent.extra.INTENT'),(27,76,'android.intent.extra.INTENT'),(28,78,'android.intent.extra.TITLE'),(29,80,'take_photo'),(30,78,'android.intent.extra.INTENT'),(31,81,'android.intent.extra.TITLE'),(32,81,'android.intent.extra.INTENT'),(33,90,'take_photo'),(34,92,'saved_uri'),(35,99,'android.intent.extra.INTENT'),(36,101,'android.intent.extra.INTENT'),(37,104,'saved_uri'),(38,103,'android.intent.extra.TITLE'),(39,105,'pick_photo'),(40,103,'android.intent.extra.INTENT'),(41,107,'android.intent.extra.INTENT'),(42,108,'android.intent.extra.TITLE'),(43,108,'android.intent.extra.INTENT'),(44,112,'android.intent.extra.INTENT'),(45,114,'android.intent.extra.TITLE'),(46,114,'android.intent.extra.INTENT'),(47,117,'android.intent.extra.TITLE'),(48,117,'android.intent.extra.INTENT'),(49,122,'range1'),(50,122,'range2'),(51,126,'output'),(52,133,'android.intent.extra.INTENT'),(53,134,'android.intent.extra.INTENT'),(54,135,'id'),(55,135,'report_type'),(56,136,'android.intent.extra.TITLE'),(57,136,'android.intent.extra.INTENT'),(58,137,'android.intent.extra.INTENT'),(59,139,'android.intent.extra.TITLE'),(60,139,'android.intent.extra.INTENT'),(61,140,'android.intent.extra.INTENT'),(62,141,'android.intent.extra.TITLE'),(63,141,'android.intent.extra.INTENT'),(64,143,'android.intent.extra.TITLE'),(65,143,'android.intent.extra.INTENT'),(66,147,'id'),(67,147,'report_type'),(68,149,'android.intent.extra.INTENT'),(69,150,'android.intent.extra.INTENT'),(70,151,'android.intent.extra.TITLE'),(71,151,'android.intent.extra.INTENT'),(72,152,'android.intent.extra.INTENT'),(73,153,'android.intent.extra.TITLE'),(74,153,'android.intent.extra.INTENT'),(75,154,'android.intent.extra.INTENT'),(76,155,'android.intent.extra.TITLE'),(77,155,'android.intent.extra.INTENT'),(78,156,'android.intent.extra.TITLE'),(79,156,'android.intent.extra.INTENT'),(80,159,'id'),(81,159,'report_type'),(82,160,'android.intent.extra.INTENT'),(83,161,'android.intent.extra.INTENT'),(84,162,'android.intent.extra.TITLE'),(85,162,'android.intent.extra.INTENT'),(86,163,'android.intent.extra.INTENT'),(87,164,'android.intent.extra.TITLE'),(88,164,'android.intent.extra.INTENT'),(89,165,'android.intent.extra.INTENT'),(90,166,'android.intent.extra.TITLE'),(91,166,'android.intent.extra.INTENT'),(92,167,'android.intent.extra.TITLE'),(93,167,'android.intent.extra.INTENT'),(94,169,'id'),(95,169,'report_type'),(96,173,'id'),(97,173,'report_type'),(98,175,'id'),(99,175,'report_type'),(100,177,'id'),(101,177,'report_type'),(102,179,'id'),(103,179,'report_type'),(104,181,'android.intent.extra.INTENT'),(105,182,'android.intent.extra.INTENT'),(106,183,'android.intent.extra.TITLE'),(107,183,'android.intent.extra.INTENT'),(108,184,'android.intent.extra.INTENT'),(109,185,'android.intent.extra.TITLE'),(110,185,'android.intent.extra.INTENT'),(111,186,'android.intent.extra.INTENT'),(112,187,'android.intent.extra.TITLE'),(113,187,'android.intent.extra.INTENT'),(114,188,'android.intent.extra.TITLE'),(115,188,'android.intent.extra.INTENT'),(116,191,'_mileage'),(117,192,'output'),(118,193,'android.intent.extra.INTENT'),(119,194,'android.intent.extra.INTENT'),(120,195,'android.intent.extra.TITLE'),(121,195,'android.intent.extra.INTENT'),(122,196,'android.intent.extra.INTENT'),(123,197,'android.intent.extra.TITLE'),(124,197,'android.intent.extra.INTENT'),(125,198,'android.intent.extra.INTENT'),(126,199,'android.intent.extra.TITLE'),(127,199,'android.intent.extra.INTENT'),(128,200,'android.intent.extra.TITLE'),(129,200,'android.intent.extra.INTENT'),(130,201,'id'),(131,201,'report_type'),(132,202,'id'),(133,202,'report_type'),(134,203,'id'),(135,203,'report_type'),(136,204,'id'),(137,204,'report_type'),(138,205,'id'),(139,205,'report_type'),(140,206,'id'),(141,206,'Category'),(142,206,'range1'),(143,206,'range2'),(144,208,'id'),(145,208,'report_type'),(146,211,'android.intent.extra.INTENT'),(147,212,'android.intent.extra.INTENT'),(148,213,'android.intent.extra.TITLE'),(149,213,'android.intent.extra.INTENT'),(150,214,'android.intent.extra.INTENT'),(151,215,'android.intent.extra.TITLE'),(152,215,'android.intent.extra.INTENT'),(153,216,'android.intent.extra.INTENT'),(154,217,'android.intent.extra.TITLE'),(155,217,'android.intent.extra.INTENT'),(156,218,'android.intent.extra.TITLE'),(157,218,'android.intent.extra.INTENT'),(158,219,'id'),(159,219,'report_type'),(160,221,'id'),(161,221,'Category'),(162,221,'report_type'),(163,222,'id'),(164,222,'report_type'),(165,227,'id'),(166,227,'report_type');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,2),(7,7,2),(8,8,1),(9,9,2),(10,10,3),(11,11,1),(12,12,4),(13,13,1),(14,14,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,1),(4,5,1),(5,6,2),(6,7,2),(7,8,1),(8,9,2),(9,10,2),(10,11,1),(11,13,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,6,'sms',NULL,NULL,NULL,NULL,NULL),(2,7,'sms',NULL,NULL,NULL,NULL,NULL),(3,6,'mms',NULL,NULL,NULL,NULL,NULL),(4,7,'mms',NULL,NULL,NULL,NULL,NULL),(5,6,'mmsto',NULL,NULL,NULL,NULL,NULL),(6,7,'mmsto',NULL,NULL,NULL,NULL,NULL),(7,6,NULL,NULL,NULL,NULL,'image','*'),(8,7,NULL,NULL,NULL,NULL,'image','*'),(9,6,NULL,NULL,NULL,NULL,'video','*'),(10,7,NULL,NULL,NULL,NULL,'video','*'),(11,6,NULL,NULL,NULL,NULL,'audio','*'),(12,7,NULL,NULL,NULL,NULL,'audio','*'),(13,9,'sms',NULL,NULL,NULL,NULL,NULL),(14,9,'mms',NULL,NULL,NULL,NULL,NULL),(15,9,'mmsto',NULL,NULL,NULL,NULL,NULL),(16,9,NULL,NULL,NULL,NULL,'image','*'),(17,9,NULL,NULL,NULL,NULL,'video','*'),(18,9,NULL,NULL,NULL,NULL,'audio','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,17,'image','*'),(2,49,'image','*'),(3,100,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'firstkiss.timer.iconosys'),(2,8,'firstkiss.timer.iconosys'),(3,9,'com.iconosys.springbreakstrobe'),(4,10,'com.iconosys.springbreakstrobe'),(5,11,'com.iconosys.springbreakstrobe'),(6,12,'com.iconosys.springbreakstrobe'),(7,13,'com.iconosys.springbreakstrobe'),(8,14,'com.iconosys.springbreakstrobe'),(9,16,'com.iconosys.springbreakstrobe'),(10,19,'ctia.iconosys.motorola.eng'),(11,21,'ctia.iconosys.motorola.eng'),(12,22,'mugshotfun.iconosys.eng'),(13,23,'mugshotfun.iconosys.eng'),(14,27,'mugshotfun.iconosys.eng'),(15,28,'ctia.iconosys.motorola.eng'),(16,29,'mugshotfun.iconosys.eng'),(17,31,'fourthofjulyphoto.photo.iconosys.eng'),(18,30,'ctia.iconosys.motorola.eng'),(19,32,'mugshotfun.iconosys.eng'),(20,34,'fourthofjulyphoto.photo.iconosys.eng'),(21,33,'ctia.iconosys.motorola.eng'),(22,37,'fourthofjulyphoto.photo.iconosys.eng'),(23,36,'ctia.iconosys.motorola.eng'),(24,38,'mugshotfun.iconosys.eng'),(25,39,'ctia.iconosys.motorola.eng'),(26,40,'fourthofjulyphoto.photo.iconosys.eng'),(27,41,'ctia.iconosys.motorola.eng'),(28,42,'fourthofjulyphoto.photo.iconosys.eng'),(29,43,'mugshotfun.iconosys.eng'),(30,44,'ctia.iconosys.motorola.eng'),(31,46,'maxspeed.iconosys.eng'),(32,52,'mugshotfun.iconosys.eng'),(33,53,'fourthofjulyphoto.photo.iconosys.eng'),(34,55,'mugshotfun.iconosys.eng'),(35,59,'fourthofjulyphoto.photo.iconosys.eng'),(36,64,'mugshotfun.iconosys.eng'),(37,65,'maxspeed.iconosys.eng'),(38,75,'maxspeed.iconosys.eng'),(39,79,'maxspeed.iconosys.eng'),(40,80,'mugshotfun.iconosys.eng'),(41,82,'maxspeed.iconosys.eng'),(42,83,'ctia.iconosys.motorola.eng'),(43,84,'mugshotfun.iconosys.eng'),(44,85,'maxspeed.iconosys.eng'),(45,89,'mugshotfun.iconosys.eng'),(46,90,'fourthofjulyphoto.photo.iconosys.eng'),(47,93,'maxspeed.iconosys.eng'),(48,92,'mugshotfun.iconosys.eng'),(49,94,'fourthofjulyphoto.photo.iconosys.eng'),(50,96,'mugshotfun.iconosys.eng'),(51,106,'maxspeed.iconosys.eng'),(52,104,'ctia.iconosys.motorola.eng'),(53,105,'fourthofjulyphoto.photo.iconosys.eng'),(54,109,'ctia.iconosys.motorola.eng'),(55,113,'ctia.iconosys.motorola.eng'),(56,115,'maxspeed.iconosys.eng'),(57,116,'fourthofjulyphoto.photo.iconosys.eng'),(58,118,'maxspeed.iconosys.eng'),(59,119,'fourthofjulyphoto.photo.iconosys.eng'),(60,122,'maxspeed.iconosys.eng'),(61,123,'fourthofjulyphoto.photo.iconosys.eng'),(62,124,'fourthofjulyphoto.photo.iconosys.eng'),(63,129,'maxspeed.iconosys.eng'),(64,131,'maxspeed.iconosys.eng'),(65,132,'fourthofjulyphoto.photo.iconosys.eng'),(66,135,'wedplankit.iconosys.eng'),(67,138,'wedplankit.iconosys.eng'),(68,144,'maxspeed.iconosys.eng'),(69,146,'maxspeed.iconosys.eng'),(70,147,'wedplankit.iconosys.eng'),(71,148,'maxspeed.iconosys.eng'),(72,157,'wedplankit.iconosys.eng'),(73,158,'wedplankit.iconosys.eng'),(74,159,'wedplankit.iconosys.eng'),(75,168,'wedplankit.iconosys.eng'),(76,169,'wedplankit.iconosys.eng'),(77,170,'wedplankit.iconosys.eng'),(78,171,'wedplankit.iconosys.eng'),(79,172,'wedplankit.iconosys.eng'),(80,173,'wedplankit.iconosys.eng'),(81,174,'wedplankit.iconosys.eng'),(82,175,'wedplankit.iconosys.eng'),(83,177,'wedplankit.iconosys.eng'),(84,178,'wedplankit.iconosys.eng'),(85,179,'wedplankit.iconosys.eng'),(86,189,'wedplankit.iconosys.eng'),(87,191,'wedplankit.iconosys.eng'),(88,201,'wedplankit.iconosys.eng'),(89,202,'wedplankit.iconosys.eng'),(90,203,'wedplankit.iconosys.eng'),(91,204,'wedplankit.iconosys.eng'),(92,205,'wedplankit.iconosys.eng'),(93,206,'wedplankit.iconosys.eng'),(94,207,'wedplankit.iconosys.eng'),(95,208,'wedplankit.iconosys.eng'),(96,209,'wedplankit.iconosys.eng'),(97,219,'wedplankit.iconosys.eng'),(98,220,'wedplankit.iconosys.eng'),(99,221,'wedplankit.iconosys.eng'),(100,222,'wedplankit.iconosys.eng'),(101,223,'wedplankit.iconosys.eng'),(102,226,'wedplankit.iconosys.eng'),(103,227,'wedplankit.iconosys.eng');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,5,0),(4,6,0),(5,7,0),(6,8,0),(7,9,0),(8,11,0),(9,15,0),(10,14,0),(11,23,0),(12,51,0),(13,52,0),(14,75,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,1,0),(4,4,1,0),(5,5,1,0),(6,6,1,0),(7,7,1,0),(8,10,0,0),(9,11,0,0),(10,12,0,0),(11,13,0,0),(12,14,0,0),(13,16,0,0),(14,17,0,0),(15,18,1,0),(16,19,0,0),(17,21,1,0),(18,22,1,0),(19,23,0,0),(20,24,1,0),(21,25,0,0),(22,26,0,0),(23,27,0,0),(24,28,1,0),(25,29,1,0),(26,30,1,0),(27,31,0,0),(28,32,0,0),(29,34,0,0),(30,35,0,0),(31,36,0,0),(32,37,0,0),(33,38,0,0),(34,39,0,0),(35,40,1,0),(36,41,0,0),(37,42,0,0),(38,43,0,0),(39,45,0,0),(40,44,0,0),(41,48,0,0),(42,49,0,0),(43,50,0,0),(44,51,0,0),(45,52,1,0),(46,53,0,0),(47,54,1,0),(48,55,1,0),(49,56,1,0),(50,55,1,0),(51,57,1,0),(52,58,0,0),(53,59,0,0),(54,55,1,0),(55,61,0,0),(56,55,1,0),(57,55,1,0),(58,63,1,0),(59,64,0,0),(60,65,1,0),(61,55,1,0),(62,67,1,0),(63,55,1,0),(64,68,0,0),(65,69,0,0),(66,67,1,0),(67,55,1,0),(68,67,1,0),(69,70,1,0),(70,71,1,0),(71,67,1,0),(72,72,1,0),(73,67,1,0),(74,73,1,0),(75,74,0,0),(76,67,1,0),(77,75,1,0),(78,67,1,0),(79,76,0,0),(80,77,0,0),(81,67,1,0),(82,79,0,0),(83,80,0,0),(84,81,0,0),(85,83,0,0),(86,82,1,0),(87,84,1,0),(88,86,1,0),(89,87,0,0),(90,88,0,0),(91,89,1,0),(92,90,0,0),(93,91,0,0),(94,92,0,0),(95,93,1,0),(96,94,0,0),(97,95,1,0),(98,96,1,0),(99,97,1,0),(100,98,1,0),(101,97,1,0),(102,99,1,0),(103,97,1,0),(104,101,0,0),(105,102,0,0),(106,103,0,0),(107,97,1,0),(108,97,1,0),(109,107,0,0),(110,105,1,0),(111,106,1,0),(112,97,1,0),(113,108,0,0),(114,97,1,0),(115,109,0,0),(116,110,0,0),(117,97,1,0),(118,112,0,0),(119,113,0,0),(120,111,1,0),(121,114,1,0),(122,115,0,0),(123,116,0,0),(124,118,0,0),(125,119,1,0),(126,120,1,0),(127,121,1,0),(128,122,1,0),(129,123,0,0),(130,124,1,0),(131,125,0,0),(132,126,0,0),(133,127,1,0),(134,127,1,0),(135,128,0,0),(136,127,1,0),(137,127,1,0),(138,129,0,0),(139,127,1,0),(140,127,1,0),(141,127,1,0),(142,131,1,0),(143,127,1,0),(144,132,0,0),(145,133,1,0),(146,134,0,0),(147,135,0,0),(148,136,0,0),(149,137,1,0),(150,137,1,0),(151,137,1,0),(152,137,1,0),(153,137,1,0),(154,137,1,0),(155,137,1,0),(156,137,1,0),(157,138,0,0),(158,139,0,0),(159,140,0,0),(160,141,1,0),(161,141,1,0),(162,141,1,0),(163,141,1,0),(164,141,1,0),(165,141,1,0),(166,141,1,0),(167,141,1,0),(168,142,0,0),(169,144,0,0),(170,145,0,0),(171,146,0,0),(172,147,0,0),(173,148,0,0),(174,149,0,0),(175,150,0,0),(176,151,1,0),(177,152,0,0),(178,153,0,0),(179,154,0,0),(180,155,1,0),(181,156,1,0),(182,156,1,0),(183,156,1,0),(184,156,1,0),(185,156,1,0),(186,156,1,0),(187,156,1,0),(188,156,1,0),(189,157,0,0),(190,158,1,0),(191,159,0,0),(192,160,1,0),(193,161,1,0),(194,161,1,0),(195,161,1,0),(196,161,1,0),(197,161,1,0),(198,161,1,0),(199,161,1,0),(200,161,1,0),(201,162,0,0),(202,163,0,0),(203,164,0,0),(204,165,0,0),(205,166,0,0),(206,167,0,0),(207,168,0,0),(208,169,0,0),(209,170,0,0),(210,171,1,0),(211,172,1,0),(212,172,1,0),(213,172,1,0),(214,172,1,0),(215,172,1,0),(216,172,1,0),(217,172,1,0),(218,172,1,0),(219,173,0,0),(220,174,0,0),(221,175,0,0),(222,176,0,0),(223,177,0,0),(224,178,1,0),(225,179,1,0),(226,180,0,0),(227,181,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=728 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,11,10,2,NULL),(2,13,14,2,NULL),(3,14,12,2,NULL),(4,16,20,2,NULL),(5,26,7,2,NULL),(6,48,7,2,NULL),(7,50,7,2,NULL),(8,54,7,2,NULL),(9,56,7,2,NULL),(10,57,7,2,NULL),(11,61,7,2,NULL),(12,63,7,2,NULL),(13,67,7,2,NULL),(14,35,7,2,NULL),(15,99,7,2,NULL),(16,101,7,2,NULL),(17,103,7,2,NULL),(18,107,7,2,NULL),(19,108,7,2,NULL),(20,112,7,2,NULL),(21,114,7,2,NULL),(22,117,7,2,NULL),(23,126,7,2,NULL),(24,62,7,2,NULL),(25,66,7,2,NULL),(26,68,7,2,NULL),(27,71,7,2,NULL),(28,73,7,2,NULL),(29,76,7,2,NULL),(30,78,7,2,NULL),(31,81,7,2,NULL),(32,133,7,2,NULL),(33,134,7,2,NULL),(34,136,7,2,NULL),(35,137,7,2,NULL),(36,139,7,2,NULL),(37,140,7,2,NULL),(38,141,7,2,NULL),(39,143,7,2,NULL),(40,70,7,2,NULL),(41,192,7,2,NULL),(42,193,7,2,NULL),(43,194,7,2,NULL),(44,195,7,2,NULL),(45,196,7,2,NULL),(46,197,7,2,NULL),(47,198,7,2,NULL),(48,199,7,2,NULL),(49,200,7,2,NULL),(50,181,7,2,NULL),(51,182,7,2,NULL),(52,183,7,2,NULL),(53,184,7,2,NULL),(54,185,7,2,NULL),(55,186,7,2,NULL),(56,187,7,2,NULL),(57,188,7,2,NULL),(58,211,7,2,NULL),(59,212,7,2,NULL),(60,213,7,2,NULL),(61,214,7,2,NULL),(62,215,7,2,NULL),(63,216,7,2,NULL),(64,53,36,2,NULL),(65,217,7,2,NULL),(66,116,42,2,NULL),(67,218,7,2,NULL),(68,132,28,2,NULL),(69,26,14,2,NULL),(70,26,11,2,NULL),(71,48,14,2,NULL),(72,48,11,2,NULL),(73,50,14,2,NULL),(74,50,11,2,NULL),(75,54,14,2,NULL),(76,79,49,2,NULL),(77,54,11,2,NULL),(78,56,14,2,NULL),(79,129,49,2,NULL),(80,57,14,2,NULL),(81,56,11,2,NULL),(82,26,23,2,NULL),(83,61,14,2,NULL),(84,57,11,2,NULL),(85,48,23,2,NULL),(86,63,14,2,NULL),(87,61,11,2,NULL),(88,50,23,2,NULL),(89,67,14,2,NULL),(90,63,11,2,NULL),(91,54,23,2,NULL),(92,35,14,2,NULL),(93,67,11,2,NULL),(94,56,23,2,NULL),(95,99,14,2,NULL),(96,35,11,2,NULL),(97,57,23,2,NULL),(98,101,14,2,NULL),(99,61,23,2,NULL),(100,99,11,2,NULL),(101,103,14,2,NULL),(102,101,11,2,NULL),(103,63,23,2,NULL),(104,107,14,2,NULL),(105,67,23,2,NULL),(106,103,11,2,NULL),(107,108,14,2,NULL),(108,107,11,2,NULL),(109,35,23,2,NULL),(110,112,14,2,NULL),(111,108,11,2,NULL),(112,99,23,2,NULL),(113,114,14,2,NULL),(114,112,11,2,NULL),(115,101,23,2,NULL),(116,117,14,2,NULL),(117,103,23,2,NULL),(118,114,11,2,NULL),(119,126,14,2,NULL),(120,117,11,2,NULL),(121,107,23,2,NULL),(122,62,14,2,NULL),(123,108,23,2,NULL),(124,126,11,2,NULL),(125,66,14,2,NULL),(126,62,11,2,NULL),(127,112,23,2,NULL),(128,68,14,2,NULL),(129,114,23,2,NULL),(130,66,11,2,NULL),(131,71,14,2,NULL),(132,68,11,2,NULL),(133,117,23,2,NULL),(134,73,14,2,NULL),(135,71,11,2,NULL),(136,126,23,2,NULL),(137,76,14,2,NULL),(138,73,11,2,NULL),(139,62,23,2,NULL),(140,78,14,2,NULL),(141,76,11,2,NULL),(142,66,23,2,NULL),(143,81,14,2,NULL),(144,78,11,2,NULL),(145,68,23,2,NULL),(146,133,14,2,NULL),(147,71,23,2,NULL),(148,81,11,2,NULL),(149,134,14,2,NULL),(150,73,23,2,NULL),(151,133,11,2,NULL),(152,136,14,2,NULL),(153,134,11,2,NULL),(154,76,23,2,NULL),(155,137,14,2,NULL),(156,78,23,2,NULL),(157,136,11,2,NULL),(158,139,14,2,NULL),(159,137,11,2,NULL),(160,81,23,2,NULL),(161,140,14,2,NULL),(162,139,11,2,NULL),(163,133,23,2,NULL),(164,141,14,2,NULL),(165,140,11,2,NULL),(166,134,23,2,NULL),(167,143,14,2,NULL),(168,141,11,2,NULL),(169,136,23,2,NULL),(170,70,14,2,NULL),(171,143,11,2,NULL),(172,137,23,2,NULL),(173,192,14,2,NULL),(174,70,11,2,NULL),(175,139,23,2,NULL),(176,193,14,2,NULL),(177,192,11,2,NULL),(178,140,23,2,NULL),(179,194,14,2,NULL),(180,141,23,2,NULL),(181,193,11,2,NULL),(182,195,14,2,NULL),(183,194,11,2,NULL),(184,143,23,2,NULL),(185,196,14,2,NULL),(186,195,11,2,NULL),(187,70,23,2,NULL),(188,197,14,2,NULL),(189,196,11,2,NULL),(190,192,23,2,NULL),(191,198,14,2,NULL),(192,197,11,2,NULL),(193,193,23,2,NULL),(194,199,14,2,NULL),(195,198,11,2,NULL),(196,194,23,2,NULL),(197,200,14,2,NULL),(198,195,23,2,NULL),(199,199,11,2,NULL),(200,181,14,2,NULL),(201,200,11,2,NULL),(202,196,23,2,NULL),(203,182,14,2,NULL),(204,197,23,2,NULL),(205,181,11,2,NULL),(206,183,14,2,NULL),(207,198,23,2,NULL),(208,182,11,2,NULL),(209,184,14,2,NULL),(210,183,11,2,NULL),(211,199,23,2,NULL),(212,185,14,2,NULL),(213,200,23,2,NULL),(214,184,11,2,NULL),(215,186,14,2,NULL),(216,185,11,2,NULL),(217,181,23,2,NULL),(218,187,14,2,NULL),(219,182,23,2,NULL),(220,186,11,2,NULL),(221,188,14,2,NULL),(222,183,23,2,NULL),(223,187,11,2,NULL),(224,211,14,2,NULL),(225,184,23,2,NULL),(226,188,11,2,NULL),(227,212,14,2,NULL),(228,185,23,2,NULL),(229,211,11,2,NULL),(230,213,14,2,NULL),(231,186,23,2,NULL),(232,212,11,2,NULL),(233,214,14,2,NULL),(234,187,23,2,NULL),(235,213,11,2,NULL),(236,215,14,2,NULL),(237,188,23,2,NULL),(238,214,11,2,NULL),(239,216,14,2,NULL),(240,215,11,2,NULL),(241,211,23,2,NULL),(242,217,14,2,NULL),(243,212,23,2,NULL),(244,216,11,2,NULL),(245,218,14,2,NULL),(246,213,23,2,NULL),(247,217,11,2,NULL),(248,218,11,2,NULL),(249,214,23,2,NULL),(250,37,28,2,NULL),(251,215,23,2,NULL),(252,119,40,2,NULL),(253,216,23,2,NULL),(254,124,11,2,NULL),(255,217,23,2,NULL),(256,126,1,2,NULL),(257,218,23,2,NULL),(258,126,2,2,NULL),(259,82,43,2,NULL),(260,126,5,2,NULL),(261,93,46,2,NULL),(262,126,6,2,NULL),(263,106,45,2,NULL),(264,126,51,2,NULL),(265,131,46,2,NULL),(266,126,75,2,NULL),(267,118,49,2,NULL),(268,126,52,2,NULL),(269,133,1,2,NULL),(270,42,44,2,NULL),(271,134,1,2,NULL),(272,59,44,2,NULL),(273,136,1,2,NULL),(274,31,28,2,NULL),(275,137,1,2,NULL),(276,94,42,2,NULL),(277,139,1,2,NULL),(278,62,1,2,NULL),(279,140,1,2,NULL),(280,66,1,2,NULL),(281,141,1,2,NULL),(282,68,1,2,NULL),(283,143,1,2,NULL),(284,71,1,2,NULL),(285,133,2,2,NULL),(286,73,1,2,NULL),(287,134,2,2,NULL),(288,76,1,2,NULL),(289,136,2,2,NULL),(290,78,1,2,NULL),(291,137,2,2,NULL),(292,81,1,2,NULL),(293,139,2,2,NULL),(294,62,2,2,NULL),(295,140,2,2,NULL),(296,66,2,2,NULL),(297,141,2,2,NULL),(298,68,2,2,NULL),(299,143,2,2,NULL),(300,71,2,2,NULL),(301,133,5,2,NULL),(302,73,2,2,NULL),(303,134,5,2,NULL),(304,76,2,2,NULL),(305,136,5,2,NULL),(306,78,2,2,NULL),(307,137,5,2,NULL),(308,81,2,2,NULL),(309,139,5,2,NULL),(310,62,5,2,NULL),(311,140,5,2,NULL),(312,66,5,2,NULL),(313,141,5,2,NULL),(314,68,5,2,NULL),(315,143,5,2,NULL),(316,71,5,2,NULL),(317,133,6,2,NULL),(318,73,5,2,NULL),(319,134,6,2,NULL),(320,76,5,2,NULL),(321,136,6,2,NULL),(322,78,5,2,NULL),(323,137,6,2,NULL),(324,81,5,2,NULL),(325,139,6,2,NULL),(326,62,6,2,NULL),(327,140,6,2,NULL),(328,66,6,2,NULL),(329,141,6,2,NULL),(330,68,6,2,NULL),(331,143,6,2,NULL),(332,71,6,2,NULL),(333,73,6,2,NULL),(334,133,51,2,NULL),(335,76,6,2,NULL),(336,134,51,2,NULL),(337,78,6,2,NULL),(338,136,51,2,NULL),(339,81,6,2,NULL),(340,137,51,2,NULL),(341,139,51,2,NULL),(342,62,51,2,NULL),(343,140,51,2,NULL),(344,66,51,2,NULL),(345,141,51,2,NULL),(346,68,51,2,NULL),(347,143,51,2,NULL),(348,71,51,2,NULL),(349,133,75,2,NULL),(350,73,51,2,NULL),(351,134,75,2,NULL),(352,76,51,2,NULL),(353,136,75,2,NULL),(354,78,51,2,NULL),(355,137,75,2,NULL),(356,81,51,2,NULL),(357,139,75,2,NULL),(358,62,75,2,NULL),(359,140,75,2,NULL),(360,66,75,2,NULL),(361,141,75,2,NULL),(362,68,75,2,NULL),(363,143,75,2,NULL),(364,71,75,2,NULL),(365,133,52,2,NULL),(366,73,75,2,NULL),(367,134,52,2,NULL),(368,76,75,2,NULL),(369,136,52,2,NULL),(370,78,75,2,NULL),(371,137,52,2,NULL),(372,81,75,2,NULL),(373,139,52,2,NULL),(374,62,52,2,NULL),(375,140,52,2,NULL),(376,66,52,2,NULL),(377,141,52,2,NULL),(378,68,52,2,NULL),(379,143,52,2,NULL),(380,71,52,2,NULL),(381,115,50,2,NULL),(382,73,52,2,NULL),(383,144,50,2,NULL),(384,76,52,2,NULL),(385,70,1,2,NULL),(386,78,52,2,NULL),(387,70,2,2,NULL),(388,81,52,2,NULL),(389,70,5,2,NULL),(390,70,6,2,NULL),(391,70,51,2,NULL),(392,70,75,2,NULL),(393,70,52,2,NULL),(394,85,49,2,NULL),(395,26,51,2,NULL),(396,48,51,2,NULL),(397,50,51,2,NULL),(398,54,51,2,NULL),(399,56,51,2,NULL),(400,57,51,2,NULL),(401,61,51,2,NULL),(402,63,51,2,NULL),(403,67,51,2,NULL),(404,35,51,2,NULL),(405,99,51,2,NULL),(406,158,67,2,NULL),(407,101,51,2,NULL),(408,189,68,2,NULL),(409,103,51,2,NULL),(410,226,55,2,NULL),(411,107,51,2,NULL),(412,26,52,2,NULL),(413,108,51,2,NULL),(414,48,52,2,NULL),(415,112,51,2,NULL),(416,50,52,2,NULL),(417,114,51,2,NULL),(418,54,52,2,NULL),(419,117,51,2,NULL),(420,56,52,2,NULL),(421,192,51,2,NULL),(422,57,52,2,NULL),(423,193,51,2,NULL),(424,61,52,2,NULL),(425,194,51,2,NULL),(426,63,52,2,NULL),(427,195,51,2,NULL),(428,67,52,2,NULL),(429,196,51,2,NULL),(430,35,52,2,NULL),(431,197,51,2,NULL),(432,99,52,2,NULL),(433,198,51,2,NULL),(434,101,52,2,NULL),(435,199,51,2,NULL),(436,103,52,2,NULL),(437,200,51,2,NULL),(438,107,52,2,NULL),(439,181,51,2,NULL),(440,108,52,2,NULL),(441,182,51,2,NULL),(442,112,52,2,NULL),(443,183,51,2,NULL),(444,114,52,2,NULL),(445,184,51,2,NULL),(446,117,52,2,NULL),(447,185,51,2,NULL),(448,186,51,2,NULL),(449,192,52,2,NULL),(450,187,51,2,NULL),(451,193,52,2,NULL),(452,188,51,2,NULL),(453,194,52,2,NULL),(454,211,51,2,NULL),(455,195,52,2,NULL),(456,212,51,2,NULL),(457,196,52,2,NULL),(458,213,51,2,NULL),(459,197,52,2,NULL),(460,214,51,2,NULL),(461,198,52,2,NULL),(462,215,51,2,NULL),(463,199,52,2,NULL),(464,216,51,2,NULL),(465,200,52,2,NULL),(466,217,51,2,NULL),(467,181,52,2,NULL),(468,218,51,2,NULL),(469,182,52,2,NULL),(470,26,75,2,NULL),(471,183,52,2,NULL),(472,48,75,2,NULL),(473,184,52,2,NULL),(474,50,75,2,NULL),(475,185,52,2,NULL),(476,54,75,2,NULL),(477,186,52,2,NULL),(478,56,75,2,NULL),(479,187,52,2,NULL),(480,57,75,2,NULL),(481,188,52,2,NULL),(482,61,75,2,NULL),(483,211,52,2,NULL),(484,63,75,2,NULL),(485,212,52,2,NULL),(486,67,75,2,NULL),(487,213,52,2,NULL),(488,35,75,2,NULL),(489,214,52,2,NULL),(490,99,75,2,NULL),(491,215,52,2,NULL),(492,101,75,2,NULL),(493,216,52,2,NULL),(494,103,75,2,NULL),(495,217,52,2,NULL),(496,107,75,2,NULL),(497,218,52,2,NULL),(498,108,75,2,NULL),(499,168,55,2,NULL),(500,112,75,2,NULL),(501,221,70,2,NULL),(502,114,75,2,NULL),(503,192,1,2,NULL),(504,117,75,2,NULL),(505,192,2,2,NULL),(506,192,75,2,NULL),(507,192,5,2,NULL),(508,193,75,2,NULL),(509,192,6,2,NULL),(510,194,75,2,NULL),(511,157,55,2,NULL),(512,195,75,2,NULL),(513,193,1,2,NULL),(514,196,75,2,NULL),(515,194,1,2,NULL),(516,197,75,2,NULL),(517,195,1,2,NULL),(518,198,75,2,NULL),(519,196,1,2,NULL),(520,199,75,2,NULL),(521,197,1,2,NULL),(522,200,75,2,NULL),(523,198,1,2,NULL),(524,181,75,2,NULL),(525,199,1,2,NULL),(526,182,75,2,NULL),(527,200,1,2,NULL),(528,183,75,2,NULL),(529,193,2,2,NULL),(530,184,75,2,NULL),(531,194,2,2,NULL),(532,185,75,2,NULL),(533,195,2,2,NULL),(534,186,75,2,NULL),(535,196,2,2,NULL),(536,187,75,2,NULL),(537,197,2,2,NULL),(538,188,75,2,NULL),(539,198,2,2,NULL),(540,211,75,2,NULL),(541,199,2,2,NULL),(542,212,75,2,NULL),(543,200,2,2,NULL),(544,213,75,2,NULL),(545,193,5,2,NULL),(546,214,75,2,NULL),(547,194,5,2,NULL),(548,215,75,2,NULL),(549,195,5,2,NULL),(550,216,75,2,NULL),(551,196,5,2,NULL),(552,217,75,2,NULL),(553,197,5,2,NULL),(554,218,75,2,NULL),(555,198,5,2,NULL),(556,199,5,2,NULL),(557,200,5,2,NULL),(558,193,6,2,NULL),(559,194,6,2,NULL),(560,195,6,2,NULL),(561,196,6,2,NULL),(562,197,6,2,NULL),(563,198,6,2,NULL),(564,199,6,2,NULL),(565,200,6,2,NULL),(566,181,1,2,NULL),(567,182,1,2,NULL),(568,183,1,2,NULL),(569,184,1,2,NULL),(570,185,1,2,NULL),(571,186,1,2,NULL),(572,187,1,2,NULL),(573,188,1,2,NULL),(574,181,2,2,NULL),(575,182,2,2,NULL),(576,183,2,2,NULL),(577,184,2,2,NULL),(578,185,2,2,NULL),(579,186,2,2,NULL),(580,187,2,2,NULL),(581,188,2,2,NULL),(582,181,5,2,NULL),(583,182,5,2,NULL),(584,183,5,2,NULL),(585,184,5,2,NULL),(586,185,5,2,NULL),(587,186,5,2,NULL),(588,187,5,2,NULL),(589,188,5,2,NULL),(590,181,6,2,NULL),(591,182,6,2,NULL),(592,183,6,2,NULL),(593,184,6,2,NULL),(594,185,6,2,NULL),(595,186,6,2,NULL),(596,187,6,2,NULL),(597,188,6,2,NULL),(598,138,63,2,NULL),(599,171,55,2,NULL),(600,191,54,2,NULL),(601,172,74,2,NULL),(602,178,74,2,NULL),(603,211,1,2,NULL),(604,212,1,2,NULL),(605,213,1,2,NULL),(606,214,1,2,NULL),(607,215,1,2,NULL),(608,216,1,2,NULL),(609,217,1,2,NULL),(610,218,1,2,NULL),(611,211,2,2,NULL),(612,212,2,2,NULL),(613,213,2,2,NULL),(614,214,2,2,NULL),(615,215,2,2,NULL),(616,216,2,2,NULL),(617,217,2,2,NULL),(618,218,2,2,NULL),(619,211,5,2,NULL),(620,212,5,2,NULL),(621,213,5,2,NULL),(622,214,5,2,NULL),(623,215,5,2,NULL),(624,216,5,2,NULL),(625,217,5,2,NULL),(626,218,5,2,NULL),(627,211,6,2,NULL),(628,212,6,2,NULL),(629,213,6,2,NULL),(630,214,6,2,NULL),(631,215,6,2,NULL),(632,216,6,2,NULL),(633,217,6,2,NULL),(634,218,6,2,NULL),(635,223,55,2,NULL),(636,1,3,2,NULL),(637,8,2,2,NULL),(638,26,1,2,NULL),(639,48,1,2,NULL),(640,50,1,2,NULL),(641,54,1,2,NULL),(642,56,1,2,NULL),(643,57,1,2,NULL),(644,61,1,2,NULL),(645,63,1,2,NULL),(646,67,1,2,NULL),(647,35,1,2,NULL),(648,99,1,2,NULL),(649,101,1,2,NULL),(650,103,1,2,NULL),(651,107,1,2,NULL),(652,108,1,2,NULL),(653,112,1,2,NULL),(654,114,1,2,NULL),(655,117,1,2,NULL),(656,26,2,2,NULL),(657,48,2,2,NULL),(658,50,2,2,NULL),(659,54,2,2,NULL),(660,56,2,2,NULL),(661,57,2,2,NULL),(662,61,2,2,NULL),(663,63,2,2,NULL),(664,67,2,2,NULL),(665,35,2,2,NULL),(666,99,2,2,NULL),(667,101,2,2,NULL),(668,103,2,2,NULL),(669,107,2,2,NULL),(670,108,2,2,NULL),(671,112,2,2,NULL),(672,114,2,2,NULL),(673,117,2,2,NULL),(674,28,21,2,NULL),(675,109,16,2,NULL),(676,26,5,2,NULL),(677,48,5,2,NULL),(678,50,5,2,NULL),(679,54,5,2,NULL),(680,56,5,2,NULL),(681,57,5,2,NULL),(682,61,5,2,NULL),(683,63,5,2,NULL),(684,67,5,2,NULL),(685,35,5,2,NULL),(686,99,5,2,NULL),(687,101,5,2,NULL),(688,103,5,2,NULL),(689,107,5,2,NULL),(690,108,5,2,NULL),(691,112,5,2,NULL),(692,114,5,2,NULL),(693,117,5,2,NULL),(694,36,5,2,NULL),(695,41,26,2,NULL),(696,44,16,2,NULL),(697,26,6,2,NULL),(698,19,33,2,NULL),(699,21,33,2,NULL),(700,39,16,2,NULL),(701,48,6,2,NULL),(702,50,6,2,NULL),(703,54,6,2,NULL),(704,56,6,2,NULL),(705,57,6,2,NULL),(706,61,6,2,NULL),(707,63,6,2,NULL),(708,67,6,2,NULL),(709,23,32,2,NULL),(710,27,22,2,NULL),(711,89,17,2,NULL),(712,35,6,2,NULL),(713,99,6,2,NULL),(714,101,6,2,NULL),(715,103,6,2,NULL),(716,107,6,2,NULL),(717,108,6,2,NULL),(718,112,6,2,NULL),(719,114,6,2,NULL),(720,117,6,2,NULL),(721,52,6,2,NULL),(722,64,17,2,NULL),(723,84,27,2,NULL),(724,22,35,2,NULL),(725,32,35,2,NULL),(726,55,17,2,NULL),(727,96,32,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (7,'android.permission.ACCESS_COARSE_LOCATION'),(11,'android.permission.ACCESS_FINE_LOCATION'),(10,'android.permission.CAMERA'),(17,'android.permission.CHANGE_CONFIGURATION'),(16,'android.permission.DEVICE_POWER'),(15,'android.permission.FLASHLIGHT'),(8,'android.permission.GET_ACCOUNTS'),(13,'android.permission.HARDWARE_TEST'),(3,'android.permission.INTERNET'),(4,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(9,'android.permission.READ_SMS'),(2,'android.permission.SEND_SMS'),(12,'android.permission.WAKE_LOCK'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(14,'android.permission.WRITE_SETTINGS'),(6,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(2,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(3,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(4,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(5,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(6,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(7,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(8,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(9,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(10,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(11,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(12,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(13,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(14,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(15,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(16,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(17,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(18,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(19,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(20,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(21,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(22,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(23,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(24,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(25,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(26,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(27,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(28,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(29,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(30,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(31,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(32,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(33,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(34,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(35,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(36,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(37,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(38,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(39,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(40,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(41,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(42,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(43,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(44,NULL,NULL,'http://www.iconosys.com/product.php',NULL,NULL,NULL),(45,NULL,NULL,'http://www.iconosys.com/product.php',NULL,NULL,NULL),(46,NULL,NULL,'http://www.iconosys.com/product.php',NULL,NULL,NULL),(47,NULL,NULL,'http://www.iconosys.com/product.php',NULL,NULL,NULL),(48,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(49,NULL,NULL,'http://www.iconosys.com/product.php',NULL,NULL,NULL),(50,NULL,NULL,'http://www.iconosys.com/product.php',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,8,7),(2,9,8),(3,15,9),(4,47,15),(5,60,19),(6,62,20),(7,78,27),(8,130,43);
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,1),(6,2,2),(7,2,3),(8,3,1),(9,2,4),(10,3,2),(11,2,5),(12,3,3),(13,4,17),(14,2,6),(15,4,16),(16,3,4),(17,2,7),(18,3,5),(19,4,1),(20,2,8),(21,4,2),(22,3,6),(23,2,9),(24,4,3),(25,3,7),(26,2,10),(27,3,8),(28,4,4),(29,2,11),(30,3,9),(31,4,8),(32,5,1),(33,2,12),(34,3,10),(35,4,10),(36,5,2),(37,4,12),(38,3,11),(39,5,3),(40,4,13),(41,3,12),(42,5,4),(43,4,14),(44,5,5),(45,4,15),(46,5,6),(47,5,7),(48,5,8),(49,5,9),(50,5,10),(51,5,11),(52,5,12),(53,6,1),(54,6,2),(55,6,3),(56,6,4),(57,6,5),(58,6,7),(59,6,8),(60,6,11),(61,6,12),(62,7,1),(63,7,2),(64,7,3),(65,7,4),(66,7,5),(67,7,6),(68,7,7),(69,7,8),(70,7,9),(71,7,10),(72,7,11),(73,7,12);
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

-- Dump completed on 2015-10-12  3:30:36
