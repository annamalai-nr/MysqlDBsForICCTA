-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_479
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (7,'android.intent.action.CHOOSER'),(6,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(4,'android.intent.action.PICK'),(2,'android.intent.action.SENDTO'),(3,'android.intent.action.VIEW'),(5,'android.media.action.IMAGE_CAPTURE'),(8,'android.settings.LOCATION_SOURCE_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'chineseone.buzzer.iconosys',1),(2,'eng.trickersticks.rappermugshots',3),(3,'performance.photo.iconosys.eng',1),(4,'coffee.photo.iconosys.eng',1),(5,'graduating.photo.iconosys.eng',1),(6,'yippie.photo.iconosys.eng',3),(7,'familymed.iconosys.eng',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'chineseone.buzzer.iconosys.ChristmasTimer'),(2,2,'eng.trickersticks.rappermugshots.TrickerSticks'),(3,2,'eng.trickersticks.rappermugshots.GlowSticks'),(4,2,'eng.trickersticks.rappermugshots.ShowTerms'),(5,2,'eng.trickersticks.rappermugshots.RegistrationScreen'),(6,2,'eng.trickersticks.rappermugshots.AdView'),(7,2,'eng.trickersticks.rappermugshots.OtherApps'),(8,2,'eng.trickersticks.rappermugshots.LocationSender'),(9,3,'performance.photo.iconosys.eng.MeInJail'),(10,4,'coffee.photo.iconosys.eng.MeInJail'),(11,5,'graduating.photo.iconosys.eng.MeInJail'),(12,3,'performance.photo.iconosys.eng.PhotoView'),(13,4,'coffee.photo.iconosys.eng.PhotoView'),(14,5,'graduating.photo.iconosys.eng.PhotoView'),(15,4,'coffee.photo.iconosys.eng.OtherApps'),(16,3,'performance.photo.iconosys.eng.OtherApps'),(17,5,'graduating.photo.iconosys.eng.OtherApps'),(18,4,'coffee.photo.iconosys.eng.ShowTerms'),(19,3,'performance.photo.iconosys.eng.ShowTerms'),(20,5,'graduating.photo.iconosys.eng.ShowTerms'),(21,4,'coffee.photo.iconosys.eng.RegistrationScreen'),(22,3,'performance.photo.iconosys.eng.RegistrationScreen'),(23,5,'graduating.photo.iconosys.eng.RegistrationScreen'),(24,4,'coffee.photo.iconosys.eng.ShareImage'),(25,3,'performance.photo.iconosys.eng.ShareImage'),(26,5,'graduating.photo.iconosys.eng.ShareImage'),(27,4,'coffee.photo.iconosys.eng.ShowPopUp'),(28,3,'performance.photo.iconosys.eng.ShowPopUp'),(29,6,'yippie.photo.iconosys.eng.MeInJail'),(30,5,'graduating.photo.iconosys.eng.ShowPopUp'),(31,4,'coffee.photo.iconosys.eng.AdView'),(32,3,'performance.photo.iconosys.eng.AdView'),(33,5,'graduating.photo.iconosys.eng.AdView'),(34,4,'coffee.photo.iconosys.eng.LocationSender'),(35,3,'performance.photo.iconosys.eng.LocationSender'),(36,6,'yippie.photo.iconosys.eng.PhotoView'),(37,5,'graduating.photo.iconosys.eng.LocationSender'),(38,6,'yippie.photo.iconosys.eng.OtherApps'),(39,6,'yippie.photo.iconosys.eng.ShowTerms'),(40,6,'yippie.photo.iconosys.eng.RegistrationScreen'),(41,6,'yippie.photo.iconosys.eng.ShareImage'),(42,6,'yippie.photo.iconosys.eng.ShowPopUp'),(43,6,'yippie.photo.iconosys.eng.AdView'),(44,6,'yippie.photo.iconosys.eng.LocationSender'),(45,7,'familymed.iconosys.eng.MyReceiptManager'),(46,7,'familymed.iconosys.eng.ShowPopUp'),(47,7,'familymed.iconosys.eng.MileageAdd'),(48,7,'familymed.iconosys.eng.OtherApps'),(49,7,'familymed.iconosys.eng.ReviewSelection'),(50,7,'familymed.iconosys.eng.TakePicture'),(51,7,'familymed.iconosys.eng.Review'),(52,7,'familymed.iconosys.eng.DisplayCategory'),(53,7,'familymed.iconosys.eng.ShowCat'),(54,7,'familymed.iconosys.eng.Preview'),(55,7,'familymed.iconosys.eng.SpreadSheet'),(56,7,'familymed.iconosys.eng.MileageSheet'),(57,7,'familymed.iconosys.eng.SaveSend'),(58,7,'familymed.iconosys.eng.Mileage'),(59,7,'familymed.iconosys.eng.ShowPopUpReport'),(60,7,'familymed.iconosys.eng.AdView'),(61,7,'familymed.iconosys.eng.RegistrationScreen'),(62,7,'familymed.iconosys.eng.MileageSend'),(63,7,'familymed.iconosys.eng.SelectRange'),(64,7,'familymed.iconosys.eng.ReportSheet'),(65,7,'familymed.iconosys.eng.ShowTerms'),(66,7,'familymed.iconosys.eng.Settings'),(67,7,'familymed.iconosys.eng.LocationSender'),(68,2,'eng.trickersticks.rappermugshots.OtherApps$5'),(69,2,'eng.trickersticks.rappermugshots.OtherApps$4'),(70,2,'eng.trickersticks.rappermugshots.OtherApps$3'),(71,2,'eng.trickersticks.rappermugshots.OtherApps$2'),(72,2,'eng.trickersticks.rappermugshots.OtherApps$6'),(73,2,'eng.trickersticks.rappermugshots.OtherApps$1'),(74,2,'eng.trickersticks.rappermugshots.RegistrationScreen$1'),(75,2,'eng.trickersticks.rappermugshots.GlowSticks$1'),(76,3,'performance.photo.iconosys.eng.MeInJail$2'),(77,3,'performance.photo.iconosys.eng.OtherApps$1'),(78,3,'performance.photo.iconosys.eng.OtherApps$5'),(79,3,'performance.photo.iconosys.eng.OtherApps$6'),(80,5,'graduating.photo.iconosys.eng.OtherApps$4'),(81,5,'graduating.photo.iconosys.eng.PhotoView$1'),(82,5,'graduating.photo.iconosys.eng.MeInJail$1'),(83,4,'coffee.photo.iconosys.eng.OtherApps$4'),(84,5,'graduating.photo.iconosys.eng.OtherApps$1'),(85,6,'yippie.photo.iconosys.eng.RegistrationScreen$1'),(86,5,'graduating.photo.iconosys.eng.OtherApps$2'),(87,4,'coffee.photo.iconosys.eng.RegistrationScreen$1'),(88,6,'yippie.photo.iconosys.eng.OtherApps$2'),(89,3,'performance.photo.iconosys.eng.PhotoView$1'),(90,4,'coffee.photo.iconosys.eng.OtherApps$5'),(91,4,'coffee.photo.iconosys.eng.MeInJail$2'),(92,3,'performance.photo.iconosys.eng.OtherApps$4'),(93,6,'yippie.photo.iconosys.eng.OtherApps$3'),(94,4,'coffee.photo.iconosys.eng.MeInJail$1'),(95,4,'coffee.photo.iconosys.eng.OtherApps$3'),(96,5,'graduating.photo.iconosys.eng.RegistrationScreen$1'),(97,4,'coffee.photo.iconosys.eng.OtherApps$6'),(98,5,'graduating.photo.iconosys.eng.MeInJail$2'),(99,4,'coffee.photo.iconosys.eng.OtherApps$1'),(100,3,'performance.photo.iconosys.eng.OtherApps$3'),(101,6,'yippie.photo.iconosys.eng.OtherApps$4'),(102,4,'coffee.photo.iconosys.eng.PhotoView$1'),(103,3,'performance.photo.iconosys.eng.OtherApps$2'),(104,4,'coffee.photo.iconosys.eng.OtherApps$2'),(105,6,'yippie.photo.iconosys.eng.OtherApps$5'),(106,5,'graduating.photo.iconosys.eng.OtherApps$5'),(107,3,'performance.photo.iconosys.eng.MeInJail$1'),(108,5,'graduating.photo.iconosys.eng.OtherApps$6'),(109,3,'performance.photo.iconosys.eng.RegistrationScreen$1'),(110,6,'yippie.photo.iconosys.eng.PhotoView$1'),(111,5,'graduating.photo.iconosys.eng.OtherApps$3'),(112,6,'yippie.photo.iconosys.eng.MeInJail$2'),(113,6,'yippie.photo.iconosys.eng.OtherApps$1'),(114,6,'yippie.photo.iconosys.eng.MeInJail$1'),(115,6,'yippie.photo.iconosys.eng.OtherApps$6'),(116,7,'familymed.iconosys.eng.Mileage$8'),(117,7,'familymed.iconosys.eng.Review$3'),(118,7,'familymed.iconosys.eng.OtherApps$1'),(119,7,'familymed.iconosys.eng.MyReceiptManager$6'),(120,7,'familymed.iconosys.eng.MyReceiptManager$1'),(121,7,'familymed.iconosys.eng.Settings$3'),(122,7,'familymed.iconosys.eng.MyReceiptManager$2'),(123,7,'familymed.iconosys.eng.OtherApps$4'),(124,7,'familymed.iconosys.eng.SelectRange$5'),(125,7,'familymed.iconosys.eng.OtherApps$5'),(126,7,'familymed.iconosys.eng.OtherApps$2'),(127,7,'familymed.iconosys.eng.Mileage$4'),(128,7,'familymed.iconosys.eng.MyReceiptManager$3'),(129,7,'familymed.iconosys.eng.OtherApps$6'),(130,7,'familymed.iconosys.eng.Mileage$5'),(131,7,'familymed.iconosys.eng.MileageSend$1'),(132,7,'familymed.iconosys.eng.RegistrationScreen$1'),(133,7,'familymed.iconosys.eng.MyReceiptManager$4'),(134,7,'familymed.iconosys.eng.Review$1'),(135,7,'familymed.iconosys.eng.OtherApps$3'),(136,7,'familymed.iconosys.eng.SaveSend$4');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,6,'_who'),(2,25,'saved_uri'),(3,36,'pick_photo'),(4,13,'take_photo'),(5,24,'saved_uri'),(6,12,'pick_photo'),(7,14,'take_photo'),(8,31,'_who'),(9,41,'saved_uri'),(10,26,'saved_uri'),(11,36,'take_photo'),(12,43,'_who'),(13,42,'show_key'),(14,13,'pick_photo'),(15,12,'take_photo'),(16,32,'_who'),(17,14,'pick_photo'),(18,33,'_who'),(19,49,'report_type'),(20,64,'range1'),(21,63,'Category'),(22,64,'id'),(23,60,'_who'),(24,45,'(.*)'),(25,57,'_id'),(26,64,'Category'),(27,63,'report_type'),(28,45,'access_token'),(29,62,'_id'),(30,64,'range2'),(31,49,'id'),(32,55,'_cat'),(33,47,'_mileage'),(34,63,'id');
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,32,'a',0,NULL,NULL),(32,31,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'s',0,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'s',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'s',0,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'s',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,5),(3,3,7),(4,4,7),(5,5,7),(6,6,3),(7,7,3),(8,8,3),(9,9,7),(10,10,5),(11,11,3),(12,12,7),(13,13,2),(14,14,7),(15,15,5),(16,16,3),(17,17,3),(18,18,12),(19,19,9),(20,20,16),(21,21,16),(22,22,25),(23,23,16),(24,24,10),(25,25,17),(26,26,9),(27,27,10),(28,28,12),(29,29,14),(30,30,10),(31,31,9),(32,32,11),(33,33,29),(34,34,15),(35,35,9),(36,36,36),(37,37,17),(38,38,9),(39,39,10),(40,40,40),(41,41,12),(42,42,17),(43,43,21),(44,44,38),(45,45,12),(46,46,14),(47,47,21),(48,48,36),(49,49,11),(50,50,15),(51,51,12),(52,52,11),(53,53,36),(54,54,12),(55,56,26),(56,55,10),(57,57,40),(58,58,16),(59,59,21),(60,60,36),(61,61,13),(62,62,25),(63,63,38),(64,64,10),(65,65,36),(66,66,24),(67,67,36),(68,68,15),(69,69,23),(70,70,29),(71,72,11),(72,71,15),(73,73,29),(74,74,12),(75,75,11),(76,76,36),(77,77,15),(78,78,16),(79,79,23),(80,80,29),(81,81,13),(82,82,14),(83,83,12),(84,84,38),(85,85,13),(86,86,11),(87,87,16),(88,88,15),(89,89,38),(90,90,17),(91,91,22),(92,92,13),(93,93,40),(94,94,24),(95,95,14),(96,96,9),(97,97,41),(98,98,14),(99,99,13),(100,100,22),(101,101,11),(102,102,13),(103,103,9),(104,105,10),(105,104,17),(106,106,13),(107,107,22),(108,108,14),(109,109,24),(110,110,25),(111,111,23),(112,112,9),(113,113,14),(114,114,36),(115,115,36),(116,116,17),(117,117,36),(118,118,26),(119,119,29),(120,120,14),(121,121,26),(122,122,36),(123,123,13),(124,124,11),(125,125,10),(126,126,41),(127,127,36),(128,128,36),(129,129,29),(130,130,41),(131,131,38),(132,132,29),(133,133,38),(134,134,58),(135,135,51),(136,136,48),(137,137,58),(138,138,45),(139,139,45),(140,140,66),(141,141,58),(142,142,45),(143,143,45),(144,144,51),(145,145,48),(146,146,66),(147,147,45),(148,148,66),(149,149,63),(150,150,48),(151,151,58),(152,152,45),(153,153,61),(154,154,64),(155,155,45),(156,156,56),(157,157,51),(158,158,55),(159,159,49),(160,160,49),(161,161,45),(162,162,48),(163,163,45),(164,164,45),(165,165,58),(166,166,45),(167,167,48),(168,168,51),(169,169,58),(170,170,45),(171,171,58),(172,172,58),(173,173,61),(174,174,62),(175,175,61),(176,176,45),(177,177,45),(178,178,51),(179,179,66),(180,180,66),(181,181,48),(182,182,51),(183,183,50),(184,184,58),(185,185,57);
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
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<eng.trickersticks.rappermugshots.TrickerSticks: void onResume()>',18,'a',NULL),(2,5,'<eng.trickersticks.rappermugshots.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(3,68,'<eng.trickersticks.rappermugshots.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(4,69,'<eng.trickersticks.rappermugshots.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(5,70,'<eng.trickersticks.rappermugshots.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(6,3,'<eng.trickersticks.rappermugshots.GlowSticks: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(7,3,'<eng.trickersticks.rappermugshots.GlowSticks: void onCreate(android.os.Bundle)>',21,'a',NULL),(8,3,'<eng.trickersticks.rappermugshots.GlowSticks: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(9,71,'<eng.trickersticks.rappermugshots.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(10,5,'<eng.trickersticks.rappermugshots.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(11,3,'<eng.trickersticks.rappermugshots.GlowSticks: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(12,72,'<eng.trickersticks.rappermugshots.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(13,2,'<eng.trickersticks.rappermugshots.TrickerSticks: void onResume()>',14,'a',NULL),(14,73,'<eng.trickersticks.rappermugshots.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(15,74,'<eng.trickersticks.rappermugshots.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(16,3,'<eng.trickersticks.rappermugshots.GlowSticks: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(17,75,'<eng.trickersticks.rappermugshots.GlowSticks$1: void onClick(android.view.View)>',6,'a',NULL),(18,12,'<performance.photo.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(19,76,'<performance.photo.iconosys.eng.MeInJail$2: void onClick(android.view.View)>',7,'a',NULL),(20,77,'<performance.photo.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(21,78,'<performance.photo.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(22,25,'<performance.photo.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(23,79,'<performance.photo.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(24,10,'<coffee.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(25,80,'<graduating.photo.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(26,9,'<performance.photo.iconosys.eng.MeInJail: void onResume()>',14,'a',NULL),(27,10,'<coffee.photo.iconosys.eng.MeInJail: void onCreate(android.os.Bundle)>',6,'a',NULL),(28,12,'<performance.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',6,'a',NULL),(29,81,'<graduating.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',9,'a',NULL),(30,10,'<coffee.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(31,9,'<performance.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(32,82,'<graduating.photo.iconosys.eng.MeInJail$1: void onClick(android.view.View)>',7,'a',NULL),(33,29,'<yippie.photo.iconosys.eng.MeInJail: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(34,83,'<coffee.photo.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(35,9,'<performance.photo.iconosys.eng.MeInJail: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(36,36,'<yippie.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',83,'a',NULL),(37,84,'<graduating.photo.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(38,9,'<performance.photo.iconosys.eng.MeInJail: void onCreate(android.os.Bundle)>',6,'a',NULL),(39,10,'<coffee.photo.iconosys.eng.MeInJail: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(40,85,'<yippie.photo.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(41,12,'<performance.photo.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(42,86,'<graduating.photo.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(43,87,'<coffee.photo.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(44,88,'<yippie.photo.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(45,89,'<performance.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',23,'a',NULL),(46,14,'<graduating.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(47,21,'<coffee.photo.iconosys.eng.RegistrationScreen: void SendPhoneData()>',93,'s',NULL),(48,36,'<yippie.photo.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(49,11,'<graduating.photo.iconosys.eng.MeInJail: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(50,90,'<coffee.photo.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(51,89,'<performance.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',9,'a',NULL),(52,11,'<graduating.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(53,36,'<yippie.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',93,'a',NULL),(54,12,'<performance.photo.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(55,91,'<coffee.photo.iconosys.eng.MeInJail$2: void onClick(android.view.View)>',7,'a',NULL),(56,26,'<graduating.photo.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(57,40,'<yippie.photo.iconosys.eng.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(58,92,'<performance.photo.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(59,21,'<coffee.photo.iconosys.eng.RegistrationScreen: void SendAutoData()>',89,'s',NULL),(60,36,'<yippie.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',53,'a',NULL),(61,13,'<coffee.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(62,25,'<performance.photo.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(63,93,'<yippie.photo.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(64,94,'<coffee.photo.iconosys.eng.MeInJail$1: void onClick(android.view.View)>',7,'a',NULL),(65,36,'<yippie.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(66,24,'<coffee.photo.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(67,36,'<yippie.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',73,'a',NULL),(68,95,'<coffee.photo.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(69,96,'<graduating.photo.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(70,29,'<yippie.photo.iconosys.eng.MeInJail: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(71,97,'<coffee.photo.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(72,11,'<graduating.photo.iconosys.eng.MeInJail: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(73,29,'<yippie.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(74,12,'<performance.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(75,98,'<graduating.photo.iconosys.eng.MeInJail$2: void onClick(android.view.View)>',7,'a',NULL),(76,36,'<yippie.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',63,'a',NULL),(77,99,'<coffee.photo.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(78,100,'<performance.photo.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(79,23,'<graduating.photo.iconosys.eng.RegistrationScreen: void SendAutoData()>',89,'s',NULL),(80,29,'<yippie.photo.iconosys.eng.MeInJail: void onCreate(android.os.Bundle)>',6,'a',NULL),(81,13,'<coffee.photo.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(82,14,'<graduating.photo.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(83,12,'<performance.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(84,101,'<yippie.photo.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(85,102,'<coffee.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',9,'a',NULL),(86,11,'<graduating.photo.iconosys.eng.MeInJail: void onCreate(android.os.Bundle)>',6,'a',NULL),(87,103,'<performance.photo.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(88,104,'<coffee.photo.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(89,105,'<yippie.photo.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(90,106,'<graduating.photo.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(91,22,'<performance.photo.iconosys.eng.RegistrationScreen: void SendAutoData()>',89,'s',NULL),(92,13,'<coffee.photo.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(93,40,'<yippie.photo.iconosys.eng.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(94,24,'<coffee.photo.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(95,14,'<graduating.photo.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(96,107,'<performance.photo.iconosys.eng.MeInJail$1: void onClick(android.view.View)>',7,'a',NULL),(97,41,'<yippie.photo.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(98,81,'<graduating.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',23,'a',NULL),(99,102,'<coffee.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',23,'a',NULL),(100,22,'<performance.photo.iconosys.eng.RegistrationScreen: void SendPhoneData()>',93,'s',NULL),(101,11,'<graduating.photo.iconosys.eng.MeInJail: void onResume()>',14,'a',NULL),(102,13,'<coffee.photo.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(103,9,'<performance.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(104,108,'<graduating.photo.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(105,10,'<coffee.photo.iconosys.eng.MeInJail: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(106,13,'<coffee.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',6,'a',NULL),(107,109,'<performance.photo.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(108,14,'<graduating.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',6,'a',NULL),(109,24,'<coffee.photo.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(110,25,'<performance.photo.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(111,23,'<graduating.photo.iconosys.eng.RegistrationScreen: void SendPhoneData()>',93,'s',NULL),(112,9,'<performance.photo.iconosys.eng.MeInJail: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(113,14,'<graduating.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(114,36,'<yippie.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(115,110,'<yippie.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',24,'a',NULL),(116,111,'<graduating.photo.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(117,36,'<yippie.photo.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(118,26,'<graduating.photo.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(119,112,'<yippie.photo.iconosys.eng.MeInJail$2: void onClick(android.view.View)>',7,'a',NULL),(120,14,'<graduating.photo.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(121,26,'<graduating.photo.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(122,110,'<yippie.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',10,'a',NULL),(123,13,'<coffee.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(124,11,'<graduating.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(125,10,'<coffee.photo.iconosys.eng.MeInJail: void onResume()>',14,'a',NULL),(126,41,'<yippie.photo.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(127,36,'<yippie.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(128,36,'<yippie.photo.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(129,29,'<yippie.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(130,41,'<yippie.photo.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(131,113,'<yippie.photo.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(132,114,'<yippie.photo.iconosys.eng.MeInJail$1: void onClick(android.view.View)>',7,'a',NULL),(133,115,'<yippie.photo.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(134,116,'<familymed.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(135,117,'<familymed.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(136,118,'<familymed.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(137,58,'<familymed.iconosys.eng.Mileage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(138,119,'<familymed.iconosys.eng.MyReceiptManager$6: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(139,120,'<familymed.iconosys.eng.MyReceiptManager$1: void onClick(android.view.View)>',7,'a',NULL),(140,121,'<familymed.iconosys.eng.Settings$3: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(141,58,'<familymed.iconosys.eng.Mileage: void calcDistance()>',34,'a',NULL),(142,122,'<familymed.iconosys.eng.MyReceiptManager$2: void onClick(android.view.View)>',7,'a',NULL),(143,45,'<familymed.iconosys.eng.MyReceiptManager: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(144,51,'<familymed.iconosys.eng.Review: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(145,123,'<familymed.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(146,66,'<familymed.iconosys.eng.Settings: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(147,45,'<familymed.iconosys.eng.MyReceiptManager: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(148,121,'<familymed.iconosys.eng.Settings$3: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(149,124,'<familymed.iconosys.eng.SelectRange$5: void onClick(android.view.View)>',18,'a',NULL),(150,125,'<familymed.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(151,116,'<familymed.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(152,45,'<familymed.iconosys.eng.MyReceiptManager: void onResume()>',10,'a',NULL),(153,61,'<familymed.iconosys.eng.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(154,64,'<familymed.iconosys.eng.ReportSheet: void sendToFile()>',22,'a',NULL),(155,119,'<familymed.iconosys.eng.MyReceiptManager$6: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(156,56,'<familymed.iconosys.eng.MileageSheet: void sendToFile()>',21,'a',NULL),(157,117,'<familymed.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(158,55,'<familymed.iconosys.eng.SpreadSheet: void sendToFile()>',21,'a',NULL),(159,49,'<familymed.iconosys.eng.ReviewSelection: void getSelection(android.util.SparseBooleanArray)>',20,'a',NULL),(160,49,'<familymed.iconosys.eng.ReviewSelection: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(161,119,'<familymed.iconosys.eng.MyReceiptManager$6: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(162,126,'<familymed.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(163,45,'<familymed.iconosys.eng.MyReceiptManager: void onCreate(android.os.Bundle)>',6,'a',NULL),(164,45,'<familymed.iconosys.eng.MyReceiptManager: void onActivityResult(int,int,android.content.Intent)>',11,'p',0),(165,127,'<familymed.iconosys.eng.Mileage$4: void onClick(android.view.View)>',6,'a',NULL),(166,128,'<familymed.iconosys.eng.MyReceiptManager$3: void onClick(android.view.View)>',7,'a',NULL),(167,129,'<familymed.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(168,117,'<familymed.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(169,116,'<familymed.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(170,45,'<familymed.iconosys.eng.MyReceiptManager: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(171,116,'<familymed.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(172,130,'<familymed.iconosys.eng.Mileage$5: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(173,61,'<familymed.iconosys.eng.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(174,131,'<familymed.iconosys.eng.MileageSend$1: void onClick(android.view.View)>',49,'a',NULL),(175,132,'<familymed.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(176,133,'<familymed.iconosys.eng.MyReceiptManager$4: void onClick(android.view.View)>',6,'a',NULL),(177,119,'<familymed.iconosys.eng.MyReceiptManager$6: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(178,134,'<familymed.iconosys.eng.Review$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(179,121,'<familymed.iconosys.eng.Settings$3: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(180,121,'<familymed.iconosys.eng.Settings$3: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(181,135,'<familymed.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(182,117,'<familymed.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(183,50,'<familymed.iconosys.eng.TakePicture: void startCameraActivity()>',9,'a',NULL),(184,58,'<familymed.iconosys.eng.Mileage: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(185,136,'<familymed.iconosys.eng.SaveSend$4: void onClick(android.view.View)>',89,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,3),(2,4,3),(3,5,3),(4,6,4),(5,8,3),(6,10,3),(7,12,3),(8,15,3),(9,17,3),(10,18,3),(11,20,3),(12,21,4),(13,22,3),(14,30,3),(15,32,3),(16,35,5),(17,36,3),(18,38,3),(19,42,5),(20,43,3),(21,47,6),(22,49,7),(23,51,7),(24,52,3),(25,55,7),(26,57,7),(27,58,7),(28,59,3),(29,60,7),(30,61,7),(31,63,7),(32,64,7),(33,66,7),(34,67,7),(35,69,7),(36,70,7),(37,72,7),(38,73,3),(39,74,7),(40,76,7),(41,77,3),(42,82,3),(43,83,3),(44,86,5),(45,87,5),(46,89,3),(47,92,3),(48,93,3),(49,94,3),(50,95,3),(51,99,6),(52,101,7),(53,104,7),(54,106,7),(55,108,6),(56,109,4),(57,110,7),(58,111,7),(59,112,3),(60,115,7),(61,117,7),(62,118,7),(63,122,7),(64,121,7),(65,123,7),(66,126,7),(67,127,7),(68,129,3),(69,130,7),(70,131,7),(71,134,7),(72,138,4),(73,142,6),(74,143,4),(75,145,3),(76,147,3),(77,150,3),(78,159,3),(79,163,3),(80,167,7),(81,168,7),(82,169,7),(83,170,7),(84,171,7),(85,172,7),(86,173,7),(87,174,7),(88,176,7),(89,177,7),(90,178,7),(91,179,7),(92,180,7),(93,181,7),(94,182,7),(95,183,7),(96,185,7),(97,186,7),(98,187,7),(99,188,7),(100,189,7),(101,190,7),(102,191,7),(103,192,7),(104,196,3),(105,200,3),(106,203,4),(107,205,8),(108,207,7),(109,208,7),(110,209,7),(111,210,7),(112,211,7),(113,212,7),(114,213,7),(115,214,7),(116,221,3),(117,223,5),(118,225,7),(119,226,7),(120,227,7),(121,228,7),(122,229,7),(123,230,7),(124,231,7),(125,232,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'eng/trickersticks/rappermugshots/GlowSticks'),(2,2,'eng/trickersticks/rappermugshots/LocationSender'),(3,7,'eng/trickersticks/rappermugshots/AdView'),(4,9,'eng/trickersticks/rappermugshots/LocationSender'),(5,11,'eng/trickersticks/rappermugshots/RegistrationScreen'),(6,13,'eng/trickersticks/rappermugshots/ShowTerms'),(7,14,'eng/trickersticks/rappermugshots/OtherApps'),(8,16,'performance/photo/iconosys/eng/PhotoView'),(9,19,'performance/photo/iconosys/eng/OtherApps'),(10,23,'performance/photo/iconosys/eng/RegistrationScreen'),(11,24,'coffee/photo/iconosys/eng/AdView'),(12,25,'performance/photo/iconosys/eng/ShowPopUp'),(13,26,'graduating/photo/iconosys/eng/ShowPopUp'),(14,27,'coffee/photo/iconosys/eng/OtherApps'),(15,28,'performance/photo/iconosys/eng/OtherApps'),(16,29,'graduating/photo/iconosys/eng/PhotoView'),(17,31,'yippie/photo/iconosys/eng/ShowPopUp'),(18,33,'performance/photo/iconosys/eng/AdView'),(19,34,'yippie/photo/iconosys/eng/ShowTerms'),(20,37,'coffee/photo/iconosys/eng/ShowTerms'),(21,40,'graduating/photo/iconosys/eng/MeInJail'),(22,41,'coffee/photo/iconosys/eng/LocationSender'),(23,39,'performance/photo/iconosys/eng/ShareImage'),(24,44,'performance/photo/iconosys/eng/ShowPopUp'),(25,45,'graduating/photo/iconosys/eng/OtherApps'),(26,46,'yippie/photo/iconosys/eng/ShowPopUp'),(27,48,'coffee/photo/iconosys/eng/PhotoView'),(28,50,'yippie/photo/iconosys/eng/LocationSender'),(29,53,'coffee/photo/iconosys/eng/LocationSender'),(30,54,'yippie/photo/iconosys/eng/ShowPopUp'),(31,56,'coffee/photo/iconosys/eng/OtherApps'),(32,62,'coffee/photo/iconosys/eng/PhotoView'),(33,65,'yippie/photo/iconosys/eng/ShowPopUp'),(34,68,'coffee/photo/iconosys/eng/OtherApps'),(35,71,'yippie/photo/iconosys/eng/ShowPopUp'),(36,75,'graduating/photo/iconosys/eng/ShowTerms'),(37,78,'yippie/photo/iconosys/eng/OtherApps'),(38,79,'performance/photo/iconosys/eng/OtherApps'),(39,80,'graduating/photo/iconosys/eng/PhotoView'),(40,81,'yippie/photo/iconosys/eng/ShowPopUp'),(41,84,'graduating/photo/iconosys/eng/LocationSender'),(42,85,'yippie/photo/iconosys/eng/AdView'),(43,88,'performance/photo/iconosys/eng/MeInJail'),(44,90,'coffee/photo/iconosys/eng/ShowPopUp'),(45,91,'graduating/photo/iconosys/eng/AdView'),(46,96,'performance/photo/iconosys/eng/LocationSender'),(47,97,'yippie/photo/iconosys/eng/LocationSender'),(48,98,'coffee/photo/iconosys/eng/AdView'),(49,100,'performance/photo/iconosys/eng/PhotoView'),(50,102,'graduating/photo/iconosys/eng/ShareImage'),(51,103,'coffee/photo/iconosys/eng/ShareImage'),(52,105,'performance/photo/iconosys/eng/LocationSender'),(53,107,'graduating/photo/iconosys/eng/RegistrationScreen'),(54,113,'coffee/photo/iconosys/eng/ShowPopUp'),(55,114,'performance/photo/iconosys/eng/ShowTerms'),(56,116,'graduating/photo/iconosys/eng/ShowPopUp'),(57,119,'performance/photo/iconosys/eng/AdView'),(58,120,'graduating/photo/iconosys/eng/LocationSender'),(59,124,'graduating/photo/iconosys/eng/OtherApps'),(60,125,'yippie/photo/iconosys/eng/OtherApps'),(61,128,'yippie/photo/iconosys/eng/ShareImage'),(62,132,'graduating/photo/iconosys/eng/AdView'),(63,133,'yippie/photo/iconosys/eng/PhotoView'),(64,135,'graduating/photo/iconosys/eng/OtherApps'),(65,137,'coffee/photo/iconosys/eng/MeInJail'),(66,136,'yippie/photo/iconosys/eng/ShowPopUp'),(67,139,'coffee/photo/iconosys/eng/RegistrationScreen'),(68,140,'yippie/photo/iconosys/eng/AdView'),(69,141,'yippie/photo/iconosys/eng/MeInJail'),(70,144,'yippie/photo/iconosys/eng/OtherApps'),(71,146,'yippie/photo/iconosys/eng/PhotoView'),(72,148,'familymed/iconosys/eng/ReviewSelection'),(73,149,'familymed/iconosys/eng/SelectRange'),(74,151,'familymed/iconosys/eng/OtherApps'),(75,152,'familymed/iconosys/eng/SelectRange'),(76,153,'familymed/iconosys/eng/TakePicture'),(77,154,'familymed/iconosys/eng/ReviewSelection'),(78,155,'familymed/iconosys/eng/MileageAdd'),(79,156,'familymed/iconosys/eng/Review'),(80,157,'familymed/iconosys/eng/OtherApps'),(81,158,'familymed/iconosys/eng/OtherApps'),(82,160,'familymed/iconosys/eng/OtherApps'),(83,161,'familymed/iconosys/eng/ReviewSelection'),(84,162,'familymed/iconosys/eng/ReportSheet'),(85,164,'familymed/iconosys/eng/ReviewSelection'),(86,165,'familymed/iconosys/eng/RegistrationScreen'),(87,166,'familymed/iconosys/eng/LocationSender'),(88,175,'familymed/iconosys/eng/ReviewSelection'),(89,184,'familymed/iconosys/eng/ReviewSelection'),(90,193,'familymed/iconosys/eng/SelectRange'),(91,194,'familymed/iconosys/eng/OtherApps'),(92,195,'familymed/iconosys/eng/ReviewSelection'),(93,197,'familymed/iconosys/eng/AdView'),(94,198,'familymed/iconosys/eng/MileageSheet'),(95,199,'familymed/iconosys/eng/Mileage'),(96,201,'familymed/iconosys/eng/ReviewSelection'),(97,202,'familymed/iconosys/eng/ReviewSelection'),(98,204,'familymed/iconosys/eng/SelectRange'),(99,206,'familymed/iconosys/eng/LocationSender'),(100,215,'familymed/iconosys/eng/ShowTerms'),(101,216,'familymed/iconosys/eng/Settings'),(102,217,'familymed/iconosys/eng/ReviewSelection'),(103,218,'familymed/iconosys/eng/SelectRange'),(104,219,'familymed/iconosys/eng/SelectRange'),(105,220,'familymed/iconosys/eng/ReviewSelection'),(106,222,'familymed/iconosys/eng/ReviewSelection'),(107,224,'familymed/iconosys/eng/MileageSheet');
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,1),(2,4,2),(3,5,3),(4,6,4),(5,8,5),(6,10,7),(7,12,8),(8,15,9),(9,17,10),(10,18,11),(11,20,12),(12,21,13),(13,22,14),(14,30,16),(15,32,17),(16,36,19),(17,38,20),(18,43,21),(19,52,22),(20,59,23),(21,73,24),(22,77,27),(23,82,28),(24,83,29),(25,89,30),(26,92,31),(27,93,32),(28,94,33),(29,95,34),(30,109,35),(31,112,36),(32,129,37),(33,138,38),(34,143,39),(35,145,40),(36,147,41),(37,150,42),(38,159,43),(39,163,45),(40,196,46),(41,200,47),(42,203,48),(43,221,49);
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
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,16,'pick_photo'),(2,29,'take_photo'),(3,31,'show_key'),(4,35,'output'),(5,39,'saved_uri'),(6,42,'output'),(7,46,'show_key'),(8,48,'pick_photo'),(9,49,'android.intent.extra.INTENT'),(10,51,'android.intent.extra.INTENT'),(11,54,'show_key'),(12,55,'android.intent.extra.TITLE'),(13,55,'android.intent.extra.INTENT'),(14,57,'android.intent.extra.INTENT'),(15,58,'android.intent.extra.INTENT'),(16,60,'android.intent.extra.TITLE'),(17,61,'android.intent.extra.INTENT'),(18,60,'android.intent.extra.INTENT'),(19,62,'take_photo'),(20,63,'android.intent.extra.TITLE'),(21,64,'android.intent.extra.INTENT'),(22,63,'android.intent.extra.INTENT'),(23,65,'show_key'),(24,66,'android.intent.extra.TITLE'),(25,67,'android.intent.extra.INTENT'),(26,66,'android.intent.extra.INTENT'),(27,69,'android.intent.extra.TITLE'),(28,70,'android.intent.extra.TITLE'),(29,69,'android.intent.extra.INTENT'),(30,70,'android.intent.extra.INTENT'),(31,71,'show_key'),(32,72,'android.intent.extra.INTENT'),(33,74,'android.intent.extra.TITLE'),(34,74,'android.intent.extra.INTENT'),(35,76,'android.intent.extra.TITLE'),(36,76,'android.intent.extra.INTENT'),(37,80,'pick_photo'),(38,81,'show_key'),(39,86,'output'),(40,87,'output'),(41,100,'take_photo'),(42,101,'android.intent.extra.INTENT'),(43,102,'saved_uri'),(44,103,'saved_uri'),(45,104,'android.intent.extra.INTENT'),(46,106,'android.intent.extra.TITLE'),(47,106,'android.intent.extra.INTENT'),(48,110,'android.intent.extra.INTENT'),(49,111,'android.intent.extra.TITLE'),(50,111,'android.intent.extra.INTENT'),(51,115,'android.intent.extra.INTENT'),(52,117,'android.intent.extra.TITLE'),(53,118,'android.intent.extra.INTENT'),(54,117,'android.intent.extra.INTENT'),(55,122,'android.intent.extra.TITLE'),(56,121,'android.intent.extra.INTENT'),(57,122,'android.intent.extra.INTENT'),(58,123,'android.intent.extra.TITLE'),(59,123,'android.intent.extra.INTENT'),(60,126,'android.intent.extra.INTENT'),(61,127,'android.intent.extra.TITLE'),(62,128,'saved_uri'),(63,127,'android.intent.extra.INTENT'),(64,130,'android.intent.extra.INTENT'),(65,131,'android.intent.extra.TITLE'),(66,131,'android.intent.extra.INTENT'),(67,133,'pick_photo'),(68,134,'android.intent.extra.TITLE'),(69,134,'android.intent.extra.INTENT'),(70,136,'show_key'),(71,146,'take_photo'),(72,148,'id'),(73,148,'report_type'),(74,149,'id'),(75,149,'report_type'),(76,152,'id'),(77,152,'report_type'),(78,154,'id'),(79,154,'report_type'),(80,155,'_mileage'),(81,161,'id'),(82,161,'report_type'),(83,162,'id'),(84,162,'Category'),(85,162,'range1'),(86,162,'range2'),(87,164,'id'),(88,164,'report_type'),(89,167,'android.intent.extra.INTENT'),(90,168,'android.intent.extra.INTENT'),(91,169,'android.intent.extra.TITLE'),(92,169,'android.intent.extra.INTENT'),(93,170,'android.intent.extra.INTENT'),(94,171,'android.intent.extra.TITLE'),(95,171,'android.intent.extra.INTENT'),(96,172,'android.intent.extra.INTENT'),(97,173,'android.intent.extra.TITLE'),(98,173,'android.intent.extra.INTENT'),(99,174,'android.intent.extra.TITLE'),(100,174,'android.intent.extra.INTENT'),(101,175,'id'),(102,175,'report_type'),(103,176,'android.intent.extra.INTENT'),(104,177,'android.intent.extra.INTENT'),(105,178,'android.intent.extra.TITLE'),(106,178,'android.intent.extra.INTENT'),(107,179,'android.intent.extra.INTENT'),(108,180,'android.intent.extra.TITLE'),(109,180,'android.intent.extra.INTENT'),(110,181,'android.intent.extra.INTENT'),(111,182,'android.intent.extra.TITLE'),(112,182,'android.intent.extra.INTENT'),(113,183,'android.intent.extra.TITLE'),(114,183,'android.intent.extra.INTENT'),(115,184,'id'),(116,184,'report_type'),(117,185,'android.intent.extra.INTENT'),(118,186,'android.intent.extra.INTENT'),(119,187,'android.intent.extra.TITLE'),(120,187,'android.intent.extra.INTENT'),(121,188,'android.intent.extra.INTENT'),(122,189,'android.intent.extra.TITLE'),(123,189,'android.intent.extra.INTENT'),(124,190,'android.intent.extra.INTENT'),(125,191,'android.intent.extra.TITLE'),(126,191,'android.intent.extra.INTENT'),(127,192,'android.intent.extra.TITLE'),(128,192,'android.intent.extra.INTENT'),(129,193,'id'),(130,193,'Category'),(131,193,'report_type'),(132,195,'id'),(133,195,'report_type'),(134,201,'id'),(135,201,'report_type'),(136,202,'id'),(137,202,'report_type'),(138,204,'id'),(139,204,'report_type'),(140,207,'android.intent.extra.INTENT'),(141,208,'android.intent.extra.INTENT'),(142,209,'android.intent.extra.TITLE'),(143,209,'android.intent.extra.INTENT'),(144,210,'android.intent.extra.INTENT'),(145,211,'android.intent.extra.TITLE'),(146,211,'android.intent.extra.INTENT'),(147,212,'android.intent.extra.INTENT'),(148,213,'android.intent.extra.TITLE'),(149,213,'android.intent.extra.INTENT'),(150,214,'android.intent.extra.TITLE'),(151,214,'android.intent.extra.INTENT'),(152,217,'id'),(153,217,'report_type'),(154,218,'id'),(155,218,'report_type'),(156,219,'id'),(157,219,'report_type'),(158,220,'id'),(159,220,'report_type'),(160,222,'id'),(161,222,'report_type'),(162,223,'output'),(163,225,'android.intent.extra.INTENT'),(164,226,'android.intent.extra.INTENT'),(165,227,'android.intent.extra.TITLE'),(166,227,'android.intent.extra.INTENT'),(167,228,'android.intent.extra.INTENT'),(168,229,'android.intent.extra.TITLE'),(169,229,'android.intent.extra.INTENT'),(170,230,'android.intent.extra.INTENT'),(171,231,'android.intent.extra.TITLE'),(172,231,'android.intent.extra.INTENT'),(173,232,'android.intent.extra.TITLE'),(174,232,'android.intent.extra.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,2),(7,7,2),(8,8,2),(9,9,1),(10,10,2),(11,11,1);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,2),(7,7,2),(8,8,2),(9,9,1),(10,10,2),(11,11,1);
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
INSERT INTO `IFData` VALUES (1,7,'sms',NULL,NULL,NULL,NULL,NULL),(2,6,'sms',NULL,NULL,NULL,NULL,NULL),(3,6,'mms',NULL,NULL,NULL,NULL,NULL),(4,7,'mms',NULL,NULL,NULL,NULL,NULL),(5,8,'sms',NULL,NULL,NULL,NULL,NULL),(6,6,'mmsto',NULL,NULL,NULL,NULL,NULL),(7,7,'mmsto',NULL,NULL,NULL,NULL,NULL),(8,8,'mms',NULL,NULL,NULL,NULL,NULL),(9,7,NULL,NULL,NULL,NULL,'image','*'),(10,6,NULL,NULL,NULL,NULL,'image','*'),(11,8,'mmsto',NULL,NULL,NULL,NULL,NULL),(12,6,NULL,NULL,NULL,NULL,'video','*'),(13,7,NULL,NULL,NULL,NULL,'video','*'),(14,8,NULL,NULL,NULL,NULL,'image','*'),(15,6,NULL,NULL,NULL,NULL,'audio','*'),(16,7,NULL,NULL,NULL,NULL,'audio','*'),(17,8,NULL,NULL,NULL,NULL,'video','*'),(18,8,NULL,NULL,NULL,NULL,'audio','*'),(19,10,'sms',NULL,NULL,NULL,NULL,NULL),(20,10,'mms',NULL,NULL,NULL,NULL,NULL),(21,10,'mmsto',NULL,NULL,NULL,NULL,NULL),(22,10,NULL,NULL,NULL,NULL,'image','*'),(23,10,NULL,NULL,NULL,NULL,'video','*'),(24,10,NULL,NULL,NULL,NULL,'audio','*');
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
INSERT INTO `IMimeTypes` VALUES (1,47,'image','*'),(2,99,'image','*'),(3,108,'image','*'),(4,142,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'eng.trickersticks.rappermugshots'),(2,2,'eng.trickersticks.rappermugshots'),(3,7,'eng.trickersticks.rappermugshots'),(4,9,'eng.trickersticks.rappermugshots'),(5,11,'eng.trickersticks.rappermugshots'),(6,13,'eng.trickersticks.rappermugshots'),(7,14,'eng.trickersticks.rappermugshots'),(8,16,'performance.photo.iconosys.eng'),(9,19,'performance.photo.iconosys.eng'),(10,23,'performance.photo.iconosys.eng'),(11,24,'coffee.photo.iconosys.eng'),(12,25,'performance.photo.iconosys.eng'),(13,26,'graduating.photo.iconosys.eng'),(14,27,'coffee.photo.iconosys.eng'),(15,28,'performance.photo.iconosys.eng'),(16,29,'graduating.photo.iconosys.eng'),(17,31,'yippie.photo.iconosys.eng'),(18,33,'performance.photo.iconosys.eng'),(19,34,'yippie.photo.iconosys.eng'),(20,37,'coffee.photo.iconosys.eng'),(21,40,'graduating.photo.iconosys.eng'),(22,41,'coffee.photo.iconosys.eng'),(23,39,'performance.photo.iconosys.eng'),(24,44,'performance.photo.iconosys.eng'),(25,45,'graduating.photo.iconosys.eng'),(26,46,'yippie.photo.iconosys.eng'),(27,48,'coffee.photo.iconosys.eng'),(28,50,'yippie.photo.iconosys.eng'),(29,53,'coffee.photo.iconosys.eng'),(30,54,'yippie.photo.iconosys.eng'),(31,56,'coffee.photo.iconosys.eng'),(32,62,'coffee.photo.iconosys.eng'),(33,65,'yippie.photo.iconosys.eng'),(34,68,'coffee.photo.iconosys.eng'),(35,71,'yippie.photo.iconosys.eng'),(36,75,'graduating.photo.iconosys.eng'),(37,78,'yippie.photo.iconosys.eng'),(38,79,'performance.photo.iconosys.eng'),(39,80,'graduating.photo.iconosys.eng'),(40,81,'yippie.photo.iconosys.eng'),(41,84,'graduating.photo.iconosys.eng'),(42,85,'yippie.photo.iconosys.eng'),(43,88,'performance.photo.iconosys.eng'),(44,90,'coffee.photo.iconosys.eng'),(45,91,'graduating.photo.iconosys.eng'),(46,96,'performance.photo.iconosys.eng'),(47,97,'yippie.photo.iconosys.eng'),(48,98,'coffee.photo.iconosys.eng'),(49,100,'performance.photo.iconosys.eng'),(50,102,'graduating.photo.iconosys.eng'),(51,103,'coffee.photo.iconosys.eng'),(52,105,'performance.photo.iconosys.eng'),(53,107,'graduating.photo.iconosys.eng'),(54,113,'coffee.photo.iconosys.eng'),(55,114,'performance.photo.iconosys.eng'),(56,116,'graduating.photo.iconosys.eng'),(57,119,'performance.photo.iconosys.eng'),(58,120,'graduating.photo.iconosys.eng'),(59,124,'graduating.photo.iconosys.eng'),(60,125,'yippie.photo.iconosys.eng'),(61,128,'yippie.photo.iconosys.eng'),(62,132,'graduating.photo.iconosys.eng'),(63,133,'yippie.photo.iconosys.eng'),(64,135,'graduating.photo.iconosys.eng'),(65,137,'coffee.photo.iconosys.eng'),(66,136,'yippie.photo.iconosys.eng'),(67,139,'coffee.photo.iconosys.eng'),(68,140,'yippie.photo.iconosys.eng'),(69,141,'yippie.photo.iconosys.eng'),(70,144,'yippie.photo.iconosys.eng'),(71,146,'yippie.photo.iconosys.eng'),(72,148,'familymed.iconosys.eng'),(73,149,'familymed.iconosys.eng'),(74,151,'familymed.iconosys.eng'),(75,152,'familymed.iconosys.eng'),(76,153,'familymed.iconosys.eng'),(77,154,'familymed.iconosys.eng'),(78,155,'familymed.iconosys.eng'),(79,156,'familymed.iconosys.eng'),(80,157,'familymed.iconosys.eng'),(81,158,'familymed.iconosys.eng'),(82,160,'familymed.iconosys.eng'),(83,161,'familymed.iconosys.eng'),(84,162,'familymed.iconosys.eng'),(85,164,'familymed.iconosys.eng'),(86,165,'familymed.iconosys.eng'),(87,166,'familymed.iconosys.eng'),(88,175,'familymed.iconosys.eng'),(89,184,'familymed.iconosys.eng'),(90,193,'familymed.iconosys.eng'),(91,194,'familymed.iconosys.eng'),(92,195,'familymed.iconosys.eng'),(93,197,'familymed.iconosys.eng'),(94,198,'familymed.iconosys.eng'),(95,199,'familymed.iconosys.eng'),(96,201,'familymed.iconosys.eng'),(97,202,'familymed.iconosys.eng'),(98,204,'familymed.iconosys.eng'),(99,206,'familymed.iconosys.eng'),(100,215,'familymed.iconosys.eng'),(101,216,'familymed.iconosys.eng'),(102,217,'familymed.iconosys.eng'),(103,218,'familymed.iconosys.eng'),(104,219,'familymed.iconosys.eng'),(105,220,'familymed.iconosys.eng'),(106,222,'familymed.iconosys.eng'),(107,224,'familymed.iconosys.eng');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,9,0),(4,10,0),(5,11,0),(6,12,0),(7,13,0),(8,14,0),(9,29,0),(10,36,0),(11,45,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,1,0),(4,4,1,0),(5,5,1,0),(6,6,1,0),(7,7,0,0),(8,9,1,0),(9,10,0,0),(10,12,1,0),(11,13,0,0),(12,14,1,0),(13,15,0,0),(14,16,0,0),(15,17,1,0),(16,19,0,0),(17,20,1,0),(18,21,1,0),(19,22,0,0),(20,23,1,0),(21,24,1,0),(22,25,1,0),(23,26,0,0),(24,27,0,0),(25,28,0,0),(26,29,0,0),(27,30,0,0),(28,31,0,0),(29,32,0,0),(30,34,1,0),(31,36,0,0),(32,37,1,0),(33,38,0,0),(34,40,0,0),(35,41,1,0),(36,42,1,0),(37,43,0,0),(38,44,1,0),(39,45,0,0),(40,46,0,0),(41,47,0,0),(42,48,1,0),(43,50,1,0),(44,51,0,0),(45,52,0,0),(46,53,0,0),(47,54,1,0),(48,55,0,0),(49,56,1,0),(50,57,0,0),(51,56,1,0),(52,58,1,0),(53,59,0,0),(54,60,0,0),(55,56,1,0),(56,61,0,0),(57,56,1,0),(58,62,1,0),(59,63,1,0),(60,56,1,0),(61,62,1,0),(62,64,0,0),(63,62,1,0),(64,56,1,0),(65,65,0,0),(66,56,1,0),(67,62,1,0),(68,66,0,0),(69,62,1,0),(70,56,1,0),(71,67,0,0),(72,62,1,0),(73,68,1,0),(74,62,1,0),(75,69,0,0),(76,62,1,0),(77,71,1,0),(78,73,0,0),(79,74,0,0),(80,75,0,0),(81,76,0,0),(82,77,1,0),(83,78,1,0),(84,79,0,0),(85,80,0,0),(86,81,1,0),(87,82,1,0),(88,83,0,0),(89,84,1,0),(90,85,0,0),(91,86,0,0),(92,87,1,0),(93,88,1,0),(94,89,1,0),(95,90,1,0),(96,91,0,0),(97,93,0,0),(98,94,0,0),(99,95,1,0),(100,96,0,0),(101,97,1,0),(102,98,0,0),(103,99,0,0),(104,97,1,0),(105,100,0,0),(106,97,1,0),(107,101,0,0),(108,102,1,0),(109,103,1,0),(110,97,1,0),(111,97,1,0),(112,104,1,0),(113,106,0,0),(114,107,0,0),(115,97,1,0),(116,108,0,0),(117,97,1,0),(118,109,1,0),(119,110,0,0),(120,111,0,0),(121,109,1,0),(122,97,1,0),(123,109,1,0),(124,113,0,0),(125,114,0,0),(126,109,1,0),(127,109,1,0),(128,115,0,0),(129,116,1,0),(130,109,1,0),(131,109,1,0),(132,118,0,0),(133,119,0,0),(134,109,1,0),(135,121,0,0),(136,122,0,0),(137,123,0,0),(138,124,1,0),(139,125,0,0),(140,126,0,0),(141,127,0,0),(142,128,1,0),(143,129,1,0),(144,130,0,0),(145,131,1,0),(146,132,0,0),(147,133,1,0),(148,134,0,0),(149,135,0,0),(150,136,1,0),(151,137,0,0),(152,138,0,0),(153,139,0,0),(154,140,0,0),(155,141,0,0),(156,142,0,0),(157,143,0,0),(158,144,0,0),(159,145,1,0),(160,146,0,0),(161,148,0,0),(162,149,0,0),(163,150,1,0),(164,151,0,0),(165,152,0,0),(166,153,0,0),(167,154,1,0),(168,154,1,0),(169,154,1,0),(170,154,1,0),(171,154,1,0),(172,154,1,0),(173,154,1,0),(174,154,1,0),(175,155,0,0),(176,156,1,0),(177,156,1,0),(178,156,1,0),(179,156,1,0),(180,156,1,0),(181,156,1,0),(182,156,1,0),(183,156,1,0),(184,157,0,0),(185,158,1,0),(186,158,1,0),(187,158,1,0),(188,158,1,0),(189,158,1,0),(190,158,1,0),(191,158,1,0),(192,158,1,0),(193,159,0,0),(194,160,0,0),(195,161,0,0),(196,162,1,0),(197,163,0,0),(198,165,0,0),(199,166,0,0),(200,167,1,0),(201,168,0,0),(202,169,0,0),(203,170,1,0),(204,171,0,0),(205,172,1,0),(206,173,0,0),(207,174,1,0),(208,174,1,0),(209,174,1,0),(210,174,1,0),(211,174,1,0),(212,174,1,0),(213,174,1,0),(214,174,1,0),(215,175,0,0),(216,176,0,0),(217,177,0,0),(218,178,0,0),(219,179,0,0),(220,180,0,0),(221,181,1,0),(222,182,0,0),(223,183,1,0),(224,184,0,0),(225,185,1,0),(226,185,1,0),(227,185,1,0),(228,185,1,0),(229,185,1,0),(230,185,1,0),(231,185,1,0),(232,185,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (8,'android.permission.ACCESS_COARSE_LOCATION'),(6,'android.permission.ACCESS_FINE_LOCATION'),(12,'android.permission.CAMERA'),(10,'android.permission.GET_ACCOUNTS'),(3,'android.permission.INTERNET'),(9,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(4,'android.permission.READ_SMS'),(2,'android.permission.SEND_SMS'),(11,'android.permission.WAKE_LOCK'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(7,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(2,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(3,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(4,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(5,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(6,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(7,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(8,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(9,NULL,NULL,'http://advertise.iconosys.com',NULL,NULL,NULL),(10,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(11,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(12,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(13,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(14,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(15,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(16,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(17,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(18,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(19,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(20,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(21,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(22,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(23,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(24,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(25,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(26,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(27,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(28,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(29,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(30,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(31,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(32,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(33,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(34,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(35,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(36,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(37,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(38,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(39,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(40,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(41,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(42,NULL,NULL,'http://www.iconosys.com/product.php',NULL,NULL,NULL),(43,NULL,NULL,'http://www.iconosys.com/product.php',NULL,NULL,NULL),(44,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(45,NULL,NULL,'http://www.iconosys.com/product.php',NULL,NULL,NULL),(46,NULL,NULL,'http://www.iconosys.com/product.php',NULL,NULL,NULL),(47,NULL,NULL,'http://www.iconosys.com/product.php',NULL,NULL,NULL),(48,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(49,NULL,NULL,'http://www.iconosys.com/product.php',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,11,6),(2,35,15),(3,39,18),(4,70,25),(5,72,26),(6,147,44);
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,2,3),(7,2,4),(8,2,5),(9,2,6),(10,2,7),(11,2,8),(12,2,9),(13,2,10),(14,2,11),(15,3,1),(16,3,2),(17,3,3),(18,4,1),(19,3,4),(20,4,2),(21,3,5),(22,4,3),(23,5,1),(24,5,2),(25,4,4),(26,3,6),(27,4,5),(28,5,3),(29,3,7),(30,3,8),(31,5,4),(32,4,6),(33,3,9),(34,5,5),(35,4,7),(36,3,10),(37,4,8),(38,5,6),(39,3,11),(40,5,7),(41,4,9),(42,5,8),(43,4,10),(44,3,12),(45,4,11),(46,5,9),(47,5,10),(48,4,12),(49,5,11),(50,5,12),(51,6,1),(52,6,2),(53,6,3),(54,6,4),(55,6,5),(56,6,6),(57,6,7),(58,6,8),(59,6,9),(60,6,10),(61,6,11),(62,6,12),(63,7,1),(64,7,2),(65,7,3),(66,7,4),(67,7,5),(68,7,6),(69,7,7),(70,7,8),(71,7,9),(72,7,10),(73,7,11),(74,7,12);
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
