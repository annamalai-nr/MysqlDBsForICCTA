-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_485
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
INSERT INTO `ActionStrings` VALUES (7,'android.intent.action.CHOOSER'),(6,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(4,'android.intent.action.PICK'),(3,'android.intent.action.SENDTO'),(2,'android.intent.action.VIEW'),(5,'android.media.action.IMAGE_CAPTURE');
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
INSERT INTO `Applications` VALUES (1,'chinesetwo.buzzer.iconosys',1),(2,'eng.trickersticks.mugshots',1),(3,'whenwemet.timer.iconosys',1),(4,'eng.trickersticks.timesone',3),(5,'com.iconosys.djstrobe',2),(6,'com.iconosys.barstrobe',5),(7,'birthday.photo.iconosys.eng',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'chinesetwo.buzzer.iconosys.ChristmasTimer'),(2,2,'eng.trickersticks.mugshots.TrickerSticks'),(3,2,'eng.trickersticks.mugshots.GlowSticks'),(4,2,'eng.trickersticks.mugshots.Registration'),(5,3,'whenwemet.timer.iconosys.ChristmasTimer'),(6,3,'whenwemet.timer.iconosys.ContactsList'),(7,3,'whenwemet.timer.iconosys.OtherApps'),(8,3,'whenwemet.timer.iconosys.MessageService'),(9,4,'eng.trickersticks.timesone.TrickerSticks'),(10,5,'com.iconosys.djstrobe.NewYearsStrobe'),(11,4,'eng.trickersticks.timesone.GlowSticks'),(12,4,'eng.trickersticks.timesone.ShowTerms'),(13,5,'com.iconosys.djstrobe.Preferences'),(14,4,'eng.trickersticks.timesone.RegistrationScreen'),(15,5,'com.iconosys.djstrobe.RegistrationScreen'),(16,4,'eng.trickersticks.timesone.AdView'),(17,5,'com.iconosys.djstrobe.ShowTerms'),(18,4,'eng.trickersticks.timesone.OtherApps'),(19,6,'com.iconosys.barstrobe.NewYearsStrobe'),(20,4,'eng.trickersticks.timesone.LocationSender'),(21,6,'com.iconosys.barstrobe.Preferences'),(22,6,'com.iconosys.barstrobe.RegistrationScreen'),(23,6,'com.iconosys.barstrobe.ShowTerms'),(24,6,'com.iconosys.barstrobe.OtherApps'),(25,6,'com.iconosys.barstrobe.AdView'),(26,7,'birthday.photo.iconosys.eng.MeInJail'),(27,7,'birthday.photo.iconosys.eng.PhotoView'),(28,7,'birthday.photo.iconosys.eng.OtherApps'),(29,7,'birthday.photo.iconosys.eng.ShowTerms'),(30,7,'birthday.photo.iconosys.eng.RegistrationScreen'),(31,7,'birthday.photo.iconosys.eng.ShareImage'),(32,7,'birthday.photo.iconosys.eng.ShowPopUp'),(33,7,'birthday.photo.iconosys.eng.AdView'),(34,7,'birthday.photo.iconosys.eng.LocationSender'),(35,3,'whenwemet.timer.iconosys.OtherApps$1'),(36,3,'whenwemet.timer.iconosys.OtherApps$2'),(37,5,'com.iconosys.djstrobe.RegistrationScreen$1'),(38,3,'whenwemet.timer.iconosys.OtherApps$4'),(39,3,'whenwemet.timer.iconosys.OtherApps$6'),(40,3,'whenwemet.timer.iconosys.OtherApps$5'),(41,3,'whenwemet.timer.iconosys.OtherApps$3'),(42,4,'eng.trickersticks.timesone.OtherApps$4'),(43,4,'eng.trickersticks.timesone.OtherApps$1'),(44,4,'eng.trickersticks.timesone.OtherApps$6'),(45,6,'com.iconosys.barstrobe.RegistrationScreen$1'),(46,4,'eng.trickersticks.timesone.OtherApps$5'),(47,4,'eng.trickersticks.timesone.OtherApps$3'),(48,4,'eng.trickersticks.timesone.OtherApps$2'),(49,4,'eng.trickersticks.timesone.RegistrationScreen$1'),(50,7,'birthday.photo.iconosys.eng.OtherApps$1'),(51,7,'birthday.photo.iconosys.eng.PhotoView$1'),(52,7,'birthday.photo.iconosys.eng.MeInJail$1'),(53,7,'birthday.photo.iconosys.eng.OtherApps$4'),(54,7,'birthday.photo.iconosys.eng.OtherApps$5'),(55,7,'birthday.photo.iconosys.eng.OtherApps$2'),(56,7,'birthday.photo.iconosys.eng.OtherApps$3'),(57,7,'birthday.photo.iconosys.eng.RegistrationScreen$1'),(58,7,'birthday.photo.iconosys.eng.OtherApps$6'),(59,7,'birthday.photo.iconosys.eng.MeInJail$2');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,16,'_who'),(2,25,'_who'),(3,32,'show_key'),(4,27,'pick_photo'),(5,33,'_who'),(6,27,'take_photo'),(7,31,'saved_uri');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'s',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,7),(3,3,5),(4,4,7),(5,5,15),(6,6,7),(7,7,10),(8,8,10),(9,9,7),(10,10,6),(11,11,7),(12,12,5),(13,13,7),(14,14,6),(15,15,11),(16,16,14),(17,17,11),(18,18,18),(19,19,9),(20,20,18),(21,21,11),(22,22,18),(23,23,22),(24,24,9),(25,25,22),(26,26,14),(27,27,19),(28,28,11),(29,29,19),(30,30,18),(31,31,19),(32,32,19),(33,33,18),(34,34,19),(35,35,18),(36,36,22),(37,37,11),(38,38,19),(39,39,19),(40,40,14),(41,41,28),(42,42,27),(43,43,27),(44,44,26),(45,45,30),(46,46,30),(47,47,26),(48,48,27),(49,49,28),(50,50,26),(51,51,27),(52,52,27),(53,53,26),(54,54,27),(55,55,28),(56,56,28),(57,57,28),(58,58,27),(59,59,27),(60,60,30),(61,61,27),(62,62,28),(63,63,26),(64,64,27),(65,65,26),(66,66,27),(67,67,26),(68,68,27),(69,69,31),(70,70,27),(71,71,31),(72,72,27),(73,73,31),(74,74,27);
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<eng.trickersticks.mugshots.TrickerSticks: void onCreate(android.os.Bundle)>',6,'a',NULL),(2,35,'<whenwemet.timer.iconosys.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(3,5,'<whenwemet.timer.iconosys.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',27,'a',NULL),(4,36,'<whenwemet.timer.iconosys.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(5,37,'<com.iconosys.djstrobe.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(6,38,'<whenwemet.timer.iconosys.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(7,10,'<com.iconosys.djstrobe.NewYearsStrobe: void onResume()>',14,'a',NULL),(8,10,'<com.iconosys.djstrobe.NewYearsStrobe: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(9,39,'<whenwemet.timer.iconosys.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(10,6,'<whenwemet.timer.iconosys.ContactsList: void next()>',3,'p',NULL),(11,40,'<whenwemet.timer.iconosys.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(12,5,'<whenwemet.timer.iconosys.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(13,41,'<whenwemet.timer.iconosys.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(14,6,'<whenwemet.timer.iconosys.ContactsList: void onStart()>',4,'p',NULL),(15,11,'<eng.trickersticks.timesone.GlowSticks: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(16,14,'<eng.trickersticks.timesone.RegistrationScreen: void SendAutoData()>',93,'s',NULL),(17,11,'<eng.trickersticks.timesone.GlowSticks: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(18,42,'<eng.trickersticks.timesone.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(19,9,'<eng.trickersticks.timesone.TrickerSticks: void onResume()>',18,'a',NULL),(20,43,'<eng.trickersticks.timesone.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(21,11,'<eng.trickersticks.timesone.GlowSticks: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(22,44,'<eng.trickersticks.timesone.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(23,22,'<com.iconosys.barstrobe.RegistrationScreen: void SendAutoData()>',89,'s',NULL),(24,9,'<eng.trickersticks.timesone.TrickerSticks: void onResume()>',14,'a',NULL),(25,45,'<com.iconosys.barstrobe.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(26,14,'<eng.trickersticks.timesone.RegistrationScreen: void SendPhoneData()>',97,'s',NULL),(27,19,'<com.iconosys.barstrobe.NewYearsStrobe: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(28,11,'<eng.trickersticks.timesone.GlowSticks: void onCreate(android.os.Bundle)>',14,'a',NULL),(29,19,'<com.iconosys.barstrobe.NewYearsStrobe: void onCreate(android.os.Bundle)>',12,'a',NULL),(30,46,'<eng.trickersticks.timesone.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(31,19,'<com.iconosys.barstrobe.NewYearsStrobe: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(32,19,'<com.iconosys.barstrobe.NewYearsStrobe: void onResume()>',14,'a',NULL),(33,47,'<eng.trickersticks.timesone.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(34,19,'<com.iconosys.barstrobe.NewYearsStrobe: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(35,48,'<eng.trickersticks.timesone.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(36,22,'<com.iconosys.barstrobe.RegistrationScreen: void SendPhoneData()>',93,'s',NULL),(37,11,'<eng.trickersticks.timesone.GlowSticks: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(38,19,'<com.iconosys.barstrobe.NewYearsStrobe: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(39,19,'<com.iconosys.barstrobe.NewYearsStrobe: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(40,49,'<eng.trickersticks.timesone.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(41,50,'<birthday.photo.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(42,51,'<birthday.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',10,'a',NULL),(43,27,'<birthday.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',53,'a',NULL),(44,52,'<birthday.photo.iconosys.eng.MeInJail$1: void onClick(android.view.View)>',7,'a',NULL),(45,30,'<birthday.photo.iconosys.eng.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(46,30,'<birthday.photo.iconosys.eng.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(47,26,'<birthday.photo.iconosys.eng.MeInJail: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(48,27,'<birthday.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(49,53,'<birthday.photo.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(50,26,'<birthday.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(51,27,'<birthday.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',113,'a',NULL),(52,51,'<birthday.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',24,'a',NULL),(53,26,'<birthday.photo.iconosys.eng.MeInJail: void onCreate(android.os.Bundle)>',6,'a',NULL),(54,27,'<birthday.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',93,'a',NULL),(55,54,'<birthday.photo.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(56,55,'<birthday.photo.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(57,56,'<birthday.photo.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(58,27,'<birthday.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(59,27,'<birthday.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',83,'a',NULL),(60,57,'<birthday.photo.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(61,27,'<birthday.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(62,58,'<birthday.photo.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(63,26,'<birthday.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(64,27,'<birthday.photo.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(65,26,'<birthday.photo.iconosys.eng.MeInJail: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(66,27,'<birthday.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',63,'a',NULL),(67,59,'<birthday.photo.iconosys.eng.MeInJail$2: void onClick(android.view.View)>',7,'a',NULL),(68,27,'<birthday.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',103,'a',NULL),(69,31,'<birthday.photo.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(70,27,'<birthday.photo.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(71,31,'<birthday.photo.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(72,27,'<birthday.photo.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(73,31,'<birthday.photo.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(74,27,'<birthday.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',73,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,2),(2,4,2),(3,6,2),(4,9,2),(5,10,2),(6,12,2),(7,13,4),(8,15,2),(9,17,2),(10,19,2),(11,24,4),(12,27,2),(13,30,2),(14,31,2),(15,35,2),(16,42,2),(17,48,2),(18,49,2),(19,50,2),(20,55,2),(21,56,4),(22,57,5),(23,62,6),(24,63,7),(25,64,7),(26,65,7),(27,66,7),(28,67,7),(29,68,7),(30,69,7),(31,70,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'eng/trickersticks/mugshots/GlowSticks'),(2,3,'whenwemet/timer/iconosys/OtherApps'),(3,5,'com/iconosys/djstrobe/ShowTerms'),(4,7,'com/iconosys/djstrobe/RegistrationScreen'),(5,8,'com/iconosys/djstrobe/Preferences'),(6,11,'whenwemet/timer/iconosys/ContactsList'),(7,14,'eng/trickersticks/timesone/LocationSender'),(8,16,'eng/trickersticks/timesone/GlowSticks'),(9,18,'eng/trickersticks/timesone/OtherApps'),(10,20,'com/iconosys/barstrobe/LocationSender'),(11,21,'eng/trickersticks/timesone/RegistrationScreen'),(12,22,'com/iconosys/barstrobe/ShowTerms'),(13,23,'eng/trickersticks/timesone/LocationSender'),(14,25,'eng/trickersticks/timesone/AdView'),(15,26,'com/iconosys/barstrobe/AdView'),(16,28,'com/iconosys/barstrobe/Preferences'),(17,29,'com/iconosys/barstrobe/RegistrationScreen'),(18,32,'com/iconosys/barstrobe/LocationSender'),(19,33,'com/iconosys/barstrobe/OtherApps'),(20,34,'eng/trickersticks/timesone/ShowTerms'),(21,36,'birthday/photo/iconosys/eng/ShowPopUp'),(22,37,'birthday/photo/iconosys/eng/ShowPopUp'),(23,38,'birthday/photo/iconosys/eng/PhotoView'),(24,39,'birthday/photo/iconosys/eng/LocationSender'),(25,40,'birthday/photo/iconosys/eng/LocationSender'),(26,41,'birthday/photo/iconosys/eng/MeInJail'),(27,43,'birthday/photo/iconosys/eng/OtherApps'),(28,44,'birthday/photo/iconosys/eng/ShowPopUp'),(29,45,'birthday/photo/iconosys/eng/ShareImage'),(30,46,'birthday/photo/iconosys/eng/AdView'),(31,47,'birthday/photo/iconosys/eng/ShowPopUp'),(32,51,'birthday/photo/iconosys/eng/OtherApps'),(33,52,'birthday/photo/iconosys/eng/ShowPopUp'),(34,53,'birthday/photo/iconosys/eng/ShowTerms'),(35,54,'birthday/photo/iconosys/eng/ShowPopUp'),(36,58,'birthday/photo/iconosys/eng/ShowPopUp'),(37,59,'birthday/photo/iconosys/eng/PhotoView'),(38,60,'birthday/photo/iconosys/eng/ShowPopUp'),(39,61,'birthday/photo/iconosys/eng/AdView'),(40,71,'birthday/photo/iconosys/eng/OtherApps'),(41,72,'birthday/photo/iconosys/eng/ShowPopUp');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,4,2),(3,6,3),(4,9,4),(5,10,6),(6,12,7),(7,13,9),(8,15,10),(9,17,11),(10,19,12),(11,24,13),(12,27,14),(13,30,15),(14,31,17),(15,35,19),(16,42,21),(17,48,22),(18,49,23),(19,50,24),(20,55,25),(21,56,26);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,36,'show_key'),(2,37,'show_key'),(3,38,'take_photo'),(4,44,'show_key'),(5,45,'saved_uri'),(6,47,'show_key'),(7,52,'show_key'),(8,54,'show_key'),(9,57,'output'),(10,58,'show_key'),(11,59,'pick_photo'),(12,60,'show_key'),(13,63,'android.intent.extra.INTENT'),(14,64,'android.intent.extra.INTENT'),(15,65,'android.intent.extra.TITLE'),(16,65,'android.intent.extra.INTENT'),(17,66,'android.intent.extra.INTENT'),(18,67,'android.intent.extra.TITLE'),(19,67,'android.intent.extra.INTENT'),(20,68,'android.intent.extra.INTENT'),(21,69,'android.intent.extra.TITLE'),(22,69,'android.intent.extra.INTENT'),(23,70,'android.intent.extra.TITLE'),(24,70,'android.intent.extra.INTENT'),(25,72,'show_key');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,2),(9,9,1),(10,10,3);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,5,1),(5,6,1),(6,7,1),(7,8,2),(8,9,1),(9,10,2);
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
INSERT INTO `IMimeTypes` VALUES (1,62,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'eng.trickersticks.mugshots'),(2,3,'whenwemet.timer.iconosys'),(3,5,'com.iconosys.djstrobe'),(4,7,'com.iconosys.djstrobe'),(5,8,'com.iconosys.djstrobe'),(6,11,'whenwemet.timer.iconosys'),(7,14,'eng.trickersticks.timesone'),(8,16,'eng.trickersticks.timesone'),(9,18,'eng.trickersticks.timesone'),(10,20,'com.iconosys.barstrobe'),(11,21,'eng.trickersticks.timesone'),(12,22,'com.iconosys.barstrobe'),(13,23,'eng.trickersticks.timesone'),(14,25,'eng.trickersticks.timesone'),(15,26,'com.iconosys.barstrobe'),(16,28,'com.iconosys.barstrobe'),(17,29,'com.iconosys.barstrobe'),(18,32,'com.iconosys.barstrobe'),(19,33,'com.iconosys.barstrobe'),(20,34,'eng.trickersticks.timesone'),(21,36,'birthday.photo.iconosys.eng'),(22,37,'birthday.photo.iconosys.eng'),(23,38,'birthday.photo.iconosys.eng'),(24,39,'birthday.photo.iconosys.eng'),(25,40,'birthday.photo.iconosys.eng'),(26,41,'birthday.photo.iconosys.eng'),(27,43,'birthday.photo.iconosys.eng'),(28,44,'birthday.photo.iconosys.eng'),(29,45,'birthday.photo.iconosys.eng'),(30,46,'birthday.photo.iconosys.eng'),(31,47,'birthday.photo.iconosys.eng'),(32,51,'birthday.photo.iconosys.eng'),(33,52,'birthday.photo.iconosys.eng'),(34,53,'birthday.photo.iconosys.eng'),(35,54,'birthday.photo.iconosys.eng'),(36,58,'birthday.photo.iconosys.eng'),(37,59,'birthday.photo.iconosys.eng'),(38,60,'birthday.photo.iconosys.eng'),(39,61,'birthday.photo.iconosys.eng'),(40,71,'birthday.photo.iconosys.eng'),(41,72,'birthday.photo.iconosys.eng');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,5,0),(4,6,0),(5,9,0),(6,10,0),(7,19,0),(8,24,0),(9,26,0),(10,27,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,0,0),(4,4,1,0),(5,5,0,0),(6,6,1,0),(7,7,0,0),(8,8,0,0),(9,9,1,0),(10,11,1,0),(11,12,0,0),(12,13,1,0),(13,15,1,0),(14,16,0,0),(15,18,1,0),(16,19,0,0),(17,20,1,0),(18,21,0,0),(19,22,1,0),(20,23,0,0),(21,24,0,0),(22,25,0,0),(23,26,0,0),(24,27,1,0),(25,28,0,0),(26,29,0,0),(27,30,1,0),(28,31,0,0),(29,32,0,0),(30,33,1,0),(31,35,1,0),(32,36,0,0),(33,39,0,0),(34,40,0,0),(35,41,1,0),(36,42,0,0),(37,43,0,0),(38,44,0,0),(39,45,0,0),(40,46,0,0),(41,48,0,0),(42,49,1,0),(43,50,0,0),(44,51,0,0),(45,52,0,0),(46,53,0,0),(47,54,0,0),(48,55,1,0),(49,56,1,0),(50,57,1,0),(51,58,0,0),(52,59,0,0),(53,60,0,0),(54,61,0,0),(55,62,1,0),(56,63,1,0),(57,64,1,0),(58,66,0,0),(59,67,0,0),(60,68,0,0),(61,69,0,0),(62,70,1,0),(63,71,1,0),(64,71,1,0),(65,71,1,0),(66,71,1,0),(67,71,1,0),(68,71,1,0),(69,71,1,0),(70,71,1,0),(71,73,0,0),(72,74,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,1,3,2,NULL),(2,7,15,2,NULL),(3,57,2,2,NULL),(4,8,13,2,NULL),(5,63,2,2,NULL),(6,57,10,2,NULL),(7,64,2,2,NULL),(8,63,10,2,NULL),(9,65,2,2,NULL),(10,64,10,2,NULL),(11,66,2,2,NULL),(12,65,10,2,NULL),(13,67,2,2,NULL),(14,66,10,2,NULL),(15,68,2,2,NULL),(16,67,10,2,NULL),(17,69,2,2,NULL),(18,68,10,2,NULL),(19,70,2,2,NULL),(20,69,10,2,NULL),(21,70,10,2,NULL),(22,26,25,2,NULL),(23,28,21,2,NULL),(24,29,22,2,NULL),(25,33,24,2,NULL),(26,57,19,2,NULL),(27,63,19,2,NULL),(28,64,19,2,NULL),(29,65,19,2,NULL),(30,66,19,2,NULL),(31,67,19,2,NULL),(32,68,19,2,NULL),(33,69,19,2,NULL),(34,70,19,2,NULL),(35,57,24,2,NULL),(36,63,24,2,NULL),(37,64,24,2,NULL),(38,65,24,2,NULL),(39,66,24,2,NULL),(40,67,24,2,NULL),(41,68,24,2,NULL),(42,69,24,2,NULL),(43,70,24,2,NULL),(44,16,11,2,NULL),(45,21,14,2,NULL),(46,57,9,2,NULL),(47,63,9,2,NULL),(48,64,9,2,NULL),(49,65,9,2,NULL),(50,66,9,2,NULL),(51,67,9,2,NULL),(52,68,9,2,NULL),(53,69,9,2,NULL),(54,70,9,2,NULL),(55,18,18,2,NULL),(56,25,16,2,NULL),(57,14,20,2,NULL),(58,23,20,2,NULL),(59,43,28,2,NULL),(60,46,33,2,NULL),(61,57,26,2,NULL),(62,63,26,2,NULL),(63,64,26,2,NULL),(64,65,26,2,NULL),(65,66,26,2,NULL),(66,67,26,2,NULL),(67,68,26,2,NULL),(68,69,26,2,NULL),(69,70,26,2,NULL),(70,37,32,2,NULL),(71,41,26,2,NULL),(72,44,32,2,NULL),(73,47,32,2,NULL),(74,51,28,2,NULL),(75,52,32,2,NULL),(76,54,32,2,NULL),(77,58,32,2,NULL),(78,60,32,2,NULL),(79,72,32,2,NULL),(80,57,1,2,NULL),(81,57,5,2,NULL),(82,57,6,2,NULL),(83,39,34,2,NULL),(84,40,34,2,NULL),(85,61,33,2,NULL),(86,71,28,2,NULL),(87,63,1,2,NULL),(88,64,1,2,NULL),(89,65,1,2,NULL),(90,66,1,2,NULL),(91,67,1,2,NULL),(92,68,1,2,NULL),(93,69,1,2,NULL),(94,70,1,2,NULL),(95,63,5,2,NULL),(96,64,5,2,NULL),(97,65,5,2,NULL),(98,66,5,2,NULL),(99,67,5,2,NULL),(100,68,5,2,NULL),(101,69,5,2,NULL),(102,70,5,2,NULL),(103,63,6,2,NULL),(104,64,6,2,NULL),(105,65,6,2,NULL),(106,66,6,2,NULL),(107,67,6,2,NULL),(108,68,6,2,NULL),(109,69,6,2,NULL),(110,70,6,2,NULL),(111,3,7,2,NULL),(112,11,6,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (9,'android.permission.ACCESS_COARSE_LOCATION'),(7,'android.permission.ACCESS_FINE_LOCATION'),(12,'android.permission.CAMERA'),(17,'android.permission.CHANGE_CONFIGURATION'),(16,'android.permission.DEVICE_POWER'),(15,'android.permission.FLASHLIGHT'),(10,'android.permission.GET_ACCOUNTS'),(14,'android.permission.HARDWARE_TEST'),(3,'android.permission.INTERNET'),(4,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(5,'android.permission.READ_SMS'),(2,'android.permission.SEND_SMS'),(11,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(13,'android.permission.WRITE_SETTINGS'),(8,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(2,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(3,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(4,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(5,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(6,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(7,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(8,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(9,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(10,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(11,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(12,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(13,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(14,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(15,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(16,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(17,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(18,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(19,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(20,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(21,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(22,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(23,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(24,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(25,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(26,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,10,5),(2,14,8),(3,34,16),(4,37,18),(5,47,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,2,3),(7,3,1),(8,3,2),(9,3,3),(10,3,4),(11,4,1),(12,4,2),(13,4,3),(14,4,4),(15,5,17),(16,4,5),(17,5,16),(18,4,6),(19,5,1),(20,4,7),(21,5,2),(22,4,8),(23,5,3),(24,4,9),(25,5,11),(26,4,10),(27,5,12),(28,4,11),(29,5,13),(30,5,14),(31,5,15),(32,6,1),(33,6,2),(34,6,3),(35,6,4),(36,6,10),(37,6,11),(38,6,12),(39,6,13),(40,6,14),(41,6,15),(42,6,17),(43,6,16),(44,7,1),(45,7,2),(46,7,3),(47,7,4),(48,7,5),(49,7,6),(50,7,7),(51,7,8),(52,7,9),(53,7,10),(54,7,11),(55,7,12);
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
