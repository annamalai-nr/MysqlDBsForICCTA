-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_480
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (12,'android.intent.action.BATTERY_CHANGED'),(9,'android.intent.action.CHOOSER'),(8,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(3,'android.intent.action.PHONE_STATE'),(7,'android.intent.action.PICK'),(2,'android.intent.action.SENDTO'),(4,'android.intent.action.USER_PRESENT'),(6,'android.intent.action.VIEW'),(10,'android.media.action.IMAGE_CAPTURE'),(5,'android.provider.Telephony.SMS_RECEIVED'),(11,'android.settings.LOCATION_SOURCE_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'eng.trickersticks.rolldice',1),(2,'puppiesbday.timer.iconosys',1),(3,'eng.trickersticks.artistic.glow',2),(4,'photowithpirates.photo.iconosys.eng',1),(5,'sexyman.iconosys.eng',1),(6,'drivereply.iconosys.eng',2),(7,'walkingtracker.iconosys.eng',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'eng.trickersticks.rolldice.TrickerSticks'),(2,1,'eng.trickersticks.rolldice.GlowSticks'),(3,1,'eng.trickersticks.rolldice.Registration'),(4,2,'puppiesbday.timer.iconosys.ChristmasTimer'),(5,2,'puppiesbday.timer.iconosys.ContactsList'),(6,2,'puppiesbday.timer.iconosys.MessageService'),(7,3,'eng.trickersticks.artistic.glow.TrickerSticks'),(8,3,'eng.trickersticks.artistic.glow.GlowSticks'),(9,3,'eng.trickersticks.artistic.glow.ShowTerms'),(10,3,'eng.trickersticks.artistic.glow.RegistrationScreen'),(11,3,'eng.trickersticks.artistic.glow.AdView'),(12,3,'eng.trickersticks.artistic.glow.OtherApps'),(13,3,'eng.trickersticks.artistic.glow.LocationSender'),(14,4,'photowithpirates.photo.iconosys.eng.MeInJail'),(15,4,'photowithpirates.photo.iconosys.eng.PhotoView'),(16,4,'photowithpirates.photo.iconosys.eng.OtherApps'),(17,4,'photowithpirates.photo.iconosys.eng.ShowTerms'),(18,4,'photowithpirates.photo.iconosys.eng.RegistrationScreen'),(19,4,'photowithpirates.photo.iconosys.eng.ShareImage'),(20,4,'photowithpirates.photo.iconosys.eng.ShowPopUp'),(21,4,'photowithpirates.photo.iconosys.eng.AdView'),(22,4,'photowithpirates.photo.iconosys.eng.LocationSender'),(23,5,'sexyman.iconosys.eng.PollApp'),(24,5,'sexyman.iconosys.eng.PollNew'),(25,5,'sexyman.iconosys.eng.ShowTerms'),(26,5,'sexyman.iconosys.eng.PollResult'),(27,5,'sexyman.iconosys.eng.AdView'),(28,5,'sexyman.iconosys.eng.OtherApps'),(29,5,'sexyman.iconosys.eng.IconosysActivity'),(30,5,'sexyman.iconosys.eng.RegistrationScreen'),(31,5,'sexyman.iconosys.eng.LocationSender'),(32,6,'drivereply.iconosys.eng.DriveReply'),(33,6,'drivereply.iconosys.eng.LandingPage'),(34,6,'drivereply.iconosys.eng.SettingsNw'),(35,6,'drivereply.iconosys.eng.MsgAdd'),(36,6,'drivereply.iconosys.eng.NoReply'),(37,6,'drivereply.iconosys.eng.OptionReg'),(38,6,'drivereply.iconosys.eng.Registration'),(39,6,'drivereply.iconosys.eng.Terms'),(40,6,'drivereply.iconosys.eng.Accounts'),(41,6,'drivereply.iconosys.eng.Licence'),(42,7,'walkingtracker.iconosys.eng.MyReceiptManager'),(43,6,'drivereply.iconosys.eng.Pers'),(44,6,'drivereply.iconosys.eng.LogDialog'),(45,7,'walkingtracker.iconosys.eng.ShowPopUp'),(46,6,'drivereply.iconosys.eng.AllowReply'),(47,7,'walkingtracker.iconosys.eng.MileageAdd'),(48,6,'drivereply.iconosys.eng.BatAlert'),(49,7,'walkingtracker.iconosys.eng.OtherApps'),(50,6,'drivereply.iconosys.eng.OtherApps'),(51,7,'walkingtracker.iconosys.eng.ReviewSelection'),(52,6,'drivereply.iconosys.eng.DisplayMap'),(53,7,'walkingtracker.iconosys.eng.TakePicture'),(54,6,'drivereply.iconosys.eng.AccidentReporter'),(55,7,'walkingtracker.iconosys.eng.Review'),(56,6,'drivereply.iconosys.eng.InsuranceCardCapture'),(57,7,'walkingtracker.iconosys.eng.DisplayCategory'),(58,6,'drivereply.iconosys.eng.AdView'),(59,7,'walkingtracker.iconosys.eng.ShowCat'),(60,6,'drivereply.iconosys.eng.Preview'),(61,7,'walkingtracker.iconosys.eng.Preview'),(62,6,'drivereply.iconosys.eng.SMSReplySvc'),(63,7,'walkingtracker.iconosys.eng.SpreadSheet'),(64,6,'drivereply.iconosys.eng.LocationSender'),(65,7,'walkingtracker.iconosys.eng.MileageSheet'),(66,6,'drivereply.iconosys.eng.BatterySvc'),(67,7,'walkingtracker.iconosys.eng.SaveSend'),(68,6,'drivereply.iconosys.eng.Timer150'),(69,7,'walkingtracker.iconosys.eng.Mileage'),(70,6,'drivereply.iconosys.eng.MsgQue'),(71,7,'walkingtracker.iconosys.eng.ShowPopUpReport'),(72,6,'drivereply.iconosys.eng.CallStateSvc'),(73,7,'walkingtracker.iconosys.eng.AdView'),(74,6,'drivereply.iconosys.eng.CallQue'),(75,7,'walkingtracker.iconosys.eng.RegistrationScreen'),(76,6,'drivereply.iconosys.eng.RegControl'),(77,7,'walkingtracker.iconosys.eng.MileageSend'),(78,6,'drivereply.iconosys.eng.CallAndSMSListener'),(79,7,'walkingtracker.iconosys.eng.SelectRange'),(80,7,'walkingtracker.iconosys.eng.ReportSheet'),(81,6,'drivereply.iconosys.eng.SmsReceiver'),(82,7,'walkingtracker.iconosys.eng.ShowTerms'),(83,7,'walkingtracker.iconosys.eng.Settings'),(84,3,'eng.trickersticks.artistic.glow.RegistrationScreen$1'),(85,7,'walkingtracker.iconosys.eng.LocationSender'),(86,3,'eng.trickersticks.artistic.glow.OtherApps$5'),(87,3,'eng.trickersticks.artistic.glow.OtherApps$6'),(88,3,'eng.trickersticks.artistic.glow.OtherApps$1'),(89,3,'eng.trickersticks.artistic.glow.OtherApps$2'),(90,3,'eng.trickersticks.artistic.glow.OtherApps$4'),(91,3,'eng.trickersticks.artistic.glow.OtherApps$3'),(92,4,'photowithpirates.photo.iconosys.eng.RegistrationScreen$1'),(93,4,'photowithpirates.photo.iconosys.eng.OtherApps$1'),(94,5,'sexyman.iconosys.eng.OtherApps$2'),(95,4,'photowithpirates.photo.iconosys.eng.OtherApps$2'),(96,5,'sexyman.iconosys.eng.OtherApps$5'),(97,5,'sexyman.iconosys.eng.PollApp$1'),(98,4,'photowithpirates.photo.iconosys.eng.PhotoView$1'),(99,5,'sexyman.iconosys.eng.OtherApps$4'),(100,5,'sexyman.iconosys.eng.OtherApps$1'),(101,4,'photowithpirates.photo.iconosys.eng.MeInJail$2'),(102,4,'photowithpirates.photo.iconosys.eng.OtherApps$3'),(103,5,'sexyman.iconosys.eng.OtherApps$6'),(104,5,'sexyman.iconosys.eng.RegistrationScreen$1'),(105,5,'sexyman.iconosys.eng.OtherApps$3'),(106,4,'photowithpirates.photo.iconosys.eng.OtherApps$6'),(107,4,'photowithpirates.photo.iconosys.eng.MeInJail$1'),(108,4,'photowithpirates.photo.iconosys.eng.OtherApps$4'),(109,4,'photowithpirates.photo.iconosys.eng.OtherApps$5'),(110,7,'walkingtracker.iconosys.eng.Settings$3'),(111,7,'walkingtracker.iconosys.eng.Review$1'),(112,7,'walkingtracker.iconosys.eng.SelectRange$5'),(113,7,'walkingtracker.iconosys.eng.OtherApps$5'),(114,7,'walkingtracker.iconosys.eng.Mileage$8'),(115,7,'walkingtracker.iconosys.eng.MileageSend$1'),(116,7,'walkingtracker.iconosys.eng.MyReceiptManager$9'),(117,7,'walkingtracker.iconosys.eng.Review$3'),(118,7,'walkingtracker.iconosys.eng.RegistrationScreen$1'),(119,7,'walkingtracker.iconosys.eng.SaveSend$4'),(120,7,'walkingtracker.iconosys.eng.Mileage$5'),(121,7,'walkingtracker.iconosys.eng.Mileage$4'),(122,7,'walkingtracker.iconosys.eng.MyReceiptManager$6'),(123,7,'walkingtracker.iconosys.eng.OtherApps$3'),(124,7,'walkingtracker.iconosys.eng.MyReceiptManager$1'),(125,7,'walkingtracker.iconosys.eng.OtherApps$1'),(126,7,'walkingtracker.iconosys.eng.OtherApps$4'),(127,7,'walkingtracker.iconosys.eng.MyReceiptManager$5'),(128,7,'walkingtracker.iconosys.eng.OtherApps$2'),(129,7,'walkingtracker.iconosys.eng.OtherApps$6'),(130,6,'drivereply.iconosys.eng.OtherApps$5'),(131,6,'drivereply.iconosys.eng.LandingPage$7'),(132,6,'drivereply.iconosys.eng.SettingsNw$4'),(133,6,'drivereply.iconosys.eng.SettingsNw$5'),(134,6,'drivereply.iconosys.eng.BatterySvc$3'),(135,6,'drivereply.iconosys.eng.OtherApps$1'),(136,6,'drivereply.iconosys.eng.OtherApps$4'),(137,6,'drivereply.iconosys.eng.LandingPage$11'),(138,6,'drivereply.iconosys.eng.OtherApps$6'),(139,6,'drivereply.iconosys.eng.AccidentReporter$2'),(140,6,'drivereply.iconosys.eng.OtherApps$3'),(141,6,'drivereply.iconosys.eng.SettingsNw$6'),(142,6,'drivereply.iconosys.eng.OtherApps$2');
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
INSERT INTO `ComponentExtras` VALUES (1,11,'_who'),(2,24,'_answer'),(3,26,'_question'),(4,15,'take_photo'),(5,19,'saved_uri'),(6,21,'_who'),(7,24,'_result'),(8,27,'_who'),(9,24,'_question'),(10,24,'_index'),(11,26,'_answer'),(12,15,'pick_photo'),(13,77,'_id'),(14,67,'_id'),(15,51,'report_type'),(16,63,'_cat'),(17,80,'id'),(18,47,'_mileage'),(19,79,'Category'),(20,73,'_who'),(21,51,'id'),(22,79,'id'),(23,79,'report_type'),(24,80,'Category'),(25,80,'range2'),(26,80,'range1'),(27,60,'iconfromraw'),(28,81,'pdus'),(29,60,'datetime'),(30,60,'theid'),(31,60,'titlename'),(32,58,'_who');
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'s',0,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'s',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'s',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'s',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'s',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'s',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'s',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'s',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'s',0,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'r',1,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'a',0,NULL,NULL),(81,81,'r',1,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,85,'s',0,NULL,NULL),(85,134,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,4),(3,3,5),(4,4,5),(5,5,10),(6,6,8),(7,7,10),(8,8,10),(9,9,7),(10,10,8),(11,11,12),(12,12,12),(13,13,8),(14,14,12),(15,15,7),(16,16,12),(17,17,8),(18,18,8),(19,19,12),(20,20,12),(21,21,18),(22,22,30),(23,23,16),(24,24,28),(25,25,16),(26,26,28),(27,27,15),(28,28,23),(29,28,29),(30,29,15),(31,30,18),(32,31,29),(33,31,23),(34,32,19),(35,33,15),(36,34,28),(37,35,15),(38,36,28),(39,37,14),(40,38,24),(41,39,19),(42,40,23),(43,40,29),(44,41,29),(45,42,14),(46,43,29),(47,43,23),(48,44,14),(49,45,24),(50,46,18),(51,47,24),(52,48,15),(53,49,29),(54,49,23),(55,50,16),(56,51,30),(57,52,14),(58,53,28),(59,54,15),(60,55,29),(61,55,23),(62,56,14),(63,57,19),(64,58,30),(65,59,28),(66,60,29),(67,61,29),(68,61,23),(69,62,15),(70,63,15),(71,64,14),(72,65,16),(73,66,14),(74,67,16),(75,68,16),(76,69,14),(77,70,75),(78,71,53),(79,72,83),(80,73,55),(81,74,79),(82,75,49),(83,76,69),(84,77,83),(85,78,69),(86,79,75),(87,80,42),(88,81,69),(89,82,42),(90,83,77),(91,84,42),(92,85,55),(93,86,42),(94,87,63),(95,88,42),(96,89,75),(97,90,67),(98,91,83),(99,92,55),(100,93,69),(101,94,69),(102,95,69),(103,96,51),(104,97,42),(105,98,55),(106,99,80),(107,100,49),(108,101,55),(109,102,42),(110,103,42),(111,104,65),(112,105,49),(113,106,51),(114,107,49),(115,108,83),(116,109,42),(117,110,69),(118,111,55),(119,112,83),(120,113,42),(121,114,42),(122,115,69),(123,116,69),(124,117,49),(125,118,49),(126,119,38),(127,119,33),(128,120,56),(129,121,33),(130,121,50),(131,122,33),(132,123,78),(133,124,78),(134,125,34),(135,126,78),(136,127,34),(137,128,70),(138,129,34),(139,130,33),(140,131,33),(141,131,34),(142,132,34),(143,132,33),(144,133,33),(145,134,33),(146,135,33),(147,135,34),(148,136,74),(149,137,56),(150,137,33),(151,138,33),(152,138,50),(153,139,33),(154,139,50),(155,140,33),(156,141,33),(157,142,33),(158,143,33),(159,143,34),(160,144,35),(161,145,32),(162,146,34),(163,147,50),(164,147,33),(165,148,33),(166,148,34),(167,149,33),(168,150,33),(169,151,70),(170,152,34),(171,153,33),(172,154,54),(173,155,70),(174,156,33),(175,157,33),(176,158,56),(177,158,33),(178,159,33),(179,160,33),(180,161,78),(181,162,33),(182,162,34),(183,163,54),(184,164,33),(185,164,50),(186,165,34),(187,166,33),(188,167,33),(189,167,34),(190,168,33),(191,169,50),(192,169,33),(193,170,54),(194,170,33);
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
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<eng.trickersticks.rolldice.TrickerSticks: void onCreate(android.os.Bundle)>',6,'a',NULL),(2,4,'<puppiesbday.timer.iconosys.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(3,5,'<puppiesbday.timer.iconosys.ContactsList: void next()>',3,'p',NULL),(4,5,'<puppiesbday.timer.iconosys.ContactsList: void onStart()>',4,'p',NULL),(5,10,'<eng.trickersticks.artistic.glow.RegistrationScreen: void SendPhoneData()>',97,'s',NULL),(6,8,'<eng.trickersticks.artistic.glow.GlowSticks: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(7,84,'<eng.trickersticks.artistic.glow.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(8,10,'<eng.trickersticks.artistic.glow.RegistrationScreen: void SendAutoData()>',93,'s',NULL),(9,7,'<eng.trickersticks.artistic.glow.TrickerSticks: void onResume()>',18,'a',NULL),(10,8,'<eng.trickersticks.artistic.glow.GlowSticks: void onCreate(android.os.Bundle)>',14,'a',NULL),(11,86,'<eng.trickersticks.artistic.glow.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(12,87,'<eng.trickersticks.artistic.glow.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(13,8,'<eng.trickersticks.artistic.glow.GlowSticks: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(14,88,'<eng.trickersticks.artistic.glow.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(15,7,'<eng.trickersticks.artistic.glow.TrickerSticks: void onResume()>',14,'a',NULL),(16,89,'<eng.trickersticks.artistic.glow.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(17,8,'<eng.trickersticks.artistic.glow.GlowSticks: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(18,8,'<eng.trickersticks.artistic.glow.GlowSticks: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(19,90,'<eng.trickersticks.artistic.glow.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(20,91,'<eng.trickersticks.artistic.glow.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(21,92,'<photowithpirates.photo.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(22,30,'<sexyman.iconosys.eng.RegistrationScreen: void SendAutoData()>',106,'s',NULL),(23,93,'<photowithpirates.photo.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(24,94,'<sexyman.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(25,95,'<photowithpirates.photo.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(26,96,'<sexyman.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(27,15,'<photowithpirates.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(28,23,'<sexyman.iconosys.eng.PollApp: void onActivityResult(int,int,android.content.Intent)>',25,'a',NULL),(29,15,'<photowithpirates.photo.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(30,18,'<photowithpirates.photo.iconosys.eng.RegistrationScreen: void SendAutoData()>',89,'s',NULL),(31,97,'<sexyman.iconosys.eng.PollApp$1: void onClick(android.view.View)>',16,'a',NULL),(32,19,'<photowithpirates.photo.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(33,98,'<photowithpirates.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',23,'a',NULL),(34,99,'<sexyman.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(35,98,'<photowithpirates.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',9,'a',NULL),(36,100,'<sexyman.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(37,14,'<photowithpirates.photo.iconosys.eng.MeInJail: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(38,24,'<sexyman.iconosys.eng.PollNew: void onCreate(android.os.Bundle)>',76,'a',NULL),(39,19,'<photowithpirates.photo.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(40,29,'<sexyman.iconosys.eng.IconosysActivity: void onActivityResult(int,int,android.content.Intent)>',11,'p',0),(41,29,'<sexyman.iconosys.eng.IconosysActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(42,14,'<photowithpirates.photo.iconosys.eng.MeInJail: void onResume()>',14,'a',NULL),(43,29,'<sexyman.iconosys.eng.IconosysActivity: void onActivityResult(int,int,android.content.Intent)>',32,'a',NULL),(44,101,'<photowithpirates.photo.iconosys.eng.MeInJail$2: void onClick(android.view.View)>',7,'a',NULL),(45,24,'<sexyman.iconosys.eng.PollNew: void onCreate(android.os.Bundle)>',50,'a',NULL),(46,18,'<photowithpirates.photo.iconosys.eng.RegistrationScreen: void SendPhoneData()>',93,'s',NULL),(47,24,'<sexyman.iconosys.eng.PollNew: void onCreate(android.os.Bundle)>',88,'a',NULL),(48,15,'<photowithpirates.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(49,29,'<sexyman.iconosys.eng.IconosysActivity: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(50,102,'<photowithpirates.photo.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(51,30,'<sexyman.iconosys.eng.RegistrationScreen: void SendPhoneData()>',100,'s',NULL),(52,14,'<photowithpirates.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(53,103,'<sexyman.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(54,15,'<photowithpirates.photo.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(55,29,'<sexyman.iconosys.eng.IconosysActivity: void onResume()>',17,'a',NULL),(56,14,'<photowithpirates.photo.iconosys.eng.MeInJail: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(57,19,'<photowithpirates.photo.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(58,104,'<sexyman.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(59,105,'<sexyman.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(60,29,'<sexyman.iconosys.eng.IconosysActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(61,23,'<sexyman.iconosys.eng.PollApp: void onActivityResult(int,int,android.content.Intent)>',17,'a',NULL),(62,15,'<photowithpirates.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',6,'a',NULL),(63,15,'<photowithpirates.photo.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(64,14,'<photowithpirates.photo.iconosys.eng.MeInJail: void onCreate(android.os.Bundle)>',6,'a',NULL),(65,106,'<photowithpirates.photo.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(66,107,'<photowithpirates.photo.iconosys.eng.MeInJail$1: void onClick(android.view.View)>',7,'a',NULL),(67,108,'<photowithpirates.photo.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(68,109,'<photowithpirates.photo.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(69,14,'<photowithpirates.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(70,75,'<walkingtracker.iconosys.eng.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(71,53,'<walkingtracker.iconosys.eng.TakePicture: void startCameraActivity()>',9,'a',NULL),(72,110,'<walkingtracker.iconosys.eng.Settings$3: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(73,111,'<walkingtracker.iconosys.eng.Review$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(74,112,'<walkingtracker.iconosys.eng.SelectRange$5: void onClick(android.view.View)>',18,'a',NULL),(75,113,'<walkingtracker.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(76,114,'<walkingtracker.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(77,110,'<walkingtracker.iconosys.eng.Settings$3: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(78,69,'<walkingtracker.iconosys.eng.Mileage: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(79,75,'<walkingtracker.iconosys.eng.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(80,42,'<walkingtracker.iconosys.eng.MyReceiptManager: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(81,69,'<walkingtracker.iconosys.eng.Mileage: void calcDistance()>',34,'a',NULL),(82,42,'<walkingtracker.iconosys.eng.MyReceiptManager: void calcDistance()>',34,'a',NULL),(83,115,'<walkingtracker.iconosys.eng.MileageSend$1: void onClick(android.view.View)>',49,'a',NULL),(84,116,'<walkingtracker.iconosys.eng.MyReceiptManager$9: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(85,117,'<walkingtracker.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(86,116,'<walkingtracker.iconosys.eng.MyReceiptManager$9: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(87,63,'<walkingtracker.iconosys.eng.SpreadSheet: void sendToFile()>',15,'a',NULL),(88,116,'<walkingtracker.iconosys.eng.MyReceiptManager$9: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(89,118,'<walkingtracker.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(90,119,'<walkingtracker.iconosys.eng.SaveSend$4: void onClick(android.view.View)>',89,'a',NULL),(91,83,'<walkingtracker.iconosys.eng.Settings: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(92,117,'<walkingtracker.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(93,114,'<walkingtracker.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(94,120,'<walkingtracker.iconosys.eng.Mileage$5: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(95,121,'<walkingtracker.iconosys.eng.Mileage$4: void onClick(android.view.View)>',6,'a',NULL),(96,51,'<walkingtracker.iconosys.eng.ReviewSelection: void getSelection(android.util.SparseBooleanArray)>',20,'a',NULL),(97,122,'<walkingtracker.iconosys.eng.MyReceiptManager$6: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(98,117,'<walkingtracker.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(99,80,'<walkingtracker.iconosys.eng.ReportSheet: void sendToFile()>',17,'a',NULL),(100,123,'<walkingtracker.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(101,55,'<walkingtracker.iconosys.eng.Review: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(102,116,'<walkingtracker.iconosys.eng.MyReceiptManager$9: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(103,124,'<walkingtracker.iconosys.eng.MyReceiptManager$1: void onClick(android.view.View)>',6,'a',NULL),(104,65,'<walkingtracker.iconosys.eng.MileageSheet: void sendToFile()>',21,'a',NULL),(105,125,'<walkingtracker.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(106,51,'<walkingtracker.iconosys.eng.ReviewSelection: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(107,126,'<walkingtracker.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(108,110,'<walkingtracker.iconosys.eng.Settings$3: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(109,42,'<walkingtracker.iconosys.eng.MyReceiptManager: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(110,69,'<walkingtracker.iconosys.eng.Mileage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(111,117,'<walkingtracker.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(112,110,'<walkingtracker.iconosys.eng.Settings$3: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(113,127,'<walkingtracker.iconosys.eng.MyReceiptManager$5: void onClick(android.view.View)>',6,'a',NULL),(114,42,'<walkingtracker.iconosys.eng.MyReceiptManager: void onCreate(android.os.Bundle)>',6,'a',NULL),(115,114,'<walkingtracker.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(116,114,'<walkingtracker.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(117,128,'<walkingtracker.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(118,129,'<walkingtracker.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(119,38,'<drivereply.iconosys.eng.Registration: void Start48()>',9,'s',0),(120,56,'<drivereply.iconosys.eng.InsuranceCardCapture: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(121,130,'<drivereply.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(122,131,'<drivereply.iconosys.eng.LandingPage$7: void onClick(android.view.View)>',43,'a',NULL),(123,78,'<drivereply.iconosys.eng.CallAndSMSListener: void Starts()>',10,'s',0),(124,78,'<drivereply.iconosys.eng.CallAndSMSListener: void BatteryStarts()>',10,'s',0),(125,34,'<drivereply.iconosys.eng.SettingsNw: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(126,78,'<drivereply.iconosys.eng.CallAndSMSListener: void StartQue()>',10,'s',0),(127,34,'<drivereply.iconosys.eng.SettingsNw: boolean onOptionsItemSelected(android.view.MenuItem)>',26,'a',NULL),(128,70,'<drivereply.iconosys.eng.MsgQue: void GetMsgLog()>',10,'p',NULL),(129,34,'<drivereply.iconosys.eng.SettingsNw: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(130,33,'<drivereply.iconosys.eng.LandingPage: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(131,132,'<drivereply.iconosys.eng.SettingsNw$4: void onClick(android.view.View)>',6,'a',NULL),(132,133,'<drivereply.iconosys.eng.SettingsNw$5: void onClick(android.view.View)>',6,'a',NULL),(133,33,'<drivereply.iconosys.eng.LandingPage: void showLicence()>',3,'a',NULL),(134,33,'<drivereply.iconosys.eng.LandingPage: void Start150()>',9,'s',0),(135,34,'<drivereply.iconosys.eng.SettingsNw: void Accounts()>',3,'a',NULL),(136,74,'<drivereply.iconosys.eng.CallQue: void GetMsgLog()>',3,'p',NULL),(137,56,'<drivereply.iconosys.eng.InsuranceCardCapture: void startCameraActivity()>',9,'a',NULL),(138,135,'<drivereply.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(139,136,'<drivereply.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(140,33,'<drivereply.iconosys.eng.LandingPage: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(141,137,'<drivereply.iconosys.eng.LandingPage$11: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(142,33,'<drivereply.iconosys.eng.LandingPage: void showRegistration()>',3,'a',NULL),(143,34,'<drivereply.iconosys.eng.SettingsNw: void allowreply()>',3,'a',NULL),(144,35,'<drivereply.iconosys.eng.MsgAdd: void onCreate(android.os.Bundle)>',6,'a',NULL),(145,32,'<drivereply.iconosys.eng.DriveReply: void LoadPage()>',3,'a',NULL),(146,34,'<drivereply.iconosys.eng.SettingsNw: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(147,138,'<drivereply.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(148,34,'<drivereply.iconosys.eng.SettingsNw: void Terms()>',3,'a',NULL),(149,33,'<drivereply.iconosys.eng.LandingPage: void showOption()>',3,'a',NULL),(150,33,'<drivereply.iconosys.eng.LandingPage: void SettingFrm()>',3,'a',NULL),(151,70,'<drivereply.iconosys.eng.MsgQue: void GetMsgLog()>',36,'p',NULL),(152,34,'<drivereply.iconosys.eng.SettingsNw: void onCreate(android.os.Bundle)>',6,'a',NULL),(153,33,'<drivereply.iconosys.eng.LandingPage: boolean onOptionsItemSelected(android.view.MenuItem)>',27,'a',NULL),(154,139,'<drivereply.iconosys.eng.AccidentReporter$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(155,70,'<drivereply.iconosys.eng.MsgQue: void GetMsgLog()>',26,'p',NULL),(156,33,'<drivereply.iconosys.eng.LandingPage: void onActivityResult(int,int,android.content.Intent)>',74,'p',0),(157,33,'<drivereply.iconosys.eng.LandingPage: void onCreate(android.os.Bundle)>',6,'a',NULL),(158,56,'<drivereply.iconosys.eng.InsuranceCardCapture: void startCameraActivity1()>',9,'a',NULL),(159,33,'<drivereply.iconosys.eng.LandingPage: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(160,33,'<drivereply.iconosys.eng.LandingPage: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(161,78,'<drivereply.iconosys.eng.CallAndSMSListener: void StartCallQue()>',10,'s',0),(162,34,'<drivereply.iconosys.eng.SettingsNw: void noreply()>',3,'a',NULL),(163,54,'<drivereply.iconosys.eng.AccidentReporter: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(164,140,'<drivereply.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(165,34,'<drivereply.iconosys.eng.SettingsNw: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(166,33,'<drivereply.iconosys.eng.LandingPage: boolean onOptionsItemSelected(android.view.MenuItem)>',32,'a',NULL),(167,141,'<drivereply.iconosys.eng.SettingsNw$6: void onClick(android.view.View)>',6,'a',NULL),(168,33,'<drivereply.iconosys.eng.LandingPage: void MsgFrm()>',3,'a',NULL),(169,142,'<drivereply.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(170,54,'<drivereply.iconosys.eng.AccidentReporter: void startCameraActivity()>',21,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,9,6),(2,10,6),(3,11,7),(4,12,6),(5,14,6),(6,15,6),(7,16,6),(8,19,6),(9,20,6),(10,21,6),(11,22,6),(12,29,6),(13,31,6),(14,34,7),(15,42,6),(16,45,6),(17,46,8),(18,48,9),(19,50,9),(20,51,9),(21,52,6),(22,53,9),(23,54,9),(24,56,9),(25,57,9),(26,59,9),(27,61,10),(28,63,6),(29,65,6),(30,66,6),(31,67,7),(32,69,10),(33,73,6),(34,81,9),(35,82,9),(36,83,9),(37,84,9),(38,85,9),(39,86,9),(40,87,9),(41,88,9),(42,92,9),(43,93,9),(44,94,9),(45,95,9),(46,96,9),(47,97,9),(48,98,9),(49,99,9),(50,102,9),(51,103,9),(52,104,9),(53,105,9),(54,106,9),(55,107,9),(56,108,9),(57,109,9),(58,113,11),(59,116,11),(60,118,9),(61,119,9),(62,120,9),(63,121,9),(64,122,9),(65,123,9),(66,124,9),(67,125,9),(68,126,6),(69,129,6),(70,130,9),(71,131,9),(72,132,9),(73,133,9),(74,134,9),(75,135,9),(76,136,9),(77,137,9),(78,138,6),(79,140,6),(80,150,6),(81,151,6),(82,153,6),(83,156,7),(84,162,10),(85,163,6),(86,164,6),(87,166,11),(88,172,6),(89,180,10),(90,185,6),(91,187,7),(92,190,6),(93,191,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'eng/trickersticks/rolldice/GlowSticks'),(2,2,'puppiesbday/timer/iconosys/ContactsList'),(3,3,'eng/trickersticks/artistic/glow/LocationSender'),(4,4,'eng/trickersticks/artistic/glow/OtherApps'),(5,5,'eng/trickersticks/artistic/glow/ShowTerms'),(6,6,'eng/trickersticks/artistic/glow/LocationSender'),(7,7,'eng/trickersticks/artistic/glow/GlowSticks'),(8,8,'eng/trickersticks/artistic/glow/AdView'),(9,13,'eng/trickersticks/artistic/glow/RegistrationScreen'),(10,17,'photowithpirates/photo/iconosys/eng/ShowTerms'),(11,18,'sexyman/iconosys/eng/LocationSender'),(12,23,'photowithpirates/photo/iconosys/eng/MeInJail'),(13,24,'sexyman/iconosys/eng/AdView'),(14,25,'photowithpirates/photo/iconosys/eng/LocationSender'),(15,26,'sexyman/iconosys/eng/PollNew'),(16,27,'photowithpirates/photo/iconosys/eng/OtherApps'),(17,28,'photowithpirates/photo/iconosys/eng/ShareImage'),(18,30,'photowithpirates/photo/iconosys/eng/ShowPopUp'),(19,32,'sexyman/iconosys/eng/AdView'),(20,33,'photowithpirates/photo/iconosys/eng/AdView'),(21,35,'photowithpirates/photo/iconosys/eng/RegistrationScreen'),(22,36,'sexyman/iconosys/eng/RegistrationScreen'),(23,37,'photowithpirates/photo/iconosys/eng/PhotoView'),(24,38,'sexyman/iconosys/eng/PollResult'),(25,39,'photowithpirates/photo/iconosys/eng/LocationSender'),(26,40,'sexyman/iconosys/eng/AdView'),(27,41,'photowithpirates/photo/iconosys/eng/OtherApps'),(28,43,'sexyman/iconosys/eng/LocationSender'),(29,44,'photowithpirates/photo/iconosys/eng/OtherApps'),(30,47,'sexyman/iconosys/eng/RegistrationScreen'),(31,49,'sexyman/iconosys/eng/ShowTerms'),(32,55,'sexyman/iconosys/eng/OtherApps'),(33,58,'sexyman/iconosys/eng/PollResult'),(34,60,'photowithpirates/photo/iconosys/eng/ShowPopUp'),(35,62,'photowithpirates/photo/iconosys/eng/AdView'),(36,64,'photowithpirates/photo/iconosys/eng/PhotoView'),(37,68,'walkingtracker/iconosys/eng/LocationSender'),(38,70,'walkingtracker/iconosys/eng/SelectRange'),(39,71,'walkingtracker/iconosys/eng/SelectRange'),(40,72,'walkingtracker/iconosys/eng/ReportSheet'),(41,74,'walkingtracker/iconosys/eng/ReviewSelection'),(42,75,'walkingtracker/iconosys/eng/ReviewSelection'),(43,76,'walkingtracker/iconosys/eng/MileageSheet'),(44,77,'walkingtracker/iconosys/eng/LocationSender'),(45,78,'walkingtracker/iconosys/eng/OtherApps'),(46,79,'walkingtracker/iconosys/eng/MileageAdd'),(47,80,'walkingtracker/iconosys/eng/MileageAdd'),(48,89,'walkingtracker/iconosys/eng/ReviewSelection'),(49,90,'walkingtracker/iconosys/eng/ReviewSelection'),(50,91,'walkingtracker/iconosys/eng/ReviewSelection'),(51,100,'walkingtracker/iconosys/eng/SelectRange'),(52,101,'walkingtracker/iconosys/eng/ShowTerms'),(53,110,'walkingtracker/iconosys/eng/OtherApps'),(54,111,'walkingtracker/iconosys/eng/ReviewSelection'),(55,112,'walkingtracker/iconosys/eng/ReviewSelection'),(56,114,'walkingtracker/iconosys/eng/MileageSheet'),(57,115,'walkingtracker/iconosys/eng/SelectRange'),(58,117,'walkingtracker/iconosys/eng/ReviewSelection'),(59,127,'walkingtracker/iconosys/eng/OtherApps'),(60,128,'walkingtracker/iconosys/eng/ReviewSelection'),(61,139,'walkingtracker/iconosys/eng/OtherApps'),(62,141,'walkingtracker/iconosys/eng/ReviewSelection'),(63,142,'walkingtracker/iconosys/eng/MileageSheet'),(64,143,'walkingtracker/iconosys/eng/OtherApps'),(65,144,'walkingtracker/iconosys/eng/SelectRange'),(66,145,'walkingtracker/iconosys/eng/ReviewSelection'),(67,146,'walkingtracker/iconosys/eng/MileageSheet'),(68,147,'walkingtracker/iconosys/eng/AdView'),(69,148,'walkingtracker/iconosys/eng/SelectRange'),(70,149,'walkingtracker/iconosys/eng/ReviewSelection'),(71,152,'drivereply/iconosys/eng/OtherApps'),(72,154,'drivereply/iconosys/eng/LogDialog'),(73,155,'drivereply/iconosys/eng/AccidentReporter'),(74,157,'drivereply/iconosys/eng/InsuranceCardCapture'),(75,158,'drivereply/iconosys/eng/Pers'),(76,159,'drivereply/iconosys/eng/Licence'),(77,160,'drivereply/iconosys/eng/Licence'),(78,161,'drivereply/iconosys/eng/Accounts'),(79,165,'drivereply/iconosys/eng/AccidentReporter'),(80,167,'drivereply/iconosys/eng/Registration'),(81,168,'drivereply/iconosys/eng/AllowReply'),(82,169,'drivereply/iconosys/eng/AdView'),(83,170,'drivereply/iconosys/eng/LandingPage'),(84,171,'drivereply/iconosys/eng/DisplayMap'),(85,173,'drivereply/iconosys/eng/Terms'),(86,174,'drivereply/iconosys/eng/OptionReg'),(87,175,'drivereply/iconosys/eng/SettingsNw'),(88,176,'drivereply/iconosys/eng/AdView'),(89,177,'drivereply/iconosys/eng/OtherApps'),(90,178,'drivereply/iconosys/eng/Preview'),(91,179,'drivereply/iconosys/eng/AdView'),(92,181,'drivereply/iconosys/eng/InsuranceCardCapture'),(93,182,'drivereply/iconosys/eng/DisplayMap'),(94,183,'drivereply/iconosys/eng/NoReply'),(95,184,'drivereply/iconosys/eng/OtherApps'),(96,186,'drivereply/iconosys/eng/OtherApps'),(97,188,'drivereply/iconosys/eng/BatAlert'),(98,189,'drivereply/iconosys/eng/MsgAdd');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,9,3),(2,10,4),(3,11,5),(4,12,6),(5,14,7),(6,15,9),(7,16,10),(8,19,11),(9,20,12),(10,21,13),(11,22,14),(12,29,15),(13,31,16),(14,34,18),(15,42,20),(16,45,21),(17,52,22),(18,63,23),(19,65,24),(20,66,25),(21,67,26),(22,73,27),(23,126,28),(24,129,29),(25,138,30),(26,140,31),(27,150,32),(28,151,33),(29,153,34),(30,156,35),(31,163,39),(32,164,40),(33,172,41),(34,185,44),(35,187,45),(36,190,46);
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
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,26,'_question'),(2,26,'_answer'),(3,26,'_index'),(4,26,'_result'),(5,28,'saved_uri'),(6,37,'pick_photo'),(7,38,'_answer'),(8,38,'_question'),(9,48,'android.intent.extra.INTENT'),(10,50,'android.intent.extra.INTENT'),(11,51,'android.intent.extra.TITLE'),(12,51,'android.intent.extra.INTENT'),(13,53,'android.intent.extra.INTENT'),(14,54,'android.intent.extra.TITLE'),(15,54,'android.intent.extra.INTENT'),(16,56,'android.intent.extra.INTENT'),(17,57,'android.intent.extra.TITLE'),(18,57,'android.intent.extra.INTENT'),(19,59,'android.intent.extra.TITLE'),(20,59,'android.intent.extra.INTENT'),(21,61,'output'),(22,64,'take_photo'),(23,69,'output'),(24,70,'id'),(25,70,'report_type'),(26,71,'id'),(27,71,'report_type'),(28,72,'id'),(29,72,'Category'),(30,72,'range1'),(31,72,'range2'),(32,74,'id'),(33,74,'report_type'),(34,75,'id'),(35,75,'report_type'),(36,79,'_mileage'),(37,80,'_mileage'),(38,81,'android.intent.extra.INTENT'),(39,82,'android.intent.extra.INTENT'),(40,83,'android.intent.extra.TITLE'),(41,83,'android.intent.extra.INTENT'),(42,84,'android.intent.extra.INTENT'),(43,85,'android.intent.extra.TITLE'),(44,85,'android.intent.extra.INTENT'),(45,86,'android.intent.extra.INTENT'),(46,87,'android.intent.extra.TITLE'),(47,87,'android.intent.extra.INTENT'),(48,88,'android.intent.extra.TITLE'),(49,88,'android.intent.extra.INTENT'),(50,89,'id'),(51,89,'report_type'),(52,90,'id'),(53,90,'report_type'),(54,91,'id'),(55,91,'report_type'),(56,92,'android.intent.extra.INTENT'),(57,93,'android.intent.extra.INTENT'),(58,94,'android.intent.extra.TITLE'),(59,94,'android.intent.extra.INTENT'),(60,95,'android.intent.extra.INTENT'),(61,96,'android.intent.extra.TITLE'),(62,96,'android.intent.extra.INTENT'),(63,97,'android.intent.extra.INTENT'),(64,98,'android.intent.extra.TITLE'),(65,98,'android.intent.extra.INTENT'),(66,99,'android.intent.extra.TITLE'),(67,99,'android.intent.extra.INTENT'),(68,100,'id'),(69,100,'report_type'),(70,102,'android.intent.extra.INTENT'),(71,103,'android.intent.extra.INTENT'),(72,104,'android.intent.extra.TITLE'),(73,104,'android.intent.extra.INTENT'),(74,105,'android.intent.extra.INTENT'),(75,106,'android.intent.extra.TITLE'),(76,106,'android.intent.extra.INTENT'),(77,107,'android.intent.extra.INTENT'),(78,108,'android.intent.extra.TITLE'),(79,108,'android.intent.extra.INTENT'),(80,109,'android.intent.extra.TITLE'),(81,109,'android.intent.extra.INTENT'),(82,111,'id'),(83,111,'report_type'),(84,112,'id'),(85,112,'report_type'),(86,115,'id'),(87,115,'Category'),(88,115,'report_type'),(89,117,'id'),(90,117,'report_type'),(91,118,'android.intent.extra.INTENT'),(92,119,'android.intent.extra.INTENT'),(93,120,'android.intent.extra.TITLE'),(94,120,'android.intent.extra.INTENT'),(95,121,'android.intent.extra.INTENT'),(96,122,'android.intent.extra.TITLE'),(97,122,'android.intent.extra.INTENT'),(98,123,'android.intent.extra.INTENT'),(99,124,'android.intent.extra.TITLE'),(100,124,'android.intent.extra.INTENT'),(101,125,'android.intent.extra.TITLE'),(102,125,'android.intent.extra.INTENT'),(103,128,'id'),(104,128,'report_type'),(105,130,'android.intent.extra.INTENT'),(106,131,'android.intent.extra.INTENT'),(107,132,'android.intent.extra.TITLE'),(108,132,'android.intent.extra.INTENT'),(109,133,'android.intent.extra.INTENT'),(110,134,'android.intent.extra.TITLE'),(111,134,'android.intent.extra.INTENT'),(112,135,'android.intent.extra.INTENT'),(113,136,'android.intent.extra.TITLE'),(114,136,'android.intent.extra.INTENT'),(115,137,'android.intent.extra.TITLE'),(116,137,'android.intent.extra.INTENT'),(117,141,'id'),(118,141,'report_type'),(119,144,'id'),(120,144,'report_type'),(121,145,'id'),(122,145,'report_type'),(123,148,'id'),(124,148,'report_type'),(125,149,'id'),(126,149,'report_type'),(127,162,'output'),(128,178,'titlename'),(129,178,'iconfromraw'),(130,178,'theid'),(131,178,'datetime'),(132,180,'output'),(133,191,'output');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,2),(7,7,1),(8,8,1),(9,9,1),(10,10,3),(11,10,4),(12,11,5),(13,12,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,4,1),(4,5,1),(5,6,2),(6,7,1),(7,8,1),(8,9,1);
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
INSERT INTO `IFData` VALUES (1,6,'sms',NULL,NULL,NULL,NULL,NULL),(2,6,'mms',NULL,NULL,NULL,NULL,NULL),(3,6,'mmsto',NULL,NULL,NULL,NULL,NULL),(4,6,NULL,NULL,NULL,NULL,'image','*'),(5,6,NULL,NULL,NULL,NULL,'video','*'),(6,6,NULL,NULL,NULL,NULL,'audio','*');
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
INSERT INTO `IMimeTypes` VALUES (1,46,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'eng.trickersticks.rolldice'),(2,2,'puppiesbday.timer.iconosys'),(3,3,'eng.trickersticks.artistic.glow'),(4,4,'eng.trickersticks.artistic.glow'),(5,5,'eng.trickersticks.artistic.glow'),(6,6,'eng.trickersticks.artistic.glow'),(7,7,'eng.trickersticks.artistic.glow'),(8,8,'eng.trickersticks.artistic.glow'),(9,13,'eng.trickersticks.artistic.glow'),(10,17,'photowithpirates.photo.iconosys.eng'),(11,18,'sexyman.iconosys.eng'),(12,23,'photowithpirates.photo.iconosys.eng'),(13,24,'sexyman.iconosys.eng'),(14,25,'photowithpirates.photo.iconosys.eng'),(15,26,'sexyman.iconosys.eng'),(16,27,'photowithpirates.photo.iconosys.eng'),(17,28,'photowithpirates.photo.iconosys.eng'),(18,30,'photowithpirates.photo.iconosys.eng'),(19,32,'sexyman.iconosys.eng'),(20,33,'photowithpirates.photo.iconosys.eng'),(21,35,'photowithpirates.photo.iconosys.eng'),(22,36,'sexyman.iconosys.eng'),(23,37,'photowithpirates.photo.iconosys.eng'),(24,38,'sexyman.iconosys.eng'),(25,39,'photowithpirates.photo.iconosys.eng'),(26,40,'sexyman.iconosys.eng'),(27,41,'photowithpirates.photo.iconosys.eng'),(28,43,'sexyman.iconosys.eng'),(29,44,'photowithpirates.photo.iconosys.eng'),(30,47,'sexyman.iconosys.eng'),(31,49,'sexyman.iconosys.eng'),(32,55,'sexyman.iconosys.eng'),(33,58,'sexyman.iconosys.eng'),(34,60,'photowithpirates.photo.iconosys.eng'),(35,62,'photowithpirates.photo.iconosys.eng'),(36,64,'photowithpirates.photo.iconosys.eng'),(37,68,'walkingtracker.iconosys.eng'),(38,70,'walkingtracker.iconosys.eng'),(39,71,'walkingtracker.iconosys.eng'),(40,72,'walkingtracker.iconosys.eng'),(41,74,'walkingtracker.iconosys.eng'),(42,75,'walkingtracker.iconosys.eng'),(43,76,'walkingtracker.iconosys.eng'),(44,77,'walkingtracker.iconosys.eng'),(45,78,'walkingtracker.iconosys.eng'),(46,79,'walkingtracker.iconosys.eng'),(47,80,'walkingtracker.iconosys.eng'),(48,89,'walkingtracker.iconosys.eng'),(49,90,'walkingtracker.iconosys.eng'),(50,91,'walkingtracker.iconosys.eng'),(51,100,'walkingtracker.iconosys.eng'),(52,101,'walkingtracker.iconosys.eng'),(53,110,'walkingtracker.iconosys.eng'),(54,111,'walkingtracker.iconosys.eng'),(55,112,'walkingtracker.iconosys.eng'),(56,114,'walkingtracker.iconosys.eng'),(57,115,'walkingtracker.iconosys.eng'),(58,117,'walkingtracker.iconosys.eng'),(59,127,'walkingtracker.iconosys.eng'),(60,128,'walkingtracker.iconosys.eng'),(61,139,'walkingtracker.iconosys.eng'),(62,141,'walkingtracker.iconosys.eng'),(63,142,'walkingtracker.iconosys.eng'),(64,143,'walkingtracker.iconosys.eng'),(65,144,'walkingtracker.iconosys.eng'),(66,145,'walkingtracker.iconosys.eng'),(67,146,'walkingtracker.iconosys.eng'),(68,147,'walkingtracker.iconosys.eng'),(69,148,'walkingtracker.iconosys.eng'),(70,149,'walkingtracker.iconosys.eng'),(71,152,'drivereply.iconosys.eng'),(72,154,'drivereply.iconosys.eng'),(73,155,'drivereply.iconosys.eng'),(74,157,'drivereply.iconosys.eng'),(75,158,'drivereply.iconosys.eng'),(76,159,'drivereply.iconosys.eng'),(77,160,'drivereply.iconosys.eng'),(78,161,'drivereply.iconosys.eng'),(79,165,'drivereply.iconosys.eng'),(80,167,'drivereply.iconosys.eng'),(81,168,'drivereply.iconosys.eng'),(82,169,'drivereply.iconosys.eng'),(83,170,'drivereply.iconosys.eng'),(84,171,'drivereply.iconosys.eng'),(85,173,'drivereply.iconosys.eng'),(86,174,'drivereply.iconosys.eng'),(87,175,'drivereply.iconosys.eng'),(88,176,'drivereply.iconosys.eng'),(89,177,'drivereply.iconosys.eng'),(90,178,'drivereply.iconosys.eng'),(91,179,'drivereply.iconosys.eng'),(92,181,'drivereply.iconosys.eng'),(93,182,'drivereply.iconosys.eng'),(94,183,'drivereply.iconosys.eng'),(95,184,'drivereply.iconosys.eng'),(96,186,'drivereply.iconosys.eng'),(97,188,'drivereply.iconosys.eng'),(98,189,'drivereply.iconosys.eng');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,5,0),(4,7,0),(5,14,0),(6,15,0),(7,23,0),(8,32,0),(9,42,0),(10,78,0),(11,81,0),(12,85,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,5,0,0),(4,6,0,0),(5,7,0,0),(6,8,0,0),(7,9,0,0),(8,10,0,0),(9,11,1,0),(10,12,1,0),(11,13,1,0),(12,14,1,0),(13,15,0,0),(14,16,1,0),(15,19,1,0),(16,20,1,0),(17,21,0,0),(18,22,0,0),(19,23,1,0),(20,24,1,0),(21,25,1,0),(22,26,1,0),(23,27,0,0),(24,28,0,0),(25,30,0,0),(26,31,0,0),(27,32,0,0),(28,33,0,0),(29,34,1,0),(30,35,0,0),(31,36,1,0),(32,38,0,0),(33,39,0,0),(34,41,1,0),(35,42,0,0),(36,43,0,0),(37,44,0,0),(38,45,0,0),(39,46,0,0),(40,47,0,0),(41,48,0,0),(42,50,1,0),(43,51,0,0),(44,52,0,0),(45,53,1,0),(46,54,1,0),(47,55,0,0),(48,57,1,0),(49,58,0,0),(50,57,1,0),(51,57,1,0),(52,59,1,0),(53,57,1,0),(54,57,1,0),(55,60,0,0),(56,57,1,0),(57,57,1,0),(58,61,0,0),(59,57,1,0),(60,62,0,0),(61,63,1,0),(62,64,0,0),(63,65,1,0),(64,66,0,0),(65,67,1,0),(66,68,1,0),(67,69,1,0),(68,70,0,0),(69,71,1,0),(70,72,0,0),(71,73,0,0),(72,74,0,0),(73,75,1,0),(74,76,0,0),(75,77,0,0),(76,78,0,0),(77,79,0,0),(78,80,0,0),(79,81,0,0),(80,82,0,0),(81,83,1,0),(82,83,1,0),(83,83,1,0),(84,83,1,0),(85,83,1,0),(86,83,1,0),(87,83,1,0),(88,83,1,0),(89,84,0,0),(90,85,0,0),(91,86,0,0),(92,87,1,0),(93,87,1,0),(94,87,1,0),(95,87,1,0),(96,87,1,0),(97,87,1,0),(98,87,1,0),(99,87,1,0),(100,88,0,0),(101,89,0,0),(102,90,1,0),(103,90,1,0),(104,90,1,0),(105,90,1,0),(106,90,1,0),(107,90,1,0),(108,90,1,0),(109,90,1,0),(110,91,0,0),(111,92,0,0),(112,93,0,0),(113,94,1,0),(114,95,0,0),(115,96,0,0),(116,97,1,0),(117,98,0,0),(118,99,1,0),(119,99,1,0),(120,99,1,0),(121,99,1,0),(122,99,1,0),(123,99,1,0),(124,99,1,0),(125,99,1,0),(126,100,1,0),(127,101,0,0),(128,102,0,0),(129,103,1,0),(130,104,1,0),(131,104,1,0),(132,104,1,0),(133,104,1,0),(134,104,1,0),(135,104,1,0),(136,104,1,0),(137,104,1,0),(138,105,1,0),(139,106,0,0),(140,107,1,0),(141,108,0,0),(142,109,0,0),(143,110,0,0),(144,111,0,0),(145,112,0,0),(146,113,0,0),(147,114,0,0),(148,115,0,0),(149,116,0,0),(150,117,1,0),(151,118,1,0),(152,120,0,0),(153,121,1,0),(154,122,0,0),(155,125,0,0),(156,127,1,0),(157,129,0,0),(158,131,0,0),(159,132,0,0),(160,133,0,0),(161,135,0,0),(162,137,1,0),(163,138,1,0),(164,139,1,0),(165,140,0,0),(166,141,1,0),(167,142,0,0),(168,143,0,0),(169,144,0,0),(170,145,0,0),(171,146,0,0),(172,147,1,0),(173,148,0,0),(174,149,0,0),(175,150,0,0),(176,152,0,0),(177,153,0,0),(178,154,0,0),(179,157,0,0),(180,158,1,0),(181,159,0,0),(182,160,0,0),(183,162,0,0),(184,163,0,0),(185,164,1,0),(186,165,0,0),(187,166,1,0),(188,167,0,0),(189,168,0,0),(190,169,1,0),(191,170,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (9,'android.permission.ACCESS_COARSE_LOCATION'),(16,'android.permission.ACCESS_COARSE_UPDATES'),(7,'android.permission.ACCESS_FINE_LOCATION'),(12,'android.permission.CAMERA'),(10,'android.permission.GET_ACCOUNTS'),(3,'android.permission.INTERNET'),(18,'android.permission.LISTEN_CALL_STATE'),(13,'android.permission.NEW_OUTGOING_CALL'),(4,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(5,'android.permission.READ_SMS'),(17,'android.permission.RECEIVE_BOOT_COMPLETED'),(14,'android.permission.RECEIVE_SMS'),(2,'android.permission.SEND_SMS'),(11,'android.permission.WAKE_LOCK'),(15,'android.permission.WRITE_CONTACTS'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(8,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(2,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(3,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(4,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(5,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(6,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(7,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(8,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(9,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(10,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(11,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(12,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(13,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(14,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(15,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(16,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(17,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(18,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(19,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(20,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(21,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(22,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(23,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(24,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(25,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(26,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(27,NULL,NULL,'http://www.iconosys.com/product.php',NULL,NULL,NULL),(28,NULL,NULL,'http://www.iconosys.com/product.php',NULL,NULL,NULL),(29,NULL,NULL,'http://advertise.iconosys.com',NULL,NULL,NULL),(30,NULL,NULL,'http://www.iconosys.com/product.php',NULL,NULL,NULL),(31,NULL,NULL,'http://www.iconosys.com/product.php',NULL,NULL,NULL),(32,NULL,NULL,'http://www.iconosys.com/product.php',NULL,NULL,NULL),(33,NULL,NULL,'http://www.iconosys.com/product.php',NULL,NULL,NULL),(34,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(35,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(36,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(37,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(38,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(39,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(40,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(41,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(42,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(43,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(44,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(45,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(46,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,3,1),(2,4,2),(3,17,8),(4,37,17),(5,49,19),(6,128,36),(7,130,37),(8,136,38),(9,151,42),(10,155,43);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,2,3),(7,2,4),(8,3,1),(9,3,2),(10,3,3),(11,3,4),(12,3,5),(13,3,6),(14,3,7),(15,3,8),(16,3,9),(17,3,10),(18,3,11),(19,4,1),(20,4,2),(21,4,3),(22,4,4),(23,4,5),(24,4,6),(25,4,7),(26,4,8),(27,4,9),(28,4,10),(29,4,11),(30,4,12),(31,5,1),(32,5,2),(33,5,3),(34,5,4),(35,5,6),(36,5,7),(37,5,9),(38,5,10),(39,5,11),(40,6,1),(41,6,2),(42,6,3),(43,6,4),(44,6,5),(45,6,6),(46,6,7),(47,6,9),(48,6,11),(49,6,13),(50,6,14),(51,6,15),(52,6,17),(53,6,16),(54,6,18),(55,7,1),(56,7,2),(57,7,3),(58,7,4),(59,7,5),(60,7,6),(61,7,7),(62,7,8),(63,7,9),(64,7,10),(65,7,11),(66,7,12);
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

-- Dump completed on 2015-10-09  0:39:52
