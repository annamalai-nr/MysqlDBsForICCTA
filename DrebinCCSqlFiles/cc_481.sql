-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_481
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
INSERT INTO `ActionStrings` VALUES (3,'android.appwidget.action.APPWIDGET_CONFIGURE'),(4,'android.appwidget.action.APPWIDGET_UPDATE'),(9,'android.intent.action.CHOOSER'),(7,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(6,'android.intent.action.PICK'),(5,'android.intent.action.SENDTO'),(2,'android.intent.action.VIEW'),(8,'android.media.action.IMAGE_CAPTURE');
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
INSERT INTO `Applications` VALUES (1,'eng.trickersticks.androidphones',2),(2,'nycountdown.buzzer.iconosys',7),(3,'breakingdawn.countdown.iconosys.eng',5),(4,'com.iconosys.dancestrobe',5),(5,'com.iconosys.partystrobe',1),(6,'marijuanapoll.iconosys.eng',2),(7,'happyhour.photo.iconosys.eng',4);
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'eng.trickersticks.androidphones.TrickerSticks'),(2,1,'eng.trickersticks.androidphones.GlowSticks'),(3,1,'eng.trickersticks.androidphones.Registration'),(4,2,'nycountdown.buzzer.iconosys.ChristmasTimer'),(5,2,'nycountdown.buzzer.iconosys.ContactsList'),(6,2,'nycountdown.buzzer.iconosys.OtherApps'),(7,2,'nycountdown.buzzer.iconosys.MessageService'),(8,3,'breakingdawn.countdown.iconosys.eng.ChristmasTimer'),(9,3,'breakingdawn.countdown.iconosys.eng.ContactsList'),(10,3,'breakingdawn.countdown.iconosys.eng.OtherApps'),(11,3,'breakingdawn.countdown.iconosys.eng.HogwartsWidgetConfgure'),(12,4,'com.iconosys.dancestrobe.NewYearsStrobe'),(13,5,'com.iconosys.partystrobe.NewYearsStrobe'),(14,3,'breakingdawn.countdown.iconosys.eng.MessageService'),(15,4,'com.iconosys.dancestrobe.Preferences'),(16,3,'breakingdawn.countdown.iconosys.eng.HogwartsWidgetProvider'),(17,5,'com.iconosys.partystrobe.Preferences'),(18,4,'com.iconosys.dancestrobe.RegistrationScreen'),(19,5,'com.iconosys.partystrobe.RegistrationScreen'),(20,4,'com.iconosys.dancestrobe.ShowTerms'),(21,5,'com.iconosys.partystrobe.ShowTerms'),(22,6,'marijuanapoll.iconosys.eng.PollApp'),(23,4,'com.iconosys.dancestrobe.OtherApps'),(24,6,'marijuanapoll.iconosys.eng.PollNew'),(25,4,'com.iconosys.dancestrobe.AdView'),(26,6,'marijuanapoll.iconosys.eng.ShowTerms'),(27,6,'marijuanapoll.iconosys.eng.PollResult'),(28,6,'marijuanapoll.iconosys.eng.AdView'),(29,6,'marijuanapoll.iconosys.eng.OtherApps'),(30,6,'marijuanapoll.iconosys.eng.IconosysActivity'),(31,6,'marijuanapoll.iconosys.eng.RegistrationScreen'),(32,6,'marijuanapoll.iconosys.eng.LocationSender'),(33,7,'happyhour.photo.iconosys.eng.MeInJail'),(34,7,'happyhour.photo.iconosys.eng.PhotoView'),(35,7,'happyhour.photo.iconosys.eng.OtherApps'),(36,7,'happyhour.photo.iconosys.eng.ShowTerms'),(37,7,'happyhour.photo.iconosys.eng.RegistrationScreen'),(38,7,'happyhour.photo.iconosys.eng.ShareImage'),(39,7,'happyhour.photo.iconosys.eng.ShowPopUp'),(40,7,'happyhour.photo.iconosys.eng.AdView'),(41,7,'happyhour.photo.iconosys.eng.LocationSender'),(42,2,'nycountdown.buzzer.iconosys.OtherApps$2'),(43,2,'nycountdown.buzzer.iconosys.OtherApps$1'),(44,5,'com.iconosys.partystrobe.RegistrationScreen$1'),(45,3,'breakingdawn.countdown.iconosys.eng.OtherApps$1'),(46,3,'breakingdawn.countdown.iconosys.eng.OtherApps$2'),(47,4,'com.iconosys.dancestrobe.RegistrationScreen$1'),(48,6,'marijuanapoll.iconosys.eng.PollNew$2'),(49,6,'marijuanapoll.iconosys.eng.RegistrationScreen$1'),(50,6,'marijuanapoll.iconosys.eng.PollApp$1'),(51,6,'marijuanapoll.iconosys.eng.OtherApps$3'),(52,6,'marijuanapoll.iconosys.eng.OtherApps$6'),(53,7,'happyhour.photo.iconosys.eng.OtherApps$1'),(54,6,'marijuanapoll.iconosys.eng.OtherApps$2'),(55,7,'happyhour.photo.iconosys.eng.OtherApps$5'),(56,6,'marijuanapoll.iconosys.eng.PollApp$2'),(57,7,'happyhour.photo.iconosys.eng.OtherApps$6'),(58,6,'marijuanapoll.iconosys.eng.OtherApps$4'),(59,7,'happyhour.photo.iconosys.eng.OtherApps$3'),(60,6,'marijuanapoll.iconosys.eng.OtherApps$5'),(61,6,'marijuanapoll.iconosys.eng.OtherApps$1'),(62,7,'happyhour.photo.iconosys.eng.MeInJail$1'),(63,7,'happyhour.photo.iconosys.eng.PhotoView$1'),(64,7,'happyhour.photo.iconosys.eng.MeInJail$2'),(65,7,'happyhour.photo.iconosys.eng.OtherApps$2'),(66,7,'happyhour.photo.iconosys.eng.RegistrationScreen$1'),(67,7,'happyhour.photo.iconosys.eng.OtherApps$4');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,11,'appWidgetId'),(2,25,'_who'),(3,28,'_who'),(4,24,'_answer'),(5,24,'_result'),(6,27,'_question'),(7,39,'show_key'),(8,40,'_who'),(9,24,'_index'),(10,38,'saved_uri'),(11,24,'_question'),(12,27,'_answer'),(13,34,'pick_photo'),(14,34,'take_photo');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'r',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'s',0,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'s',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,5),(3,3,4),(4,4,6),(5,5,6),(6,6,5),(7,7,4),(8,8,13),(9,9,13),(10,10,19),(11,11,10),(12,11,11),(13,12,10),(14,12,11),(15,13,18),(16,14,12),(17,15,8),(18,16,12),(19,17,8),(20,18,12),(21,19,9),(22,20,9),(23,21,18),(24,22,12),(25,23,12),(26,24,12),(27,25,12),(28,26,18),(29,27,22),(30,27,30),(31,28,24),(32,29,31),(33,30,30),(34,31,30),(35,31,22),(36,32,22),(37,32,30),(38,33,30),(39,34,29),(40,35,29),(41,36,31),(42,37,34),(43,38,24),(44,39,35),(45,40,31),(46,41,34),(47,42,29),(48,43,34),(49,44,30),(50,44,22),(51,45,30),(52,45,22),(53,46,35),(54,47,22),(55,47,30),(56,48,35),(57,49,30),(58,49,22),(59,50,34),(60,51,29),(61,52,34),(62,53,22),(63,53,30),(64,54,35),(65,55,29),(66,56,34),(67,57,29),(68,58,37),(69,59,24),(70,60,37),(71,61,24),(72,62,33),(73,63,34),(74,64,33),(75,65,33),(76,66,33),(77,67,34),(78,68,38),(79,69,34),(80,70,34),(81,71,35),(82,72,34),(83,73,38),(84,74,34),(85,75,38),(86,76,37),(87,77,33),(88,78,34),(89,79,35),(90,80,33),(91,81,33);
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<eng.trickersticks.androidphones.TrickerSticks: void onCreate(android.os.Bundle)>',6,'a',NULL),(2,5,'<nycountdown.buzzer.iconosys.ContactsList: void onStart()>',4,'p',NULL),(3,4,'<nycountdown.buzzer.iconosys.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(4,42,'<nycountdown.buzzer.iconosys.OtherApps$2: void onClick(android.view.View)>',8,'a',NULL),(5,43,'<nycountdown.buzzer.iconosys.OtherApps$1: void onClick(android.view.View)>',8,'a',NULL),(6,5,'<nycountdown.buzzer.iconosys.ContactsList: void next()>',3,'p',NULL),(7,4,'<nycountdown.buzzer.iconosys.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(8,13,'<com.iconosys.partystrobe.NewYearsStrobe: void onResume()>',14,'a',NULL),(9,13,'<com.iconosys.partystrobe.NewYearsStrobe: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(10,44,'<com.iconosys.partystrobe.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(11,45,'<breakingdawn.countdown.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',8,'a',NULL),(12,46,'<breakingdawn.countdown.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',8,'a',NULL),(13,18,'<com.iconosys.dancestrobe.RegistrationScreen: void SendPhoneData()>',93,'s',NULL),(14,12,'<com.iconosys.dancestrobe.NewYearsStrobe: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(15,8,'<breakingdawn.countdown.iconosys.eng.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(16,12,'<com.iconosys.dancestrobe.NewYearsStrobe: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(17,8,'<breakingdawn.countdown.iconosys.eng.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(18,12,'<com.iconosys.dancestrobe.NewYearsStrobe: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(19,9,'<breakingdawn.countdown.iconosys.eng.ContactsList: void onStart()>',4,'p',NULL),(20,9,'<breakingdawn.countdown.iconosys.eng.ContactsList: void next()>',3,'p',NULL),(21,47,'<com.iconosys.dancestrobe.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(22,12,'<com.iconosys.dancestrobe.NewYearsStrobe: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(23,12,'<com.iconosys.dancestrobe.NewYearsStrobe: void onResume()>',14,'a',NULL),(24,12,'<com.iconosys.dancestrobe.NewYearsStrobe: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(25,12,'<com.iconosys.dancestrobe.NewYearsStrobe: void onCreate(android.os.Bundle)>',12,'a',NULL),(26,18,'<com.iconosys.dancestrobe.RegistrationScreen: void SendAutoData()>',89,'s',NULL),(27,30,'<marijuanapoll.iconosys.eng.IconosysActivity: void onActivityResult(int,int,android.content.Intent)>',32,'a',NULL),(28,48,'<marijuanapoll.iconosys.eng.PollNew$2: void onClick(android.view.View)>',6,'a',NULL),(29,49,'<marijuanapoll.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(30,30,'<marijuanapoll.iconosys.eng.IconosysActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(31,22,'<marijuanapoll.iconosys.eng.PollApp: void onActivityResult(int,int,android.content.Intent)>',25,'a',NULL),(32,50,'<marijuanapoll.iconosys.eng.PollApp$1: void onClick(android.view.View)>',16,'a',NULL),(33,30,'<marijuanapoll.iconosys.eng.IconosysActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(34,51,'<marijuanapoll.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(35,52,'<marijuanapoll.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(36,31,'<marijuanapoll.iconosys.eng.RegistrationScreen: void SendPhoneData()>',100,'s',NULL),(37,34,'<happyhour.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',73,'a',NULL),(38,24,'<marijuanapoll.iconosys.eng.PollNew: void onCreate(android.os.Bundle)>',86,'a',NULL),(39,53,'<happyhour.photo.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(40,31,'<marijuanapoll.iconosys.eng.RegistrationScreen: void SendAutoData()>',106,'s',NULL),(41,34,'<happyhour.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',93,'a',NULL),(42,54,'<marijuanapoll.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(43,34,'<happyhour.photo.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(44,30,'<marijuanapoll.iconosys.eng.IconosysActivity: void onResume()>',17,'a',NULL),(45,22,'<marijuanapoll.iconosys.eng.PollApp: void onActivityResult(int,int,android.content.Intent)>',17,'a',NULL),(46,55,'<happyhour.photo.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(47,56,'<marijuanapoll.iconosys.eng.PollApp$2: void onClick(android.view.View)>',6,'a',NULL),(48,57,'<happyhour.photo.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(49,30,'<marijuanapoll.iconosys.eng.IconosysActivity: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(50,34,'<happyhour.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(51,58,'<marijuanapoll.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(52,34,'<happyhour.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',83,'a',NULL),(53,30,'<marijuanapoll.iconosys.eng.IconosysActivity: void onActivityResult(int,int,android.content.Intent)>',11,'p',0),(54,59,'<happyhour.photo.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(55,60,'<marijuanapoll.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(56,34,'<happyhour.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(57,61,'<marijuanapoll.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(58,37,'<happyhour.photo.iconosys.eng.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(59,24,'<marijuanapoll.iconosys.eng.PollNew: void onCreate(android.os.Bundle)>',74,'a',NULL),(60,37,'<happyhour.photo.iconosys.eng.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(61,24,'<marijuanapoll.iconosys.eng.PollNew: void onCreate(android.os.Bundle)>',52,'a',NULL),(62,62,'<happyhour.photo.iconosys.eng.MeInJail$1: void onClick(android.view.View)>',7,'a',NULL),(63,63,'<happyhour.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',10,'a',NULL),(64,33,'<happyhour.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(65,33,'<happyhour.photo.iconosys.eng.MeInJail: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(66,64,'<happyhour.photo.iconosys.eng.MeInJail$2: void onClick(android.view.View)>',7,'a',NULL),(67,34,'<happyhour.photo.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(68,38,'<happyhour.photo.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(69,34,'<happyhour.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(70,34,'<happyhour.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',63,'a',NULL),(71,65,'<happyhour.photo.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(72,34,'<happyhour.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',53,'a',NULL),(73,38,'<happyhour.photo.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(74,63,'<happyhour.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',24,'a',NULL),(75,38,'<happyhour.photo.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(76,66,'<happyhour.photo.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(77,33,'<happyhour.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(78,34,'<happyhour.photo.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(79,67,'<happyhour.photo.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(80,33,'<happyhour.photo.iconosys.eng.MeInJail: void onCreate(android.os.Bundle)>',6,'a',NULL),(81,33,'<happyhour.photo.iconosys.eng.MeInJail: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL);
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
INSERT INTO `IActions` VALUES (1,3,2),(2,4,2),(3,9,2),(4,10,2),(5,16,6),(6,22,2),(7,24,6),(8,28,2),(9,29,2),(10,33,2),(11,36,2),(12,38,7),(13,40,2),(14,41,2),(15,42,2),(16,44,2),(17,46,2),(18,47,2),(19,49,2),(20,58,8),(21,62,2),(22,64,9),(23,65,9),(24,66,9),(25,67,9),(26,68,9),(27,69,9),(28,70,9),(29,71,9),(30,75,6),(31,76,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'eng/trickersticks/androidphones/GlowSticks'),(2,2,'nycountdown/buzzer/iconosys/OtherApps'),(3,5,'nycountdown/buzzer/iconosys/ContactsList'),(4,6,'com/iconosys/partystrobe/RegistrationScreen'),(5,7,'com/iconosys/partystrobe/Preferences'),(6,8,'com/iconosys/partystrobe/ShowTerms'),(7,11,'com/iconosys/dancestrobe/LocationSender'),(8,12,'com/iconosys/dancestrobe/OtherApps'),(9,13,'breakingdawn/countdown/iconosys/eng/ContactsList'),(10,14,'com/iconosys/dancestrobe/Preferences'),(11,15,'breakingdawn/countdown/iconosys/eng/OtherApps'),(12,17,'com/iconosys/dancestrobe/ShowTerms'),(13,18,'com/iconosys/dancestrobe/RegistrationScreen'),(14,19,'com/iconosys/dancestrobe/AdView'),(15,20,'com/iconosys/dancestrobe/LocationSender'),(16,21,'marijuanapoll/iconosys/eng/RegistrationScreen'),(17,23,'marijuanapoll/iconosys/eng/ShowTerms'),(18,25,'marijuanapoll/iconosys/eng/AdView'),(19,26,'marijuanapoll/iconosys/eng/PollNew'),(20,27,'marijuanapoll/iconosys/eng/OtherApps'),(21,30,'marijuanapoll/iconosys/eng/LocationSender'),(22,31,'happyhour/photo/iconosys/eng/ShowPopUp'),(23,32,'marijuanapoll/iconosys/eng/AdView'),(24,34,'marijuanapoll/iconosys/eng/LocationSender'),(25,35,'happyhour/photo/iconosys/eng/ShowPopUp'),(26,37,'marijuanapoll/iconosys/eng/RegistrationScreen'),(27,39,'marijuanapoll/iconosys/eng/PollResult'),(28,43,'happyhour/photo/iconosys/eng/OtherApps'),(29,45,'happyhour/photo/iconosys/eng/ShowPopUp'),(30,48,'happyhour/photo/iconosys/eng/MeInJail'),(31,50,'happyhour/photo/iconosys/eng/LocationSender'),(32,51,'marijuanapoll/iconosys/eng/AdView'),(33,52,'happyhour/photo/iconosys/eng/LocationSender'),(34,53,'marijuanapoll/iconosys/eng/PollResult'),(35,54,'happyhour/photo/iconosys/eng/PhotoView'),(36,55,'happyhour/photo/iconosys/eng/ShowPopUp'),(37,56,'happyhour/photo/iconosys/eng/OtherApps'),(38,57,'happyhour/photo/iconosys/eng/PhotoView'),(39,59,'happyhour/photo/iconosys/eng/OtherApps'),(40,60,'happyhour/photo/iconosys/eng/ShowPopUp'),(41,61,'happyhour/photo/iconosys/eng/ShowPopUp'),(42,63,'happyhour/photo/iconosys/eng/ShowPopUp'),(43,72,'happyhour/photo/iconosys/eng/ShareImage'),(44,73,'happyhour/photo/iconosys/eng/AdView'),(45,74,'happyhour/photo/iconosys/eng/ShowTerms'),(46,77,'happyhour/photo/iconosys/eng/AdView');
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
INSERT INTO `IData` VALUES (1,3,2),(2,4,3),(3,9,5),(4,10,6),(5,16,8),(6,22,11),(7,24,12),(8,28,13),(9,29,14),(10,33,15),(11,36,16),(12,40,17),(13,41,18),(14,42,19),(15,44,21),(16,46,22),(17,47,23),(18,49,24),(19,62,25),(20,75,26),(21,76,27);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,26,'_question'),(2,26,'_answer'),(3,26,'_index'),(4,26,'_result'),(5,31,'show_key'),(6,35,'show_key'),(7,45,'show_key'),(8,53,'_answer'),(9,53,'_question'),(10,54,'take_photo'),(11,55,'show_key'),(12,57,'pick_photo'),(13,58,'output'),(14,60,'show_key'),(15,61,'show_key'),(16,63,'show_key'),(17,64,'android.intent.extra.INTENT'),(18,65,'android.intent.extra.INTENT'),(19,66,'android.intent.extra.TITLE'),(20,66,'android.intent.extra.INTENT'),(21,67,'android.intent.extra.INTENT'),(22,68,'android.intent.extra.TITLE'),(23,68,'android.intent.extra.INTENT'),(24,69,'android.intent.extra.INTENT'),(25,70,'android.intent.extra.TITLE'),(26,70,'android.intent.extra.INTENT'),(27,71,'android.intent.extra.TITLE'),(28,71,'android.intent.extra.INTENT'),(29,72,'saved_uri');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,5,1),(6,6,1),(7,7,2),(8,8,3),(9,9,1),(10,10,1),(11,11,4),(12,12,1),(13,13,2),(14,14,1),(15,15,5);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,4,2),(4,5,1),(5,7,2),(6,9,1),(7,10,1),(8,12,1),(9,13,2),(10,14,1),(11,15,2);
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
INSERT INTO `IFData` VALUES (1,15,'sms',NULL,NULL,NULL,NULL,NULL),(2,15,'mms',NULL,NULL,NULL,NULL,NULL),(3,15,'mmsto',NULL,NULL,NULL,NULL,NULL),(4,15,NULL,NULL,NULL,NULL,'image','*'),(5,15,NULL,NULL,NULL,NULL,'video','*'),(6,15,NULL,NULL,NULL,NULL,'audio','*');
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
INSERT INTO `IMimeTypes` VALUES (1,38,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'eng.trickersticks.androidphones'),(2,2,'nycountdown.buzzer.iconosys'),(3,5,'nycountdown.buzzer.iconosys'),(4,6,'com.iconosys.partystrobe'),(5,7,'com.iconosys.partystrobe'),(6,8,'com.iconosys.partystrobe'),(7,11,'com.iconosys.dancestrobe'),(8,12,'com.iconosys.dancestrobe'),(9,13,'breakingdawn.countdown.iconosys.eng'),(10,14,'com.iconosys.dancestrobe'),(11,15,'breakingdawn.countdown.iconosys.eng'),(12,17,'com.iconosys.dancestrobe'),(13,18,'com.iconosys.dancestrobe'),(14,19,'com.iconosys.dancestrobe'),(15,20,'com.iconosys.dancestrobe'),(16,21,'marijuanapoll.iconosys.eng'),(17,23,'marijuanapoll.iconosys.eng'),(18,25,'marijuanapoll.iconosys.eng'),(19,26,'marijuanapoll.iconosys.eng'),(20,27,'marijuanapoll.iconosys.eng'),(21,30,'marijuanapoll.iconosys.eng'),(22,31,'happyhour.photo.iconosys.eng'),(23,32,'marijuanapoll.iconosys.eng'),(24,34,'marijuanapoll.iconosys.eng'),(25,35,'happyhour.photo.iconosys.eng'),(26,37,'marijuanapoll.iconosys.eng'),(27,39,'marijuanapoll.iconosys.eng'),(28,43,'happyhour.photo.iconosys.eng'),(29,45,'happyhour.photo.iconosys.eng'),(30,48,'happyhour.photo.iconosys.eng'),(31,50,'happyhour.photo.iconosys.eng'),(32,51,'marijuanapoll.iconosys.eng'),(33,52,'happyhour.photo.iconosys.eng'),(34,53,'marijuanapoll.iconosys.eng'),(35,54,'happyhour.photo.iconosys.eng'),(36,55,'happyhour.photo.iconosys.eng'),(37,56,'happyhour.photo.iconosys.eng'),(38,57,'happyhour.photo.iconosys.eng'),(39,59,'happyhour.photo.iconosys.eng'),(40,60,'happyhour.photo.iconosys.eng'),(41,61,'happyhour.photo.iconosys.eng'),(42,63,'happyhour.photo.iconosys.eng'),(43,72,'happyhour.photo.iconosys.eng'),(44,73,'happyhour.photo.iconosys.eng'),(45,74,'happyhour.photo.iconosys.eng'),(46,77,'happyhour.photo.iconosys.eng');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,5,0),(4,6,0),(5,8,0),(6,9,0),(7,10,0),(8,11,0),(9,12,0),(10,13,0),(11,16,0),(12,22,0),(13,23,0),(14,33,0),(15,34,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,3,0,0),(3,4,1,0),(4,5,1,0),(5,7,0,0),(6,8,0,0),(7,9,0,0),(8,10,0,0),(9,11,1,0),(10,12,1,0),(11,13,0,0),(12,14,0,0),(13,15,0,0),(14,16,0,0),(15,17,0,0),(16,18,1,0),(17,21,0,0),(18,23,0,0),(19,25,0,0),(20,26,0,0),(21,27,0,0),(22,28,1,0),(23,29,0,0),(24,30,1,0),(25,31,0,0),(26,32,0,0),(27,33,0,0),(28,34,1,0),(29,35,1,0),(30,36,0,0),(31,37,0,0),(32,38,0,0),(33,39,1,0),(34,40,0,0),(35,41,0,0),(36,42,1,0),(37,44,0,0),(38,43,1,0),(39,45,0,0),(40,46,1,0),(41,47,1,0),(42,48,1,0),(43,50,0,0),(44,51,1,0),(45,52,0,0),(46,54,1,0),(47,55,1,0),(48,56,0,0),(49,57,1,0),(50,58,0,0),(51,59,0,0),(52,60,0,0),(53,61,0,0),(54,62,0,0),(55,63,0,0),(56,64,0,0),(57,66,0,0),(58,67,1,0),(59,68,0,0),(60,69,0,0),(61,70,0,0),(62,71,1,0),(63,72,0,0),(64,73,1,0),(65,73,1,0),(66,73,1,0),(67,73,1,0),(68,73,1,0),(69,73,1,0),(70,73,1,0),(71,73,1,0),(72,74,0,0),(73,75,0,0),(74,76,0,0),(75,77,1,0),(76,79,1,0),(77,80,0,0);
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
INSERT INTO `PermissionStrings` VALUES (15,'android.permission.ACCESS_COARSE_LOCATION'),(14,'android.permission.ACCESS_FINE_LOCATION'),(7,'android.permission.CAMERA'),(12,'android.permission.CHANGE_CONFIGURATION'),(10,'android.permission.DEVICE_POWER'),(9,'android.permission.FLASHLIGHT'),(6,'android.permission.GET_ACCOUNTS'),(5,'android.permission.HARDWARE_TEST'),(3,'android.permission.INTERNET'),(4,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(17,'android.permission.READ_SMS'),(2,'android.permission.SEND_SMS'),(11,'android.permission.WAKE_LOCK'),(13,'android.permission.WRITE_EXTERNAL_STORAGE'),(8,'android.permission.WRITE_SETTINGS'),(16,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(8,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(9,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(10,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(11,NULL,NULL,'http://advertise.iconosys.com',NULL,NULL,NULL),(12,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(13,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(14,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(15,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(16,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(17,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(18,NULL,NULL,'http://advertise.iconosys.com',NULL,NULL,NULL),(19,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(20,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(21,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(22,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(23,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(24,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(25,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(26,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(27,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(28,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,2,1),(2,6,4),(3,19,7),(4,20,9),(5,24,10),(6,49,20),(7,81,28);
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,2,3),(7,2,4),(8,3,1),(9,3,2),(10,3,3),(11,3,4),(12,4,1),(13,4,2),(14,4,3),(15,4,4),(16,5,1),(17,4,5),(18,5,2),(19,4,6),(20,5,3),(21,4,7),(22,5,5),(23,4,8),(24,5,7),(25,4,9),(26,5,8),(27,4,10),(28,5,9),(29,4,11),(30,5,10),(31,4,12),(32,5,11),(33,5,12),(34,6,1),(35,6,2),(36,6,3),(37,6,4),(38,6,6),(39,6,11),(40,6,13),(41,6,14),(42,6,15),(43,7,17),(44,7,16),(45,7,1),(46,7,2),(47,7,3),(48,7,4),(49,7,6),(50,7,7),(51,7,11),(52,7,13),(53,7,14),(54,7,15);
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
