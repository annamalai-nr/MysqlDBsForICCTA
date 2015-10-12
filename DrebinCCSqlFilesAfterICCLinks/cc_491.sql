-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_491
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
INSERT INTO `ActionStrings` VALUES (6,'android.intent.action.BOOT_COMPLETED'),(10,'android.intent.action.CHOOSER'),(1,'android.intent.action.MAIN'),(3,'android.intent.action.SEND'),(2,'android.intent.action.SENDTO'),(4,'android.intent.action.VIEW'),(7,'android.net.conn.CONNECTIVITY_CHANGE'),(8,'android.settings.WIFI_SETTINGS'),(9,'com.eoemobile.apps.eWallpaper.SEARCH_ACTION'),(5,'com.eoemobile.paylib.ACTION_UPDATE_CONFIG');
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
INSERT INTO `Applications` VALUES (1,'com.ysler.wps.firefox',120),(2,'com.ysler.wps.dog',120),(3,'com.joyce.wps.graffiti',120),(4,'com.jackeey.eWallpapers.gundam',510),(5,'com.eoeandroid.eWallpapers.cartoon',510),(6,'com.jackeey.eWallpapers.love',511),(7,'com.jackeey.eWallpapers.cartoon_hello_kitty',430);
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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.ysler.wps.base.Main'),(2,2,'com.ysler.wps.base.Main'),(3,3,'com.joyce.wps.base.Main'),(4,4,'com.jackeey.eWallpapers.Wallpapers'),(5,4,'com.jackeey.eWallpapers.CategoriesActivity'),(6,3,'com.joyce.wps.base.Main$9'),(7,4,'com.jackeey.eWallpapers.CategoryPreViewActivity'),(8,5,'com.jackeey.eWallpapers.Wallpapers'),(9,6,'com.jackeey.eWallpapers.Wallpapers'),(10,4,'com.jackeey.eWallpapers.GalleryActivity'),(11,2,'com.ysler.wps.base.Main$10'),(12,4,'com.jackeey.eWallpapers.ShowSDPhotoActivity'),(13,5,'com.jackeey.eWallpapers.CategoriesActivity'),(14,1,'com.ysler.wps.base.Main$10'),(15,6,'com.jackeey.eWallpapers.CategoriesActivity'),(16,4,'com.jackeey.eWallpapers.SeachTagsActivity'),(17,5,'com.jackeey.eWallpapers.CategoryPreViewActivity'),(18,4,'com.jackeey.eWallpapers.SearchResultsPreViewActivity'),(19,6,'com.jackeey.eWallpapers.CategoryPreViewActivity'),(20,5,'com.jackeey.eWallpapers.GalleryActivity'),(21,4,'com.jackeey.eWallpapers.SearchResultsActivity'),(22,2,'com.ysler.wps.base.Main$9'),(23,6,'com.jackeey.eWallpapers.GalleryActivity'),(24,7,'com.jackeey.eWallpapers.cartoon_hello_kitty.Wallpapers'),(25,5,'com.jackeey.eWallpapers.ShowSDPhotoActivity'),(26,6,'com.jackeey.eWallpapers.ShowSDPhotoActivity'),(27,4,'com.jackeey.eWallpapers.ShowPhotoActivity'),(28,1,'com.ysler.wps.base.Main$9'),(29,3,'com.joyce.wps.base.Main$10'),(30,5,'com.jackeey.eWallpapers.SeachTagsActivity'),(31,6,'com.jackeey.eWallpapers.SeachTagsActivity'),(32,4,'com.jackeey.eWallpapers.UpdateActivity'),(33,5,'com.jackeey.eWallpapers.SearchResultsPreViewActivity'),(34,7,'com.jackeey.eWallpapers.cartoon_hello_kitty.CategoriesActivity'),(35,4,'com.jackeey.eWallpapers.FeedBackActivity'),(36,6,'com.jackeey.eWallpapers.SearchResultsPreViewActivity'),(37,5,'com.jackeey.eWallpapers.SearchResultsActivity'),(38,6,'com.jackeey.eWallpapers.SearchResultsActivity'),(39,4,'com.jackeey.eWallpapers.DealUserIdService'),(40,7,'com.jackeey.eWallpapers.cartoon_hello_kitty.CategoryPreViewActivity'),(41,5,'com.jackeey.eWallpapers.ShowPhotoActivity'),(42,7,'com.jackeey.eWallpapers.cartoon_hello_kitty.GalleryActivity'),(43,6,'com.jackeey.eWallpapers.ShowPhotoActivity'),(44,4,'com.jackeey.eWallpapers.MyBroadcastReceiver'),(45,5,'com.jackeey.eWallpapers.UpdateActivity'),(46,6,'com.jackeey.eWallpapers.UpdateActivity'),(47,7,'com.jackeey.eWallpapers.cartoon_hello_kitty.ShowSDPhotoActivity'),(48,5,'com.jackeey.eWallpapers.FeedBackActivity'),(49,6,'com.jackeey.eWallpapers.FeedBackActivity'),(50,7,'com.jackeey.eWallpapers.cartoon_hello_kitty.SeachTagsActivity'),(51,5,'com.jackeey.eWallpapers.DealUserIdService'),(52,6,'com.jackeey.eWallpapers.DealUserIdService'),(53,7,'com.jackeey.eWallpapers.cartoon_hello_kitty.SearchResultsPreViewActivity'),(54,5,'com.jackeey.eWallpapers.MyBroadcastReceiver'),(55,6,'com.jackeey.eWallpapers.MyBroadcastReceiver'),(56,7,'com.jackeey.eWallpapers.cartoon_hello_kitty.SearchResultsActivity'),(57,7,'com.jackeey.eWallpapers.cartoon_hello_kitty.ShowPhotoActivity'),(58,7,'com.jackeey.eWallpapers.cartoon_hello_kitty.UpdateActivity'),(59,7,'com.jackeey.eWallpapers.cartoon_hello_kitty.SyncDeviceInfosService'),(60,7,'com.jackeey.eWallpapers.cartoon_hello_kitty.Wallpapers$6'),(61,7,'com.jackeey.eWallpapers.cartoon_hello_kitty.GalleryActivity$2'),(62,7,'com.jackeey.eWallpapers.cartoon_hello_kitty.SearchResultsPreViewActivity$3'),(63,7,'com.jackeey.eWallpapers.cartoon_hello_kitty.SearchResultsPreViewActivity$4'),(64,7,'com.jackeey.eWallpapers.cartoon_hello_kitty.SearchResultsPreViewActivity$5'),(65,7,'com.jackeey.eWallpapers.cartoon_hello_kitty.CategoryPreViewActivity$5'),(66,7,'com.jackeey.eWallpapers.cartoon_hello_kitty.Wallpapers$10'),(67,7,'com.jackeey.eWallpapers.cartoon_hello_kitty.Wallpapers$11'),(68,7,'com.jackeey.eWallpapers.cartoon_hello_kitty.CategoriesActivity$3'),(69,7,'com.jackeey.eWallpapers.cartoon_hello_kitty.Wallpapers$3'),(70,5,'com.jackeey.eWallpapers.SearchResultsPreViewActivity$3'),(71,4,'com.jackeey.eWallpapers.Wallpapers$9'),(72,4,'com.jackeey.eWallpapers.CategoryPreViewActivity$4'),(73,6,'com.jackeey.eWallpapers.Wallpapers$5'),(74,7,'com.jackeey.eWallpapers.cartoon_hello_kitty.SeachTagsActivity$1'),(75,5,'com.jackeey.eWallpapers.Wallpapers$6'),(76,6,'com.jackeey.eWallpapers.Wallpapers$6'),(77,7,'com.jackeey.eWallpapers.cartoon_hello_kitty.Wallpapers$8'),(78,5,'com.jackeey.eWallpapers.GalleryActivity$3'),(79,7,'com.jackeey.eWallpapers.cartoon_hello_kitty.CategoryPreViewActivity$4'),(80,4,'com.jackeey.eWallpapers.GalleryActivity$3'),(81,5,'com.jackeey.eWallpapers.GalleryActivity$2'),(82,4,'com.jackeey.eWallpapers.GalleryActivity$2'),(83,5,'com.jackeey.eWallpapers.Wallpapers$3'),(84,6,'com.jackeey.eWallpapers.SeachTagsActivity$1'),(85,4,'com.jackeey.eWallpapers.SearchResultsPreViewActivity$5'),(86,4,'com.jackeey.eWallpapers.SearchResultsPreViewActivity$4'),(87,7,'com.jackeey.eWallpapers.cartoon_hello_kitty.Wallpapers$4'),(88,5,'com.jackeey.eWallpapers.CategoriesActivity$3'),(89,4,'com.jackeey.eWallpapers.Wallpapers$6'),(90,6,'com.jackeey.eWallpapers.SearchResultsPreViewActivity$3'),(91,4,'com.jackeey.eWallpapers.CategoryPreViewActivity$3'),(92,5,'com.jackeey.eWallpapers.Wallpapers$5'),(93,4,'com.jackeey.eWallpapers.CategoriesActivity$3'),(94,7,'com.jackeey.eWallpapers.cartoon_hello_kitty.Wallpapers$5'),(95,6,'com.jackeey.eWallpapers.CategoriesActivity$3'),(96,5,'com.jackeey.eWallpapers.Wallpapers$4'),(97,4,'com.jackeey.eWallpapers.Wallpapers$4'),(98,6,'com.jackeey.eWallpapers.CategoryPreViewActivity$4'),(99,5,'com.jackeey.eWallpapers.Wallpapers$9'),(100,6,'com.jackeey.eWallpapers.GalleryActivity$3'),(101,7,'com.jackeey.eWallpapers.cartoon_hello_kitty.GalleryActivity$1'),(102,5,'com.jackeey.eWallpapers.SearchResultsPreViewActivity$5'),(103,6,'com.jackeey.eWallpapers.Wallpapers$9'),(104,7,'com.jackeey.eWallpapers.cartoon_hello_kitty.CategoryPreViewActivity$3'),(105,5,'com.jackeey.eWallpapers.SeachTagsActivity$1'),(106,6,'com.jackeey.eWallpapers.Wallpapers$4'),(107,6,'com.jackeey.eWallpapers.CategoryPreViewActivity$3'),(108,6,'com.jackeey.eWallpapers.Wallpapers$3'),(109,4,'com.jackeey.eWallpapers.CategoryPreViewActivity$5'),(110,6,'com.jackeey.eWallpapers.GalleryActivity$2'),(111,4,'com.jackeey.eWallpapers.SeachTagsActivity$1'),(112,6,'com.jackeey.eWallpapers.CategoryPreViewActivity$5'),(113,5,'com.jackeey.eWallpapers.CategoryPreViewActivity$4'),(114,5,'com.jackeey.eWallpapers.CategoryPreViewActivity$3'),(115,4,'com.jackeey.eWallpapers.Wallpapers$5'),(116,6,'com.jackeey.eWallpapers.SearchResultsPreViewActivity$5'),(117,5,'com.jackeey.eWallpapers.CategoryPreViewActivity$5'),(118,5,'com.jackeey.eWallpapers.SearchResultsPreViewActivity$4'),(119,4,'com.jackeey.eWallpapers.Wallpapers$3'),(120,4,'com.jackeey.eWallpapers.SearchResultsPreViewActivity$3'),(121,6,'com.jackeey.eWallpapers.SearchResultsPreViewActivity$4');
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
INSERT INTO `ComponentExtras` VALUES (1,51,'com.eoemobile.action.COMEFROM_CATEGORYPREVIEW'),(2,47,'com.eoemobile.apps.eWallpaper.SEARCH_KEYWORD'),(3,52,'update_url'),(4,51,'com.eoemobile.apps.eWallpaper.category'),(5,36,'com.eoemobile.action.COMEFROM_WALLPAPERS'),(6,50,'com.eoemobile.apps.eWallpaper.SEARCH_KEYWORD'),(7,36,'com.eoemobile.apps.eWallpaper.category'),(8,27,'com.eoemobile.apps.eWallpaper.SEARCH_KEYWORD'),(9,51,'com.eoemobile.apps.eWallpaper.type'),(10,35,'com.eoemobile.action.COMEFROM_WALLPAPERS'),(11,15,'com.eoemobile.apps.eWallpaper.SEARCH_KEYWORD'),(12,16,'com.eoemobile.apps.eWallpaper.category'),(13,23,'com.eoemobile.action.COMEFROM_WALLPAPERS'),(14,19,'com.eoemobile.apps.eWallpaper.SEARCH_KEYWORD'),(15,40,'update_url'),(16,51,'com.eoemobile.action.COMEFROM_WALLPAPERS'),(17,33,'com.eoemobile.apps.eWallpaper.category'),(18,35,'com.eoemobile.apps.eWallpaper.type'),(19,23,'com.eoemobile.apps.eWallpaper.type'),(20,35,'com.eoemobile.apps.eWallpaper.category'),(21,23,'com.eoemobile.apps.eWallpaper.category'),(22,35,'com.eoemobile.action.COMEFROM_CATEGORYPREVIEW'),(23,14,'com.eoemobile.apps.eWallpaper.category'),(24,36,'com.eoemobile.apps.eWallpaper.type'),(25,23,'com.eoemobile.action.COMEFROM_CATEGORYPREVIEW'),(26,39,'update_url'),(27,6,'com.eoemobile.apps.eWallpaper.category'),(28,26,'update_url'),(29,31,'com.eoemobile.apps.eWallpaper.SEARCH_KEYWORD'),(30,29,'com.eoemobile.apps.eWallpaper.SEARCH_KEYWORD'),(31,32,'com.eoemobile.apps.eWallpaper.SEARCH_KEYWORD'),(32,36,'com.eoemobile.action.COMEFROM_CATEGORYPREVIEW');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,7,'a',0,NULL,NULL),(7,8,'a',1,NULL,NULL),(8,9,'a',1,NULL,NULL),(9,10,'a',0,NULL,NULL),(10,12,'a',0,NULL,NULL),(11,13,'a',0,NULL,NULL),(12,16,'a',0,NULL,NULL),(13,15,'a',0,NULL,NULL),(14,17,'a',0,NULL,NULL),(15,18,'a',0,NULL,NULL),(16,19,'a',0,NULL,NULL),(17,20,'a',0,NULL,NULL),(18,23,'a',0,NULL,NULL),(19,21,'a',0,NULL,NULL),(20,24,'a',1,NULL,NULL),(21,25,'a',0,NULL,NULL),(22,26,'a',0,NULL,NULL),(23,27,'a',0,NULL,NULL),(24,30,'a',0,NULL,NULL),(25,31,'a',0,NULL,NULL),(26,32,'a',0,NULL,NULL),(27,33,'a',0,NULL,NULL),(28,35,'a',0,NULL,NULL),(29,36,'a',0,NULL,NULL),(30,34,'a',0,NULL,NULL),(31,37,'a',0,NULL,NULL),(32,38,'a',0,NULL,NULL),(33,40,'a',0,NULL,NULL),(34,39,'s',0,NULL,NULL),(35,41,'a',0,NULL,NULL),(36,43,'a',0,NULL,NULL),(37,42,'a',0,NULL,NULL),(38,44,'r',1,NULL,NULL),(39,45,'a',0,NULL,NULL),(40,46,'a',0,NULL,NULL),(41,47,'a',0,NULL,NULL),(42,48,'a',0,NULL,NULL),(43,50,'a',0,NULL,NULL),(44,49,'a',0,NULL,NULL),(45,51,'s',0,NULL,NULL),(46,52,'s',0,NULL,NULL),(47,53,'a',0,NULL,NULL),(48,54,'r',1,NULL,NULL),(49,55,'r',1,NULL,NULL),(50,56,'a',0,NULL,NULL),(51,57,'a',0,NULL,NULL),(52,58,'a',0,NULL,NULL),(53,59,'s',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=692 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,3),(5,5,2),(6,6,1),(7,7,3),(8,8,2),(9,9,3),(10,10,1),(11,11,2),(12,13,3),(13,12,1),(14,14,2),(15,15,3),(16,16,41),(17,17,33),(18,18,47),(19,18,41),(20,18,37),(21,18,51),(22,18,33),(23,18,20),(24,18,50),(25,19,20),(26,20,20),(27,21,47),(28,21,51),(29,21,50),(30,21,33),(31,21,20),(32,21,37),(33,21,41),(34,22,51),(35,23,51),(36,24,20),(37,25,41),(38,25,47),(39,25,50),(40,25,51),(41,25,33),(42,25,20),(43,25,37),(44,26,20),(45,27,41),(46,27,51),(47,27,20),(48,27,50),(49,27,37),(50,27,47),(51,27,33),(52,28,37),(53,28,51),(54,28,41),(55,28,20),(56,28,33),(57,28,50),(58,28,47),(59,29,20),(60,30,50),(61,31,41),(62,32,33),(63,32,20),(64,32,50),(65,32,47),(66,32,37),(67,32,51),(68,32,41),(69,33,41),(70,34,33),(71,34,50),(72,34,51),(73,34,20),(74,34,37),(75,34,41),(76,34,47),(77,35,20),(78,36,20),(79,37,20),(80,38,47),(81,38,50),(82,38,51),(83,38,20),(84,38,37),(85,38,33),(86,38,41),(87,39,30),(88,40,7),(89,41,20),(90,41,37),(91,41,51),(92,41,33),(93,41,50),(94,41,47),(95,41,41),(96,42,7),(97,42,21),(98,42,42),(99,42,35),(100,42,17),(101,42,31),(102,42,14),(103,42,27),(104,43,43),(105,44,14),(106,45,33),(107,45,50),(108,45,51),(109,45,47),(110,45,41),(111,45,20),(112,45,37),(113,46,4),(114,46,19),(115,46,15),(116,46,10),(117,46,9),(118,46,28),(119,46,6),(120,46,23),(121,47,31),(122,48,47),(123,49,35),(124,50,15),(125,50,9),(126,50,28),(127,50,10),(128,50,6),(129,50,23),(130,50,4),(131,50,19),(132,51,8),(133,52,33),(134,53,11),(135,54,19),(136,55,8),(137,55,36),(138,55,32),(139,55,16),(140,55,29),(141,55,44),(142,55,22),(143,55,18),(144,56,20),(145,56,37),(146,56,51),(147,56,33),(148,56,50),(149,56,47),(150,56,43),(151,56,41),(152,57,27),(153,58,4),(154,59,22),(155,60,7),(156,61,6),(157,62,50),(158,63,16),(159,64,23),(160,65,51),(161,66,27),(162,66,42),(163,66,31),(164,66,14),(165,66,17),(166,66,35),(167,66,7),(168,66,21),(169,67,13),(170,69,10),(171,68,27),(172,68,14),(173,68,31),(174,68,17),(175,68,35),(176,68,21),(177,68,7),(178,68,42),(179,70,37),(180,71,36),(181,71,18),(182,71,16),(183,71,32),(184,71,44),(185,71,29),(186,71,8),(187,71,22),(188,72,15),(189,73,7),(190,74,47),(191,74,41),(192,74,37),(193,74,33),(194,74,51),(195,74,20),(196,74,50),(197,75,8),(198,76,10),(199,77,30),(200,78,7),(201,79,36),(202,80,15),(203,80,10),(204,80,9),(205,80,19),(206,80,4),(207,80,6),(208,80,23),(209,80,28),(210,81,17),(211,81,35),(212,81,21),(213,81,7),(214,81,27),(215,81,42),(216,81,14),(217,81,31),(218,82,37),(219,82,20),(220,82,50),(221,82,33),(222,82,51),(223,82,47),(224,82,41),(225,83,32),(226,84,31),(227,86,50),(228,85,19),(229,85,15),(230,85,28),(231,85,9),(232,85,10),(233,85,4),(234,85,23),(235,85,6),(236,87,29),(237,89,20),(238,90,12),(239,88,17),(240,88,27),(241,88,21),(242,88,42),(243,88,35),(244,88,7),(245,88,14),(246,88,31),(247,91,8),(248,92,9),(249,93,22),(250,94,7),(251,95,9),(252,95,6),(253,95,23),(254,95,28),(255,95,10),(256,95,15),(257,95,4),(258,95,19),(259,96,22),(260,97,17),(261,98,29),(262,99,35),(263,99,21),(264,99,7),(265,99,42),(266,99,27),(267,99,17),(268,99,14),(269,99,31),(270,100,19),(271,100,4),(272,100,6),(273,100,23),(274,100,10),(275,100,9),(276,100,28),(277,100,15),(278,101,22),(279,101,36),(280,101,25),(281,101,8),(282,101,29),(283,101,44),(284,101,32),(285,101,16),(286,101,18),(287,102,23),(288,102,6),(289,102,28),(290,102,10),(291,102,9),(292,102,15),(293,102,19),(294,102,4),(295,103,27),(296,103,42),(297,103,7),(298,103,35),(299,103,21),(300,103,14),(301,103,31),(302,103,17),(303,104,16),(304,105,19),(305,105,23),(306,105,6),(307,105,9),(308,105,4),(309,105,10),(310,105,28),(311,105,15),(312,106,20),(313,106,33),(314,106,50),(315,106,51),(316,106,37),(317,106,47),(318,106,41),(319,107,8),(320,108,21),(321,109,9),(322,110,20),(323,111,36),(324,111,18),(325,111,32),(326,111,16),(327,111,29),(328,111,44),(329,111,8),(330,111,22),(331,112,11),(332,113,5),(333,114,20),(334,115,12),(335,116,8),(336,117,11),(337,118,47),(338,119,23),(339,119,10),(340,119,9),(341,119,6),(342,119,28),(343,119,4),(344,119,19),(345,119,15),(346,120,8),(347,120,29),(348,120,44),(349,120,16),(350,120,32),(351,120,18),(352,120,36),(353,120,22),(354,121,21),(355,122,37),(356,124,24),(357,123,9),(358,123,6),(359,123,23),(360,123,4),(361,123,19),(362,123,15),(363,123,28),(364,123,10),(365,125,43),(366,126,18),(367,127,31),(368,127,21),(369,127,14),(370,127,35),(371,127,17),(372,127,27),(373,127,7),(374,127,42),(375,128,37),(376,129,16),(377,129,18),(378,129,44),(379,129,22),(380,129,8),(381,129,36),(382,129,29),(383,129,32),(384,130,5),(385,131,21),(386,132,47),(387,132,33),(388,132,50),(389,132,51),(390,132,20),(391,132,37),(392,132,41),(393,133,13),(394,134,14),(395,134,31),(396,134,17),(397,134,35),(398,134,21),(399,134,7),(400,134,27),(401,134,42),(402,136,30),(403,135,15),(404,135,19),(405,135,4),(406,135,9),(407,135,6),(408,135,23),(409,135,28),(410,135,10),(411,137,14),(412,138,47),(413,139,4),(414,140,16),(415,141,7),(416,142,5),(417,143,8),(418,143,22),(419,143,29),(420,143,44),(421,143,32),(422,143,16),(423,143,18),(424,143,36),(425,144,33),(426,146,19),(427,145,14),(428,145,31),(429,145,27),(430,145,42),(431,145,21),(432,145,7),(433,145,17),(434,145,35),(435,147,18),(436,147,36),(437,147,22),(438,147,8),(439,147,29),(440,147,44),(441,147,16),(442,147,32),(443,148,41),(444,148,51),(445,148,37),(446,148,20),(447,148,33),(448,148,50),(449,148,47),(450,149,6),(451,150,35),(452,150,31),(453,150,7),(454,150,17),(455,150,42),(456,150,27),(457,150,14),(458,150,21),(459,151,18),(460,151,36),(461,151,32),(462,151,16),(463,151,29),(464,151,44),(465,151,8),(466,151,22),(467,152,4),(468,153,50),(469,153,51),(470,153,33),(471,153,20),(472,153,37),(473,153,41),(474,153,47),(475,154,17),(476,154,31),(477,154,42),(478,154,24),(479,154,7),(480,154,27),(481,154,21),(482,154,35),(483,154,14),(484,155,19),(485,156,18),(486,156,44),(487,156,16),(488,156,29),(489,156,32),(490,156,36),(491,156,8),(492,156,22),(493,158,23),(494,157,24),(495,159,32),(496,160,15),(497,161,35),(498,162,29),(499,162,36),(500,162,16),(501,162,32),(502,162,18),(503,162,22),(504,162,44),(505,162,8),(506,163,9),(507,163,6),(508,163,23),(509,163,4),(510,163,19),(511,163,15),(512,163,28),(513,163,10),(514,164,27),(515,165,36),(516,165,22),(517,165,8),(518,165,44),(519,165,29),(520,165,18),(521,165,16),(522,165,32),(523,166,27),(524,167,4),(525,168,17),(526,169,4),(527,170,16),(528,170,32),(529,170,29),(530,170,22),(531,170,8),(532,170,44),(533,170,36),(534,170,18),(535,171,19),(536,171,23),(537,171,10),(538,171,9),(539,171,6),(540,171,28),(541,171,4),(542,171,15),(543,172,17),(544,173,4),(545,174,44),(546,174,8),(547,174,22),(548,174,36),(549,174,18),(550,174,32),(551,174,16),(552,174,29),(553,175,31),(554,176,31),(555,176,17),(556,176,35),(557,176,21),(558,176,7),(559,176,42),(560,176,14),(561,176,27),(562,177,23),(563,177,19),(564,177,4),(565,177,6),(566,177,9),(567,177,10),(568,177,28),(569,177,12),(570,177,15),(571,178,22),(572,178,8),(573,178,18),(574,178,36),(575,178,16),(576,178,29),(577,178,32),(578,178,44),(579,179,29),(580,180,15),(581,181,35),(582,181,14),(583,181,17),(584,181,31),(585,181,27),(586,181,42),(587,181,7),(588,181,21),(589,182,8),(590,183,10),(591,184,14),(592,184,27),(593,184,7),(594,184,42),(595,184,21),(596,184,35),(597,184,17),(598,184,31),(599,185,25),(600,186,9),(601,186,28),(602,186,10),(603,186,15),(604,186,19),(605,186,4),(606,186,6),(607,186,23),(608,187,16),(609,187,36),(610,187,18),(611,187,32),(612,187,8),(613,187,22),(614,187,29),(615,187,44),(616,188,14),(617,189,36),(618,190,6),(619,190,23),(620,190,9),(621,190,10),(622,190,28),(623,190,15),(624,190,19),(625,190,4),(626,191,35),(627,192,18),(628,193,6),(629,194,17),(630,194,35),(631,194,7),(632,194,21),(633,194,27),(634,194,42),(635,194,31),(636,194,14),(637,195,18),(638,196,23),(639,197,17),(640,197,35),(641,197,14),(642,197,31),(643,197,27),(644,197,21),(645,197,42),(646,197,7),(647,198,9),(648,199,36),(649,200,31),(650,200,17),(651,200,35),(652,200,21),(653,200,42),(654,200,7),(655,200,27),(656,200,14),(657,202,25),(658,201,19),(659,201,4),(660,201,23),(661,201,6),(662,201,10),(663,201,9),(664,201,15),(665,201,28),(666,203,8),(667,203,44),(668,203,22),(669,203,36),(670,203,18),(671,203,32),(672,203,16),(673,203,29),(674,204,9),(675,204,28),(676,204,10),(677,204,15),(678,204,6),(679,204,4),(680,204,19),(681,204,23),(682,205,32),(683,206,18),(684,206,36),(685,206,29),(686,206,32),(687,206,16),(688,206,8),(689,206,44),(690,206,22),(691,207,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.ysler.wps.base.Main: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(2,2,'<com.ysler.wps.base.Main: void doShareByEmail(java.lang.String)>',10,'a',NULL),(3,1,'<com.ysler.wps.base.Main: void doShareBySMS(java.lang.String)>',24,'a',NULL),(4,3,'<com.joyce.wps.base.Main: void doShareBySMS(java.lang.String)>',24,'a',NULL),(5,2,'<com.ysler.wps.base.Main: void doShareBySMS(java.lang.String)>',24,'a',NULL),(6,1,'<com.ysler.wps.base.Main: void doShareByEmail(java.lang.String)>',10,'a',NULL),(7,6,'<com.joyce.wps.base.Main$9: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(8,11,'<com.ysler.wps.base.Main$10: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(9,3,'<com.joyce.wps.base.Main: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(10,14,'<com.ysler.wps.base.Main$10: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(11,22,'<com.ysler.wps.base.Main$9: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(12,28,'<com.ysler.wps.base.Main$9: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(13,29,'<com.joyce.wps.base.Main$10: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(14,2,'<com.ysler.wps.base.Main: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(15,3,'<com.joyce.wps.base.Main: void doShareByEmail(java.lang.String)>',10,'a',NULL),(16,47,'<com.jackeey.eWallpapers.cartoon_hello_kitty.ShowSDPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(17,40,'<com.jackeey.eWallpapers.cartoon_hello_kitty.CategoryPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(18,57,'<com.jackeey.eWallpapers.cartoon_hello_kitty.ShowPhotoActivity: void doShareByEmail()>',9,'a',NULL),(19,60,'<com.jackeey.eWallpapers.cartoon_hello_kitty.Wallpapers$6: void onClick(android.content.DialogInterface,int)>',22,'a',NULL),(20,24,'<com.jackeey.eWallpapers.cartoon_hello_kitty.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',32,'a',NULL),(21,61,'<com.jackeey.eWallpapers.cartoon_hello_kitty.GalleryActivity$2: void onClick(android.view.View)>',26,'a',NULL),(22,57,'<com.jackeey.eWallpapers.cartoon_hello_kitty.ShowPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(23,57,'<com.jackeey.eWallpapers.cartoon_hello_kitty.ShowPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(24,24,'<com.jackeey.eWallpapers.cartoon_hello_kitty.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(25,56,'<com.jackeey.eWallpapers.cartoon_hello_kitty.SearchResultsActivity: void doShareByEmail()>',9,'a',NULL),(26,60,'<com.jackeey.eWallpapers.cartoon_hello_kitty.Wallpapers$6: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(27,62,'<com.jackeey.eWallpapers.cartoon_hello_kitty.SearchResultsPreViewActivity$3: void onClick(android.view.View)>',44,'a',NULL),(28,63,'<com.jackeey.eWallpapers.cartoon_hello_kitty.SearchResultsPreViewActivity$4: void onClick(android.view.View)>',26,'a',NULL),(29,24,'<com.jackeey.eWallpapers.cartoon_hello_kitty.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(30,56,'<com.jackeey.eWallpapers.cartoon_hello_kitty.SearchResultsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',27,'a',NULL),(31,47,'<com.jackeey.eWallpapers.cartoon_hello_kitty.ShowSDPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',29,'a',NULL),(32,64,'<com.jackeey.eWallpapers.cartoon_hello_kitty.SearchResultsPreViewActivity$5: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(33,47,'<com.jackeey.eWallpapers.cartoon_hello_kitty.ShowSDPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(34,65,'<com.jackeey.eWallpapers.cartoon_hello_kitty.CategoryPreViewActivity$5: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(35,24,'<com.jackeey.eWallpapers.cartoon_hello_kitty.Wallpapers: void onCreate(android.os.Bundle)>',66,'s',NULL),(36,66,'<com.jackeey.eWallpapers.cartoon_hello_kitty.Wallpapers$10: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(37,67,'<com.jackeey.eWallpapers.cartoon_hello_kitty.Wallpapers$11: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(38,56,'<com.jackeey.eWallpapers.cartoon_hello_kitty.SearchResultsActivity: void doShareBySMS()>',24,'a',NULL),(39,68,'<com.jackeey.eWallpapers.cartoon_hello_kitty.CategoriesActivity$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(40,8,'<com.jackeey.eWallpapers.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',29,'a',NULL),(41,69,'<com.jackeey.eWallpapers.cartoon_hello_kitty.Wallpapers$3: void onClick(android.view.View)>',42,'a',NULL),(42,70,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity$3: void onClick(android.view.View)>',44,'a',NULL),(43,50,'<com.jackeey.eWallpapers.cartoon_hello_kitty.SeachTagsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(44,17,'<com.jackeey.eWallpapers.CategoryPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(45,57,'<com.jackeey.eWallpapers.cartoon_hello_kitty.ShowPhotoActivity: void doShareBySMS()>',24,'a',NULL),(46,71,'<com.jackeey.eWallpapers.Wallpapers$9: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(47,37,'<com.jackeey.eWallpapers.SearchResultsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(48,53,'<com.jackeey.eWallpapers.cartoon_hello_kitty.SearchResultsPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',27,'a',NULL),(49,41,'<com.jackeey.eWallpapers.ShowPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(50,72,'<com.jackeey.eWallpapers.CategoryPreViewActivity$4: void onClick(android.view.View)>',15,'a',NULL),(51,9,'<com.jackeey.eWallpapers.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',29,'a',NULL),(52,40,'<com.jackeey.eWallpapers.cartoon_hello_kitty.CategoryPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(53,13,'<com.jackeey.eWallpapers.CategoriesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(54,21,'<com.jackeey.eWallpapers.SearchResultsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(55,73,'<com.jackeey.eWallpapers.Wallpapers$5: void onClick(android.view.View)>',15,'a',NULL),(56,74,'<com.jackeey.eWallpapers.cartoon_hello_kitty.SeachTagsActivity$1: void onClick(android.view.View)>',23,'a',NULL),(57,33,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(58,4,'<com.jackeey.eWallpapers.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(59,26,'<com.jackeey.eWallpapers.ShowSDPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(60,8,'<com.jackeey.eWallpapers.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(61,7,'<com.jackeey.eWallpapers.CategoryPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(62,56,'<com.jackeey.eWallpapers.cartoon_hello_kitty.SearchResultsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(63,19,'<com.jackeey.eWallpapers.CategoryPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(64,27,'<com.jackeey.eWallpapers.ShowPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(65,57,'<com.jackeey.eWallpapers.cartoon_hello_kitty.ShowPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(66,75,'<com.jackeey.eWallpapers.Wallpapers$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(67,15,'<com.jackeey.eWallpapers.CategoriesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(68,37,'<com.jackeey.eWallpapers.SearchResultsActivity: void doShareBySMS()>',26,'a',NULL),(69,12,'<com.jackeey.eWallpapers.ShowSDPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(70,42,'<com.jackeey.eWallpapers.cartoon_hello_kitty.GalleryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(71,76,'<com.jackeey.eWallpapers.Wallpapers$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(72,18,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(73,8,'<com.jackeey.eWallpapers.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(74,77,'<com.jackeey.eWallpapers.cartoon_hello_kitty.Wallpapers$8: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(75,9,'<com.jackeey.eWallpapers.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(76,12,'<com.jackeey.eWallpapers.ShowSDPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(77,34,'<com.jackeey.eWallpapers.cartoon_hello_kitty.CategoriesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(78,8,'<com.jackeey.eWallpapers.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',46,'a',NULL),(79,43,'<com.jackeey.eWallpapers.ShowPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(80,27,'<com.jackeey.eWallpapers.ShowPhotoActivity: void doShareByEmail()>',9,'a',NULL),(81,78,'<com.jackeey.eWallpapers.GalleryActivity$3: void onClick(android.view.View)>',15,'a',NULL),(82,79,'<com.jackeey.eWallpapers.cartoon_hello_kitty.CategoryPreViewActivity$4: void onClick(android.view.View)>',29,'a',NULL),(83,38,'<com.jackeey.eWallpapers.SearchResultsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(84,37,'<com.jackeey.eWallpapers.SearchResultsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(85,80,'<com.jackeey.eWallpapers.GalleryActivity$3: void onClick(android.view.View)>',15,'a',NULL),(86,56,'<com.jackeey.eWallpapers.cartoon_hello_kitty.SearchResultsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(87,36,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(88,81,'<com.jackeey.eWallpapers.GalleryActivity$2: void onClick(android.view.View)>',24,'a',NULL),(89,24,'<com.jackeey.eWallpapers.cartoon_hello_kitty.Wallpapers: void doError()>',24,'a',NULL),(90,16,'<com.jackeey.eWallpapers.SeachTagsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(91,9,'<com.jackeey.eWallpapers.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(92,10,'<com.jackeey.eWallpapers.GalleryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(93,26,'<com.jackeey.eWallpapers.ShowSDPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(94,8,'<com.jackeey.eWallpapers.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(95,82,'<com.jackeey.eWallpapers.GalleryActivity$2: void onClick(android.view.View)>',24,'a',NULL),(96,26,'<com.jackeey.eWallpapers.ShowSDPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(97,20,'<com.jackeey.eWallpapers.GalleryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(98,36,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(99,83,'<com.jackeey.eWallpapers.Wallpapers$3: void onClick(android.view.View)>',42,'a',NULL),(100,21,'<com.jackeey.eWallpapers.SearchResultsActivity: void doShareBySMS()>',26,'a',NULL),(101,84,'<com.jackeey.eWallpapers.SeachTagsActivity$1: void onClick(android.view.View)>',16,'a',NULL),(102,85,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity$5: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(103,41,'<com.jackeey.eWallpapers.ShowPhotoActivity: void doShareByEmail()>',9,'a',NULL),(104,19,'<com.jackeey.eWallpapers.CategoryPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(105,86,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity$4: void onClick(android.view.View)>',15,'a',NULL),(106,87,'<com.jackeey.eWallpapers.cartoon_hello_kitty.Wallpapers$4: void onClick(android.view.View)>',16,'a',NULL),(107,9,'<com.jackeey.eWallpapers.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',46,'a',NULL),(108,25,'<com.jackeey.eWallpapers.ShowSDPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(109,10,'<com.jackeey.eWallpapers.GalleryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(110,24,'<com.jackeey.eWallpapers.cartoon_hello_kitty.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(111,43,'<com.jackeey.eWallpapers.ShowPhotoActivity: void doShareBySMS()>',26,'a',NULL),(112,13,'<com.jackeey.eWallpapers.CategoriesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(113,5,'<com.jackeey.eWallpapers.CategoriesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(114,24,'<com.jackeey.eWallpapers.cartoon_hello_kitty.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',58,'a',NULL),(115,16,'<com.jackeey.eWallpapers.SeachTagsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(116,9,'<com.jackeey.eWallpapers.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(117,88,'<com.jackeey.eWallpapers.CategoriesActivity$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(118,53,'<com.jackeey.eWallpapers.cartoon_hello_kitty.SearchResultsPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(119,89,'<com.jackeey.eWallpapers.Wallpapers$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(120,90,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity$3: void onClick(android.view.View)>',44,'a',NULL),(121,25,'<com.jackeey.eWallpapers.ShowSDPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(122,42,'<com.jackeey.eWallpapers.cartoon_hello_kitty.GalleryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',27,'a',NULL),(123,91,'<com.jackeey.eWallpapers.CategoryPreViewActivity$3: void onClick(android.view.View)>',45,'a',NULL),(124,30,'<com.jackeey.eWallpapers.SeachTagsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(125,50,'<com.jackeey.eWallpapers.cartoon_hello_kitty.SeachTagsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(126,23,'<com.jackeey.eWallpapers.GalleryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(127,92,'<com.jackeey.eWallpapers.Wallpapers$5: void onClick(android.view.View)>',15,'a',NULL),(128,42,'<com.jackeey.eWallpapers.cartoon_hello_kitty.GalleryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(129,43,'<com.jackeey.eWallpapers.ShowPhotoActivity: void doShareByEmail()>',9,'a',NULL),(130,93,'<com.jackeey.eWallpapers.CategoriesActivity$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(131,25,'<com.jackeey.eWallpapers.ShowSDPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(132,94,'<com.jackeey.eWallpapers.cartoon_hello_kitty.Wallpapers$5: void onClick(android.view.View)>',26,'a',NULL),(133,95,'<com.jackeey.eWallpapers.CategoriesActivity$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(134,96,'<com.jackeey.eWallpapers.Wallpapers$4: void onClick(android.view.View)>',9,'a',NULL),(135,97,'<com.jackeey.eWallpapers.Wallpapers$4: void onClick(android.view.View)>',9,'a',NULL),(136,34,'<com.jackeey.eWallpapers.cartoon_hello_kitty.CategoriesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(137,17,'<com.jackeey.eWallpapers.CategoryPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(138,53,'<com.jackeey.eWallpapers.cartoon_hello_kitty.SearchResultsPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(139,4,'<com.jackeey.eWallpapers.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',29,'a',NULL),(140,19,'<com.jackeey.eWallpapers.CategoryPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(141,8,'<com.jackeey.eWallpapers.Wallpapers: void onCreate(android.os.Bundle)>',16,'s',NULL),(142,5,'<com.jackeey.eWallpapers.CategoriesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(143,98,'<com.jackeey.eWallpapers.CategoryPreViewActivity$4: void onClick(android.view.View)>',15,'a',NULL),(144,40,'<com.jackeey.eWallpapers.cartoon_hello_kitty.CategoryPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',27,'a',NULL),(145,99,'<com.jackeey.eWallpapers.Wallpapers$9: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(146,21,'<com.jackeey.eWallpapers.SearchResultsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(147,100,'<com.jackeey.eWallpapers.GalleryActivity$3: void onClick(android.view.View)>',15,'a',NULL),(148,101,'<com.jackeey.eWallpapers.cartoon_hello_kitty.GalleryActivity$1: void onClick(android.view.View)>',24,'a',NULL),(149,7,'<com.jackeey.eWallpapers.CategoryPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(150,102,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity$5: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(151,103,'<com.jackeey.eWallpapers.Wallpapers$9: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(152,4,'<com.jackeey.eWallpapers.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(153,104,'<com.jackeey.eWallpapers.cartoon_hello_kitty.CategoryPreViewActivity$3: void onClick(android.view.View)>',45,'a',NULL),(154,105,'<com.jackeey.eWallpapers.SeachTagsActivity$1: void onClick(android.view.View)>',16,'a',NULL),(155,21,'<com.jackeey.eWallpapers.SearchResultsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(156,106,'<com.jackeey.eWallpapers.Wallpapers$4: void onClick(android.view.View)>',9,'a',NULL),(157,30,'<com.jackeey.eWallpapers.SeachTagsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(158,27,'<com.jackeey.eWallpapers.ShowPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(159,38,'<com.jackeey.eWallpapers.SearchResultsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(160,18,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(161,41,'<com.jackeey.eWallpapers.ShowPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(162,107,'<com.jackeey.eWallpapers.CategoryPreViewActivity$3: void onClick(android.view.View)>',45,'a',NULL),(163,21,'<com.jackeey.eWallpapers.SearchResultsActivity: void doShareByEmail()>',9,'a',NULL),(164,33,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(165,108,'<com.jackeey.eWallpapers.Wallpapers$3: void onClick(android.view.View)>',42,'a',NULL),(166,33,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(167,4,'<com.jackeey.eWallpapers.Wallpapers: void onCreate(android.os.Bundle)>',16,'s',NULL),(168,20,'<com.jackeey.eWallpapers.GalleryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(169,4,'<com.jackeey.eWallpapers.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',46,'a',NULL),(170,38,'<com.jackeey.eWallpapers.SearchResultsActivity: void doShareByEmail()>',9,'a',NULL),(171,109,'<com.jackeey.eWallpapers.CategoryPreViewActivity$5: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(172,20,'<com.jackeey.eWallpapers.GalleryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(173,4,'<com.jackeey.eWallpapers.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(174,110,'<com.jackeey.eWallpapers.GalleryActivity$2: void onClick(android.view.View)>',24,'a',NULL),(175,37,'<com.jackeey.eWallpapers.SearchResultsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(176,37,'<com.jackeey.eWallpapers.SearchResultsActivity: void doShareByEmail()>',9,'a',NULL),(177,111,'<com.jackeey.eWallpapers.SeachTagsActivity$1: void onClick(android.view.View)>',16,'a',NULL),(178,112,'<com.jackeey.eWallpapers.CategoryPreViewActivity$5: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(179,36,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(180,18,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(181,113,'<com.jackeey.eWallpapers.CategoryPreViewActivity$4: void onClick(android.view.View)>',15,'a',NULL),(182,9,'<com.jackeey.eWallpapers.Wallpapers: void onCreate(android.os.Bundle)>',16,'s',NULL),(183,12,'<com.jackeey.eWallpapers.ShowSDPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(184,114,'<com.jackeey.eWallpapers.CategoryPreViewActivity$3: void onClick(android.view.View)>',45,'a',NULL),(185,31,'<com.jackeey.eWallpapers.SeachTagsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(186,115,'<com.jackeey.eWallpapers.Wallpapers$5: void onClick(android.view.View)>',15,'a',NULL),(187,116,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity$5: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(188,17,'<com.jackeey.eWallpapers.CategoryPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(189,43,'<com.jackeey.eWallpapers.ShowPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(190,27,'<com.jackeey.eWallpapers.ShowPhotoActivity: void doShareBySMS()>',26,'a',NULL),(191,41,'<com.jackeey.eWallpapers.ShowPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(192,23,'<com.jackeey.eWallpapers.GalleryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(193,7,'<com.jackeey.eWallpapers.CategoryPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(194,117,'<com.jackeey.eWallpapers.CategoryPreViewActivity$5: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(195,23,'<com.jackeey.eWallpapers.GalleryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(196,27,'<com.jackeey.eWallpapers.ShowPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(197,118,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity$4: void onClick(android.view.View)>',15,'a',NULL),(198,10,'<com.jackeey.eWallpapers.GalleryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(199,43,'<com.jackeey.eWallpapers.ShowPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(200,41,'<com.jackeey.eWallpapers.ShowPhotoActivity: void doShareBySMS()>',26,'a',NULL),(201,119,'<com.jackeey.eWallpapers.Wallpapers$3: void onClick(android.view.View)>',42,'a',NULL),(202,31,'<com.jackeey.eWallpapers.SeachTagsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(203,38,'<com.jackeey.eWallpapers.SearchResultsActivity: void doShareBySMS()>',26,'a',NULL),(204,120,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity$3: void onClick(android.view.View)>',44,'a',NULL),(205,38,'<com.jackeey.eWallpapers.SearchResultsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(206,121,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity$4: void onClick(android.view.View)>',15,'a',NULL),(207,15,'<com.jackeey.eWallpapers.CategoriesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,2),(2,2,3),(3,3,4),(4,4,4),(5,5,4),(6,6,3),(7,7,4),(8,8,4),(9,9,2),(10,10,4),(11,11,4),(12,13,4),(13,12,4),(14,14,2),(15,15,3),(16,18,3),(17,24,4),(18,25,3),(19,26,4),(20,32,8),(21,34,8),(22,36,4),(23,37,4),(24,38,4),(25,45,4),(26,46,4),(27,56,9),(28,60,4),(29,66,8),(30,69,4),(31,71,8),(32,74,8),(33,75,4),(34,80,3),(35,90,10),(36,92,10),(37,96,10),(38,98,10),(39,101,10),(40,104,10),(41,105,4),(42,106,10),(43,107,9),(44,108,10),(45,109,8),(46,110,3),(47,118,4),(48,121,2),(49,126,8),(50,136,3),(51,153,4),(52,157,8),(53,158,4),(54,161,9),(55,170,3),(56,177,3),(57,178,8),(58,180,4),(59,183,3),(60,184,9),(61,185,8),(62,194,8),(63,197,4),(64,201,8),(65,207,4),(66,210,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,16,'com/jackeey/eWallpapers/cartoon_hello_kitty/Wallpapers'),(2,17,'com/jackeey/eWallpapers/cartoon_hello_kitty/Wallpapers'),(3,19,'com/jackeey/eWallpapers/cartoon_hello_kitty/UpdateActivity'),(4,20,'com/jackeey/eWallpapers/cartoon_hello_kitty/CategoriesActivity'),(5,21,'com/jackeey/eWallpapers/cartoon_hello_kitty/CategoriesActivity'),(6,22,'com/jackeey/eWallpapers/cartoon_hello_kitty/Wallpapers'),(7,23,'com/jackeey/eWallpapers/cartoon_hello_kitty/CategoriesActivity'),(8,27,'com/jackeey/eWallpapers/cartoon_hello_kitty/SearchResultsActivity'),(9,28,'com/jackeey/eWallpapers/cartoon_hello_kitty/CategoriesActivity'),(10,29,'com/jackeey/eWallpapers/cartoon_hello_kitty/GalleryActivity'),(11,30,'com/jackeey/eWallpapers/cartoon_hello_kitty/CategoriesActivity'),(12,31,'com/jackeey/eWallpapers/cartoon_hello_kitty/CategoriesActivity'),(13,33,'com/jackeey/eWallpapers/cartoon_hello_kitty/SeachTagsActivity'),(14,35,'com/jackeey/eWallpapers/cartoon_hello_kitty/SyncDeviceInfosService'),(15,39,'com/jackeey/eWallpapers/cartoon_hello_kitty/CategoryPreViewActivity'),(16,40,'com/jackeey/eWallpapers/CategoriesActivity'),(17,41,'com/jackeey/eWallpapers/cartoon_hello_kitty/ShowPhotoActivity'),(18,43,'com/jackeey/eWallpapers/cartoon_hello_kitty/Wallpapers'),(19,42,'com/jackeey/eWallpapers/SearchResultsActivity'),(20,44,'com/jackeey/eWallpapers/Wallpapers'),(21,47,'com/jackeey/eWallpapers/Wallpapers'),(22,48,'com/jackeey/eWallpapers/cartoon_hello_kitty/CategoriesActivity'),(23,49,'com/jackeey/eWallpapers/Wallpapers'),(24,50,'com/jackeey/eWallpapers/CategoriesActivity'),(25,51,'com/jackeey/eWallpapers/CategoriesActivity'),(26,52,'com/jackeey/eWallpapers/cartoon_hello_kitty/SeachTagsActivity'),(27,53,'com/jackeey/eWallpapers/Wallpapers'),(28,54,'com/jackeey/eWallpapers/CategoriesActivity'),(29,55,'com/jackeey/eWallpapers/CategoriesActivity'),(30,57,'com/jackeey/eWallpapers/Wallpapers'),(31,58,'com/jackeey/eWallpapers/SeachTagsActivity'),(32,56,'com/jackeey/eWallpapers/cartoon_hello_kitty/SearchResultsPreViewActivity'),(33,59,'com/jackeey/eWallpapers/SeachTagsActivity'),(34,61,'com/jackeey/eWallpapers/Wallpapers'),(35,62,'com/jackeey/eWallpapers/cartoon_hello_kitty/SeachTagsActivity'),(36,63,'com/jackeey/eWallpapers/Wallpapers'),(37,64,'com/jackeey/eWallpapers/Wallpapers'),(38,65,'com/jackeey/eWallpapers/cartoon_hello_kitty/SeachTagsActivity'),(39,67,'com/jackeey/eWallpapers/Wallpapers'),(40,68,'com/jackeey/eWallpapers/Wallpapers'),(41,70,'com/jackeey/eWallpapers/cartoon_hello_kitty/Wallpapers'),(42,72,'com/jackeey/eWallpapers/Wallpapers'),(43,73,'com/jackeey/eWallpapers/SeachTagsActivity'),(44,76,'com/jackeey/eWallpapers/SeachTagsActivity'),(45,77,'com/jackeey/eWallpapers/cartoon_hello_kitty/Wallpapers'),(46,78,'com/jackeey/eWallpapers/FeedBackActivity'),(47,79,'com/jackeey/eWallpapers/CategoriesActivity'),(48,81,'com/jackeey/eWallpapers/CategoriesActivity'),(49,82,'com/jackeey/eWallpapers/cartoon_hello_kitty/CategoriesActivity'),(50,83,'com/jackeey/eWallpapers/Wallpapers'),(51,84,'com/jackeey/eWallpapers/CategoriesActivity'),(52,85,'com/jackeey/eWallpapers/cartoon_hello_kitty/Wallpapers'),(53,86,'com/jackeey/eWallpapers/CategoriesActivity'),(54,87,'com/jackeey/eWallpapers/SeachTagsActivity'),(55,88,'com/jackeey/eWallpapers/CategoriesActivity'),(56,91,'com/jackeey/eWallpapers/SeachTagsActivity'),(57,89,'com/jackeey/eWallpapers/ShowSDPhotoActivity'),(58,93,'com/jackeey/eWallpapers/CategoriesActivity'),(59,94,'com/jackeey/eWallpapers/CategoriesActivity'),(60,95,'com/jackeey/eWallpapers/GalleryActivity'),(61,99,'com/jackeey/eWallpapers/Wallpapers'),(62,100,'com/jackeey/eWallpapers/SeachTagsActivity'),(63,97,'com/jackeey/eWallpapers/ShowSDPhotoActivity'),(64,102,'com/jackeey/eWallpapers/Wallpapers'),(65,103,'com/jackeey/eWallpapers/ShowPhotoActivity'),(66,107,'com/jackeey/eWallpapers/SearchResultsPreViewActivity'),(67,111,'com/jackeey/eWallpapers/CategoriesActivity'),(68,112,'com/jackeey/eWallpapers/CategoriesActivity'),(69,113,'com/jackeey/eWallpapers/cartoon_hello_kitty/SeachTagsActivity'),(70,114,'com/jackeey/eWallpapers/FeedBackActivity'),(71,115,'com/jackeey/eWallpapers/SeachTagsActivity'),(72,116,'com/jackeey/eWallpapers/Wallpapers'),(73,117,'com/jackeey/eWallpapers/cartoon_hello_kitty/SeachTagsActivity'),(74,119,'com/jackeey/eWallpapers/SeachTagsActivity'),(75,120,'com/jackeey/eWallpapers/Wallpapers'),(76,122,'com/jackeey/eWallpapers/Wallpapers'),(77,123,'com/jackeey/eWallpapers/GalleryActivity'),(78,124,'com/jackeey/eWallpapers/CategoryPreViewActivity'),(79,125,'com/jackeey/eWallpapers/cartoon_hello_kitty/SeachTagsActivity'),(80,128,'com/jackeey/eWallpapers/CategoriesActivity'),(81,129,'com/jackeey/eWallpapers/cartoon_hello_kitty/CategoriesActivity'),(82,127,'com/jackeey/eWallpapers/SearchResultsActivity'),(83,130,'com/jackeey/eWallpapers/CategoriesActivity'),(84,132,'com/jackeey/eWallpapers/cartoon_hello_kitty/CategoriesActivity'),(85,133,'com/jackeey/eWallpapers/CategoriesActivity'),(86,131,'com/jackeey/eWallpapers/ShowPhotoActivity'),(87,134,'com/jackeey/eWallpapers/CategoriesActivity'),(88,135,'com/jackeey/eWallpapers/cartoon_hello_kitty/SeachTagsActivity'),(89,138,'com/jackeey/eWallpapers/Wallpapers'),(90,137,'com/jackeey/eWallpapers/CategoryPreViewActivity'),(91,139,'com/jackeey/eWallpapers/cartoon_hello_kitty/CategoriesActivity'),(92,141,'com/jackeey/eWallpapers/SeachTagsActivity'),(93,140,'com/jackeey/eWallpapers/CategoryPreViewActivity'),(94,142,'com/jackeey/eWallpapers/cartoon_hello_kitty/SeachTagsActivity'),(95,143,'com/jackeey/eWallpapers/SeachTagsActivity'),(96,144,'com/jackeey/eWallpapers/SeachTagsActivity'),(97,145,'com/jackeey/eWallpapers/cartoon_hello_kitty/Wallpapers'),(98,146,'com/jackeey/eWallpapers/CategoriesActivity'),(99,147,'com/jackeey/eWallpapers/SeachTagsActivity'),(100,148,'com/jackeey/eWallpapers/DealUserIdService'),(101,149,'com/jackeey/eWallpapers/SeachTagsActivity'),(102,150,'com/jackeey/eWallpapers/CategoriesActivity'),(103,151,'com/jackeey/eWallpapers/cartoon_hello_kitty/CategoriesActivity'),(104,152,'com/jackeey/eWallpapers/Wallpapers'),(105,154,'com/jackeey/eWallpapers/CategoriesActivity'),(106,156,'com/jackeey/eWallpapers/SeachTagsActivity'),(107,155,'com/jackeey/eWallpapers/cartoon_hello_kitty/ShowSDPhotoActivity'),(108,159,'com/jackeey/eWallpapers/GalleryActivity'),(109,161,'com/jackeey/eWallpapers/SearchResultsPreViewActivity'),(110,162,'com/jackeey/eWallpapers/SeachTagsActivity'),(111,160,'com/jackeey/eWallpapers/cartoon_hello_kitty/ShowPhotoActivity'),(112,163,'com/jackeey/eWallpapers/SeachTagsActivity'),(113,164,'com/jackeey/eWallpapers/CategoriesActivity'),(114,165,'com/jackeey/eWallpapers/Wallpapers'),(115,166,'com/jackeey/eWallpapers/CategoriesActivity'),(116,167,'com/jackeey/eWallpapers/CategoriesActivity'),(117,168,'com/jackeey/eWallpapers/CategoriesActivity'),(118,169,'com/jackeey/eWallpapers/ShowPhotoActivity'),(119,171,'com/jackeey/eWallpapers/CategoriesActivity'),(120,173,'com/jackeey/eWallpapers/SeachTagsActivity'),(121,174,'com/jackeey/eWallpapers/DealUserIdService'),(122,172,'com/jackeey/eWallpapers/ShowPhotoActivity'),(123,175,'com/jackeey/eWallpapers/Wallpapers'),(124,176,'com/jackeey/eWallpapers/FeedBackActivity'),(125,179,'com/jackeey/eWallpapers/CategoriesActivity'),(126,182,'com/jackeey/eWallpapers/SeachTagsActivity'),(127,181,'com/jackeey/eWallpapers/ShowSDPhotoActivity'),(128,184,'com/jackeey/eWallpapers/SearchResultsPreViewActivity'),(129,186,'com/jackeey/eWallpapers/CategoriesActivity'),(130,187,'com/jackeey/eWallpapers/SeachTagsActivity'),(131,188,'com/jackeey/eWallpapers/CategoriesActivity'),(132,189,'com/jackeey/eWallpapers/DealUserIdService'),(133,190,'com/jackeey/eWallpapers/CategoriesActivity'),(134,192,'com/jackeey/eWallpapers/CategoriesActivity'),(135,191,'com/jackeey/eWallpapers/ShowPhotoActivity'),(136,193,'com/jackeey/eWallpapers/CategoriesActivity'),(137,195,'com/jackeey/eWallpapers/CategoriesActivity'),(138,196,'com/jackeey/eWallpapers/Wallpapers'),(139,198,'com/jackeey/eWallpapers/SeachTagsActivity'),(140,199,'com/jackeey/eWallpapers/SeachTagsActivity'),(141,200,'com/jackeey/eWallpapers/CategoriesActivity'),(142,202,'com/jackeey/eWallpapers/Wallpapers'),(143,203,'com/jackeey/eWallpapers/SeachTagsActivity'),(144,204,'com/jackeey/eWallpapers/CategoriesActivity'),(145,205,'com/jackeey/eWallpapers/SeachTagsActivity'),(146,206,'com/jackeey/eWallpapers/SeachTagsActivity'),(147,208,'com/jackeey/eWallpapers/Wallpapers'),(148,209,'com/jackeey/eWallpapers/ShowPhotoActivity'),(149,212,'com/jackeey/eWallpapers/SeachTagsActivity'),(150,211,'com/jackeey/eWallpapers/SearchResultsActivity'),(151,213,'com/jackeey/eWallpapers/CategoriesActivity'),(152,214,'com/jackeey/eWallpapers/SeachTagsActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,7,2),(3,8,3),(4,10,4),(5,9,5),(6,11,6),(7,13,7),(8,12,8),(9,14,9),(10,24,10),(11,26,11),(12,36,12),(13,37,13),(14,46,14),(15,60,15),(16,75,16),(17,121,17),(18,153,18),(19,158,19),(20,180,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'android.intent.extra.SUBJECT'),(2,2,'android.intent.extra.TEXT'),(3,2,'android.intent.extra.SUBJECT'),(4,3,'sms_body'),(5,4,'sms_body'),(6,5,'sms_body'),(7,6,'android.intent.extra.TEXT'),(8,6,'android.intent.extra.SUBJECT'),(9,9,'android.intent.extra.SUBJECT'),(10,14,'android.intent.extra.SUBJECT'),(11,15,'android.intent.extra.TEXT'),(12,15,'android.intent.extra.SUBJECT'),(13,18,'android.intent.extra.TEXT'),(14,18,'android.intent.extra.SUBJECT'),(15,19,'update_url'),(16,25,'android.intent.extra.TEXT'),(17,25,'android.intent.extra.SUBJECT'),(18,27,'com.eoemobile.EXTRA_DATA_PHOTO_PAGE_INDEX'),(19,27,'com.eoemobile.EXTRA_DATA_SINGLE_PHOTO_INDEX'),(20,27,'com.eoemobile.apps.eWallpaper.SEARCH_KEYWORD'),(21,27,'com.eoemobile.action.COMEFROM_CATEGORYPREVIEW'),(22,38,'sms_body'),(23,39,'com.eoemobile.apps.eWallpaper.category'),(24,41,'com.eoemobile.apps.eWallpaper.type'),(25,41,'com.eoemobile.EXTRA_DATA_PHOTO_PAGE_INDEX'),(26,41,'com.eoemobile.action.COMEFROM_WALLPAPERS'),(27,41,'com.eoemobile.EXTRA_DATA_SINGLE_PHOTO_INDEX'),(28,42,'com.eoemobile.EXTRA_DATA_PHOTO_PAGE_INDEX'),(29,42,'com.eoemobile.EXTRA_DATA_SINGLE_PHOTO_INDEX'),(30,42,'com.eoemobile.apps.eWallpaper.SEARCH_KEYWORD'),(31,42,'com.eoemobile.action.COMEFROM_CATEGORYPREVIEW'),(32,45,'sms_body'),(33,56,'com.eoemobile.apps.eWallpaper.SEARCH_KEYWORD'),(34,69,'sms_body'),(35,80,'android.intent.extra.TEXT'),(36,80,'android.intent.extra.SUBJECT'),(37,89,'com.eoemobile.EXTRA_DATA_SINGLE_PHOTO_INDEX'),(38,89,'com.eoemobile.action.COMEFROM_CATEGORYPREVIEW'),(39,90,'android.intent.extra.INTENT'),(40,92,'android.intent.extra.INTENT'),(41,96,'android.intent.extra.TITLE'),(42,96,'android.intent.extra.INTENT'),(43,97,'com.eoemobile.EXTRA_DATA_SINGLE_PHOTO_INDEX'),(44,98,'android.intent.extra.INTENT'),(45,97,'com.eoemobile.action.COMEFROM_CATEGORYPREVIEW'),(46,101,'android.intent.extra.TITLE'),(47,101,'android.intent.extra.INTENT'),(48,103,'com.eoemobile.apps.eWallpaper.type'),(49,104,'android.intent.extra.INTENT'),(50,103,'com.eoemobile.EXTRA_DATA_PHOTO_PAGE_INDEX'),(51,105,'sms_body'),(52,103,'com.eoemobile.action.COMEFROM_WALLPAPERS'),(53,103,'com.eoemobile.EXTRA_DATA_SINGLE_PHOTO_INDEX'),(54,106,'android.intent.extra.TITLE'),(55,106,'android.intent.extra.INTENT'),(56,107,'com.eoemobile.apps.eWallpaper.SEARCH_KEYWORD'),(57,108,'android.intent.extra.TITLE'),(58,108,'android.intent.extra.INTENT'),(59,110,'android.intent.extra.TEXT'),(60,110,'android.intent.extra.SUBJECT'),(61,118,'sms_body'),(62,121,'android.intent.extra.SUBJECT'),(63,124,'com.eoemobile.apps.eWallpaper.category'),(64,127,'com.eoemobile.EXTRA_DATA_PHOTO_PAGE_INDEX'),(65,127,'com.eoemobile.EXTRA_DATA_SINGLE_PHOTO_INDEX'),(66,127,'com.eoemobile.apps.eWallpaper.SEARCH_KEYWORD'),(67,127,'com.eoemobile.action.COMEFROM_CATEGORYPREVIEW'),(68,131,'com.eoemobile.EXTRA_DATA_PHOTO_PAGE_INDEX'),(69,131,'com.eoemobile.apps.eWallpaper.category'),(70,131,'com.eoemobile.EXTRA_DATA_SINGLE_PHOTO_INDEX'),(71,131,'com.eoemobile.action.COMEFROM_CATEGORYPREVIEW'),(72,137,'com.eoemobile.apps.eWallpaper.category'),(73,136,'android.intent.extra.TEXT'),(74,136,'android.intent.extra.SUBJECT'),(75,140,'com.eoemobile.apps.eWallpaper.category'),(76,155,'com.eoemobile.EXTRA_DATA_SINGLE_PHOTO_INDEX'),(77,155,'com.eoemobile.action.COMEFROM_CATEGORYPREVIEW'),(78,160,'com.eoemobile.EXTRA_DATA_PHOTO_PAGE_INDEX'),(79,160,'com.eoemobile.apps.eWallpaper.category'),(80,161,'com.eoemobile.apps.eWallpaper.SEARCH_KEYWORD'),(81,160,'com.eoemobile.EXTRA_DATA_SINGLE_PHOTO_INDEX'),(82,160,'com.eoemobile.action.COMEFROM_CATEGORYPREVIEW'),(83,169,'com.eoemobile.EXTRA_DATA_PHOTO_PAGE_INDEX'),(84,169,'com.eoemobile.apps.eWallpaper.category'),(85,169,'com.eoemobile.EXTRA_DATA_SINGLE_PHOTO_INDEX'),(86,169,'com.eoemobile.action.COMEFROM_CATEGORYPREVIEW'),(87,170,'android.intent.extra.TEXT'),(88,170,'android.intent.extra.SUBJECT'),(89,172,'com.eoemobile.apps.eWallpaper.type'),(90,172,'com.eoemobile.EXTRA_DATA_PHOTO_PAGE_INDEX'),(91,172,'com.eoemobile.action.COMEFROM_WALLPAPERS'),(92,172,'com.eoemobile.EXTRA_DATA_SINGLE_PHOTO_INDEX'),(93,177,'android.intent.extra.TEXT'),(94,177,'android.intent.extra.SUBJECT'),(95,181,'com.eoemobile.EXTRA_DATA_SINGLE_PHOTO_INDEX'),(96,181,'com.eoemobile.action.COMEFROM_CATEGORYPREVIEW'),(97,184,'com.eoemobile.apps.eWallpaper.SEARCH_KEYWORD'),(98,183,'android.intent.extra.TEXT'),(99,183,'android.intent.extra.SUBJECT'),(100,191,'com.eoemobile.EXTRA_DATA_PHOTO_PAGE_INDEX'),(101,191,'com.eoemobile.apps.eWallpaper.category'),(102,191,'com.eoemobile.EXTRA_DATA_SINGLE_PHOTO_INDEX'),(103,191,'com.eoemobile.action.COMEFROM_CATEGORYPREVIEW'),(104,197,'sms_body'),(105,207,'sms_body'),(106,209,'com.eoemobile.apps.eWallpaper.type'),(107,209,'com.eoemobile.EXTRA_DATA_PHOTO_PAGE_INDEX'),(108,209,'com.eoemobile.action.COMEFROM_WALLPAPERS'),(109,209,'com.eoemobile.EXTRA_DATA_SINGLE_PHOTO_INDEX'),(110,210,'sms_body'),(111,211,'com.eoemobile.EXTRA_DATA_PHOTO_PAGE_INDEX'),(112,211,'com.eoemobile.EXTRA_DATA_SINGLE_PHOTO_INDEX'),(113,211,'com.eoemobile.apps.eWallpaper.SEARCH_KEYWORD'),(114,211,'com.eoemobile.action.COMEFROM_CATEGORYPREVIEW');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,7),(9,8,5),(10,8,6),(11,9,5),(12,9,6),(13,9,7),(14,10,7),(15,10,5),(16,10,6);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,2,'message','rfc882'),(2,3,'vnd.android-dir','mms-sms'),(3,4,'vnd.android-dir','mms-sms'),(4,5,'vnd.android-dir','mms-sms'),(5,6,'message','rfc882'),(6,15,'message','rfc882'),(7,18,'message','rfc882'),(8,25,'message','rfc882'),(9,38,'vnd.android-dir','mms-sms'),(10,45,'vnd.android-dir','mms-sms'),(11,69,'vnd.android-dir','mms-sms'),(12,80,'message','rfc882'),(13,105,'vnd.android-dir','mms-sms'),(14,110,'message','rfc882'),(15,118,'vnd.android-dir','mms-sms'),(16,136,'message','rfc882'),(17,170,'message','rfc882'),(18,177,'message','rfc882'),(19,183,'message','rfc882'),(20,197,'vnd.android-dir','mms-sms'),(21,207,'vnd.android-dir','mms-sms'),(22,210,'vnd.android-dir','mms-sms');
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
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,16,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(2,17,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(3,19,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(4,20,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(5,21,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(6,22,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(7,23,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(8,27,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(9,28,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(10,29,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(11,30,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(12,31,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(13,33,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(14,35,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(15,39,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(16,40,'com.eoeandroid.eWallpapers.cartoon'),(17,41,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(18,43,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(19,42,'com.eoeandroid.eWallpapers.cartoon'),(20,44,'com.eoeandroid.eWallpapers.cartoon'),(21,47,'com.eoeandroid.eWallpapers.cartoon'),(22,48,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(23,49,'com.eoeandroid.eWallpapers.cartoon'),(24,50,'com.jackeey.eWallpapers.gundam'),(25,51,'com.jackeey.eWallpapers.love'),(26,52,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(27,53,'com.eoeandroid.eWallpapers.cartoon'),(28,54,'com.jackeey.eWallpapers.gundam'),(29,55,'com.jackeey.eWallpapers.love'),(30,57,'com.eoeandroid.eWallpapers.cartoon'),(31,58,'com.jackeey.eWallpapers.gundam'),(32,56,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(33,59,'com.jackeey.eWallpapers.love'),(34,61,'com.jackeey.eWallpapers.gundam'),(35,62,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(36,63,'com.jackeey.eWallpapers.love'),(37,64,'com.jackeey.eWallpapers.gundam'),(38,65,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(39,67,'com.jackeey.eWallpapers.love'),(40,68,'com.jackeey.eWallpapers.gundam'),(41,70,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(42,72,'com.jackeey.eWallpapers.gundam'),(43,73,'com.eoeandroid.eWallpapers.cartoon'),(44,76,'com.jackeey.eWallpapers.gundam'),(45,77,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(46,78,'com.eoeandroid.eWallpapers.cartoon'),(47,79,'com.jackeey.eWallpapers.love'),(48,81,'com.eoeandroid.eWallpapers.cartoon'),(49,82,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(50,83,'com.jackeey.eWallpapers.love'),(51,84,'com.eoeandroid.eWallpapers.cartoon'),(52,86,'com.jackeey.eWallpapers.gundam'),(53,85,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(54,87,'com.jackeey.eWallpapers.love'),(55,88,'com.jackeey.eWallpapers.gundam'),(56,91,'com.jackeey.eWallpapers.love'),(57,89,'com.eoeandroid.eWallpapers.cartoon'),(58,93,'com.jackeey.eWallpapers.gundam'),(59,94,'com.jackeey.eWallpapers.love'),(60,95,'com.eoeandroid.eWallpapers.cartoon'),(61,99,'com.jackeey.eWallpapers.love'),(62,100,'com.eoeandroid.eWallpapers.cartoon'),(63,97,'com.jackeey.eWallpapers.gundam'),(64,102,'com.jackeey.eWallpapers.love'),(65,103,'com.eoeandroid.eWallpapers.cartoon'),(66,107,'com.jackeey.eWallpapers.love'),(67,111,'com.jackeey.eWallpapers.love'),(68,112,'com.jackeey.eWallpapers.gundam'),(69,113,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(70,114,'com.jackeey.eWallpapers.love'),(71,115,'com.eoeandroid.eWallpapers.cartoon'),(72,116,'com.jackeey.eWallpapers.gundam'),(73,117,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(74,119,'com.eoeandroid.eWallpapers.cartoon'),(75,120,'com.jackeey.eWallpapers.gundam'),(76,122,'com.jackeey.eWallpapers.gundam'),(77,123,'com.jackeey.eWallpapers.love'),(78,124,'com.eoeandroid.eWallpapers.cartoon'),(79,125,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(80,128,'com.eoeandroid.eWallpapers.cartoon'),(81,129,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(82,127,'com.jackeey.eWallpapers.love'),(83,130,'com.eoeandroid.eWallpapers.cartoon'),(84,132,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(85,133,'com.jackeey.eWallpapers.love'),(86,131,'com.jackeey.eWallpapers.gundam'),(87,134,'com.eoeandroid.eWallpapers.cartoon'),(88,135,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(89,138,'com.eoeandroid.eWallpapers.cartoon'),(90,137,'com.jackeey.eWallpapers.gundam'),(91,139,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(92,141,'com.eoeandroid.eWallpapers.cartoon'),(93,140,'com.jackeey.eWallpapers.love'),(94,142,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(95,143,'com.jackeey.eWallpapers.gundam'),(96,144,'com.eoeandroid.eWallpapers.cartoon'),(97,145,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(98,146,'com.jackeey.eWallpapers.gundam'),(99,147,'com.jackeey.eWallpapers.love'),(100,148,'com.eoeandroid.eWallpapers.cartoon'),(101,149,'com.jackeey.eWallpapers.gundam'),(102,150,'com.jackeey.eWallpapers.love'),(103,151,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(104,152,'com.jackeey.eWallpapers.gundam'),(105,154,'com.jackeey.eWallpapers.love'),(106,156,'com.jackeey.eWallpapers.gundam'),(107,155,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(108,159,'com.jackeey.eWallpapers.gundam'),(109,161,'com.eoeandroid.eWallpapers.cartoon'),(110,162,'com.jackeey.eWallpapers.gundam'),(111,160,'com.jackeey.eWallpapers.cartoon_hello_kitty'),(112,163,'com.jackeey.eWallpapers.love'),(113,164,'com.jackeey.eWallpapers.gundam'),(114,165,'com.eoeandroid.eWallpapers.cartoon'),(115,166,'com.jackeey.eWallpapers.love'),(116,167,'com.jackeey.eWallpapers.gundam'),(117,168,'com.eoeandroid.eWallpapers.cartoon'),(118,169,'com.jackeey.eWallpapers.love'),(119,171,'com.eoeandroid.eWallpapers.cartoon'),(120,173,'com.eoeandroid.eWallpapers.cartoon'),(121,174,'com.jackeey.eWallpapers.gundam'),(122,172,'com.jackeey.eWallpapers.love'),(123,175,'com.eoeandroid.eWallpapers.cartoon'),(124,176,'com.jackeey.eWallpapers.gundam'),(125,179,'com.eoeandroid.eWallpapers.cartoon'),(126,182,'com.eoeandroid.eWallpapers.cartoon'),(127,181,'com.jackeey.eWallpapers.love'),(128,184,'com.jackeey.eWallpapers.gundam'),(129,186,'com.jackeey.eWallpapers.love'),(130,187,'com.jackeey.eWallpapers.gundam'),(131,188,'com.eoeandroid.eWallpapers.cartoon'),(132,189,'com.jackeey.eWallpapers.love'),(133,190,'com.jackeey.eWallpapers.gundam'),(134,192,'com.jackeey.eWallpapers.love'),(135,191,'com.eoeandroid.eWallpapers.cartoon'),(136,193,'com.jackeey.eWallpapers.gundam'),(137,195,'com.eoeandroid.eWallpapers.cartoon'),(138,196,'com.jackeey.eWallpapers.love'),(139,198,'com.eoeandroid.eWallpapers.cartoon'),(140,199,'com.jackeey.eWallpapers.love'),(141,200,'com.jackeey.eWallpapers.gundam'),(142,202,'com.jackeey.eWallpapers.love'),(143,203,'com.jackeey.eWallpapers.gundam'),(144,204,'com.eoeandroid.eWallpapers.cartoon'),(145,205,'com.jackeey.eWallpapers.gundam'),(146,206,'com.jackeey.eWallpapers.love'),(147,208,'com.jackeey.eWallpapers.love'),(148,209,'com.jackeey.eWallpapers.gundam'),(149,212,'com.jackeey.eWallpapers.love'),(150,211,'com.jackeey.eWallpapers.gundam'),(151,213,'com.jackeey.eWallpapers.love'),(152,214,'com.jackeey.eWallpapers.love');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,7,0),(6,8,0),(7,20,0),(8,38,0),(9,48,0),(10,49,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,3,1,0),(4,4,1,0),(5,5,1,0),(6,6,1,0),(7,7,1,0),(8,8,1,0),(9,9,1,0),(10,10,1,0),(11,11,1,0),(12,13,1,0),(13,12,1,0),(14,14,1,0),(15,15,1,0),(16,16,0,0),(17,17,0,0),(18,18,1,0),(19,19,0,0),(20,20,0,0),(21,21,0,0),(22,22,0,0),(23,23,0,0),(24,24,1,0),(25,25,1,0),(26,26,1,0),(27,27,0,0),(28,28,0,0),(29,29,0,0),(30,30,0,0),(31,31,0,0),(32,32,1,0),(33,33,0,0),(34,34,1,0),(35,35,0,0),(36,36,1,0),(37,37,1,0),(38,38,1,0),(39,39,0,0),(40,40,0,0),(41,41,0,0),(42,42,0,0),(43,43,0,0),(44,44,0,0),(45,45,1,0),(46,46,1,0),(47,47,0,0),(48,48,0,0),(49,49,0,0),(50,50,0,0),(51,51,0,0),(52,52,0,0),(53,53,0,0),(54,54,0,0),(55,55,0,0),(56,56,0,0),(57,57,0,0),(58,58,0,0),(59,59,0,0),(60,60,1,0),(61,61,0,0),(62,62,0,0),(63,63,0,0),(64,64,0,0),(65,65,0,0),(66,66,1,0),(67,67,0,0),(68,69,0,0),(69,68,1,0),(70,70,0,0),(71,71,1,0),(72,72,0,0),(73,73,0,0),(74,74,1,0),(75,75,1,0),(76,76,0,0),(77,77,0,0),(78,78,0,0),(79,79,0,0),(80,80,1,0),(81,81,0,0),(82,82,0,0),(83,83,0,0),(84,84,0,0),(85,86,0,0),(86,85,0,0),(87,87,0,0),(88,90,0,0),(89,88,0,0),(90,89,1,0),(91,91,0,0),(92,89,1,0),(93,92,0,0),(94,93,0,0),(95,94,0,0),(96,89,1,0),(97,95,0,0),(98,89,1,0),(99,96,0,0),(100,97,0,0),(101,89,1,0),(102,98,0,0),(103,99,0,0),(104,89,1,0),(105,100,1,0),(106,89,1,0),(107,101,0,0),(108,89,1,0),(109,102,1,0),(110,103,1,0),(111,104,0,0),(112,105,0,0),(113,106,0,0),(114,107,0,0),(115,108,0,0),(116,109,0,0),(117,110,0,0),(118,111,1,0),(119,112,0,0),(120,113,0,0),(121,114,1,0),(122,115,0,0),(123,116,0,0),(124,117,0,0),(125,118,0,0),(126,119,1,0),(127,120,0,0),(128,121,0,0),(129,122,0,0),(130,124,0,0),(131,123,0,0),(132,125,0,0),(133,126,0,0),(134,127,0,0),(135,128,0,0),(136,129,1,0),(137,130,0,0),(138,131,0,0),(139,132,0,0),(140,133,0,0),(141,134,0,0),(142,136,0,0),(143,135,0,0),(144,137,0,0),(145,138,0,0),(146,139,0,0),(147,140,0,0),(148,141,0,0),(149,142,0,0),(150,143,0,0),(151,144,0,0),(152,146,0,0),(153,145,1,0),(154,147,0,0),(155,148,0,0),(156,149,0,0),(157,150,1,0),(158,151,1,0),(159,152,0,0),(160,153,0,0),(161,154,0,0),(162,155,0,0),(163,156,0,0),(164,158,0,0),(165,157,0,0),(166,159,0,0),(167,160,0,0),(168,161,0,0),(169,162,0,0),(170,163,1,0),(171,164,0,0),(172,165,0,0),(173,166,0,0),(174,167,0,0),(175,168,0,0),(176,169,0,0),(177,170,1,0),(178,171,1,0),(179,172,0,0),(180,173,1,0),(181,174,0,0),(182,175,0,0),(183,176,1,0),(184,177,0,0),(185,178,1,0),(186,179,0,0),(187,180,0,0),(188,181,0,0),(189,182,0,0),(190,183,0,0),(191,184,0,0),(192,185,0,0),(193,186,0,0),(194,187,1,0),(195,188,0,0),(196,189,0,0),(197,190,1,0),(198,191,0,0),(199,192,0,0),(200,193,0,0),(201,194,1,0),(202,195,0,0),(203,196,0,0),(204,197,0,0),(205,198,0,0),(206,199,0,0),(207,200,1,0),(208,202,0,0),(209,201,0,0),(210,203,1,0),(211,204,0,0),(212,205,0,0),(213,206,0,0),(214,207,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=378 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,14,1,2,NULL),(2,1,2,2,NULL),(3,14,3,2,NULL),(4,9,2,2,NULL),(5,14,4,2,NULL),(6,14,38,2,NULL),(7,14,7,2,NULL),(8,14,48,2,NULL),(9,14,8,2,NULL),(10,14,49,2,NULL),(11,14,20,2,NULL),(12,90,2,2,NULL),(13,92,2,2,NULL),(14,96,2,2,NULL),(15,98,2,2,NULL),(16,101,2,2,NULL),(17,104,2,2,NULL),(18,106,2,2,NULL),(19,108,2,2,NULL),(20,121,2,2,NULL),(21,51,5,2,NULL),(22,51,11,2,NULL),(23,51,13,2,NULL),(24,91,12,2,NULL),(25,91,24,2,NULL),(26,91,25,2,NULL),(27,114,28,2,NULL),(28,114,42,2,NULL),(29,114,44,2,NULL),(30,123,9,2,NULL),(31,123,17,2,NULL),(32,123,18,2,NULL),(33,189,34,2,NULL),(34,189,45,2,NULL),(35,189,46,2,NULL),(36,1,8,2,NULL),(37,9,8,2,NULL),(38,90,8,2,NULL),(39,92,8,2,NULL),(40,96,8,2,NULL),(41,98,8,2,NULL),(42,101,8,2,NULL),(43,104,8,2,NULL),(44,106,8,2,NULL),(45,108,8,2,NULL),(46,121,8,2,NULL),(47,67,4,2,NULL),(48,67,7,2,NULL),(49,67,8,2,NULL),(50,214,12,2,NULL),(51,214,24,2,NULL),(52,214,25,2,NULL),(53,63,4,2,NULL),(54,63,7,2,NULL),(55,63,8,2,NULL),(56,111,5,2,NULL),(57,111,11,2,NULL),(58,111,13,2,NULL),(59,147,12,2,NULL),(60,147,24,2,NULL),(61,147,25,2,NULL),(62,133,5,2,NULL),(63,133,11,2,NULL),(64,133,13,2,NULL),(65,199,12,2,NULL),(66,199,24,2,NULL),(67,199,25,2,NULL),(68,202,4,2,NULL),(69,202,7,2,NULL),(70,202,8,2,NULL),(71,59,12,2,NULL),(72,59,24,2,NULL),(73,59,25,2,NULL),(74,94,5,2,NULL),(75,94,11,2,NULL),(76,94,13,2,NULL),(77,99,4,2,NULL),(78,99,7,2,NULL),(79,99,8,2,NULL),(80,192,5,2,NULL),(81,192,11,2,NULL),(82,192,13,2,NULL),(83,208,4,2,NULL),(84,208,7,2,NULL),(85,208,8,2,NULL),(86,87,12,2,NULL),(87,87,24,2,NULL),(88,87,25,2,NULL),(89,102,4,2,NULL),(90,102,7,2,NULL),(91,102,8,2,NULL),(92,186,5,2,NULL),(93,186,11,2,NULL),(94,186,13,2,NULL),(95,83,4,2,NULL),(96,83,7,2,NULL),(97,83,8,2,NULL),(98,166,5,2,NULL),(99,166,11,2,NULL),(100,166,13,2,NULL),(101,212,12,2,NULL),(102,212,24,2,NULL),(103,212,25,2,NULL),(104,79,5,2,NULL),(105,79,11,2,NULL),(106,79,13,2,NULL),(107,196,4,2,NULL),(108,196,7,2,NULL),(109,1,3,2,NULL),(110,196,8,2,NULL),(111,9,1,2,NULL),(112,206,12,2,NULL),(113,1,4,2,NULL),(114,206,24,2,NULL),(115,1,38,2,NULL),(116,206,25,2,NULL),(117,1,7,2,NULL),(118,1,49,2,NULL),(119,1,48,2,NULL),(120,9,49,2,NULL),(121,1,20,2,NULL),(122,90,49,2,NULL),(123,90,1,2,NULL),(124,92,49,2,NULL),(125,92,1,2,NULL),(126,96,49,2,NULL),(127,9,4,2,NULL),(128,96,1,2,NULL),(129,98,49,2,NULL),(130,98,1,2,NULL),(131,9,38,2,NULL),(132,101,49,2,NULL),(133,101,1,2,NULL),(134,9,7,2,NULL),(135,104,49,2,NULL),(136,104,1,2,NULL),(137,9,48,2,NULL),(138,106,49,2,NULL),(139,106,1,2,NULL),(140,9,20,2,NULL),(141,108,49,2,NULL),(142,108,1,2,NULL),(143,121,49,2,NULL),(144,90,3,2,NULL),(145,121,1,2,NULL),(146,92,3,2,NULL),(147,96,3,2,NULL),(148,98,3,2,NULL),(149,101,3,2,NULL),(150,104,3,2,NULL),(151,106,3,2,NULL),(152,108,3,2,NULL),(153,121,3,2,NULL),(154,58,12,2,NULL),(155,58,24,2,NULL),(156,58,25,2,NULL),(157,146,5,2,NULL),(158,146,11,2,NULL),(159,146,13,2,NULL),(160,159,9,2,NULL),(161,159,17,2,NULL),(162,159,18,2,NULL),(163,174,34,2,NULL),(164,174,45,2,NULL),(165,174,46,2,NULL),(166,176,28,2,NULL),(167,176,42,2,NULL),(168,176,44,2,NULL),(169,90,4,2,NULL),(170,92,4,2,NULL),(171,96,4,2,NULL),(172,98,4,2,NULL),(173,101,4,2,NULL),(174,104,4,2,NULL),(175,106,4,2,NULL),(176,108,4,2,NULL),(177,121,4,2,NULL),(178,120,4,2,NULL),(179,120,7,2,NULL),(180,120,8,2,NULL),(181,149,12,2,NULL),(182,149,24,2,NULL),(183,149,25,2,NULL),(184,61,4,2,NULL),(185,61,7,2,NULL),(186,61,8,2,NULL),(187,156,12,2,NULL),(188,156,24,2,NULL),(189,156,25,2,NULL),(190,200,5,2,NULL),(191,200,11,2,NULL),(192,200,13,2,NULL),(193,93,5,2,NULL),(194,93,11,2,NULL),(195,93,13,2,NULL),(196,116,4,2,NULL),(197,116,7,2,NULL),(198,116,8,2,NULL),(199,205,12,2,NULL),(200,205,24,2,NULL),(201,205,25,2,NULL),(202,68,4,2,NULL),(203,68,7,2,NULL),(204,68,8,2,NULL),(205,76,12,2,NULL),(206,76,24,2,NULL),(207,76,25,2,NULL),(208,190,5,2,NULL),(209,190,11,2,NULL),(210,190,13,2,NULL),(211,88,5,2,NULL),(212,88,11,2,NULL),(213,88,13,2,NULL),(214,122,4,2,NULL),(215,122,7,2,NULL),(216,122,8,2,NULL),(217,72,4,2,NULL),(218,72,7,2,NULL),(219,72,8,2,NULL),(220,167,5,2,NULL),(221,167,11,2,NULL),(222,167,13,2,NULL),(223,187,12,2,NULL),(224,187,24,2,NULL),(225,187,25,2,NULL),(226,54,5,2,NULL),(227,54,11,2,NULL),(228,54,13,2,NULL),(229,152,4,2,NULL),(230,152,7,2,NULL),(231,152,8,2,NULL),(232,162,12,2,NULL),(233,162,24,2,NULL),(234,162,25,2,NULL),(235,64,4,2,NULL),(236,64,7,2,NULL),(237,64,8,2,NULL),(238,164,5,2,NULL),(239,164,11,2,NULL),(240,164,13,2,NULL),(241,203,12,2,NULL),(242,203,24,2,NULL),(243,203,25,2,NULL),(244,90,38,2,NULL),(245,92,38,2,NULL),(246,96,38,2,NULL),(247,98,38,2,NULL),(248,101,38,2,NULL),(249,104,38,2,NULL),(250,106,38,2,NULL),(251,108,38,2,NULL),(252,121,38,2,NULL),(253,20,30,2,NULL),(254,29,37,2,NULL),(255,40,5,2,NULL),(256,35,53,2,NULL),(257,40,11,2,NULL),(258,117,43,2,NULL),(259,40,13,2,NULL),(260,73,12,2,NULL),(261,90,7,2,NULL),(262,73,24,2,NULL),(263,92,7,2,NULL),(264,73,25,2,NULL),(265,96,7,2,NULL),(266,78,28,2,NULL),(267,98,7,2,NULL),(268,78,42,2,NULL),(269,101,7,2,NULL),(270,78,44,2,NULL),(271,104,7,2,NULL),(272,95,9,2,NULL),(273,106,7,2,NULL),(274,95,17,2,NULL),(275,108,7,2,NULL),(276,95,18,2,NULL),(277,121,7,2,NULL),(278,148,34,2,NULL),(279,90,48,2,NULL),(280,148,45,2,NULL),(281,92,48,2,NULL),(282,148,46,2,NULL),(283,96,48,2,NULL),(284,53,4,2,NULL),(285,98,48,2,NULL),(286,53,7,2,NULL),(287,101,48,2,NULL),(288,53,8,2,NULL),(289,104,48,2,NULL),(290,119,12,2,NULL),(291,106,48,2,NULL),(292,119,24,2,NULL),(293,108,48,2,NULL),(294,119,25,2,NULL),(295,121,48,2,NULL),(296,44,4,2,NULL),(297,77,20,2,NULL),(298,44,7,2,NULL),(299,142,43,2,NULL),(300,44,8,2,NULL),(301,17,20,2,NULL),(302,144,12,2,NULL),(303,52,43,2,NULL),(304,144,24,2,NULL),(305,151,30,2,NULL),(306,144,25,2,NULL),(307,70,20,2,NULL),(308,195,5,2,NULL),(309,129,30,2,NULL),(310,195,11,2,NULL),(311,135,43,2,NULL),(312,195,13,2,NULL),(313,16,20,2,NULL),(314,100,12,2,NULL),(315,31,30,2,NULL),(316,100,24,2,NULL),(317,33,43,2,NULL),(318,100,25,2,NULL),(319,43,20,2,NULL),(320,175,4,2,NULL),(321,132,30,2,NULL),(322,175,7,2,NULL),(323,48,30,2,NULL),(324,175,8,2,NULL),(325,125,43,2,NULL),(326,179,5,2,NULL),(327,145,20,2,NULL),(328,179,11,2,NULL),(329,30,30,2,NULL),(330,179,13,2,NULL),(331,62,43,2,NULL),(332,115,12,2,NULL),(333,85,20,2,NULL),(334,115,24,2,NULL),(335,22,20,2,NULL),(336,115,25,2,NULL),(337,23,30,2,NULL),(338,128,5,2,NULL),(339,65,43,2,NULL),(340,128,11,2,NULL),(341,128,13,2,NULL),(342,138,4,2,NULL),(343,138,7,2,NULL),(344,138,8,2,NULL),(345,130,5,2,NULL),(346,130,11,2,NULL),(347,130,13,2,NULL),(348,165,4,2,NULL),(349,165,7,2,NULL),(350,165,8,2,NULL),(351,57,4,2,NULL),(352,57,7,2,NULL),(353,57,8,2,NULL),(354,171,5,2,NULL),(355,171,11,2,NULL),(356,171,13,2,NULL),(357,173,12,2,NULL),(358,173,24,2,NULL),(359,173,25,2,NULL),(360,47,4,2,NULL),(361,47,7,2,NULL),(362,47,8,2,NULL),(363,84,5,2,NULL),(364,84,11,2,NULL),(365,84,13,2,NULL),(366,182,12,2,NULL),(367,182,24,2,NULL),(368,182,25,2,NULL),(369,49,4,2,NULL),(370,49,7,2,NULL),(371,49,8,2,NULL),(372,168,5,2,NULL),(373,168,11,2,NULL),(374,168,13,2,NULL),(375,198,12,2,NULL),(376,198,24,2,NULL),(377,198,25,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(5,'android.permission.ACCESS_NETWORK_STATE'),(3,'android.permission.INTERNET'),(1,'android.permission.READ_PHONE_STATE'),(2,'android.permission.SET_WALLPAPER'),(4,'android.permission.WRITE_EXTERNAL_STORAGE');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'mailto:support@ysler.com',NULL,NULL,NULL),(2,NULL,NULL,'market://search?q=(.*)',NULL,NULL,NULL),(3,NULL,NULL,'market://search?q=pname:Ysler',NULL,NULL,NULL),(4,NULL,NULL,'market://search?q=pname:Ysler',NULL,NULL,NULL),(5,NULL,NULL,'mailto:joycetrump5@gmail.com',NULL,NULL,NULL),(6,NULL,NULL,'market://search?q=(.*)',NULL,NULL,NULL),(7,NULL,NULL,'market://search?q=(.*)',NULL,NULL,NULL),(8,NULL,NULL,'market://search?q=pname:Frederic',NULL,NULL,NULL),(9,NULL,NULL,'mailto:support@ysler.com',NULL,NULL,NULL),(10,NULL,NULL,'market://search?q=jackeey.wu',NULL,NULL,NULL),(11,NULL,NULL,'market://search?q=com.jackeey.eWallpapers.cartoon_hello_kitty',NULL,NULL,NULL),(12,NULL,NULL,'market://search?q=(.*)',NULL,NULL,NULL),(13,NULL,NULL,'http://www.imnet.us/android/v2/wallpapers/help?category_id=(.*)',NULL,NULL,NULL),(14,NULL,NULL,'market://search?q=(.*)',NULL,NULL,NULL),(15,NULL,NULL,'market://search?q=callmejack',NULL,NULL,NULL),(16,NULL,NULL,'market://search?q=callmejack',NULL,NULL,NULL),(17,NULL,NULL,'mailto:jackeey.wu@gmail.com',NULL,NULL,NULL),(18,NULL,NULL,'market://search?q=(.*)',NULL,NULL,NULL),(19,NULL,NULL,'market://search?q=(.*)',NULL,NULL,NULL),(20,NULL,NULL,'market://search?q=callmejack',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,2,2),(8,2,3),(9,3,1),(10,2,4),(11,3,2),(12,2,5),(13,3,3),(14,3,4),(15,3,5),(16,4,2),(17,4,3),(18,4,4),(19,4,5),(20,4,6),(21,5,2),(22,6,2),(23,5,3),(24,6,3),(25,5,4),(26,6,4),(27,5,5),(28,6,5),(29,5,6),(30,6,6),(31,7,1),(32,7,2),(33,7,3),(34,7,4),(35,7,5),(36,7,6);
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

-- Dump completed on 2015-10-12  3:30:40
