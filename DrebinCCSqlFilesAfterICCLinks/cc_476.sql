-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_476
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
INSERT INTO `ActionStrings` VALUES (3,'android.intent.action.BOOT_COMPLETED'),(6,'android.intent.action.CHOOSER'),(7,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(5,'android.intent.action.PICK'),(2,'android.intent.action.SENDTO'),(4,'android.intent.action.VIEW'),(9,'android.media.action.IMAGE_CAPTURE'),(10,'android.settings.LOCATION_SOURCE_SETTINGS'),(8,'wayne.jeff.dev.valentine');
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
INSERT INTO `Applications` VALUES (1,'eng.trickersticks.politicianssay',2),(2,'photowithclown.iconosys.eng',5),(3,'balloffire.photo.iconosys.eng',1),(4,'wantedcowboy.photo.iconosys.eng',2),(5,'fore.photo.iconosys.eng',1),(6,'iconosys.valentine.br',1),(7,'retail.runtracker.iconosys.eng',4);
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
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'eng.trickersticks.politicianssay.TrickerSticks'),(2,2,'photowithclown.iconosys.eng.FrameIt'),(3,1,'eng.trickersticks.politicianssay.GlowSticks'),(4,2,'photowithclown.iconosys.eng.PhotoView'),(5,1,'eng.trickersticks.politicianssay.ShowTerms'),(6,1,'eng.trickersticks.politicianssay.RegistrationScreen'),(7,3,'balloffire.photo.iconosys.eng.FrameIt'),(8,1,'eng.trickersticks.politicianssay.AdView'),(9,1,'eng.trickersticks.politicianssay.OtherApps'),(10,1,'eng.trickersticks.politicianssay.LocationSender'),(11,3,'balloffire.photo.iconosys.eng.PhotoView'),(12,2,'photowithclown.iconosys.eng.OtherApps'),(13,2,'photowithclown.iconosys.eng.AdActivity'),(14,2,'photowithclown.iconosys.eng.ShowTerms'),(15,2,'photowithclown.iconosys.eng.RegistrationScreen'),(16,4,'wantedcowboy.photo.iconosys.eng.MeInJail'),(17,2,'photowithclown.iconosys.eng.ShareImage'),(18,3,'balloffire.photo.iconosys.eng.OtherApps'),(19,2,'photowithclown.iconosys.eng.AdView'),(20,3,'balloffire.photo.iconosys.eng.AdActivity'),(21,4,'wantedcowboy.photo.iconosys.eng.PhotoView'),(22,2,'photowithclown.iconosys.eng.LocationSender'),(23,3,'balloffire.photo.iconosys.eng.ShowTerms'),(24,3,'balloffire.photo.iconosys.eng.RegistrationScreen'),(25,5,'fore.photo.iconosys.eng.MeInJail'),(26,3,'balloffire.photo.iconosys.eng.ShareImage'),(27,3,'balloffire.photo.iconosys.eng.AdView'),(28,5,'fore.photo.iconosys.eng.PhotoView'),(29,3,'balloffire.photo.iconosys.eng.LocationSender'),(30,4,'wantedcowboy.photo.iconosys.eng.OtherApps'),(31,4,'wantedcowboy.photo.iconosys.eng.ShowTerms'),(32,4,'wantedcowboy.photo.iconosys.eng.RegistrationScreen'),(33,4,'wantedcowboy.photo.iconosys.eng.ShareImage'),(34,4,'wantedcowboy.photo.iconosys.eng.ShowPopUp'),(35,5,'fore.photo.iconosys.eng.OtherApps'),(36,4,'wantedcowboy.photo.iconosys.eng.AdView'),(37,5,'fore.photo.iconosys.eng.ShowTerms'),(38,4,'wantedcowboy.photo.iconosys.eng.LocationSender'),(39,5,'fore.photo.iconosys.eng.RegistrationScreen'),(40,5,'fore.photo.iconosys.eng.ShareImage'),(41,5,'fore.photo.iconosys.eng.ShowPopUp'),(42,5,'fore.photo.iconosys.eng.AdView'),(43,5,'fore.photo.iconosys.eng.LocationSender'),(44,6,'iconosys.valentine.br.ValentineMain'),(45,6,'iconosys.valentine.br.MyValentine'),(46,6,'iconosys.valentine.br.OtherApps'),(47,6,'iconosys.valentine.br.ItemDialog'),(48,6,'iconosys.valentine.br.MyKissHugs'),(49,6,'iconosys.valentine.br.ShowTerms'),(50,6,'iconosys.valentine.br.RegistrationScreen'),(51,6,'iconosys.valentine.br.SweetHeart'),(52,6,'iconosys.valentine.br.ValentineSvc'),(53,6,'iconosys.valentine.br.TickSvc'),(54,6,'iconosys.valentine.br.LocationSender'),(55,6,'iconosys.valentine.br.BootReceiver'),(56,7,'retail.runtracker.iconosys.eng.MyReceiptManager'),(57,7,'retail.runtracker.iconosys.eng.ShowPopUp'),(58,7,'retail.runtracker.iconosys.eng.MileageAdd'),(59,7,'retail.runtracker.iconosys.eng.OtherApps'),(60,7,'retail.runtracker.iconosys.eng.ReviewSelection'),(61,7,'retail.runtracker.iconosys.eng.TakePicture'),(62,7,'retail.runtracker.iconosys.eng.Review'),(63,7,'retail.runtracker.iconosys.eng.DisplayCategory'),(64,7,'retail.runtracker.iconosys.eng.ShowCat'),(65,7,'retail.runtracker.iconosys.eng.Preview'),(66,7,'retail.runtracker.iconosys.eng.SpreadSheet'),(67,7,'retail.runtracker.iconosys.eng.MileageSheet'),(68,7,'retail.runtracker.iconosys.eng.SaveSend'),(69,7,'retail.runtracker.iconosys.eng.Mileage'),(70,7,'retail.runtracker.iconosys.eng.ShowPopUpReport'),(71,7,'retail.runtracker.iconosys.eng.AdView'),(72,7,'retail.runtracker.iconosys.eng.RegistrationScreen'),(73,7,'retail.runtracker.iconosys.eng.MileageSend'),(74,7,'retail.runtracker.iconosys.eng.SelectRange'),(75,7,'retail.runtracker.iconosys.eng.ReportSheet'),(76,7,'retail.runtracker.iconosys.eng.ShowTerms'),(77,7,'retail.runtracker.iconosys.eng.Settings'),(78,7,'retail.runtracker.iconosys.eng.LocationSender'),(79,1,'eng.trickersticks.politicianssay.RegistrationScreen$1'),(80,1,'eng.trickersticks.politicianssay.OtherApps$6'),(81,1,'eng.trickersticks.politicianssay.OtherApps$3'),(82,1,'eng.trickersticks.politicianssay.OtherApps$1'),(83,1,'eng.trickersticks.politicianssay.OtherApps$2'),(84,1,'eng.trickersticks.politicianssay.OtherApps$4'),(85,1,'eng.trickersticks.politicianssay.OtherApps$5'),(86,2,'photowithclown.iconosys.eng.OtherApps$5'),(87,2,'photowithclown.iconosys.eng.PhotoView$1'),(88,2,'photowithclown.iconosys.eng.FrameIt$2'),(89,2,'photowithclown.iconosys.eng.RegistrationScreen$1'),(90,3,'balloffire.photo.iconosys.eng.FrameIt$2'),(91,3,'balloffire.photo.iconosys.eng.OtherApps$2'),(92,4,'wantedcowboy.photo.iconosys.eng.PhotoView$1'),(93,3,'balloffire.photo.iconosys.eng.OtherApps$3'),(94,4,'wantedcowboy.photo.iconosys.eng.MeInJail$2'),(95,3,'balloffire.photo.iconosys.eng.OtherApps$1'),(96,5,'fore.photo.iconosys.eng.PhotoView$1'),(97,4,'wantedcowboy.photo.iconosys.eng.OtherApps$4'),(98,5,'fore.photo.iconosys.eng.OtherApps$1'),(99,4,'wantedcowboy.photo.iconosys.eng.MeInJail$1'),(100,6,'iconosys.valentine.br.OtherApps$2'),(101,2,'photowithclown.iconosys.eng.OtherApps$3'),(102,6,'iconosys.valentine.br.ValentineMain$3'),(103,4,'wantedcowboy.photo.iconosys.eng.OtherApps$5'),(104,6,'iconosys.valentine.br.RegistrationScreen$1'),(105,3,'balloffire.photo.iconosys.eng.AdActivity$2'),(106,6,'iconosys.valentine.br.ValentineMain$2'),(107,6,'iconosys.valentine.br.OtherApps$5'),(108,3,'balloffire.photo.iconosys.eng.OtherApps$5'),(109,4,'wantedcowboy.photo.iconosys.eng.OtherApps$6'),(110,5,'fore.photo.iconosys.eng.OtherApps$6'),(111,6,'iconosys.valentine.br.OtherApps$1'),(112,3,'balloffire.photo.iconosys.eng.PhotoView$1'),(113,5,'fore.photo.iconosys.eng.OtherApps$5'),(114,6,'iconosys.valentine.br.OtherApps$6'),(115,3,'balloffire.photo.iconosys.eng.OtherApps$6'),(116,3,'balloffire.photo.iconosys.eng.FrameIt$1'),(117,5,'fore.photo.iconosys.eng.RegistrationScreen$1'),(118,6,'iconosys.valentine.br.ValentineMain$5'),(119,2,'photowithclown.iconosys.eng.FrameIt$1'),(120,4,'wantedcowboy.photo.iconosys.eng.RegistrationScreen$1'),(121,5,'fore.photo.iconosys.eng.MeInJail$2'),(122,2,'photowithclown.iconosys.eng.OtherApps$4'),(123,3,'balloffire.photo.iconosys.eng.OtherApps$4'),(124,6,'iconosys.valentine.br.ValentineMain$4'),(125,4,'wantedcowboy.photo.iconosys.eng.OtherApps$3'),(126,2,'photowithclown.iconosys.eng.OtherApps$2'),(127,6,'iconosys.valentine.br.MyValentine$2'),(128,3,'balloffire.photo.iconosys.eng.RegistrationScreen$1'),(129,2,'photowithclown.iconosys.eng.OtherApps$1'),(130,6,'iconosys.valentine.br.OtherApps$4'),(131,4,'wantedcowboy.photo.iconosys.eng.OtherApps$1'),(132,7,'retail.runtracker.iconosys.eng.MyReceiptManager$9'),(133,6,'iconosys.valentine.br.OtherApps$3'),(134,2,'photowithclown.iconosys.eng.OtherApps$6'),(135,5,'fore.photo.iconosys.eng.OtherApps$3'),(136,6,'iconosys.valentine.br.SweetHeart$2'),(137,5,'fore.photo.iconosys.eng.OtherApps$2'),(138,4,'wantedcowboy.photo.iconosys.eng.OtherApps$2'),(139,5,'fore.photo.iconosys.eng.MeInJail$1'),(140,5,'fore.photo.iconosys.eng.OtherApps$4'),(141,7,'retail.runtracker.iconosys.eng.Review$3'),(142,7,'retail.runtracker.iconosys.eng.SelectRange$5'),(143,7,'retail.runtracker.iconosys.eng.OtherApps$1'),(144,7,'retail.runtracker.iconosys.eng.SaveSend$4'),(145,7,'retail.runtracker.iconosys.eng.Settings$3'),(146,7,'retail.runtracker.iconosys.eng.MyReceiptManager$6'),(147,7,'retail.runtracker.iconosys.eng.OtherApps$3'),(148,7,'retail.runtracker.iconosys.eng.OtherApps$5'),(149,7,'retail.runtracker.iconosys.eng.Review$1'),(150,7,'retail.runtracker.iconosys.eng.Mileage$8'),(151,7,'retail.runtracker.iconosys.eng.MileageSend$1'),(152,7,'retail.runtracker.iconosys.eng.RegistrationScreen$1'),(153,7,'retail.runtracker.iconosys.eng.MyReceiptManager$5'),(154,7,'retail.runtracker.iconosys.eng.OtherApps$4'),(155,7,'retail.runtracker.iconosys.eng.Mileage$5'),(156,7,'retail.runtracker.iconosys.eng.MyReceiptManager$1'),(157,7,'retail.runtracker.iconosys.eng.OtherApps$6'),(158,7,'retail.runtracker.iconosys.eng.OtherApps$2'),(159,7,'retail.runtracker.iconosys.eng.Mileage$4');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,8,'_who'),(2,26,'saved_uri'),(3,19,'_who'),(4,33,'saved_uri'),(5,47,'items'),(6,47,'_id'),(7,11,'pick_photo'),(8,27,'_who'),(9,40,'saved_uri'),(10,28,'take_photo'),(11,11,'take_photo'),(12,42,'_who'),(13,28,'pick_photo'),(14,4,'take_photo'),(15,17,'saved_uri'),(16,47,'itemcount'),(17,47,'names'),(18,21,'pick_photo'),(19,36,'_who'),(20,4,'pick_photo'),(21,21,'take_photo'),(22,74,'Category'),(23,75,'Category'),(24,66,'_cat'),(25,71,'_who'),(26,74,'report_type'),(27,75,'range2'),(28,73,'_id'),(29,60,'report_type'),(30,75,'range1'),(31,58,'_mileage'),(32,74,'id'),(33,75,'id'),(34,60,'id'),(35,68,'_id');
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'s',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'s',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'s',0,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'s',0,NULL,NULL),(53,53,'s',0,NULL,NULL),(54,54,'s',0,NULL,NULL),(55,55,'r',1,NULL,NULL),(56,56,'a',1,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'s',0,NULL,NULL),(79,106,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,6),(2,2,9),(3,3,9),(4,4,6),(5,5,3),(6,6,3),(7,7,9),(8,8,1),(9,9,9),(10,10,3),(11,11,9),(12,12,3),(13,13,1),(14,14,3),(15,15,9),(16,16,6),(17,17,11),(18,18,12),(19,19,4),(20,20,2),(21,21,15),(22,22,15),(23,23,7),(24,24,17),(25,25,7),(26,26,18),(27,27,21),(28,28,18),(29,29,16),(30,30,7),(31,31,16),(32,32,18),(33,33,15),(34,34,28),(35,35,30),(36,36,26),(37,37,17),(38,38,35),(39,39,33),(40,40,4),(41,41,40),(42,42,16),(43,43,45),(44,43,46),(45,43,47),(46,44,12),(47,45,16),(48,46,47),(49,46,44),(50,46,45),(51,47,2),(52,48,16),(53,49,30),(54,50,4),(55,51,50),(56,51,47),(57,51,45),(58,52,17),(59,53,21),(60,54,20),(61,55,4),(62,56,32),(63,57,45),(64,57,46),(65,57,47),(66,58,28),(67,59,18),(68,60,30),(69,61,51),(70,62,35),(71,63,11),(72,64,21),(73,65,44),(74,66,33),(75,67,11),(76,68,25),(77,69,45),(78,69,46),(79,69,47),(80,70,33),(81,72,11),(82,71,35),(83,73,45),(84,73,47),(85,73,46),(86,74,4),(87,75,25),(88,76,18),(89,77,2),(90,78,48),(91,79,25),(92,80,2),(93,81,11),(94,82,44),(95,83,2),(96,84,7),(97,85,39),(98,86,45),(99,86,47),(100,86,44),(101,87,25),(102,88,11),(103,89,44),(104,90,2),(105,91,32),(106,92,39),(107,93,24),(108,94,51),(109,96,25),(110,95,2),(111,97,7),(112,98,55),(113,99,21),(114,100,12),(115,101,25),(116,102,18),(117,103,45),(118,103,44),(119,103,47),(120,104,30),(121,105,28),(122,106,12),(123,107,45),(124,108,24),(125,109,16),(126,110,28),(127,111,12),(128,112,11),(129,113,40),(130,114,21),(131,115,47),(132,115,46),(133,115,45),(134,116,4),(135,117,25),(136,118,30),(137,119,56),(138,121,4),(139,120,28),(140,122,47),(141,122,46),(142,122,45),(143,123,16),(144,124,2),(145,125,28),(146,126,56),(147,127,21),(148,128,48),(149,129,12),(150,130,21),(151,131,35),(152,132,55),(153,133,60),(154,134,32),(155,137,28),(156,136,75),(157,135,51),(158,135,47),(159,135,45),(160,138,21),(161,140,44),(162,139,35),(163,141,30),(164,142,25),(165,143,16),(166,144,39),(167,145,35),(168,146,66),(169,147,28),(170,148,40),(171,149,62),(172,150,62),(173,151,69),(174,152,69),(175,153,74),(176,154,59),(177,155,68),(178,156,77),(179,157,77),(180,158,56),(181,159,56),(182,160,59),(183,161,62),(184,162,56),(185,163,59),(186,164,77),(187,165,62),(188,166,69),(189,167,73),(190,168,77),(191,169,72),(192,170,62),(193,171,56),(194,172,56),(195,173,59),(196,174,72),(197,175,69),(198,176,69),(199,177,56),(200,178,72),(201,179,62),(202,180,60),(203,181,56),(204,182,77),(205,183,59),(206,184,69),(207,185,59),(208,186,69),(209,187,56),(210,188,69),(211,189,69),(212,190,67),(213,191,61);
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
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,79,'<eng.trickersticks.politicianssay.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(2,80,'<eng.trickersticks.politicianssay.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(3,81,'<eng.trickersticks.politicianssay.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(4,6,'<eng.trickersticks.politicianssay.RegistrationScreen: void SendPhoneData()>',97,'s',NULL),(5,3,'<eng.trickersticks.politicianssay.GlowSticks: void onCreate(android.os.Bundle)>',14,'a',NULL),(6,3,'<eng.trickersticks.politicianssay.GlowSticks: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(7,82,'<eng.trickersticks.politicianssay.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(8,1,'<eng.trickersticks.politicianssay.TrickerSticks: void onResume()>',14,'a',NULL),(9,83,'<eng.trickersticks.politicianssay.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(10,3,'<eng.trickersticks.politicianssay.GlowSticks: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(11,84,'<eng.trickersticks.politicianssay.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(12,3,'<eng.trickersticks.politicianssay.GlowSticks: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(13,1,'<eng.trickersticks.politicianssay.TrickerSticks: void onResume()>',18,'a',NULL),(14,3,'<eng.trickersticks.politicianssay.GlowSticks: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(15,85,'<eng.trickersticks.politicianssay.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(16,6,'<eng.trickersticks.politicianssay.RegistrationScreen: void SendAutoData()>',93,'s',NULL),(17,11,'<balloffire.photo.iconosys.eng.PhotoView: void onShareMultipleClicked()>',8,'a',NULL),(18,86,'<photowithclown.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(19,87,'<photowithclown.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',38,'a',NULL),(20,88,'<photowithclown.iconosys.eng.FrameIt$2: void onClick(android.view.View)>',7,'a',NULL),(21,15,'<photowithclown.iconosys.eng.RegistrationScreen: void SendPhoneData()>',93,'s',NULL),(22,89,'<photowithclown.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(23,7,'<balloffire.photo.iconosys.eng.FrameIt: void onResume()>',21,'a',NULL),(24,17,'<photowithclown.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(25,90,'<balloffire.photo.iconosys.eng.FrameIt$2: void onClick(android.view.View)>',7,'a',NULL),(26,91,'<balloffire.photo.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(27,92,'<wantedcowboy.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',23,'a',NULL),(28,93,'<balloffire.photo.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(29,16,'<wantedcowboy.photo.iconosys.eng.MeInJail: void onCreate(android.os.Bundle)>',6,'a',NULL),(30,7,'<balloffire.photo.iconosys.eng.FrameIt: void onCreate(android.os.Bundle)>',5,'a',NULL),(31,94,'<wantedcowboy.photo.iconosys.eng.MeInJail$2: void onClick(android.view.View)>',7,'a',NULL),(32,95,'<balloffire.photo.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(33,15,'<photowithclown.iconosys.eng.RegistrationScreen: void SendAutoData()>',89,'s',NULL),(34,96,'<fore.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',9,'a',NULL),(35,97,'<wantedcowboy.photo.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(36,26,'<balloffire.photo.iconosys.eng.ShareImage: void onShareMultipleClicked()>',8,'a',NULL),(37,17,'<photowithclown.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(38,98,'<fore.photo.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(39,33,'<wantedcowboy.photo.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(40,4,'<photowithclown.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',36,'a',NULL),(41,40,'<fore.photo.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(42,99,'<wantedcowboy.photo.iconosys.eng.MeInJail$1: void onClick(android.view.View)>',7,'a',NULL),(43,100,'<iconosys.valentine.br.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(44,101,'<photowithclown.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(45,16,'<wantedcowboy.photo.iconosys.eng.MeInJail: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(46,102,'<iconosys.valentine.br.ValentineMain$3: void onClick(android.view.View)>',6,'a',NULL),(47,2,'<photowithclown.iconosys.eng.FrameIt: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(48,16,'<wantedcowboy.photo.iconosys.eng.MeInJail: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(49,103,'<wantedcowboy.photo.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(50,4,'<photowithclown.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(51,104,'<iconosys.valentine.br.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(52,17,'<photowithclown.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(53,92,'<wantedcowboy.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',9,'a',NULL),(54,105,'<balloffire.photo.iconosys.eng.AdActivity$2: void onClick(android.view.View)>',9,'a',NULL),(55,4,'<photowithclown.iconosys.eng.PhotoView: void onShareMultipleClicked()>',8,'a',NULL),(56,32,'<wantedcowboy.photo.iconosys.eng.RegistrationScreen: void SendPhoneData()>',93,'s',NULL),(57,107,'<iconosys.valentine.br.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(58,28,'<fore.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(59,108,'<balloffire.photo.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(60,109,'<wantedcowboy.photo.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(61,51,'<iconosys.valentine.br.SweetHeart: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(62,110,'<fore.photo.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(63,11,'<balloffire.photo.iconosys.eng.PhotoView: void startCameraActivity()>',14,'a',NULL),(64,21,'<wantedcowboy.photo.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(65,44,'<iconosys.valentine.br.ValentineMain: void onResume()>',14,'a',NULL),(66,33,'<wantedcowboy.photo.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(67,11,'<balloffire.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',36,'a',NULL),(68,25,'<fore.photo.iconosys.eng.MeInJail: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(69,111,'<iconosys.valentine.br.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(70,33,'<wantedcowboy.photo.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(71,113,'<fore.photo.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(72,112,'<balloffire.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',38,'a',NULL),(73,114,'<iconosys.valentine.br.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(74,4,'<photowithclown.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(75,25,'<fore.photo.iconosys.eng.MeInJail: void onCreate(android.os.Bundle)>',6,'a',NULL),(76,115,'<balloffire.photo.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(77,2,'<photowithclown.iconosys.eng.FrameIt: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(78,48,'<iconosys.valentine.br.MyKissHugs: void onCreate(android.os.Bundle)>',40,'s',NULL),(79,25,'<fore.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(80,2,'<photowithclown.iconosys.eng.FrameIt: void onResume()>',14,'a',NULL),(81,11,'<balloffire.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',26,'a',NULL),(82,44,'<iconosys.valentine.br.ValentineMain: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(83,2,'<photowithclown.iconosys.eng.FrameIt: void onCreate(android.os.Bundle)>',19,'a',NULL),(84,116,'<balloffire.photo.iconosys.eng.FrameIt$1: void onClick(android.view.View)>',7,'a',NULL),(85,117,'<fore.photo.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(86,118,'<iconosys.valentine.br.ValentineMain$5: void onClick(android.view.View)>',6,'a',NULL),(87,25,'<fore.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(88,11,'<balloffire.photo.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(89,44,'<iconosys.valentine.br.ValentineMain: void onCreate(android.os.Bundle)>',25,'s',NULL),(90,119,'<photowithclown.iconosys.eng.FrameIt$1: void onClick(android.view.View)>',7,'a',NULL),(91,120,'<wantedcowboy.photo.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(92,39,'<fore.photo.iconosys.eng.RegistrationScreen: void SendAutoData()>',89,'s',NULL),(93,24,'<balloffire.photo.iconosys.eng.RegistrationScreen: void SendPhoneData()>',97,'s',NULL),(94,51,'<iconosys.valentine.br.SweetHeart: void onActivityResult(int,int,android.content.Intent)>',9,'p',0),(95,2,'<photowithclown.iconosys.eng.FrameIt: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(96,25,'<fore.photo.iconosys.eng.MeInJail: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(97,7,'<balloffire.photo.iconosys.eng.FrameIt: void onResume()>',14,'a',NULL),(98,55,'<iconosys.valentine.br.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(99,21,'<wantedcowboy.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(100,122,'<photowithclown.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(101,121,'<fore.photo.iconosys.eng.MeInJail$2: void onClick(android.view.View)>',7,'a',NULL),(102,123,'<balloffire.photo.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(103,124,'<iconosys.valentine.br.ValentineMain$4: void onClick(android.view.View)>',6,'a',NULL),(104,125,'<wantedcowboy.photo.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(105,28,'<fore.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',6,'a',NULL),(106,126,'<photowithclown.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(107,127,'<iconosys.valentine.br.MyValentine$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',37,'a',NULL),(108,128,'<balloffire.photo.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(109,16,'<wantedcowboy.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(110,28,'<fore.photo.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(111,129,'<photowithclown.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(112,11,'<balloffire.photo.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(113,40,'<fore.photo.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(114,21,'<wantedcowboy.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(115,130,'<iconosys.valentine.br.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(116,4,'<photowithclown.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',26,'a',NULL),(117,25,'<fore.photo.iconosys.eng.MeInJail: void onResume()>',14,'a',NULL),(118,131,'<wantedcowboy.photo.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(119,132,'<retail.runtracker.iconosys.eng.MyReceiptManager$9: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(120,96,'<fore.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',23,'a',NULL),(121,4,'<photowithclown.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(122,133,'<iconosys.valentine.br.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(123,16,'<wantedcowboy.photo.iconosys.eng.MeInJail: void onResume()>',14,'a',NULL),(124,2,'<photowithclown.iconosys.eng.FrameIt: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(125,28,'<fore.photo.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(126,132,'<retail.runtracker.iconosys.eng.MyReceiptManager$9: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(127,21,'<wantedcowboy.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',6,'a',NULL),(128,48,'<iconosys.valentine.br.MyKissHugs: void onCreate(android.os.Bundle)>',36,'s',NULL),(129,134,'<photowithclown.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(130,21,'<wantedcowboy.photo.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(131,135,'<fore.photo.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(132,55,'<iconosys.valentine.br.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(133,60,'<retail.runtracker.iconosys.eng.ReviewSelection: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(134,32,'<wantedcowboy.photo.iconosys.eng.RegistrationScreen: void SendAutoData()>',89,'s',NULL),(135,136,'<iconosys.valentine.br.SweetHeart$2: void onClick(android.view.View)>',6,'a',NULL),(136,75,'<retail.runtracker.iconosys.eng.ReportSheet: void sendToFile()>',17,'a',NULL),(137,28,'<fore.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(138,21,'<wantedcowboy.photo.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(139,137,'<fore.photo.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(140,44,'<iconosys.valentine.br.ValentineMain: void onCreate(android.os.Bundle)>',21,'s',NULL),(141,138,'<wantedcowboy.photo.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(142,139,'<fore.photo.iconosys.eng.MeInJail$1: void onClick(android.view.View)>',7,'a',NULL),(143,16,'<wantedcowboy.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(144,39,'<fore.photo.iconosys.eng.RegistrationScreen: void SendPhoneData()>',93,'s',NULL),(145,140,'<fore.photo.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(146,66,'<retail.runtracker.iconosys.eng.SpreadSheet: void sendToFile()>',15,'a',NULL),(147,28,'<fore.photo.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(148,40,'<fore.photo.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(149,141,'<retail.runtracker.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(150,141,'<retail.runtracker.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(151,69,'<retail.runtracker.iconosys.eng.Mileage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(152,69,'<retail.runtracker.iconosys.eng.Mileage: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(153,142,'<retail.runtracker.iconosys.eng.SelectRange$5: void onClick(android.view.View)>',18,'a',NULL),(154,143,'<retail.runtracker.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(155,144,'<retail.runtracker.iconosys.eng.SaveSend$4: void onClick(android.view.View)>',89,'a',NULL),(156,145,'<retail.runtracker.iconosys.eng.Settings$3: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(157,145,'<retail.runtracker.iconosys.eng.Settings$3: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(158,146,'<retail.runtracker.iconosys.eng.MyReceiptManager$6: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(159,56,'<retail.runtracker.iconosys.eng.MyReceiptManager: void calcDistance()>',34,'a',NULL),(160,147,'<retail.runtracker.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(161,62,'<retail.runtracker.iconosys.eng.Review: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(162,132,'<retail.runtracker.iconosys.eng.MyReceiptManager$9: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(163,148,'<retail.runtracker.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(164,77,'<retail.runtracker.iconosys.eng.Settings: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(165,149,'<retail.runtracker.iconosys.eng.Review$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(166,150,'<retail.runtracker.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(167,151,'<retail.runtracker.iconosys.eng.MileageSend$1: void onClick(android.view.View)>',49,'a',NULL),(168,145,'<retail.runtracker.iconosys.eng.Settings$3: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(169,152,'<retail.runtracker.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(170,141,'<retail.runtracker.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(171,132,'<retail.runtracker.iconosys.eng.MyReceiptManager$9: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(172,153,'<retail.runtracker.iconosys.eng.MyReceiptManager$5: void onClick(android.view.View)>',6,'a',NULL),(173,154,'<retail.runtracker.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(174,72,'<retail.runtracker.iconosys.eng.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(175,155,'<retail.runtracker.iconosys.eng.Mileage$5: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(176,69,'<retail.runtracker.iconosys.eng.Mileage: void calcDistance()>',34,'a',NULL),(177,56,'<retail.runtracker.iconosys.eng.MyReceiptManager: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(178,72,'<retail.runtracker.iconosys.eng.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(179,141,'<retail.runtracker.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(180,60,'<retail.runtracker.iconosys.eng.ReviewSelection: void getSelection(android.util.SparseBooleanArray)>',20,'a',NULL),(181,156,'<retail.runtracker.iconosys.eng.MyReceiptManager$1: void onClick(android.view.View)>',6,'a',NULL),(182,145,'<retail.runtracker.iconosys.eng.Settings$3: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(183,157,'<retail.runtracker.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(184,150,'<retail.runtracker.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(185,158,'<retail.runtracker.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(186,150,'<retail.runtracker.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(187,56,'<retail.runtracker.iconosys.eng.MyReceiptManager: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(188,159,'<retail.runtracker.iconosys.eng.Mileage$4: void onClick(android.view.View)>',6,'a',NULL),(189,150,'<retail.runtracker.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(190,67,'<retail.runtracker.iconosys.eng.MileageSheet: void sendToFile()>',21,'a',NULL),(191,61,'<retail.runtracker.iconosys.eng.TakePicture: void startCameraActivity()>',9,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,4),(2,3,4),(3,6,5),(4,7,4),(5,9,4),(6,10,4),(7,13,4),(8,15,6),(9,16,4),(10,17,6),(11,18,6),(12,20,6),(13,21,6),(14,23,6),(15,24,6),(16,26,6),(17,29,6),(18,30,6),(19,32,6),(20,33,4),(21,34,6),(22,36,6),(23,37,4),(24,38,6),(25,40,6),(26,43,6),(27,44,4),(28,47,4),(29,48,6),(30,51,6),(31,50,4),(32,53,6),(33,55,6),(34,57,6),(35,58,4),(36,59,6),(37,60,4),(38,61,6),(39,62,6),(40,64,6),(41,65,6),(42,66,6),(43,67,6),(44,68,4),(45,70,7),(46,71,6),(47,72,6),(48,74,6),(49,76,4),(50,77,6),(51,78,6),(52,80,6),(53,81,4),(54,83,6),(55,84,4),(56,85,4),(57,86,6),(58,87,4),(59,88,7),(60,89,6),(61,90,9),(62,92,6),(63,95,6),(64,96,4),(65,97,6),(66,98,6),(67,100,4),(68,101,6),(69,102,4),(70,103,6),(71,105,4),(72,106,5),(73,107,6),(74,109,5),(75,110,6),(76,114,6),(77,116,6),(78,120,6),(79,123,7),(80,132,4),(81,133,4),(82,135,4),(83,137,4),(84,141,9),(85,142,4),(86,145,4),(87,148,4),(88,151,9),(89,152,4),(90,156,7),(91,159,4),(92,161,4),(93,165,5),(94,166,6),(95,167,9),(96,168,6),(97,170,4),(98,171,6),(99,172,4),(100,173,6),(101,175,6),(102,176,5),(103,177,6),(104,179,6),(105,180,6),(106,181,4),(107,182,6),(108,183,6),(109,185,6),(110,186,6),(111,187,6),(112,188,6),(113,189,6),(114,190,6),(115,196,4),(116,197,6),(117,198,6),(118,199,6),(119,200,6),(120,201,6),(121,202,6),(122,203,6),(123,204,6),(124,207,10),(125,209,4),(126,212,4),(127,216,6),(128,217,6),(129,218,6),(130,219,6),(131,220,6),(132,221,6),(133,222,6),(134,223,6),(135,229,4),(136,231,10),(137,237,4),(138,239,4),(139,241,4),(140,246,6),(141,247,6),(142,248,6),(143,249,6),(144,250,6),(145,251,6),(146,252,6),(147,253,6),(148,254,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'eng/trickersticks/politicianssay/ShowTerms'),(2,4,'eng/trickersticks/politicianssay/LocationSender'),(3,5,'eng/trickersticks/politicianssay/AdView'),(4,8,'eng/trickersticks/politicianssay/RegistrationScreen'),(5,11,'eng/trickersticks/politicianssay/GlowSticks'),(6,12,'eng/trickersticks/politicianssay/OtherApps'),(7,14,'eng/trickersticks/politicianssay/LocationSender'),(8,19,'photowithclown/iconosys/eng/ShareImage'),(9,22,'photowithclown/iconosys/eng/PhotoView'),(10,25,'photowithclown/iconosys/eng/LocationSender'),(11,27,'photowithclown/iconosys/eng/ShowTerms'),(12,28,'balloffire/photo/iconosys/eng/AdView'),(13,31,'balloffire/photo/iconosys/eng/PhotoView'),(14,35,'wantedcowboy/photo/iconosys/eng/ShareImage'),(15,39,'wantedcowboy/photo/iconosys/eng/AdView'),(16,41,'balloffire/photo/iconosys/eng/AdActivity'),(17,42,'wantedcowboy/photo/iconosys/eng/PhotoView'),(18,45,'photowithclown/iconosys/eng/LocationSender'),(19,46,'fore/photo/iconosys/eng/ShowPopUp'),(20,49,'photowithclown/iconosys/eng/OtherApps'),(21,52,'wantedcowboy/photo/iconosys/eng/AdView'),(22,54,'photowithclown/iconosys/eng/FrameIt'),(23,56,'wantedcowboy/photo/iconosys/eng/PhotoView'),(24,63,'iconosys/valentine/br/MyValentine'),(25,69,'iconosys/valentine/br/ShowTerms'),(26,73,'photowithclown/iconosys/eng/AdView'),(27,75,'wantedcowboy/photo/iconosys/eng/ShowPopUp'),(28,79,'wantedcowboy/photo/iconosys/eng/LocationSender'),(29,82,'fore/photo/iconosys/eng/MeInJail'),(30,91,'iconosys/valentine/br/RegistrationScreen'),(31,93,'wantedcowboy/photo/iconosys/eng/OtherApps'),(32,94,'balloffire/photo/iconosys/eng/FrameIt'),(33,99,'balloffire/photo/iconosys/eng/ShareImage'),(34,104,'fore/photo/iconosys/eng/AdView'),(35,108,'iconosys/valentine/br/TickSvc'),(36,111,'photowithclown/iconosys/eng/RegistrationScreen'),(37,113,'balloffire/photo/iconosys/eng/OtherApps'),(38,112,'iconosys/valentine/br/OtherApps'),(39,115,'photowithclown/iconosys/eng/AdView'),(40,118,'fore/photo/iconosys/eng/ShowTerms'),(41,119,'iconosys/valentine/br/MyKissHugs'),(42,117,'balloffire/photo/iconosys/eng/PhotoView'),(43,121,'fore/photo/iconosys/eng/OtherApps'),(44,122,'iconosys/valentine/br/ValentineSvc'),(45,124,'photowithclown/iconosys/eng/PhotoView'),(46,125,'wantedcowboy/photo/iconosys/eng/ShowTerms'),(47,126,'fore/photo/iconosys/eng/LocationSender'),(48,127,'balloffire/photo/iconosys/eng/LocationSender'),(49,128,'balloffire/photo/iconosys/eng/RegistrationScreen'),(50,129,'iconosys/valentine/br/ValentineSvc'),(51,130,'wantedcowboy/photo/iconosys/eng/MeInJail'),(52,131,'fore/photo/iconosys/eng/PhotoView'),(53,134,'iconosys/valentine/br/SweetHeart'),(54,136,'fore/photo/iconosys/eng/ShowPopUp'),(55,139,'balloffire/photo/iconosys/eng/ShowTerms'),(56,140,'wantedcowboy/photo/iconosys/eng/OtherApps'),(57,138,'iconosys/valentine/br/ItemDialog'),(58,144,'wantedcowboy/photo/iconosys/eng/OtherApps'),(59,143,'fore/photo/iconosys/eng/OtherApps'),(60,146,'photowithclown/iconosys/eng/OtherApps'),(61,147,'fore/photo/iconosys/eng/RegistrationScreen'),(62,150,'fore/photo/iconosys/eng/ShareImage'),(63,149,'retail/runtracker/iconosys/eng/SelectRange'),(64,153,'wantedcowboy/photo/iconosys/eng/RegistrationScreen'),(65,154,'photowithclown/iconosys/eng/OtherApps'),(66,157,'wantedcowboy/photo/iconosys/eng/ShowPopUp'),(67,158,'iconosys/valentine/br/TickSvc'),(68,155,'retail/runtracker/iconosys/eng/ReviewSelection'),(69,160,'iconosys/valentine/br/TickSvc'),(70,162,'retail/runtracker/iconosys/eng/OtherApps'),(71,163,'wantedcowboy/photo/iconosys/eng/LocationSender'),(72,164,'fore/photo/iconosys/eng/OtherApps'),(73,169,'iconosys/valentine/br/ValentineSvc'),(74,174,'fore/photo/iconosys/eng/PhotoView'),(75,178,'fore/photo/iconosys/eng/LocationSender'),(76,184,'fore/photo/iconosys/eng/AdView'),(77,191,'retail/runtracker/iconosys/eng/SelectRange'),(78,192,'retail/runtracker/iconosys/eng/ReviewSelection'),(79,193,'retail/runtracker/iconosys/eng/OtherApps'),(80,194,'retail/runtracker/iconosys/eng/MileageSheet'),(81,195,'retail/runtracker/iconosys/eng/ReportSheet'),(82,205,'retail/runtracker/iconosys/eng/ReviewSelection'),(83,206,'retail/runtracker/iconosys/eng/SelectRange'),(84,208,'retail/runtracker/iconosys/eng/MileageAdd'),(85,210,'retail/runtracker/iconosys/eng/OtherApps'),(86,211,'retail/runtracker/iconosys/eng/ReviewSelection'),(87,213,'retail/runtracker/iconosys/eng/OtherApps'),(88,214,'retail/runtracker/iconosys/eng/SelectRange'),(89,215,'retail/runtracker/iconosys/eng/ReviewSelection'),(90,224,'retail/runtracker/iconosys/eng/ReviewSelection'),(91,225,'retail/runtracker/iconosys/eng/ShowTerms'),(92,226,'retail/runtracker/iconosys/eng/ReviewSelection'),(93,227,'retail/runtracker/iconosys/eng/ReviewSelection'),(94,228,'retail/runtracker/iconosys/eng/MileageSheet'),(95,230,'retail/runtracker/iconosys/eng/LocationSender'),(96,232,'retail/runtracker/iconosys/eng/MileageAdd'),(97,233,'retail/runtracker/iconosys/eng/MileageSheet'),(98,234,'retail/runtracker/iconosys/eng/LocationSender'),(99,235,'retail/runtracker/iconosys/eng/ReviewSelection'),(100,236,'retail/runtracker/iconosys/eng/SelectRange'),(101,238,'retail/runtracker/iconosys/eng/ReviewSelection'),(102,240,'retail/runtracker/iconosys/eng/ReviewSelection'),(103,242,'retail/runtracker/iconosys/eng/SelectRange'),(104,243,'retail/runtracker/iconosys/eng/OtherApps'),(105,244,'retail/runtracker/iconosys/eng/MileageSheet'),(106,245,'retail/runtracker/iconosys/eng/ReviewSelection');
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
INSERT INTO `IData` VALUES (1,2,1),(2,3,2),(3,6,3),(4,7,4),(5,9,5),(6,10,6),(7,13,8),(8,16,9),(9,33,10),(10,37,11),(11,44,12),(12,47,13),(13,50,14),(14,58,15),(15,60,16),(16,68,19),(17,76,20),(18,81,21),(19,84,22),(20,85,23),(21,87,25),(22,96,27),(23,100,28),(24,102,29),(25,105,30),(26,106,31),(27,109,32),(28,132,33),(29,133,34),(30,135,35),(31,137,36),(32,142,37),(33,145,38),(34,148,39),(35,152,40),(36,159,41),(37,161,42),(38,165,43),(39,170,44),(40,172,45),(41,176,46),(42,181,47),(43,196,48),(44,209,49),(45,212,50),(46,229,51),(47,237,52),(48,239,53),(49,241,54);
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
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,15,'android.intent.extra.INTENT'),(2,17,'android.intent.extra.INTENT'),(3,18,'android.intent.extra.TITLE'),(4,18,'android.intent.extra.INTENT'),(5,19,'saved_uri'),(6,20,'android.intent.extra.INTENT'),(7,21,'android.intent.extra.TITLE'),(8,21,'android.intent.extra.INTENT'),(9,22,'pick_photo'),(10,23,'android.intent.extra.INTENT'),(11,24,'android.intent.extra.TITLE'),(12,24,'android.intent.extra.INTENT'),(13,26,'android.intent.extra.TITLE'),(14,26,'android.intent.extra.INTENT'),(15,29,'android.intent.extra.INTENT'),(16,31,'pick_photo'),(17,30,'android.intent.extra.INTENT'),(18,32,'android.intent.extra.TITLE'),(19,32,'android.intent.extra.INTENT'),(20,34,'android.intent.extra.INTENT'),(21,35,'saved_uri'),(22,36,'android.intent.extra.TITLE'),(23,36,'android.intent.extra.INTENT'),(24,38,'android.intent.extra.INTENT'),(25,40,'android.intent.extra.TITLE'),(26,40,'android.intent.extra.INTENT'),(27,42,'pick_photo'),(28,43,'android.intent.extra.TITLE'),(29,43,'android.intent.extra.INTENT'),(30,48,'android.intent.extra.INTENT'),(31,51,'android.intent.extra.INTENT'),(32,53,'android.intent.extra.TITLE'),(33,53,'android.intent.extra.INTENT'),(34,56,'take_photo'),(35,55,'android.intent.extra.INTENT'),(36,57,'android.intent.extra.INTENT'),(37,59,'android.intent.extra.INTENT'),(38,61,'android.intent.extra.TITLE'),(39,61,'android.intent.extra.INTENT'),(40,62,'android.intent.extra.TITLE'),(41,62,'android.intent.extra.INTENT'),(42,64,'android.intent.extra.INTENT'),(43,65,'android.intent.extra.INTENT'),(44,66,'android.intent.extra.TITLE'),(45,66,'android.intent.extra.INTENT'),(46,67,'android.intent.extra.TITLE'),(47,67,'android.intent.extra.INTENT'),(48,71,'android.intent.extra.TITLE'),(49,71,'android.intent.extra.INTENT'),(50,72,'android.intent.extra.INTENT'),(51,74,'android.intent.extra.TITLE'),(52,74,'android.intent.extra.INTENT'),(53,77,'android.intent.extra.TITLE'),(54,78,'android.intent.extra.INTENT'),(55,77,'android.intent.extra.INTENT'),(56,80,'android.intent.extra.INTENT'),(57,83,'android.intent.extra.TITLE'),(58,83,'android.intent.extra.INTENT'),(59,86,'android.intent.extra.INTENT'),(60,89,'android.intent.extra.TITLE'),(61,90,'output'),(62,89,'android.intent.extra.INTENT'),(63,92,'android.intent.extra.INTENT'),(64,95,'android.intent.extra.TITLE'),(65,95,'android.intent.extra.INTENT'),(66,97,'android.intent.extra.INTENT'),(67,99,'saved_uri'),(68,98,'android.intent.extra.TITLE'),(69,98,'android.intent.extra.INTENT'),(70,101,'android.intent.extra.INTENT'),(71,103,'android.intent.extra.TITLE'),(72,103,'android.intent.extra.INTENT'),(73,107,'android.intent.extra.INTENT'),(74,110,'android.intent.extra.TITLE'),(75,110,'android.intent.extra.INTENT'),(76,114,'android.intent.extra.INTENT'),(77,116,'android.intent.extra.TITLE'),(78,117,'take_photo'),(79,116,'android.intent.extra.INTENT'),(80,120,'android.intent.extra.TITLE'),(81,120,'android.intent.extra.INTENT'),(82,124,'take_photo'),(83,131,'pick_photo'),(84,138,'itemcount'),(85,138,'_id'),(86,141,'output'),(87,138,'items'),(88,138,'names'),(89,149,'id'),(90,150,'saved_uri'),(91,149,'report_type'),(92,151,'output'),(93,155,'id'),(94,155,'report_type'),(95,166,'android.intent.extra.INTENT'),(96,167,'output'),(97,168,'android.intent.extra.INTENT'),(98,171,'android.intent.extra.TITLE'),(99,171,'android.intent.extra.INTENT'),(100,173,'android.intent.extra.INTENT'),(101,174,'take_photo'),(102,175,'android.intent.extra.TITLE'),(103,175,'android.intent.extra.INTENT'),(104,177,'android.intent.extra.INTENT'),(105,179,'android.intent.extra.TITLE'),(106,179,'android.intent.extra.INTENT'),(107,180,'android.intent.extra.TITLE'),(108,180,'android.intent.extra.INTENT'),(109,182,'android.intent.extra.INTENT'),(110,183,'android.intent.extra.INTENT'),(111,185,'android.intent.extra.TITLE'),(112,185,'android.intent.extra.INTENT'),(113,186,'android.intent.extra.INTENT'),(114,187,'android.intent.extra.TITLE'),(115,187,'android.intent.extra.INTENT'),(116,188,'android.intent.extra.INTENT'),(117,189,'android.intent.extra.TITLE'),(118,189,'android.intent.extra.INTENT'),(119,190,'android.intent.extra.TITLE'),(120,190,'android.intent.extra.INTENT'),(121,191,'id'),(122,191,'report_type'),(123,192,'id'),(124,192,'report_type'),(125,195,'id'),(126,195,'Category'),(127,195,'range1'),(128,195,'range2'),(129,197,'android.intent.extra.INTENT'),(130,198,'android.intent.extra.INTENT'),(131,199,'android.intent.extra.TITLE'),(132,199,'android.intent.extra.INTENT'),(133,200,'android.intent.extra.INTENT'),(134,201,'android.intent.extra.TITLE'),(135,201,'android.intent.extra.INTENT'),(136,202,'android.intent.extra.INTENT'),(137,203,'android.intent.extra.TITLE'),(138,203,'android.intent.extra.INTENT'),(139,204,'android.intent.extra.TITLE'),(140,204,'android.intent.extra.INTENT'),(141,205,'id'),(142,205,'report_type'),(143,206,'id'),(144,206,'report_type'),(145,208,'_mileage'),(146,211,'id'),(147,211,'report_type'),(148,214,'id'),(149,214,'report_type'),(150,215,'id'),(151,215,'report_type'),(152,216,'android.intent.extra.INTENT'),(153,217,'android.intent.extra.INTENT'),(154,218,'android.intent.extra.TITLE'),(155,218,'android.intent.extra.INTENT'),(156,219,'android.intent.extra.INTENT'),(157,220,'android.intent.extra.TITLE'),(158,220,'android.intent.extra.INTENT'),(159,221,'android.intent.extra.INTENT'),(160,222,'android.intent.extra.TITLE'),(161,222,'android.intent.extra.INTENT'),(162,223,'android.intent.extra.TITLE'),(163,223,'android.intent.extra.INTENT'),(164,224,'id'),(165,224,'report_type'),(166,226,'id'),(167,226,'report_type'),(168,227,'id'),(169,227,'report_type'),(170,232,'_mileage'),(171,235,'id'),(172,235,'report_type'),(173,236,'id'),(174,236,'Category'),(175,236,'report_type'),(176,238,'id'),(177,238,'report_type'),(178,240,'id'),(179,240,'report_type'),(180,242,'id'),(181,242,'report_type'),(182,245,'id'),(183,245,'report_type'),(184,246,'android.intent.extra.INTENT'),(185,247,'android.intent.extra.INTENT'),(186,248,'android.intent.extra.TITLE'),(187,248,'android.intent.extra.INTENT'),(188,249,'android.intent.extra.INTENT'),(189,250,'android.intent.extra.TITLE'),(190,250,'android.intent.extra.INTENT'),(191,251,'android.intent.extra.INTENT'),(192,252,'android.intent.extra.TITLE'),(193,252,'android.intent.extra.INTENT'),(194,253,'android.intent.extra.TITLE'),(195,253,'android.intent.extra.INTENT'),(196,254,'output');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,1),(5,5,2),(6,6,1),(7,7,2),(8,8,1),(9,9,2),(10,10,1),(11,11,3),(12,12,1),(13,13,8),(14,14,8);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,1),(5,5,2),(6,6,1),(7,7,2),(8,8,1),(9,9,2),(10,10,1),(11,12,1);
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
INSERT INTO `IFData` VALUES (1,3,'sms',NULL,NULL,NULL,NULL,NULL),(2,3,'mms',NULL,NULL,NULL,NULL,NULL),(3,3,'mmsto',NULL,NULL,NULL,NULL,NULL),(4,3,NULL,NULL,NULL,NULL,'image','*'),(5,3,NULL,NULL,NULL,NULL,'video','*'),(6,3,NULL,NULL,NULL,NULL,'audio','*'),(7,5,'sms',NULL,NULL,NULL,NULL,NULL),(8,5,'mms',NULL,NULL,NULL,NULL,NULL),(9,5,'mmsto',NULL,NULL,NULL,NULL,NULL),(10,5,NULL,NULL,NULL,NULL,'image','*'),(11,5,NULL,NULL,NULL,NULL,'video','*'),(12,5,NULL,NULL,NULL,NULL,'audio','*'),(13,7,'sms',NULL,NULL,NULL,NULL,NULL),(14,7,'mms',NULL,NULL,NULL,NULL,NULL),(15,7,'mmsto',NULL,NULL,NULL,NULL,NULL),(16,7,NULL,NULL,NULL,NULL,'image','*'),(17,7,NULL,NULL,NULL,NULL,'video','*'),(18,7,NULL,NULL,NULL,NULL,'audio','*'),(19,9,'sms',NULL,NULL,NULL,NULL,NULL),(20,9,'mms',NULL,NULL,NULL,NULL,NULL),(21,9,'mmsto',NULL,NULL,NULL,NULL,NULL),(22,9,NULL,NULL,NULL,NULL,'image','*'),(23,9,NULL,NULL,NULL,NULL,'video','*'),(24,9,NULL,NULL,NULL,NULL,'audio','*');
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
INSERT INTO `IMimeTypes` VALUES (1,70,'image','*'),(2,88,'image','*'),(3,123,'image','*'),(4,156,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'eng.trickersticks.politicianssay'),(2,4,'eng.trickersticks.politicianssay'),(3,5,'eng.trickersticks.politicianssay'),(4,8,'eng.trickersticks.politicianssay'),(5,11,'eng.trickersticks.politicianssay'),(6,12,'eng.trickersticks.politicianssay'),(7,14,'eng.trickersticks.politicianssay'),(8,19,'photowithclown.iconosys.eng'),(9,22,'photowithclown.iconosys.eng'),(10,25,'photowithclown.iconosys.eng'),(11,27,'photowithclown.iconosys.eng'),(12,28,'balloffire.photo.iconosys.eng'),(13,31,'balloffire.photo.iconosys.eng'),(14,35,'wantedcowboy.photo.iconosys.eng'),(15,39,'wantedcowboy.photo.iconosys.eng'),(16,41,'balloffire.photo.iconosys.eng'),(17,42,'wantedcowboy.photo.iconosys.eng'),(18,45,'photowithclown.iconosys.eng'),(19,46,'fore.photo.iconosys.eng'),(20,49,'photowithclown.iconosys.eng'),(21,52,'wantedcowboy.photo.iconosys.eng'),(22,54,'photowithclown.iconosys.eng'),(23,56,'wantedcowboy.photo.iconosys.eng'),(24,63,'iconosys.valentine.br'),(25,69,'iconosys.valentine.br'),(26,73,'photowithclown.iconosys.eng'),(27,75,'wantedcowboy.photo.iconosys.eng'),(28,79,'wantedcowboy.photo.iconosys.eng'),(29,82,'fore.photo.iconosys.eng'),(30,91,'iconosys.valentine.br'),(31,93,'wantedcowboy.photo.iconosys.eng'),(32,94,'balloffire.photo.iconosys.eng'),(33,99,'balloffire.photo.iconosys.eng'),(34,104,'fore.photo.iconosys.eng'),(35,108,'iconosys.valentine.br'),(36,111,'photowithclown.iconosys.eng'),(37,112,'iconosys.valentine.br'),(38,113,'balloffire.photo.iconosys.eng'),(39,115,'photowithclown.iconosys.eng'),(40,118,'fore.photo.iconosys.eng'),(41,119,'iconosys.valentine.br'),(42,117,'balloffire.photo.iconosys.eng'),(43,121,'fore.photo.iconosys.eng'),(44,122,'iconosys.valentine.br'),(45,124,'photowithclown.iconosys.eng'),(46,126,'fore.photo.iconosys.eng'),(47,125,'wantedcowboy.photo.iconosys.eng'),(48,127,'balloffire.photo.iconosys.eng'),(49,128,'balloffire.photo.iconosys.eng'),(50,129,'iconosys.valentine.br'),(51,130,'wantedcowboy.photo.iconosys.eng'),(52,131,'fore.photo.iconosys.eng'),(53,134,'iconosys.valentine.br'),(54,136,'fore.photo.iconosys.eng'),(55,139,'balloffire.photo.iconosys.eng'),(56,140,'wantedcowboy.photo.iconosys.eng'),(57,138,'iconosys.valentine.br'),(58,144,'wantedcowboy.photo.iconosys.eng'),(59,143,'fore.photo.iconosys.eng'),(60,147,'fore.photo.iconosys.eng'),(61,146,'photowithclown.iconosys.eng'),(62,150,'fore.photo.iconosys.eng'),(63,149,'retail.runtracker.iconosys.eng'),(64,153,'wantedcowboy.photo.iconosys.eng'),(65,154,'photowithclown.iconosys.eng'),(66,157,'wantedcowboy.photo.iconosys.eng'),(67,158,'iconosys.valentine.br'),(68,155,'retail.runtracker.iconosys.eng'),(69,160,'iconosys.valentine.br'),(70,162,'retail.runtracker.iconosys.eng'),(71,163,'wantedcowboy.photo.iconosys.eng'),(72,164,'fore.photo.iconosys.eng'),(73,169,'iconosys.valentine.br'),(74,174,'fore.photo.iconosys.eng'),(75,178,'fore.photo.iconosys.eng'),(76,184,'fore.photo.iconosys.eng'),(77,191,'retail.runtracker.iconosys.eng'),(78,192,'retail.runtracker.iconosys.eng'),(79,193,'retail.runtracker.iconosys.eng'),(80,194,'retail.runtracker.iconosys.eng'),(81,195,'retail.runtracker.iconosys.eng'),(82,205,'retail.runtracker.iconosys.eng'),(83,206,'retail.runtracker.iconosys.eng'),(84,208,'retail.runtracker.iconosys.eng'),(85,210,'retail.runtracker.iconosys.eng'),(86,211,'retail.runtracker.iconosys.eng'),(87,213,'retail.runtracker.iconosys.eng'),(88,214,'retail.runtracker.iconosys.eng'),(89,215,'retail.runtracker.iconosys.eng'),(90,224,'retail.runtracker.iconosys.eng'),(91,225,'retail.runtracker.iconosys.eng'),(92,226,'retail.runtracker.iconosys.eng'),(93,227,'retail.runtracker.iconosys.eng'),(94,228,'retail.runtracker.iconosys.eng'),(95,230,'retail.runtracker.iconosys.eng'),(96,232,'retail.runtracker.iconosys.eng'),(97,233,'retail.runtracker.iconosys.eng'),(98,234,'retail.runtracker.iconosys.eng'),(99,235,'retail.runtracker.iconosys.eng'),(100,236,'retail.runtracker.iconosys.eng'),(101,238,'retail.runtracker.iconosys.eng'),(102,240,'retail.runtracker.iconosys.eng'),(103,242,'retail.runtracker.iconosys.eng'),(104,243,'retail.runtracker.iconosys.eng'),(105,244,'retail.runtracker.iconosys.eng'),(106,245,'retail.runtracker.iconosys.eng');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,4,0),(4,7,0),(5,11,0),(6,16,0),(7,21,0),(8,25,0),(9,28,0),(10,44,0),(11,55,0),(12,56,0),(13,55,0),(14,79,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,1,0),(4,4,0,0),(5,5,0,0),(6,6,1,0),(7,7,1,0),(8,8,0,0),(9,9,1,0),(10,11,1,0),(11,13,0,0),(12,14,0,0),(13,15,1,0),(14,16,0,0),(15,17,1,0),(16,18,1,0),(17,17,1,0),(18,17,1,0),(19,19,0,0),(20,17,1,0),(21,17,1,0),(22,20,0,0),(23,17,1,0),(24,17,1,0),(25,21,0,0),(26,17,1,0),(27,22,0,0),(28,23,0,0),(29,24,1,0),(30,24,1,0),(31,25,0,0),(32,24,1,0),(33,26,1,0),(34,24,1,0),(35,27,0,0),(36,24,1,0),(37,28,1,0),(38,24,1,0),(39,29,0,0),(40,24,1,0),(41,30,0,0),(42,31,0,0),(43,24,1,0),(44,32,1,0),(45,33,0,0),(46,34,0,0),(47,35,1,0),(48,36,1,0),(49,37,0,0),(50,38,1,0),(51,36,1,0),(52,39,0,0),(53,36,1,0),(54,40,0,0),(55,41,1,0),(56,42,0,0),(57,36,1,0),(58,43,1,0),(59,41,1,0),(60,44,1,0),(61,36,1,0),(62,41,1,0),(63,46,0,0),(64,36,1,0),(65,41,1,0),(66,36,1,0),(67,41,1,0),(68,49,1,0),(69,51,0,0),(70,50,1,0),(71,36,1,0),(72,41,1,0),(73,52,0,0),(74,41,1,0),(75,53,0,0),(76,54,1,0),(77,41,1,0),(78,55,1,0),(79,56,0,0),(80,55,1,0),(81,57,1,0),(82,58,0,0),(83,55,1,0),(84,59,1,0),(85,60,1,0),(86,55,1,0),(87,62,1,0),(88,64,1,0),(89,55,1,0),(90,63,1,0),(91,65,0,0),(92,55,1,0),(93,66,0,0),(94,67,0,0),(95,55,1,0),(96,69,1,0),(97,70,1,0),(98,55,1,0),(99,72,0,0),(100,71,1,0),(101,70,1,0),(102,73,1,0),(103,70,1,0),(104,75,0,0),(105,76,1,0),(106,77,1,0),(107,70,1,0),(108,78,0,0),(109,79,1,0),(110,70,1,0),(111,80,0,0),(112,82,0,0),(113,81,0,0),(114,70,1,0),(115,83,0,0),(116,70,1,0),(117,84,0,0),(118,85,0,0),(119,86,0,0),(120,70,1,0),(121,87,0,0),(122,89,0,0),(123,88,1,0),(124,90,0,0),(125,91,0,0),(126,92,0,0),(127,93,0,0),(128,97,0,0),(129,98,0,0),(130,99,0,0),(131,101,0,0),(132,100,1,0),(133,102,1,0),(134,103,0,0),(135,104,1,0),(136,105,0,0),(137,106,1,0),(138,107,0,0),(139,108,0,0),(140,109,0,0),(141,110,1,0),(142,111,1,0),(143,113,0,0),(144,114,0,0),(145,115,1,0),(146,116,0,0),(147,117,0,0),(148,118,1,0),(149,119,0,0),(150,120,0,0),(151,121,1,0),(152,122,1,0),(153,123,0,0),(154,124,0,0),(155,126,0,0),(156,125,1,0),(157,127,0,0),(158,128,0,0),(159,129,1,0),(160,132,0,0),(161,131,1,0),(162,133,0,0),(163,134,0,0),(164,137,0,0),(165,135,1,0),(166,136,1,0),(167,138,1,0),(168,136,1,0),(169,140,0,0),(170,139,1,0),(171,136,1,0),(172,141,1,0),(173,136,1,0),(174,142,0,0),(175,136,1,0),(176,143,1,0),(177,136,1,0),(178,144,0,0),(179,136,1,0),(180,136,1,0),(181,145,1,0),(182,146,1,0),(183,146,1,0),(184,148,0,0),(185,146,1,0),(186,146,1,0),(187,146,1,0),(188,146,1,0),(189,146,1,0),(190,146,1,0),(191,149,0,0),(192,150,0,0),(193,151,0,0),(194,152,0,0),(195,153,0,0),(196,154,1,0),(197,155,1,0),(198,155,1,0),(199,155,1,0),(200,155,1,0),(201,155,1,0),(202,155,1,0),(203,155,1,0),(204,155,1,0),(205,156,0,0),(206,157,0,0),(207,158,1,0),(208,159,0,0),(209,160,1,0),(210,161,0,0),(211,162,0,0),(212,163,1,0),(213,164,0,0),(214,165,0,0),(215,166,0,0),(216,167,1,0),(217,167,1,0),(218,167,1,0),(219,167,1,0),(220,167,1,0),(221,167,1,0),(222,167,1,0),(223,167,1,0),(224,168,0,0),(225,169,0,0),(226,170,0,0),(227,171,0,0),(228,172,0,0),(229,173,1,0),(230,174,0,0),(231,175,1,0),(232,176,0,0),(233,177,0,0),(234,178,0,0),(235,179,0,0),(236,180,0,0),(237,181,1,0),(238,182,0,0),(239,183,1,0),(240,184,0,0),(241,185,1,0),(242,186,0,0),(243,187,0,0),(244,188,0,0),(245,189,0,0),(246,190,1,0),(247,190,1,0),(248,190,1,0),(249,190,1,0),(250,190,1,0),(251,190,1,0),(252,190,1,0),(253,190,1,0),(254,191,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=755 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,39,36,2,NULL),(2,140,30,2,NULL),(3,153,32,2,NULL),(4,78,16,2,NULL),(5,80,16,2,NULL),(6,83,16,2,NULL),(7,86,16,2,NULL),(8,89,16,2,NULL),(9,92,16,2,NULL),(10,95,16,2,NULL),(11,98,16,2,NULL),(12,151,16,2,NULL),(13,29,16,2,NULL),(14,30,16,2,NULL),(15,32,16,2,NULL),(16,34,16,2,NULL),(17,36,16,2,NULL),(18,38,16,2,NULL),(19,40,16,2,NULL),(20,43,16,2,NULL),(21,15,16,2,NULL),(22,17,16,2,NULL),(23,18,16,2,NULL),(24,20,16,2,NULL),(25,21,16,2,NULL),(26,23,16,2,NULL),(27,24,16,2,NULL),(28,26,16,2,NULL),(29,90,16,2,NULL),(30,48,16,2,NULL),(31,51,16,2,NULL),(32,53,16,2,NULL),(33,57,16,2,NULL),(34,61,16,2,NULL),(35,64,16,2,NULL),(36,66,16,2,NULL),(37,71,16,2,NULL),(38,167,16,2,NULL),(39,97,16,2,NULL),(40,101,16,2,NULL),(41,103,16,2,NULL),(42,107,16,2,NULL),(43,110,16,2,NULL),(44,114,16,2,NULL),(45,116,16,2,NULL),(46,120,16,2,NULL),(47,141,16,2,NULL),(48,55,16,2,NULL),(49,59,16,2,NULL),(50,62,16,2,NULL),(51,65,16,2,NULL),(52,67,16,2,NULL),(53,72,16,2,NULL),(54,74,16,2,NULL),(55,77,16,2,NULL),(56,254,16,2,NULL),(57,182,16,2,NULL),(58,183,16,2,NULL),(59,185,16,2,NULL),(60,186,16,2,NULL),(61,187,16,2,NULL),(62,188,16,2,NULL),(63,189,16,2,NULL),(64,190,16,2,NULL),(65,246,16,2,NULL),(66,247,16,2,NULL),(67,248,16,2,NULL),(68,249,16,2,NULL),(69,250,16,2,NULL),(70,251,16,2,NULL),(71,252,16,2,NULL),(72,253,16,2,NULL),(73,166,16,2,NULL),(74,168,16,2,NULL),(75,171,16,2,NULL),(76,173,16,2,NULL),(77,175,16,2,NULL),(78,177,16,2,NULL),(79,179,16,2,NULL),(80,180,16,2,NULL),(81,130,16,2,NULL),(82,144,30,2,NULL),(83,157,34,2,NULL),(84,167,1,2,NULL),(85,167,2,2,NULL),(86,167,7,2,NULL),(87,167,25,2,NULL),(88,167,44,2,NULL),(89,167,55,2,NULL),(90,167,79,2,NULL),(91,167,56,2,NULL),(92,79,38,2,NULL),(93,163,38,2,NULL),(94,52,36,2,NULL),(95,93,30,2,NULL),(96,97,1,2,NULL),(97,101,1,2,NULL),(98,103,1,2,NULL),(99,107,1,2,NULL),(100,110,1,2,NULL),(101,114,1,2,NULL),(102,116,1,2,NULL),(103,120,1,2,NULL),(104,97,2,2,NULL),(105,101,2,2,NULL),(106,103,2,2,NULL),(107,107,2,2,NULL),(108,110,2,2,NULL),(109,114,2,2,NULL),(110,116,2,2,NULL),(111,120,2,2,NULL),(112,97,7,2,NULL),(113,101,7,2,NULL),(114,103,7,2,NULL),(115,107,7,2,NULL),(116,110,7,2,NULL),(117,114,7,2,NULL),(118,116,7,2,NULL),(119,120,7,2,NULL),(120,97,25,2,NULL),(121,101,25,2,NULL),(122,103,25,2,NULL),(123,107,25,2,NULL),(124,110,25,2,NULL),(125,114,25,2,NULL),(126,116,25,2,NULL),(127,120,25,2,NULL),(128,97,44,2,NULL),(129,101,44,2,NULL),(130,103,44,2,NULL),(131,107,44,2,NULL),(132,110,44,2,NULL),(133,114,44,2,NULL),(134,116,44,2,NULL),(135,120,44,2,NULL),(136,97,55,2,NULL),(137,101,55,2,NULL),(138,103,55,2,NULL),(139,107,55,2,NULL),(140,110,55,2,NULL),(141,114,55,2,NULL),(142,116,55,2,NULL),(143,120,55,2,NULL),(144,97,79,2,NULL),(145,101,79,2,NULL),(146,103,79,2,NULL),(147,107,79,2,NULL),(148,110,79,2,NULL),(149,114,79,2,NULL),(150,116,79,2,NULL),(151,120,79,2,NULL),(152,97,56,2,NULL),(153,101,56,2,NULL),(154,103,56,2,NULL),(155,107,56,2,NULL),(156,110,56,2,NULL),(157,114,56,2,NULL),(158,116,56,2,NULL),(159,120,56,2,NULL),(160,111,15,2,NULL),(161,115,19,2,NULL),(162,154,12,2,NULL),(163,78,2,2,NULL),(164,80,2,2,NULL),(165,83,2,2,NULL),(166,86,2,2,NULL),(167,89,2,2,NULL),(168,92,2,2,NULL),(169,95,2,2,NULL),(170,98,2,2,NULL),(171,151,2,2,NULL),(172,29,2,2,NULL),(173,30,2,2,NULL),(174,32,2,2,NULL),(175,34,2,2,NULL),(176,36,2,2,NULL),(177,38,2,2,NULL),(178,40,2,2,NULL),(179,43,2,2,NULL),(180,15,2,2,NULL),(181,17,2,2,NULL),(182,18,2,2,NULL),(183,20,2,2,NULL),(184,21,2,2,NULL),(185,23,2,2,NULL),(186,24,2,2,NULL),(187,26,2,2,NULL),(188,90,2,2,NULL),(189,48,2,2,NULL),(190,51,2,2,NULL),(191,53,2,2,NULL),(192,57,2,2,NULL),(193,61,2,2,NULL),(194,64,2,2,NULL),(195,66,2,2,NULL),(196,71,2,2,NULL),(197,141,2,2,NULL),(198,55,2,2,NULL),(199,59,2,2,NULL),(200,62,2,2,NULL),(201,65,2,2,NULL),(202,67,2,2,NULL),(203,72,2,2,NULL),(204,74,2,2,NULL),(205,77,2,2,NULL),(206,254,2,2,NULL),(207,182,2,2,NULL),(208,183,2,2,NULL),(209,185,2,2,NULL),(210,186,2,2,NULL),(211,187,2,2,NULL),(212,188,2,2,NULL),(213,189,2,2,NULL),(214,190,2,2,NULL),(215,246,2,2,NULL),(216,247,2,2,NULL),(217,248,2,2,NULL),(218,249,2,2,NULL),(219,250,2,2,NULL),(220,251,2,2,NULL),(221,252,2,2,NULL),(222,253,2,2,NULL),(223,166,2,2,NULL),(224,168,2,2,NULL),(225,171,2,2,NULL),(226,173,2,2,NULL),(227,175,2,2,NULL),(228,177,2,2,NULL),(229,179,2,2,NULL),(230,180,2,2,NULL),(231,54,2,2,NULL),(232,146,12,2,NULL),(233,78,1,2,NULL),(234,80,1,2,NULL),(235,83,1,2,NULL),(236,86,1,2,NULL),(237,89,1,2,NULL),(238,92,1,2,NULL),(239,95,1,2,NULL),(240,98,1,2,NULL),(241,151,1,2,NULL),(242,78,7,2,NULL),(243,80,7,2,NULL),(244,83,7,2,NULL),(245,86,7,2,NULL),(246,89,7,2,NULL),(247,92,7,2,NULL),(248,95,7,2,NULL),(249,98,7,2,NULL),(250,151,7,2,NULL),(251,78,25,2,NULL),(252,80,25,2,NULL),(253,83,25,2,NULL),(254,86,25,2,NULL),(255,89,25,2,NULL),(256,92,25,2,NULL),(257,95,25,2,NULL),(258,98,25,2,NULL),(259,151,25,2,NULL),(260,78,44,2,NULL),(261,80,44,2,NULL),(262,83,44,2,NULL),(263,86,44,2,NULL),(264,89,44,2,NULL),(265,92,44,2,NULL),(266,95,44,2,NULL),(267,98,44,2,NULL),(268,151,44,2,NULL),(269,78,55,2,NULL),(270,80,55,2,NULL),(271,83,55,2,NULL),(272,86,55,2,NULL),(273,89,55,2,NULL),(274,92,55,2,NULL),(275,104,42,2,NULL),(276,95,55,2,NULL),(277,121,35,2,NULL),(278,98,55,2,NULL),(279,147,39,2,NULL),(280,151,55,2,NULL),(281,78,79,2,NULL),(282,29,25,2,NULL),(283,80,79,2,NULL),(284,83,79,2,NULL),(285,30,25,2,NULL),(286,86,79,2,NULL),(287,32,25,2,NULL),(288,89,79,2,NULL),(289,34,25,2,NULL),(290,92,79,2,NULL),(291,36,25,2,NULL),(292,95,79,2,NULL),(293,38,25,2,NULL),(294,98,79,2,NULL),(295,40,25,2,NULL),(296,151,79,2,NULL),(297,43,25,2,NULL),(298,78,56,2,NULL),(299,15,25,2,NULL),(300,80,56,2,NULL),(301,208,58,2,NULL),(302,17,25,2,NULL),(303,83,56,2,NULL),(304,233,67,2,NULL),(305,18,25,2,NULL),(306,86,56,2,NULL),(307,20,25,2,NULL),(308,243,59,2,NULL),(309,89,56,2,NULL),(310,21,25,2,NULL),(311,92,56,2,NULL),(312,95,56,2,NULL),(313,23,25,2,NULL),(314,98,56,2,NULL),(315,151,56,2,NULL),(316,24,25,2,NULL),(317,25,22,2,NULL),(318,29,56,2,NULL),(319,26,25,2,NULL),(320,45,22,2,NULL),(321,30,56,2,NULL),(322,90,25,2,NULL),(323,49,12,2,NULL),(324,32,56,2,NULL),(325,48,25,2,NULL),(326,73,19,2,NULL),(327,34,56,2,NULL),(328,51,25,2,NULL),(329,29,1,2,NULL),(330,36,56,2,NULL),(331,53,25,2,NULL),(332,30,1,2,NULL),(333,38,56,2,NULL),(334,57,25,2,NULL),(335,32,1,2,NULL),(336,40,56,2,NULL),(337,61,25,2,NULL),(338,34,1,2,NULL),(339,43,56,2,NULL),(340,64,25,2,NULL),(341,36,1,2,NULL),(342,15,56,2,NULL),(343,66,25,2,NULL),(344,38,1,2,NULL),(345,17,56,2,NULL),(346,71,25,2,NULL),(347,40,1,2,NULL),(348,18,56,2,NULL),(349,141,25,2,NULL),(350,43,1,2,NULL),(351,20,56,2,NULL),(352,55,25,2,NULL),(353,21,56,2,NULL),(354,29,7,2,NULL),(355,59,25,2,NULL),(356,30,7,2,NULL),(357,23,56,2,NULL),(358,62,25,2,NULL),(359,32,7,2,NULL),(360,24,56,2,NULL),(361,65,25,2,NULL),(362,34,7,2,NULL),(363,26,56,2,NULL),(364,67,25,2,NULL),(365,36,7,2,NULL),(366,90,56,2,NULL),(367,72,25,2,NULL),(368,38,7,2,NULL),(369,48,56,2,NULL),(370,74,25,2,NULL),(371,40,7,2,NULL),(372,51,56,2,NULL),(373,77,25,2,NULL),(374,43,7,2,NULL),(375,53,56,2,NULL),(376,254,25,2,NULL),(377,29,44,2,NULL),(378,57,56,2,NULL),(379,182,25,2,NULL),(380,30,44,2,NULL),(381,61,56,2,NULL),(382,183,25,2,NULL),(383,32,44,2,NULL),(384,64,56,2,NULL),(385,185,25,2,NULL),(386,34,44,2,NULL),(387,66,56,2,NULL),(388,186,25,2,NULL),(389,36,44,2,NULL),(390,71,56,2,NULL),(391,187,25,2,NULL),(392,38,44,2,NULL),(393,141,56,2,NULL),(394,188,25,2,NULL),(395,40,44,2,NULL),(396,189,25,2,NULL),(397,55,56,2,NULL),(398,43,44,2,NULL),(399,190,25,2,NULL),(400,59,56,2,NULL),(401,29,55,2,NULL),(402,246,25,2,NULL),(403,62,56,2,NULL),(404,30,55,2,NULL),(405,65,56,2,NULL),(406,247,25,2,NULL),(407,32,55,2,NULL),(408,248,25,2,NULL),(409,67,56,2,NULL),(410,34,55,2,NULL),(411,249,25,2,NULL),(412,72,56,2,NULL),(413,36,55,2,NULL),(414,250,25,2,NULL),(415,74,56,2,NULL),(416,38,55,2,NULL),(417,77,56,2,NULL),(418,251,25,2,NULL),(419,40,55,2,NULL),(420,254,56,2,NULL),(421,252,25,2,NULL),(422,43,55,2,NULL),(423,182,56,2,NULL),(424,253,25,2,NULL),(425,29,79,2,NULL),(426,183,56,2,NULL),(427,166,25,2,NULL),(428,30,79,2,NULL),(429,185,56,2,NULL),(430,168,25,2,NULL),(431,32,79,2,NULL),(432,171,25,2,NULL),(433,186,56,2,NULL),(434,34,79,2,NULL),(435,187,56,2,NULL),(436,173,25,2,NULL),(437,36,79,2,NULL),(438,175,25,2,NULL),(439,188,56,2,NULL),(440,38,79,2,NULL),(441,177,25,2,NULL),(442,40,79,2,NULL),(443,189,56,2,NULL),(444,179,25,2,NULL),(445,43,79,2,NULL),(446,190,56,2,NULL),(447,180,25,2,NULL),(448,246,56,2,NULL),(449,82,25,2,NULL),(450,247,56,2,NULL),(451,136,41,2,NULL),(452,248,56,2,NULL),(453,164,35,2,NULL),(454,249,56,2,NULL),(455,141,1,2,NULL),(456,250,56,2,NULL),(457,141,7,2,NULL),(458,251,56,2,NULL),(459,141,44,2,NULL),(460,252,56,2,NULL),(461,141,55,2,NULL),(462,253,56,2,NULL),(463,91,50,2,NULL),(464,141,79,2,NULL),(465,166,56,2,NULL),(466,126,43,2,NULL),(467,112,46,2,NULL),(468,168,56,2,NULL),(469,178,43,2,NULL),(470,171,56,2,NULL),(471,122,52,2,NULL),(472,143,35,2,NULL),(473,173,56,2,NULL),(474,184,42,2,NULL),(475,169,52,2,NULL),(476,175,56,2,NULL),(477,55,1,2,NULL),(478,177,56,2,NULL),(479,15,44,2,NULL),(480,59,1,2,NULL),(481,179,56,2,NULL),(482,17,44,2,NULL),(483,62,1,2,NULL),(484,180,56,2,NULL),(485,65,1,2,NULL),(486,18,44,2,NULL),(487,162,59,2,NULL),(488,67,1,2,NULL),(489,20,44,2,NULL),(490,72,1,2,NULL),(491,236,74,2,NULL),(492,21,44,2,NULL),(493,74,1,2,NULL),(494,254,1,2,NULL),(495,23,44,2,NULL),(496,77,1,2,NULL),(497,254,7,2,NULL),(498,24,44,2,NULL),(499,254,44,2,NULL),(500,55,7,2,NULL),(501,26,44,2,NULL),(502,59,7,2,NULL),(503,254,55,2,NULL),(504,90,44,2,NULL),(505,62,7,2,NULL),(506,254,79,2,NULL),(507,48,44,2,NULL),(508,65,7,2,NULL),(509,210,59,2,NULL),(510,51,44,2,NULL),(511,67,7,2,NULL),(512,182,1,2,NULL),(513,53,44,2,NULL),(514,183,1,2,NULL),(515,72,7,2,NULL),(516,57,44,2,NULL),(517,185,1,2,NULL),(518,74,7,2,NULL),(519,61,44,2,NULL),(520,186,1,2,NULL),(521,77,7,2,NULL),(522,64,44,2,NULL),(523,187,1,2,NULL),(524,55,44,2,NULL),(525,66,44,2,NULL),(526,59,44,2,NULL),(527,188,1,2,NULL),(528,71,44,2,NULL),(529,189,1,2,NULL),(530,62,44,2,NULL),(531,65,44,2,NULL),(532,190,1,2,NULL),(533,67,44,2,NULL),(534,72,44,2,NULL),(535,74,44,2,NULL),(536,182,7,2,NULL),(537,77,44,2,NULL),(538,183,7,2,NULL),(539,55,55,2,NULL),(540,182,44,2,NULL),(541,185,7,2,NULL),(542,59,55,2,NULL),(543,183,44,2,NULL),(544,62,55,2,NULL),(545,186,7,2,NULL),(546,185,44,2,NULL),(547,187,7,2,NULL),(548,65,55,2,NULL),(549,186,44,2,NULL),(550,188,7,2,NULL),(551,67,55,2,NULL),(552,187,44,2,NULL),(553,189,7,2,NULL),(554,72,55,2,NULL),(555,188,44,2,NULL),(556,190,7,2,NULL),(557,74,55,2,NULL),(558,189,44,2,NULL),(559,77,55,2,NULL),(560,190,44,2,NULL),(561,246,44,2,NULL),(562,55,79,2,NULL),(563,182,55,2,NULL),(564,247,44,2,NULL),(565,59,79,2,NULL),(566,183,55,2,NULL),(567,248,44,2,NULL),(568,62,79,2,NULL),(569,185,55,2,NULL),(570,249,44,2,NULL),(571,186,55,2,NULL),(572,65,79,2,NULL),(573,250,44,2,NULL),(574,67,79,2,NULL),(575,187,55,2,NULL),(576,251,44,2,NULL),(577,72,79,2,NULL),(578,188,55,2,NULL),(579,252,44,2,NULL),(580,74,79,2,NULL),(581,189,55,2,NULL),(582,253,44,2,NULL),(583,190,55,2,NULL),(584,77,79,2,NULL),(585,166,44,2,NULL),(586,182,79,2,NULL),(587,168,44,2,NULL),(588,183,79,2,NULL),(589,171,44,2,NULL),(590,185,79,2,NULL),(591,173,44,2,NULL),(592,186,79,2,NULL),(593,175,44,2,NULL),(594,187,79,2,NULL),(595,177,44,2,NULL),(596,188,79,2,NULL),(597,179,44,2,NULL),(598,189,79,2,NULL),(599,180,44,2,NULL),(600,190,79,2,NULL),(601,108,53,2,NULL),(602,246,1,2,NULL),(603,158,53,2,NULL),(604,247,1,2,NULL),(605,129,52,2,NULL),(606,248,1,2,NULL),(607,160,53,2,NULL),(608,249,1,2,NULL),(609,15,55,2,NULL),(610,250,1,2,NULL),(611,17,55,2,NULL),(612,251,1,2,NULL),(613,18,55,2,NULL),(614,252,1,2,NULL),(615,20,55,2,NULL),(616,253,1,2,NULL),(617,21,55,2,NULL),(618,246,7,2,NULL),(619,23,55,2,NULL),(620,247,7,2,NULL),(621,24,55,2,NULL),(622,248,7,2,NULL),(623,26,55,2,NULL),(624,249,7,2,NULL),(625,90,55,2,NULL),(626,250,7,2,NULL),(627,48,55,2,NULL),(628,251,7,2,NULL),(629,51,55,2,NULL),(630,252,7,2,NULL),(631,53,55,2,NULL),(632,253,7,2,NULL),(633,57,55,2,NULL),(634,246,55,2,NULL),(635,61,55,2,NULL),(636,247,55,2,NULL),(637,64,55,2,NULL),(638,248,55,2,NULL),(639,66,55,2,NULL),(640,249,55,2,NULL),(641,71,55,2,NULL),(642,250,55,2,NULL),(643,251,55,2,NULL),(644,252,55,2,NULL),(645,253,55,2,NULL),(646,246,79,2,NULL),(647,166,55,2,NULL),(648,247,79,2,NULL),(649,168,55,2,NULL),(650,248,79,2,NULL),(651,171,55,2,NULL),(652,249,79,2,NULL),(653,173,55,2,NULL),(654,250,79,2,NULL),(655,175,55,2,NULL),(656,251,79,2,NULL),(657,177,55,2,NULL),(658,252,79,2,NULL),(659,179,55,2,NULL),(660,253,79,2,NULL),(661,180,55,2,NULL),(662,193,59,2,NULL),(663,15,79,2,NULL),(664,194,67,2,NULL),(665,17,79,2,NULL),(666,232,58,2,NULL),(667,18,79,2,NULL),(668,230,78,2,NULL),(669,20,79,2,NULL),(670,234,78,2,NULL),(671,21,79,2,NULL),(672,166,1,2,NULL),(673,23,79,2,NULL),(674,168,1,2,NULL),(675,24,79,2,NULL),(676,171,1,2,NULL),(677,26,79,2,NULL),(678,173,1,2,NULL),(679,90,79,2,NULL),(680,175,1,2,NULL),(681,48,79,2,NULL),(682,177,1,2,NULL),(683,51,79,2,NULL),(684,179,1,2,NULL),(685,53,79,2,NULL),(686,180,1,2,NULL),(687,57,79,2,NULL),(688,166,7,2,NULL),(689,61,79,2,NULL),(690,168,7,2,NULL),(691,64,79,2,NULL),(692,171,7,2,NULL),(693,66,79,2,NULL),(694,173,7,2,NULL),(695,71,79,2,NULL),(696,175,7,2,NULL),(697,166,79,2,NULL),(698,177,7,2,NULL),(699,168,79,2,NULL),(700,179,7,2,NULL),(701,171,79,2,NULL),(702,180,7,2,NULL),(703,173,79,2,NULL),(704,175,79,2,NULL),(705,177,79,2,NULL),(706,179,79,2,NULL),(707,180,79,2,NULL),(708,213,59,2,NULL),(709,28,27,2,NULL),(710,41,20,2,NULL),(711,128,24,2,NULL),(712,15,7,2,NULL),(713,17,7,2,NULL),(714,18,7,2,NULL),(715,20,7,2,NULL),(716,21,7,2,NULL),(717,23,7,2,NULL),(718,24,7,2,NULL),(719,26,7,2,NULL),(720,90,7,2,NULL),(721,48,7,2,NULL),(722,51,7,2,NULL),(723,53,7,2,NULL),(724,57,7,2,NULL),(725,61,7,2,NULL),(726,64,7,2,NULL),(727,66,7,2,NULL),(728,71,7,2,NULL),(729,94,7,2,NULL),(730,113,18,2,NULL),(731,15,1,2,NULL),(732,17,1,2,NULL),(733,18,1,2,NULL),(734,20,1,2,NULL),(735,21,1,2,NULL),(736,23,1,2,NULL),(737,24,1,2,NULL),(738,26,1,2,NULL),(739,90,1,2,NULL),(740,127,29,2,NULL),(741,48,1,2,NULL),(742,51,1,2,NULL),(743,53,1,2,NULL),(744,57,1,2,NULL),(745,61,1,2,NULL),(746,64,1,2,NULL),(747,66,1,2,NULL),(748,71,1,2,NULL),(749,8,6,2,NULL),(750,11,3,2,NULL),(751,5,8,2,NULL),(752,12,9,2,NULL),(753,4,10,2,NULL),(754,14,10,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (8,'android.permission.ACCESS_COARSE_LOCATION'),(6,'android.permission.ACCESS_FINE_LOCATION'),(12,'android.permission.CAMERA'),(18,'android.permission.CHANGE_CONFIGURATION'),(17,'android.permission.DEVICE_POWER'),(16,'android.permission.FLASHLIGHT'),(10,'android.permission.GET_ACCOUNTS'),(13,'android.permission.HARDWARE_TEST'),(4,'android.permission.INTERNET'),(9,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(2,'android.permission.READ_SMS'),(14,'android.permission.RECEIVE_BOOT_COMPLETED'),(3,'android.permission.SEND_SMS'),(11,'android.permission.WAKE_LOCK'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(15,'android.permission.WRITE_SETTINGS'),(7,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(2,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(3,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(4,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(5,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(6,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(7,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(8,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(9,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(10,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(11,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(12,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(13,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(14,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(15,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(16,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(17,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(18,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(19,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(22,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(23,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(24,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(25,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(26,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(27,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(28,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(29,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(30,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(31,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(32,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(33,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(34,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(35,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(36,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(37,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(38,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(39,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(40,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(41,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(42,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(43,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(44,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(45,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(46,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(47,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(48,NULL,NULL,'http://www.iconosys.com/product.php',NULL,NULL,NULL),(49,NULL,NULL,'http://www.iconosys.com/product.php',NULL,NULL,NULL),(50,NULL,NULL,'http://www.iconosys.com/product.php',NULL,NULL,NULL),(51,NULL,NULL,'http://www.iconosys.com/product.php',NULL,NULL,NULL),(52,NULL,NULL,'http://advertise.iconosys.com',NULL,NULL,NULL),(53,NULL,NULL,'http://www.iconosys.com/product.php',NULL,NULL,NULL),(54,NULL,NULL,'http://www.iconosys.com/product.php',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,12,7),(2,45,17),(3,47,18),(4,61,24),(5,68,26);
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,2,1),(3,1,2),(4,2,2),(5,1,3),(6,2,3),(7,1,4),(8,2,4),(9,1,5),(10,2,5),(11,1,6),(12,2,6),(13,1,7),(14,2,7),(15,1,8),(16,2,8),(17,1,9),(18,2,9),(19,1,10),(20,2,11),(21,1,11),(22,2,12),(23,3,1),(24,3,2),(25,3,3),(26,3,4),(27,3,5),(28,3,6),(29,3,7),(30,3,8),(31,3,9),(32,3,11),(33,3,12),(34,4,1),(35,4,2),(36,4,3),(37,4,4),(38,4,5),(39,4,6),(40,4,7),(41,4,8),(42,4,9),(43,4,10),(44,5,1),(45,5,2),(46,4,11),(47,4,12),(48,5,3),(49,5,4),(50,5,5),(51,5,6),(52,5,7),(53,5,8),(54,5,9),(55,5,10),(56,5,11),(57,5,12),(58,6,17),(59,6,16),(60,6,1),(61,6,18),(62,6,3),(63,6,4),(64,6,9),(65,6,11),(66,6,12),(67,6,13),(68,6,14),(69,6,15),(70,7,1),(71,7,2),(72,7,3),(73,7,4),(74,7,5),(75,7,6),(76,7,7),(77,7,8),(78,7,9),(79,7,10),(80,7,11),(81,7,12);
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

-- Dump completed on 2015-10-12  3:30:37
