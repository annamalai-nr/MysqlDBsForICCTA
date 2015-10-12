-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_494
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
INSERT INTO `ActionStrings` VALUES (1,'android.intent.action.MAIN'),(5,'android.intent.action.SEND'),(3,'android.intent.action.SENDTO'),(4,'android.intent.action.VIEW'),(2,'android.provider.Telephony.SMS_RECEIVED'),(6,'android.settings.WIFI_SETTINGS'),(7,'com.eoemobile.apps.eWallpaper.SEARCH_ACTION');
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
INSERT INTO `Applications` VALUES (1,'QueiD9ej.ezahS1gi',1),(2,'com.xeetj.voouoh',2),(3,'com.ysler.wps.mountain',120),(4,'com.ysler.wps.lotus',120),(5,'com.ysler.wps.bleach',120),(6,'com.ysler.wps.patterns',121),(7,'com.jackeey.eWallpapers.disney',450);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'QueiD9ej.ezahS1gi.App'),(2,3,'com.ysler.wps.base.Main'),(3,4,'com.ysler.wps.base.Main'),(4,2,'com.xeetj.voouoh.UaNohTh'),(5,2,'com.xeetj.voouoh.Quithae'),(6,6,'com.ysler.wps.base.Main'),(7,5,'com.ysler.wps.base.Main'),(8,7,'com.jackeey.eWallpapers.disney.Wallpapers'),(9,7,'com.jackeey.eWallpapers.disney.CategoriesActivity'),(10,7,'com.jackeey.eWallpapers.disney.CategoryPreViewActivity'),(11,7,'com.jackeey.eWallpapers.disney.GalleryActivity'),(12,7,'com.jackeey.eWallpapers.disney.ShowSDPhotoActivity'),(13,7,'com.jackeey.eWallpapers.disney.SeachTagsActivity'),(14,7,'com.jackeey.eWallpapers.disney.SearchResultsPreViewActivity'),(15,5,'com.ysler.wps.base.Main$10'),(16,7,'com.jackeey.eWallpapers.disney.SearchResultsActivity'),(17,7,'com.jackeey.eWallpapers.disney.ShowPhotoActivity'),(18,4,'com.ysler.wps.base.Main$10'),(19,7,'com.jackeey.eWallpapers.disney.UpdateActivity'),(20,3,'com.ysler.wps.base.Main$10'),(21,7,'com.jackeey.eWallpapers.disney.SyncDeviceInfosService'),(22,6,'com.ysler.wps.base.Main$10'),(23,5,'com.ysler.wps.base.Main$9'),(24,4,'com.ysler.wps.base.Main$9'),(25,3,'com.ysler.wps.base.Main$9'),(26,6,'com.ysler.wps.base.Main$9'),(27,7,'com.jackeey.eWallpapers.disney.Wallpapers$6'),(28,7,'com.jackeey.eWallpapers.disney.Wallpapers$4'),(29,7,'com.jackeey.eWallpapers.disney.SearchResultsPreViewActivity$5'),(30,7,'com.jackeey.eWallpapers.disney.CategoryPreViewActivity$3'),(31,7,'com.jackeey.eWallpapers.disney.GalleryActivity$2'),(32,7,'com.jackeey.eWallpapers.disney.Wallpapers$9'),(33,7,'com.jackeey.eWallpapers.disney.CategoryPreViewActivity$4'),(34,7,'com.jackeey.eWallpapers.disney.CategoriesActivity$3'),(35,7,'com.jackeey.eWallpapers.disney.SeachTagsActivity$1'),(36,7,'com.jackeey.eWallpapers.disney.Wallpapers$8'),(37,7,'com.jackeey.eWallpapers.disney.GalleryActivity$3'),(38,7,'com.jackeey.eWallpapers.disney.Wallpapers$5'),(39,7,'com.jackeey.eWallpapers.disney.SearchResultsPreViewActivity$4'),(40,7,'com.jackeey.eWallpapers.disney.SearchResultsPreViewActivity$3'),(41,7,'com.jackeey.eWallpapers.disney.CategoryPreViewActivity$5'),(42,7,'com.jackeey.eWallpapers.disney.Wallpapers$3');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'pdus'),(2,16,'com.eoemobile.apps.eWallpaper.type'),(3,15,'com.eoemobile.apps.eWallpaper.SEARCH_KEYWORD'),(4,10,'com.eoemobile.apps.eWallpaper.category'),(5,16,'com.eoemobile.action.COMEFROM_CATEGORYPREVIEW'),(6,14,'com.eoemobile.apps.eWallpaper.SEARCH_KEYWORD'),(7,16,'com.eoemobile.apps.eWallpaper.category'),(8,17,'update_url'),(9,16,'com.eoemobile.action.COMEFROM_WALLPAPERS');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,3,'a',1,NULL,NULL),(3,2,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,7,'a',1,NULL,NULL),(7,6,'a',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,16,'a',0,NULL,NULL),(16,17,'a',0,NULL,NULL),(17,19,'a',0,NULL,NULL),(18,21,'s',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,3,3),(3,2,7),(4,4,6),(5,5,2),(6,7,6),(7,6,7),(8,8,3),(9,9,2),(10,11,6),(11,10,3),(12,12,7),(13,13,2),(14,14,3),(15,15,6),(16,16,7),(17,17,2),(18,18,3),(19,19,6),(20,20,7),(21,21,10),(22,22,9),(23,23,12),(24,24,9),(25,25,15),(26,26,14),(27,27,15),(28,28,8),(29,28,10),(30,28,16),(31,28,15),(32,28,12),(33,28,11),(34,28,14),(35,29,16),(36,30,10),(37,31,16),(38,31,14),(39,31,15),(40,31,12),(41,31,11),(42,31,10),(43,31,8),(44,32,15),(45,32,16),(46,32,12),(47,32,11),(48,32,14),(49,32,8),(50,32,10),(51,33,8),(52,34,11),(53,35,8),(54,35,10),(55,35,11),(56,35,12),(57,35,14),(58,35,15),(59,35,16),(60,36,8),(61,37,14),(62,38,15),(63,39,12),(64,40,16),(65,40,15),(66,40,10),(67,40,8),(68,40,14),(69,40,12),(70,40,11),(71,41,16),(72,41,12),(73,41,15),(74,41,14),(75,41,8),(76,41,11),(77,41,10),(78,42,16),(79,43,11),(80,44,11),(81,44,12),(82,44,14),(83,44,15),(84,44,16),(85,44,10),(86,44,8),(87,45,8),(88,46,13),(89,47,12),(90,48,10),(91,48,8),(92,48,14),(93,48,11),(94,48,12),(95,48,16),(96,48,15),(97,49,16),(98,50,9),(99,51,14),(100,51,15),(101,51,16),(102,51,10),(103,51,11),(104,51,12),(105,51,13),(106,51,8),(107,52,8),(108,53,11),(109,53,10),(110,53,8),(111,53,16),(112,53,15),(113,53,14),(114,53,12),(115,54,8),(116,54,10),(117,54,12),(118,54,11),(119,54,14),(120,54,16),(121,54,15),(122,55,8),(123,55,12),(124,55,11),(125,55,10),(126,55,16),(127,55,15),(128,55,14),(129,56,8),(130,57,8),(131,58,8),(132,59,11),(133,60,8),(134,61,16),(135,61,12),(136,61,15),(137,61,14),(138,61,8),(139,61,10),(140,61,11),(141,62,16),(142,62,15),(143,62,14),(144,62,8),(145,62,11),(146,62,12),(147,62,10),(148,63,14),(149,64,14),(150,64,12),(151,64,11),(152,64,10),(153,64,8),(154,64,15),(155,64,16),(156,65,13),(157,66,10),(158,67,11),(159,67,10),(160,67,12),(161,67,15),(162,67,14),(163,67,16),(164,67,8),(165,68,11),(166,68,12),(167,68,14),(168,68,15),(169,68,16),(170,68,8),(171,68,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,3,'<com.ysler.wps.base.Main: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(2,6,'<com.ysler.wps.base.Main: void doShareBySMS(java.lang.String)>',24,'a',NULL),(3,2,'<com.ysler.wps.base.Main: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(4,15,'<com.ysler.wps.base.Main$10: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(5,18,'<com.ysler.wps.base.Main$10: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(6,6,'<com.ysler.wps.base.Main: void doShareByEmail(java.lang.String)>',10,'a',NULL),(7,7,'<com.ysler.wps.base.Main: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(8,20,'<com.ysler.wps.base.Main$10: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(9,3,'<com.ysler.wps.base.Main: void doShareBySMS(java.lang.String)>',24,'a',NULL),(10,2,'<com.ysler.wps.base.Main: void doShareBySMS(java.lang.String)>',24,'a',NULL),(11,7,'<com.ysler.wps.base.Main: void doShareByEmail(java.lang.String)>',10,'a',NULL),(12,22,'<com.ysler.wps.base.Main$10: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(13,3,'<com.ysler.wps.base.Main: void doShareByEmail(java.lang.String)>',10,'a',NULL),(14,2,'<com.ysler.wps.base.Main: void doShareByEmail(java.lang.String)>',10,'a',NULL),(15,23,'<com.ysler.wps.base.Main$9: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(16,6,'<com.ysler.wps.base.Main: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(17,24,'<com.ysler.wps.base.Main$9: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(18,25,'<com.ysler.wps.base.Main$9: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(19,7,'<com.ysler.wps.base.Main: void doShareBySMS(java.lang.String)>',24,'a',NULL),(20,26,'<com.ysler.wps.base.Main$9: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(21,10,'<com.jackeey.eWallpapers.disney.CategoryPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(22,9,'<com.jackeey.eWallpapers.disney.CategoriesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(23,12,'<com.jackeey.eWallpapers.disney.ShowSDPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(24,9,'<com.jackeey.eWallpapers.disney.CategoriesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(25,16,'<com.jackeey.eWallpapers.disney.SearchResultsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(26,14,'<com.jackeey.eWallpapers.disney.SearchResultsPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(27,16,'<com.jackeey.eWallpapers.disney.SearchResultsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(28,27,'<com.jackeey.eWallpapers.disney.Wallpapers$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(29,17,'<com.jackeey.eWallpapers.disney.ShowPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(30,10,'<com.jackeey.eWallpapers.disney.CategoryPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(31,17,'<com.jackeey.eWallpapers.disney.ShowPhotoActivity: void doShareByEmail()>',9,'a',NULL),(32,28,'<com.jackeey.eWallpapers.disney.Wallpapers$4: void onClick(android.view.View)>',9,'a',NULL),(33,8,'<com.jackeey.eWallpapers.disney.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(34,11,'<com.jackeey.eWallpapers.disney.GalleryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(35,29,'<com.jackeey.eWallpapers.disney.SearchResultsPreViewActivity$5: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(36,8,'<com.jackeey.eWallpapers.disney.Wallpapers: void onCreate(android.os.Bundle)>',71,'s',NULL),(37,14,'<com.jackeey.eWallpapers.disney.SearchResultsPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(38,16,'<com.jackeey.eWallpapers.disney.SearchResultsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(39,12,'<com.jackeey.eWallpapers.disney.ShowSDPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(40,17,'<com.jackeey.eWallpapers.disney.ShowPhotoActivity: void doShareBySMS()>',24,'a',NULL),(41,30,'<com.jackeey.eWallpapers.disney.CategoryPreViewActivity$3: void onClick(android.view.View)>',45,'a',NULL),(42,17,'<com.jackeey.eWallpapers.disney.ShowPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(43,11,'<com.jackeey.eWallpapers.disney.GalleryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(44,31,'<com.jackeey.eWallpapers.disney.GalleryActivity$2: void onClick(android.view.View)>',24,'a',NULL),(45,32,'<com.jackeey.eWallpapers.disney.Wallpapers$9: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(46,13,'<com.jackeey.eWallpapers.disney.SeachTagsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(47,12,'<com.jackeey.eWallpapers.disney.ShowSDPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(48,33,'<com.jackeey.eWallpapers.disney.CategoryPreViewActivity$4: void onClick(android.view.View)>',15,'a',NULL),(49,17,'<com.jackeey.eWallpapers.disney.ShowPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(50,34,'<com.jackeey.eWallpapers.disney.CategoriesActivity$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(51,35,'<com.jackeey.eWallpapers.disney.SeachTagsActivity$1: void onClick(android.view.View)>',16,'a',NULL),(52,36,'<com.jackeey.eWallpapers.disney.Wallpapers$8: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(53,37,'<com.jackeey.eWallpapers.disney.GalleryActivity$3: void onClick(android.view.View)>',15,'a',NULL),(54,38,'<com.jackeey.eWallpapers.disney.Wallpapers$5: void onClick(android.view.View)>',15,'a',NULL),(55,39,'<com.jackeey.eWallpapers.disney.SearchResultsPreViewActivity$4: void onClick(android.view.View)>',15,'a',NULL),(56,8,'<com.jackeey.eWallpapers.disney.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(57,8,'<com.jackeey.eWallpapers.disney.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(58,8,'<com.jackeey.eWallpapers.disney.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(59,11,'<com.jackeey.eWallpapers.disney.GalleryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(60,8,'<com.jackeey.eWallpapers.disney.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',46,'a',NULL),(61,16,'<com.jackeey.eWallpapers.disney.SearchResultsActivity: void doShareByEmail()>',9,'a',NULL),(62,40,'<com.jackeey.eWallpapers.disney.SearchResultsPreViewActivity$3: void onClick(android.view.View)>',44,'a',NULL),(63,14,'<com.jackeey.eWallpapers.disney.SearchResultsPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(64,41,'<com.jackeey.eWallpapers.disney.CategoryPreViewActivity$5: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(65,13,'<com.jackeey.eWallpapers.disney.SeachTagsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(66,10,'<com.jackeey.eWallpapers.disney.CategoryPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(67,16,'<com.jackeey.eWallpapers.disney.SearchResultsActivity: void doShareBySMS()>',24,'a',NULL),(68,42,'<com.jackeey.eWallpapers.disney.Wallpapers$3: void onClick(android.view.View)>',42,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,3),(2,2,3),(3,4,4),(4,3,4),(5,5,4),(6,6,3),(7,7,5),(8,8,4),(9,9,4),(10,10,5),(11,11,4),(12,12,4),(13,13,5),(14,14,5),(15,16,3),(16,15,4),(17,17,4),(18,18,4),(19,19,4),(20,20,4),(21,28,6),(22,31,5),(23,35,6),(24,40,4),(25,45,4),(26,51,7),(27,52,4),(28,58,4),(29,60,3),(30,61,5),(31,64,6),(32,67,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,21,'com/jackeey/eWallpapers/disney/CategoriesActivity'),(2,22,'com/jackeey/eWallpapers/disney/Wallpapers'),(3,23,'com/jackeey/eWallpapers/disney/Wallpapers'),(4,24,'com/jackeey/eWallpapers/disney/SeachTagsActivity'),(5,25,'com/jackeey/eWallpapers/disney/Wallpapers'),(6,26,'com/jackeey/eWallpapers/disney/Wallpapers'),(7,27,'com/jackeey/eWallpapers/disney/CategoriesActivity'),(8,29,'com/jackeey/eWallpapers/disney/CategoriesActivity'),(9,30,'com/jackeey/eWallpapers/disney/SeachTagsActivity'),(10,32,'com/jackeey/eWallpapers/disney/SeachTagsActivity'),(11,33,'com/jackeey/eWallpapers/disney/SeachTagsActivity'),(12,34,'com/jackeey/eWallpapers/disney/Wallpapers'),(13,36,'com/jackeey/eWallpapers/disney/SyncDeviceInfosService'),(14,37,'com/jackeey/eWallpapers/disney/CategoriesActivity'),(15,38,'com/jackeey/eWallpapers/disney/SeachTagsActivity'),(16,39,'com/jackeey/eWallpapers/disney/SeachTagsActivity'),(17,41,'com/jackeey/eWallpapers/disney/ShowPhotoActivity'),(18,42,'com/jackeey/eWallpapers/disney/Wallpapers'),(19,43,'com/jackeey/eWallpapers/disney/CategoriesActivity'),(20,44,'com/jackeey/eWallpapers/disney/ShowSDPhotoActivity'),(21,46,'com/jackeey/eWallpapers/disney/CategoriesActivity'),(22,47,'com/jackeey/eWallpapers/disney/CategoriesActivity'),(23,48,'com/jackeey/eWallpapers/disney/CategoriesActivity'),(24,49,'com/jackeey/eWallpapers/disney/SeachTagsActivity'),(25,50,'com/jackeey/eWallpapers/disney/CategoryPreViewActivity'),(26,51,'com/jackeey/eWallpapers/disney/SearchResultsPreViewActivity'),(27,53,'com/jackeey/eWallpapers/disney/CategoriesActivity'),(28,54,'com/jackeey/eWallpapers/disney/CategoriesActivity'),(29,55,'com/jackeey/eWallpapers/disney/CategoriesActivity'),(30,56,'com/jackeey/eWallpapers/disney/GalleryActivity'),(31,57,'com/jackeey/eWallpapers/disney/CategoriesActivity'),(32,59,'com/jackeey/eWallpapers/disney/SeachTagsActivity'),(33,62,'com/jackeey/eWallpapers/disney/SearchResultsActivity'),(34,63,'com/jackeey/eWallpapers/disney/SeachTagsActivity'),(35,65,'com/jackeey/eWallpapers/disney/Wallpapers'),(36,66,'com/jackeey/eWallpapers/disney/Wallpapers'),(37,68,'com/jackeey/eWallpapers/disney/ShowPhotoActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,4,2),(3,2,3),(4,5,4),(5,8,5),(6,6,6),(7,12,7),(8,15,8),(9,16,9),(10,17,10),(11,19,11),(12,20,12),(13,45,13),(14,52,14),(15,58,15),(16,60,16);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'android.intent.extra.SUBJECT'),(2,2,'android.intent.extra.SUBJECT'),(3,3,'sms_body'),(4,6,'android.intent.extra.SUBJECT'),(5,7,'android.intent.extra.TEXT'),(6,7,'android.intent.extra.SUBJECT'),(7,9,'sms_body'),(8,10,'android.intent.extra.TEXT'),(9,11,'sms_body'),(10,10,'android.intent.extra.SUBJECT'),(11,13,'android.intent.extra.TEXT'),(12,13,'android.intent.extra.SUBJECT'),(13,14,'android.intent.extra.TEXT'),(14,16,'android.intent.extra.SUBJECT'),(15,14,'android.intent.extra.SUBJECT'),(16,18,'sms_body'),(17,31,'android.intent.extra.TEXT'),(18,31,'android.intent.extra.SUBJECT'),(19,40,'sms_body'),(20,41,'com.eoemobile.EXTRA_DATA_PHOTO_PAGE_INDEX'),(21,41,'com.eoemobile.apps.eWallpaper.category'),(22,41,'com.eoemobile.EXTRA_DATA_SINGLE_PHOTO_INDEX'),(23,41,'com.eoemobile.action.COMEFROM_CATEGORYPREVIEW'),(24,44,'com.eoemobile.EXTRA_DATA_SINGLE_PHOTO_INDEX'),(25,44,'com.eoemobile.action.COMEFROM_CATEGORYPREVIEW'),(26,50,'com.eoemobile.apps.eWallpaper.category'),(27,51,'com.eoemobile.apps.eWallpaper.SEARCH_KEYWORD'),(28,60,'android.intent.extra.SUBJECT'),(29,61,'android.intent.extra.TEXT'),(30,61,'android.intent.extra.SUBJECT'),(31,62,'com.eoemobile.EXTRA_DATA_PHOTO_PAGE_INDEX'),(32,62,'com.eoemobile.EXTRA_DATA_SINGLE_PHOTO_INDEX'),(33,62,'com.eoemobile.apps.eWallpaper.SEARCH_KEYWORD'),(34,62,'com.eoemobile.action.COMEFROM_CATEGORYPREVIEW'),(35,67,'sms_body'),(36,68,'com.eoemobile.apps.eWallpaper.type'),(37,68,'com.eoemobile.EXTRA_DATA_PHOTO_PAGE_INDEX'),(38,68,'com.eoemobile.action.COMEFROM_WALLPAPERS'),(39,68,'com.eoemobile.EXTRA_DATA_SINGLE_PHOTO_INDEX');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,2),(8,8,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,8,1);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,3,'vnd.android-dir','mms-sms'),(2,7,'message','rfc882'),(3,9,'vnd.android-dir','mms-sms'),(4,10,'message','rfc882'),(5,11,'vnd.android-dir','mms-sms'),(6,13,'message','rfc882'),(7,14,'message','rfc882'),(8,18,'vnd.android-dir','mms-sms'),(9,31,'message','rfc882'),(10,40,'vnd.android-dir','mms-sms'),(11,61,'message','rfc882'),(12,67,'vnd.android-dir','mms-sms');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,21,'com.jackeey.eWallpapers.disney'),(2,22,'com.jackeey.eWallpapers.disney'),(3,23,'com.jackeey.eWallpapers.disney'),(4,24,'com.jackeey.eWallpapers.disney'),(5,25,'com.jackeey.eWallpapers.disney'),(6,26,'com.jackeey.eWallpapers.disney'),(7,27,'com.jackeey.eWallpapers.disney'),(8,29,'com.jackeey.eWallpapers.disney'),(9,30,'com.jackeey.eWallpapers.disney'),(10,32,'com.jackeey.eWallpapers.disney'),(11,33,'com.jackeey.eWallpapers.disney'),(12,34,'com.jackeey.eWallpapers.disney'),(13,36,'com.jackeey.eWallpapers.disney'),(14,37,'com.jackeey.eWallpapers.disney'),(15,38,'com.jackeey.eWallpapers.disney'),(16,39,'com.jackeey.eWallpapers.disney'),(17,41,'com.jackeey.eWallpapers.disney'),(18,42,'com.jackeey.eWallpapers.disney'),(19,43,'com.jackeey.eWallpapers.disney'),(20,44,'com.jackeey.eWallpapers.disney'),(21,46,'com.jackeey.eWallpapers.disney'),(22,47,'com.jackeey.eWallpapers.disney'),(23,48,'com.jackeey.eWallpapers.disney'),(24,49,'com.jackeey.eWallpapers.disney'),(25,50,'com.jackeey.eWallpapers.disney'),(26,51,'com.jackeey.eWallpapers.disney'),(27,53,'com.jackeey.eWallpapers.disney'),(28,54,'com.jackeey.eWallpapers.disney'),(29,55,'com.jackeey.eWallpapers.disney'),(30,56,'com.jackeey.eWallpapers.disney'),(31,57,'com.jackeey.eWallpapers.disney'),(32,59,'com.jackeey.eWallpapers.disney'),(33,62,'com.jackeey.eWallpapers.disney'),(34,63,'com.jackeey.eWallpapers.disney'),(35,65,'com.jackeey.eWallpapers.disney'),(36,66,'com.jackeey.eWallpapers.disney'),(37,68,'com.jackeey.eWallpapers.disney');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,2,0),(4,4,0),(5,6,0),(6,7,0),(7,5,0),(8,8,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,3,1,0),(3,2,1,0),(4,4,1,0),(5,5,1,0),(6,7,1,0),(7,6,1,0),(8,8,1,0),(9,9,1,0),(10,11,1,0),(11,10,1,0),(12,12,1,0),(13,13,1,0),(14,14,1,0),(15,15,1,0),(16,16,1,0),(17,17,1,0),(18,19,1,0),(19,18,1,0),(20,20,1,0),(21,21,0,0),(22,22,0,0),(23,23,0,0),(24,24,0,0),(25,25,0,0),(26,26,0,0),(27,27,0,0),(28,28,1,0),(29,29,0,0),(30,30,0,0),(31,31,1,0),(32,32,0,0),(33,33,0,0),(34,34,0,0),(35,35,1,0),(36,36,0,0),(37,37,0,0),(38,38,0,0),(39,39,0,0),(40,40,1,0),(41,41,0,0),(42,42,0,0),(43,43,0,0),(44,44,0,0),(45,45,1,0),(46,46,0,0),(47,47,0,0),(48,48,0,0),(49,49,0,0),(50,50,0,0),(51,51,0,0),(52,52,1,0),(53,53,0,0),(54,54,0,0),(55,55,0,0),(56,56,0,0),(57,57,0,0),(58,58,1,0),(59,59,0,0),(60,60,1,0),(61,61,1,0),(62,62,0,0),(63,63,0,0),(64,64,1,0),(65,65,0,0),(66,66,0,0),(67,67,1,0),(68,68,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,6,1,2,NULL),(2,6,2,2,NULL),(3,1,6,2,NULL),(4,6,3,2,NULL),(5,2,6,2,NULL),(6,33,13,2,NULL),(7,6,4,2,NULL),(8,36,18,2,NULL),(9,6,5,2,NULL),(10,56,11,2,NULL),(11,6,7,2,NULL),(12,57,9,2,NULL),(13,16,6,2,NULL),(14,60,1,2,NULL),(15,6,8,2,NULL),(16,60,2,2,NULL),(17,60,6,2,NULL),(18,1,8,2,NULL),(19,60,3,2,NULL),(20,2,8,2,NULL),(21,60,4,2,NULL),(22,60,5,2,NULL),(23,60,7,2,NULL),(24,16,8,2,NULL),(25,22,8,2,NULL),(26,24,13,2,NULL),(27,21,9,2,NULL),(28,30,13,2,NULL),(29,66,8,2,NULL),(30,34,8,2,NULL),(31,43,9,2,NULL),(32,59,13,2,NULL),(33,23,8,2,NULL),(34,39,13,2,NULL),(35,47,9,2,NULL),(36,46,9,2,NULL),(37,65,8,2,NULL),(38,26,8,2,NULL),(39,37,9,2,NULL),(40,63,13,2,NULL),(41,25,8,2,NULL),(42,27,9,2,NULL),(43,38,13,2,NULL),(44,29,9,2,NULL),(45,42,8,2,NULL),(46,49,13,2,NULL),(47,2,1,2,NULL),(48,2,2,2,NULL),(49,1,3,2,NULL),(50,2,4,2,NULL),(51,2,5,2,NULL),(52,2,7,2,NULL),(53,16,3,2,NULL),(54,16,1,2,NULL),(55,16,2,2,NULL),(56,1,7,2,NULL),(57,16,4,2,NULL),(58,16,5,2,NULL),(59,1,1,2,NULL),(60,1,4,2,NULL),(61,1,5,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (28,'android.permission.ACCESS_COARSE_LOCATION'),(19,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(6,'android.permission.BATTERY_STATS'),(14,'android.permission.CAMERA'),(20,'android.permission.CHANGE_CONFIGURATION'),(18,'android.permission.CONTROL_LOCATION_UPDATES'),(12,'android.permission.EXPAND_STATUS_BAR'),(7,'android.permission.GET_ACCOUNTS'),(1,'android.permission.INSTALL_PACKAGES'),(15,'android.permission.INTERNET'),(11,'android.permission.READ_CALENDAR'),(8,'android.permission.READ_CONTACTS'),(17,'android.permission.READ_FRAME_BUFFER'),(3,'android.permission.READ_LOGS'),(25,'android.permission.READ_PHONE_STATE'),(24,'android.permission.READ_SMS'),(23,'android.permission.RECEIVE_SMS'),(2,'android.permission.SEND_SMS'),(26,'android.permission.SET_WALLPAPER'),(5,'android.permission.STATUS_BAR'),(13,'android.permission.SYSTEM_ALERT_WINDOW'),(16,'android.permission.VIBRATE'),(10,'android.permission.WRITE_CALENDAR'),(9,'android.permission.WRITE_CONTACTS'),(27,'android.permission.WRITE_EXTERNAL_STORAGE'),(22,'android.permission.WRITE_SMS'),(21,'com.android.browser.permission.READ_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'mailto:support@ysler.com',NULL,NULL,NULL),(2,NULL,NULL,'market://search?q=pname:Ysler',NULL,NULL,NULL),(3,NULL,NULL,'mailto:support@ysler.com',NULL,NULL,NULL),(4,NULL,NULL,'market://search?q=pname:Ysler',NULL,NULL,NULL),(5,NULL,NULL,'market://search?q=pname:Ysler',NULL,NULL,NULL),(6,NULL,NULL,'mailto:support@ysler.com',NULL,NULL,NULL),(7,NULL,NULL,'market://search?q=pname:Ysler',NULL,NULL,NULL),(8,NULL,NULL,'market://search?q=(.*)',NULL,NULL,NULL),(9,NULL,NULL,'mailto:support@ysler.com',NULL,NULL,NULL),(10,NULL,NULL,'market://search?q=(.*)',NULL,NULL,NULL),(11,NULL,NULL,'market://search?q=(.*)',NULL,NULL,NULL),(12,NULL,NULL,'market://search?q=(.*)',NULL,NULL,NULL),(13,NULL,NULL,'http://www.imnet.us/android/v2/wallpapers/help?category_id=(.*)',NULL,NULL,NULL),(14,NULL,NULL,'market://search?q=(.*)',NULL,NULL,NULL),(15,NULL,NULL,'market://search?q=jackeey.wu',NULL,NULL,NULL),(16,NULL,NULL,'mailto:jackeey.wu@gmail.com',NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,19),(19,1,18),(20,1,21),(21,1,20),(22,2,1),(23,2,2),(24,2,3),(25,2,4),(26,2,5),(27,2,6),(28,2,7),(29,2,8),(30,2,9),(31,2,10),(32,2,11),(33,2,12),(34,2,13),(35,2,14),(36,2,15),(37,3,19),(38,4,19),(39,2,17),(40,4,25),(41,3,25),(42,2,16),(43,3,27),(44,4,27),(45,2,19),(46,3,26),(47,4,26),(48,2,18),(49,3,15),(50,4,15),(51,2,21),(52,2,20),(53,2,23),(54,2,22),(55,2,24),(56,6,19),(57,5,19),(58,5,25),(59,6,25),(60,6,27),(61,5,27),(62,5,26),(63,6,26),(64,5,15),(65,6,15),(66,7,19),(67,7,25),(68,7,27),(69,7,26),(70,7,28),(71,7,15);
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

-- Dump completed on 2015-10-12  3:30:41
