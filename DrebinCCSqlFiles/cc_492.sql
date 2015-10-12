-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_492
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
INSERT INTO `ActionStrings` VALUES (6,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(2,'android.intent.action.SEND'),(4,'android.intent.action.SENDTO'),(3,'android.intent.action.VIEW'),(7,'android.net.conn.CONNECTIVITY_CHANGE'),(9,'android.settings.WIFI_SETTINGS'),(8,'com.eoemobile.api.app_stat_broadcast'),(10,'com.eoemobile.apps.eWallpaper.SEARCH_ACTION'),(5,'com.eoemobile.paylib.ACTION_UPDATE_CONFIG');
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
INSERT INTO `Applications` VALUES (1,'com.ysler.wps.Christmas',120),(2,'com.ysler.wps.love',120),(3,'com.ysler.wps.easter',120),(4,'com.joyce.wps.hdnature',120),(5,'com.ysler.wps.colorful',120),(6,'com.ysler.wps.cute',120),(7,'com.jackeey.eWallpapers.nba',512);
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.ysler.wps.base.Main'),(2,2,'com.ysler.wps.base.Main'),(3,4,'com.joyce.wps.base.Main'),(4,5,'com.ysler.wps.base.Main'),(5,3,'com.ysler.wps.base.Main'),(6,6,'com.ysler.wps.base.Main'),(7,4,'com.joyce.wps.base.Main$10'),(8,2,'com.ysler.wps.base.Main$9'),(9,3,'com.ysler.wps.base.Main$9'),(10,2,'com.ysler.wps.base.Main$10'),(11,1,'com.ysler.wps.base.Main$9'),(12,4,'com.joyce.wps.base.Main$9'),(13,1,'com.ysler.wps.base.Main$10'),(14,5,'com.ysler.wps.base.Main$10'),(15,3,'com.ysler.wps.base.Main$10'),(16,7,'com.jackeey.eWallpapers.Wallpapers'),(17,6,'com.ysler.wps.base.Main$10'),(18,5,'com.ysler.wps.base.Main$9'),(19,7,'com.jackeey.eWallpapers.CategoriesActivity'),(20,7,'com.jackeey.eWallpapers.CategoryPreViewActivity'),(21,6,'com.ysler.wps.base.Main$9'),(22,7,'com.jackeey.eWallpapers.GalleryActivity'),(23,7,'com.jackeey.eWallpapers.ShowSDPhotoActivity'),(24,7,'com.jackeey.eWallpapers.SeachTagsActivity'),(25,7,'com.jackeey.eWallpapers.SearchResultsPreViewActivity'),(26,7,'com.jackeey.eWallpapers.SearchResultsActivity'),(27,7,'com.jackeey.eWallpapers.ShowPhotoActivity'),(28,7,'com.jackeey.eWallpapers.UpdateActivity'),(29,7,'com.jackeey.eWallpapers.FeedBackActivity'),(30,7,'com.eoemobile.api.stat.EoeService'),(31,7,'com.jackeey.eWallpapers.DealUserIdService'),(32,7,'com.jackeey.eWallpapers.MyBroadcastReceiver'),(33,7,'com.eoemobile.api.stat.EoeReceiver'),(34,7,'com.jackeey.eWallpapers.SearchResultsPreViewActivity$5'),(35,7,'com.jackeey.eWallpapers.Wallpapers$4'),(36,7,'com.jackeey.eWallpapers.CategoryPreViewActivity$4'),(37,7,'com.jackeey.eWallpapers.Wallpapers$5'),(38,7,'com.jackeey.eWallpapers.GalleryActivity$2'),(39,7,'com.jackeey.eWallpapers.GalleryActivity$3'),(40,7,'com.jackeey.eWallpapers.CategoryPreViewActivity$5'),(41,7,'com.jackeey.eWallpapers.SearchResultsPreViewActivity$3'),(42,7,'com.jackeey.eWallpapers.Wallpapers$6'),(43,7,'com.eoemobile.api.stat.c'),(44,7,'com.jackeey.eWallpapers.CategoryPreViewActivity$3'),(45,7,'com.jackeey.eWallpapers.CategoriesActivity$3'),(46,7,'com.jackeey.eWallpapers.SeachTagsActivity$1'),(47,7,'com.jackeey.eWallpapers.Wallpapers$3'),(48,7,'com.jackeey.eWallpapers.Wallpapers$9'),(49,7,'com.jackeey.eWallpapers.SearchResultsPreViewActivity$4');
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
INSERT INTO `ComponentExtras` VALUES (1,13,'com.eoemobile.apps.eWallpaper.SEARCH_KEYWORD'),(2,15,'com.eoemobile.apps.eWallpaper.type'),(3,15,'com.eoemobile.apps.eWallpaper.category'),(4,21,'noConnectivity'),(5,15,'com.eoemobile.action.COMEFROM_CATEGORYPREVIEW'),(6,16,'update_url'),(7,15,'com.eoemobile.action.COMEFROM_WALLPAPERS'),(8,14,'com.eoemobile.apps.eWallpaper.SEARCH_KEYWORD'),(9,9,'com.eoemobile.apps.eWallpaper.category');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,5,'a',1,NULL,NULL),(5,4,'a',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,16,'a',1,NULL,NULL),(8,19,'a',0,NULL,NULL),(9,20,'a',0,NULL,NULL),(10,22,'a',0,NULL,NULL),(11,23,'a',0,NULL,NULL),(12,24,'a',0,NULL,NULL),(13,25,'a',0,NULL,NULL),(14,26,'a',0,NULL,NULL),(15,27,'a',0,NULL,NULL),(16,28,'a',0,NULL,NULL),(17,29,'a',0,NULL,NULL),(18,30,'s',0,NULL,NULL),(19,31,'s',0,NULL,NULL),(20,32,'r',1,NULL,NULL),(21,33,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,3),(3,3,2),(4,4,1),(5,5,4),(6,6,5),(7,7,3),(8,8,6),(9,9,2),(10,10,1),(11,11,4),(12,12,5),(13,13,6),(14,14,3),(15,15,2),(16,16,1),(17,17,5),(18,18,4),(19,19,3),(20,20,2),(21,21,6),(22,22,1),(23,23,4),(24,24,5),(25,25,3),(26,26,2),(27,27,6),(28,29,4),(29,28,5),(30,30,6),(31,31,15),(32,32,15),(33,32,17),(34,32,11),(35,32,14),(36,32,13),(37,32,7),(38,32,10),(39,32,9),(40,33,7),(41,34,17),(42,34,7),(43,34,10),(44,34,9),(45,34,11),(46,34,14),(47,34,13),(48,34,15),(49,35,8),(50,36,15),(51,37,9),(52,37,10),(53,37,11),(54,37,7),(55,37,17),(56,37,13),(57,37,14),(58,37,15),(59,38,11),(60,38,9),(61,38,10),(62,38,7),(63,38,17),(64,38,15),(65,38,13),(66,38,14),(67,39,15),(68,39,14),(69,39,17),(70,39,7),(71,39,9),(72,39,11),(73,39,10),(74,39,13),(75,40,17),(76,40,15),(77,40,10),(78,40,9),(79,40,7),(80,40,14),(81,40,13),(82,40,11),(83,41,17),(84,41,7),(85,41,13),(86,41,15),(87,41,14),(88,41,9),(89,41,11),(90,41,10),(91,42,9),(92,43,9),(93,43,13),(94,43,10),(95,43,7),(96,43,11),(97,43,17),(98,43,14),(99,43,15),(100,44,9),(101,45,11),(102,46,10),(103,47,11),(104,47,17),(105,47,10),(106,47,13),(107,47,15),(108,47,14),(109,47,7),(110,47,9),(111,48,14),(112,49,14),(113,50,7),(114,51,21),(115,52,9),(116,53,13),(117,54,10),(118,55,12),(119,56,7),(120,57,7),(121,57,17),(122,57,14),(123,57,15),(124,57,13),(125,57,10),(126,57,11),(127,57,9),(128,58,7),(129,59,12),(130,60,8),(131,61,17),(132,61,16),(133,61,13),(134,61,12),(135,61,15),(136,61,14),(137,61,8),(138,61,9),(139,61,10),(140,61,11),(141,62,15),(142,62,14),(143,62,13),(144,62,17),(145,62,7),(146,62,11),(147,62,9),(148,62,10),(149,63,8),(150,64,14),(151,64,13),(152,64,12),(153,64,11),(154,64,10),(155,64,9),(156,64,7),(157,64,17),(158,64,15),(159,65,13),(160,65,15),(161,65,14),(162,65,9),(163,65,11),(164,65,10),(165,65,7),(166,65,17),(167,66,11),(168,67,13),(169,68,11),(170,68,13),(171,68,14),(172,68,15),(173,68,17),(174,68,7),(175,68,9),(176,68,10),(177,69,7),(178,70,10),(179,71,13),(180,72,7),(181,72,10),(182,72,9),(183,72,11),(184,72,14),(185,72,13),(186,72,15),(187,72,17),(188,73,15),(189,74,14),(190,74,13),(191,74,15),(192,74,10),(193,74,9),(194,74,11),(195,74,7),(196,74,17),(197,75,11),(198,76,9),(199,76,13),(200,76,10),(201,76,14),(202,76,7),(203,76,11),(204,76,17),(205,76,15),(206,77,7),(207,78,7),(208,78,10),(209,78,9),(210,78,11),(211,78,17),(212,78,15),(213,78,13),(214,78,14),(215,79,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.ysler.wps.base.Main: void doShareByEmail(java.lang.String)>',10,'a',NULL),(2,7,'<com.joyce.wps.base.Main$10: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(3,8,'<com.ysler.wps.base.Main$9: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(4,1,'<com.ysler.wps.base.Main: void doShareBySMS(java.lang.String)>',24,'a',NULL),(5,9,'<com.ysler.wps.base.Main$9: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(6,4,'<com.ysler.wps.base.Main: void doShareByEmail(java.lang.String)>',10,'a',NULL),(7,3,'<com.joyce.wps.base.Main: void doShareByEmail(java.lang.String)>',10,'a',NULL),(8,6,'<com.ysler.wps.base.Main: void doShareByEmail(java.lang.String)>',10,'a',NULL),(9,10,'<com.ysler.wps.base.Main$10: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(10,11,'<com.ysler.wps.base.Main$9: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(11,5,'<com.ysler.wps.base.Main: void doShareByEmail(java.lang.String)>',10,'a',NULL),(12,4,'<com.ysler.wps.base.Main: void doShareBySMS(java.lang.String)>',24,'a',NULL),(13,6,'<com.ysler.wps.base.Main: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(14,12,'<com.joyce.wps.base.Main$9: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(15,2,'<com.ysler.wps.base.Main: void doShareBySMS(java.lang.String)>',24,'a',NULL),(16,13,'<com.ysler.wps.base.Main$10: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(17,14,'<com.ysler.wps.base.Main$10: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(18,15,'<com.ysler.wps.base.Main$10: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(19,3,'<com.joyce.wps.base.Main: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(20,2,'<com.ysler.wps.base.Main: void doShareByEmail(java.lang.String)>',10,'a',NULL),(21,17,'<com.ysler.wps.base.Main$10: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(22,1,'<com.ysler.wps.base.Main: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(23,5,'<com.ysler.wps.base.Main: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(24,18,'<com.ysler.wps.base.Main$9: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(25,3,'<com.joyce.wps.base.Main: void doShareBySMS(java.lang.String)>',24,'a',NULL),(26,2,'<com.ysler.wps.base.Main: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(27,21,'<com.ysler.wps.base.Main$9: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(28,4,'<com.ysler.wps.base.Main: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(29,5,'<com.ysler.wps.base.Main: void doShareBySMS(java.lang.String)>',24,'a',NULL),(30,6,'<com.ysler.wps.base.Main: void doShareBySMS(java.lang.String)>',24,'a',NULL),(31,27,'<com.jackeey.eWallpapers.ShowPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(32,34,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity$5: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(33,16,'<com.jackeey.eWallpapers.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',46,'a',NULL),(34,35,'<com.jackeey.eWallpapers.Wallpapers$4: void onClick(android.view.View)>',9,'a',NULL),(35,19,'<com.jackeey.eWallpapers.CategoriesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(36,27,'<com.jackeey.eWallpapers.ShowPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(37,36,'<com.jackeey.eWallpapers.CategoryPreViewActivity$4: void onClick(android.view.View)>',15,'a',NULL),(38,37,'<com.jackeey.eWallpapers.Wallpapers$5: void onClick(android.view.View)>',15,'a',NULL),(39,38,'<com.jackeey.eWallpapers.GalleryActivity$2: void onClick(android.view.View)>',24,'a',NULL),(40,39,'<com.jackeey.eWallpapers.GalleryActivity$3: void onClick(android.view.View)>',15,'a',NULL),(41,40,'<com.jackeey.eWallpapers.CategoryPreViewActivity$5: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(42,20,'<com.jackeey.eWallpapers.CategoryPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(43,41,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity$3: void onClick(android.view.View)>',44,'a',NULL),(44,20,'<com.jackeey.eWallpapers.CategoryPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(45,23,'<com.jackeey.eWallpapers.ShowSDPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(46,22,'<com.jackeey.eWallpapers.GalleryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(47,42,'<com.jackeey.eWallpapers.Wallpapers$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(48,26,'<com.jackeey.eWallpapers.SearchResultsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(49,26,'<com.jackeey.eWallpapers.SearchResultsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(50,16,'<com.jackeey.eWallpapers.Wallpapers: void onCreate(android.os.Bundle)>',18,'s',NULL),(51,33,'<com.eoemobile.api.stat.EoeReceiver: void onReceive(android.content.Context,android.content.Intent)>',7,'s',NULL),(52,20,'<com.jackeey.eWallpapers.CategoryPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(53,25,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(54,22,'<com.jackeey.eWallpapers.GalleryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(55,24,'<com.jackeey.eWallpapers.SeachTagsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(56,16,'<com.jackeey.eWallpapers.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(57,26,'<com.jackeey.eWallpapers.SearchResultsActivity: void doShareBySMS()>',26,'a',NULL),(58,16,'<com.jackeey.eWallpapers.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(59,24,'<com.jackeey.eWallpapers.SeachTagsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(60,19,'<com.jackeey.eWallpapers.CategoriesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(61,43,'<com.eoemobile.api.stat.c: java.lang.String e(android.content.Context)>',10,'r',NULL),(62,44,'<com.jackeey.eWallpapers.CategoryPreViewActivity$3: void onClick(android.view.View)>',45,'a',NULL),(63,45,'<com.jackeey.eWallpapers.CategoriesActivity$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(64,46,'<com.jackeey.eWallpapers.SeachTagsActivity$1: void onClick(android.view.View)>',16,'a',NULL),(65,27,'<com.jackeey.eWallpapers.ShowPhotoActivity: void doShareByEmail()>',9,'a',NULL),(66,23,'<com.jackeey.eWallpapers.ShowSDPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(67,25,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(68,27,'<com.jackeey.eWallpapers.ShowPhotoActivity: void doShareBySMS()>',26,'a',NULL),(69,16,'<com.jackeey.eWallpapers.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(70,22,'<com.jackeey.eWallpapers.GalleryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(71,25,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(72,47,'<com.jackeey.eWallpapers.Wallpapers$3: void onClick(android.view.View)>',42,'a',NULL),(73,27,'<com.jackeey.eWallpapers.ShowPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(74,48,'<com.jackeey.eWallpapers.Wallpapers$9: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(75,23,'<com.jackeey.eWallpapers.ShowSDPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(76,49,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity$4: void onClick(android.view.View)>',15,'a',NULL),(77,16,'<com.jackeey.eWallpapers.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',29,'a',NULL),(78,26,'<com.jackeey.eWallpapers.SearchResultsActivity: void doShareByEmail()>',9,'a',NULL),(79,26,'<com.jackeey.eWallpapers.SearchResultsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,2),(2,2,3),(3,3,3),(4,4,3),(5,5,3),(6,6,2),(7,7,2),(8,8,2),(9,9,3),(10,10,3),(11,11,2),(12,12,3),(13,14,3),(14,13,4),(15,15,3),(16,16,3),(17,17,3),(18,18,3),(19,19,4),(20,20,2),(21,21,3),(22,22,4),(23,23,4),(24,24,3),(25,25,3),(26,26,4),(27,27,3),(28,28,3),(29,29,4),(30,30,3),(31,32,9),(32,41,9),(33,47,9),(34,57,3),(35,58,3),(36,61,8),(37,64,10),(38,65,2),(39,68,3),(40,74,3),(41,78,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,31,'com/jackeey/eWallpapers/SeachTagsActivity'),(2,33,'com/jackeey/eWallpapers/FeedBackActivity'),(3,34,'com/jackeey/eWallpapers/SeachTagsActivity'),(4,35,'com/jackeey/eWallpapers/SeachTagsActivity'),(5,36,'com/jackeey/eWallpapers/CategoriesActivity'),(6,37,'com/jackeey/eWallpapers/CategoriesActivity'),(7,38,'com/jackeey/eWallpapers/CategoriesActivity'),(8,39,'com/jackeey/eWallpapers/ShowSDPhotoActivity'),(9,40,'com/jackeey/eWallpapers/CategoriesActivity'),(10,42,'com/jackeey/eWallpapers/CategoriesActivity'),(11,43,'com/jackeey/eWallpapers/SearchResultsActivity'),(12,44,'com/jackeey/eWallpapers/SeachTagsActivity'),(13,45,'com/jackeey/eWallpapers/Wallpapers'),(14,46,'com/jackeey/eWallpapers/SeachTagsActivity'),(15,48,'com/jackeey/eWallpapers/CategoriesActivity'),(16,49,'com/jackeey/eWallpapers/SeachTagsActivity'),(17,50,'com/jackeey/eWallpapers/DealUserIdService'),(18,51,'com/eoemobile/api/stat/EoeService'),(19,52,'com/jackeey/eWallpapers/Wallpapers'),(20,53,'com/jackeey/eWallpapers/Wallpapers'),(21,54,'com/jackeey/eWallpapers/CategoriesActivity'),(22,55,'com/jackeey/eWallpapers/CategoriesActivity'),(23,56,'com/jackeey/eWallpapers/GalleryActivity'),(24,59,'com/jackeey/eWallpapers/Wallpapers'),(25,60,'com/jackeey/eWallpapers/Wallpapers'),(26,62,'com/jackeey/eWallpapers/ShowPhotoActivity'),(27,63,'com/jackeey/eWallpapers/CategoryPreViewActivity'),(28,64,'com/jackeey/eWallpapers/SearchResultsPreViewActivity'),(29,66,'com/jackeey/eWallpapers/CategoriesActivity'),(30,67,'com/jackeey/eWallpapers/CategoriesActivity'),(31,69,'com/jackeey/eWallpapers/SeachTagsActivity'),(32,70,'com/jackeey/eWallpapers/Wallpapers'),(33,71,'com/jackeey/eWallpapers/SeachTagsActivity'),(34,72,'com/jackeey/eWallpapers/ShowPhotoActivity'),(35,73,'com/jackeey/eWallpapers/Wallpapers'),(36,75,'com/jackeey/eWallpapers/SeachTagsActivity'),(37,76,'com/jackeey/eWallpapers/CategoriesActivity'),(38,77,'com/jackeey/eWallpapers/CategoriesActivity'),(39,79,'com/jackeey/eWallpapers/Wallpapers');
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
INSERT INTO `IData` VALUES (1,2,1),(2,3,2),(3,5,3),(4,9,4),(5,10,5),(6,14,6),(7,13,7),(8,16,8),(9,18,9),(10,17,10),(11,19,11),(12,21,12),(13,22,13),(14,24,15),(15,23,14),(16,27,16),(17,26,17),(18,29,18),(19,58,19),(20,74,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'android.intent.extra.TEXT'),(2,1,'android.intent.extra.SUBJECT'),(3,4,'sms_body'),(4,6,'android.intent.extra.TEXT'),(5,7,'android.intent.extra.TEXT'),(6,8,'android.intent.extra.TEXT'),(7,6,'android.intent.extra.SUBJECT'),(8,7,'android.intent.extra.SUBJECT'),(9,8,'android.intent.extra.SUBJECT'),(10,11,'android.intent.extra.TEXT'),(11,12,'sms_body'),(12,11,'android.intent.extra.SUBJECT'),(13,13,'android.intent.extra.SUBJECT'),(14,15,'sms_body'),(15,19,'android.intent.extra.SUBJECT'),(16,20,'android.intent.extra.TEXT'),(17,22,'android.intent.extra.SUBJECT'),(18,20,'android.intent.extra.SUBJECT'),(19,23,'android.intent.extra.SUBJECT'),(20,25,'sms_body'),(21,26,'android.intent.extra.SUBJECT'),(22,29,'android.intent.extra.SUBJECT'),(23,28,'sms_body'),(24,30,'sms_body'),(25,39,'com.eoemobile.EXTRA_DATA_SINGLE_PHOTO_INDEX'),(26,39,'com.eoemobile.action.COMEFROM_CATEGORYPREVIEW'),(27,43,'com.eoemobile.EXTRA_DATA_PHOTO_PAGE_INDEX'),(28,43,'com.eoemobile.EXTRA_DATA_SINGLE_PHOTO_INDEX'),(29,43,'com.eoemobile.apps.eWallpaper.SEARCH_KEYWORD'),(30,43,'com.eoemobile.action.COMEFROM_CATEGORYPREVIEW'),(31,57,'sms_body'),(32,62,'com.eoemobile.EXTRA_DATA_PHOTO_PAGE_INDEX'),(33,62,'com.eoemobile.apps.eWallpaper.category'),(34,62,'com.eoemobile.EXTRA_DATA_SINGLE_PHOTO_INDEX'),(35,62,'com.eoemobile.action.COMEFROM_CATEGORYPREVIEW'),(36,63,'com.eoemobile.apps.eWallpaper.category'),(37,64,'com.eoemobile.apps.eWallpaper.SEARCH_KEYWORD'),(38,65,'android.intent.extra.TEXT'),(39,65,'android.intent.extra.SUBJECT'),(40,68,'sms_body'),(41,72,'com.eoemobile.apps.eWallpaper.type'),(42,72,'com.eoemobile.EXTRA_DATA_PHOTO_PAGE_INDEX'),(43,72,'com.eoemobile.action.COMEFROM_WALLPAPERS'),(44,72,'com.eoemobile.EXTRA_DATA_SINGLE_PHOTO_INDEX'),(45,78,'android.intent.extra.TEXT'),(46,78,'android.intent.extra.SUBJECT');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,7),(9,8,5),(10,8,6),(11,9,8),(12,9,6),(13,9,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,1,'message','rfc882'),(2,4,'vnd.android-dir','mms-sms'),(3,6,'message','rfc882'),(4,7,'message','rfc882'),(5,8,'message','rfc882'),(6,11,'message','rfc882'),(7,12,'vnd.android-dir','mms-sms'),(8,15,'vnd.android-dir','mms-sms'),(9,20,'message','rfc882'),(10,25,'vnd.android-dir','mms-sms'),(11,28,'vnd.android-dir','mms-sms'),(12,30,'vnd.android-dir','mms-sms'),(13,57,'vnd.android-dir','mms-sms'),(14,65,'message','rfc882'),(15,68,'vnd.android-dir','mms-sms'),(16,78,'message','rfc882');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,31,'com.jackeey.eWallpapers.nba'),(2,33,'com.jackeey.eWallpapers.nba'),(3,34,'com.jackeey.eWallpapers.nba'),(4,35,'com.jackeey.eWallpapers.nba'),(5,36,'com.jackeey.eWallpapers.nba'),(6,37,'com.jackeey.eWallpapers.nba'),(7,38,'com.jackeey.eWallpapers.nba'),(8,39,'com.jackeey.eWallpapers.nba'),(9,40,'com.jackeey.eWallpapers.nba'),(10,42,'com.jackeey.eWallpapers.nba'),(11,43,'com.jackeey.eWallpapers.nba'),(12,44,'com.jackeey.eWallpapers.nba'),(13,45,'com.jackeey.eWallpapers.nba'),(14,46,'com.jackeey.eWallpapers.nba'),(15,48,'com.jackeey.eWallpapers.nba'),(16,49,'com.jackeey.eWallpapers.nba'),(17,50,'com.jackeey.eWallpapers.nba'),(18,51,'com.jackeey.eWallpapers.nba'),(19,52,'com.jackeey.eWallpapers.nba'),(20,53,'com.jackeey.eWallpapers.nba'),(21,54,'com.jackeey.eWallpapers.nba'),(22,55,'com.jackeey.eWallpapers.nba'),(23,56,'com.jackeey.eWallpapers.nba'),(24,59,'com.jackeey.eWallpapers.nba'),(25,60,'com.jackeey.eWallpapers.nba'),(26,62,'com.jackeey.eWallpapers.nba'),(27,63,'com.jackeey.eWallpapers.nba'),(28,64,'com.jackeey.eWallpapers.nba'),(29,66,'com.jackeey.eWallpapers.nba'),(30,67,'com.jackeey.eWallpapers.nba'),(31,69,'com.jackeey.eWallpapers.nba'),(32,70,'com.jackeey.eWallpapers.nba'),(33,71,'com.jackeey.eWallpapers.nba'),(34,72,'com.jackeey.eWallpapers.nba'),(35,73,'com.jackeey.eWallpapers.nba'),(36,75,'com.jackeey.eWallpapers.nba'),(37,76,'com.jackeey.eWallpapers.nba'),(38,77,'com.jackeey.eWallpapers.nba'),(39,79,'com.jackeey.eWallpapers.nba');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,2,0),(2,1,0),(3,3,0),(4,5,0),(5,4,0),(6,6,0),(7,7,0),(8,20,0),(9,21,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,3,1,0),(4,4,1,0),(5,5,1,0),(6,6,1,0),(7,7,1,0),(8,8,1,0),(9,9,1,0),(10,10,1,0),(11,11,1,0),(12,12,1,0),(13,13,1,0),(14,14,1,0),(15,15,1,0),(16,16,1,0),(17,17,1,0),(18,18,1,0),(19,19,1,0),(20,20,1,0),(21,21,1,0),(22,22,1,0),(23,23,1,0),(24,24,1,0),(25,25,1,0),(26,26,1,0),(27,27,1,0),(28,29,1,0),(29,28,1,0),(30,30,1,0),(31,31,0,0),(32,32,1,0),(33,33,0,0),(34,34,0,0),(35,35,0,0),(36,36,0,0),(37,37,0,0),(38,38,0,0),(39,39,0,0),(40,40,0,0),(41,41,1,0),(42,42,0,0),(43,43,0,0),(44,44,0,0),(45,45,0,0),(46,46,0,0),(47,47,1,0),(48,48,0,0),(49,49,0,0),(50,50,0,0),(51,51,0,0),(52,52,0,0),(53,53,0,0),(54,54,0,0),(55,55,0,0),(56,56,0,0),(57,57,1,0),(58,58,1,0),(59,59,0,0),(60,60,0,0),(61,61,1,0),(62,62,0,0),(63,63,0,0),(64,64,0,0),(65,65,1,0),(66,66,0,0),(67,67,0,0),(68,68,1,0),(69,69,0,0),(70,70,0,0),(71,71,0,0),(72,72,0,0),(73,73,0,0),(74,74,1,0),(75,75,0,0),(76,76,0,0),(77,77,0,0),(78,78,1,0),(79,79,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (7,'android.permission.ACCESS_COARSE_LOCATION'),(5,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(3,'android.permission.INTERNET'),(1,'android.permission.READ_PHONE_STATE'),(2,'android.permission.SET_WALLPAPER'),(4,'android.permission.WRITE_EXTERNAL_STORAGE');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'market://search?q=pname:Frederic',NULL,NULL,NULL),(2,NULL,NULL,'market://search?q=(.*)',NULL,NULL,NULL),(3,NULL,NULL,'market://search?q=(.*)',NULL,NULL,NULL),(4,NULL,NULL,'market://search?q=pname:Ysler',NULL,NULL,NULL),(5,NULL,NULL,'market://search?q=(.*)',NULL,NULL,NULL),(6,NULL,NULL,'market://search?q=(.*)',NULL,NULL,NULL),(7,NULL,NULL,'mailto:support@ysler.com',NULL,NULL,NULL),(8,NULL,NULL,'market://search?q=pname:Ysler',NULL,NULL,NULL),(9,NULL,NULL,'market://search?q=pname:Ysler',NULL,NULL,NULL),(10,NULL,NULL,'market://search?q=pname:Ysler',NULL,NULL,NULL),(11,NULL,NULL,'mailto:joycetrump5@gmail.com',NULL,NULL,NULL),(12,NULL,NULL,'market://search?q=pname:Ysler',NULL,NULL,NULL),(13,NULL,NULL,'mailto:support@ysler.com',NULL,NULL,NULL),(14,NULL,NULL,'mailto:support@ysler.com',NULL,NULL,NULL),(15,NULL,NULL,'market://search?q=(.*)',NULL,NULL,NULL),(16,NULL,NULL,'market://search?q=(.*)',NULL,NULL,NULL),(17,NULL,NULL,'mailto:support@ysler.com',NULL,NULL,NULL),(18,NULL,NULL,'mailto:support@ysler.com',NULL,NULL,NULL),(19,NULL,NULL,'market://search?q=callmejack',NULL,NULL,NULL),(20,NULL,NULL,'market://search?q=(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,2,1),(4,1,3),(5,2,2),(6,1,4),(7,2,3),(8,1,5),(9,2,4),(10,2,5),(11,4,1),(12,5,1),(13,3,1),(14,4,2),(15,3,2),(16,5,2),(17,4,3),(18,3,3),(19,5,3),(20,3,4),(21,4,4),(22,5,4),(23,5,5),(24,3,5),(25,4,5),(26,6,1),(27,6,2),(28,6,3),(29,6,4),(30,6,5),(31,7,1),(32,7,2),(33,7,3),(34,7,4),(35,7,5),(36,7,6),(37,7,7);
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

-- Dump completed on 2015-10-09  0:39:55
