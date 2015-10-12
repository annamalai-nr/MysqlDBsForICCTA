-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_487
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
INSERT INTO `ActionStrings` VALUES (5,'android.intent.action.CHOOSER'),(6,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(4,'android.intent.action.PICK'),(2,'android.intent.action.SENDTO'),(3,'android.intent.action.VIEW'),(7,'android.media.action.IMAGE_CAPTURE');
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
INSERT INTO `Applications` VALUES (1,'eng.trickersticks.timesseven',3),(2,'eng.trickersticks.strangestfish',2),(3,'recipe.halloween.iconosys.eng',1),(4,'hairdo.photo.iconosys.eng',1),(5,'soccer.photo.iconosys.eng',1),(6,'myballlerina.photo.iconosys.eng',8),(7,'willobamawinin2012.iconosys.eng',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'eng.trickersticks.timesseven.TrickerSticks'),(2,1,'eng.trickersticks.timesseven.GlowSticks'),(3,1,'eng.trickersticks.timesseven.ShowTerms'),(4,1,'eng.trickersticks.timesseven.RegistrationScreen'),(5,1,'eng.trickersticks.timesseven.AdView'),(6,1,'eng.trickersticks.timesseven.OtherApps'),(7,1,'eng.trickersticks.timesseven.LocationSender'),(8,2,'eng.trickersticks.strangestfish.TrickerSticks'),(9,3,'recipe.halloween.iconosys.eng.TrickerSticks'),(10,2,'eng.trickersticks.strangestfish.GlowSticks'),(11,2,'eng.trickersticks.strangestfish.ShowTerms'),(12,3,'recipe.halloween.iconosys.eng.GlowSticks'),(13,2,'eng.trickersticks.strangestfish.RegistrationScreen'),(14,3,'recipe.halloween.iconosys.eng.ShowTerms'),(15,2,'eng.trickersticks.strangestfish.AdView'),(16,3,'recipe.halloween.iconosys.eng.RegistrationScreen'),(17,2,'eng.trickersticks.strangestfish.OtherApps'),(18,3,'recipe.halloween.iconosys.eng.AdView'),(19,4,'hairdo.photo.iconosys.eng.MeInJail'),(20,2,'eng.trickersticks.strangestfish.LocationSender'),(21,3,'recipe.halloween.iconosys.eng.OtherApps'),(22,3,'recipe.halloween.iconosys.eng.LocationSender'),(23,4,'hairdo.photo.iconosys.eng.PhotoView'),(24,5,'soccer.photo.iconosys.eng.MeInJail'),(25,6,'myballlerina.photo.iconosys.eng.FrameIt'),(26,4,'hairdo.photo.iconosys.eng.OtherApps'),(27,5,'soccer.photo.iconosys.eng.PhotoView'),(28,4,'hairdo.photo.iconosys.eng.ShowTerms'),(29,6,'myballlerina.photo.iconosys.eng.PhotoView'),(30,4,'hairdo.photo.iconosys.eng.RegistrationScreen'),(31,4,'hairdo.photo.iconosys.eng.ShareImage'),(32,4,'hairdo.photo.iconosys.eng.ShowPopUp'),(33,7,'willobamawinin2012.iconosys.eng.PollApp'),(34,4,'hairdo.photo.iconosys.eng.AdView'),(35,4,'hairdo.photo.iconosys.eng.LocationSender'),(36,5,'soccer.photo.iconosys.eng.OtherApps'),(37,7,'willobamawinin2012.iconosys.eng.PollNew'),(38,6,'myballlerina.photo.iconosys.eng.OtherApps'),(39,5,'soccer.photo.iconosys.eng.ShowTerms'),(40,7,'willobamawinin2012.iconosys.eng.ShowTerms'),(41,6,'myballlerina.photo.iconosys.eng.ShowTerms'),(42,5,'soccer.photo.iconosys.eng.RegistrationScreen'),(43,6,'myballlerina.photo.iconosys.eng.RegistrationScreen'),(44,7,'willobamawinin2012.iconosys.eng.PollResult'),(45,5,'soccer.photo.iconosys.eng.ShareImage'),(46,7,'willobamawinin2012.iconosys.eng.AdView'),(47,6,'myballlerina.photo.iconosys.eng.ShareImage'),(48,5,'soccer.photo.iconosys.eng.ShowPopUp'),(49,6,'myballlerina.photo.iconosys.eng.AdView'),(50,7,'willobamawinin2012.iconosys.eng.OtherApps'),(51,5,'soccer.photo.iconosys.eng.AdView'),(52,7,'willobamawinin2012.iconosys.eng.IconosysActivity'),(53,6,'myballlerina.photo.iconosys.eng.LocationSender'),(54,5,'soccer.photo.iconosys.eng.LocationSender'),(55,7,'willobamawinin2012.iconosys.eng.RegistrationScreen'),(56,7,'willobamawinin2012.iconosys.eng.LocationSender'),(57,1,'eng.trickersticks.timesseven.OtherApps$3'),(58,1,'eng.trickersticks.timesseven.OtherApps$4'),(59,1,'eng.trickersticks.timesseven.OtherApps$2'),(60,1,'eng.trickersticks.timesseven.RegistrationScreen$1'),(61,1,'eng.trickersticks.timesseven.OtherApps$5'),(62,1,'eng.trickersticks.timesseven.OtherApps$6'),(63,3,'recipe.halloween.iconosys.eng.OtherApps$4'),(64,2,'eng.trickersticks.strangestfish.OtherApps$3'),(65,3,'recipe.halloween.iconosys.eng.OtherApps$5'),(66,2,'eng.trickersticks.strangestfish.OtherApps$2'),(67,1,'eng.trickersticks.timesseven.OtherApps$1'),(68,2,'eng.trickersticks.strangestfish.RegistrationScreen$1'),(69,3,'recipe.halloween.iconosys.eng.OtherApps$3'),(70,2,'eng.trickersticks.strangestfish.OtherApps$1'),(71,2,'eng.trickersticks.strangestfish.OtherApps$5'),(72,3,'recipe.halloween.iconosys.eng.OtherApps$6'),(73,2,'eng.trickersticks.strangestfish.OtherApps$4'),(74,3,'recipe.halloween.iconosys.eng.OtherApps$2'),(75,2,'eng.trickersticks.strangestfish.OtherApps$6'),(76,3,'recipe.halloween.iconosys.eng.GlowSticks$1'),(77,3,'recipe.halloween.iconosys.eng.RegistrationScreen$1'),(78,3,'recipe.halloween.iconosys.eng.OtherApps$1'),(79,4,'hairdo.photo.iconosys.eng.OtherApps$2'),(80,7,'willobamawinin2012.iconosys.eng.OtherApps$4'),(81,5,'soccer.photo.iconosys.eng.OtherApps$3'),(82,5,'soccer.photo.iconosys.eng.OtherApps$4'),(83,7,'willobamawinin2012.iconosys.eng.OtherApps$3'),(84,6,'myballlerina.photo.iconosys.eng.OtherApps$2'),(85,6,'myballlerina.photo.iconosys.eng.OtherApps$3'),(86,7,'willobamawinin2012.iconosys.eng.OtherApps$5'),(87,4,'hairdo.photo.iconosys.eng.OtherApps$5'),(88,6,'myballlerina.photo.iconosys.eng.OtherApps$4'),(89,4,'hairdo.photo.iconosys.eng.PhotoView$1'),(90,7,'willobamawinin2012.iconosys.eng.OtherApps$1'),(91,7,'willobamawinin2012.iconosys.eng.OtherApps$2'),(92,4,'hairdo.photo.iconosys.eng.RegistrationScreen$1'),(93,5,'soccer.photo.iconosys.eng.RegistrationScreen$1'),(94,5,'soccer.photo.iconosys.eng.MeInJail$1'),(95,5,'soccer.photo.iconosys.eng.PhotoView$1'),(96,6,'myballlerina.photo.iconosys.eng.FrameIt$2'),(97,5,'soccer.photo.iconosys.eng.OtherApps$6'),(98,6,'myballlerina.photo.iconosys.eng.RegistrationScreen$1'),(99,6,'myballlerina.photo.iconosys.eng.OtherApps$1'),(100,7,'willobamawinin2012.iconosys.eng.OtherApps$6'),(101,5,'soccer.photo.iconosys.eng.OtherApps$5'),(102,5,'soccer.photo.iconosys.eng.MeInJail$2'),(103,7,'willobamawinin2012.iconosys.eng.PollApp$1'),(104,5,'soccer.photo.iconosys.eng.OtherApps$2'),(105,4,'hairdo.photo.iconosys.eng.OtherApps$4'),(106,5,'soccer.photo.iconosys.eng.OtherApps$1'),(107,7,'willobamawinin2012.iconosys.eng.RegistrationScreen$1'),(108,6,'myballlerina.photo.iconosys.eng.FrameIt$1'),(109,4,'hairdo.photo.iconosys.eng.MeInJail$1'),(110,6,'myballlerina.photo.iconosys.eng.PhotoView$1'),(111,6,'myballlerina.photo.iconosys.eng.OtherApps$5'),(112,4,'hairdo.photo.iconosys.eng.OtherApps$3'),(113,4,'hairdo.photo.iconosys.eng.MeInJail$2'),(114,4,'hairdo.photo.iconosys.eng.OtherApps$1'),(115,6,'myballlerina.photo.iconosys.eng.OtherApps$6'),(116,4,'hairdo.photo.iconosys.eng.OtherApps$6');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'_who'),(2,15,'_who'),(3,18,'_who'),(4,47,'_who'),(5,29,'pick_photo'),(6,44,'_question'),(7,37,'_answer'),(8,23,'pick_photo'),(9,50,'_who'),(10,44,'_answer'),(11,51,'_who'),(12,45,'saved_uri'),(13,37,'_index'),(14,37,'_question'),(15,37,'_result'),(16,46,'saved_uri'),(17,31,'saved_uri'),(18,23,'take_photo'),(19,27,'pick_photo'),(20,29,'take_photo'),(21,27,'take_photo'),(22,34,'_who');
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'s',0,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,47,'a',0,NULL,NULL),(47,46,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,50,'a',0,NULL,NULL),(50,49,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'s',0,NULL,NULL),(54,54,'s',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'s',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,6),(2,2,1),(3,3,6),(4,4,2),(5,5,2),(6,6,6),(7,7,4),(8,8,6),(9,9,6),(10,10,13),(11,11,4),(12,12,13),(13,13,2),(14,14,21),(15,15,4),(16,16,17),(17,17,12),(18,18,2),(19,19,10),(20,20,1),(21,21,21),(22,22,10),(23,23,2),(24,25,12),(25,24,17),(26,26,6),(27,27,13),(28,28,21),(29,29,17),(30,30,9),(31,31,12),(32,32,17),(33,33,12),(34,34,21),(35,35,17),(36,36,21),(37,37,10),(38,38,16),(39,39,17),(40,40,12),(41,41,8),(42,42,10),(43,43,16),(44,44,10),(45,45,12),(46,46,8),(47,47,16),(48,48,9),(49,49,21),(50,50,26),(51,51,52),(52,51,33),(53,52,31),(54,53,49),(55,54,52),(56,54,33),(57,55,36),(58,56,29),(59,58,25),(60,57,37),(61,59,36),(62,60,25),(63,61,27),(64,62,49),(65,63,38),(66,64,24),(67,65,33),(68,65,52),(69,66,19),(70,67,27),(71,68,38),(72,69,49),(73,70,24),(74,71,26),(75,72,38),(76,73,52),(77,74,45),(78,75,23),(79,76,29),(80,77,24),(81,78,49),(82,80,23),(83,79,45),(84,81,52),(85,82,31),(86,83,27),(87,84,49),(88,85,30),(89,86,42),(90,87,19),(91,88,24),(92,89,23),(93,90,55),(94,91,19),(95,92,52),(96,92,33),(97,93,27),(98,94,25),(99,95,30),(100,96,55),(101,97,36),(102,98,19),(103,99,43),(104,100,52),(105,100,33),(106,102,19),(107,101,42),(108,103,38),(109,104,49),(110,105,31),(111,106,36),(112,108,46),(113,107,37),(114,109,23),(115,110,24),(116,111,25),(117,112,33),(118,112,52),(119,113,23),(120,114,29),(121,115,36),(122,116,26),(123,117,25),(124,118,37),(125,119,27),(126,120,23),(127,121,29),(128,122,36),(129,123,55),(130,124,25),(131,125,23),(132,126,33),(133,126,52),(134,127,42),(135,128,46),(136,129,19),(137,130,45),(138,131,29),(139,132,19),(140,133,43),(141,134,30),(142,135,38),(143,136,26),(144,137,29),(145,138,23),(146,139,29),(147,140,19),(148,141,43),(149,142,24),(150,143,26),(151,144,38),(152,145,24),(153,146,26),(154,147,27),(155,148,25),(156,149,27),(157,150,46),(158,151,24),(159,152,27),(160,153,25);
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
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,57,'<eng.trickersticks.timesseven.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(2,1,'<eng.trickersticks.timesseven.TrickerSticks: void onResume()>',18,'a',NULL),(3,58,'<eng.trickersticks.timesseven.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(4,2,'<eng.trickersticks.timesseven.GlowSticks: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(5,2,'<eng.trickersticks.timesseven.GlowSticks: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(6,59,'<eng.trickersticks.timesseven.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(7,60,'<eng.trickersticks.timesseven.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(8,61,'<eng.trickersticks.timesseven.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(9,62,'<eng.trickersticks.timesseven.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(10,13,'<eng.trickersticks.strangestfish.RegistrationScreen: void SendPhoneData()>',97,'s',NULL),(11,4,'<eng.trickersticks.timesseven.RegistrationScreen: void SendPhoneData()>',97,'s',NULL),(12,13,'<eng.trickersticks.strangestfish.RegistrationScreen: void SendAutoData()>',93,'s',NULL),(13,2,'<eng.trickersticks.timesseven.GlowSticks: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(14,63,'<recipe.halloween.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(15,4,'<eng.trickersticks.timesseven.RegistrationScreen: void SendAutoData()>',93,'s',NULL),(16,64,'<eng.trickersticks.strangestfish.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(17,12,'<recipe.halloween.iconosys.eng.GlowSticks: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(18,2,'<eng.trickersticks.timesseven.GlowSticks: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(19,10,'<eng.trickersticks.strangestfish.GlowSticks: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(20,1,'<eng.trickersticks.timesseven.TrickerSticks: void onResume()>',14,'a',NULL),(21,65,'<recipe.halloween.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(22,10,'<eng.trickersticks.strangestfish.GlowSticks: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(23,2,'<eng.trickersticks.timesseven.GlowSticks: void onCreate(android.os.Bundle)>',14,'a',NULL),(24,66,'<eng.trickersticks.strangestfish.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(25,12,'<recipe.halloween.iconosys.eng.GlowSticks: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(26,67,'<eng.trickersticks.timesseven.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(27,68,'<eng.trickersticks.strangestfish.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(28,69,'<recipe.halloween.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(29,70,'<eng.trickersticks.strangestfish.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(30,9,'<recipe.halloween.iconosys.eng.TrickerSticks: void onResume()>',18,'a',NULL),(31,12,'<recipe.halloween.iconosys.eng.GlowSticks: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(32,71,'<eng.trickersticks.strangestfish.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(33,12,'<recipe.halloween.iconosys.eng.GlowSticks: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(34,72,'<recipe.halloween.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(35,73,'<eng.trickersticks.strangestfish.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(36,74,'<recipe.halloween.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(37,10,'<eng.trickersticks.strangestfish.GlowSticks: void onCreate(android.os.Bundle)>',14,'a',NULL),(38,16,'<recipe.halloween.iconosys.eng.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(39,75,'<eng.trickersticks.strangestfish.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(40,76,'<recipe.halloween.iconosys.eng.GlowSticks$1: void onClick(android.view.View)>',6,'a',NULL),(41,8,'<eng.trickersticks.strangestfish.TrickerSticks: void onResume()>',18,'a',NULL),(42,10,'<eng.trickersticks.strangestfish.GlowSticks: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(43,77,'<recipe.halloween.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(44,10,'<eng.trickersticks.strangestfish.GlowSticks: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(45,12,'<recipe.halloween.iconosys.eng.GlowSticks: void onCreate(android.os.Bundle)>',21,'a',NULL),(46,8,'<eng.trickersticks.strangestfish.TrickerSticks: void onResume()>',14,'a',NULL),(47,16,'<recipe.halloween.iconosys.eng.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(48,9,'<recipe.halloween.iconosys.eng.TrickerSticks: void onResume()>',14,'a',NULL),(49,78,'<recipe.halloween.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(50,79,'<hairdo.photo.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(51,52,'<willobamawinin2012.iconosys.eng.IconosysActivity: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(52,31,'<hairdo.photo.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(53,80,'<willobamawinin2012.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(54,52,'<willobamawinin2012.iconosys.eng.IconosysActivity: void onActivityResult(int,int,android.content.Intent)>',32,'a',NULL),(55,81,'<soccer.photo.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(56,29,'<myballlerina.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',44,'a',NULL),(57,37,'<willobamawinin2012.iconosys.eng.PollNew: void onCreate(android.os.Bundle)>',50,'a',NULL),(58,25,'<myballlerina.photo.iconosys.eng.FrameIt: void onCreate(android.os.Bundle)>',19,'a',NULL),(59,82,'<soccer.photo.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(60,25,'<myballlerina.photo.iconosys.eng.FrameIt: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(61,27,'<soccer.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',6,'a',NULL),(62,83,'<willobamawinin2012.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(63,84,'<myballlerina.photo.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(64,24,'<soccer.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(65,52,'<willobamawinin2012.iconosys.eng.IconosysActivity: void onResume()>',17,'a',NULL),(66,19,'<hairdo.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(67,27,'<soccer.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(68,85,'<myballlerina.photo.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(69,86,'<willobamawinin2012.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(70,24,'<soccer.photo.iconosys.eng.MeInJail: void onCreate(android.os.Bundle)>',6,'a',NULL),(71,87,'<hairdo.photo.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(72,88,'<myballlerina.photo.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(73,52,'<willobamawinin2012.iconosys.eng.IconosysActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(74,45,'<soccer.photo.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(75,89,'<hairdo.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',9,'a',NULL),(76,29,'<myballlerina.photo.iconosys.eng.PhotoView: void onShareMultipleClicked()>',8,'a',NULL),(77,24,'<soccer.photo.iconosys.eng.MeInJail: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(78,90,'<willobamawinin2012.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(79,45,'<soccer.photo.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(80,23,'<hairdo.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(81,52,'<willobamawinin2012.iconosys.eng.IconosysActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(82,31,'<hairdo.photo.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(83,27,'<soccer.photo.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(84,91,'<willobamawinin2012.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(85,92,'<hairdo.photo.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(86,93,'<soccer.photo.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(87,19,'<hairdo.photo.iconosys.eng.MeInJail: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(88,94,'<soccer.photo.iconosys.eng.MeInJail$1: void onClick(android.view.View)>',7,'a',NULL),(89,23,'<hairdo.photo.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(90,55,'<willobamawinin2012.iconosys.eng.RegistrationScreen: void SendPhoneData()>',100,'s',NULL),(91,19,'<hairdo.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(92,33,'<willobamawinin2012.iconosys.eng.PollApp: void onActivityResult(int,int,android.content.Intent)>',25,'a',NULL),(93,95,'<soccer.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',23,'a',NULL),(94,96,'<myballlerina.photo.iconosys.eng.FrameIt$2: void onClick(android.view.View)>',7,'a',NULL),(95,30,'<hairdo.photo.iconosys.eng.RegistrationScreen: void SendPhoneData()>',93,'s',NULL),(96,55,'<willobamawinin2012.iconosys.eng.RegistrationScreen: void SendAutoData()>',106,'s',NULL),(97,97,'<soccer.photo.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(98,19,'<hairdo.photo.iconosys.eng.MeInJail: void onResume()>',14,'a',NULL),(99,98,'<myballlerina.photo.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(100,33,'<willobamawinin2012.iconosys.eng.PollApp: void onActivityResult(int,int,android.content.Intent)>',17,'a',NULL),(101,42,'<soccer.photo.iconosys.eng.RegistrationScreen: void SendPhoneData()>',93,'s',NULL),(102,19,'<hairdo.photo.iconosys.eng.MeInJail: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(103,99,'<myballlerina.photo.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(104,100,'<willobamawinin2012.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(105,31,'<hairdo.photo.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(106,101,'<soccer.photo.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(107,37,'<willobamawinin2012.iconosys.eng.PollNew: void onCreate(android.os.Bundle)>',88,'a',NULL),(108,47,'<myballlerina.photo.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(109,23,'<hairdo.photo.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(110,102,'<soccer.photo.iconosys.eng.MeInJail$2: void onClick(android.view.View)>',7,'a',NULL),(111,25,'<myballlerina.photo.iconosys.eng.FrameIt: void onResume()>',14,'a',NULL),(112,103,'<willobamawinin2012.iconosys.eng.PollApp$1: void onClick(android.view.View)>',16,'a',NULL),(113,23,'<hairdo.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',6,'a',NULL),(114,29,'<myballlerina.photo.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(115,104,'<soccer.photo.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(116,105,'<hairdo.photo.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(117,25,'<myballlerina.photo.iconosys.eng.FrameIt: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(118,37,'<willobamawinin2012.iconosys.eng.PollNew: void onCreate(android.os.Bundle)>',76,'a',NULL),(119,27,'<soccer.photo.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(120,23,'<hairdo.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(121,29,'<myballlerina.photo.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(122,106,'<soccer.photo.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(123,107,'<willobamawinin2012.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(124,108,'<myballlerina.photo.iconosys.eng.FrameIt$1: void onClick(android.view.View)>',7,'a',NULL),(125,89,'<hairdo.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',23,'a',NULL),(126,52,'<willobamawinin2012.iconosys.eng.IconosysActivity: void onActivityResult(int,int,android.content.Intent)>',11,'p',0),(127,42,'<soccer.photo.iconosys.eng.RegistrationScreen: void SendAutoData()>',89,'s',NULL),(128,47,'<myballlerina.photo.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(129,109,'<hairdo.photo.iconosys.eng.MeInJail$1: void onClick(android.view.View)>',7,'a',NULL),(130,45,'<soccer.photo.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(131,110,'<myballlerina.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',78,'a',NULL),(132,19,'<hairdo.photo.iconosys.eng.MeInJail: void onCreate(android.os.Bundle)>',6,'a',NULL),(133,43,'<myballlerina.photo.iconosys.eng.RegistrationScreen: void SendPhoneData()>',93,'s',NULL),(134,30,'<hairdo.photo.iconosys.eng.RegistrationScreen: void SendAutoData()>',89,'s',NULL),(135,111,'<myballlerina.photo.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(136,112,'<hairdo.photo.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(137,29,'<myballlerina.photo.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(138,23,'<hairdo.photo.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(139,29,'<myballlerina.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',34,'a',NULL),(140,113,'<hairdo.photo.iconosys.eng.MeInJail$2: void onClick(android.view.View)>',7,'a',NULL),(141,43,'<myballlerina.photo.iconosys.eng.RegistrationScreen: void SendAutoData()>',89,'s',NULL),(142,24,'<soccer.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(143,114,'<hairdo.photo.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(144,115,'<myballlerina.photo.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(145,24,'<soccer.photo.iconosys.eng.MeInJail: void onResume()>',14,'a',NULL),(146,116,'<hairdo.photo.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(147,27,'<soccer.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(148,25,'<myballlerina.photo.iconosys.eng.FrameIt: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(149,27,'<soccer.photo.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(150,47,'<myballlerina.photo.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(151,24,'<soccer.photo.iconosys.eng.MeInJail: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(152,95,'<soccer.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',9,'a',NULL),(153,25,'<myballlerina.photo.iconosys.eng.FrameIt: void onActivityResult(int,int,android.content.Intent)>',10,'p',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,3),(2,3,3),(3,5,4),(4,6,3),(5,8,3),(6,9,3),(7,13,3),(8,15,3),(9,19,3),(10,22,4),(11,21,3),(12,23,3),(13,25,3),(14,26,3),(15,28,3),(16,29,3),(17,30,3),(18,31,3),(19,34,3),(20,35,3),(21,38,4),(22,43,3),(23,44,3),(24,45,5),(25,46,3),(26,47,5),(27,48,5),(28,50,3),(29,52,5),(30,55,5),(31,56,3),(32,57,5),(33,60,5),(34,61,3),(35,62,5),(36,63,3),(37,64,4),(38,66,4),(39,68,3),(40,69,3),(41,71,3),(42,72,3),(43,76,5),(44,77,3),(45,78,5),(46,81,5),(47,82,4),(48,84,5),(49,85,6),(50,86,5),(51,87,3),(52,90,5),(53,91,5),(54,93,6),(55,95,5),(56,102,3),(57,107,3),(58,108,3),(59,110,3),(60,113,7),(61,118,7),(62,119,3),(63,120,3),(64,123,3),(65,130,5),(66,132,5),(67,134,5),(68,136,5),(69,138,5),(70,139,3),(71,140,3),(72,141,5),(73,142,6),(74,143,5),(75,144,5),(76,149,3),(77,150,3),(78,152,3),(79,154,4),(80,155,7),(81,156,5),(82,157,5),(83,158,5),(84,160,5),(85,161,5),(86,162,5),(87,163,5),(88,164,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'eng/trickersticks/timesseven/GlowSticks'),(2,4,'eng/trickersticks/timesseven/OtherApps'),(3,7,'eng/trickersticks/timesseven/ShowTerms'),(4,10,'eng/trickersticks/strangestfish/LocationSender'),(5,11,'eng/trickersticks/timesseven/LocationSender'),(6,12,'eng/trickersticks/strangestfish/LocationSender'),(7,14,'eng/trickersticks/timesseven/LocationSender'),(8,16,'recipe/halloween/iconosys/eng/OtherApps'),(9,17,'eng/trickersticks/strangestfish/OtherApps'),(10,18,'eng/trickersticks/timesseven/RegistrationScreen'),(11,20,'eng/trickersticks/timesseven/AdView'),(12,24,'eng/trickersticks/strangestfish/ShowTerms'),(13,27,'recipe/halloween/iconosys/eng/GlowSticks'),(14,32,'eng/trickersticks/strangestfish/AdView'),(15,33,'recipe/halloween/iconosys/eng/LocationSender'),(16,36,'eng/trickersticks/strangestfish/GlowSticks'),(17,37,'recipe/halloween/iconosys/eng/ShowTerms'),(18,39,'recipe/halloween/iconosys/eng/AdView'),(19,40,'eng/trickersticks/strangestfish/RegistrationScreen'),(20,41,'recipe/halloween/iconosys/eng/LocationSender'),(21,42,'recipe/halloween/iconosys/eng/RegistrationScreen'),(22,49,'willobamawinin2012/iconosys/eng/RegistrationScreen'),(23,51,'myballlerina/photo/iconosys/eng/FrameIt'),(24,53,'myballlerina/photo/iconosys/eng/AdView'),(25,54,'willobamawinin2012/iconosys/eng/PollResult'),(26,58,'myballlerina/photo/iconosys/eng/OtherApps'),(27,59,'soccer/photo/iconosys/eng/ShowPopUp'),(28,65,'willobamawinin2012/iconosys/eng/RegistrationScreen'),(29,67,'soccer/photo/iconosys/eng/MeInJail'),(30,70,'soccer/photo/iconosys/eng/AdView'),(31,73,'willobamawinin2012/iconosys/eng/OtherApps'),(32,74,'soccer/photo/iconosys/eng/AdView'),(33,75,'hairdo/photo/iconosys/eng/ShowPopUp'),(34,79,'hairdo/photo/iconosys/eng/MeInJail'),(35,80,'soccer/photo/iconosys/eng/OtherApps'),(36,83,'hairdo/photo/iconosys/eng/AdView'),(37,88,'hairdo/photo/iconosys/eng/ShowTerms'),(38,89,'soccer/photo/iconosys/eng/ShowTerms'),(39,92,'soccer/photo/iconosys/eng/PhotoView'),(40,94,'willobamawinin2012/iconosys/eng/LocationSender'),(41,96,'hairdo/photo/iconosys/eng/OtherApps'),(42,97,'willobamawinin2012/iconosys/eng/AdView'),(43,98,'soccer/photo/iconosys/eng/ShareImage'),(44,99,'myballlerina/photo/iconosys/eng/PhotoView'),(45,100,'hairdo/photo/iconosys/eng/LocationSender'),(46,101,'willobamawinin2012/iconosys/eng/LocationSender'),(47,103,'hairdo/photo/iconosys/eng/RegistrationScreen'),(48,104,'myballlerina/photo/iconosys/eng/ShowTerms'),(49,105,'willobamawinin2012/iconosys/eng/PollResult'),(50,106,'soccer/photo/iconosys/eng/LocationSender'),(51,109,'hairdo/photo/iconosys/eng/OtherApps'),(52,111,'myballlerina/photo/iconosys/eng/AdView'),(53,112,'willobamawinin2012/iconosys/eng/AdView'),(54,115,'myballlerina/photo/iconosys/eng/RegistrationScreen'),(55,114,'soccer/photo/iconosys/eng/PhotoView'),(56,117,'hairdo/photo/iconosys/eng/ShowPopUp'),(57,116,'willobamawinin2012/iconosys/eng/PollNew'),(58,121,'willobamawinin2012/iconosys/eng/AdView'),(59,122,'hairdo/photo/iconosys/eng/OtherApps'),(60,124,'willobamawinin2012/iconosys/eng/ShowTerms'),(61,125,'myballlerina/photo/iconosys/eng/PhotoView'),(62,127,'soccer/photo/iconosys/eng/LocationSender'),(63,126,'hairdo/photo/iconosys/eng/ShareImage'),(64,128,'myballlerina/photo/iconosys/eng/OtherApps'),(65,129,'hairdo/photo/iconosys/eng/PhotoView'),(66,131,'myballlerina/photo/iconosys/eng/ShareImage'),(67,133,'hairdo/photo/iconosys/eng/AdView'),(68,135,'myballlerina/photo/iconosys/eng/LocationSender'),(69,137,'hairdo/photo/iconosys/eng/LocationSender'),(70,145,'myballlerina/photo/iconosys/eng/OtherApps'),(71,146,'hairdo/photo/iconosys/eng/PhotoView'),(72,147,'myballlerina/photo/iconosys/eng/LocationSender'),(73,148,'soccer/photo/iconosys/eng/OtherApps'),(74,151,'soccer/photo/iconosys/eng/RegistrationScreen'),(75,153,'soccer/photo/iconosys/eng/OtherApps'),(76,159,'soccer/photo/iconosys/eng/ShowPopUp');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,3,2),(3,5,3),(4,6,4),(5,8,5),(6,9,6),(7,13,8),(8,15,9),(9,19,11),(10,21,12),(11,22,13),(12,23,14),(13,25,15),(14,26,16),(15,28,18),(16,29,19),(17,30,20),(18,31,21),(19,34,22),(20,35,23),(21,38,24),(22,43,25),(23,44,26),(24,46,28),(25,50,29),(26,56,30),(27,61,31),(28,63,32),(29,64,33),(30,66,34),(31,68,35),(32,69,36),(33,71,37),(34,72,38),(35,77,39),(36,82,40),(37,87,41),(38,102,42),(39,107,44),(40,108,45),(41,110,46),(42,119,47),(43,120,48),(44,123,50),(45,139,51),(46,140,52),(47,149,53),(48,150,54),(49,152,55),(50,154,56);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,45,'android.intent.extra.INTENT'),(2,47,'android.intent.extra.INTENT'),(3,48,'android.intent.extra.TITLE'),(4,48,'android.intent.extra.INTENT'),(5,52,'android.intent.extra.INTENT'),(6,54,'_answer'),(7,54,'_question'),(8,55,'android.intent.extra.TITLE'),(9,55,'android.intent.extra.INTENT'),(10,57,'android.intent.extra.INTENT'),(11,60,'android.intent.extra.TITLE'),(12,60,'android.intent.extra.INTENT'),(13,62,'android.intent.extra.TITLE'),(14,62,'android.intent.extra.INTENT'),(15,76,'android.intent.extra.INTENT'),(16,78,'android.intent.extra.INTENT'),(17,81,'android.intent.extra.TITLE'),(18,81,'android.intent.extra.INTENT'),(19,84,'android.intent.extra.INTENT'),(20,86,'android.intent.extra.TITLE'),(21,86,'android.intent.extra.INTENT'),(22,90,'android.intent.extra.INTENT'),(23,91,'android.intent.extra.TITLE'),(24,91,'android.intent.extra.INTENT'),(25,92,'take_photo'),(26,95,'android.intent.extra.TITLE'),(27,95,'android.intent.extra.INTENT'),(28,98,'saved_uri'),(29,99,'pick_photo'),(30,113,'output'),(31,114,'pick_photo'),(32,116,'_question'),(33,116,'_answer'),(34,116,'_index'),(35,116,'_result'),(36,118,'output'),(37,125,'take_photo'),(38,126,'saved_uri'),(39,129,'take_photo'),(40,131,'saved_uri'),(41,130,'android.intent.extra.INTENT'),(42,132,'android.intent.extra.INTENT'),(43,134,'android.intent.extra.TITLE'),(44,134,'android.intent.extra.INTENT'),(45,136,'android.intent.extra.INTENT'),(46,138,'android.intent.extra.TITLE'),(47,138,'android.intent.extra.INTENT'),(48,141,'android.intent.extra.INTENT'),(49,143,'android.intent.extra.TITLE'),(50,143,'android.intent.extra.INTENT'),(51,144,'android.intent.extra.TITLE'),(52,146,'pick_photo'),(53,144,'android.intent.extra.INTENT'),(54,155,'output'),(55,156,'android.intent.extra.INTENT'),(56,157,'android.intent.extra.INTENT'),(57,158,'android.intent.extra.TITLE'),(58,158,'android.intent.extra.INTENT'),(59,160,'android.intent.extra.INTENT'),(60,161,'android.intent.extra.TITLE'),(61,161,'android.intent.extra.INTENT'),(62,162,'android.intent.extra.INTENT'),(63,163,'android.intent.extra.TITLE'),(64,163,'android.intent.extra.INTENT'),(65,164,'android.intent.extra.TITLE'),(66,164,'android.intent.extra.INTENT');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,2),(6,6,1),(7,7,1),(8,8,2),(9,9,2),(10,10,1);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,2),(6,6,1),(7,7,1),(8,8,2),(9,9,2),(10,10,1);
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
INSERT INTO `IFData` VALUES (1,5,'sms',NULL,NULL,NULL,NULL,NULL),(2,5,'mms',NULL,NULL,NULL,NULL,NULL),(3,5,'mmsto',NULL,NULL,NULL,NULL,NULL),(4,5,NULL,NULL,NULL,NULL,'image','*'),(5,5,NULL,NULL,NULL,NULL,'video','*'),(6,5,NULL,NULL,NULL,NULL,'audio','*'),(7,8,'sms',NULL,NULL,NULL,NULL,NULL),(8,8,'mms',NULL,NULL,NULL,NULL,NULL),(9,9,'sms',NULL,NULL,NULL,NULL,NULL),(10,8,'mmsto',NULL,NULL,NULL,NULL,NULL),(11,9,'mms',NULL,NULL,NULL,NULL,NULL),(12,8,NULL,NULL,NULL,NULL,'image','*'),(13,9,'mmsto',NULL,NULL,NULL,NULL,NULL),(14,8,NULL,NULL,NULL,NULL,'video','*'),(15,9,NULL,NULL,NULL,NULL,'image','*'),(16,8,NULL,NULL,NULL,NULL,'audio','*'),(17,9,NULL,NULL,NULL,NULL,'video','*'),(18,9,NULL,NULL,NULL,NULL,'audio','*');
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
INSERT INTO `IMimeTypes` VALUES (1,85,'image','*'),(2,93,'image','*'),(3,142,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'eng.trickersticks.timesseven'),(2,4,'eng.trickersticks.timesseven'),(3,7,'eng.trickersticks.timesseven'),(4,10,'eng.trickersticks.strangestfish'),(5,11,'eng.trickersticks.timesseven'),(6,12,'eng.trickersticks.strangestfish'),(7,14,'eng.trickersticks.timesseven'),(8,16,'recipe.halloween.iconosys.eng'),(9,17,'eng.trickersticks.strangestfish'),(10,18,'eng.trickersticks.timesseven'),(11,20,'eng.trickersticks.timesseven'),(12,24,'eng.trickersticks.strangestfish'),(13,27,'recipe.halloween.iconosys.eng'),(14,32,'eng.trickersticks.strangestfish'),(15,33,'recipe.halloween.iconosys.eng'),(16,36,'eng.trickersticks.strangestfish'),(17,37,'recipe.halloween.iconosys.eng'),(18,39,'recipe.halloween.iconosys.eng'),(19,40,'eng.trickersticks.strangestfish'),(20,41,'recipe.halloween.iconosys.eng'),(21,42,'recipe.halloween.iconosys.eng'),(22,49,'willobamawinin2012.iconosys.eng'),(23,51,'myballlerina.photo.iconosys.eng'),(24,53,'myballlerina.photo.iconosys.eng'),(25,54,'willobamawinin2012.iconosys.eng'),(26,58,'myballlerina.photo.iconosys.eng'),(27,59,'soccer.photo.iconosys.eng'),(28,65,'willobamawinin2012.iconosys.eng'),(29,67,'soccer.photo.iconosys.eng'),(30,70,'soccer.photo.iconosys.eng'),(31,73,'willobamawinin2012.iconosys.eng'),(32,74,'soccer.photo.iconosys.eng'),(33,75,'hairdo.photo.iconosys.eng'),(34,79,'hairdo.photo.iconosys.eng'),(35,80,'soccer.photo.iconosys.eng'),(36,83,'hairdo.photo.iconosys.eng'),(37,88,'hairdo.photo.iconosys.eng'),(38,89,'soccer.photo.iconosys.eng'),(39,92,'soccer.photo.iconosys.eng'),(40,94,'willobamawinin2012.iconosys.eng'),(41,96,'hairdo.photo.iconosys.eng'),(42,97,'willobamawinin2012.iconosys.eng'),(43,98,'soccer.photo.iconosys.eng'),(44,99,'myballlerina.photo.iconosys.eng'),(45,100,'hairdo.photo.iconosys.eng'),(46,101,'willobamawinin2012.iconosys.eng'),(47,103,'hairdo.photo.iconosys.eng'),(48,104,'myballlerina.photo.iconosys.eng'),(49,105,'willobamawinin2012.iconosys.eng'),(50,106,'soccer.photo.iconosys.eng'),(51,109,'hairdo.photo.iconosys.eng'),(52,111,'myballlerina.photo.iconosys.eng'),(53,112,'willobamawinin2012.iconosys.eng'),(54,115,'myballlerina.photo.iconosys.eng'),(55,114,'soccer.photo.iconosys.eng'),(56,117,'hairdo.photo.iconosys.eng'),(57,116,'willobamawinin2012.iconosys.eng'),(58,121,'willobamawinin2012.iconosys.eng'),(59,122,'hairdo.photo.iconosys.eng'),(60,124,'willobamawinin2012.iconosys.eng'),(61,125,'myballlerina.photo.iconosys.eng'),(62,126,'hairdo.photo.iconosys.eng'),(63,127,'soccer.photo.iconosys.eng'),(64,128,'myballlerina.photo.iconosys.eng'),(65,129,'hairdo.photo.iconosys.eng'),(66,131,'myballlerina.photo.iconosys.eng'),(67,133,'hairdo.photo.iconosys.eng'),(68,135,'myballlerina.photo.iconosys.eng'),(69,137,'hairdo.photo.iconosys.eng'),(70,145,'myballlerina.photo.iconosys.eng'),(71,146,'hairdo.photo.iconosys.eng'),(72,147,'myballlerina.photo.iconosys.eng'),(73,148,'soccer.photo.iconosys.eng'),(74,151,'soccer.photo.iconosys.eng'),(75,153,'soccer.photo.iconosys.eng'),(76,159,'soccer.photo.iconosys.eng');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,8,0),(3,9,0),(4,19,0),(5,23,0),(6,24,0),(7,25,0),(8,27,0),(9,29,0),(10,33,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,1,0),(4,4,0,0),(5,5,1,0),(6,6,1,0),(7,7,0,0),(8,8,1,0),(9,9,1,0),(10,10,0,0),(11,11,0,0),(12,12,0,0),(13,14,1,0),(14,15,0,0),(15,16,1,0),(16,17,0,0),(17,19,0,0),(18,20,0,0),(19,21,1,0),(20,23,0,0),(21,24,1,0),(22,25,1,0),(23,26,1,0),(24,27,0,0),(25,28,1,0),(26,29,1,0),(27,30,0,0),(28,32,1,0),(29,34,1,0),(30,35,1,0),(31,36,1,0),(32,37,0,0),(33,38,0,0),(34,39,1,0),(35,40,1,0),(36,41,0,0),(37,43,0,0),(38,44,1,0),(39,45,0,0),(40,46,0,0),(41,47,0,0),(42,48,0,0),(43,49,1,0),(44,50,1,0),(45,52,1,0),(46,53,1,0),(47,52,1,0),(48,52,1,0),(49,54,0,0),(50,55,1,0),(51,56,0,0),(52,52,1,0),(53,58,0,0),(54,57,0,0),(55,52,1,0),(56,59,1,0),(57,52,1,0),(58,60,0,0),(59,61,0,0),(60,52,1,0),(61,62,1,0),(62,52,1,0),(63,63,1,0),(64,64,1,0),(65,65,0,0),(66,66,1,0),(67,67,0,0),(68,68,1,0),(69,69,1,0),(70,70,0,0),(71,71,1,0),(72,72,1,0),(73,73,0,0),(74,74,0,0),(75,75,0,0),(76,76,1,0),(77,78,1,0),(78,76,1,0),(79,80,0,0),(80,79,0,0),(81,76,1,0),(82,81,1,0),(83,82,0,0),(84,76,1,0),(85,83,1,0),(86,76,1,0),(87,84,1,0),(88,85,0,0),(89,86,0,0),(90,76,1,0),(91,76,1,0),(92,88,0,0),(93,89,1,0),(94,90,0,0),(95,76,1,0),(96,91,0,0),(97,92,0,0),(98,93,0,0),(99,94,0,0),(100,95,0,0),(101,96,0,0),(102,97,1,0),(103,98,0,0),(104,99,0,0),(105,100,0,0),(106,101,0,0),(107,104,1,0),(108,103,1,0),(109,105,0,0),(110,106,1,0),(111,108,0,0),(112,107,0,0),(113,109,1,0),(114,110,0,0),(115,111,0,0),(116,112,0,0),(117,113,0,0),(118,114,1,0),(119,115,1,0),(120,116,1,0),(121,118,0,0),(122,120,0,0),(123,122,1,0),(124,123,0,0),(125,124,0,0),(126,125,0,0),(127,127,0,0),(128,128,0,0),(129,129,0,0),(130,130,1,0),(131,131,0,0),(132,130,1,0),(133,132,0,0),(134,130,1,0),(135,133,0,0),(136,130,1,0),(137,134,0,0),(138,130,1,0),(139,135,1,0),(140,136,1,0),(141,130,1,0),(142,137,1,0),(143,130,1,0),(144,130,1,0),(145,139,0,0),(146,140,0,0),(147,141,0,0),(148,142,0,0),(149,143,1,0),(150,144,1,0),(151,145,0,0),(152,146,1,0),(153,147,0,0),(154,148,1,0),(155,149,1,0),(156,150,1,0),(157,150,1,0),(158,150,1,0),(159,152,0,0),(160,150,1,0),(161,150,1,0),(162,150,1,0),(163,150,1,0),(164,150,1,0);
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
INSERT INTO `PermissionStrings` VALUES (8,'android.permission.ACCESS_COARSE_LOCATION'),(6,'android.permission.ACCESS_FINE_LOCATION'),(12,'android.permission.CAMERA'),(10,'android.permission.GET_ACCOUNTS'),(4,'android.permission.INTERNET'),(9,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(2,'android.permission.READ_SMS'),(3,'android.permission.SEND_SMS'),(11,'android.permission.WAKE_LOCK'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(7,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(2,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(3,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(4,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(5,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(6,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(7,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(8,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(9,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(10,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(11,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(12,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(13,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(14,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(15,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(16,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(17,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(18,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(19,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(20,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(21,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(22,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(23,NULL,NULL,'http://advertise.iconosys.com',NULL,NULL,NULL),(24,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(25,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(26,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(27,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(28,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(29,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(30,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(31,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(32,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(33,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(34,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(35,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(36,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(37,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(38,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(39,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(40,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(41,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(42,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(43,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(44,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(45,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(46,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(47,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(48,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(49,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(50,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(51,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(52,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(53,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(54,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(55,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(56,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(57,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,13,7),(2,22,10),(3,31,17),(4,51,27),(5,102,43),(6,117,49),(7,151,57);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,2,1),(13,2,2),(14,2,3),(15,3,1),(16,2,4),(17,3,2),(18,2,5),(19,3,3),(20,3,4),(21,2,6),(22,2,7),(23,3,5),(24,2,8),(25,3,6),(26,2,9),(27,3,7),(28,2,10),(29,3,8),(30,2,11),(31,3,9),(32,3,10),(33,3,11),(34,4,1),(35,4,2),(36,4,3),(37,4,4),(38,4,5),(39,4,6),(40,4,7),(41,4,8),(42,4,9),(43,4,10),(44,4,11),(45,4,12),(46,5,1),(47,5,2),(48,6,1),(49,5,3),(50,6,2),(51,5,4),(52,6,3),(53,5,5),(54,6,4),(55,5,6),(56,6,5),(57,5,7),(58,6,6),(59,5,8),(60,6,7),(61,5,9),(62,6,8),(63,5,10),(64,6,9),(65,5,11),(66,6,10),(67,5,12),(68,6,11),(69,6,12),(70,7,1),(71,7,3),(72,7,4),(73,7,5),(74,7,6),(75,7,8),(76,7,9),(77,7,10),(78,7,11);
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
