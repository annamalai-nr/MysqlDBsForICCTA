-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_473
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
INSERT INTO `ActionStrings` VALUES (4,'android.intent.action.CHOOSER'),(7,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(5,'android.intent.action.PICK'),(3,'android.intent.action.SENDTO'),(2,'android.intent.action.VIEW'),(6,'android.media.action.IMAGE_CAPTURE'),(8,'android.settings.LOCATION_SOURCE_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'eng.trickersticks.movies',2),(2,'twentyfirstbday.timer.iconosys',1),(3,'cincodemayo.buzzer.iconosys',6),(4,'seniorprom.timer.iconosys',1),(5,'santa.photo.iconosys.eng',3),(6,'tdtracker.iconosys.eng',2),(7,'ccmileage.iconosys.eng',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'eng.trickersticks.movies.TrickerSticks'),(2,1,'eng.trickersticks.movies.GlowSticks'),(3,1,'eng.trickersticks.movies.Registration'),(4,2,'twentyfirstbday.timer.iconosys.ChristmasTimer'),(5,3,'cincodemayo.buzzer.iconosys.ChristmasTimer'),(6,2,'twentyfirstbday.timer.iconosys.ContactsList'),(7,3,'cincodemayo.buzzer.iconosys.ContactsList'),(8,2,'twentyfirstbday.timer.iconosys.MessageService'),(9,3,'cincodemayo.buzzer.iconosys.OtherApps'),(10,4,'seniorprom.timer.iconosys.ChristmasTimer'),(11,4,'seniorprom.timer.iconosys.ContactsList'),(12,3,'cincodemayo.buzzer.iconosys.MessageService'),(13,4,'seniorprom.timer.iconosys.OtherApps'),(14,4,'seniorprom.timer.iconosys.MessageService'),(15,5,'santa.photo.iconosys.eng.MeInJail'),(16,5,'santa.photo.iconosys.eng.PhotoView'),(17,5,'santa.photo.iconosys.eng.OtherApps'),(18,5,'santa.photo.iconosys.eng.ShowTerms'),(19,5,'santa.photo.iconosys.eng.RegistrationScreen'),(20,5,'santa.photo.iconosys.eng.ShareImage'),(21,5,'santa.photo.iconosys.eng.ShowPopUp'),(22,5,'santa.photo.iconosys.eng.AdView'),(23,5,'santa.photo.iconosys.eng.LocationSender'),(24,6,'tdtracker.iconosys.eng.MyReceiptManager'),(25,7,'ccmileage.iconosys.eng.MyReceiptManager'),(26,6,'tdtracker.iconosys.eng.ShowPopUp'),(27,6,'tdtracker.iconosys.eng.MileageAdd'),(28,7,'ccmileage.iconosys.eng.ShowPopUp'),(29,6,'tdtracker.iconosys.eng.OtherApps'),(30,7,'ccmileage.iconosys.eng.MileageAdd'),(31,6,'tdtracker.iconosys.eng.ReviewSelection'),(32,7,'ccmileage.iconosys.eng.OtherApps'),(33,6,'tdtracker.iconosys.eng.TakePicture'),(34,7,'ccmileage.iconosys.eng.ReviewSelection'),(35,6,'tdtracker.iconosys.eng.Review'),(36,7,'ccmileage.iconosys.eng.TakePicture'),(37,6,'tdtracker.iconosys.eng.DisplayCategory'),(38,7,'ccmileage.iconosys.eng.Review'),(39,6,'tdtracker.iconosys.eng.ShowCat'),(40,7,'ccmileage.iconosys.eng.DisplayCategory'),(41,6,'tdtracker.iconosys.eng.Preview'),(42,7,'ccmileage.iconosys.eng.ShowCat'),(43,6,'tdtracker.iconosys.eng.SpreadSheet'),(44,7,'ccmileage.iconosys.eng.Preview'),(45,6,'tdtracker.iconosys.eng.MileageSheet'),(46,7,'ccmileage.iconosys.eng.SpreadSheet'),(47,6,'tdtracker.iconosys.eng.SaveSend'),(48,7,'ccmileage.iconosys.eng.MileageSheet'),(49,6,'tdtracker.iconosys.eng.Mileage'),(50,7,'ccmileage.iconosys.eng.SaveSend'),(51,6,'tdtracker.iconosys.eng.ShowPopUpReport'),(52,7,'ccmileage.iconosys.eng.Mileage'),(53,6,'tdtracker.iconosys.eng.AdView'),(54,3,'cincodemayo.buzzer.iconosys.OtherApps$2'),(55,7,'ccmileage.iconosys.eng.ShowPopUpReport'),(56,4,'seniorprom.timer.iconosys.OtherApps$5'),(57,6,'tdtracker.iconosys.eng.RegistrationScreen'),(58,7,'ccmileage.iconosys.eng.AdView'),(59,6,'tdtracker.iconosys.eng.MileageSend'),(60,7,'ccmileage.iconosys.eng.RegistrationScreen'),(61,6,'tdtracker.iconosys.eng.SelectRange'),(62,7,'ccmileage.iconosys.eng.MileageSend'),(63,6,'tdtracker.iconosys.eng.ReportSheet'),(64,4,'seniorprom.timer.iconosys.OtherApps$4'),(65,7,'ccmileage.iconosys.eng.SelectRange'),(66,6,'tdtracker.iconosys.eng.ShowTerms'),(67,7,'ccmileage.iconosys.eng.ReportSheet'),(68,6,'tdtracker.iconosys.eng.Settings'),(69,7,'ccmileage.iconosys.eng.ShowTerms'),(70,6,'tdtracker.iconosys.eng.LocationSender'),(71,7,'ccmileage.iconosys.eng.Settings'),(72,7,'ccmileage.iconosys.eng.LocationSender'),(73,3,'cincodemayo.buzzer.iconosys.OtherApps$1'),(74,4,'seniorprom.timer.iconosys.OtherApps$3'),(75,4,'seniorprom.timer.iconosys.OtherApps$2'),(76,4,'seniorprom.timer.iconosys.OtherApps$1'),(77,4,'seniorprom.timer.iconosys.OtherApps$6'),(78,5,'santa.photo.iconosys.eng.PhotoView$1'),(79,5,'santa.photo.iconosys.eng.OtherApps$2'),(80,5,'santa.photo.iconosys.eng.MeInJail$1'),(81,5,'santa.photo.iconosys.eng.OtherApps$1'),(82,5,'santa.photo.iconosys.eng.MeInJail$2'),(83,5,'santa.photo.iconosys.eng.OtherApps$5'),(84,5,'santa.photo.iconosys.eng.RegistrationScreen$1'),(85,5,'santa.photo.iconosys.eng.OtherApps$3'),(86,5,'santa.photo.iconosys.eng.OtherApps$4'),(87,5,'santa.photo.iconosys.eng.OtherApps$6'),(88,6,'tdtracker.iconosys.eng.OtherApps$4'),(89,7,'ccmileage.iconosys.eng.Mileage$8'),(90,7,'ccmileage.iconosys.eng.MyReceiptManager$9'),(91,6,'tdtracker.iconosys.eng.MileageSend$1'),(92,7,'ccmileage.iconosys.eng.Review$3'),(93,7,'ccmileage.iconosys.eng.Settings$3'),(94,7,'ccmileage.iconosys.eng.MyReceiptManager$6'),(95,6,'tdtracker.iconosys.eng.Mileage$8'),(96,7,'ccmileage.iconosys.eng.MileageSend$1'),(97,6,'tdtracker.iconosys.eng.Review$3'),(98,6,'tdtracker.iconosys.eng.Review$1'),(99,6,'tdtracker.iconosys.eng.SaveSend$4'),(100,7,'ccmileage.iconosys.eng.Mileage$4'),(101,7,'ccmileage.iconosys.eng.OtherApps$6'),(102,6,'tdtracker.iconosys.eng.OtherApps$6'),(103,7,'ccmileage.iconosys.eng.SaveSend$4'),(104,6,'tdtracker.iconosys.eng.OtherApps$5'),(105,6,'tdtracker.iconosys.eng.MyReceiptManager$6'),(106,6,'tdtracker.iconosys.eng.SelectRange$5'),(107,7,'ccmileage.iconosys.eng.OtherApps$3'),(108,6,'tdtracker.iconosys.eng.Settings$3'),(109,7,'ccmileage.iconosys.eng.Mileage$5'),(110,6,'tdtracker.iconosys.eng.MyReceiptManager$2'),(111,7,'ccmileage.iconosys.eng.MyReceiptManager$5'),(112,6,'tdtracker.iconosys.eng.Mileage$4'),(113,7,'ccmileage.iconosys.eng.OtherApps$4'),(114,6,'tdtracker.iconosys.eng.Mileage$5'),(115,6,'tdtracker.iconosys.eng.MyReceiptManager$1'),(116,6,'tdtracker.iconosys.eng.MyReceiptManager$3'),(117,7,'ccmileage.iconosys.eng.SelectRange$5'),(118,6,'tdtracker.iconosys.eng.OtherApps$2'),(119,7,'ccmileage.iconosys.eng.OtherApps$2'),(120,7,'ccmileage.iconosys.eng.Review$1'),(121,7,'ccmileage.iconosys.eng.OtherApps$5'),(122,6,'tdtracker.iconosys.eng.OtherApps$1'),(123,7,'ccmileage.iconosys.eng.MyReceiptManager$1'),(124,6,'tdtracker.iconosys.eng.RegistrationScreen$1'),(125,6,'tdtracker.iconosys.eng.MyReceiptManager$4'),(126,6,'tdtracker.iconosys.eng.OtherApps$3'),(127,7,'ccmileage.iconosys.eng.RegistrationScreen$1'),(128,7,'ccmileage.iconosys.eng.OtherApps$1');
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
INSERT INTO `ComponentExtras` VALUES (1,16,'take_photo'),(2,20,'saved_uri'),(3,22,'_who'),(4,16,'pick_photo'),(5,61,'id'),(6,24,'(.*)'),(7,34,'id'),(8,64,'Category'),(9,57,'_id'),(10,50,'_id'),(11,59,'Category'),(12,61,'range2'),(13,64,'range2'),(14,61,'Category'),(15,59,'id'),(16,30,'_mileage'),(17,64,'id'),(18,61,'range1'),(19,53,'_who'),(20,24,'access_token'),(21,64,'range1'),(22,27,'_mileage'),(23,34,'report_type'),(24,56,'_who'),(25,62,'report_type'),(26,60,'_id'),(27,31,'id'),(28,59,'report_type'),(29,62,'id'),(30,46,'_cat'),(31,43,'_cat'),(32,31,'report_type'),(33,47,'_id'),(34,62,'Category');
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,55,'a',0,NULL,NULL),(55,57,'a',0,NULL,NULL),(56,58,'a',0,NULL,NULL),(57,59,'a',0,NULL,NULL),(58,60,'a',0,NULL,NULL),(59,61,'a',0,NULL,NULL),(60,62,'a',0,NULL,NULL),(61,63,'a',0,NULL,NULL),(62,65,'a',0,NULL,NULL),(63,66,'a',0,NULL,NULL),(64,67,'a',0,NULL,NULL),(65,68,'a',0,NULL,NULL),(66,69,'a',0,NULL,NULL),(67,70,'s',0,NULL,NULL),(68,71,'a',0,NULL,NULL),(69,72,'s',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,4),(3,3,6),(4,4,6),(5,5,9),(6,6,13),(7,7,7),(8,8,13),(9,9,5),(10,10,11),(11,11,5),(12,12,10),(13,13,9),(14,14,13),(15,15,7),(16,16,11),(17,17,13),(18,18,13),(19,19,13),(20,20,10),(21,21,16),(22,22,20),(23,23,20),(24,24,15),(25,25,16),(26,26,17),(27,27,15),(28,28,15),(29,29,15),(30,30,16),(31,31,17),(32,32,15),(33,33,15),(34,34,15),(35,35,16),(36,36,17),(37,37,19),(38,38,16),(39,39,19),(40,40,17),(41,41,17),(42,42,20),(43,43,15),(44,44,16),(45,45,16),(46,46,16),(47,47,19),(48,48,17),(49,49,29),(50,50,52),(51,51,24),(52,52,25),(53,53,57),(54,54,25),(55,55,25),(56,56,38),(57,57,68),(58,58,55),(59,59,25),(60,60,49),(61,61,60),(62,62,61),(63,63,34),(64,64,45),(65,65,46),(66,66,35),(67,67,48),(68,68,35),(69,69,47),(70,70,52),(71,71,32),(72,72,29),(73,73,58),(74,74,55),(75,75,50),(76,76,49),(77,77,24),(78,78,29),(79,79,24),(80,80,59),(81,81,32),(82,82,25),(83,83,65),(84,84,52),(85,85,24),(86,86,25),(87,87,33),(88,88,68),(89,89,49),(90,90,31),(91,91,32),(92,92,68),(93,93,49),(94,94,24),(95,95,25),(96,96,35),(97,97,38),(98,98,65),(99,99,52),(100,100,52),(101,101,31),(102,102,24),(103,103,62),(104,104,35),(105,105,64),(106,106,35),(107,107,65),(108,108,24),(109,109,24),(110,110,65),(111,111,52),(112,112,29),(113,113,25),(114,114,24),(115,115,24),(116,116,32),(117,117,49),(118,118,38),(119,119,24),(120,120,36),(121,121,49),(122,122,52),(123,123,58),(124,124,35),(125,125,49),(126,126,38),(127,127,49),(128,128,68),(129,129,24),(130,130,52),(131,131,32),(132,132,29),(133,133,43),(134,134,38),(135,135,68),(136,136,52),(137,137,25),(138,138,25),(139,139,55),(140,140,25),(141,141,24),(142,142,38),(143,143,29),(144,144,25),(145,145,24),(146,146,34),(147,147,49),(148,148,58),(149,149,65),(150,150,32);
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
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<eng.trickersticks.movies.TrickerSticks: void onCreate(android.os.Bundle)>',6,'a',NULL),(2,4,'<twentyfirstbday.timer.iconosys.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(3,6,'<twentyfirstbday.timer.iconosys.ContactsList: void next()>',3,'p',NULL),(4,6,'<twentyfirstbday.timer.iconosys.ContactsList: void onStart()>',4,'p',NULL),(5,54,'<cincodemayo.buzzer.iconosys.OtherApps$2: void onClick(android.view.View)>',8,'a',NULL),(6,56,'<seniorprom.timer.iconosys.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(7,7,'<cincodemayo.buzzer.iconosys.ContactsList: void next()>',3,'p',NULL),(8,64,'<seniorprom.timer.iconosys.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(9,5,'<cincodemayo.buzzer.iconosys.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(10,11,'<seniorprom.timer.iconosys.ContactsList: void next()>',3,'p',NULL),(11,5,'<cincodemayo.buzzer.iconosys.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(12,10,'<seniorprom.timer.iconosys.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(13,73,'<cincodemayo.buzzer.iconosys.OtherApps$1: void onClick(android.view.View)>',8,'a',NULL),(14,74,'<seniorprom.timer.iconosys.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(15,7,'<cincodemayo.buzzer.iconosys.ContactsList: void onStart()>',4,'p',NULL),(16,11,'<seniorprom.timer.iconosys.ContactsList: void onStart()>',4,'p',NULL),(17,75,'<seniorprom.timer.iconosys.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(18,76,'<seniorprom.timer.iconosys.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(19,77,'<seniorprom.timer.iconosys.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(20,10,'<seniorprom.timer.iconosys.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',27,'a',NULL),(21,78,'<santa.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',23,'a',NULL),(22,20,'<santa.photo.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(23,20,'<santa.photo.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(24,15,'<santa.photo.iconosys.eng.MeInJail: void onCreate(android.os.Bundle)>',6,'a',NULL),(25,16,'<santa.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(26,79,'<santa.photo.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(27,15,'<santa.photo.iconosys.eng.MeInJail: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(28,15,'<santa.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(29,80,'<santa.photo.iconosys.eng.MeInJail$1: void onClick(android.view.View)>',7,'a',NULL),(30,78,'<santa.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',9,'a',NULL),(31,81,'<santa.photo.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(32,15,'<santa.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(33,15,'<santa.photo.iconosys.eng.MeInJail: void onResume()>',14,'a',NULL),(34,82,'<santa.photo.iconosys.eng.MeInJail$2: void onClick(android.view.View)>',7,'a',NULL),(35,16,'<santa.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(36,83,'<santa.photo.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(37,84,'<santa.photo.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(38,16,'<santa.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',6,'a',NULL),(39,19,'<santa.photo.iconosys.eng.RegistrationScreen: void SendAutoData()>',89,'s',NULL),(40,85,'<santa.photo.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(41,86,'<santa.photo.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(42,20,'<santa.photo.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(43,15,'<santa.photo.iconosys.eng.MeInJail: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(44,16,'<santa.photo.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(45,16,'<santa.photo.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(46,16,'<santa.photo.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(47,19,'<santa.photo.iconosys.eng.RegistrationScreen: void SendPhoneData()>',93,'s',NULL),(48,87,'<santa.photo.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(49,88,'<tdtracker.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(50,89,'<ccmileage.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(51,24,'<tdtracker.iconosys.eng.MyReceiptManager: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(52,90,'<ccmileage.iconosys.eng.MyReceiptManager$9: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(53,91,'<tdtracker.iconosys.eng.MileageSend$1: void onClick(android.view.View)>',49,'a',NULL),(54,90,'<ccmileage.iconosys.eng.MyReceiptManager$9: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(55,25,'<ccmileage.iconosys.eng.MyReceiptManager: void customFormat(java.lang.String,double)>',28,'a',NULL),(56,92,'<ccmileage.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(57,93,'<ccmileage.iconosys.eng.Settings$3: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(58,57,'<tdtracker.iconosys.eng.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(59,94,'<ccmileage.iconosys.eng.MyReceiptManager$6: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(60,95,'<tdtracker.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(61,96,'<ccmileage.iconosys.eng.MileageSend$1: void onClick(android.view.View)>',49,'a',NULL),(62,63,'<tdtracker.iconosys.eng.ReportSheet: void sendToFile()>',22,'a',NULL),(63,34,'<ccmileage.iconosys.eng.ReviewSelection: void getSelection(android.util.SparseBooleanArray)>',20,'a',NULL),(64,45,'<tdtracker.iconosys.eng.MileageSheet: void sendToFile()>',21,'a',NULL),(65,46,'<ccmileage.iconosys.eng.SpreadSheet: void sendToFile()>',15,'a',NULL),(66,97,'<tdtracker.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(67,48,'<ccmileage.iconosys.eng.MileageSheet: void sendToFile()>',21,'a',NULL),(68,98,'<tdtracker.iconosys.eng.Review$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(69,99,'<tdtracker.iconosys.eng.SaveSend$4: void onClick(android.view.View)>',89,'a',NULL),(70,100,'<ccmileage.iconosys.eng.Mileage$4: void onClick(android.view.View)>',6,'a',NULL),(71,101,'<ccmileage.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(72,102,'<tdtracker.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(73,60,'<ccmileage.iconosys.eng.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(74,57,'<tdtracker.iconosys.eng.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(75,103,'<ccmileage.iconosys.eng.SaveSend$4: void onClick(android.view.View)>',89,'a',NULL),(76,49,'<tdtracker.iconosys.eng.Mileage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(77,24,'<tdtracker.iconosys.eng.MyReceiptManager: void onActivityResult(int,int,android.content.Intent)>',11,'p',0),(78,104,'<tdtracker.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(79,105,'<tdtracker.iconosys.eng.MyReceiptManager$6: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(80,106,'<tdtracker.iconosys.eng.SelectRange$5: void onClick(android.view.View)>',18,'a',NULL),(81,107,'<ccmileage.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(82,25,'<ccmileage.iconosys.eng.MyReceiptManager: void onResume()>',10,'a',NULL),(83,108,'<tdtracker.iconosys.eng.Settings$3: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(84,109,'<ccmileage.iconosys.eng.Mileage$5: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(85,110,'<tdtracker.iconosys.eng.MyReceiptManager$2: void onClick(android.view.View)>',7,'a',NULL),(86,111,'<ccmileage.iconosys.eng.MyReceiptManager$5: void onClick(android.view.View)>',8,'a',NULL),(87,33,'<tdtracker.iconosys.eng.TakePicture: void startCameraActivity()>',9,'a',NULL),(88,93,'<ccmileage.iconosys.eng.Settings$3: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(89,112,'<tdtracker.iconosys.eng.Mileage$4: void onClick(android.view.View)>',6,'a',NULL),(90,31,'<tdtracker.iconosys.eng.ReviewSelection: void getSelection(android.util.SparseBooleanArray)>',20,'a',NULL),(91,113,'<ccmileage.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(92,93,'<ccmileage.iconosys.eng.Settings$3: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(93,114,'<tdtracker.iconosys.eng.Mileage$5: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(94,115,'<tdtracker.iconosys.eng.MyReceiptManager$1: void onClick(android.view.View)>',7,'a',NULL),(95,90,'<ccmileage.iconosys.eng.MyReceiptManager$9: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(96,97,'<tdtracker.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(97,38,'<ccmileage.iconosys.eng.Review: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(98,108,'<tdtracker.iconosys.eng.Settings$3: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(99,52,'<ccmileage.iconosys.eng.Mileage: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(100,89,'<ccmileage.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(101,31,'<tdtracker.iconosys.eng.ReviewSelection: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(102,116,'<tdtracker.iconosys.eng.MyReceiptManager$3: void onClick(android.view.View)>',7,'a',NULL),(103,117,'<ccmileage.iconosys.eng.SelectRange$5: void onClick(android.view.View)>',18,'a',NULL),(104,97,'<tdtracker.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(105,67,'<ccmileage.iconosys.eng.ReportSheet: void sendToFile()>',17,'a',NULL),(106,97,'<tdtracker.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(107,68,'<tdtracker.iconosys.eng.Settings: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(108,24,'<tdtracker.iconosys.eng.MyReceiptManager: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(109,24,'<tdtracker.iconosys.eng.MyReceiptManager: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(110,108,'<tdtracker.iconosys.eng.Settings$3: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(111,52,'<ccmileage.iconosys.eng.Mileage: void calcDistance()>',16,'a',NULL),(112,118,'<tdtracker.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(113,25,'<ccmileage.iconosys.eng.MyReceiptManager: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(114,24,'<tdtracker.iconosys.eng.MyReceiptManager: void onCreate(android.os.Bundle)>',6,'a',NULL),(115,105,'<tdtracker.iconosys.eng.MyReceiptManager$6: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(116,119,'<ccmileage.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(117,95,'<tdtracker.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(118,120,'<ccmileage.iconosys.eng.Review$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(119,105,'<tdtracker.iconosys.eng.MyReceiptManager$6: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(120,36,'<ccmileage.iconosys.eng.TakePicture: void startCameraActivity()>',9,'a',NULL),(121,95,'<tdtracker.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(122,52,'<ccmileage.iconosys.eng.Mileage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(123,60,'<ccmileage.iconosys.eng.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(124,35,'<tdtracker.iconosys.eng.Review: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(125,49,'<tdtracker.iconosys.eng.Mileage: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(126,92,'<ccmileage.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(127,95,'<tdtracker.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(128,71,'<ccmileage.iconosys.eng.Settings: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(129,105,'<tdtracker.iconosys.eng.MyReceiptManager$6: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(130,89,'<ccmileage.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(131,121,'<ccmileage.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(132,122,'<tdtracker.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(133,43,'<tdtracker.iconosys.eng.SpreadSheet: void sendToFile()>',21,'a',NULL),(134,92,'<ccmileage.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(135,93,'<ccmileage.iconosys.eng.Settings$3: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(136,89,'<ccmileage.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(137,123,'<ccmileage.iconosys.eng.MyReceiptManager$1: void onClick(android.view.View)>',6,'a',NULL),(138,25,'<ccmileage.iconosys.eng.MyReceiptManager: void onCreate(android.os.Bundle)>',11,'a',NULL),(139,124,'<tdtracker.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(140,90,'<ccmileage.iconosys.eng.MyReceiptManager$9: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(141,125,'<tdtracker.iconosys.eng.MyReceiptManager$4: void onClick(android.view.View)>',6,'a',NULL),(142,92,'<ccmileage.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(143,126,'<tdtracker.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(144,25,'<ccmileage.iconosys.eng.MyReceiptManager: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(145,24,'<tdtracker.iconosys.eng.MyReceiptManager: void onResume()>',10,'a',NULL),(146,34,'<ccmileage.iconosys.eng.ReviewSelection: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(147,49,'<tdtracker.iconosys.eng.Mileage: void calcDistance()>',34,'a',NULL),(148,127,'<ccmileage.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(149,108,'<tdtracker.iconosys.eng.Settings$3: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(150,128,'<ccmileage.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL);
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
INSERT INTO `IActions` VALUES (1,3,2),(2,4,2),(3,5,2),(4,9,2),(5,10,2),(6,11,2),(7,12,2),(8,13,2),(9,17,4),(10,18,4),(11,19,4),(12,20,4),(13,21,4),(14,22,4),(15,23,4),(16,24,4),(17,27,2),(18,28,5),(19,31,2),(20,36,2),(21,40,2),(22,41,2),(23,43,6),(24,44,7),(25,46,2),(26,47,2),(27,49,5),(28,51,4),(29,52,4),(30,54,4),(31,55,4),(32,57,4),(33,58,4),(34,60,4),(35,61,4),(36,64,8),(37,66,4),(38,67,4),(39,68,4),(40,69,4),(41,70,4),(42,71,4),(43,72,4),(44,73,4),(45,74,4),(46,75,4),(47,76,4),(48,77,4),(49,78,4),(50,79,4),(51,80,4),(52,81,4),(53,83,4),(54,84,4),(55,85,4),(56,86,4),(57,87,4),(58,88,4),(59,89,4),(60,90,4),(61,91,4),(62,92,4),(63,93,4),(64,94,4),(65,95,4),(66,96,4),(67,97,4),(68,98,4),(69,100,4),(70,102,4),(71,103,4),(72,104,4),(73,105,4),(74,106,4),(75,107,4),(76,108,4),(77,109,4),(78,110,4),(79,111,4),(80,112,4),(81,113,4),(82,114,4),(83,115,4),(84,117,4),(85,118,2),(86,119,2),(87,122,4),(88,123,4),(89,125,4),(90,126,4),(91,127,2),(92,128,4),(93,129,4),(94,131,4),(95,132,4),(96,134,2),(97,137,8),(98,140,6),(99,144,2),(100,146,8),(101,158,4),(102,160,4),(103,161,4),(104,163,4),(105,164,4),(106,166,4),(107,167,4),(108,169,4),(109,171,2),(110,175,2),(111,179,6),(112,190,2),(113,191,2),(114,192,4),(115,194,4),(116,195,4),(117,197,4),(118,198,4),(119,200,4),(120,201,4),(121,202,2),(122,203,4),(123,209,2),(124,216,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'eng/trickersticks/movies/GlowSticks'),(2,2,'twentyfirstbday/timer/iconosys/ContactsList'),(3,6,'cincodemayo/buzzer/iconosys/ContactsList'),(4,7,'cincodemayo/buzzer/iconosys/OtherApps'),(5,8,'seniorprom/timer/iconosys/ContactsList'),(6,14,'seniorprom/timer/iconosys/OtherApps'),(7,15,'santa/photo/iconosys/eng/ShareImage'),(8,16,'santa/photo/iconosys/eng/OtherApps'),(9,25,'santa/photo/iconosys/eng/AdView'),(10,26,'santa/photo/iconosys/eng/OtherApps'),(11,29,'santa/photo/iconosys/eng/PhotoView'),(12,30,'santa/photo/iconosys/eng/ShowPopUp'),(13,32,'santa/photo/iconosys/eng/OtherApps'),(14,33,'santa/photo/iconosys/eng/RegistrationScreen'),(15,34,'santa/photo/iconosys/eng/PhotoView'),(16,35,'santa/photo/iconosys/eng/MeInJail'),(17,37,'santa/photo/iconosys/eng/ShowTerms'),(18,38,'santa/photo/iconosys/eng/ShowPopUp'),(19,39,'santa/photo/iconosys/eng/LocationSender'),(20,42,'santa/photo/iconosys/eng/AdView'),(21,45,'santa/photo/iconosys/eng/LocationSender'),(22,48,'ccmileage/iconosys/eng/SelectRange'),(23,50,'ccmileage/iconosys/eng/ReviewSelection'),(24,53,'ccmileage/iconosys/eng/ReviewSelection'),(25,56,'ccmileage/iconosys/eng/MileageAdd'),(26,59,'ccmileage/iconosys/eng/SelectRange'),(27,62,'ccmileage/iconosys/eng/ReviewSelection'),(28,63,'tdtracker/iconosys/eng/LocationSender'),(29,65,'tdtracker/iconosys/eng/ReviewSelection'),(30,82,'ccmileage/iconosys/eng/SelectRange'),(31,99,'tdtracker/iconosys/eng/ReviewSelection'),(32,101,'tdtracker/iconosys/eng/SelectRange'),(33,116,'ccmileage/iconosys/eng/MileageSheet'),(34,120,'ccmileage/iconosys/eng/LocationSender'),(35,121,'tdtracker/iconosys/eng/LocationSender'),(36,124,'tdtracker/iconosys/eng/OtherApps'),(37,130,'tdtracker/iconosys/eng/ReviewSelection'),(38,133,'tdtracker/iconosys/eng/ReportSheet'),(39,135,'ccmileage/iconosys/eng/RegistrationScreen'),(40,136,'tdtracker/iconosys/eng/ReviewSelection'),(41,138,'tdtracker/iconosys/eng/Review'),(42,139,'ccmileage/iconosys/eng/SelectRange'),(43,142,'tdtracker/iconosys/eng/MileageSheet'),(44,141,'ccmileage/iconosys/eng/ReviewSelection'),(45,143,'tdtracker/iconosys/eng/SelectRange'),(46,145,'ccmileage/iconosys/eng/ReviewSelection'),(47,147,'tdtracker/iconosys/eng/TakePicture'),(48,148,'ccmileage/iconosys/eng/SelectRange'),(49,149,'tdtracker/iconosys/eng/SelectRange'),(50,150,'ccmileage/iconosys/eng/OtherApps'),(51,152,'ccmileage/iconosys/eng/MileageSheet'),(52,151,'tdtracker/iconosys/eng/ReviewSelection'),(53,154,'tdtracker/iconosys/eng/OtherApps'),(54,153,'ccmileage/iconosys/eng/ReviewSelection'),(55,155,'tdtracker/iconosys/eng/Mileage'),(56,156,'ccmileage/iconosys/eng/ReportSheet'),(57,157,'tdtracker/iconosys/eng/ReviewSelection'),(58,159,'tdtracker/iconosys/eng/ReviewSelection'),(59,162,'tdtracker/iconosys/eng/OtherApps'),(60,165,'tdtracker/iconosys/eng/OtherApps'),(61,168,'tdtracker/iconosys/eng/SelectRange'),(62,170,'ccmileage/iconosys/eng/MileageAdd'),(63,173,'tdtracker/iconosys/eng/AdView'),(64,172,'ccmileage/iconosys/eng/SelectRange'),(65,174,'tdtracker/iconosys/eng/ReviewSelection'),(66,176,'tdtracker/iconosys/eng/ReviewSelection'),(67,177,'ccmileage/iconosys/eng/SelectRange'),(68,178,'tdtracker/iconosys/eng/ReviewSelection'),(69,181,'ccmileage/iconosys/eng/OtherApps'),(70,180,'tdtracker/iconosys/eng/SelectRange'),(71,182,'ccmileage/iconosys/eng/LocationSender'),(72,183,'tdtracker/iconosys/eng/OtherApps'),(73,184,'tdtracker/iconosys/eng/MileageSheet'),(74,185,'ccmileage/iconosys/eng/ReviewSelection'),(75,186,'tdtracker/iconosys/eng/ReviewSelection'),(76,187,'ccmileage/iconosys/eng/OtherApps'),(77,188,'tdtracker/iconosys/eng/SelectRange'),(78,189,'ccmileage/iconosys/eng/ReviewSelection'),(79,193,'ccmileage/iconosys/eng/ReviewSelection'),(80,196,'ccmileage/iconosys/eng/SelectRange'),(81,199,'ccmileage/iconosys/eng/ReviewSelection'),(82,204,'ccmileage/iconosys/eng/AdView'),(83,205,'tdtracker/iconosys/eng/ShowTerms'),(84,206,'ccmileage/iconosys/eng/ReviewSelection'),(85,207,'tdtracker/iconosys/eng/Settings'),(86,208,'ccmileage/iconosys/eng/ReviewSelection'),(87,210,'ccmileage/iconosys/eng/OtherApps'),(88,211,'tdtracker/iconosys/eng/RegistrationScreen'),(89,212,'ccmileage/iconosys/eng/OtherApps'),(90,213,'tdtracker/iconosys/eng/MileageAdd'),(91,214,'ccmileage/iconosys/eng/ShowTerms'),(92,215,'tdtracker/iconosys/eng/ReviewSelection');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,3),(2,4,4),(3,5,6),(4,9,8),(5,10,9),(6,11,12),(7,12,13),(8,13,14),(9,27,15),(10,28,17),(11,31,18),(12,36,19),(13,40,20),(14,41,21),(15,46,22),(16,47,23),(17,49,24),(18,118,25),(19,119,26),(20,127,27),(21,134,28),(22,144,29),(23,171,31),(24,175,32),(25,190,33),(26,191,34),(27,202,35),(28,209,36),(29,216,37);
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
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,15,'saved_uri'),(2,17,'android.intent.extra.INTENT'),(3,18,'android.intent.extra.INTENT'),(4,19,'android.intent.extra.TITLE'),(5,19,'android.intent.extra.INTENT'),(6,20,'android.intent.extra.INTENT'),(7,21,'android.intent.extra.TITLE'),(8,21,'android.intent.extra.INTENT'),(9,22,'android.intent.extra.INTENT'),(10,23,'android.intent.extra.TITLE'),(11,23,'android.intent.extra.INTENT'),(12,24,'android.intent.extra.TITLE'),(13,24,'android.intent.extra.INTENT'),(14,29,'take_photo'),(15,34,'pick_photo'),(16,43,'output'),(17,48,'id'),(18,48,'report_type'),(19,50,'id'),(20,50,'report_type'),(21,51,'android.intent.extra.INTENT'),(22,52,'android.intent.extra.INTENT'),(23,53,'id'),(24,53,'report_type'),(25,54,'android.intent.extra.TITLE'),(26,54,'android.intent.extra.INTENT'),(27,55,'android.intent.extra.INTENT'),(28,56,'_mileage'),(29,57,'android.intent.extra.TITLE'),(30,57,'android.intent.extra.INTENT'),(31,58,'android.intent.extra.INTENT'),(32,59,'id'),(33,59,'report_type'),(34,60,'android.intent.extra.TITLE'),(35,60,'android.intent.extra.INTENT'),(36,61,'android.intent.extra.TITLE'),(37,61,'android.intent.extra.INTENT'),(38,62,'id'),(39,62,'report_type'),(40,65,'id'),(41,65,'report_type'),(42,66,'android.intent.extra.INTENT'),(43,67,'android.intent.extra.INTENT'),(44,68,'android.intent.extra.INTENT'),(45,69,'android.intent.extra.INTENT'),(46,70,'android.intent.extra.TITLE'),(47,70,'android.intent.extra.INTENT'),(48,71,'android.intent.extra.TITLE'),(49,71,'android.intent.extra.INTENT'),(50,72,'android.intent.extra.INTENT'),(51,73,'android.intent.extra.INTENT'),(52,74,'android.intent.extra.TITLE'),(53,74,'android.intent.extra.INTENT'),(54,75,'android.intent.extra.TITLE'),(55,75,'android.intent.extra.INTENT'),(56,76,'android.intent.extra.INTENT'),(57,77,'android.intent.extra.INTENT'),(58,78,'android.intent.extra.TITLE'),(59,78,'android.intent.extra.INTENT'),(60,79,'android.intent.extra.TITLE'),(61,79,'android.intent.extra.INTENT'),(62,80,'android.intent.extra.TITLE'),(63,80,'android.intent.extra.INTENT'),(64,81,'android.intent.extra.TITLE'),(65,81,'android.intent.extra.INTENT'),(66,82,'id'),(67,82,'Category'),(68,82,'report_type'),(69,83,'android.intent.extra.INTENT'),(70,84,'android.intent.extra.INTENT'),(71,85,'android.intent.extra.TITLE'),(72,86,'android.intent.extra.INTENT'),(73,85,'android.intent.extra.INTENT'),(74,87,'android.intent.extra.INTENT'),(75,88,'android.intent.extra.INTENT'),(76,89,'android.intent.extra.TITLE'),(77,90,'android.intent.extra.TITLE'),(78,89,'android.intent.extra.INTENT'),(79,90,'android.intent.extra.INTENT'),(80,91,'android.intent.extra.INTENT'),(81,92,'android.intent.extra.INTENT'),(82,93,'android.intent.extra.TITLE'),(83,94,'android.intent.extra.TITLE'),(84,93,'android.intent.extra.INTENT'),(85,94,'android.intent.extra.INTENT'),(86,95,'android.intent.extra.INTENT'),(87,96,'android.intent.extra.TITLE'),(88,96,'android.intent.extra.INTENT'),(89,97,'android.intent.extra.TITLE'),(90,97,'android.intent.extra.INTENT'),(91,99,'id'),(92,98,'android.intent.extra.TITLE'),(93,99,'report_type'),(94,98,'android.intent.extra.INTENT'),(95,100,'android.intent.extra.INTENT'),(96,101,'id'),(97,101,'report_type'),(98,102,'android.intent.extra.INTENT'),(99,103,'android.intent.extra.TITLE'),(100,103,'android.intent.extra.INTENT'),(101,104,'android.intent.extra.INTENT'),(102,105,'android.intent.extra.INTENT'),(103,106,'android.intent.extra.INTENT'),(104,107,'android.intent.extra.TITLE'),(105,107,'android.intent.extra.INTENT'),(106,108,'android.intent.extra.TITLE'),(107,108,'android.intent.extra.INTENT'),(108,109,'android.intent.extra.INTENT'),(109,110,'android.intent.extra.INTENT'),(110,111,'android.intent.extra.TITLE'),(111,111,'android.intent.extra.INTENT'),(112,112,'android.intent.extra.TITLE'),(113,112,'android.intent.extra.INTENT'),(114,113,'android.intent.extra.TITLE'),(115,113,'android.intent.extra.INTENT'),(116,114,'android.intent.extra.INTENT'),(117,115,'android.intent.extra.TITLE'),(118,115,'android.intent.extra.INTENT'),(119,117,'android.intent.extra.TITLE'),(120,117,'android.intent.extra.INTENT'),(121,122,'android.intent.extra.INTENT'),(122,123,'android.intent.extra.INTENT'),(123,125,'android.intent.extra.TITLE'),(124,125,'android.intent.extra.INTENT'),(125,126,'android.intent.extra.INTENT'),(126,128,'android.intent.extra.TITLE'),(127,128,'android.intent.extra.INTENT'),(128,129,'android.intent.extra.INTENT'),(129,130,'id'),(130,130,'report_type'),(131,131,'android.intent.extra.TITLE'),(132,131,'android.intent.extra.INTENT'),(133,132,'android.intent.extra.TITLE'),(134,132,'android.intent.extra.INTENT'),(135,133,'id'),(136,133,'Category'),(137,133,'range1'),(138,133,'range2'),(139,136,'id'),(140,136,'report_type'),(141,139,'id'),(142,139,'report_type'),(143,140,'output'),(144,141,'id'),(145,141,'report_type'),(146,143,'id'),(147,143,'Category'),(148,143,'report_type'),(149,145,'id'),(150,145,'report_type'),(151,148,'id'),(152,148,'report_type'),(153,149,'id'),(154,149,'report_type'),(155,151,'id'),(156,151,'report_type'),(157,153,'id'),(158,153,'report_type'),(159,156,'id'),(160,156,'Category'),(161,156,'range1'),(162,156,'range2'),(163,157,'id'),(164,157,'report_type'),(165,158,'android.intent.extra.INTENT'),(166,159,'id'),(167,159,'report_type'),(168,160,'android.intent.extra.INTENT'),(169,161,'android.intent.extra.TITLE'),(170,161,'android.intent.extra.INTENT'),(171,163,'android.intent.extra.INTENT'),(172,164,'android.intent.extra.TITLE'),(173,164,'android.intent.extra.INTENT'),(174,166,'android.intent.extra.INTENT'),(175,167,'android.intent.extra.TITLE'),(176,167,'android.intent.extra.INTENT'),(177,168,'id'),(178,168,'report_type'),(179,169,'android.intent.extra.TITLE'),(180,169,'android.intent.extra.INTENT'),(181,170,'_mileage'),(182,172,'id'),(183,172,'report_type'),(184,174,'id'),(185,174,'report_type'),(186,176,'id'),(187,176,'report_type'),(188,177,'id'),(189,177,'report_type'),(190,178,'id'),(191,178,'report_type'),(192,179,'output'),(193,180,'id'),(194,180,'report_type'),(195,185,'id'),(196,185,'report_type'),(197,186,'id'),(198,186,'report_type'),(199,188,'id'),(200,188,'report_type'),(201,189,'id'),(202,189,'report_type'),(203,193,'id'),(204,192,'android.intent.extra.INTENT'),(205,193,'report_type'),(206,194,'android.intent.extra.INTENT'),(207,195,'android.intent.extra.TITLE'),(208,196,'id'),(209,195,'android.intent.extra.INTENT'),(210,196,'report_type'),(211,197,'android.intent.extra.INTENT'),(212,199,'id'),(213,198,'android.intent.extra.TITLE'),(214,199,'report_type'),(215,198,'android.intent.extra.INTENT'),(216,200,'android.intent.extra.INTENT'),(217,201,'android.intent.extra.TITLE'),(218,201,'android.intent.extra.INTENT'),(219,203,'android.intent.extra.TITLE'),(220,203,'android.intent.extra.INTENT'),(221,206,'id'),(222,206,'report_type'),(223,208,'id'),(224,208,'report_type'),(225,213,'_mileage'),(226,215,'id'),(227,215,'report_type');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,2),(8,8,1),(9,9,1),(10,10,3),(11,11,1),(12,12,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,6,1),(5,7,2),(6,9,1),(7,10,2),(8,11,1),(9,12,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,10,'sms',NULL,NULL,NULL,NULL,NULL),(2,10,'mms',NULL,NULL,NULL,NULL,NULL),(3,10,'mmsto',NULL,NULL,NULL,NULL,NULL),(4,10,NULL,NULL,NULL,NULL,'image','*'),(5,10,NULL,NULL,NULL,NULL,'video','*'),(6,10,NULL,NULL,NULL,NULL,'audio','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,44,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'eng.trickersticks.movies'),(2,2,'twentyfirstbday.timer.iconosys'),(3,6,'cincodemayo.buzzer.iconosys'),(4,7,'cincodemayo.buzzer.iconosys'),(5,8,'seniorprom.timer.iconosys'),(6,14,'seniorprom.timer.iconosys'),(7,15,'santa.photo.iconosys.eng'),(8,16,'santa.photo.iconosys.eng'),(9,25,'santa.photo.iconosys.eng'),(10,26,'santa.photo.iconosys.eng'),(11,29,'santa.photo.iconosys.eng'),(12,30,'santa.photo.iconosys.eng'),(13,32,'santa.photo.iconosys.eng'),(14,33,'santa.photo.iconosys.eng'),(15,34,'santa.photo.iconosys.eng'),(16,35,'santa.photo.iconosys.eng'),(17,37,'santa.photo.iconosys.eng'),(18,38,'santa.photo.iconosys.eng'),(19,39,'santa.photo.iconosys.eng'),(20,42,'santa.photo.iconosys.eng'),(21,45,'santa.photo.iconosys.eng'),(22,48,'ccmileage.iconosys.eng'),(23,50,'ccmileage.iconosys.eng'),(24,53,'ccmileage.iconosys.eng'),(25,56,'ccmileage.iconosys.eng'),(26,59,'ccmileage.iconosys.eng'),(27,62,'ccmileage.iconosys.eng'),(28,63,'tdtracker.iconosys.eng'),(29,65,'tdtracker.iconosys.eng'),(30,82,'ccmileage.iconosys.eng'),(31,99,'tdtracker.iconosys.eng'),(32,101,'tdtracker.iconosys.eng'),(33,116,'ccmileage.iconosys.eng'),(34,120,'ccmileage.iconosys.eng'),(35,121,'tdtracker.iconosys.eng'),(36,124,'tdtracker.iconosys.eng'),(37,130,'tdtracker.iconosys.eng'),(38,133,'tdtracker.iconosys.eng'),(39,135,'ccmileage.iconosys.eng'),(40,136,'tdtracker.iconosys.eng'),(41,138,'tdtracker.iconosys.eng'),(42,139,'ccmileage.iconosys.eng'),(43,142,'tdtracker.iconosys.eng'),(44,141,'ccmileage.iconosys.eng'),(45,143,'tdtracker.iconosys.eng'),(46,145,'ccmileage.iconosys.eng'),(47,147,'tdtracker.iconosys.eng'),(48,148,'ccmileage.iconosys.eng'),(49,149,'tdtracker.iconosys.eng'),(50,150,'ccmileage.iconosys.eng'),(51,152,'ccmileage.iconosys.eng'),(52,151,'tdtracker.iconosys.eng'),(53,154,'tdtracker.iconosys.eng'),(54,153,'ccmileage.iconosys.eng'),(55,155,'tdtracker.iconosys.eng'),(56,156,'ccmileage.iconosys.eng'),(57,157,'tdtracker.iconosys.eng'),(58,159,'tdtracker.iconosys.eng'),(59,162,'tdtracker.iconosys.eng'),(60,165,'tdtracker.iconosys.eng'),(61,168,'tdtracker.iconosys.eng'),(62,170,'ccmileage.iconosys.eng'),(63,173,'tdtracker.iconosys.eng'),(64,172,'ccmileage.iconosys.eng'),(65,174,'tdtracker.iconosys.eng'),(66,176,'tdtracker.iconosys.eng'),(67,177,'ccmileage.iconosys.eng'),(68,178,'tdtracker.iconosys.eng'),(69,181,'ccmileage.iconosys.eng'),(70,180,'tdtracker.iconosys.eng'),(71,182,'ccmileage.iconosys.eng'),(72,183,'tdtracker.iconosys.eng'),(73,184,'tdtracker.iconosys.eng'),(74,185,'ccmileage.iconosys.eng'),(75,186,'tdtracker.iconosys.eng'),(76,187,'ccmileage.iconosys.eng'),(77,188,'tdtracker.iconosys.eng'),(78,189,'ccmileage.iconosys.eng'),(79,193,'ccmileage.iconosys.eng'),(80,196,'ccmileage.iconosys.eng'),(81,199,'ccmileage.iconosys.eng'),(82,204,'ccmileage.iconosys.eng'),(83,205,'tdtracker.iconosys.eng'),(84,206,'ccmileage.iconosys.eng'),(85,207,'tdtracker.iconosys.eng'),(86,208,'ccmileage.iconosys.eng'),(87,210,'ccmileage.iconosys.eng'),(88,211,'tdtracker.iconosys.eng'),(89,212,'ccmileage.iconosys.eng'),(90,213,'tdtracker.iconosys.eng'),(91,214,'ccmileage.iconosys.eng'),(92,215,'tdtracker.iconosys.eng');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,5,0),(4,6,0),(5,7,0),(6,10,0),(7,9,0),(8,11,0),(9,15,0),(10,16,0),(11,24,0),(12,25,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,5,1,0),(4,6,1,0),(5,8,1,0),(6,9,0,0),(7,11,0,0),(8,12,0,0),(9,13,1,0),(10,14,1,0),(11,17,1,0),(12,18,1,0),(13,19,1,0),(14,20,0,0),(15,21,0,0),(16,22,0,0),(17,23,1,0),(18,23,1,0),(19,23,1,0),(20,23,1,0),(21,23,1,0),(22,23,1,0),(23,23,1,0),(24,23,1,0),(25,24,0,0),(26,25,0,0),(27,26,1,0),(28,28,1,0),(29,29,0,0),(30,30,0,0),(31,31,1,0),(32,32,0,0),(33,33,0,0),(34,34,0,0),(35,35,0,0),(36,36,1,0),(37,37,0,0),(38,38,0,0),(39,39,0,0),(40,40,1,0),(41,41,1,0),(42,42,0,0),(43,45,1,0),(44,46,1,0),(45,47,0,0),(46,48,1,0),(47,49,1,0),(48,50,0,0),(49,51,1,0),(50,52,0,0),(51,53,1,0),(52,53,1,0),(53,54,0,0),(54,53,1,0),(55,53,1,0),(56,55,0,0),(57,53,1,0),(58,53,1,0),(59,56,0,0),(60,53,1,0),(61,53,1,0),(62,57,0,0),(63,58,0,0),(64,59,1,0),(65,60,0,0),(66,61,1,0),(67,62,1,0),(68,61,1,0),(69,62,1,0),(70,61,1,0),(71,62,1,0),(72,61,1,0),(73,62,1,0),(74,61,1,0),(75,62,1,0),(76,61,1,0),(77,62,1,0),(78,61,1,0),(79,62,1,0),(80,61,1,0),(81,62,1,0),(82,63,0,0),(83,64,1,0),(84,64,1,0),(85,64,1,0),(86,65,1,0),(87,65,1,0),(88,64,1,0),(89,65,1,0),(90,64,1,0),(91,65,1,0),(92,64,1,0),(93,65,1,0),(94,64,1,0),(95,65,1,0),(96,64,1,0),(97,65,1,0),(98,65,1,0),(99,66,0,0),(100,67,1,0),(101,68,0,0),(102,67,1,0),(103,67,1,0),(104,69,1,0),(105,67,1,0),(106,69,1,0),(107,67,1,0),(108,69,1,0),(109,67,1,0),(110,69,1,0),(111,67,1,0),(112,69,1,0),(113,67,1,0),(114,69,1,0),(115,69,1,0),(116,70,0,0),(117,69,1,0),(118,71,1,0),(119,72,1,0),(120,73,0,0),(121,74,0,0),(122,75,1,0),(123,75,1,0),(124,76,0,0),(125,75,1,0),(126,75,1,0),(127,78,1,0),(128,75,1,0),(129,75,1,0),(130,79,0,0),(131,75,1,0),(132,75,1,0),(133,80,0,0),(134,81,1,0),(135,82,0,0),(136,83,0,0),(137,84,1,0),(138,85,0,0),(139,86,0,0),(140,87,1,0),(141,88,0,0),(142,89,0,0),(143,90,0,0),(144,91,1,0),(145,92,0,0),(146,93,1,0),(147,94,0,0),(148,95,0,0),(149,96,0,0),(150,97,0,0),(151,98,0,0),(152,99,0,0),(153,100,0,0),(154,101,0,0),(155,102,0,0),(156,103,0,0),(157,104,0,0),(158,105,1,0),(159,106,0,0),(160,105,1,0),(161,105,1,0),(162,107,0,0),(163,105,1,0),(164,105,1,0),(165,108,0,0),(166,105,1,0),(167,105,1,0),(168,110,0,0),(169,105,1,0),(170,111,0,0),(171,112,1,0),(172,113,0,0),(173,114,0,0),(174,115,0,0),(175,116,1,0),(176,117,0,0),(177,118,0,0),(178,119,0,0),(179,120,1,0),(180,121,0,0),(181,122,0,0),(182,123,0,0),(183,124,0,0),(184,125,0,0),(185,126,0,0),(186,127,0,0),(187,128,0,0),(188,129,0,0),(189,130,0,0),(190,131,1,0),(191,132,1,0),(192,133,1,0),(193,134,0,0),(194,133,1,0),(195,133,1,0),(196,135,0,0),(197,133,1,0),(198,133,1,0),(199,136,0,0),(200,133,1,0),(201,133,1,0),(202,137,1,0),(203,133,1,0),(204,138,0,0),(205,139,0,0),(206,140,0,0),(207,141,0,0),(208,142,0,0),(209,143,1,0),(210,144,0,0),(211,145,0,0),(212,146,0,0),(213,147,0,0),(214,148,0,0),(215,149,0,0),(216,150,1,0);
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
INSERT INTO `PermissionStrings` VALUES (7,'android.permission.ACCESS_COARSE_LOCATION'),(11,'android.permission.ACCESS_FINE_LOCATION'),(10,'android.permission.CAMERA'),(8,'android.permission.GET_ACCOUNTS'),(3,'android.permission.INTERNET'),(4,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(9,'android.permission.READ_SMS'),(2,'android.permission.SEND_SMS'),(12,'android.permission.WAKE_LOCK'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(6,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(2,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(5,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(6,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(7,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(10,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(11,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(12,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(13,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(14,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(15,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(16,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(17,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(18,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(19,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(20,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(21,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(22,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(23,NULL,NULL,'http://www.iconosys.com/product.php',NULL,NULL,NULL),(24,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(25,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(26,NULL,NULL,'http://www.iconosys.com/product.php',NULL,NULL,NULL),(27,NULL,NULL,'http://www.iconosys.com/product.php',NULL,NULL,NULL),(28,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(29,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(30,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(31,NULL,NULL,'http://www.iconosys.com/product.php',NULL,NULL,NULL),(32,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(33,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(34,NULL,NULL,'http://www.iconosys.com/product.php',NULL,NULL,NULL),(35,NULL,NULL,'http://advertise.iconosys.com',NULL,NULL,NULL),(36,NULL,NULL,'http://www.iconosys.com/product.php',NULL,NULL,NULL),(37,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,3,1),(2,4,2),(3,7,5),(4,10,7),(5,15,10),(6,16,11),(7,27,16),(8,109,30);
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,3,1),(6,2,2),(7,3,2),(8,2,3),(9,3,3),(10,2,4),(11,3,4),(12,4,1),(13,4,2),(14,4,3),(15,4,4),(16,5,1),(17,5,2),(18,5,3),(19,5,4),(20,5,5),(21,5,6),(22,5,7),(23,5,8),(24,5,9),(25,5,10),(26,5,11),(27,5,12),(28,6,1),(29,6,2),(30,6,3),(31,7,1),(32,6,4),(33,7,2),(34,6,5),(35,7,3),(36,6,6),(37,7,4),(38,6,7),(39,7,5),(40,6,8),(41,7,6),(42,6,9),(43,7,7),(44,6,10),(45,7,8),(46,6,11),(47,7,9),(48,6,12),(49,7,10),(50,7,11),(51,7,12);
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

-- Dump completed on 2015-10-09  0:39:50
