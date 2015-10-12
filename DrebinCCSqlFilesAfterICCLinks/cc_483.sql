-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_483
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
INSERT INTO `ActionStrings` VALUES (3,'android.intent.action.BOOT_COMPLETED'),(6,'android.intent.action.CHOOSER'),(5,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(7,'android.intent.action.PICK'),(2,'android.intent.action.SENDTO'),(4,'android.intent.action.VIEW'),(8,'android.media.action.IMAGE_CAPTURE'),(10,'android.settings.LOCATION_SOURCE_SETTINGS'),(9,'wayne.jeff.dev.valentine');
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
INSERT INTO `Applications` VALUES (1,'mypromdress.photo.iconosys.eng',1),(2,'familypics.iconosys.eng',6),(3,'football.photo.iconosys.eng',1),(4,'springwedding.photo.iconosys.eng',2),(5,'iconosys.valentine.cn',1),(6,'thexfactor.iconosys.eng',1),(7,'myexpense.iconosys.eng',3);
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
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'mypromdress.photo.iconosys.eng.FrameIt'),(2,2,'familypics.iconosys.eng.MeInJail'),(3,3,'football.photo.iconosys.eng.MeInJail'),(4,4,'springwedding.photo.iconosys.eng.MeInJail'),(5,2,'familypics.iconosys.eng.PhotoView'),(6,1,'mypromdress.photo.iconosys.eng.PhotoView'),(7,3,'football.photo.iconosys.eng.PhotoView'),(8,4,'springwedding.photo.iconosys.eng.PhotoView'),(9,5,'iconosys.valentine.cn.ValentineMain'),(10,5,'iconosys.valentine.cn.MyValentine'),(11,5,'iconosys.valentine.cn.OtherApps'),(12,6,'thexfactor.iconosys.eng.PollApp'),(13,2,'familypics.iconosys.eng.OtherApps'),(14,3,'football.photo.iconosys.eng.OtherApps'),(15,1,'mypromdress.photo.iconosys.eng.OtherApps'),(16,4,'springwedding.photo.iconosys.eng.OtherApps'),(17,5,'iconosys.valentine.cn.ItemDialog'),(18,2,'familypics.iconosys.eng.ShowTerms'),(19,3,'football.photo.iconosys.eng.ShowTerms'),(20,1,'mypromdress.photo.iconosys.eng.AdActivity'),(21,4,'springwedding.photo.iconosys.eng.ShowTerms'),(22,5,'iconosys.valentine.cn.MyKissHugs'),(23,2,'familypics.iconosys.eng.RegistrationScreen'),(24,3,'football.photo.iconosys.eng.RegistrationScreen'),(25,6,'thexfactor.iconosys.eng.PollNew'),(26,1,'mypromdress.photo.iconosys.eng.ShowTerms'),(27,4,'springwedding.photo.iconosys.eng.RegistrationScreen'),(28,5,'iconosys.valentine.cn.ShowTerms'),(29,2,'familypics.iconosys.eng.ShareImage'),(30,3,'football.photo.iconosys.eng.ShareImage'),(31,1,'mypromdress.photo.iconosys.eng.RegistrationScreen'),(32,6,'thexfactor.iconosys.eng.ShowTerms'),(33,4,'springwedding.photo.iconosys.eng.ShareImage'),(34,5,'iconosys.valentine.cn.RegistrationScreen'),(35,3,'football.photo.iconosys.eng.ShowPopUp'),(36,2,'familypics.iconosys.eng.ShowPopUp'),(37,1,'mypromdress.photo.iconosys.eng.ShareImage'),(38,6,'thexfactor.iconosys.eng.PollResult'),(39,4,'springwedding.photo.iconosys.eng.ShowPopUp'),(40,5,'iconosys.valentine.cn.SweetHeart'),(41,2,'familypics.iconosys.eng.AdView'),(42,3,'football.photo.iconosys.eng.AdView'),(43,1,'mypromdress.photo.iconosys.eng.AdView'),(44,6,'thexfactor.iconosys.eng.AdView'),(45,4,'springwedding.photo.iconosys.eng.AdView'),(46,5,'iconosys.valentine.cn.ValentineSvc'),(47,2,'familypics.iconosys.eng.LocationSender'),(48,3,'football.photo.iconosys.eng.LocationSender'),(49,1,'mypromdress.photo.iconosys.eng.LocationSender'),(50,6,'thexfactor.iconosys.eng.OtherApps'),(51,5,'iconosys.valentine.cn.TickSvc'),(52,4,'springwedding.photo.iconosys.eng.LocationSender'),(53,6,'thexfactor.iconosys.eng.IconosysActivity'),(54,5,'iconosys.valentine.cn.LocationSender'),(55,6,'thexfactor.iconosys.eng.RegistrationScreen'),(56,5,'iconosys.valentine.cn.BootReceiver'),(57,6,'thexfactor.iconosys.eng.LocationSender'),(58,7,'myexpense.iconosys.eng.MyReceiptManager'),(59,7,'myexpense.iconosys.eng.ShowPopUp'),(60,7,'myexpense.iconosys.eng.MileageAdd'),(61,7,'myexpense.iconosys.eng.OtherApps'),(62,7,'myexpense.iconosys.eng.ReviewSelection'),(63,7,'myexpense.iconosys.eng.TakePicture'),(64,7,'myexpense.iconosys.eng.Review'),(65,7,'myexpense.iconosys.eng.DisplayCategory'),(66,7,'myexpense.iconosys.eng.ShowCat'),(67,7,'myexpense.iconosys.eng.Preview'),(68,7,'myexpense.iconosys.eng.SpreadSheet'),(69,7,'myexpense.iconosys.eng.MileageSheet'),(70,7,'myexpense.iconosys.eng.SaveSend'),(71,7,'myexpense.iconosys.eng.Mileage'),(72,7,'myexpense.iconosys.eng.ShowPopUpReport'),(73,7,'myexpense.iconosys.eng.AdView'),(74,7,'myexpense.iconosys.eng.RegistrationScreen'),(75,7,'myexpense.iconosys.eng.MileageSend'),(76,7,'myexpense.iconosys.eng.SelectRange'),(77,7,'myexpense.iconosys.eng.ReportSheet'),(78,7,'myexpense.iconosys.eng.ShowTerms'),(79,7,'myexpense.iconosys.eng.Setting'),(80,7,'myexpense.iconosys.eng.Locatimyexpense.iconosys.eng.LocationSender'),(81,1,'mypromdress.photo.iconosys.eng.OtherApps$4'),(82,2,'familypics.iconosys.eng.RegistrationScreen$1'),(83,2,'familypics.iconosys.eng.MeInJail$1'),(84,1,'mypromdress.photo.iconosys.eng.OtherApps$6'),(85,2,'familypics.iconosys.eng.OtherApps$1'),(86,1,'mypromdress.photo.iconosys.eng.PhotoView$1'),(87,6,'thexfactor.iconosys.eng.OtherApps$4'),(88,2,'familypics.iconosys.eng.OtherApps$4'),(89,3,'football.photo.iconosys.eng.MeInJail$2'),(90,1,'mypromdress.photo.iconosys.eng.OtherApps$3'),(91,3,'football.photo.iconosys.eng.PhotoView$1'),(92,1,'mypromdress.photo.iconosys.eng.OtherApps$1'),(93,6,'thexfactor.iconosys.eng.OtherApps$2'),(94,4,'springwedding.photo.iconosys.eng.OtherApps$3'),(95,2,'familypics.iconosys.eng.MeInJail$2'),(96,3,'football.photo.iconosys.eng.OtherApps$4'),(97,3,'football.photo.iconosys.eng.MeInJail$1'),(98,4,'springwedding.photo.iconosys.eng.MeInJail$1'),(99,2,'familypics.iconosys.eng.OtherApps$2'),(100,6,'thexfactor.iconosys.eng.OtherApps$5'),(101,6,'thexfactor.iconosys.eng.RegistrationScreen$1'),(102,4,'springwedding.photo.iconosys.eng.RegistrationScreen$1'),(103,5,'iconosys.valentine.cn.OtherApps$4'),(104,2,'familypics.iconosys.eng.PhotoView$1'),(105,3,'football.photo.iconosys.eng.OtherApps$3'),(106,6,'thexfactor.iconosys.eng.OtherApps$1'),(107,5,'iconosys.valentine.cn.ValentineMain$2'),(108,4,'springwedding.photo.iconosys.eng.OtherApps$4'),(109,1,'mypromdress.photo.iconosys.eng.AdActivity$2'),(110,6,'thexfactor.iconosys.eng.PollApp$1'),(111,5,'iconosys.valentine.cn.RegistrationScreen$1'),(112,4,'springwedding.photo.iconosys.eng.PhotoView$1'),(113,1,'mypromdress.photo.iconosys.eng.OtherApps$5'),(114,2,'familypics.iconosys.eng.OtherApps$3'),(115,3,'football.photo.iconosys.eng.OtherApps$2'),(116,5,'iconosys.valentine.cn.OtherApps$6'),(117,1,'mypromdress.photo.iconosys.eng.FrameIt$2'),(118,4,'springwedding.photo.iconosys.eng.OtherApps$2'),(119,3,'football.photo.iconosys.eng.OtherApps$5'),(120,5,'iconosys.valentine.cn.OtherApps$2'),(121,6,'thexfactor.iconosys.eng.OtherApps$6'),(122,1,'mypromdress.photo.iconosys.eng.OtherApps$2'),(123,3,'football.photo.iconosys.eng.OtherApps$1'),(124,5,'iconosys.valentine.cn.MyValentine$2'),(125,4,'springwedding.photo.iconosys.eng.MeInJail$2'),(126,2,'familypics.iconosys.eng.OtherApps$6'),(127,1,'mypromdress.photo.iconosys.eng.FrameIt$1'),(128,5,'iconosys.valentine.cn.ValentineMain$3'),(129,6,'thexfactor.iconosys.eng.OtherApps$3'),(130,3,'football.photo.iconosys.eng.RegistrationScreen$1'),(131,2,'familypics.iconosys.eng.OtherApps$5'),(132,1,'mypromdress.photo.iconosys.eng.RegistrationScreen$1'),(133,4,'springwedding.photo.iconosys.eng.OtherApps$5'),(134,5,'iconosys.valentine.cn.ValentineMain$5'),(135,5,'iconosys.valentine.cn.OtherApps$3'),(136,7,'myexpense.iconosys.eng.Review$3'),(137,5,'iconosys.valentine.cn.ValentineMain$4'),(138,4,'springwedding.photo.iconosys.eng.OtherApps$6'),(139,5,'iconosys.valentine.cn.SweetHeart$2'),(140,4,'springwedding.photo.iconosys.eng.OtherApps$1'),(141,3,'football.photo.iconosys.eng.OtherApps$6'),(142,7,'myexpense.iconosys.eng.MyReceiptManager$6'),(143,5,'iconosys.valentine.cn.OtherApps$1'),(144,5,'iconosys.valentine.cn.OtherApps$5'),(145,7,'myexpense.iconosys.eng.OtherApps$4'),(146,7,'myexpense.iconosys.eng.Mileage$4'),(147,7,'myexpense.iconosys.eng.RegistrationScreen$1'),(148,7,'myexpense.iconosys.eng.OtherApps$3'),(149,7,'myexpense.iconosys.eng.SaveSend$4'),(150,7,'myexpense.iconosys.eng.MyReceiptManager$2'),(151,7,'myexpense.iconosys.eng.OtherApps$6'),(152,7,'myexpense.iconosys.eng.Mileage$8'),(153,7,'myexpense.iconosys.eng.MileageSend$1'),(154,7,'myexpense.iconosys.eng.Review$1'),(155,7,'myexpense.iconosys.eng.OtherApps$5'),(156,7,'myexpense.iconosys.eng.MyReceiptManager$1'),(157,7,'myexpense.iconosys.eng.MyReceiptManager$3'),(158,7,'myexpense.iconosys.eng.SelectRange$5'),(159,7,'myexpense.iconosys.eng.MyReceiptManager$4'),(160,7,'myexpense.iconosys.eng.OtherApps$1'),(161,7,'myexpense.iconosys.eng.OtherApps$2'),(162,7,'myexpense.iconosys.eng.Mileage$5');
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,6,'take_photo'),(2,33,'saved_uri'),(3,25,'_result'),(4,7,'take_photo'),(5,44,'_who'),(6,38,'_answer'),(7,29,'saved_uri'),(8,38,'_question'),(9,25,'_answer'),(10,25,'_index'),(11,8,'take_photo'),(12,8,'pick_photo'),(13,45,'_who'),(14,41,'_who'),(15,43,'_who'),(16,37,'saved_uri'),(17,30,'saved_uri'),(18,5,'pick_photo'),(19,5,'take_photo'),(20,7,'pick_photo'),(21,25,'_question'),(22,6,'pick_photo'),(23,17,'names'),(24,17,'itemcount'),(25,76,'report_type'),(26,77,'range1'),(27,77,'id'),(28,42,'_who'),(29,17,'items'),(30,77,'range2'),(31,17,'_id'),(32,68,'_cat'),(33,58,'(.*)'),(34,76,'Category'),(35,76,'id'),(36,62,'id'),(37,77,'Category'),(38,75,'_id'),(39,60,'_mileage'),(40,62,'report_type'),(41,73,'_who'),(42,70,'_id'),(43,58,'access_token');
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,19,'a',0,NULL,NULL),(19,18,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,30,'a',0,NULL,NULL),(30,29,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'s',0,NULL,NULL),(47,48,'s',0,NULL,NULL),(48,47,'s',0,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,52,'s',0,NULL,NULL),(52,51,'s',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'s',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'r',1,NULL,NULL),(57,57,'s',0,NULL,NULL),(58,58,'a',1,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'s',0,NULL,NULL),(81,107,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,15),(2,2,6),(3,3,23),(4,4,1),(5,5,2),(6,6,6),(7,7,30),(8,8,15),(9,9,37),(10,10,27),(11,11,33),(12,12,2),(13,13,33),(14,14,13),(15,15,3),(16,16,6),(17,17,50),(18,18,13),(19,19,3),(20,20,6),(21,21,12),(22,21,53),(23,22,7),(24,23,30),(25,24,6),(26,25,5),(27,26,3),(28,27,55),(29,28,15),(30,29,5),(31,30,55),(32,31,7),(33,32,2),(34,33,8),(35,34,15),(36,35,50),(37,36,3),(38,37,16),(39,38,2),(40,39,6),(41,40,14),(42,41,25),(43,42,23),(44,43,3),(45,44,4),(46,46,50),(47,45,13),(48,47,24),(49,48,4),(50,49,23),(51,50,56),(52,52,3),(53,51,55),(54,53,27),(55,55,7),(56,54,10),(57,54,11),(58,54,17),(59,56,53),(60,57,5),(61,58,8),(62,59,14),(63,60,50),(64,61,2),(65,62,16),(66,63,5),(67,64,20),(68,65,7),(69,66,12),(70,66,53),(71,67,9),(72,68,8),(73,69,2),(74,70,1),(75,71,7),(76,72,12),(77,72,53),(78,73,10),(79,73,34),(80,73,17),(81,74,8),(82,75,15),(83,76,13),(84,77,14),(85,78,8),(86,79,11),(87,79,10),(88,79,17),(89,80,12),(90,80,53),(91,81,1),(92,82,30),(93,83,16),(94,84,14),(95,85,50),(96,86,17),(97,86,11),(98,86,10),(99,87,5),(100,88,15),(101,89,4),(102,90,2),(103,91,9),(104,92,14),(105,93,53),(106,93,12),(107,94,27),(108,95,31),(109,96,5),(110,97,25),(111,99,5),(112,98,10),(113,100,24),(114,101,6),(115,102,4),(116,103,1),(117,104,12),(118,104,53),(119,105,13),(120,106,7),(121,107,33),(122,108,40),(123,109,25),(124,110,1),(125,111,7),(126,112,5),(127,113,8),(128,114,10),(129,114,9),(130,114,17),(131,115,50),(132,116,4),(133,117,24),(134,118,13),(135,119,31),(136,120,16),(137,121,40),(138,122,53),(139,123,29),(140,125,2),(141,124,9),(142,124,10),(143,124,17),(144,126,4),(145,127,53),(146,127,12),(147,128,4),(148,129,17),(149,129,11),(150,129,10),(151,130,64),(152,131,4),(153,132,17),(154,132,9),(155,132,10),(156,133,74),(157,134,16),(158,135,9),(159,136,71),(160,137,40),(161,137,17),(162,137,10),(163,138,16),(164,139,14),(165,140,58),(166,141,8),(167,142,11),(168,142,10),(169,142,17),(170,143,7),(171,144,8),(172,145,58),(173,146,29),(174,147,22),(175,148,29),(176,149,11),(177,149,10),(178,149,17),(179,150,61),(180,151,3),(181,152,22),(182,153,71),(183,154,3),(184,155,56),(185,156,74),(186,157,9),(187,158,58),(188,159,58),(189,160,61),(190,161,70),(191,162,77),(192,163,64),(193,164,68),(194,165,58),(195,166,61),(196,167,64),(197,168,74),(198,169,58),(199,170,71),(200,171,71),(201,172,64),(202,173,75),(203,174,63),(204,175,58),(205,176,64),(206,177,61),(207,178,69),(208,179,64),(209,180,58),(210,181,71),(211,182,58),(212,183,76),(213,184,58),(214,185,58),(215,186,62),(216,187,62),(217,188,61),(218,189,58),(219,190,71),(220,191,61),(221,192,71),(222,193,71),(223,194,71),(224,195,58),(225,196,58);
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
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,81,'<mypromdress.photo.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(2,6,'<mypromdress.photo.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(3,82,'<familypics.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(4,1,'<mypromdress.photo.iconosys.eng.FrameIt: void onResume()>',14,'a',NULL),(5,83,'<familypics.iconosys.eng.MeInJail$1: void onClick(android.view.View)>',7,'a',NULL),(6,6,'<mypromdress.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',26,'a',NULL),(7,29,'<familypics.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(8,84,'<mypromdress.photo.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(9,37,'<mypromdress.photo.iconosys.eng.ShareImage: void onShareMultipleClicked()>',8,'a',NULL),(10,27,'<springwedding.photo.iconosys.eng.RegistrationScreen: void SendAutoData()>',89,'s',NULL),(11,33,'<springwedding.photo.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(12,2,'<familypics.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(13,33,'<springwedding.photo.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(14,85,'<familypics.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(15,3,'<football.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(16,86,'<mypromdress.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',38,'a',NULL),(17,87,'<thexfactor.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(18,88,'<familypics.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(19,3,'<football.photo.iconosys.eng.MeInJail: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(20,6,'<mypromdress.photo.iconosys.eng.PhotoView: void startCameraActivity()>',14,'a',NULL),(21,12,'<thexfactor.iconosys.eng.PollApp: void onActivityResult(int,int,android.content.Intent)>',25,'a',NULL),(22,7,'<football.photo.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(23,29,'<familypics.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(24,6,'<mypromdress.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',36,'a',NULL),(25,5,'<familypics.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(26,89,'<football.photo.iconosys.eng.MeInJail$2: void onClick(android.view.View)>',7,'a',NULL),(27,55,'<thexfactor.iconosys.eng.RegistrationScreen: void SendAutoData()>',106,'s',NULL),(28,90,'<mypromdress.photo.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(29,5,'<familypics.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(30,55,'<thexfactor.iconosys.eng.RegistrationScreen: void SendPhoneData()>',100,'s',NULL),(31,91,'<football.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',23,'a',NULL),(32,2,'<familypics.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(33,8,'<springwedding.photo.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(34,92,'<mypromdress.photo.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(35,93,'<thexfactor.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(36,3,'<football.photo.iconosys.eng.MeInJail: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(37,94,'<springwedding.photo.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(38,95,'<familypics.iconosys.eng.MeInJail$2: void onClick(android.view.View)>',7,'a',NULL),(39,6,'<mypromdress.photo.iconosys.eng.PhotoView: void onShareMultipleClicked()>',8,'a',NULL),(40,96,'<football.photo.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(41,25,'<thexfactor.iconosys.eng.PollNew: void onCreate(android.os.Bundle)>',50,'a',NULL),(42,23,'<familypics.iconosys.eng.RegistrationScreen: void SendPhoneData()>',93,'s',NULL),(43,97,'<football.photo.iconosys.eng.MeInJail$1: void onClick(android.view.View)>',7,'a',NULL),(44,98,'<springwedding.photo.iconosys.eng.MeInJail$1: void onClick(android.view.View)>',7,'a',NULL),(45,99,'<familypics.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(46,100,'<thexfactor.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(47,24,'<football.photo.iconosys.eng.RegistrationScreen: void SendAutoData()>',89,'s',NULL),(48,4,'<springwedding.photo.iconosys.eng.MeInJail: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(49,23,'<familypics.iconosys.eng.RegistrationScreen: void SendAutoData()>',89,'s',NULL),(50,56,'<iconosys.valentine.cn.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(51,101,'<thexfactor.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(52,3,'<football.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(53,102,'<springwedding.photo.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(54,103,'<iconosys.valentine.cn.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(55,7,'<football.photo.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(56,53,'<thexfactor.iconosys.eng.IconosysActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(57,104,'<familypics.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',23,'a',NULL),(58,8,'<springwedding.photo.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(59,105,'<football.photo.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(60,106,'<thexfactor.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(61,2,'<familypics.iconosys.eng.MeInJail: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(62,108,'<springwedding.photo.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(63,5,'<familypics.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',6,'a',NULL),(64,109,'<mypromdress.photo.iconosys.eng.AdActivity$2: void onClick(android.view.View)>',9,'a',NULL),(65,91,'<football.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',9,'a',NULL),(66,12,'<thexfactor.iconosys.eng.PollApp: void onActivityResult(int,int,android.content.Intent)>',17,'a',NULL),(67,9,'<iconosys.valentine.cn.ValentineMain: void onCreate(android.os.Bundle)>',25,'s',NULL),(68,8,'<springwedding.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(69,2,'<familypics.iconosys.eng.MeInJail: void onResume()>',10,'a',NULL),(70,1,'<mypromdress.photo.iconosys.eng.FrameIt: void onResume()>',21,'a',NULL),(71,7,'<football.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',6,'a',NULL),(72,110,'<thexfactor.iconosys.eng.PollApp$1: void onClick(android.view.View)>',16,'a',NULL),(73,111,'<iconosys.valentine.cn.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(74,112,'<springwedding.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',9,'a',NULL),(75,113,'<mypromdress.photo.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(76,114,'<familypics.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(77,115,'<football.photo.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(78,8,'<springwedding.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',6,'a',NULL),(79,116,'<iconosys.valentine.cn.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(80,53,'<thexfactor.iconosys.eng.IconosysActivity: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(81,117,'<mypromdress.photo.iconosys.eng.FrameIt$2: void onClick(android.view.View)>',7,'a',NULL),(82,29,'<familypics.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(83,118,'<springwedding.photo.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(84,119,'<football.photo.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(85,121,'<thexfactor.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(86,120,'<iconosys.valentine.cn.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(87,5,'<familypics.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(88,122,'<mypromdress.photo.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(89,4,'<springwedding.photo.iconosys.eng.MeInJail: void onCreate(android.os.Bundle)>',6,'a',NULL),(90,2,'<familypics.iconosys.eng.MeInJail: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(91,9,'<iconosys.valentine.cn.ValentineMain: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(92,123,'<football.photo.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(93,53,'<thexfactor.iconosys.eng.IconosysActivity: void onActivityResult(int,int,android.content.Intent)>',11,'p',0),(94,27,'<springwedding.photo.iconosys.eng.RegistrationScreen: void SendPhoneData()>',93,'s',NULL),(95,31,'<mypromdress.photo.iconosys.eng.RegistrationScreen: void SendPhoneData()>',97,'s',NULL),(96,5,'<familypics.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(97,25,'<thexfactor.iconosys.eng.PollNew: void onCreate(android.os.Bundle)>',88,'a',NULL),(98,124,'<iconosys.valentine.cn.MyValentine$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',37,'a',NULL),(99,104,'<familypics.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',9,'a',NULL),(100,24,'<football.photo.iconosys.eng.RegistrationScreen: void SendPhoneData()>',93,'s',NULL),(101,6,'<mypromdress.photo.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(102,125,'<springwedding.photo.iconosys.eng.MeInJail$2: void onClick(android.view.View)>',7,'a',NULL),(103,1,'<mypromdress.photo.iconosys.eng.FrameIt: void onCreate(android.os.Bundle)>',5,'a',NULL),(104,53,'<thexfactor.iconosys.eng.IconosysActivity: void onActivityResult(int,int,android.content.Intent)>',32,'a',NULL),(105,126,'<familypics.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(106,7,'<football.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(107,33,'<springwedding.photo.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(108,40,'<iconosys.valentine.cn.SweetHeart: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(109,25,'<thexfactor.iconosys.eng.PollNew: void onCreate(android.os.Bundle)>',76,'a',NULL),(110,127,'<mypromdress.photo.iconosys.eng.FrameIt$1: void onClick(android.view.View)>',7,'a',NULL),(111,7,'<football.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(112,5,'<familypics.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(113,8,'<springwedding.photo.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(114,128,'<iconosys.valentine.cn.ValentineMain$3: void onClick(android.view.View)>',6,'a',NULL),(115,129,'<thexfactor.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(116,4,'<springwedding.photo.iconosys.eng.MeInJail: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(117,130,'<football.photo.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(118,131,'<familypics.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(119,132,'<mypromdress.photo.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(120,133,'<springwedding.photo.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(121,40,'<iconosys.valentine.cn.SweetHeart: void onActivityResult(int,int,android.content.Intent)>',9,'p',0),(122,53,'<thexfactor.iconosys.eng.IconosysActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(123,30,'<football.photo.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(124,134,'<iconosys.valentine.cn.ValentineMain$5: void onClick(android.view.View)>',6,'a',NULL),(125,2,'<familypics.iconosys.eng.MeInJail: void onCreate(android.os.Bundle)>',6,'a',NULL),(126,4,'<springwedding.photo.iconosys.eng.MeInJail: void onResume()>',14,'a',NULL),(127,53,'<thexfactor.iconosys.eng.IconosysActivity: void onResume()>',17,'a',NULL),(128,4,'<springwedding.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(129,135,'<iconosys.valentine.cn.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(130,136,'<myexpense.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(131,4,'<springwedding.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(132,137,'<iconosys.valentine.cn.ValentineMain$4: void onClick(android.view.View)>',6,'a',NULL),(133,74,'<myexpense.iconosys.eng.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(134,138,'<springwedding.photo.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(135,9,'<iconosys.valentine.cn.ValentineMain: void onResume()>',14,'a',NULL),(136,71,'<myexpense.iconosys.eng.Mileage: void calcDistance()>',34,'a',NULL),(137,139,'<iconosys.valentine.cn.SweetHeart$2: void onClick(android.view.View)>',6,'a',NULL),(138,140,'<springwedding.photo.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(139,141,'<football.photo.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(140,142,'<myexpense.iconosys.eng.MyReceiptManager$6: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(141,8,'<springwedding.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(142,143,'<iconosys.valentine.cn.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(143,7,'<football.photo.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(144,112,'<springwedding.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',23,'a',NULL),(145,58,'<myexpense.iconosys.eng.MyReceiptManager: void onResume()>',10,'a',NULL),(146,30,'<football.photo.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(147,22,'<iconosys.valentine.cn.MyKissHugs: void onCreate(android.os.Bundle)>',36,'s',NULL),(148,30,'<football.photo.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(149,144,'<iconosys.valentine.cn.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(150,145,'<myexpense.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(151,3,'<football.photo.iconosys.eng.MeInJail: void onCreate(android.os.Bundle)>',6,'a',NULL),(152,22,'<iconosys.valentine.cn.MyKissHugs: void onCreate(android.os.Bundle)>',40,'s',NULL),(153,146,'<myexpense.iconosys.eng.Mileage$4: void onClick(android.view.View)>',6,'a',NULL),(154,3,'<football.photo.iconosys.eng.MeInJail: void onResume()>',14,'a',NULL),(155,56,'<iconosys.valentine.cn.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(156,147,'<myexpense.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(157,9,'<iconosys.valentine.cn.ValentineMain: void onCreate(android.os.Bundle)>',21,'s',NULL),(158,142,'<myexpense.iconosys.eng.MyReceiptManager$6: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(159,58,'<myexpense.iconosys.eng.MyReceiptManager: void onCreate(android.os.Bundle)>',6,'a',NULL),(160,148,'<myexpense.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(161,149,'<myexpense.iconosys.eng.SaveSend$4: void onClick(android.view.View)>',89,'a',NULL),(162,77,'<myexpense.iconosys.eng.ReportSheet: void sendToFile()>',22,'a',NULL),(163,136,'<myexpense.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(164,68,'<myexpense.iconosys.eng.SpreadSheet: void sendToFile()>',21,'a',NULL),(165,150,'<myexpense.iconosys.eng.MyReceiptManager$2: void onClick(android.view.View)>',7,'a',NULL),(166,151,'<myexpense.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(167,136,'<myexpense.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(168,74,'<myexpense.iconosys.eng.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(169,142,'<myexpense.iconosys.eng.MyReceiptManager$6: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(170,71,'<myexpense.iconosys.eng.Mileage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(171,152,'<myexpense.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(172,64,'<myexpense.iconosys.eng.Review: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(173,153,'<myexpense.iconosys.eng.MileageSend$1: void onClick(android.view.View)>',49,'a',NULL),(174,63,'<myexpense.iconosys.eng.TakePicture: void startCameraActivity()>',9,'a',NULL),(175,58,'<myexpense.iconosys.eng.MyReceiptManager: void onActivityResult(int,int,android.content.Intent)>',11,'p',0),(176,154,'<myexpense.iconosys.eng.Review$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(177,155,'<myexpense.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(178,69,'<myexpense.iconosys.eng.MileageSheet: void sendToFile()>',21,'a',NULL),(179,136,'<myexpense.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(180,156,'<myexpense.iconosys.eng.MyReceiptManager$1: void onClick(android.view.View)>',7,'a',NULL),(181,152,'<myexpense.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(182,157,'<myexpense.iconosys.eng.MyReceiptManager$3: void onClick(android.view.View)>',7,'a',NULL),(183,158,'<myexpense.iconosys.eng.SelectRange$5: void onClick(android.view.View)>',18,'a',NULL),(184,159,'<myexpense.iconosys.eng.MyReceiptManager$4: void onClick(android.view.View)>',6,'a',NULL),(185,58,'<myexpense.iconosys.eng.MyReceiptManager: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(186,62,'<myexpense.iconosys.eng.ReviewSelection: void getSelection(android.util.SparseBooleanArray)>',20,'a',NULL),(187,62,'<myexpense.iconosys.eng.ReviewSelection: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(188,160,'<myexpense.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(189,58,'<myexpense.iconosys.eng.MyReceiptManager: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(190,152,'<myexpense.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(191,161,'<myexpense.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(192,152,'<myexpense.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(193,162,'<myexpense.iconosys.eng.Mileage$5: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(194,71,'<myexpense.iconosys.eng.Mileage: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(195,58,'<myexpense.iconosys.eng.MyReceiptManager: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(196,142,'<myexpense.iconosys.eng.MyReceiptManager$6: void onClick(android.content.DialogInterface,int)>',27,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,4),(2,2,5),(3,7,6),(4,8,6),(5,9,4),(6,10,6),(7,11,6),(8,12,6),(9,13,6),(10,14,6),(11,15,6),(12,16,6),(13,17,6),(14,18,6),(15,19,6),(16,21,6),(17,22,6),(18,24,6),(19,26,6),(20,27,6),(21,28,4),(22,29,6),(23,30,7),(24,32,6),(25,33,4),(26,34,4),(27,35,6),(28,36,8),(29,37,6),(30,40,8),(31,41,6),(32,43,8),(33,44,6),(34,48,4),(35,47,6),(36,49,5),(37,52,7),(38,53,8),(39,54,4),(40,55,4),(41,56,4),(42,58,6),(43,59,4),(44,60,6),(45,63,6),(46,66,6),(47,67,4),(48,68,4),(49,69,6),(50,71,6),(51,77,6),(52,80,4),(53,79,5),(54,81,6),(55,83,5),(56,85,4),(57,84,4),(58,86,4),(59,88,4),(60,99,4),(61,100,4),(62,101,4),(63,103,4),(64,106,4),(65,107,4),(66,108,4),(67,109,4),(68,111,4),(69,114,4),(70,125,4),(71,132,4),(72,135,4),(73,136,4),(74,137,7),(75,138,6),(76,142,6),(77,144,6),(78,146,4),(79,148,6),(80,149,7),(81,150,6),(82,152,6),(83,154,4),(84,156,6),(85,157,6),(86,159,7),(87,160,4),(88,161,4),(89,164,4),(90,170,4),(91,171,4),(92,181,4),(93,182,6),(94,183,6),(95,184,6),(96,185,6),(97,186,6),(98,187,6),(99,188,6),(100,189,6),(101,190,6),(102,191,6),(103,192,6),(104,193,6),(105,194,6),(106,195,6),(107,196,6),(108,197,6),(109,199,6),(110,200,6),(111,201,6),(112,202,6),(113,203,6),(114,204,6),(115,205,6),(116,206,6),(117,208,4),(118,215,6),(119,216,6),(120,217,6),(121,218,6),(122,219,6),(123,220,6),(124,221,6),(125,222,6),(126,223,8),(127,225,4),(128,226,6),(129,227,6),(130,228,6),(131,229,6),(132,230,6),(133,231,6),(134,232,6),(135,233,6),(136,243,4),(137,245,4),(138,247,10),(139,249,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,3,'familypics/iconosys/eng/ShowTerms'),(2,4,'mypromdress/photo/iconosys/eng/RegistrationScreen'),(3,5,'familypics/iconosys/eng/PhotoView'),(4,6,'mypromdress/photo/iconosys/eng/OtherApps'),(5,20,'springwedding/photo/iconosys/eng/LocationSender'),(6,23,'springwedding/photo/iconosys/eng/AdView'),(7,25,'familypics/iconosys/eng/OtherApps'),(8,31,'mypromdress/photo/iconosys/eng/ShareImage'),(9,38,'thexfactor/iconosys/eng/AdView'),(10,39,'familypics/iconosys/eng/OtherApps'),(11,42,'mypromdress/photo/iconosys/eng/FrameIt'),(12,46,'thexfactor/iconosys/eng/LocationSender'),(13,45,'football/photo/iconosys/eng/PhotoView'),(14,50,'thexfactor/iconosys/eng/LocationSender'),(15,51,'football/photo/iconosys/eng/ShareImage'),(16,57,'familypics/iconosys/eng/PhotoView'),(17,61,'thexfactor/iconosys/eng/PollResult'),(18,62,'familypics/iconosys/eng/LocationSender'),(19,64,'football/photo/iconosys/eng/PhotoView'),(20,65,'springwedding/photo/iconosys/eng/PhotoView'),(21,70,'football/photo/iconosys/eng/LocationSender'),(22,72,'familypics/iconosys/eng/LocationSender'),(23,73,'iconosys/valentine/cn/TickSvc'),(24,75,'thexfactor/iconosys/eng/ShowTerms'),(25,74,'football/photo/iconosys/eng/OtherApps'),(26,76,'springwedding/photo/iconosys/eng/ShowTerms'),(27,78,'thexfactor/iconosys/eng/OtherApps'),(28,82,'familypics/iconosys/eng/ShareImage'),(29,87,'familypics/iconosys/eng/ShowPopUp'),(30,90,'thexfactor/iconosys/eng/PollResult'),(31,89,'football/photo/iconosys/eng/ShowPopUp'),(32,91,'iconosys/valentine/cn/ValentineSvc'),(33,92,'springwedding/photo/iconosys/eng/MeInJail'),(34,93,'familypics/iconosys/eng/RegistrationScreen'),(35,94,'mypromdress/photo/iconosys/eng/AdView'),(36,95,'football/photo/iconosys/eng/ShowPopUp'),(37,97,'iconosys/valentine/cn/ShowTerms'),(38,98,'springwedding/photo/iconosys/eng/ShowPopUp'),(39,96,'thexfactor/iconosys/eng/PollNew'),(40,102,'springwedding/photo/iconosys/eng/ShowPopUp'),(41,105,'familypics/iconosys/eng/AdView'),(42,104,'mypromdress/photo/iconosys/eng/PhotoView'),(43,110,'familypics/iconosys/eng/MeInJail'),(44,112,'springwedding/photo/iconosys/eng/AdView'),(45,113,'iconosys/valentine/cn/OtherApps'),(46,115,'springwedding/photo/iconosys/eng/LocationSender'),(47,116,'mypromdress/photo/iconosys/eng/LocationSender'),(48,117,'thexfactor/iconosys/eng/AdView'),(49,118,'familypics/iconosys/eng/ShowPopUp'),(50,120,'football/photo/iconosys/eng/LocationSender'),(51,121,'springwedding/photo/iconosys/eng/PhotoView'),(52,123,'thexfactor/iconosys/eng/RegistrationScreen'),(53,119,'iconosys/valentine/cn/ItemDialog'),(54,122,'mypromdress/photo/iconosys/eng/AdActivity'),(55,124,'football/photo/iconosys/eng/OtherApps'),(56,126,'springwedding/photo/iconosys/eng/OtherApps'),(57,127,'thexfactor/iconosys/eng/AdView'),(58,128,'mypromdress/photo/iconosys/eng/PhotoView'),(59,129,'football/photo/iconosys/eng/MeInJail'),(60,130,'familypics/iconosys/eng/OtherApps'),(61,131,'iconosys/valentine/cn/MyValentine'),(62,133,'football/photo/iconosys/eng/ShowTerms'),(63,134,'mypromdress/photo/iconosys/eng/ShowTerms'),(64,140,'iconosys/valentine/cn/MyKissHugs'),(65,139,'familypics/iconosys/eng/AdView'),(66,141,'springwedding/photo/iconosys/eng/RegistrationScreen'),(67,143,'thexfactor/iconosys/eng/RegistrationScreen'),(68,145,'springwedding/photo/iconosys/eng/OtherApps'),(69,147,'myexpense/iconosys/eng/ReviewSelection'),(70,151,'iconosys/valentine/cn/SweetHeart'),(71,153,'myexpense/iconosys/eng/LocationSender'),(72,155,'iconosys/valentine/cn/RegistrationScreen'),(73,158,'myexpense/iconosys/eng/MileageAdd'),(74,163,'springwedding/photo/iconosys/eng/OtherApps'),(75,162,'myexpense/iconosys/eng/ReviewSelection'),(76,165,'springwedding/photo/iconosys/eng/ShareImage'),(77,166,'myexpense/iconosys/eng/RegistrationScreen'),(78,167,'football/photo/iconosys/eng/OtherApps'),(79,168,'iconosys/valentine/cn/TickSvc'),(80,169,'football/photo/iconosys/eng/AdView'),(81,172,'football/photo/iconosys/eng/AdView'),(82,173,'iconosys/valentine/cn/TickSvc'),(83,174,'myexpense/iconosys/eng/MileageSheet'),(84,175,'football/photo/iconosys/eng/RegistrationScreen'),(85,176,'iconosys/valentine/cn/ValentineSvc'),(86,177,'myexpense/iconosys/eng/ShowTerms'),(87,178,'iconosys/valentine/cn/ValentineSvc'),(88,179,'myexpense/iconosys/eng/ReviewSelection'),(89,180,'myexpense/iconosys/eng/AdView'),(90,198,'myexpense/iconosys/eng/ReviewSelection'),(91,207,'myexpense/iconosys/eng/Review'),(92,209,'myexpense/iconosys/eng/ReviewSelection'),(93,210,'myexpense/iconosys/eng/LocationSender'),(94,211,'myexpense/iconosys/eng/SelectRange'),(95,212,'myexpense/iconosys/eng/OtherApps'),(96,213,'myexpense/iconosys/eng/ReviewSelection'),(97,214,'myexpense/iconosys/eng/OtherApps'),(98,224,'myexpense/iconosys/eng/SelectRange'),(99,234,'myexpense/iconosys/eng/SelectRange'),(100,235,'myexpense/iconosys/eng/TakePicture'),(101,236,'myexpense/iconosys/eng/ReviewSelection'),(102,237,'myexpense/iconosys/eng/Mileage'),(103,238,'myexpense/iconosys/eng/ReportSheet'),(104,239,'myexpense/iconosys/eng/Settings'),(105,240,'myexpense/iconosys/eng/OtherApps'),(106,241,'myexpense/iconosys/eng/SelectRange'),(107,242,'myexpense/iconosys/eng/OtherApps'),(108,244,'myexpense/iconosys/eng/SelectRange'),(109,246,'myexpense/iconosys/eng/ReviewSelection'),(110,248,'myexpense/iconosys/eng/MileageSheet'),(111,250,'myexpense/iconosys/eng/ReviewSelection');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,9,2),(3,28,3),(4,30,4),(5,33,6),(6,34,7),(7,48,8),(8,52,9),(9,54,10),(10,55,11),(11,56,12),(12,59,13),(13,67,14),(14,68,15),(15,80,17),(16,85,18),(17,84,19),(18,86,20),(19,88,21),(20,99,22),(21,100,23),(22,101,24),(23,103,25),(24,106,27),(25,107,28),(26,109,29),(27,108,30),(28,111,31),(29,114,33),(30,125,34),(31,132,36),(32,135,37),(33,136,38),(34,137,39),(35,146,40),(36,149,41),(37,154,42),(38,159,43),(39,160,44),(40,161,45),(41,164,46),(42,170,47),(43,171,48),(44,181,49),(45,208,50),(46,225,51),(47,243,52),(48,245,54),(49,249,55);
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
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,5,'take_photo'),(2,7,'android.intent.extra.INTENT'),(3,8,'android.intent.extra.INTENT'),(4,10,'android.intent.extra.TITLE'),(5,10,'android.intent.extra.INTENT'),(6,11,'android.intent.extra.INTENT'),(7,12,'android.intent.extra.INTENT'),(8,13,'android.intent.extra.INTENT'),(9,14,'android.intent.extra.TITLE'),(10,14,'android.intent.extra.INTENT'),(11,15,'android.intent.extra.TITLE'),(12,15,'android.intent.extra.INTENT'),(13,16,'android.intent.extra.INTENT'),(14,17,'android.intent.extra.INTENT'),(15,18,'android.intent.extra.TITLE'),(16,18,'android.intent.extra.INTENT'),(17,19,'android.intent.extra.TITLE'),(18,19,'android.intent.extra.INTENT'),(19,21,'android.intent.extra.TITLE'),(20,21,'android.intent.extra.INTENT'),(21,22,'android.intent.extra.INTENT'),(22,24,'android.intent.extra.TITLE'),(23,24,'android.intent.extra.INTENT'),(24,26,'android.intent.extra.TITLE'),(25,27,'android.intent.extra.INTENT'),(26,26,'android.intent.extra.INTENT'),(27,29,'android.intent.extra.INTENT'),(28,31,'saved_uri'),(29,32,'android.intent.extra.TITLE'),(30,32,'android.intent.extra.INTENT'),(31,35,'android.intent.extra.INTENT'),(32,37,'android.intent.extra.TITLE'),(33,36,'output'),(34,37,'android.intent.extra.INTENT'),(35,40,'output'),(36,41,'android.intent.extra.INTENT'),(37,45,'pick_photo'),(38,43,'output'),(39,44,'android.intent.extra.TITLE'),(40,44,'android.intent.extra.INTENT'),(41,47,'android.intent.extra.TITLE'),(42,47,'android.intent.extra.INTENT'),(43,51,'saved_uri'),(44,53,'output'),(45,57,'pick_photo'),(46,58,'android.intent.extra.INTENT'),(47,61,'_answer'),(48,60,'android.intent.extra.INTENT'),(49,61,'_question'),(50,63,'android.intent.extra.TITLE'),(51,64,'take_photo'),(52,63,'android.intent.extra.INTENT'),(53,65,'take_photo'),(54,66,'android.intent.extra.INTENT'),(55,69,'android.intent.extra.TITLE'),(56,69,'android.intent.extra.INTENT'),(57,71,'android.intent.extra.INTENT'),(58,77,'android.intent.extra.TITLE'),(59,77,'android.intent.extra.INTENT'),(60,82,'saved_uri'),(61,81,'android.intent.extra.TITLE'),(62,81,'android.intent.extra.INTENT'),(63,96,'_question'),(64,96,'_answer'),(65,96,'_index'),(66,96,'_result'),(67,104,'pick_photo'),(68,119,'itemcount'),(69,119,'_id'),(70,119,'items'),(71,121,'pick_photo'),(72,119,'names'),(73,128,'take_photo'),(74,138,'android.intent.extra.INTENT'),(75,142,'android.intent.extra.INTENT'),(76,144,'android.intent.extra.TITLE'),(77,144,'android.intent.extra.INTENT'),(78,147,'id'),(79,148,'android.intent.extra.INTENT'),(80,147,'report_type'),(81,150,'android.intent.extra.TITLE'),(82,150,'android.intent.extra.INTENT'),(83,152,'android.intent.extra.INTENT'),(84,156,'android.intent.extra.TITLE'),(85,156,'android.intent.extra.INTENT'),(86,157,'android.intent.extra.TITLE'),(87,158,'_mileage'),(88,157,'android.intent.extra.INTENT'),(89,162,'id'),(90,162,'report_type'),(91,165,'saved_uri'),(92,179,'id'),(93,179,'report_type'),(94,182,'android.intent.extra.INTENT'),(95,183,'android.intent.extra.INTENT'),(96,184,'android.intent.extra.TITLE'),(97,184,'android.intent.extra.INTENT'),(98,185,'android.intent.extra.INTENT'),(99,186,'android.intent.extra.TITLE'),(100,186,'android.intent.extra.INTENT'),(101,187,'android.intent.extra.INTENT'),(102,188,'android.intent.extra.TITLE'),(103,188,'android.intent.extra.INTENT'),(104,189,'android.intent.extra.TITLE'),(105,189,'android.intent.extra.INTENT'),(106,190,'android.intent.extra.INTENT'),(107,191,'android.intent.extra.INTENT'),(108,192,'android.intent.extra.TITLE'),(109,192,'android.intent.extra.INTENT'),(110,193,'android.intent.extra.INTENT'),(111,194,'android.intent.extra.TITLE'),(112,194,'android.intent.extra.INTENT'),(113,195,'android.intent.extra.INTENT'),(114,196,'android.intent.extra.TITLE'),(115,196,'android.intent.extra.INTENT'),(116,197,'android.intent.extra.TITLE'),(117,197,'android.intent.extra.INTENT'),(118,198,'id'),(119,198,'report_type'),(120,199,'android.intent.extra.INTENT'),(121,200,'android.intent.extra.INTENT'),(122,201,'android.intent.extra.TITLE'),(123,201,'android.intent.extra.INTENT'),(124,202,'android.intent.extra.INTENT'),(125,203,'android.intent.extra.TITLE'),(126,203,'android.intent.extra.INTENT'),(127,204,'android.intent.extra.INTENT'),(128,205,'android.intent.extra.TITLE'),(129,205,'android.intent.extra.INTENT'),(130,206,'android.intent.extra.TITLE'),(131,206,'android.intent.extra.INTENT'),(132,209,'id'),(133,209,'report_type'),(134,211,'id'),(135,211,'report_type'),(136,213,'id'),(137,213,'report_type'),(138,215,'android.intent.extra.INTENT'),(139,216,'android.intent.extra.INTENT'),(140,217,'android.intent.extra.TITLE'),(141,217,'android.intent.extra.INTENT'),(142,218,'android.intent.extra.INTENT'),(143,219,'android.intent.extra.TITLE'),(144,219,'android.intent.extra.INTENT'),(145,220,'android.intent.extra.INTENT'),(146,221,'android.intent.extra.TITLE'),(147,221,'android.intent.extra.INTENT'),(148,222,'android.intent.extra.TITLE'),(149,222,'android.intent.extra.INTENT'),(150,223,'output'),(151,224,'id'),(152,224,'report_type'),(153,226,'android.intent.extra.INTENT'),(154,227,'android.intent.extra.INTENT'),(155,228,'android.intent.extra.TITLE'),(156,228,'android.intent.extra.INTENT'),(157,229,'android.intent.extra.INTENT'),(158,230,'android.intent.extra.TITLE'),(159,230,'android.intent.extra.INTENT'),(160,231,'android.intent.extra.INTENT'),(161,232,'android.intent.extra.TITLE'),(162,232,'android.intent.extra.INTENT'),(163,233,'android.intent.extra.TITLE'),(164,233,'android.intent.extra.INTENT'),(165,234,'id'),(166,234,'report_type'),(167,236,'id'),(168,236,'report_type'),(169,238,'id'),(170,238,'Category'),(171,238,'range1'),(172,238,'range2'),(173,241,'id'),(174,241,'Category'),(175,241,'report_type'),(176,244,'id'),(177,244,'report_type'),(178,246,'id'),(179,246,'report_type'),(180,250,'id'),(181,250,'report_type');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,2),(6,6,2),(7,7,2),(8,8,2),(9,9,1),(10,10,1),(11,11,3),(12,12,1),(13,13,9),(14,14,9);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,6,2),(6,5,2),(7,7,2),(8,8,2),(9,9,1),(10,10,1),(11,12,1);
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
INSERT INTO `IFData` VALUES (1,6,'sms',NULL,NULL,NULL,NULL,NULL),(2,5,'sms',NULL,NULL,NULL,NULL,NULL),(3,7,'sms',NULL,NULL,NULL,NULL,NULL),(4,5,'mms',NULL,NULL,NULL,NULL,NULL),(5,8,'sms',NULL,NULL,NULL,NULL,NULL),(6,6,'mms',NULL,NULL,NULL,NULL,NULL),(7,7,'mms',NULL,NULL,NULL,NULL,NULL),(8,5,'mmsto',NULL,NULL,NULL,NULL,NULL),(9,6,'mmsto',NULL,NULL,NULL,NULL,NULL),(10,8,'mms',NULL,NULL,NULL,NULL,NULL),(11,7,'mmsto',NULL,NULL,NULL,NULL,NULL),(12,8,'mmsto',NULL,NULL,NULL,NULL,NULL),(13,6,NULL,NULL,NULL,NULL,'image','*'),(14,5,NULL,NULL,NULL,NULL,'image','*'),(15,7,NULL,NULL,NULL,NULL,'image','*'),(16,6,NULL,NULL,NULL,NULL,'video','*'),(17,5,NULL,NULL,NULL,NULL,'video','*'),(18,8,NULL,NULL,NULL,NULL,'image','*'),(19,7,NULL,NULL,NULL,NULL,'video','*'),(20,5,NULL,NULL,NULL,NULL,'audio','*'),(21,6,NULL,NULL,NULL,NULL,'audio','*'),(22,8,NULL,NULL,NULL,NULL,'video','*'),(23,7,NULL,NULL,NULL,NULL,'audio','*'),(24,8,NULL,NULL,NULL,NULL,'audio','*');
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
INSERT INTO `IMimeTypes` VALUES (1,2,'image','*'),(2,49,'image','*'),(3,79,'image','*'),(4,83,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,3,'familypics.iconosys.eng'),(2,4,'mypromdress.photo.iconosys.eng'),(3,5,'familypics.iconosys.eng'),(4,6,'mypromdress.photo.iconosys.eng'),(5,20,'springwedding.photo.iconosys.eng'),(6,23,'springwedding.photo.iconosys.eng'),(7,25,'familypics.iconosys.eng'),(8,31,'mypromdress.photo.iconosys.eng'),(9,38,'thexfactor.iconosys.eng'),(10,39,'familypics.iconosys.eng'),(11,42,'mypromdress.photo.iconosys.eng'),(12,46,'thexfactor.iconosys.eng'),(13,45,'football.photo.iconosys.eng'),(14,50,'thexfactor.iconosys.eng'),(15,51,'football.photo.iconosys.eng'),(16,57,'familypics.iconosys.eng'),(17,62,'familypics.iconosys.eng'),(18,61,'thexfactor.iconosys.eng'),(19,64,'football.photo.iconosys.eng'),(20,65,'springwedding.photo.iconosys.eng'),(21,70,'football.photo.iconosys.eng'),(22,72,'familypics.iconosys.eng'),(23,73,'iconosys.valentine.cn'),(24,74,'football.photo.iconosys.eng'),(25,75,'thexfactor.iconosys.eng'),(26,76,'springwedding.photo.iconosys.eng'),(27,78,'thexfactor.iconosys.eng'),(28,82,'familypics.iconosys.eng'),(29,87,'familypics.iconosys.eng'),(30,90,'thexfactor.iconosys.eng'),(31,89,'football.photo.iconosys.eng'),(32,91,'iconosys.valentine.cn'),(33,92,'springwedding.photo.iconosys.eng'),(34,93,'familypics.iconosys.eng'),(35,94,'mypromdress.photo.iconosys.eng'),(36,95,'football.photo.iconosys.eng'),(37,97,'iconosys.valentine.cn'),(38,98,'springwedding.photo.iconosys.eng'),(39,96,'thexfactor.iconosys.eng'),(40,102,'springwedding.photo.iconosys.eng'),(41,105,'familypics.iconosys.eng'),(42,104,'mypromdress.photo.iconosys.eng'),(43,110,'familypics.iconosys.eng'),(44,112,'springwedding.photo.iconosys.eng'),(45,113,'iconosys.valentine.cn'),(46,115,'springwedding.photo.iconosys.eng'),(47,116,'mypromdress.photo.iconosys.eng'),(48,117,'thexfactor.iconosys.eng'),(49,118,'familypics.iconosys.eng'),(50,120,'football.photo.iconosys.eng'),(51,121,'springwedding.photo.iconosys.eng'),(52,122,'mypromdress.photo.iconosys.eng'),(53,119,'iconosys.valentine.cn'),(54,123,'thexfactor.iconosys.eng'),(55,124,'football.photo.iconosys.eng'),(56,126,'springwedding.photo.iconosys.eng'),(57,127,'thexfactor.iconosys.eng'),(58,128,'mypromdress.photo.iconosys.eng'),(59,129,'football.photo.iconosys.eng'),(60,130,'familypics.iconosys.eng'),(61,131,'iconosys.valentine.cn'),(62,133,'football.photo.iconosys.eng'),(63,134,'mypromdress.photo.iconosys.eng'),(64,139,'familypics.iconosys.eng'),(65,140,'iconosys.valentine.cn'),(66,141,'springwedding.photo.iconosys.eng'),(67,143,'thexfactor.iconosys.eng'),(68,145,'springwedding.photo.iconosys.eng'),(69,147,'myexpense.iconosys.eng'),(70,151,'iconosys.valentine.cn'),(71,153,'myexpense.iconosys.eng'),(72,155,'iconosys.valentine.cn'),(73,158,'myexpense.iconosys.eng'),(74,163,'springwedding.photo.iconosys.eng'),(75,162,'myexpense.iconosys.eng'),(76,165,'springwedding.photo.iconosys.eng'),(77,166,'myexpense.iconosys.eng'),(78,168,'iconosys.valentine.cn'),(79,167,'football.photo.iconosys.eng'),(80,169,'football.photo.iconosys.eng'),(81,172,'football.photo.iconosys.eng'),(82,173,'iconosys.valentine.cn'),(83,174,'myexpense.iconosys.eng'),(84,175,'football.photo.iconosys.eng'),(85,176,'iconosys.valentine.cn'),(86,177,'myexpense.iconosys.eng'),(87,178,'iconosys.valentine.cn'),(88,179,'myexpense.iconosys.eng'),(89,180,'myexpense.iconosys.eng'),(90,198,'myexpense.iconosys.eng'),(91,207,'myexpense.iconosys.eng'),(92,209,'myexpense.iconosys.eng'),(93,210,'myexpense.iconosys.eng'),(94,211,'myexpense.iconosys.eng'),(95,212,'myexpense.iconosys.eng'),(96,213,'myexpense.iconosys.eng'),(97,214,'myexpense.iconosys.eng'),(98,224,'myexpense.iconosys.eng'),(99,234,'myexpense.iconosys.eng'),(100,235,'myexpense.iconosys.eng'),(101,236,'myexpense.iconosys.eng'),(102,237,'myexpense.iconosys.eng'),(103,238,'myexpense.iconosys.eng'),(104,239,'myexpense.iconosys.eng'),(105,240,'myexpense.iconosys.eng'),(106,241,'myexpense.iconosys.eng'),(107,242,'myexpense.iconosys.eng'),(108,244,'myexpense.iconosys.eng'),(109,246,'myexpense.iconosys.eng'),(110,248,'myexpense.iconosys.eng'),(111,250,'myexpense.iconosys.eng');
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
INSERT INTO `IntentFilters` VALUES (1,2,0),(2,1,0),(3,3,0),(4,4,0),(5,5,0),(6,7,0),(7,6,0),(8,8,0),(9,9,0),(10,12,0),(11,56,0),(12,58,0),(13,81,0),(14,56,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,1,0),(8,7,1,0),(9,8,1,0),(10,7,1,0),(11,9,1,0),(12,7,1,0),(13,9,1,0),(14,7,1,0),(15,9,1,0),(16,7,1,0),(17,9,1,0),(18,7,1,0),(19,9,1,0),(20,10,0,0),(21,7,1,0),(22,9,1,0),(23,11,0,0),(24,9,1,0),(25,12,0,0),(26,9,1,0),(27,13,1,0),(28,14,1,0),(29,13,1,0),(30,15,1,0),(31,16,0,0),(32,13,1,0),(33,17,1,0),(34,18,1,0),(35,13,1,0),(36,20,1,0),(37,13,1,0),(38,21,0,0),(39,23,0,0),(40,22,1,0),(41,13,1,0),(42,24,0,0),(43,25,1,0),(44,13,1,0),(45,26,0,0),(46,27,0,0),(47,13,1,0),(48,28,1,0),(49,29,1,0),(50,30,0,0),(51,31,0,0),(52,32,1,0),(53,33,1,0),(54,34,1,0),(55,35,1,0),(56,37,1,0),(57,38,0,0),(58,39,1,0),(59,40,1,0),(60,39,1,0),(61,41,0,0),(62,42,0,0),(63,39,1,0),(64,43,0,0),(65,44,0,0),(66,39,1,0),(67,46,1,0),(68,45,1,0),(69,39,1,0),(70,47,0,0),(71,39,1,0),(72,49,0,0),(73,50,0,0),(74,52,0,0),(75,51,0,0),(76,53,0,0),(77,39,1,0),(78,56,0,0),(79,55,1,0),(80,54,1,0),(81,39,1,0),(82,57,0,0),(83,58,1,0),(84,60,1,0),(85,59,1,0),(86,62,1,0),(87,63,0,0),(88,64,1,0),(89,65,0,0),(90,66,0,0),(91,67,0,0),(92,68,0,0),(93,69,0,0),(94,70,0,0),(95,71,0,0),(96,72,0,0),(97,73,0,0),(98,74,0,0),(99,75,1,0),(100,76,1,0),(101,77,1,0),(102,78,0,0),(103,79,1,0),(104,81,0,0),(105,82,0,0),(106,83,1,0),(107,84,1,0),(108,85,1,0),(109,86,1,0),(110,87,0,0),(111,88,1,0),(112,89,0,0),(113,91,0,0),(114,92,1,0),(115,94,0,0),(116,95,0,0),(117,97,0,0),(118,99,0,0),(119,98,0,0),(120,100,0,0),(121,102,0,0),(122,103,0,0),(123,104,0,0),(124,106,0,0),(125,105,1,0),(126,107,0,0),(127,109,0,0),(128,110,0,0),(129,111,0,0),(130,112,0,0),(131,114,0,0),(132,115,1,0),(133,117,0,0),(134,119,0,0),(135,118,1,0),(136,120,1,0),(137,122,1,0),(138,123,1,0),(139,125,0,0),(140,124,0,0),(141,126,0,0),(142,123,1,0),(143,127,0,0),(144,123,1,0),(145,128,0,0),(146,129,1,0),(147,130,0,0),(148,123,1,0),(149,131,1,0),(150,123,1,0),(151,132,0,0),(152,123,1,0),(153,133,0,0),(154,134,1,0),(155,135,0,0),(156,123,1,0),(157,123,1,0),(158,136,0,0),(159,137,1,0),(160,138,1,0),(161,139,1,0),(162,140,0,0),(163,141,0,0),(164,142,1,0),(165,144,0,0),(166,145,0,0),(167,146,0,0),(168,147,0,0),(169,148,0,0),(170,149,1,0),(171,150,1,0),(172,151,0,0),(173,152,0,0),(174,153,0,0),(175,154,0,0),(176,155,0,0),(177,156,0,0),(178,157,0,0),(179,158,0,0),(180,159,0,0),(181,160,1,0),(182,161,1,0),(183,161,1,0),(184,161,1,0),(185,161,1,0),(186,161,1,0),(187,161,1,0),(188,161,1,0),(189,161,1,0),(190,162,1,0),(191,162,1,0),(192,162,1,0),(193,162,1,0),(194,162,1,0),(195,162,1,0),(196,162,1,0),(197,162,1,0),(198,163,0,0),(199,164,1,0),(200,164,1,0),(201,164,1,0),(202,164,1,0),(203,164,1,0),(204,164,1,0),(205,164,1,0),(206,164,1,0),(207,165,0,0),(208,166,1,0),(209,167,0,0),(210,168,0,0),(211,169,0,0),(212,170,0,0),(213,171,0,0),(214,172,0,0),(215,173,1,0),(216,173,1,0),(217,173,1,0),(218,173,1,0),(219,173,1,0),(220,173,1,0),(221,173,1,0),(222,173,1,0),(223,174,1,0),(224,176,0,0),(225,177,1,0),(226,178,1,0),(227,178,1,0),(228,178,1,0),(229,178,1,0),(230,178,1,0),(231,178,1,0),(232,178,1,0),(233,178,1,0),(234,179,0,0),(235,180,0,0),(236,181,0,0),(237,182,0,0),(238,183,0,0),(239,184,0,0),(240,185,0,0),(241,186,0,0),(242,187,0,0),(243,188,1,0),(244,190,0,0),(245,191,1,0),(246,192,0,0),(247,193,1,0),(248,194,0,0),(249,195,1,0),(250,196,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=685 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,112,45,2,NULL),(2,25,13,2,NULL),(3,141,27,2,NULL),(4,93,23,2,NULL),(5,145,16,2,NULL),(6,139,41,2,NULL),(7,36,4,2,NULL),(8,36,2,2,NULL),(9,58,4,2,NULL),(10,58,2,2,NULL),(11,60,4,2,NULL),(12,60,2,2,NULL),(13,63,4,2,NULL),(14,63,2,2,NULL),(15,66,4,2,NULL),(16,66,2,2,NULL),(17,69,4,2,NULL),(18,69,2,2,NULL),(19,71,4,2,NULL),(20,71,2,2,NULL),(21,77,4,2,NULL),(22,77,2,2,NULL),(23,81,4,2,NULL),(24,81,2,2,NULL),(25,11,4,2,NULL),(26,11,2,2,NULL),(27,13,4,2,NULL),(28,13,2,2,NULL),(29,15,4,2,NULL),(30,15,2,2,NULL),(31,17,4,2,NULL),(32,17,2,2,NULL),(33,19,4,2,NULL),(34,19,2,2,NULL),(35,22,4,2,NULL),(36,22,2,2,NULL),(37,24,4,2,NULL),(38,24,2,2,NULL),(39,26,4,2,NULL),(40,26,2,2,NULL),(41,43,4,2,NULL),(42,43,2,2,NULL),(43,7,4,2,NULL),(44,7,2,2,NULL),(45,8,4,2,NULL),(46,8,2,2,NULL),(47,10,4,2,NULL),(48,10,2,2,NULL),(49,12,4,2,NULL),(50,12,2,2,NULL),(51,14,4,2,NULL),(52,14,2,2,NULL),(53,16,4,2,NULL),(54,16,2,2,NULL),(55,18,4,2,NULL),(56,18,2,2,NULL),(57,21,4,2,NULL),(58,21,2,2,NULL),(59,40,4,2,NULL),(60,40,2,2,NULL),(61,138,4,2,NULL),(62,138,2,2,NULL),(63,142,4,2,NULL),(64,142,2,2,NULL),(65,144,4,2,NULL),(66,144,2,2,NULL),(67,148,4,2,NULL),(68,148,2,2,NULL),(69,150,4,2,NULL),(70,150,2,2,NULL),(71,152,4,2,NULL),(72,152,2,2,NULL),(73,156,4,2,NULL),(74,156,2,2,NULL),(75,157,4,2,NULL),(76,157,2,2,NULL),(77,53,4,2,NULL),(78,53,2,2,NULL),(79,27,4,2,NULL),(80,27,2,2,NULL),(81,29,4,2,NULL),(82,29,2,2,NULL),(83,32,4,2,NULL),(84,32,2,2,NULL),(85,35,4,2,NULL),(86,35,2,2,NULL),(87,37,4,2,NULL),(88,37,2,2,NULL),(89,41,4,2,NULL),(90,41,2,2,NULL),(91,44,4,2,NULL),(92,44,2,2,NULL),(93,47,4,2,NULL),(94,47,2,2,NULL),(95,223,4,2,NULL),(96,223,2,2,NULL),(97,199,4,2,NULL),(98,199,2,2,NULL),(99,200,4,2,NULL),(100,200,2,2,NULL),(101,201,4,2,NULL),(102,201,2,2,NULL),(103,202,4,2,NULL),(104,202,2,2,NULL),(105,203,4,2,NULL),(106,203,2,2,NULL),(107,204,4,2,NULL),(108,204,2,2,NULL),(109,205,4,2,NULL),(110,205,2,2,NULL),(111,206,4,2,NULL),(112,206,2,2,NULL),(113,226,4,2,NULL),(114,226,2,2,NULL),(115,227,4,2,NULL),(116,227,2,2,NULL),(117,228,4,2,NULL),(118,228,2,2,NULL),(119,229,4,2,NULL),(120,229,2,2,NULL),(121,230,4,2,NULL),(122,230,2,2,NULL),(123,231,4,2,NULL),(124,231,2,2,NULL),(125,232,4,2,NULL),(126,232,2,2,NULL),(127,233,4,2,NULL),(128,233,2,2,NULL),(129,190,4,2,NULL),(130,190,2,2,NULL),(131,191,4,2,NULL),(132,191,2,2,NULL),(133,192,4,2,NULL),(134,91,46,2,NULL),(135,192,2,2,NULL),(136,193,4,2,NULL),(137,193,2,2,NULL),(138,113,11,2,NULL),(139,194,4,2,NULL),(140,194,2,2,NULL),(141,155,34,2,NULL),(142,195,4,2,NULL),(143,195,2,2,NULL),(144,196,4,2,NULL),(145,196,2,2,NULL),(146,178,46,2,NULL),(147,197,4,2,NULL),(148,197,2,2,NULL),(149,92,4,2,NULL),(150,36,9,2,NULL),(151,87,36,2,NULL),(152,102,39,2,NULL),(153,110,2,2,NULL),(154,58,9,2,NULL),(155,163,16,2,NULL),(156,130,13,2,NULL),(157,38,44,2,NULL),(158,53,1,2,NULL),(159,60,9,2,NULL),(160,43,1,2,NULL),(161,53,3,2,NULL),(162,63,9,2,NULL),(163,90,38,2,NULL),(164,43,3,2,NULL),(165,53,9,2,NULL),(166,43,9,2,NULL),(167,66,9,2,NULL),(168,53,56,2,NULL),(169,36,12,2,NULL),(170,43,56,2,NULL),(171,53,81,2,NULL),(172,69,9,2,NULL),(173,58,12,2,NULL),(174,43,81,2,NULL),(175,53,12,2,NULL),(176,71,9,2,NULL),(177,60,12,2,NULL),(178,43,12,2,NULL),(179,53,58,2,NULL),(180,77,9,2,NULL),(181,63,12,2,NULL),(182,43,58,2,NULL),(183,20,51,2,NULL),(184,81,9,2,NULL),(185,62,48,2,NULL),(186,66,12,2,NULL),(187,115,51,2,NULL),(188,72,48,2,NULL),(189,11,9,2,NULL),(190,69,12,2,NULL),(191,23,45,2,NULL),(192,39,13,2,NULL),(193,126,16,2,NULL),(194,13,9,2,NULL),(195,71,12,2,NULL),(196,105,41,2,NULL),(197,27,1,2,NULL),(198,7,1,2,NULL),(199,15,9,2,NULL),(200,77,12,2,NULL),(201,29,1,2,NULL),(202,8,1,2,NULL),(203,32,1,2,NULL),(204,17,9,2,NULL),(205,81,12,2,NULL),(206,10,1,2,NULL),(207,35,1,2,NULL),(208,19,9,2,NULL),(209,11,12,2,NULL),(210,12,1,2,NULL),(211,37,1,2,NULL),(212,22,9,2,NULL),(213,13,12,2,NULL),(214,14,1,2,NULL),(215,41,1,2,NULL),(216,15,12,2,NULL),(217,24,9,2,NULL),(218,16,1,2,NULL),(219,44,1,2,NULL),(220,18,1,2,NULL),(221,26,9,2,NULL),(222,17,12,2,NULL),(223,47,1,2,NULL),(224,21,1,2,NULL),(225,27,3,2,NULL),(226,7,9,2,NULL),(227,19,12,2,NULL),(228,7,3,2,NULL),(229,29,3,2,NULL),(230,8,3,2,NULL),(231,8,9,2,NULL),(232,22,12,2,NULL),(233,32,3,2,NULL),(234,10,3,2,NULL),(235,10,9,2,NULL),(236,24,12,2,NULL),(237,35,3,2,NULL),(238,12,3,2,NULL),(239,37,3,2,NULL),(240,12,9,2,NULL),(241,26,12,2,NULL),(242,14,3,2,NULL),(243,41,3,2,NULL),(244,16,3,2,NULL),(245,14,9,2,NULL),(246,7,12,2,NULL),(247,44,3,2,NULL),(248,18,3,2,NULL),(249,16,9,2,NULL),(250,47,3,2,NULL),(251,8,12,2,NULL),(252,21,3,2,NULL),(253,18,9,2,NULL),(254,27,9,2,NULL),(255,21,9,2,NULL),(256,10,12,2,NULL),(257,7,56,2,NULL),(258,29,9,2,NULL),(259,8,56,2,NULL),(260,40,9,2,NULL),(261,12,12,2,NULL),(262,32,9,2,NULL),(263,14,12,2,NULL),(264,138,9,2,NULL),(265,10,56,2,NULL),(266,35,9,2,NULL),(267,12,56,2,NULL),(268,37,9,2,NULL),(269,142,9,2,NULL),(270,16,12,2,NULL),(271,14,56,2,NULL),(272,41,9,2,NULL),(273,144,9,2,NULL),(274,18,12,2,NULL),(275,16,56,2,NULL),(276,44,9,2,NULL),(277,148,9,2,NULL),(278,21,12,2,NULL),(279,18,56,2,NULL),(280,47,9,2,NULL),(281,150,9,2,NULL),(282,21,56,2,NULL),(283,40,12,2,NULL),(284,27,56,2,NULL),(285,152,9,2,NULL),(286,7,81,2,NULL),(287,138,12,2,NULL),(288,29,56,2,NULL),(289,156,9,2,NULL),(290,8,81,2,NULL),(291,142,12,2,NULL),(292,32,56,2,NULL),(293,157,9,2,NULL),(294,10,81,2,NULL),(295,144,12,2,NULL),(296,35,56,2,NULL),(297,223,9,2,NULL),(298,12,81,2,NULL),(299,148,12,2,NULL),(300,37,56,2,NULL),(301,199,9,2,NULL),(302,14,81,2,NULL),(303,150,12,2,NULL),(304,41,56,2,NULL),(305,200,9,2,NULL),(306,16,81,2,NULL),(307,152,12,2,NULL),(308,44,56,2,NULL),(309,201,9,2,NULL),(310,18,81,2,NULL),(311,156,12,2,NULL),(312,47,56,2,NULL),(313,202,9,2,NULL),(314,21,81,2,NULL),(315,157,12,2,NULL),(316,27,81,2,NULL),(317,203,9,2,NULL),(318,7,58,2,NULL),(319,29,81,2,NULL),(320,204,9,2,NULL),(321,27,12,2,NULL),(322,8,58,2,NULL),(323,32,81,2,NULL),(324,205,9,2,NULL),(325,29,12,2,NULL),(326,10,58,2,NULL),(327,35,81,2,NULL),(328,206,9,2,NULL),(329,32,12,2,NULL),(330,12,58,2,NULL),(331,37,81,2,NULL),(332,226,9,2,NULL),(333,35,12,2,NULL),(334,14,58,2,NULL),(335,41,81,2,NULL),(336,227,9,2,NULL),(337,37,12,2,NULL),(338,16,58,2,NULL),(339,44,81,2,NULL),(340,228,9,2,NULL),(341,18,58,2,NULL),(342,41,12,2,NULL),(343,47,81,2,NULL),(344,229,9,2,NULL),(345,21,58,2,NULL),(346,230,9,2,NULL),(347,44,12,2,NULL),(348,47,12,2,NULL),(349,27,58,2,NULL),(350,231,9,2,NULL),(351,223,12,2,NULL),(352,29,58,2,NULL),(353,232,9,2,NULL),(354,199,12,2,NULL),(355,32,58,2,NULL),(356,233,9,2,NULL),(357,200,12,2,NULL),(358,35,58,2,NULL),(359,190,9,2,NULL),(360,201,12,2,NULL),(361,37,58,2,NULL),(362,191,9,2,NULL),(363,202,12,2,NULL),(364,41,58,2,NULL),(365,192,9,2,NULL),(366,203,12,2,NULL),(367,44,58,2,NULL),(368,193,9,2,NULL),(369,204,12,2,NULL),(370,47,58,2,NULL),(371,194,9,2,NULL),(372,205,12,2,NULL),(373,195,9,2,NULL),(374,206,12,2,NULL),(375,196,9,2,NULL),(376,226,12,2,NULL),(377,197,9,2,NULL),(378,227,12,2,NULL),(379,168,52,2,NULL),(380,228,12,2,NULL),(381,173,52,2,NULL),(382,229,12,2,NULL),(383,73,52,2,NULL),(384,230,12,2,NULL),(385,176,46,2,NULL),(386,231,12,2,NULL),(387,36,56,2,NULL),(388,232,12,2,NULL),(389,58,56,2,NULL),(390,233,12,2,NULL),(391,60,56,2,NULL),(392,190,12,2,NULL),(393,63,56,2,NULL),(394,191,12,2,NULL),(395,66,56,2,NULL),(396,192,12,2,NULL),(397,69,56,2,NULL),(398,193,12,2,NULL),(399,71,56,2,NULL),(400,194,12,2,NULL),(401,77,56,2,NULL),(402,195,12,2,NULL),(403,81,56,2,NULL),(404,196,12,2,NULL),(405,11,56,2,NULL),(406,197,12,2,NULL),(407,13,56,2,NULL),(408,61,38,2,NULL),(409,15,56,2,NULL),(410,117,44,2,NULL),(411,17,56,2,NULL),(412,127,44,2,NULL),(413,19,56,2,NULL),(414,78,50,2,NULL),(415,22,56,2,NULL),(416,123,55,2,NULL),(417,24,56,2,NULL),(418,143,55,2,NULL),(419,26,56,2,NULL),(420,46,57,2,NULL),(421,40,56,2,NULL),(422,50,57,2,NULL),(423,138,56,2,NULL),(424,142,56,2,NULL),(425,144,56,2,NULL),(426,148,56,2,NULL),(427,150,56,2,NULL),(428,152,56,2,NULL),(429,156,56,2,NULL),(430,157,56,2,NULL),(431,223,56,2,NULL),(432,199,56,2,NULL),(433,200,56,2,NULL),(434,201,56,2,NULL),(435,202,56,2,NULL),(436,203,56,2,NULL),(437,204,56,2,NULL),(438,205,56,2,NULL),(439,206,56,2,NULL),(440,226,56,2,NULL),(441,227,56,2,NULL),(442,228,56,2,NULL),(443,229,56,2,NULL),(444,230,56,2,NULL),(445,231,56,2,NULL),(446,232,56,2,NULL),(447,233,56,2,NULL),(448,190,56,2,NULL),(449,191,56,2,NULL),(450,192,56,2,NULL),(451,193,56,2,NULL),(452,194,56,2,NULL),(453,195,56,2,NULL),(454,196,56,2,NULL),(455,197,56,2,NULL),(456,36,81,2,NULL),(457,58,81,2,NULL),(458,60,81,2,NULL),(459,63,81,2,NULL),(460,66,81,2,NULL),(461,69,81,2,NULL),(462,71,81,2,NULL),(463,77,81,2,NULL),(464,81,81,2,NULL),(465,11,81,2,NULL),(466,13,81,2,NULL),(467,15,81,2,NULL),(468,17,81,2,NULL),(469,19,81,2,NULL),(470,22,81,2,NULL),(471,24,81,2,NULL),(472,26,81,2,NULL),(473,40,81,2,NULL),(474,138,81,2,NULL),(475,142,81,2,NULL),(476,144,81,2,NULL),(477,148,81,2,NULL),(478,150,81,2,NULL),(479,152,81,2,NULL),(480,156,81,2,NULL),(481,157,81,2,NULL),(482,223,81,2,NULL),(483,199,81,2,NULL),(484,200,81,2,NULL),(485,201,81,2,NULL),(486,202,81,2,NULL),(487,203,81,2,NULL),(488,204,81,2,NULL),(489,205,81,2,NULL),(490,206,81,2,NULL),(491,226,81,2,NULL),(492,227,81,2,NULL),(493,228,81,2,NULL),(494,229,81,2,NULL),(495,230,81,2,NULL),(496,231,81,2,NULL),(497,232,81,2,NULL),(498,233,81,2,NULL),(499,190,81,2,NULL),(500,191,81,2,NULL),(501,192,81,2,NULL),(502,193,81,2,NULL),(503,194,81,2,NULL),(504,195,81,2,NULL),(505,196,81,2,NULL),(506,197,81,2,NULL),(507,166,74,2,NULL),(508,180,73,2,NULL),(509,240,61,2,NULL),(510,36,58,2,NULL),(511,58,58,2,NULL),(512,60,58,2,NULL),(513,63,58,2,NULL),(514,66,58,2,NULL),(515,69,58,2,NULL),(516,71,58,2,NULL),(517,77,58,2,NULL),(518,81,58,2,NULL),(519,11,58,2,NULL),(520,13,58,2,NULL),(521,15,58,2,NULL),(522,17,58,2,NULL),(523,19,58,2,NULL),(524,22,58,2,NULL),(525,24,58,2,NULL),(526,26,58,2,NULL),(527,40,58,2,NULL),(528,138,58,2,NULL),(529,142,58,2,NULL),(530,144,58,2,NULL),(531,148,58,2,NULL),(532,150,58,2,NULL),(533,152,58,2,NULL),(534,156,58,2,NULL),(535,157,58,2,NULL),(536,223,58,2,NULL),(537,199,58,2,NULL),(538,200,58,2,NULL),(539,201,58,2,NULL),(540,202,58,2,NULL),(541,203,58,2,NULL),(542,204,58,2,NULL),(543,205,58,2,NULL),(544,206,58,2,NULL),(545,226,58,2,NULL),(546,227,58,2,NULL),(547,228,58,2,NULL),(548,229,58,2,NULL),(549,230,58,2,NULL),(550,231,58,2,NULL),(551,232,58,2,NULL),(552,233,58,2,NULL),(553,190,58,2,NULL),(554,191,58,2,NULL),(555,192,58,2,NULL),(556,193,58,2,NULL),(557,194,58,2,NULL),(558,195,58,2,NULL),(559,196,58,2,NULL),(560,197,58,2,NULL),(561,241,76,2,NULL),(562,242,61,2,NULL),(563,223,1,2,NULL),(564,223,3,2,NULL),(565,214,61,2,NULL),(566,199,1,2,NULL),(567,200,1,2,NULL),(568,201,1,2,NULL),(569,202,1,2,NULL),(570,203,1,2,NULL),(571,204,1,2,NULL),(572,205,1,2,NULL),(573,206,1,2,NULL),(574,199,3,2,NULL),(575,200,3,2,NULL),(576,201,3,2,NULL),(577,202,3,2,NULL),(578,203,3,2,NULL),(579,204,3,2,NULL),(580,205,3,2,NULL),(581,206,3,2,NULL),(582,226,1,2,NULL),(583,227,1,2,NULL),(584,228,1,2,NULL),(585,229,1,2,NULL),(586,230,1,2,NULL),(587,231,1,2,NULL),(588,232,1,2,NULL),(589,233,1,2,NULL),(590,226,3,2,NULL),(591,227,3,2,NULL),(592,228,3,2,NULL),(593,229,3,2,NULL),(594,230,3,2,NULL),(595,231,3,2,NULL),(596,232,3,2,NULL),(597,233,3,2,NULL),(598,158,60,2,NULL),(599,212,61,2,NULL),(600,248,69,2,NULL),(601,190,1,2,NULL),(602,191,1,2,NULL),(603,192,1,2,NULL),(604,193,1,2,NULL),(605,4,31,2,NULL),(606,194,1,2,NULL),(607,94,43,2,NULL),(608,195,1,2,NULL),(609,122,20,2,NULL),(610,196,1,2,NULL),(611,36,1,2,NULL),(612,197,1,2,NULL),(613,58,1,2,NULL),(614,190,3,2,NULL),(615,191,3,2,NULL),(616,60,1,2,NULL),(617,192,3,2,NULL),(618,193,3,2,NULL),(619,63,1,2,NULL),(620,194,3,2,NULL),(621,66,1,2,NULL),(622,195,3,2,NULL),(623,69,1,2,NULL),(624,196,3,2,NULL),(625,71,1,2,NULL),(626,197,3,2,NULL),(627,77,1,2,NULL),(628,81,1,2,NULL),(629,11,1,2,NULL),(630,13,1,2,NULL),(631,74,14,2,NULL),(632,15,1,2,NULL),(633,172,42,2,NULL),(634,17,1,2,NULL),(635,175,24,2,NULL),(636,19,1,2,NULL),(637,36,3,2,NULL),(638,22,1,2,NULL),(639,58,3,2,NULL),(640,24,1,2,NULL),(641,60,3,2,NULL),(642,26,1,2,NULL),(643,63,3,2,NULL),(644,40,1,2,NULL),(645,66,3,2,NULL),(646,138,1,2,NULL),(647,69,3,2,NULL),(648,142,1,2,NULL),(649,71,3,2,NULL),(650,144,1,2,NULL),(651,77,3,2,NULL),(652,148,1,2,NULL),(653,81,3,2,NULL),(654,150,1,2,NULL),(655,11,3,2,NULL),(656,152,1,2,NULL),(657,13,3,2,NULL),(658,156,1,2,NULL),(659,15,3,2,NULL),(660,157,1,2,NULL),(661,17,3,2,NULL),(662,6,15,2,NULL),(663,19,3,2,NULL),(664,42,1,2,NULL),(665,22,3,2,NULL),(666,24,3,2,NULL),(667,116,49,2,NULL),(668,26,3,2,NULL),(669,40,3,2,NULL),(670,138,3,2,NULL),(671,142,3,2,NULL),(672,144,3,2,NULL),(673,148,3,2,NULL),(674,150,3,2,NULL),(675,152,3,2,NULL),(676,156,3,2,NULL),(677,157,3,2,NULL),(678,95,35,2,NULL),(679,124,14,2,NULL),(680,129,3,2,NULL),(681,70,47,2,NULL),(682,120,47,2,NULL),(683,167,14,2,NULL),(684,169,42,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (9,'android.permission.ACCESS_COARSE_LOCATION'),(7,'android.permission.ACCESS_FINE_LOCATION'),(3,'android.permission.CAMERA'),(18,'android.permission.CHANGE_CONFIGURATION'),(17,'android.permission.DEVICE_POWER'),(16,'android.permission.FLASHLIGHT'),(12,'android.permission.GET_ACCOUNTS'),(13,'android.permission.HARDWARE_TEST'),(5,'android.permission.INTERNET'),(10,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(2,'android.permission.READ_SMS'),(14,'android.permission.RECEIVE_BOOT_COMPLETED'),(4,'android.permission.SEND_SMS'),(11,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(15,'android.permission.WRITE_SETTINGS'),(8,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(2,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(3,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(4,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(5,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(6,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(7,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(8,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(9,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(10,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(11,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(12,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(13,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(14,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(15,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(16,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(17,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(18,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(19,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(20,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(23,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(24,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(25,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(26,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(27,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(28,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(29,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(30,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(31,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(32,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(33,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(34,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(35,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(36,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(37,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(38,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(39,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(40,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(41,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(42,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(43,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(44,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(45,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(46,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(47,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(48,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(49,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(50,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(51,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(52,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(53,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(54,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(55,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,19,5),(2,48,16),(3,80,26),(4,90,32),(5,108,35),(6,189,53);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,2,1),(3,1,2),(4,2,2),(5,3,1),(6,1,3),(7,2,3),(8,3,2),(9,4,1),(10,1,4),(11,2,4),(12,3,3),(13,4,2),(14,1,5),(15,4,3),(16,2,5),(17,3,4),(18,1,6),(19,4,4),(20,3,5),(21,2,6),(22,1,7),(23,2,7),(24,4,5),(25,3,6),(26,1,8),(27,2,8),(28,3,7),(29,4,6),(30,1,9),(31,3,8),(32,2,9),(33,4,7),(34,1,10),(35,2,10),(36,3,9),(37,4,8),(38,5,17),(39,1,11),(40,2,11),(41,3,10),(42,4,9),(43,5,16),(44,3,11),(45,4,10),(46,5,1),(47,2,12),(48,4,11),(49,5,18),(50,3,12),(51,4,12),(52,5,3),(53,5,4),(54,5,5),(55,5,10),(56,5,11),(57,5,13),(58,5,14),(59,6,1),(60,5,15),(61,6,4),(62,6,5),(63,6,6),(64,6,7),(65,6,9),(66,6,10),(67,6,11),(68,6,12),(69,7,1),(70,7,2),(71,7,3),(72,7,4),(73,7,5),(74,7,6),(75,7,7),(76,7,8),(77,7,9),(78,7,10),(79,7,11),(80,7,12);
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

-- Dump completed on 2015-10-12  3:30:39
