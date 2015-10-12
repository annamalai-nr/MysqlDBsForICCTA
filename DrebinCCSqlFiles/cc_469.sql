-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_469
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
INSERT INTO `ActionStrings` VALUES (4,'android.intent.action.BOOT_COMPLETED'),(7,'android.intent.action.CHOOSER'),(8,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(3,'android.intent.action.PICK'),(2,'android.intent.action.SENDTO'),(5,'android.intent.action.VIEW'),(6,'android.media.action.IMAGE_CAPTURE'),(9,'android.settings.LOCATION_SOURCE_SETTINGS'),(10,'wayne.jeff.dev.canada.day.cc');
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
INSERT INTO `Applications` VALUES (1,'eng.trickersticks.lighters',1),(2,'golftaker.photo.iconosys.eng',1),(3,'amazon.hanginwzombies.photo.iconosys.eng',1),(4,'meandmyet.photo.iconosys.eng',3),(5,'androidbuzzer.iconosys.eng',1),(6,'usedcarbuzzer.iconosys.eng',1),(7,'canadaday.iconosys.fre',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'eng.trickersticks.lighters.TrickerSticks'),(2,1,'eng.trickersticks.lighters.GlowSticks'),(3,1,'eng.trickersticks.lighters.ShowTerms'),(4,1,'eng.trickersticks.lighters.RegistrationScreen'),(5,1,'eng.trickersticks.lighters.AdView'),(6,1,'eng.trickersticks.lighters.OtherAppsApps'),(7,1,'eng.trickersticks.lighters.LocationSender'),(8,2,'golftaker.photo.iconosys.eng.MeInJail'),(9,3,'amazon.hanginwzombies.photo.iconosys.eng.MeInJail'),(10,2,'golftaker.photo.iconosys.eng.PhotoView'),(11,3,'amazon.hanginwzombies.photo.iconosys.eng.PhotoView'),(12,4,'meandmyet.photo.iconosys.eng.MeInJail'),(13,4,'meandmyet.photo.iconosys.eng.PhotoView'),(14,2,'golftaker.photo.iconosys.eng.OtherApps'),(15,3,'amazon.hanginwzombies.photo.iconosys.eng.OtherApps'),(16,2,'golftaker.photo.iconosys.eng.ShowTerms'),(17,3,'amazon.hanginwzombies.photo.iconosys.eng.ShowTerms'),(18,2,'golftaker.photo.iconosys.eng.RegistrationScreen'),(19,3,'amazon.hanginwzombies.photo.iconosys.eng.RegistrationScreen'),(20,2,'golftaker.photo.iconosys.eng.ShareImage'),(21,3,'amazon.hanginwzombies.photo.iconosys.eng.ShareImage'),(22,2,'golftaker.photo.iconosys.eng.ShowPopUp'),(23,3,'amazon.hanginwzombies.photo.iconosys.eng.ShowPopUp'),(24,2,'golftaker.photo.iconosys.eng.AdView'),(25,4,'meandmyet.photo.iconosys.eng.OtherApps'),(26,3,'amazon.hanginwzombies.photo.iconosys.eng.AdView'),(27,2,'golftaker.photo.iconosys.eng.LocationSender'),(28,4,'meandmyet.photo.iconosys.eng.ShowTerms'),(29,3,'amazon.hanginwzombies.photo.iconosys.eng.LocationSender'),(30,4,'meandmyet.photo.iconosys.eng.RegistrationScreen'),(31,4,'meandmyet.photo.iconosys.eng.ShareImage'),(32,4,'meandmyet.photo.iconosys.eng.ShowPopUp'),(33,4,'meandmyet.photo.iconosys.eng.AdView'),(34,4,'meandmyet.photo.iconosys.eng.LocationSender'),(35,5,'androidbuzzer.iconosys.eng.FlyDay'),(36,6,'usedcarbuzzer.iconosys.eng.FlyDay'),(37,5,'androidbuzzer.iconosys.eng.OtherApps'),(38,6,'usedcarbuzzer.iconosys.eng.OtherApps'),(39,5,'androidbuzzer.iconosys.eng.CatchFly'),(40,6,'usedcarbuzzer.iconosys.eng.CatchFly'),(41,5,'androidbuzzer.iconosys.eng.SettingsFly'),(42,6,'usedcarbuzzer.iconosys.eng.SettingsFly'),(43,5,'androidbuzzer.iconosys.eng.PostOffer'),(44,6,'usedcarbuzzer.iconosys.eng.PostOffer'),(45,5,'androidbuzzer.iconosys.eng.AddMembers'),(46,6,'usedcarbuzzer.iconosys.eng.AddMembers'),(47,5,'androidbuzzer.iconosys.eng.AdView'),(48,6,'usedcarbuzzer.iconosys.eng.AdView'),(49,5,'androidbuzzer.iconosys.eng.NewPostOffer'),(50,6,'usedcarbuzzer.iconosys.eng.NewPostOffer'),(51,5,'androidbuzzer.iconosys.eng.TeamCatchFly'),(52,6,'usedcarbuzzer.iconosys.eng.TeamCatchFly'),(53,5,'androidbuzzer.iconosys.eng.AllCatchFly'),(54,6,'usedcarbuzzer.iconosys.eng.AllCatchFly'),(55,5,'androidbuzzer.iconosys.eng.DisplayMapp'),(56,6,'usedcarbuzzer.iconosys.eng.DisplayMap'),(57,5,'androidbuzzer.iconosys.eng.LocationSender'),(58,6,'usedcarbuzzer.iconosys.eng.LocationSender'),(59,7,'canadaday.iconosys.fre.Mother'),(60,1,'eng.trickersticks.lighters.RegistrationScreen$1'),(61,7,'canadaday.iconosys.fre.MyValentine'),(62,7,'canadaday.iconosys.fre.OtherApps'),(63,7,'canadaday.iconosys.fre.ItemDialog'),(64,7,'canadaday.iconosys.fre.MyKissHugs'),(65,7,'canadaday.iconosys.fre.ShowTerms'),(66,7,'canadaday.iconosys.fre.RegistrationScreen'),(67,7,'canadaday.iconosys.fre.SweetHeart'),(68,7,'canadaday.iconosys.fre.PhotoView'),(69,7,'canadaday.iconosys.fre.ShareImage'),(70,7,'canadaday.iconosys.fre.ShowPopUp'),(71,7,'canadaday.iconosys.fre.PopUp'),(72,7,'canadaday.iconosys.fre.Wish'),(73,7,'canadaday.iconosys.fre.Scheduler'),(74,7,'canadaday.iconosys.fre.ScheduleEdit'),(75,7,'canadaday.iconosys.fre.SchedulePopUp'),(76,7,'canadaday.iconosys.fre.SchedulePreview'),(77,7,'canadaday.iconosys.fre.MyMMS'),(78,7,'canadaday.iconosys.fre.AdView'),(79,7,'canadaday.iconosys.fre.ValentineSvc'),(80,7,'canadaday.iconosys.fre.TickSvc'),(81,7,'canadaday.iconosys.fre.LocationSender'),(82,7,'canadaday.iconosys.fre.SchedulerService'),(83,7,'canadaday.iconosys.fre.Adview'),(84,7,'canadaday.iconosys.fre.BootReceiver'),(85,2,'golftaker.photo.iconosys.eng.RegistrationScreen$1'),(86,2,'golftaker.photo.iconosys.eng.OtherApps$1'),(87,3,'amazon.hanginwzombies.photo.iconosys.eng.PhotoView$1'),(88,2,'golftaker.photo.iconosys.eng.PhotoView$1'),(89,3,'amazon.hanginwzombies.photo.iconosys.eng.MeInJail$1'),(90,4,'meandmyet.photo.iconosys.eng.OtherApps$3'),(91,4,'meandmyet.photo.iconosys.eng.OtherApps$4'),(92,3,'amazon.hanginwzombies.photo.iconosys.eng.OtherApps$3'),(93,3,'amazon.hanginwzombies.photo.iconosys.eng.OtherApps$5'),(94,2,'golftaker.photo.iconosys.eng.OtherApps$5'),(95,2,'golftaker.photo.iconosys.eng.MeInJail$2'),(96,3,'amazon.hanginwzombies.photo.iconosys.eng.OtherApps$2'),(97,2,'golftaker.photo.iconosys.eng.OtherApps$6'),(98,3,'amazon.hanginwzombies.photo.iconosys.eng.MeInJail$2'),(99,2,'golftaker.photo.iconosys.eng.OtherApps$2'),(100,3,'amazon.hanginwzombies.photo.iconosys.eng.RegistrationScreen$1'),(101,4,'meandmyet.photo.iconosys.eng.PhotoView$1'),(102,2,'golftaker.photo.iconosys.eng.MeInJail$1'),(103,4,'meandmyet.photo.iconosys.eng.MeInJail$1'),(104,2,'golftaker.photo.iconosys.eng.OtherApps$4'),(105,6,'usedcarbuzzer.iconosys.eng.OtherApps$4'),(106,4,'meandmyet.photo.iconosys.eng.OtherApps$1'),(107,5,'androidbuzzer.iconosys.eng.OtherApps$5'),(108,4,'meandmyet.photo.iconosys.eng.MeInJail$2'),(109,6,'usedcarbuzzer.iconosys.eng.OtherApps$3'),(110,5,'androidbuzzer.iconosys.eng.FlyDay$1'),(111,6,'usedcarbuzzer.iconosys.eng.OtherApps$1'),(112,5,'androidbuzzer.iconosys.eng.OtherApps$6'),(113,3,'amazon.hanginwzombies.photo.iconosys.eng.OtherApps$1'),(114,4,'meandmyet.photo.iconosys.eng.RegistrationScreen$1'),(115,6,'usedcarbuzzer.iconosys.eng.OtherApps$2'),(116,2,'golftaker.photo.iconosys.eng.OtherApps$3'),(117,5,'androidbuzzer.iconosys.eng.OtherApps$1'),(118,5,'androidbuzzer.iconosys.eng.OtherApps$3'),(119,5,'androidbuzzer.iconosys.eng.OtherApps$4'),(120,3,'amazon.hanginwzombies.photo.iconosys.eng.OtherApps$6'),(121,6,'usedcarbuzzer.iconosys.eng.PostOffer$1'),(122,5,'androidbuzzer.iconosys.eng.PostOffer$1'),(123,4,'meandmyet.photo.iconosys.eng.OtherApps$2'),(124,6,'usedcarbuzzer.iconosys.eng.OtherApps$5'),(125,4,'meandmyet.photo.iconosys.eng.OtherApps$6'),(126,6,'usedcarbuzzer.iconosys.eng.OtherApps$6'),(127,3,'amazon.hanginwzombies.photo.iconosys.eng.OtherApps$4'),(128,4,'meandmyet.photo.iconosys.eng.OtherApps$5'),(129,5,'androidbuzzer.iconosys.eng.OtherApps$2'),(130,6,'usedcarbuzzer.iconosys.eng.FlyDay$1'),(131,7,'canadaday.iconosys.fre.OtherApps$1'),(132,7,'canadaday.iconosys.fre.Wish$2'),(133,7,'canadaday.iconosys.fre.MyValentine$2'),(134,7,'canadaday.iconosys.fre.OtherApps$6'),(135,7,'canadaday.iconosys.fre.ScheduleEdit$3'),(136,7,'canadaday.iconosys.fre.PhotoView$1'),(137,7,'canadaday.iconosys.fre.PopUp$1'),(138,7,'canadaday.iconosys.fre.SweetHeart$2'),(139,7,'canadaday.iconosys.fre.OtherApps$2'),(140,7,'canadaday.iconosys.fre.OtherApps$5'),(141,7,'canadaday.iconosys.fre.Wish$1'),(142,7,'canadaday.iconosys.fre.OtherApps$3'),(143,7,'canadaday.iconosys.fre.OtherApps$4'),(144,7,'canadaday.iconosys.fre.Wish$4'),(145,7,'canadaday.iconosys.fre.ScheduleEdit$4'),(146,7,'canadaday.iconosys.fre.Mother$2'),(147,7,'canadaday.iconosys.fre.Scheduler$2'),(148,7,'canadaday.iconosys.fre.RegistrationScreen$1'),(149,7,'canadaday.iconosys.fre.Mother$3');
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'_who'),(2,10,'take_photo'),(3,33,'_who'),(4,10,'pick_photo'),(5,14,'take_photo'),(6,20,'saved_uri'),(7,26,'_who'),(8,14,'pick_photo'),(9,49,'shop'),(10,49,'product'),(11,49,'location'),(12,49,'tags'),(13,49,'place'),(14,21,'saved_uri'),(15,11,'take_photo'),(16,24,'_who'),(17,50,'(.*)'),(18,46,'(.*)'),(19,43,'(.*)'),(20,44,'(.*)'),(21,45,'(.*)'),(22,36,'(.*)'),(23,35,'(.*)'),(24,49,'(.*)'),(25,48,'_who'),(26,11,'pick_photo'),(27,31,'saved_uri'),(28,50,'pic'),(29,50,'shop'),(30,49,'pic'),(31,47,'_who'),(32,50,'access_token'),(33,46,'access_token'),(34,44,'access_token'),(35,36,'access_token'),(36,50,'tags'),(37,50,'place'),(38,43,'access_token'),(39,45,'access_token'),(40,35,'access_token'),(41,49,'access_token'),(42,50,'location'),(43,50,'product'),(44,62,'itemcount'),(45,70,'reason'),(46,67,'mykey'),(47,71,'thebg'),(48,62,'names'),(49,67,'pick_photo'),(50,74,'_icon'),(51,73,'_id'),(52,74,'_id'),(53,75,'thebg'),(54,62,'_id'),(55,67,'take_photo'),(56,71,'_icon'),(57,74,'_msg'),(58,77,'_who'),(59,62,'items'),(60,71,'thesmsbg'),(61,74,'_number'),(62,68,'saved_uri'),(63,75,'M3');
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,14,'a',0,NULL,NULL),(14,13,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'s',0,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'s',0,NULL,NULL),(58,58,'s',0,NULL,NULL),(59,59,'a',1,NULL,NULL),(60,61,'a',0,NULL,NULL),(61,62,'a',0,NULL,NULL),(62,63,'a',0,NULL,NULL),(63,64,'a',0,NULL,NULL),(64,65,'a',0,NULL,NULL),(65,66,'a',0,NULL,NULL),(66,67,'a',0,NULL,NULL),(67,68,'a',0,NULL,NULL),(68,69,'a',0,NULL,NULL),(69,70,'a',0,NULL,NULL),(70,71,'a',0,NULL,NULL),(71,72,'a',0,NULL,NULL),(72,73,'a',0,NULL,NULL),(73,74,'a',0,NULL,NULL),(74,75,'a',0,NULL,NULL),(75,76,'a',0,NULL,NULL),(76,77,'a',0,NULL,NULL),(77,78,'a',0,NULL,NULL),(78,79,'s',0,NULL,NULL),(79,80,'s',0,NULL,NULL),(80,81,'s',0,NULL,NULL),(81,82,'s',0,NULL,NULL),(82,83,'s',0,NULL,NULL),(83,84,'r',1,NULL,NULL),(84,146,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,4),(3,3,4),(4,4,1),(5,5,4),(6,6,2),(7,7,2),(8,8,1),(9,9,2),(10,10,2),(11,11,20),(12,12,18),(13,13,8),(14,14,13),(15,15,11),(16,16,11),(17,17,10),(18,18,11),(19,19,8),(20,20,9),(21,21,8),(22,22,11),(23,23,8),(24,24,25),(25,25,9),(26,26,10),(27,27,11),(28,28,25),(29,29,10),(30,30,15),(31,31,12),(32,32,8),(33,33,15),(34,34,14),(35,35,31),(36,36,13),(37,37,21),(38,38,8),(39,39,9),(40,40,9),(41,41,8),(42,42,15),(43,43,13),(44,44,9),(45,45,13),(46,46,43),(47,47,19),(48,49,35),(49,48,14),(50,50,18),(51,51,21),(52,52,31),(53,53,8),(54,54,35),(55,55,12),(56,56,10),(57,57,35),(58,58,13),(59,59,38),(60,61,25),(61,60,37),(62,62,10),(63,63,36),(64,64,43),(65,65,12),(66,66,18),(67,67,36),(68,68,35),(69,69,20),(70,70,14),(71,71,9),(72,72,38),(73,73,10),(74,74,35),(75,75,14),(76,76,11),(77,77,38),(78,78,10),(79,79,37),(80,80,14),(81,81,15),(82,82,10),(83,83,30),(84,84,38),(85,85,35),(86,86,19),(87,88,31),(88,87,13),(89,89,37),(90,90,36),(91,91,19),(92,92,20),(93,93,12),(94,94,36),(95,95,21),(96,96,37),(97,97,12),(98,98,9),(99,99,44),(100,100,35),(101,101,44),(102,102,30),(103,103,37),(104,104,15),(105,105,14),(106,106,44),(107,107,9),(108,108,12),(109,109,43),(110,110,44),(111,111,11),(112,112,41),(113,113,25),(114,114,38),(115,115,11),(116,116,35),(117,117,25),(118,118,38),(119,119,15),(120,120,43),(121,121,25),(122,122,44),(123,123,37),(124,124,14),(125,125,35),(126,126,42),(127,127,30),(128,128,35),(129,129,12),(130,130,36),(131,131,43),(132,132,14),(133,133,36),(134,134,12),(135,135,36),(136,136,36),(137,137,36),(138,138,36),(139,139,62),(140,139,61),(141,139,60),(142,140,71),(143,141,67),(144,142,68),(145,143,60),(146,143,71),(147,143,62),(148,144,67),(149,145,66),(150,146,73),(151,147,60),(152,148,59),(153,149,65),(154,149,60),(155,149,62),(156,150,73),(157,151,62),(158,151,61),(159,151,60),(160,152,59),(161,153,66),(162,154,73),(163,155,83),(164,156,62),(165,156,60),(166,156,73),(167,157,67),(168,157,62),(169,157,60),(170,158,59),(171,159,70),(172,160,73),(173,161,66),(174,161,60),(175,161,62),(176,162,59),(177,163,62),(178,163,61),(179,163,60),(180,164,72),(181,165,59),(182,166,71),(183,167,59),(184,168,60),(185,168,61),(186,168,62),(187,169,62),(188,169,60),(189,169,71),(190,170,68),(191,170,60),(192,170,62),(193,171,71),(194,172,60),(195,172,62),(196,172,61),(197,173,62),(198,173,61),(199,173,60),(200,174,68),(201,175,59),(202,176,74),(203,177,71),(204,177,60),(205,177,62),(206,178,60),(207,178,73),(208,178,62),(209,179,60),(210,179,62),(211,179,67),(212,180,59),(213,181,63),(214,182,83),(215,183,67),(216,184,60),(217,184,62),(218,184,65),(219,185,72),(220,186,67),(221,187,72),(222,188,60),(223,188,62),(224,188,65),(225,189,71),(226,190,60),(227,190,59),(228,190,62),(229,191,67),(230,192,71),(231,193,67),(232,194,74),(233,195,63),(234,196,72);
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
INSERT INTO `ExitPoints` VALUES (1,2,'<eng.trickersticks.lighters.GlowSticks: void onCreate(android.os.Bundle)>',14,'a',NULL),(2,4,'<eng.trickersticks.lighters.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(3,60,'<eng.trickersticks.lighters.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(4,1,'<eng.trickersticks.lighters.TrickerSticks: void onResume()>',18,'a',NULL),(5,4,'<eng.trickersticks.lighters.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(6,2,'<eng.trickersticks.lighters.GlowSticks: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(7,2,'<eng.trickersticks.lighters.GlowSticks: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(8,1,'<eng.trickersticks.lighters.TrickerSticks: void onResume()>',14,'a',NULL),(9,2,'<eng.trickersticks.lighters.GlowSticks: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(10,2,'<eng.trickersticks.lighters.GlowSticks: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(11,20,'<golftaker.photo.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(12,85,'<golftaker.photo.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(13,8,'<golftaker.photo.iconosys.eng.MeInJail: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(14,86,'<golftaker.photo.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(15,87,'<amazon.hanginwzombies.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',9,'a',NULL),(16,87,'<amazon.hanginwzombies.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',23,'a',NULL),(17,88,'<golftaker.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',23,'a',NULL),(18,11,'<amazon.hanginwzombies.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(19,8,'<golftaker.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(20,89,'<amazon.hanginwzombies.photo.iconosys.eng.MeInJail$1: void onClick(android.view.View)>',7,'a',NULL),(21,8,'<golftaker.photo.iconosys.eng.MeInJail: void onCreate(android.os.Bundle)>',6,'a',NULL),(22,11,'<amazon.hanginwzombies.photo.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(23,8,'<golftaker.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(24,90,'<meandmyet.photo.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(25,9,'<amazon.hanginwzombies.photo.iconosys.eng.MeInJail: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(26,10,'<golftaker.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',6,'a',NULL),(27,11,'<amazon.hanginwzombies.photo.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(28,91,'<meandmyet.photo.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(29,10,'<golftaker.photo.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(30,92,'<amazon.hanginwzombies.photo.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(31,12,'<meandmyet.photo.iconosys.eng.MeInJail: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(32,8,'<golftaker.photo.iconosys.eng.MeInJail: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(33,93,'<amazon.hanginwzombies.photo.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(34,13,'<meandmyet.photo.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(35,31,'<meandmyet.photo.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(36,94,'<golftaker.photo.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(37,21,'<amazon.hanginwzombies.photo.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(38,8,'<golftaker.photo.iconosys.eng.MeInJail: void onResume()>',14,'a',NULL),(39,9,'<amazon.hanginwzombies.photo.iconosys.eng.MeInJail: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(40,9,'<amazon.hanginwzombies.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(41,95,'<golftaker.photo.iconosys.eng.MeInJail$2: void onClick(android.view.View)>',7,'a',NULL),(42,96,'<amazon.hanginwzombies.photo.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(43,97,'<golftaker.photo.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(44,98,'<amazon.hanginwzombies.photo.iconosys.eng.MeInJail$2: void onClick(android.view.View)>',7,'a',NULL),(45,99,'<golftaker.photo.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(46,43,'<androidbuzzer.iconosys.eng.PostOffer: void onPick(android.content.Intent)>',6,'p',0),(47,100,'<amazon.hanginwzombies.photo.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(48,101,'<meandmyet.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',23,'a',NULL),(49,35,'<androidbuzzer.iconosys.eng.FlyDay: void onClick(android.view.View)>',43,'a',NULL),(50,18,'<golftaker.photo.iconosys.eng.RegistrationScreen: void SendPhoneData()>',93,'s',NULL),(51,21,'<amazon.hanginwzombies.photo.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(52,31,'<meandmyet.photo.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(53,102,'<golftaker.photo.iconosys.eng.MeInJail$1: void onClick(android.view.View)>',7,'a',NULL),(54,35,'<androidbuzzer.iconosys.eng.FlyDay: void onClick(android.view.View)>',30,'a',NULL),(55,103,'<meandmyet.photo.iconosys.eng.MeInJail$1: void onClick(android.view.View)>',7,'a',NULL),(56,10,'<golftaker.photo.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(57,35,'<androidbuzzer.iconosys.eng.FlyDay: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(58,104,'<golftaker.photo.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(59,105,'<usedcarbuzzer.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(60,107,'<androidbuzzer.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(61,106,'<meandmyet.photo.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(62,10,'<golftaker.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(63,36,'<usedcarbuzzer.iconosys.eng.FlyDay: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(64,43,'<androidbuzzer.iconosys.eng.PostOffer: void startCameraActivity()>',9,'a',NULL),(65,108,'<meandmyet.photo.iconosys.eng.MeInJail$2: void onClick(android.view.View)>',7,'a',NULL),(66,18,'<golftaker.photo.iconosys.eng.RegistrationScreen: void SendAutoData()>',89,'s',NULL),(67,36,'<usedcarbuzzer.iconosys.eng.FlyDay: void onCreate(android.os.Bundle)>',11,'a',NULL),(68,35,'<androidbuzzer.iconosys.eng.FlyDay: void onCreate(android.os.Bundle)>',11,'a',NULL),(69,20,'<golftaker.photo.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(70,13,'<meandmyet.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(71,9,'<amazon.hanginwzombies.photo.iconosys.eng.MeInJail: void onResume()>',14,'a',NULL),(72,109,'<usedcarbuzzer.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(73,88,'<golftaker.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',9,'a',NULL),(74,110,'<androidbuzzer.iconosys.eng.FlyDay$1: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(75,13,'<meandmyet.photo.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(76,11,'<amazon.hanginwzombies.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',6,'a',NULL),(77,111,'<usedcarbuzzer.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(78,10,'<golftaker.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(79,112,'<androidbuzzer.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(80,13,'<meandmyet.photo.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(81,113,'<amazon.hanginwzombies.photo.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(82,10,'<golftaker.photo.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(83,114,'<meandmyet.photo.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(84,115,'<usedcarbuzzer.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(85,35,'<androidbuzzer.iconosys.eng.FlyDay: void onClick(android.view.View)>',20,'a',NULL),(86,19,'<amazon.hanginwzombies.photo.iconosys.eng.RegistrationScreen: void SendPhoneData()>',93,'s',NULL),(87,116,'<golftaker.photo.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(88,31,'<meandmyet.photo.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(89,117,'<androidbuzzer.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(90,36,'<usedcarbuzzer.iconosys.eng.FlyDay: void onClick(android.view.View)>',10,'a',NULL),(91,19,'<amazon.hanginwzombies.photo.iconosys.eng.RegistrationScreen: void SendAutoData()>',89,'s',NULL),(92,20,'<golftaker.photo.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(93,12,'<meandmyet.photo.iconosys.eng.MeInJail: void onCreate(android.os.Bundle)>',6,'a',NULL),(94,36,'<usedcarbuzzer.iconosys.eng.FlyDay: void onClick(android.view.View)>',30,'a',NULL),(95,21,'<amazon.hanginwzombies.photo.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(96,118,'<androidbuzzer.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(97,12,'<meandmyet.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(98,9,'<amazon.hanginwzombies.photo.iconosys.eng.MeInJail: void onCreate(android.os.Bundle)>',6,'a',NULL),(99,44,'<usedcarbuzzer.iconosys.eng.PostOffer: void onPick(android.content.Intent)>',6,'p',0),(100,35,'<androidbuzzer.iconosys.eng.FlyDay: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(101,44,'<usedcarbuzzer.iconosys.eng.PostOffer: void startPickActivity()>',4,'a',NULL),(102,30,'<meandmyet.photo.iconosys.eng.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(103,119,'<androidbuzzer.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(104,120,'<amazon.hanginwzombies.photo.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(105,13,'<meandmyet.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(106,121,'<usedcarbuzzer.iconosys.eng.PostOffer$1: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(107,9,'<amazon.hanginwzombies.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(108,12,'<meandmyet.photo.iconosys.eng.MeInJail: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(109,122,'<androidbuzzer.iconosys.eng.PostOffer$1: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(110,44,'<usedcarbuzzer.iconosys.eng.PostOffer: void startCameraActivity()>',9,'a',NULL),(111,11,'<amazon.hanginwzombies.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(112,41,'<androidbuzzer.iconosys.eng.SettingsFly: boolean onOptionsItemSelected(android.view.MenuItem)>',41,'a',NULL),(113,123,'<meandmyet.photo.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(114,124,'<usedcarbuzzer.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(115,11,'<amazon.hanginwzombies.photo.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(116,35,'<androidbuzzer.iconosys.eng.FlyDay: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(117,125,'<meandmyet.photo.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(118,126,'<usedcarbuzzer.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(119,127,'<amazon.hanginwzombies.photo.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(120,43,'<androidbuzzer.iconosys.eng.PostOffer: boolean onOptionsItemSelected(android.view.MenuItem)>',110,'a',NULL),(121,128,'<meandmyet.photo.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(122,44,'<usedcarbuzzer.iconosys.eng.PostOffer: boolean onOptionsItemSelected(android.view.MenuItem)>',110,'a',NULL),(123,129,'<androidbuzzer.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(124,13,'<meandmyet.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',6,'a',NULL),(125,35,'<androidbuzzer.iconosys.eng.FlyDay: void onClick(android.view.View)>',10,'a',NULL),(126,42,'<usedcarbuzzer.iconosys.eng.SettingsFly: boolean onOptionsItemSelected(android.view.MenuItem)>',41,'a',NULL),(127,30,'<meandmyet.photo.iconosys.eng.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(128,35,'<androidbuzzer.iconosys.eng.FlyDay: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(129,12,'<meandmyet.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(130,36,'<usedcarbuzzer.iconosys.eng.FlyDay: void onClick(android.view.View)>',43,'a',NULL),(131,43,'<androidbuzzer.iconosys.eng.PostOffer: void startPickActivity()>',4,'a',NULL),(132,101,'<meandmyet.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',9,'a',NULL),(133,36,'<usedcarbuzzer.iconosys.eng.FlyDay: void onClick(android.view.View)>',20,'a',NULL),(134,12,'<meandmyet.photo.iconosys.eng.MeInJail: void onResume()>',14,'a',NULL),(135,36,'<usedcarbuzzer.iconosys.eng.FlyDay: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(136,36,'<usedcarbuzzer.iconosys.eng.FlyDay: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(137,130,'<usedcarbuzzer.iconosys.eng.FlyDay$1: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(138,36,'<usedcarbuzzer.iconosys.eng.FlyDay: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(139,131,'<canadaday.iconosys.fre.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(140,72,'<canadaday.iconosys.fre.Wish: void onActivityResult(int,int,android.content.Intent)>',34,'a',NULL),(141,68,'<canadaday.iconosys.fre.PhotoView: void startCameraActivity()>',9,'a',NULL),(142,69,'<canadaday.iconosys.fre.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(143,132,'<canadaday.iconosys.fre.Wish$2: void onClick(android.view.View)>',6,'a',NULL),(144,68,'<canadaday.iconosys.fre.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(145,67,'<canadaday.iconosys.fre.SweetHeart: void onActivityResult(int,int,android.content.Intent)>',9,'p',0),(146,74,'<canadaday.iconosys.fre.ScheduleEdit: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(147,133,'<canadaday.iconosys.fre.MyValentine$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',37,'a',NULL),(148,59,'<canadaday.iconosys.fre.Mother: void onResume()>',10,'a',NULL),(149,66,'<canadaday.iconosys.fre.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(150,74,'<canadaday.iconosys.fre.ScheduleEdit: void onActivityResult(int,int,android.content.Intent)>',11,'p',0),(151,134,'<canadaday.iconosys.fre.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(152,59,'<canadaday.iconosys.fre.Mother: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(153,67,'<canadaday.iconosys.fre.SweetHeart: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(154,74,'<canadaday.iconosys.fre.ScheduleEdit: void onCreate(android.os.Bundle)>',9,'s',NULL),(155,84,'<canadaday.iconosys.fre.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(156,135,'<canadaday.iconosys.fre.ScheduleEdit$3: void onClick(android.view.View)>',17,'a',NULL),(157,136,'<canadaday.iconosys.fre.PhotoView$1: void onClick(android.view.View)>',9,'a',NULL),(158,59,'<canadaday.iconosys.fre.Mother: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(159,137,'<canadaday.iconosys.fre.PopUp$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(160,74,'<canadaday.iconosys.fre.ScheduleEdit: void onCreate(android.os.Bundle)>',13,'s',NULL),(161,138,'<canadaday.iconosys.fre.SweetHeart$2: void onClick(android.view.View)>',6,'a',NULL),(162,59,'<canadaday.iconosys.fre.Mother: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(163,139,'<canadaday.iconosys.fre.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(164,73,'<canadaday.iconosys.fre.Scheduler: void onCreate(android.os.Bundle)>',6,'s',NULL),(165,59,'<canadaday.iconosys.fre.Mother: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(166,72,'<canadaday.iconosys.fre.Wish: void onActivityResult(int,int,android.content.Intent)>',11,'p',0),(167,59,'<canadaday.iconosys.fre.Mother: void onCreate(android.os.Bundle)>',23,'s',NULL),(168,140,'<canadaday.iconosys.fre.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(169,141,'<canadaday.iconosys.fre.Wish$1: void onClick(android.view.View)>',15,'a',NULL),(170,69,'<canadaday.iconosys.fre.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(171,72,'<canadaday.iconosys.fre.Wish: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(172,142,'<canadaday.iconosys.fre.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(173,143,'<canadaday.iconosys.fre.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(174,69,'<canadaday.iconosys.fre.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(175,59,'<canadaday.iconosys.fre.Mother: void onCreate(android.os.Bundle)>',27,'s',NULL),(176,75,'<canadaday.iconosys.fre.SchedulePopUp: void onCreate(android.os.Bundle)>',14,'s',NULL),(177,144,'<canadaday.iconosys.fre.Wish$4: void onClick(android.view.View)>',6,'a',NULL),(178,145,'<canadaday.iconosys.fre.ScheduleEdit$4: void onClick(android.view.View)>',6,'a',NULL),(179,136,'<canadaday.iconosys.fre.PhotoView$1: void onClick(android.view.View)>',23,'a',NULL),(180,59,'<canadaday.iconosys.fre.Mother: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(181,64,'<canadaday.iconosys.fre.MyKissHugs: void onCreate(android.os.Bundle)>',36,'s',NULL),(182,84,'<canadaday.iconosys.fre.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(183,68,'<canadaday.iconosys.fre.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',6,'a',NULL),(184,66,'<canadaday.iconosys.fre.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(185,73,'<canadaday.iconosys.fre.Scheduler: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(186,68,'<canadaday.iconosys.fre.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(187,147,'<canadaday.iconosys.fre.Scheduler$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',30,'a',NULL),(188,148,'<canadaday.iconosys.fre.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(189,72,'<canadaday.iconosys.fre.Wish: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(190,149,'<canadaday.iconosys.fre.Mother$3: void onClick(android.view.View)>',7,'a',NULL),(191,68,'<canadaday.iconosys.fre.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(192,72,'<canadaday.iconosys.fre.Wish: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(193,68,'<canadaday.iconosys.fre.PhotoView: void startPickActivity()>',4,'a',NULL),(194,75,'<canadaday.iconosys.fre.SchedulePopUp: void onCreate(android.os.Bundle)>',10,'s',NULL),(195,64,'<canadaday.iconosys.fre.MyKissHugs: void onCreate(android.os.Bundle)>',40,'s',NULL),(196,73,'<canadaday.iconosys.fre.Scheduler: void onCreate(android.os.Bundle)>',10,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,8,3),(2,12,5),(3,19,3),(4,20,6),(5,21,5),(6,23,5),(7,24,6),(8,25,5),(9,26,5),(10,27,7),(11,28,5),(12,30,7),(13,31,7),(14,34,7),(15,36,7),(16,37,5),(17,38,7),(18,39,5),(19,40,7),(20,42,7),(21,43,5),(22,48,7),(23,52,7),(24,53,7),(25,55,7),(26,56,5),(27,57,7),(28,58,5),(29,60,5),(30,59,5),(31,61,7),(32,64,7),(33,65,6),(34,69,7),(35,74,5),(36,77,8),(37,76,9),(38,79,5),(39,81,5),(40,82,6),(41,83,5),(42,84,8),(43,86,5),(44,90,5),(45,92,5),(46,94,7),(47,98,7),(48,99,5),(49,101,3),(50,100,7),(51,103,7),(52,104,3),(53,106,7),(54,107,5),(55,108,5),(56,110,7),(57,111,9),(58,113,7),(59,112,3),(60,114,9),(61,115,6),(62,116,7),(63,119,5),(64,120,5),(65,121,8),(66,122,3),(67,123,5),(68,124,5),(69,125,5),(70,127,5),(71,129,5),(72,137,3),(73,141,3),(74,142,9),(75,143,5),(76,145,6),(77,152,5),(78,161,3),(79,162,3),(80,163,5),(81,166,5),(82,168,7),(83,169,7),(84,170,7),(85,171,7),(86,172,7),(87,173,7),(88,174,7),(89,175,7),(90,177,5),(91,178,5),(92,182,3),(93,183,3),(94,195,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'eng/trickersticks/lighters/AdView'),(2,2,'eng/trickersticks/lighters/LocationSender'),(3,3,'eng/trickersticks/lighters/ShowTerms'),(4,4,'eng/trickersticks/lighters/GlowSticks'),(5,5,'eng/trickersticks/lighters/LocationSender'),(6,6,'eng/trickersticks/lighters/OtherApps'),(7,7,'eng/trickersticks/lighters/RegistrationScreen'),(8,9,'golftaker/photo/iconosys/eng/OtherApps'),(9,10,'golftaker/photo/iconosys/eng/ShowTerms'),(10,11,'amazon/hanginwzombies/photo/iconosys/eng/ShowPopUp'),(11,13,'amazon/hanginwzombies/photo/iconosys/eng/ShareImage'),(12,14,'golftaker/photo/iconosys/eng/ShareImage'),(13,15,'amazon/hanginwzombies/photo/iconosys/eng/OtherApps'),(14,16,'golftaker/photo/iconosys/eng/OtherApps'),(15,17,'amazon/hanginwzombies/photo/iconosys/eng/PhotoView'),(16,18,'golftaker/photo/iconosys/eng/AdView'),(17,22,'golftaker/photo/iconosys/eng/ShowPopUp'),(18,29,'amazon/hanginwzombies/photo/iconosys/eng/AdView'),(19,32,'golftaker/photo/iconosys/eng/RegistrationScreen'),(20,33,'amazon/hanginwzombies/photo/iconosys/eng/OtherApps'),(21,35,'golftaker/photo/iconosys/eng/PhotoView'),(22,41,'amazon/hanginwzombies/photo/iconosys/eng/PhotoView'),(23,44,'amazon/hanginwzombies/photo/iconosys/eng/ShowTerms'),(24,46,'androidbuzzer/iconosys/eng/DisplayMap'),(25,47,'golftaker/photo/iconosys/eng/LocationSender'),(26,45,'meandmyet/photo/iconosys/eng/ShareImage'),(27,49,'meandmyet/photo/iconosys/eng/AdView'),(28,51,'androidbuzzer/iconosys/eng/PostOffer'),(29,50,'golftaker/photo/iconosys/eng/PhotoView'),(30,54,'meandmyet/photo/iconosys/eng/PhotoView'),(31,62,'golftaker/photo/iconosys/eng/OtherApps'),(32,63,'usedcarbuzzer/iconosys/eng/OtherApps'),(33,67,'golftaker/photo/iconosys/eng/LocationSender'),(34,66,'meandmyet/photo/iconosys/eng/PhotoView'),(35,68,'usedcarbuzzer/iconosys/eng/AdView'),(36,70,'androidbuzzer/iconosys/eng/AdView'),(37,71,'golftaker/photo/iconosys/eng/AdView'),(38,72,'meandmyet/photo/iconosys/eng/OtherApps'),(39,73,'amazon/hanginwzombies/photo/iconosys/eng/RegistrationScreen'),(40,75,'golftaker/photo/iconosys/eng/ShowPopUp'),(41,78,'amazon/hanginwzombies/photo/iconosys/eng/ShowPopUp'),(42,80,'golftaker/photo/iconosys/eng/MeInJail'),(43,85,'meandmyet/photo/iconosys/eng/ShowTerms'),(44,87,'androidbuzzer/iconosys/eng/SettingsFly'),(45,88,'amazon/hanginwzombies/photo/iconosys/eng/LocationSender'),(46,89,'meandmyet/photo/iconosys/eng/OtherApps'),(47,91,'usedcarbuzzer/iconosys/eng/CatchFly'),(48,93,'amazon/hanginwzombies/photo/iconosys/eng/LocationSender'),(49,95,'meandmyet/photo/iconosys/eng/AdView'),(50,96,'usedcarbuzzer/iconosys/eng/PostOffer'),(51,97,'amazon/hanginwzombies/photo/iconosys/eng/OtherApps'),(52,102,'amazon/hanginwzombies/photo/iconosys/eng/AdView'),(53,105,'meandmyet/photo/iconosys/eng/LocationSender'),(54,109,'meandmyet/photo/iconosys/eng/MeInJail'),(55,117,'amazon/hanginwzombies/photo/iconosys/eng/MeInJail'),(56,118,'androidbuzzer/iconosys/eng/OtherApps'),(57,126,'androidbuzzer/iconosys/eng/OtherApps'),(58,128,'usedcarbuzzer/iconosys/eng/OtherApps'),(59,130,'meandmyet/photo/iconosys/eng/ShowPopUp'),(60,131,'androidbuzzer/iconosys/eng/CatchFly'),(61,132,'usedcarbuzzer/iconosys/eng/OtherApps'),(62,133,'meandmyet/photo/iconosys/eng/LocationSender'),(63,134,'androidbuzzer/iconosys/eng/OtherApps'),(64,135,'meandmyet/photo/iconosys/eng/OtherApps'),(65,136,'usedcarbuzzer/iconosys/eng/DisplayMap'),(66,138,'meandmyet/photo/iconosys/eng/ShowPopUp'),(67,139,'usedcarbuzzer/iconosys/eng/SettingsFly'),(68,140,'meandmyet/photo/iconosys/eng/RegistrationScreen'),(69,144,'canadaday/iconosys/fre/AdView'),(70,146,'canadaday/iconosys/fre/AdView'),(71,147,'canadaday/iconosys/fre/MyMMS'),(72,148,'canadaday/iconosys/fre/OtherApps'),(73,149,'canadaday/iconosys/fre/ItemDialog'),(74,150,'canadaday/iconosys/fre/RegistrationScreen'),(75,151,'canadaday/iconosys/fre/LocationSender'),(76,153,'canadaday/iconosys/fre/Scheduler'),(77,154,'canadaday/iconosys/fre/SchedulerService'),(78,155,'canadaday/iconosys/fre/ValentineSvc'),(79,156,'canadaday/iconosys/fre/SchedulePreview'),(80,157,'canadaday/iconosys/fre/ShowPopUp'),(81,158,'canadaday/iconosys/fre/OtherApps'),(82,159,'canadaday/iconosys/fre/Wish'),(83,160,'canadaday/iconosys/fre/SchedulerService'),(84,164,'canadaday/iconosys/fre/SchedulerService'),(85,165,'canadaday/iconosys/fre/ValentineSvc'),(86,167,'canadaday/iconosys/fre/SchedulePreview'),(87,176,'canadaday/iconosys/fre/OtherApps'),(88,179,'canadaday/iconosys/fre/OtherApps'),(89,180,'canadaday/iconosys/fre/ValentineSvc'),(90,181,'canadaday/iconosys/fre/SchedulerService'),(91,184,'canadaday/iconosys/fre/ShareImage'),(92,185,'canadaday/iconosys/fre/TickSvc'),(93,186,'canadaday/iconosys/fre/TickSvc'),(94,187,'canadaday/iconosys/fre/ShowPopUp'),(95,188,'canadaday/iconosys/fre/LocationSender'),(96,189,'canadaday/iconosys/fre/SchedulePopUp'),(97,190,'canadaday/iconosys/fre/ScheduleEdit'),(98,191,'canadaday/iconosys/fre/ShowTerms'),(99,192,'canadaday/iconosys/fre/MyMMS'),(100,193,'canadaday/iconosys/fre/PhotoView'),(101,194,'canadaday/iconosys/fre/Mother'),(102,196,'canadaday/iconosys/fre/SchedulerService'),(103,197,'canadaday/iconosys/fre/TickSvc'),(104,198,'canadaday/iconosys/fre/SchedulerService');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,8,1),(2,12,3),(3,19,4),(4,21,6),(5,23,7),(6,25,8),(7,26,10),(8,28,11),(9,37,12),(10,39,13),(11,43,14),(12,56,16),(13,58,17),(14,59,19),(15,60,18),(16,74,20),(17,79,21),(18,81,22),(19,83,23),(20,86,24),(21,90,25),(22,92,26),(23,99,27),(24,101,28),(25,104,29),(26,107,30),(27,108,31),(28,112,33),(29,119,34),(30,120,35),(31,122,36),(32,123,37),(33,124,38),(34,125,39),(35,127,40),(36,129,41),(37,137,42),(38,141,43),(39,143,45),(40,152,47),(41,161,49),(42,162,50),(43,163,51),(44,166,52),(45,177,53),(46,178,54),(47,182,55),(48,183,56);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,13,'saved_uri'),(2,14,'saved_uri'),(3,17,'take_photo'),(4,20,'output'),(5,24,'output'),(6,27,'android.intent.extra.INTENT'),(7,30,'android.intent.extra.INTENT'),(8,31,'android.intent.extra.TITLE'),(9,31,'android.intent.extra.INTENT'),(10,34,'android.intent.extra.INTENT'),(11,35,'pick_photo'),(12,36,'android.intent.extra.TITLE'),(13,36,'android.intent.extra.INTENT'),(14,38,'android.intent.extra.INTENT'),(15,40,'android.intent.extra.TITLE'),(16,40,'android.intent.extra.INTENT'),(17,41,'pick_photo'),(18,42,'android.intent.extra.TITLE'),(19,42,'android.intent.extra.INTENT'),(20,45,'saved_uri'),(21,48,'android.intent.extra.INTENT'),(22,50,'take_photo'),(23,52,'android.intent.extra.INTENT'),(24,53,'android.intent.extra.TITLE'),(25,53,'android.intent.extra.INTENT'),(26,54,'take_photo'),(27,55,'android.intent.extra.INTENT'),(28,57,'android.intent.extra.TITLE'),(29,57,'android.intent.extra.INTENT'),(30,61,'android.intent.extra.INTENT'),(31,64,'android.intent.extra.TITLE'),(32,65,'output'),(33,64,'android.intent.extra.INTENT'),(34,66,'pick_photo'),(35,69,'android.intent.extra.TITLE'),(36,69,'android.intent.extra.INTENT'),(37,82,'output'),(38,94,'android.intent.extra.INTENT'),(39,98,'android.intent.extra.INTENT'),(40,100,'android.intent.extra.TITLE'),(41,100,'android.intent.extra.INTENT'),(42,103,'android.intent.extra.INTENT'),(43,106,'android.intent.extra.TITLE'),(44,106,'android.intent.extra.INTENT'),(45,110,'android.intent.extra.INTENT'),(46,113,'android.intent.extra.TITLE'),(47,113,'android.intent.extra.INTENT'),(48,115,'output'),(49,116,'android.intent.extra.TITLE'),(50,116,'android.intent.extra.INTENT'),(51,144,'_who'),(52,145,'output'),(53,149,'itemcount'),(54,149,'_id'),(55,149,'items'),(56,149,'names'),(57,156,'thebg'),(58,156,'M3'),(59,159,'thebg'),(60,159,'thesmsbg'),(61,159,'_icon'),(62,167,'thebg'),(63,167,'M3'),(64,168,'android.intent.extra.INTENT'),(65,169,'android.intent.extra.INTENT'),(66,170,'android.intent.extra.TITLE'),(67,170,'android.intent.extra.INTENT'),(68,171,'android.intent.extra.INTENT'),(69,172,'android.intent.extra.TITLE'),(70,172,'android.intent.extra.INTENT'),(71,173,'android.intent.extra.INTENT'),(72,174,'android.intent.extra.TITLE'),(73,174,'android.intent.extra.INTENT'),(74,175,'android.intent.extra.TITLE'),(75,175,'android.intent.extra.INTENT'),(76,184,'saved_uri'),(77,190,'_id'),(78,193,'take_photo');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,5,2),(6,6,1),(7,7,2),(8,8,1),(9,9,1),(10,10,1),(11,11,4),(12,12,10),(13,13,10);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,5,2),(6,6,1),(7,7,2),(8,8,1),(9,9,1),(10,10,1);
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
INSERT INTO `IFData` VALUES (1,4,'sms',NULL,NULL,NULL,NULL,NULL),(2,4,'mms',NULL,NULL,NULL,NULL,NULL),(3,5,'sms',NULL,NULL,NULL,NULL,NULL),(4,4,'mmsto',NULL,NULL,NULL,NULL,NULL),(5,5,'mms',NULL,NULL,NULL,NULL,NULL),(6,4,NULL,NULL,NULL,NULL,'image','*'),(7,5,'mmsto',NULL,NULL,NULL,NULL,NULL),(8,4,NULL,NULL,NULL,NULL,'video','*'),(9,5,NULL,NULL,NULL,NULL,'image','*'),(10,4,NULL,NULL,NULL,NULL,'audio','*'),(11,5,NULL,NULL,NULL,NULL,'video','*'),(12,5,NULL,NULL,NULL,NULL,'audio','*'),(13,7,'sms',NULL,NULL,NULL,NULL,NULL),(14,7,'mms',NULL,NULL,NULL,NULL,NULL),(15,7,'mmsto',NULL,NULL,NULL,NULL,NULL),(16,7,NULL,NULL,NULL,NULL,'image','*'),(17,7,NULL,NULL,NULL,NULL,'video','*'),(18,7,NULL,NULL,NULL,NULL,'audio','*');
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
INSERT INTO `IMimeTypes` VALUES (1,77,'image','*'),(2,84,'image','*'),(3,121,'image','*'),(4,195,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'eng.trickersticks.lighters'),(2,2,'eng.trickersticks.lighters'),(3,3,'eng.trickersticks.lighters'),(4,4,'eng.trickersticks.lighters'),(5,5,'eng.trickersticks.lighters'),(6,6,'eng.trickersticks.lighters'),(7,7,'eng.trickersticks.lighters'),(8,9,'golftaker.photo.iconosys.eng'),(9,10,'golftaker.photo.iconosys.eng'),(10,11,'amazon.hanginwzombies.photo.iconosys.eng'),(11,13,'amazon.hanginwzombies.photo.iconosys.eng'),(12,14,'golftaker.photo.iconosys.eng'),(13,15,'amazon.hanginwzombies.photo.iconosys.eng'),(14,16,'golftaker.photo.iconosys.eng'),(15,17,'amazon.hanginwzombies.photo.iconosys.eng'),(16,18,'golftaker.photo.iconosys.eng'),(17,22,'golftaker.photo.iconosys.eng'),(18,29,'amazon.hanginwzombies.photo.iconosys.eng'),(19,32,'golftaker.photo.iconosys.eng'),(20,33,'amazon.hanginwzombies.photo.iconosys.eng'),(21,35,'golftaker.photo.iconosys.eng'),(22,41,'amazon.hanginwzombies.photo.iconosys.eng'),(23,44,'amazon.hanginwzombies.photo.iconosys.eng'),(24,46,'androidbuzzer.iconosys.eng'),(25,47,'golftaker.photo.iconosys.eng'),(26,45,'meandmyet.photo.iconosys.eng'),(27,49,'meandmyet.photo.iconosys.eng'),(28,51,'androidbuzzer.iconosys.eng'),(29,50,'golftaker.photo.iconosys.eng'),(30,54,'meandmyet.photo.iconosys.eng'),(31,62,'golftaker.photo.iconosys.eng'),(32,63,'usedcarbuzzer.iconosys.eng'),(33,67,'golftaker.photo.iconosys.eng'),(34,66,'meandmyet.photo.iconosys.eng'),(35,68,'usedcarbuzzer.iconosys.eng'),(36,70,'androidbuzzer.iconosys.eng'),(37,71,'golftaker.photo.iconosys.eng'),(38,72,'meandmyet.photo.iconosys.eng'),(39,73,'amazon.hanginwzombies.photo.iconosys.eng'),(40,75,'golftaker.photo.iconosys.eng'),(41,78,'amazon.hanginwzombies.photo.iconosys.eng'),(42,80,'golftaker.photo.iconosys.eng'),(43,85,'meandmyet.photo.iconosys.eng'),(44,87,'androidbuzzer.iconosys.eng'),(45,88,'amazon.hanginwzombies.photo.iconosys.eng'),(46,89,'meandmyet.photo.iconosys.eng'),(47,91,'usedcarbuzzer.iconosys.eng'),(48,93,'amazon.hanginwzombies.photo.iconosys.eng'),(49,95,'meandmyet.photo.iconosys.eng'),(50,96,'usedcarbuzzer.iconosys.eng'),(51,97,'amazon.hanginwzombies.photo.iconosys.eng'),(52,102,'amazon.hanginwzombies.photo.iconosys.eng'),(53,105,'meandmyet.photo.iconosys.eng'),(54,109,'meandmyet.photo.iconosys.eng'),(55,117,'amazon.hanginwzombies.photo.iconosys.eng'),(56,118,'androidbuzzer.iconosys.eng'),(57,126,'androidbuzzer.iconosys.eng'),(58,128,'usedcarbuzzer.iconosys.eng'),(59,130,'meandmyet.photo.iconosys.eng'),(60,131,'androidbuzzer.iconosys.eng'),(61,132,'usedcarbuzzer.iconosys.eng'),(62,133,'meandmyet.photo.iconosys.eng'),(63,134,'androidbuzzer.iconosys.eng'),(64,135,'meandmyet.photo.iconosys.eng'),(65,136,'usedcarbuzzer.iconosys.eng'),(66,138,'meandmyet.photo.iconosys.eng'),(67,139,'usedcarbuzzer.iconosys.eng'),(68,140,'meandmyet.photo.iconosys.eng'),(69,144,'canadaday.iconosys.fre'),(70,146,'canadaday.iconosys.fre'),(71,147,'canadaday.iconosys.fre'),(72,148,'canadaday.iconosys.fre'),(73,149,'canadaday.iconosys.fre'),(74,150,'canadaday.iconosys.fre'),(75,151,'canadaday.iconosys.fre'),(76,153,'canadaday.iconosys.fre'),(77,154,'canadaday.iconosys.fre'),(78,155,'canadaday.iconosys.fre'),(79,156,'canadaday.iconosys.fre'),(80,157,'canadaday.iconosys.fre'),(81,158,'canadaday.iconosys.fre'),(82,159,'canadaday.iconosys.fre'),(83,160,'canadaday.iconosys.fre'),(84,164,'canadaday.iconosys.fre'),(85,165,'canadaday.iconosys.fre'),(86,167,'canadaday.iconosys.fre'),(87,176,'canadaday.iconosys.fre'),(88,179,'canadaday.iconosys.fre'),(89,180,'canadaday.iconosys.fre'),(90,181,'canadaday.iconosys.fre'),(91,184,'canadaday.iconosys.fre'),(92,185,'canadaday.iconosys.fre'),(93,186,'canadaday.iconosys.fre'),(94,187,'canadaday.iconosys.fre'),(95,188,'canadaday.iconosys.fre'),(96,189,'canadaday.iconosys.fre'),(97,190,'canadaday.iconosys.fre'),(98,191,'canadaday.iconosys.fre'),(99,192,'canadaday.iconosys.fre'),(100,193,'canadaday.iconosys.fre'),(101,194,'canadaday.iconosys.fre'),(102,196,'canadaday.iconosys.fre'),(103,197,'canadaday.iconosys.fre'),(104,198,'canadaday.iconosys.fre');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,8,0),(3,9,0),(4,10,0),(5,11,0),(6,12,0),(7,14,0),(8,35,0),(9,36,0),(10,59,0),(11,83,0),(12,84,0),(13,83,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,7,0,0),(7,8,0,0),(8,9,1,0),(9,11,0,0),(10,12,0,0),(11,15,0,0),(12,14,1,0),(13,16,0,0),(14,17,0,0),(15,18,0,0),(16,19,0,0),(17,20,0,0),(18,21,0,0),(19,23,1,0),(20,22,1,0),(21,24,1,0),(22,26,0,0),(23,28,1,0),(24,29,1,0),(25,30,1,0),(26,33,1,0),(27,35,1,0),(28,36,1,0),(29,37,0,0),(30,35,1,0),(31,35,1,0),(32,38,0,0),(33,40,0,0),(34,35,1,0),(35,41,0,0),(36,35,1,0),(37,42,1,0),(38,35,1,0),(39,43,1,0),(40,35,1,0),(41,44,0,0),(42,35,1,0),(43,45,1,0),(44,47,0,0),(45,48,0,0),(46,49,0,0),(47,50,0,0),(48,51,1,0),(49,52,0,0),(50,53,0,0),(51,54,0,0),(52,51,1,0),(53,51,1,0),(54,55,0,0),(55,51,1,0),(56,58,1,0),(57,51,1,0),(58,59,1,0),(59,61,1,0),(60,60,1,0),(61,51,1,0),(62,62,0,0),(63,63,0,0),(64,51,1,0),(65,64,1,0),(66,65,0,0),(67,66,0,0),(68,67,0,0),(69,51,1,0),(70,68,0,0),(71,69,0,0),(72,70,0,0),(73,71,0,0),(74,72,1,0),(75,73,0,0),(76,74,1,0),(77,75,1,0),(78,76,0,0),(79,77,1,0),(80,78,0,0),(81,79,1,0),(82,80,1,0),(83,81,1,0),(84,82,1,0),(85,83,0,0),(86,84,1,0),(87,85,0,0),(88,86,0,0),(89,88,0,0),(90,87,1,0),(91,90,0,0),(92,89,1,0),(93,91,0,0),(94,92,1,0),(95,93,0,0),(96,94,0,0),(97,95,0,0),(98,92,1,0),(99,96,1,0),(100,92,1,0),(101,97,1,0),(102,98,0,0),(103,92,1,0),(104,101,1,0),(105,102,0,0),(106,92,1,0),(107,103,1,0),(108,104,1,0),(109,105,0,0),(110,92,1,0),(111,106,1,0),(112,107,1,0),(113,92,1,0),(114,109,1,0),(115,110,1,0),(116,92,1,0),(117,111,0,0),(118,112,0,0),(119,113,1,0),(120,114,1,0),(121,115,1,0),(122,116,1,0),(123,117,1,0),(124,118,1,0),(125,119,1,0),(126,120,0,0),(127,121,1,0),(128,122,0,0),(129,123,1,0),(130,124,0,0),(131,125,0,0),(132,126,0,0),(133,127,0,0),(134,128,0,0),(135,129,0,0),(136,130,0,0),(137,131,1,0),(138,132,0,0),(139,133,0,0),(140,134,0,0),(141,135,1,0),(142,137,1,0),(143,139,1,0),(144,140,0,0),(145,141,1,0),(146,142,0,0),(147,143,0,0),(148,144,0,0),(149,147,0,0),(150,148,0,0),(151,149,0,0),(152,151,1,0),(153,152,0,0),(154,154,0,0),(155,155,0,0),(156,156,0,0),(157,157,0,0),(158,158,0,0),(159,159,0,0),(160,160,0,0),(161,161,1,0),(162,162,1,0),(163,163,1,0),(164,164,0,0),(165,167,0,0),(166,168,1,0),(167,169,0,0),(168,170,1,0),(169,170,1,0),(170,170,1,0),(171,170,1,0),(172,170,1,0),(173,170,1,0),(174,170,1,0),(175,170,1,0),(176,171,0,0),(177,172,1,0),(178,173,1,0),(179,174,0,0),(180,175,0,0),(181,176,0,0),(182,177,1,0),(183,178,1,0),(184,179,0,0),(185,181,0,0),(186,182,0,0),(187,183,0,0),(188,184,0,0),(189,185,0,0),(190,187,0,0),(191,188,0,0),(192,189,0,0),(193,190,0,0),(194,191,0,0),(195,193,1,0),(196,194,0,0),(197,195,0,0),(198,196,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (8,'android.permission.ACCESS_COARSE_LOCATION'),(6,'android.permission.ACCESS_FINE_LOCATION'),(12,'android.permission.CAMERA'),(10,'android.permission.GET_ACCOUNTS'),(4,'android.permission.INTERNET'),(9,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(2,'android.permission.READ_SMS'),(13,'android.permission.RECEIVE_BOOT_COMPLETED'),(14,'android.permission.RECORD_AUDIO'),(3,'android.permission.SEND_SMS'),(11,'android.permission.WAKE_LOCK'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(7,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(2,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(3,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(4,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(5,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(6,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(7,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(8,NULL,NULL,'iconosys.com/product.php',NULL,NULL,NULL),(9,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(10,NULL,NULL,'iconosys.com/product.php',NULL,NULL,NULL),(11,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(12,NULL,NULL,'iconosys.com/product.php',NULL,NULL,NULL),(13,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(14,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(15,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(16,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(17,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(18,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(19,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(20,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(21,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(22,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(23,NULL,NULL,'iconosys.com/product.php',NULL,NULL,NULL),(24,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(25,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(26,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(27,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(28,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(29,NULL,NULL,'content://media/internal/images/media',NULL,NULL,NULL),(30,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(31,NULL,NULL,'iconosys.com/product.php',NULL,NULL,NULL),(32,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(33,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(34,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(35,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(36,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(37,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(38,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(39,NULL,NULL,'iconosys.com/product.php',NULL,NULL,NULL),(40,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(41,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(42,NULL,NULL,'content://media/internal/images/media',NULL,NULL,NULL),(43,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(44,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(45,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(46,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(47,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(48,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(49,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(50,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(51,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(52,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(53,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(54,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(55,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(56,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(57,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(58,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,10,2),(2,25,5),(3,32,9),(4,57,15),(5,108,32),(6,138,44),(7,146,46),(8,153,48),(9,180,57),(10,192,58);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,2,1),(13,2,2),(14,2,3),(15,2,4),(16,3,1),(17,2,5),(18,3,2),(19,2,6),(20,3,3),(21,2,7),(22,3,4),(23,2,8),(24,3,5),(25,2,9),(26,3,6),(27,2,10),(28,3,7),(29,2,11),(30,3,8),(31,2,12),(32,3,9),(33,3,10),(34,4,1),(35,3,11),(36,4,2),(37,3,12),(38,4,3),(39,4,4),(40,4,5),(41,4,6),(42,4,7),(43,4,8),(44,4,9),(45,4,10),(46,4,11),(47,4,12),(48,5,1),(49,5,2),(50,6,1),(51,5,3),(52,6,2),(53,5,4),(54,6,3),(55,5,5),(56,6,4),(57,5,6),(58,6,5),(59,5,7),(60,6,6),(61,5,8),(62,6,7),(63,5,9),(64,6,8),(65,5,10),(66,6,9),(67,5,11),(68,6,10),(69,5,12),(70,6,11),(71,6,12),(72,7,1),(73,7,3),(74,7,4),(75,7,5),(76,7,9),(77,7,10),(78,7,11),(79,7,12),(80,7,13),(81,7,14);
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

-- Dump completed on 2015-10-09  0:39:49
