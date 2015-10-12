-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_484
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (3,'android.intent.action.BOOT_COMPLETED'),(7,'android.intent.action.CHOOSER'),(9,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(6,'android.intent.action.PICK'),(2,'android.intent.action.SENDTO'),(5,'android.intent.action.VIEW'),(8,'android.media.action.IMAGE_CAPTURE'),(4,'android.provider.Telephony.SMS_RECEIVED'),(11,'android.settings.LOCATION_SOURCE_SETTINGS'),(10,'wayne.jeff.dev.valentine.esp');
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
INSERT INTO `Applications` VALUES (1,'eng.trickersticks.generals',2),(2,'evolution.iconosys.eng',1),(3,'hanginwgnomies.photo.iconosys.eng',4),(4,'mustachebooth.iconosys.eng',1),(5,'iconosys.valentine.esp',4),(6,'eng.trickortracker.us',7),(7,'craftshowbuzzer.iconosys.eng',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'eng.trickersticks.generals.TrickerSticks'),(2,1,'eng.trickersticks.generals.GlowSticks'),(3,1,'eng.trickersticks.generals.Registration'),(4,2,'evolution.iconosys.eng.PollApp'),(5,2,'evolution.iconosys.eng.PollNew'),(6,2,'evolution.iconosys.eng.ShowTerms'),(7,2,'evolution.iconosys.eng.PollResult'),(8,2,'evolution.iconosys.eng.AdView'),(9,3,'hanginwgnomies.photo.iconosys.eng.MeInJail'),(10,2,'evolution.iconosys.eng.OtherApps'),(11,2,'evolution.iconosys.eng.IconosysActivity'),(12,3,'hanginwgnomies.photo.iconosys.eng.PhotoView'),(13,2,'evolution.iconosys.eng.RegistrationScreen'),(14,2,'evolution.iconosys.eng.LocationSender'),(15,4,'mustachebooth.iconosys.eng.FrameIt'),(16,4,'mustachebooth.iconosys.eng.PhotoView'),(17,3,'hanginwgnomies.photo.iconosys.eng.OtherApps'),(18,3,'hanginwgnomies.photo.iconosys.eng.ShowTerms'),(19,3,'hanginwgnomies.photo.iconosys.eng.RegistrationScreen'),(20,3,'hanginwgnomies.photo.iconosys.eng.ShareImage'),(21,4,'mustachebooth.iconosys.eng.OtherApps'),(22,3,'hanginwgnomies.photo.iconosys.eng.ShowPopUp'),(23,4,'mustachebooth.iconosys.eng.ShowTerms'),(24,3,'hanginwgnomies.photo.iconosys.eng.AdView'),(25,4,'mustachebooth.iconosys.eng.RegistrationScreen'),(26,3,'hanginwgnomies.photo.iconosys.eng.LocationSender'),(27,4,'mustachebooth.iconosys.eng.ShareImage'),(28,4,'mustachebooth.iconosys.eng.ShowPopUp'),(29,4,'mustachebooth.iconosys.eng.AdView'),(30,4,'mustachebooth.iconosys.eng.LocationSender'),(31,5,'iconosys.valentine.esp.ValentineMain'),(32,5,'iconosys.valentine.esp.MyValentine'),(33,5,'iconosys.valentine.esp.OtherApps'),(34,5,'iconosys.valentine.esp.ItemDialog'),(35,5,'iconosys.valentine.esp.MyKissHugs'),(36,5,'iconosys.valentine.esp.ShowTerms'),(37,5,'iconosys.valentine.esp.RegistrationScreen'),(38,5,'iconosys.valentine.esp.SweetHeart'),(39,5,'iconosys.valentine.esp.ValentineSvc'),(40,5,'iconosys.valentine.esp.TickSvc'),(41,5,'iconosys.valentine.esp.LocationSender'),(42,5,'iconosys.valentine.esp.BootReceiver'),(43,6,'eng.trickortracker.us.Tricker'),(44,6,'eng.trickortracker.us.Settings'),(45,7,'craftshowbuzzer.iconosys.eng.FlyDay'),(46,6,'eng.trickortracker.us.AlertAudios'),(47,6,'eng.trickortracker.us.AlertDialogs'),(48,6,'eng.trickortracker.us.Registration'),(49,7,'craftshowbuzzer.iconosys.eng.OtherApps'),(50,6,'eng.trickortracker.us.DisplayMap'),(51,7,'craftshowbuzzer.iconosys.eng.CatchFly'),(52,6,'eng.trickortracker.us.DisplayMap1'),(53,7,'craftshowbuzzer.iconosys.eng.SettingsFly'),(54,6,'eng.trickortracker.us.Expired'),(55,7,'craftshowbuzzer.iconosys.eng.PostOffer'),(56,6,'eng.trickortracker.us.ChildTricker'),(57,7,'craftshowbuzzer.iconosys.eng.AddMembers'),(58,6,'eng.trickortracker.us.ParentTricker'),(59,7,'craftshowbuzzer.iconosys.eng.AdView'),(60,6,'eng.trickortracker.us.ClientSettings'),(61,7,'craftshowbuzzer.iconosys.eng.NewPostOffer'),(62,6,'eng.trickortracker.us.GlowSticks'),(63,7,'craftshowbuzzer.iconosys.eng.TeamCatchFly'),(64,6,'eng.trickortracker.us.SendMsg'),(65,7,'craftshowbuzzer.iconosys.eng.AllCatchFly'),(66,6,'eng.trickortracker.us.MsgPro'),(67,7,'craftshowbuzzer.iconosys.eng.DisplayMap'),(68,6,'eng.trickortracker.us.MySendMsg'),(69,7,'craftshowbuzzer.iconosys.eng.LocationSender'),(70,6,'eng.trickortracker.us.OpenDial'),(71,6,'eng.trickortracker.us.OpenDial1'),(72,6,'eng.trickortracker.us.Neram'),(73,6,'eng.trickortracker.us.GetLocation'),(74,6,'eng.trickortracker.us.SmsReceiver'),(75,2,'evolution.iconosys.eng.OtherApps$3'),(76,2,'evolution.iconosys.eng.OtherApps$4'),(77,2,'evolution.iconosys.eng.OtherApps$1'),(78,2,'evolution.iconosys.eng.OtherApps$5'),(79,2,'evolution.iconosys.eng.OtherApps$2'),(80,2,'evolution.iconosys.eng.OtherApps$6'),(81,3,'hanginwgnomies.photo.iconosys.eng.OtherApps$4'),(82,2,'evolution.iconosys.eng.PollApp$1'),(83,2,'evolution.iconosys.eng.RegistrationScreen$1'),(84,5,'iconosys.valentine.esp.OtherApps$1'),(85,5,'iconosys.valentine.esp.SweetHeart$2'),(86,5,'iconosys.valentine.esp.OtherApps$5'),(87,4,'mustachebooth.iconosys.eng.OtherApps$4'),(88,3,'hanginwgnomies.photo.iconosys.eng.MeInJail$1'),(89,3,'hanginwgnomies.photo.iconosys.eng.OtherApps$5'),(90,4,'mustachebooth.iconosys.eng.OtherApps$3'),(91,5,'iconosys.valentine.esp.ValentineMain$5'),(92,5,'iconosys.valentine.esp.MyValentine$2'),(93,4,'mustachebooth.iconosys.eng.RegistrationScreen$1'),(94,4,'mustachebooth.iconosys.eng.PhotoView$1'),(95,3,'hanginwgnomies.photo.iconosys.eng.MeInJail$2'),(96,5,'iconosys.valentine.esp.OtherApps$2'),(97,3,'hanginwgnomies.photo.iconosys.eng.RegistrationScreen$1'),(98,5,'iconosys.valentine.esp.OtherApps$3'),(99,3,'hanginwgnomies.photo.iconosys.eng.PhotoView$1'),(100,7,'craftshowbuzzer.iconosys.eng.OtherApps$3'),(101,7,'craftshowbuzzer.iconosys.eng.OtherApps$4'),(102,3,'hanginwgnomies.photo.iconosys.eng.OtherApps$2'),(103,6,'eng.trickortracker.us.Settings$2'),(104,7,'craftshowbuzzer.iconosys.eng.OtherApps$2'),(105,6,'eng.trickortracker.us.ChildTricker$5'),(106,5,'iconosys.valentine.esp.ValentineMain$2'),(107,3,'hanginwgnomies.photo.iconosys.eng.OtherApps$3'),(108,4,'mustachebooth.iconosys.eng.OtherApps$6'),(109,6,'eng.trickortracker.us.ChildTricker$4'),(110,5,'iconosys.valentine.esp.ValentineMain$3'),(111,3,'hanginwgnomies.photo.iconosys.eng.OtherApps$1'),(112,6,'eng.trickortracker.us.Tricker$1'),(113,4,'mustachebooth.iconosys.eng.OtherApps$5'),(114,7,'craftshowbuzzer.iconosys.eng.PostOffer$1'),(115,4,'mustachebooth.iconosys.eng.OtherApps$1'),(116,5,'iconosys.valentine.esp.ValentineMain$4'),(117,6,'eng.trickortracker.us.Tricker$2'),(118,7,'craftshowbuzzer.iconosys.eng.OtherApps$5'),(119,5,'iconosys.valentine.esp.RegistrationScreen$1'),(120,6,'eng.trickortracker.us.ChildTricker$6'),(121,4,'mustachebooth.iconosys.eng.FrameIt$1'),(122,3,'hanginwgnomies.photo.iconosys.eng.OtherApps$6'),(123,5,'iconosys.valentine.esp.OtherApps$6'),(124,7,'craftshowbuzzer.iconosys.eng.FlyDay$1'),(125,5,'iconosys.valentine.esp.OtherApps$4'),(126,4,'mustachebooth.iconosys.eng.OtherApps$2'),(127,7,'craftshowbuzzer.iconosys.eng.OtherApps$1'),(128,6,'eng.trickortracker.us.ParentTricker$2'),(129,6,'eng.trickortracker.us.ChildTricker$7'),(130,6,'eng.trickortracker.us.ParentTricker$3'),(131,7,'craftshowbuzzer.iconosys.eng.OtherApps$6'),(132,6,'eng.trickortracker.us.ChildTricker$3'),(133,4,'mustachebooth.iconosys.eng.FrameIt$2'),(134,6,'eng.trickortracker.us.ParentTricker$5'),(135,6,'eng.trickortracker.us.ParentTricker$4'),(136,6,'eng.trickortracker.us.ClientSettings$1'),(137,6,'eng.trickortracker.us.Settings$1');
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
INSERT INTO `ComponentExtras` VALUES (1,5,'_answer'),(2,5,'_question'),(3,8,'_who'),(4,7,'_question'),(5,5,'_index'),(6,5,'_result'),(7,7,'_answer'),(8,12,'pick_photo'),(9,34,'_id'),(10,34,'names'),(11,55,'(.*)'),(12,45,'(.*)'),(13,61,'(.*)'),(14,57,'(.*)'),(15,27,'saved_uri'),(16,34,'itemcount'),(17,47,'bundle'),(18,61,'product'),(19,12,'take_photo'),(20,16,'take_photo'),(21,20,'saved_uri'),(22,55,'access_token'),(23,45,'access_token'),(24,61,'access_token'),(25,57,'access_token'),(26,34,'items'),(27,74,'pdus'),(28,24,'_who'),(29,61,'tags'),(30,16,'pick_photo'),(31,61,'location'),(32,61,'place'),(33,61,'pic'),(34,61,'shop'),(35,59,'_who'),(36,29,'_who');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'s',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'s',0,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'s',0,NULL,NULL),(40,40,'s',0,NULL,NULL),(41,41,'s',0,NULL,NULL),(42,42,'r',1,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'s',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'s',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'s',0,NULL,NULL),(69,69,'s',0,NULL,NULL),(70,70,'s',0,NULL,NULL),(71,71,'s',0,NULL,NULL),(72,72,'s',0,NULL,NULL),(73,73,'s',0,NULL,NULL),(74,74,'r',1,NULL,NULL),(75,106,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,13),(3,3,10),(4,4,10),(5,5,11),(6,5,4),(7,6,4),(8,6,11),(9,7,10),(10,8,11),(11,8,4),(12,9,11),(13,9,4),(14,10,5),(15,11,10),(16,12,5),(17,13,5),(18,14,11),(19,15,10),(20,16,4),(21,16,11),(22,17,9),(23,18,10),(24,19,9),(25,20,27),(26,21,4),(27,21,11),(28,23,15),(29,22,17),(30,24,16),(31,25,13),(32,26,20),(33,27,16),(34,28,4),(35,28,11),(36,29,11),(37,30,13),(38,31,34),(39,31,33),(40,31,32),(41,32,25),(42,33,20),(43,34,38),(44,35,15),(45,36,12),(46,37,38),(47,37,32),(48,37,34),(49,38,16),(50,39,12),(51,40,33),(52,40,34),(53,40,32),(54,41,21),(55,42,9),(56,43,42),(57,44,16),(58,45,17),(59,46,38),(60,47,21),(61,48,31),(62,48,32),(63,48,34),(64,49,19),(65,50,32),(66,51,25),(67,52,12),(68,53,16),(69,54,9),(70,55,34),(71,55,33),(72,55,32),(73,56,16),(74,57,55),(75,58,19),(76,59,32),(77,59,33),(78,59,34),(79,60,16),(80,61,12),(81,62,49),(82,63,16),(83,64,35),(84,65,19),(85,66,45),(86,67,16),(87,68,42),(88,69,49),(89,70,12),(90,71,31),(91,72,16),(92,73,45),(93,74,17),(94,75,44),(95,76,31),(96,77,15),(97,78,49),(98,79,9),(99,80,56),(100,81,17),(101,82,21),(102,83,53),(103,84,31),(104,85,56),(105,86,45),(106,87,16),(107,88,17),(108,89,31),(109,89,34),(110,89,32),(111,90,43),(112,91,21),(113,92,43),(114,93,9),(115,94,31),(116,95,55),(117,96,71),(118,97,21),(119,98,12),(120,99,45),(121,100,31),(122,100,32),(123,100,34),(124,101,9),(125,102,43),(126,103,45),(127,104,25),(128,105,35),(129,106,9),(130,107,15),(131,109,43),(132,108,49),(133,111,20),(134,110,32),(135,110,34),(136,110,37),(137,112,15),(138,113,56),(139,114,45),(140,115,17),(141,116,15),(142,117,33),(143,117,32),(144,117,34),(145,118,45),(146,119,70),(147,120,12),(148,121,15),(149,122,33),(150,122,34),(151,122,32),(152,123,45),(153,124,74),(154,125,12),(155,126,16),(156,127,44),(157,128,43),(158,129,55),(159,130,21),(160,131,49),(161,132,74),(162,133,43),(163,134,27),(164,135,55),(165,136,58),(166,137,45),(167,138,56),(168,139,49),(169,140,58),(170,141,56),(171,142,55),(172,143,43),(173,144,45),(174,145,15),(175,146,60),(176,147,58),(177,148,27),(178,149,56),(179,150,58),(180,151,56),(181,152,74),(182,153,60),(183,154,44);
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
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<eng.trickersticks.generals.TrickerSticks: void onCreate(android.os.Bundle)>',6,'a',NULL),(2,13,'<evolution.iconosys.eng.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(3,75,'<evolution.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(4,76,'<evolution.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(5,11,'<evolution.iconosys.eng.IconosysActivity: void onActivityResult(int,int,android.content.Intent)>',11,'p',0),(6,4,'<evolution.iconosys.eng.PollApp: void onActivityResult(int,int,android.content.Intent)>',25,'a',NULL),(7,77,'<evolution.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(8,11,'<evolution.iconosys.eng.IconosysActivity: void onResume()>',17,'a',NULL),(9,11,'<evolution.iconosys.eng.IconosysActivity: void onActivityResult(int,int,android.content.Intent)>',32,'a',NULL),(10,5,'<evolution.iconosys.eng.PollNew: void onCreate(android.os.Bundle)>',69,'a',NULL),(11,78,'<evolution.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(12,5,'<evolution.iconosys.eng.PollNew: void onCreate(android.os.Bundle)>',50,'a',NULL),(13,5,'<evolution.iconosys.eng.PollNew: void onCreate(android.os.Bundle)>',81,'a',NULL),(14,11,'<evolution.iconosys.eng.IconosysActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(15,79,'<evolution.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(16,4,'<evolution.iconosys.eng.PollApp: void onActivityResult(int,int,android.content.Intent)>',17,'a',NULL),(17,9,'<hanginwgnomies.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(18,80,'<evolution.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(19,9,'<hanginwgnomies.photo.iconosys.eng.MeInJail: void onResume()>',14,'a',NULL),(20,27,'<mustachebooth.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(21,11,'<evolution.iconosys.eng.IconosysActivity: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(22,81,'<hanginwgnomies.photo.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(23,15,'<mustachebooth.iconosys.eng.FrameIt: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(24,16,'<mustachebooth.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(25,13,'<evolution.iconosys.eng.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(26,20,'<hanginwgnomies.photo.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(27,16,'<mustachebooth.iconosys.eng.PhotoView: void onShareMultipleClicked()>',8,'a',NULL),(28,82,'<evolution.iconosys.eng.PollApp$1: void onClick(android.view.View)>',16,'a',NULL),(29,11,'<evolution.iconosys.eng.IconosysActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(30,83,'<evolution.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(31,84,'<iconosys.valentine.esp.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(32,25,'<mustachebooth.iconosys.eng.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(33,20,'<hanginwgnomies.photo.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(34,38,'<iconosys.valentine.esp.SweetHeart: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(35,15,'<mustachebooth.iconosys.eng.FrameIt: void onResume()>',14,'a',NULL),(36,12,'<hanginwgnomies.photo.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(37,85,'<iconosys.valentine.esp.SweetHeart$2: void onClick(android.view.View)>',6,'a',NULL),(38,16,'<mustachebooth.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(39,12,'<hanginwgnomies.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(40,86,'<iconosys.valentine.esp.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(41,87,'<mustachebooth.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(42,88,'<hanginwgnomies.photo.iconosys.eng.MeInJail$1: void onClick(android.view.View)>',7,'a',NULL),(43,42,'<iconosys.valentine.esp.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(44,16,'<mustachebooth.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',34,'a',NULL),(45,89,'<hanginwgnomies.photo.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(46,38,'<iconosys.valentine.esp.SweetHeart: void onActivityResult(int,int,android.content.Intent)>',9,'p',0),(47,90,'<mustachebooth.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(48,91,'<iconosys.valentine.esp.ValentineMain$5: void onClick(android.view.View)>',6,'a',NULL),(49,19,'<hanginwgnomies.photo.iconosys.eng.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(50,92,'<iconosys.valentine.esp.MyValentine$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',37,'a',NULL),(51,93,'<mustachebooth.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(52,12,'<hanginwgnomies.photo.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(53,94,'<mustachebooth.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',78,'a',NULL),(54,95,'<hanginwgnomies.photo.iconosys.eng.MeInJail$2: void onClick(android.view.View)>',7,'a',NULL),(55,96,'<iconosys.valentine.esp.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(56,16,'<mustachebooth.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',99,'a',NULL),(57,55,'<craftshowbuzzer.iconosys.eng.PostOffer: void startPickActivity()>',4,'a',NULL),(58,97,'<hanginwgnomies.photo.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(59,98,'<iconosys.valentine.esp.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(60,16,'<mustachebooth.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',108,'a',NULL),(61,99,'<hanginwgnomies.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',9,'a',NULL),(62,100,'<craftshowbuzzer.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(63,16,'<mustachebooth.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',44,'a',NULL),(64,35,'<iconosys.valentine.esp.MyKissHugs: void onCreate(android.os.Bundle)>',40,'s',NULL),(65,19,'<hanginwgnomies.photo.iconosys.eng.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(66,45,'<craftshowbuzzer.iconosys.eng.FlyDay: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(67,16,'<mustachebooth.iconosys.eng.PhotoView: void startCameraActivity()>',11,'a',NULL),(68,42,'<iconosys.valentine.esp.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(69,101,'<craftshowbuzzer.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(70,99,'<hanginwgnomies.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',23,'a',NULL),(71,31,'<iconosys.valentine.esp.ValentineMain: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(72,16,'<mustachebooth.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',81,'a',NULL),(73,45,'<craftshowbuzzer.iconosys.eng.FlyDay: void onClick(android.view.View)>',43,'a',NULL),(74,102,'<hanginwgnomies.photo.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(75,103,'<eng.trickortracker.us.Settings$2: void onClick(android.view.View)>',6,'a',NULL),(76,31,'<iconosys.valentine.esp.ValentineMain: void onCreate(android.os.Bundle)>',21,'s',NULL),(77,15,'<mustachebooth.iconosys.eng.FrameIt: void onCreate(android.os.Bundle)>',19,'a',NULL),(78,104,'<craftshowbuzzer.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(79,9,'<hanginwgnomies.photo.iconosys.eng.MeInJail: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(80,105,'<eng.trickortracker.us.ChildTricker$5: void onClick(android.view.View)>',31,'a',NULL),(81,107,'<hanginwgnomies.photo.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(82,108,'<mustachebooth.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(83,53,'<craftshowbuzzer.iconosys.eng.SettingsFly: boolean onOptionsItemSelected(android.view.MenuItem)>',41,'a',NULL),(84,31,'<iconosys.valentine.esp.ValentineMain: void onResume()>',14,'a',NULL),(85,109,'<eng.trickortracker.us.ChildTricker$4: void onClick(android.view.View)>',6,'a',NULL),(86,45,'<craftshowbuzzer.iconosys.eng.FlyDay: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(87,16,'<mustachebooth.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',72,'a',NULL),(88,111,'<hanginwgnomies.photo.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(89,110,'<iconosys.valentine.esp.ValentineMain$3: void onClick(android.view.View)>',6,'a',NULL),(90,112,'<eng.trickortracker.us.Tricker$1: void onClick(android.view.View)>',21,'a',NULL),(91,113,'<mustachebooth.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(92,43,'<eng.trickortracker.us.Tricker: void onCreate(android.os.Bundle)>',65,'a',NULL),(93,9,'<hanginwgnomies.photo.iconosys.eng.MeInJail: void onCreate(android.os.Bundle)>',6,'a',NULL),(94,31,'<iconosys.valentine.esp.ValentineMain: void onCreate(android.os.Bundle)>',25,'s',NULL),(95,114,'<craftshowbuzzer.iconosys.eng.PostOffer$1: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(96,71,'<eng.trickortracker.us.OpenDial1: void StartDialog(android.content.Context)>',7,'a',NULL),(97,115,'<mustachebooth.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(98,12,'<hanginwgnomies.photo.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(99,45,'<craftshowbuzzer.iconosys.eng.FlyDay: void onCreate(android.os.Bundle)>',11,'a',NULL),(100,116,'<iconosys.valentine.esp.ValentineMain$4: void onClick(android.view.View)>',6,'a',NULL),(101,9,'<hanginwgnomies.photo.iconosys.eng.MeInJail: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(102,117,'<eng.trickortracker.us.Tricker$2: void onClick(android.view.View)>',21,'a',NULL),(103,45,'<craftshowbuzzer.iconosys.eng.FlyDay: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(104,25,'<mustachebooth.iconosys.eng.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(105,35,'<iconosys.valentine.esp.MyKissHugs: void onCreate(android.os.Bundle)>',36,'s',NULL),(106,9,'<hanginwgnomies.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(107,15,'<mustachebooth.iconosys.eng.FrameIt: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(108,118,'<craftshowbuzzer.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(109,43,'<eng.trickortracker.us.Tricker: void onActivityResult(int,int,android.content.Intent)>',18,'a',NULL),(110,119,'<iconosys.valentine.esp.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(111,20,'<hanginwgnomies.photo.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(112,15,'<mustachebooth.iconosys.eng.FrameIt: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(113,120,'<eng.trickortracker.us.ChildTricker$6: void onClick(android.view.View)>',31,'a',NULL),(114,45,'<craftshowbuzzer.iconosys.eng.FlyDay: void onClick(android.view.View)>',20,'a',NULL),(115,122,'<hanginwgnomies.photo.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(116,121,'<mustachebooth.iconosys.eng.FrameIt$1: void onClick(android.view.View)>',7,'a',NULL),(117,123,'<iconosys.valentine.esp.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(118,124,'<craftshowbuzzer.iconosys.eng.FlyDay$1: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(119,70,'<eng.trickortracker.us.OpenDial: void StartDialog(android.content.Context)>',7,'a',NULL),(120,12,'<hanginwgnomies.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',6,'a',NULL),(121,15,'<mustachebooth.iconosys.eng.FrameIt: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(122,125,'<iconosys.valentine.esp.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(123,45,'<craftshowbuzzer.iconosys.eng.FlyDay: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(124,74,'<eng.trickortracker.us.SmsReceiver: void StartsSMS()>',11,'s',0),(125,12,'<hanginwgnomies.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(126,16,'<mustachebooth.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',90,'a',NULL),(127,44,'<eng.trickortracker.us.Settings: void StartTime()>',9,'s',0),(128,43,'<eng.trickortracker.us.Tricker: void onCreate(android.os.Bundle)>',35,'a',NULL),(129,55,'<craftshowbuzzer.iconosys.eng.PostOffer: void onPick(android.content.Intent)>',6,'p',0),(130,126,'<mustachebooth.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(131,127,'<craftshowbuzzer.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(132,74,'<eng.trickortracker.us.SmsReceiver: void Starts()>',11,'s',0),(133,43,'<eng.trickortracker.us.Tricker: void onCreate(android.os.Bundle)>',58,'a',NULL),(134,27,'<mustachebooth.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(135,55,'<craftshowbuzzer.iconosys.eng.PostOffer: boolean onOptionsItemSelected(android.view.MenuItem)>',110,'a',NULL),(136,128,'<eng.trickortracker.us.ParentTricker$2: void onClick(android.view.View)>',6,'a',NULL),(137,45,'<craftshowbuzzer.iconosys.eng.FlyDay: void onClick(android.view.View)>',30,'a',NULL),(138,129,'<eng.trickortracker.us.ChildTricker$7: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(139,131,'<craftshowbuzzer.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(140,130,'<eng.trickortracker.us.ParentTricker$3: void onClick(android.view.View)>',34,'a',NULL),(141,132,'<eng.trickortracker.us.ChildTricker$3: void onClick(android.view.View)>',6,'a',NULL),(142,55,'<craftshowbuzzer.iconosys.eng.PostOffer: void startCameraActivity()>',9,'a',NULL),(143,43,'<eng.trickortracker.us.Tricker: void onCreate(android.os.Bundle)>',72,'a',NULL),(144,45,'<craftshowbuzzer.iconosys.eng.FlyDay: void onClick(android.view.View)>',10,'a',NULL),(145,133,'<mustachebooth.iconosys.eng.FrameIt$2: void onClick(android.view.View)>',7,'a',NULL),(146,60,'<eng.trickortracker.us.ClientSettings: void StartTime()>',9,'s',0),(147,134,'<eng.trickortracker.us.ParentTricker$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(148,27,'<mustachebooth.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(149,56,'<eng.trickortracker.us.ChildTricker: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(150,135,'<eng.trickortracker.us.ParentTricker$4: void onClick(android.view.View)>',6,'a',NULL),(151,56,'<eng.trickortracker.us.ChildTricker: void SendSMS()>',9,'s',0),(152,74,'<eng.trickortracker.us.SmsReceiver: void Starts1()>',11,'s',0),(153,136,'<eng.trickortracker.us.ClientSettings$1: void onClick(android.view.View)>',6,'a',NULL),(154,137,'<eng.trickortracker.us.Settings$1: void onClick(android.view.View)>',6,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,5),(2,4,5),(3,6,5),(4,10,5),(5,14,5),(6,16,6),(7,17,5),(8,21,5),(9,24,7),(10,23,7),(11,26,7),(12,25,7),(13,28,7),(14,27,7),(15,31,7),(16,30,7),(17,33,7),(18,32,7),(19,34,6),(20,36,7),(21,35,7),(22,38,7),(23,37,7),(24,41,7),(25,40,7),(26,42,5),(27,46,8),(28,47,6),(29,48,9),(30,50,5),(31,51,5),(32,55,5),(33,56,5),(34,61,9),(35,64,5),(36,66,6),(37,68,5),(38,71,5),(39,75,8),(40,77,5),(41,82,5),(42,86,5),(43,89,5),(44,90,5),(45,95,5),(46,97,5),(47,101,11),(48,103,5),(49,112,5),(50,118,5),(51,119,5),(52,121,11),(53,123,6),(54,124,5),(55,125,6),(56,129,5),(57,130,5),(58,132,7),(59,135,7),(60,137,7),(61,139,7),(62,140,7),(63,142,5),(64,143,7),(65,144,7),(66,146,8),(67,147,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'eng/trickersticks/generals/GlowSticks'),(2,2,'evolution/iconosys/eng/LocationSender'),(3,5,'evolution/iconosys/eng/AdView'),(4,7,'evolution/iconosys/eng/RegistrationScreen'),(5,8,'evolution/iconosys/eng/RegistrationScreen'),(6,9,'evolution/iconosys/eng/AdView'),(7,11,'evolution/iconosys/eng/PollResult'),(8,12,'evolution/iconosys/eng/AdView'),(9,13,'evolution/iconosys/eng/OtherApps'),(10,15,'evolution/iconosys/eng/PollResult'),(11,18,'hanginwgnomies/photo/iconosys/eng/RegistrationScreen'),(12,19,'mustachebooth/iconosys/eng/OtherApps'),(13,20,'mustachebooth/iconosys/eng/OtherApps'),(14,22,'evolution/iconosys/eng/LocationSender'),(15,29,'evolution/iconosys/eng/PollNew'),(16,39,'evolution/iconosys/eng/ShowTerms'),(17,43,'mustachebooth/iconosys/eng/LocationSender'),(18,44,'hanginwgnomies/photo/iconosys/eng/OtherApps'),(19,45,'mustachebooth/iconosys/eng/RegistrationScreen'),(20,49,'hanginwgnomies/photo/iconosys/eng/MeInJail'),(21,52,'hanginwgnomies/photo/iconosys/eng/PhotoView'),(22,53,'iconosys/valentine/esp/TickSvc'),(23,54,'mustachebooth/iconosys/eng/OtherApps'),(24,57,'iconosys/valentine/esp/MyKissHugs'),(25,58,'hanginwgnomies/photo/iconosys/eng/LocationSender'),(26,60,'mustachebooth/iconosys/eng/ShowTerms'),(27,59,'iconosys/valentine/esp/ItemDialog'),(28,62,'mustachebooth/iconosys/eng/ShareImage'),(29,63,'hanginwgnomies/photo/iconosys/eng/PhotoView'),(30,65,'mustachebooth/iconosys/eng/ShowPopUp'),(31,67,'hanginwgnomies/photo/iconosys/eng/ShowTerms'),(32,69,'mustachebooth/iconosys/eng/ShowPopUp'),(33,70,'hanginwgnomies/photo/iconosys/eng/ShowPopUp'),(34,72,'mustachebooth/iconosys/eng/FrameIt'),(35,73,'iconosys/valentine/esp/TickSvc'),(36,74,'hanginwgnomies/photo/iconosys/eng/LocationSender'),(37,76,'iconosys/valentine/esp/ValentineSvc'),(38,78,'hanginwgnomies/photo/iconosys/eng/ShareImage'),(39,79,'iconosys/valentine/esp/OtherApps'),(40,81,'craftshowbuzzer/iconosys/eng/DisplayMap'),(41,80,'mustachebooth/iconosys/eng/ShowPopUp'),(42,83,'eng/trickortracker/us/AlertAudios'),(43,84,'iconosys/valentine/esp/ValentineSvc'),(44,85,'mustachebooth/iconosys/eng/AdView'),(45,87,'eng/trickortracker/us/AlertDialogs'),(46,88,'craftshowbuzzer/iconosys/eng/OtherApps'),(47,91,'iconosys/valentine/esp/RegistrationScreen'),(48,92,'eng/trickortracker/us/DisplayMap'),(49,93,'mustachebooth/iconosys/eng/ShowPopUp'),(50,94,'iconosys/valentine/esp/MyValentine'),(51,96,'eng/trickortracker/us/ChildTricker'),(52,98,'eng/trickortracker/us/ParentTricker'),(53,99,'hanginwgnomies/photo/iconosys/eng/AdView'),(54,100,'iconosys/valentine/esp/ValentineSvc'),(55,102,'eng/trickortracker/us/DisplayMap1'),(56,104,'craftshowbuzzer/iconosys/eng/AdView'),(57,105,'iconosys/valentine/esp/SweetHeart'),(58,106,'eng/trickortracker/us/ParentTricker'),(59,107,'craftshowbuzzer/iconosys/eng/OtherApps'),(60,109,'iconosys/valentine/esp/TickSvc'),(61,108,'mustachebooth/iconosys/eng/LocationSender'),(62,110,'hanginwgnomies/photo/iconosys/eng/OtherApps'),(63,111,'eng/trickortracker/us/Registration'),(64,113,'hanginwgnomies/photo/iconosys/eng/AdView'),(65,114,'iconosys/valentine/esp/ShowTerms'),(66,116,'craftshowbuzzer/iconosys/eng/SettingsFly'),(67,115,'eng/trickortracker/us/AlertDialogs'),(68,117,'mustachebooth/iconosys/eng/PhotoView'),(69,120,'eng/trickortracker/us/DisplayMap'),(70,122,'hanginwgnomies/photo/iconosys/eng/ShowPopUp'),(71,126,'hanginwgnomies/photo/iconosys/eng/OtherApps'),(72,127,'mustachebooth/iconosys/eng/ShowPopUp'),(73,128,'eng/trickortracker/us/Registration'),(74,131,'eng/trickortracker/us/ChildTricker'),(75,133,'craftshowbuzzer/iconosys/eng/OtherApps'),(76,134,'eng/trickortracker/us/GlowSticks'),(77,136,'craftshowbuzzer/iconosys/eng/PostOffer'),(78,138,'eng/trickortracker/us/Settings'),(79,141,'eng/trickortracker/us/AlertDialogs'),(80,145,'eng/trickortracker/us/GlowSticks'),(81,148,'eng/trickortracker/us/Expired'),(82,149,'craftshowbuzzer/iconosys/eng/CatchFly'),(83,150,'mustachebooth/iconosys/eng/PhotoView'),(84,151,'eng/trickortracker/us/ClientSettings'),(85,152,'mustachebooth/iconosys/eng/AdView'),(86,153,'eng/trickortracker/us/Settings'),(87,154,'eng/trickortracker/us/ClientSettings'),(88,155,'eng/trickortracker/us/GlowSticks'),(89,156,'eng/trickortracker/us/GlowSticks');
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
INSERT INTO `IData` VALUES (1,3,1),(2,4,2),(3,6,3),(4,10,4),(5,14,5),(6,16,6),(7,17,7),(8,21,9),(9,34,10),(10,42,11),(11,47,13),(12,50,14),(13,51,15),(14,55,16),(15,56,17),(16,64,18),(17,66,19),(18,68,20),(19,71,21),(20,77,22),(21,82,23),(22,86,24),(23,89,25),(24,90,26),(25,95,28),(26,97,29),(27,103,30),(28,112,33),(29,118,34),(30,119,35),(31,123,36),(32,124,37),(33,125,38),(34,129,39),(35,130,40),(36,142,41);
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,11,'_answer'),(2,11,'_question'),(3,23,'android.intent.extra.INTENT'),(4,24,'android.intent.extra.INTENT'),(5,25,'android.intent.extra.INTENT'),(6,26,'android.intent.extra.INTENT'),(7,29,'_question'),(8,27,'android.intent.extra.TITLE'),(9,28,'android.intent.extra.TITLE'),(10,29,'_answer'),(11,27,'android.intent.extra.INTENT'),(12,28,'android.intent.extra.INTENT'),(13,29,'_index'),(14,29,'_result'),(15,31,'android.intent.extra.INTENT'),(16,30,'android.intent.extra.INTENT'),(17,33,'android.intent.extra.TITLE'),(18,32,'android.intent.extra.TITLE'),(19,33,'android.intent.extra.INTENT'),(20,32,'android.intent.extra.INTENT'),(21,35,'android.intent.extra.INTENT'),(22,36,'android.intent.extra.INTENT'),(23,37,'android.intent.extra.TITLE'),(24,38,'android.intent.extra.TITLE'),(25,38,'android.intent.extra.INTENT'),(26,37,'android.intent.extra.INTENT'),(27,40,'android.intent.extra.TITLE'),(28,41,'android.intent.extra.TITLE'),(29,40,'android.intent.extra.INTENT'),(30,41,'android.intent.extra.INTENT'),(31,46,'output'),(32,52,'take_photo'),(33,59,'itemcount'),(34,59,'_id'),(35,59,'items'),(36,59,'names'),(37,62,'saved_uri'),(38,63,'pick_photo'),(39,75,'aspectX'),(40,78,'saved_uri'),(41,75,'aspectY'),(42,75,'output'),(43,87,'bundle'),(44,115,'bundle'),(45,117,'take_photo'),(46,132,'android.intent.extra.INTENT'),(47,135,'android.intent.extra.INTENT'),(48,137,'android.intent.extra.TITLE'),(49,137,'android.intent.extra.INTENT'),(50,139,'android.intent.extra.INTENT'),(51,140,'android.intent.extra.TITLE'),(52,141,'bundle'),(53,140,'android.intent.extra.INTENT'),(54,143,'android.intent.extra.INTENT'),(55,144,'android.intent.extra.TITLE'),(56,144,'android.intent.extra.INTENT'),(57,146,'output'),(58,147,'android.intent.extra.TITLE'),(59,147,'android.intent.extra.INTENT'),(60,150,'pick_photo');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,5,1),(6,6,2),(7,7,1),(8,8,3),(9,9,1),(10,10,1),(11,11,4),(12,12,10),(13,13,10);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,5,1),(6,6,2),(7,7,1),(8,9,1),(9,10,1);
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
INSERT INTO `IFData` VALUES (1,4,'sms',NULL,NULL,NULL,NULL,NULL),(2,4,'mms',NULL,NULL,NULL,NULL,NULL),(3,4,'mmsto',NULL,NULL,NULL,NULL,NULL),(4,4,NULL,NULL,NULL,NULL,'image','*'),(5,4,NULL,NULL,NULL,NULL,'video','*'),(6,4,NULL,NULL,NULL,NULL,'audio','*'),(7,6,'sms',NULL,NULL,NULL,NULL,NULL),(8,6,'mms',NULL,NULL,NULL,NULL,NULL),(9,6,'mmsto',NULL,NULL,NULL,NULL,NULL),(10,6,NULL,NULL,NULL,NULL,'image','*'),(11,6,NULL,NULL,NULL,NULL,'video','*'),(12,6,NULL,NULL,NULL,NULL,'audio','*');
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
INSERT INTO `IMimeTypes` VALUES (1,48,'image','*'),(2,61,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'eng.trickersticks.generals'),(2,2,'evolution.iconosys.eng'),(3,5,'evolution.iconosys.eng'),(4,7,'evolution.iconosys.eng'),(5,8,'evolution.iconosys.eng'),(6,9,'evolution.iconosys.eng'),(7,11,'evolution.iconosys.eng'),(8,12,'evolution.iconosys.eng'),(9,13,'evolution.iconosys.eng'),(10,15,'evolution.iconosys.eng'),(11,18,'hanginwgnomies.photo.iconosys.eng'),(12,19,'mustachebooth.iconosys.eng'),(13,20,'mustachebooth.iconosys.eng'),(14,22,'evolution.iconosys.eng'),(15,29,'evolution.iconosys.eng'),(16,39,'evolution.iconosys.eng'),(17,43,'mustachebooth.iconosys.eng'),(18,44,'hanginwgnomies.photo.iconosys.eng'),(19,45,'mustachebooth.iconosys.eng'),(20,49,'hanginwgnomies.photo.iconosys.eng'),(21,52,'hanginwgnomies.photo.iconosys.eng'),(22,53,'iconosys.valentine.esp'),(23,54,'mustachebooth.iconosys.eng'),(24,57,'iconosys.valentine.esp'),(25,58,'hanginwgnomies.photo.iconosys.eng'),(26,60,'mustachebooth.iconosys.eng'),(27,59,'iconosys.valentine.esp'),(28,62,'mustachebooth.iconosys.eng'),(29,63,'hanginwgnomies.photo.iconosys.eng'),(30,65,'mustachebooth.iconosys.eng'),(31,67,'hanginwgnomies.photo.iconosys.eng'),(32,69,'mustachebooth.iconosys.eng'),(33,70,'hanginwgnomies.photo.iconosys.eng'),(34,72,'mustachebooth.iconosys.eng'),(35,73,'iconosys.valentine.esp'),(36,74,'hanginwgnomies.photo.iconosys.eng'),(37,76,'iconosys.valentine.esp'),(38,78,'hanginwgnomies.photo.iconosys.eng'),(39,79,'iconosys.valentine.esp'),(40,81,'craftshowbuzzer.iconosys.eng'),(41,80,'mustachebooth.iconosys.eng'),(42,83,'eng.trickortracker.us'),(43,84,'iconosys.valentine.esp'),(44,85,'mustachebooth.iconosys.eng'),(45,87,'eng.trickortracker.us'),(46,88,'craftshowbuzzer.iconosys.eng'),(47,91,'iconosys.valentine.esp'),(48,92,'eng.trickortracker.us'),(49,93,'mustachebooth.iconosys.eng'),(50,94,'iconosys.valentine.esp'),(51,96,'eng.trickortracker.us'),(52,98,'eng.trickortracker.us'),(53,99,'hanginwgnomies.photo.iconosys.eng'),(54,100,'iconosys.valentine.esp'),(55,102,'eng.trickortracker.us'),(56,104,'craftshowbuzzer.iconosys.eng'),(57,105,'iconosys.valentine.esp'),(58,106,'eng.trickortracker.us'),(59,107,'craftshowbuzzer.iconosys.eng'),(60,109,'iconosys.valentine.esp'),(61,110,'hanginwgnomies.photo.iconosys.eng'),(62,108,'mustachebooth.iconosys.eng'),(63,111,'eng.trickortracker.us'),(64,113,'hanginwgnomies.photo.iconosys.eng'),(65,114,'iconosys.valentine.esp'),(66,116,'craftshowbuzzer.iconosys.eng'),(67,115,'eng.trickortracker.us'),(68,117,'mustachebooth.iconosys.eng'),(69,120,'eng.trickortracker.us'),(70,122,'hanginwgnomies.photo.iconosys.eng'),(71,126,'hanginwgnomies.photo.iconosys.eng'),(72,127,'mustachebooth.iconosys.eng'),(73,128,'eng.trickortracker.us'),(74,131,'eng.trickortracker.us'),(75,133,'craftshowbuzzer.iconosys.eng'),(76,134,'eng.trickortracker.us'),(77,136,'craftshowbuzzer.iconosys.eng'),(78,138,'eng.trickortracker.us'),(79,141,'eng.trickortracker.us'),(80,145,'eng.trickortracker.us'),(81,148,'eng.trickortracker.us'),(82,149,'craftshowbuzzer.iconosys.eng'),(83,150,'mustachebooth.iconosys.eng'),(84,151,'eng.trickortracker.us'),(85,152,'mustachebooth.iconosys.eng'),(86,153,'eng.trickortracker.us'),(87,154,'eng.trickortracker.us'),(88,155,'eng.trickortracker.us'),(89,156,'eng.trickortracker.us');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,9,0),(4,12,0),(5,15,0),(6,16,0),(7,31,0),(8,42,0),(9,43,0),(10,45,0),(11,74,0),(12,75,0),(13,42,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,1,0),(4,4,1,0),(5,6,0,0),(6,7,1,0),(7,8,0,0),(8,9,0,0),(9,10,0,0),(10,11,1,0),(11,12,0,0),(12,13,0,0),(13,14,0,0),(14,15,1,0),(15,16,0,0),(16,17,1,0),(17,18,1,0),(18,19,0,0),(19,20,0,0),(20,23,0,0),(21,22,1,0),(22,25,0,0),(23,26,1,0),(24,27,1,0),(25,27,1,0),(26,26,1,0),(27,26,1,0),(28,27,1,0),(29,28,0,0),(30,26,1,0),(31,27,1,0),(32,26,1,0),(33,27,1,0),(34,29,1,0),(35,27,1,0),(36,26,1,0),(37,27,1,0),(38,26,1,0),(39,30,0,0),(40,27,1,0),(41,26,1,0),(42,31,1,0),(43,32,0,0),(44,33,0,0),(45,35,0,0),(46,36,1,0),(47,37,1,0),(48,38,1,0),(49,39,0,0),(50,40,1,0),(51,41,1,0),(52,42,0,0),(53,43,0,0),(54,44,0,0),(55,45,1,0),(56,47,1,0),(57,48,0,0),(58,49,0,0),(59,50,0,0),(60,51,0,0),(61,52,1,0),(62,53,0,0),(63,54,0,0),(64,55,1,0),(65,56,0,0),(66,57,1,0),(67,58,0,0),(68,59,1,0),(69,60,0,0),(70,61,0,0),(71,62,1,0),(72,63,0,0),(73,64,0,0),(74,65,0,0),(75,67,1,0),(76,68,0,0),(77,69,1,0),(78,70,0,0),(79,71,0,0),(80,72,0,0),(81,73,0,0),(82,74,1,0),(83,75,0,0),(84,76,0,0),(85,77,0,0),(86,78,1,0),(87,80,0,0),(88,83,0,0),(89,81,1,0),(90,82,1,0),(91,84,0,0),(92,85,0,0),(93,87,0,0),(94,89,0,0),(95,88,1,0),(96,90,0,0),(97,91,1,0),(98,92,0,0),(99,93,0,0),(100,94,0,0),(101,95,1,0),(102,96,0,0),(103,97,1,0),(104,99,0,0),(105,100,0,0),(106,102,0,0),(107,103,0,0),(108,104,0,0),(109,105,0,0),(110,106,0,0),(111,109,0,0),(112,108,1,0),(113,111,0,0),(114,110,0,0),(115,113,0,0),(116,114,0,0),(117,116,0,0),(118,115,1,0),(119,117,1,0),(120,119,0,0),(121,118,1,0),(122,120,0,0),(123,121,1,0),(124,122,1,0),(125,123,1,0),(126,125,0,0),(127,126,0,0),(128,128,0,0),(129,130,1,0),(130,131,1,0),(131,133,0,0),(132,134,1,0),(133,135,0,0),(134,136,0,0),(135,134,1,0),(136,137,0,0),(137,134,1,0),(138,138,0,0),(139,134,1,0),(140,134,1,0),(141,140,0,0),(142,139,1,0),(143,134,1,0),(144,134,1,0),(145,141,0,0),(146,142,1,0),(147,134,1,0),(148,143,0,0),(149,144,0,0),(150,145,0,0),(151,147,0,0),(152,148,0,0),(153,149,0,0),(154,150,0,0),(155,153,0,0),(156,154,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(5,'android.permission.ACCESS_FINE_LOCATION'),(12,'android.permission.CAMERA'),(14,'android.permission.FLASHLIGHT'),(8,'android.permission.GET_ACCOUNTS'),(3,'android.permission.INTERNET'),(7,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(11,'android.permission.READ_SMS'),(13,'android.permission.RECEIVE_BOOT_COMPLETED'),(15,'android.permission.RECEIVE_SMS'),(2,'android.permission.SEND_SMS'),(9,'android.permission.WAKE_LOCK'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(10,'android.permission.WRITE_SMS');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(2,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(3,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(4,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(5,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(6,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(7,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(8,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(9,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(10,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(11,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(12,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(13,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(14,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(15,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(16,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(17,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(18,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(19,NULL,NULL,'content://media/internal/images/media',NULL,NULL,NULL),(20,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(21,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(22,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(23,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(24,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(25,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(26,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(27,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(28,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(29,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(30,NULL,NULL,'market://details?id=drivereply.iconosys.eng',NULL,NULL,NULL),(31,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(32,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(33,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(34,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(35,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(36,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(37,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(38,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(39,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(40,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(41,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,21,8),(2,34,12),(3,86,27),(4,101,31),(5,112,32);
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,2,3),(7,2,4),(8,2,5),(9,2,6),(10,2,7),(11,2,8),(12,2,9),(13,3,1),(14,3,2),(15,3,3),(16,3,4),(17,3,5),(18,3,6),(19,3,7),(20,3,8),(21,3,9),(22,3,10),(23,4,1),(24,3,11),(25,4,2),(26,4,3),(27,3,12),(28,4,4),(29,4,5),(30,4,6),(31,4,7),(32,4,8),(33,4,9),(34,4,10),(35,4,11),(36,4,12),(37,5,1),(38,5,2),(39,5,3),(40,5,7),(41,5,9),(42,5,13),(43,5,14),(44,6,1),(45,7,1),(46,6,2),(47,7,2),(48,6,3),(49,7,3),(50,6,5),(51,7,4),(52,6,6),(53,7,5),(54,6,9),(55,7,6),(56,6,15),(57,7,7),(58,7,8),(59,7,9),(60,7,10),(61,7,11),(62,7,12);
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

-- Dump completed on 2015-10-09  0:39:53
