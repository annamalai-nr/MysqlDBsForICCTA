-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_498
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
INSERT INTO `ActionStrings` VALUES (6,'android.intent.action.BOOT_COMPLETED'),(11,'android.intent.action.CHOOSER'),(1,'android.intent.action.MAIN'),(4,'android.intent.action.SEND'),(2,'android.intent.action.SENDTO'),(3,'android.intent.action.VIEW'),(7,'android.net.conn.CONNECTIVITY_CHANGE'),(9,'android.settings.WIFI_SETTINGS'),(8,'com.eoemobile.api.APP_STAT_BROADCAST'),(10,'com.eoemobile.apps.eWallpaper.SEARCH_ACTION'),(5,'com.eoemobile.paylib.ACTION_UPDATE_CONFIG');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'QueiD9ej.ezahS1gi',1),(2,'kk.android',1),(3,'com.neore.ukeee',2),(4,'com.joyce.wps.greeting',120),(5,'com.jackeey.eWallpapers.DragonBall',511),(6,'com.jackeey.eWallpapers.nba',515);
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'QueiD9ej.ezahS1gi.App'),(2,2,'kk.android.AppActivity'),(3,3,'com.neore.ukeee.A'),(4,4,'com.joyce.wps.base.Main'),(5,5,'com.jackeey.eWallpapers.Wallpapers'),(6,4,'com.joyce.wps.base.Main$10'),(7,5,'com.jackeey.eWallpapers.CategoriesActivity'),(8,5,'com.jackeey.eWallpapers.CategoryPreViewActivity'),(9,5,'com.jackeey.eWallpapers.GalleryActivity'),(10,5,'com.jackeey.eWallpapers.ShowSDPhotoActivity'),(11,5,'com.jackeey.eWallpapers.SeachTagsActivity'),(12,5,'com.jackeey.eWallpapers.SearchResultsPreViewActivity'),(13,4,'com.joyce.wps.base.Main$9'),(14,5,'com.jackeey.eWallpapers.SearchResultsActivity'),(15,5,'com.jackeey.eWallpapers.ShowPhotoActivity'),(16,5,'com.jackeey.eWallpapers.UpdateActivity'),(17,5,'com.jackeey.eWallpapers.FeedBackActivity'),(18,5,'com.jackeey.eWallpapers.DealUserIdService'),(19,5,'com.jackeey.eWallpapers.MyBroadcastReceiver'),(20,6,'com.jackeey.eWallpapers.Wallpapers'),(21,6,'com.jackeey.eWallpapers.CategoriesActivity'),(22,6,'com.jackeey.eWallpapers.CategoryPreViewActivity'),(23,6,'com.jackeey.eWallpapers.GalleryActivity'),(24,6,'com.jackeey.eWallpapers.ShowSDPhotoActivity'),(25,6,'com.jackeey.eWallpapers.SeachTagsActivity'),(26,6,'com.jackeey.eWallpapers.SearchResultsPreViewActivity'),(27,6,'com.jackeey.eWallpapers.SearchResultsActivity'),(28,6,'com.jackeey.eWallpapers.ShowPhotoActivity'),(29,6,'com.jackeey.eWallpapers.UpdateActivity'),(30,6,'com.jackeey.eWallpapers.FeedBackActivity'),(31,6,'com.eoemobile.api.feedback.SimpleFeedbackActivity'),(32,6,'com.eoemobile.api.msg.MsgManagerActivity'),(33,6,'com.eoemobile.api.stat.EoeService'),(34,6,'com.jackeey.eWallpapers.DealUserIdService'),(35,6,'com.eoemobile.api.msg.MsgService'),(36,6,'com.jackeey.eWallpapers.MyBroadcastReceiver'),(37,6,'com.eoemobile.api.stat.EoeReceiver'),(38,6,'com.eoemobile.api.msg.MsgReceiver'),(39,5,'com.jackeey.eWallpapers.CategoriesActivity$3'),(40,5,'com.jackeey.eWallpapers.Wallpapers$4'),(41,5,'com.jackeey.eWallpapers.Wallpapers$9'),(42,5,'com.jackeey.eWallpapers.CategoryPreViewActivity$5'),(43,5,'com.jackeey.eWallpapers.SearchResultsPreViewActivity$3'),(44,5,'com.jackeey.eWallpapers.GalleryActivity$2'),(45,5,'com.jackeey.eWallpapers.CategoryPreViewActivity$4'),(46,5,'com.jackeey.eWallpapers.SeachTagsActivity$1'),(47,5,'com.jackeey.eWallpapers.SearchResultsPreViewActivity$5'),(48,5,'com.jackeey.eWallpapers.GalleryActivity$3'),(49,5,'com.jackeey.eWallpapers.CategoryPreViewActivity$3'),(50,5,'com.jackeey.eWallpapers.Wallpapers$5'),(51,5,'com.jackeey.eWallpapers.Wallpapers$3'),(52,5,'com.jackeey.eWallpapers.Wallpapers$6'),(53,5,'com.jackeey.eWallpapers.SearchResultsPreViewActivity$4'),(54,6,'com.jackeey.eWallpapers.SeachTagsActivity$1'),(55,6,'com.jackeey.eWallpapers.SearchResultsPreViewActivity$4'),(56,6,'com.jackeey.eWallpapers.SearchResultsPreViewActivity$5'),(57,6,'com.jackeey.eWallpapers.Wallpapers$3'),(58,6,'com.jackeey.eWallpapers.GalleryActivity$3'),(59,6,'com.jackeey.eWallpapers.CategoryPreViewActivity$4'),(60,6,'com.jackeey.eWallpapers.CategoryPreViewActivity$3'),(61,6,'com.jackeey.eWallpapers.GalleryActivity$2'),(62,6,'com.jackeey.eWallpapers.CategoryPreViewActivity$5'),(63,6,'com.jackeey.eWallpapers.Wallpapers$5'),(64,6,'com.jackeey.eWallpapers.CategoriesActivity$3'),(65,6,'com.jackeey.eWallpapers.SearchResultsPreViewActivity$3'),(66,6,'com.jackeey.eWallpapers.Wallpapers$4'),(67,6,'com.jackeey.eWallpapers.Wallpapers$6'),(68,6,'com.eoemobile.api.stat.c'),(69,6,'com.jackeey.eWallpapers.Wallpapers$8');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,13,'com.eoemobile.apps.eWallpaper.category'),(2,13,'com.eoemobile.action.COMEFROM_WALLPAPERS'),(3,14,'update_url'),(4,7,'com.eoemobile.apps.eWallpaper.category'),(5,13,'com.eoemobile.apps.eWallpaper.type'),(6,12,'com.eoemobile.apps.eWallpaper.SEARCH_KEYWORD'),(7,11,'com.eoemobile.apps.eWallpaper.SEARCH_KEYWORD'),(8,13,'com.eoemobile.action.COMEFROM_CATEGORYPREVIEW'),(9,26,'com.eoemobile.action.COMEFROM_CATEGORYPREVIEW'),(10,35,'noConnectivity'),(11,20,'UMENG_APPKEY'),(12,21,'UMENG_APPKEY'),(13,27,'UMENG_APPKEY'),(14,24,'UMENG_APPKEY'),(15,23,'UMENG_APPKEY'),(16,25,'UMENG_APPKEY'),(17,18,'UMENG_APPKEY'),(18,26,'UMENG_APPKEY'),(19,22,'UMENG_APPKEY'),(20,19,'UMENG_APPKEY'),(21,28,'UMENG_APPKEY'),(22,26,'com.eoemobile.apps.eWallpaper.category'),(23,20,'UMENG_CHANNEL'),(24,21,'UMENG_CHANNEL'),(25,27,'UMENG_CHANNEL'),(26,24,'UMENG_CHANNEL'),(27,23,'UMENG_CHANNEL'),(28,25,'UMENG_CHANNEL'),(29,18,'UMENG_CHANNEL'),(30,26,'UMENG_CHANNEL'),(31,22,'UMENG_CHANNEL'),(32,19,'UMENG_CHANNEL'),(33,28,'UMENG_CHANNEL'),(34,25,'com.eoemobile.apps.eWallpaper.SEARCH_KEYWORD'),(35,26,'com.eoemobile.action.COMEFROM_WALLPAPERS'),(36,24,'com.eoemobile.apps.eWallpaper.SEARCH_KEYWORD'),(37,27,'update_url'),(38,20,'com.eoemobile.apps.eWallpaper.category'),(39,26,'com.eoemobile.apps.eWallpaper.type');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,7,'a',0,NULL,NULL),(7,8,'a',0,NULL,NULL),(8,9,'a',0,NULL,NULL),(9,10,'a',0,NULL,NULL),(10,11,'a',0,NULL,NULL),(11,12,'a',0,NULL,NULL),(12,14,'a',0,NULL,NULL),(13,15,'a',0,NULL,NULL),(14,16,'a',0,NULL,NULL),(15,17,'a',0,NULL,NULL),(16,18,'s',0,NULL,NULL),(17,19,'r',1,NULL,NULL),(18,20,'a',1,NULL,NULL),(19,21,'a',0,NULL,NULL),(20,22,'a',0,NULL,NULL),(21,23,'a',0,NULL,NULL),(22,24,'a',0,NULL,NULL),(23,25,'a',0,NULL,NULL),(24,26,'a',0,NULL,NULL),(25,27,'a',0,NULL,NULL),(26,28,'a',0,NULL,NULL),(27,29,'a',0,NULL,NULL),(28,30,'a',0,NULL,NULL),(29,31,'a',0,NULL,NULL),(30,32,'a',0,NULL,NULL),(31,33,'s',0,NULL,NULL),(32,34,'s',0,NULL,NULL),(33,35,'s',0,NULL,NULL),(34,36,'r',1,NULL,NULL),(35,37,'r',1,NULL,NULL),(36,38,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=368 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,4),(2,2,4),(3,3,4),(4,4,4),(5,5,4),(6,6,6),(7,7,9),(8,7,8),(9,7,7),(10,7,13),(11,7,12),(12,7,11),(13,7,15),(14,7,5),(15,8,10),(16,9,7),(17,10,9),(18,11,6),(19,12,11),(20,13,11),(21,13,9),(22,13,8),(23,13,7),(24,13,5),(25,13,12),(26,13,13),(27,13,15),(28,14,12),(29,15,15),(30,15,5),(31,15,8),(32,15,9),(33,15,7),(34,15,12),(35,15,13),(36,15,11),(37,16,5),(38,16,15),(39,16,7),(40,16,8),(41,16,9),(42,16,11),(43,16,12),(44,16,13),(45,17,7),(46,17,5),(47,17,15),(48,17,12),(49,17,13),(50,17,11),(51,17,8),(52,17,9),(53,18,8),(54,19,5),(55,20,8),(56,21,5),(57,22,13),(58,23,5),(59,24,13),(60,24,11),(61,24,12),(62,24,9),(63,24,7),(64,24,8),(65,24,5),(66,24,15),(67,25,8),(68,25,9),(69,25,11),(70,25,12),(71,25,13),(72,25,15),(73,25,5),(74,25,7),(75,26,5),(76,27,8),(77,27,9),(78,27,7),(79,27,5),(80,27,15),(81,27,13),(82,27,12),(83,27,11),(84,27,10),(85,28,7),(86,28,8),(87,28,9),(88,28,5),(89,28,15),(90,28,12),(91,28,11),(92,28,13),(93,29,7),(94,29,5),(95,29,11),(96,29,8),(97,29,9),(98,29,15),(99,29,13),(100,29,12),(101,30,11),(102,31,7),(103,32,9),(104,33,13),(105,34,5),(106,34,8),(107,34,7),(108,34,9),(109,34,12),(110,34,11),(111,34,13),(112,34,15),(113,35,12),(114,36,5),(115,36,9),(116,36,7),(117,36,8),(118,36,13),(119,36,11),(120,36,12),(121,36,15),(122,37,11),(123,38,11),(124,38,12),(125,38,9),(126,38,7),(127,38,8),(128,38,5),(129,38,15),(130,38,13),(131,39,12),(132,40,15),(133,40,5),(134,40,9),(135,40,8),(136,40,7),(137,40,13),(138,40,12),(139,40,11),(140,41,7),(141,41,5),(142,41,13),(143,41,12),(144,41,15),(145,41,9),(146,41,8),(147,41,11),(148,42,6),(149,43,5),(150,44,8),(151,45,10),(152,46,13),(153,46,15),(154,46,12),(155,46,11),(156,46,9),(157,46,8),(158,46,7),(159,46,5),(160,47,13),(161,48,9),(162,48,7),(163,48,8),(164,48,13),(165,48,11),(166,48,12),(167,48,15),(168,48,5),(169,49,5),(170,50,15),(171,50,13),(172,50,11),(173,50,12),(174,50,9),(175,50,7),(176,50,8),(177,50,5),(178,51,7),(179,52,9),(180,53,25),(181,54,23),(182,55,24),(183,56,20),(184,56,21),(185,56,22),(186,56,18),(187,56,28),(188,56,26),(189,56,25),(190,56,24),(191,56,23),(192,57,19),(193,58,18),(194,59,18),(195,60,18),(196,60,28),(197,60,26),(198,60,25),(199,60,24),(200,60,22),(201,60,21),(202,60,20),(203,61,28),(204,61,18),(205,61,25),(206,61,24),(207,61,26),(208,61,21),(209,61,20),(210,61,22),(211,62,20),(212,62,18),(213,62,24),(214,62,22),(215,62,21),(216,62,28),(217,62,26),(218,62,25),(219,63,18),(220,63,21),(221,63,20),(222,63,22),(223,63,25),(224,63,24),(225,63,26),(226,63,28),(227,64,28),(228,64,25),(229,64,26),(230,64,24),(231,64,21),(232,64,22),(233,64,20),(234,64,18),(235,65,20),(236,66,21),(237,67,26),(238,67,28),(239,67,18),(240,67,20),(241,67,21),(242,67,22),(243,67,24),(244,67,25),(245,68,22),(246,69,28),(247,69,18),(248,69,22),(249,69,21),(250,69,20),(251,69,26),(252,69,25),(253,69,24),(254,70,21),(255,71,20),(256,71,21),(257,71,18),(258,71,28),(259,71,26),(260,71,25),(261,71,24),(262,71,22),(263,72,24),(264,72,25),(265,72,26),(266,72,28),(267,72,18),(268,72,20),(269,72,22),(270,72,21),(271,73,26),(272,73,24),(273,73,25),(274,73,28),(275,73,18),(276,73,22),(277,73,21),(278,73,20),(279,74,25),(280,74,26),(281,74,28),(282,74,22),(283,74,21),(284,74,24),(285,74,18),(286,74,20),(287,75,26),(288,76,23),(289,77,19),(290,78,18),(291,79,18),(292,80,18),(293,80,22),(294,80,21),(295,80,20),(296,80,26),(297,80,25),(298,80,24),(299,80,28),(300,81,18),(301,81,21),(302,81,20),(303,81,22),(304,81,25),(305,81,24),(306,81,26),(307,81,28),(308,82,30),(309,83,22),(310,84,18),(311,85,21),(312,86,25),(313,87,20),(314,88,18),(315,88,28),(316,88,24),(317,88,22),(318,88,21),(319,88,20),(320,88,26),(321,88,25),(322,89,24),(323,90,24),(324,91,28),(325,91,26),(326,91,18),(327,91,20),(328,91,21),(329,91,22),(330,91,24),(331,91,25),(332,92,19),(333,93,27),(334,93,26),(335,93,25),(336,93,24),(337,93,23),(338,93,22),(339,93,21),(340,93,20),(341,93,19),(342,93,18),(343,93,28),(344,94,35),(345,95,22),(346,96,24),(347,96,26),(348,96,25),(349,96,28),(350,96,18),(351,96,20),(352,96,22),(353,96,21),(354,97,18),(355,98,20),(356,99,26),(357,100,18),(358,101,26),(359,102,24),(360,102,21),(361,102,22),(362,102,28),(363,102,25),(364,102,26),(365,102,20),(366,102,18),(367,103,25);
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,4,'<com.joyce.wps.base.Main: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(2,6,'<com.joyce.wps.base.Main$10: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(3,4,'<com.joyce.wps.base.Main: void doShareByEmail(java.lang.String)>',10,'a',NULL),(4,13,'<com.joyce.wps.base.Main$9: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(5,4,'<com.joyce.wps.base.Main: void doShareBySMS(java.lang.String)>',24,'a',NULL),(6,39,'<com.jackeey.eWallpapers.CategoriesActivity$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(7,40,'<com.jackeey.eWallpapers.Wallpapers$4: void onClick(android.view.View)>',9,'a',NULL),(8,11,'<com.jackeey.eWallpapers.SeachTagsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(9,8,'<com.jackeey.eWallpapers.CategoryPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(10,10,'<com.jackeey.eWallpapers.ShowSDPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(11,7,'<com.jackeey.eWallpapers.CategoriesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(12,12,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(13,41,'<com.jackeey.eWallpapers.Wallpapers$9: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(14,14,'<com.jackeey.eWallpapers.SearchResultsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(15,42,'<com.jackeey.eWallpapers.CategoryPreViewActivity$5: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(16,43,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity$3: void onClick(android.view.View)>',44,'a',NULL),(17,44,'<com.jackeey.eWallpapers.GalleryActivity$2: void onClick(android.view.View)>',24,'a',NULL),(18,9,'<com.jackeey.eWallpapers.GalleryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(19,5,'<com.jackeey.eWallpapers.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',46,'a',NULL),(20,9,'<com.jackeey.eWallpapers.GalleryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(21,5,'<com.jackeey.eWallpapers.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(22,15,'<com.jackeey.eWallpapers.ShowPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(23,5,'<com.jackeey.eWallpapers.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',29,'a',NULL),(24,15,'<com.jackeey.eWallpapers.ShowPhotoActivity: void doShareByEmail()>',9,'a',NULL),(25,45,'<com.jackeey.eWallpapers.CategoryPreViewActivity$4: void onClick(android.view.View)>',15,'a',NULL),(26,5,'<com.jackeey.eWallpapers.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(27,46,'<com.jackeey.eWallpapers.SeachTagsActivity$1: void onClick(android.view.View)>',16,'a',NULL),(28,47,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity$5: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(29,48,'<com.jackeey.eWallpapers.GalleryActivity$3: void onClick(android.view.View)>',15,'a',NULL),(30,12,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(31,8,'<com.jackeey.eWallpapers.CategoryPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(32,10,'<com.jackeey.eWallpapers.ShowSDPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(33,15,'<com.jackeey.eWallpapers.ShowPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(34,49,'<com.jackeey.eWallpapers.CategoryPreViewActivity$3: void onClick(android.view.View)>',45,'a',NULL),(35,14,'<com.jackeey.eWallpapers.SearchResultsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(36,50,'<com.jackeey.eWallpapers.Wallpapers$5: void onClick(android.view.View)>',15,'a',NULL),(37,12,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(38,51,'<com.jackeey.eWallpapers.Wallpapers$3: void onClick(android.view.View)>',42,'a',NULL),(39,14,'<com.jackeey.eWallpapers.SearchResultsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(40,14,'<com.jackeey.eWallpapers.SearchResultsActivity: void doShareByEmail()>',9,'a',NULL),(41,52,'<com.jackeey.eWallpapers.Wallpapers$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(42,7,'<com.jackeey.eWallpapers.CategoriesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(43,5,'<com.jackeey.eWallpapers.Wallpapers: void onCreate(android.os.Bundle)>',16,'s',NULL),(44,9,'<com.jackeey.eWallpapers.GalleryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(45,11,'<com.jackeey.eWallpapers.SeachTagsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(46,15,'<com.jackeey.eWallpapers.ShowPhotoActivity: void doShareBySMS()>',26,'a',NULL),(47,15,'<com.jackeey.eWallpapers.ShowPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(48,14,'<com.jackeey.eWallpapers.SearchResultsActivity: void doShareBySMS()>',26,'a',NULL),(49,5,'<com.jackeey.eWallpapers.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(50,53,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity$4: void onClick(android.view.View)>',15,'a',NULL),(51,8,'<com.jackeey.eWallpapers.CategoryPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(52,10,'<com.jackeey.eWallpapers.ShowSDPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(53,27,'<com.jackeey.eWallpapers.SearchResultsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(54,25,'<com.jackeey.eWallpapers.SeachTagsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(55,26,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(56,54,'<com.jackeey.eWallpapers.SeachTagsActivity$1: void onClick(android.view.View)>',16,'a',NULL),(57,21,'<com.jackeey.eWallpapers.CategoriesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(58,20,'<com.jackeey.eWallpapers.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',49,'a',NULL),(59,20,'<com.jackeey.eWallpapers.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(60,55,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity$4: void onClick(android.view.View)>',15,'a',NULL),(61,56,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity$5: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(62,57,'<com.jackeey.eWallpapers.Wallpapers$3: void onClick(android.view.View)>',42,'a',NULL),(63,58,'<com.jackeey.eWallpapers.GalleryActivity$3: void onClick(android.view.View)>',15,'a',NULL),(64,59,'<com.jackeey.eWallpapers.CategoryPreViewActivity$4: void onClick(android.view.View)>',15,'a',NULL),(65,22,'<com.jackeey.eWallpapers.CategoryPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(66,23,'<com.jackeey.eWallpapers.GalleryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(67,28,'<com.jackeey.eWallpapers.ShowPhotoActivity: void doShareByEmail()>',9,'a',NULL),(68,24,'<com.jackeey.eWallpapers.ShowSDPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(69,60,'<com.jackeey.eWallpapers.CategoryPreViewActivity$3: void onClick(android.view.View)>',45,'a',NULL),(70,23,'<com.jackeey.eWallpapers.GalleryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(71,61,'<com.jackeey.eWallpapers.GalleryActivity$2: void onClick(android.view.View)>',24,'a',NULL),(72,62,'<com.jackeey.eWallpapers.CategoryPreViewActivity$5: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(73,27,'<com.jackeey.eWallpapers.SearchResultsActivity: void doShareBySMS()>',26,'a',NULL),(74,63,'<com.jackeey.eWallpapers.Wallpapers$5: void onClick(android.view.View)>',15,'a',NULL),(75,28,'<com.jackeey.eWallpapers.ShowPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(76,25,'<com.jackeey.eWallpapers.SeachTagsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(77,64,'<com.jackeey.eWallpapers.CategoriesActivity$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(78,20,'<com.jackeey.eWallpapers.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',24,'a',NULL),(79,20,'<com.jackeey.eWallpapers.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',32,'a',NULL),(80,65,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity$3: void onClick(android.view.View)>',44,'a',NULL),(81,27,'<com.jackeey.eWallpapers.SearchResultsActivity: void doShareByEmail()>',9,'a',NULL),(82,32,'<com.eoemobile.api.msg.MsgManagerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',36,'a',NULL),(83,24,'<com.jackeey.eWallpapers.ShowSDPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(84,20,'<com.jackeey.eWallpapers.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',55,'a',NULL),(85,23,'<com.jackeey.eWallpapers.GalleryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(86,27,'<com.jackeey.eWallpapers.SearchResultsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(87,22,'<com.jackeey.eWallpapers.CategoryPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(88,66,'<com.jackeey.eWallpapers.Wallpapers$4: void onClick(android.view.View)>',9,'a',NULL),(89,26,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(90,26,'<com.jackeey.eWallpapers.SearchResultsPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(91,67,'<com.jackeey.eWallpapers.Wallpapers$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(92,21,'<com.jackeey.eWallpapers.CategoriesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(93,68,'<com.eoemobile.api.stat.c: java.lang.String e(android.content.Context)>',10,'r',NULL),(94,37,'<com.eoemobile.api.stat.EoeReceiver: void onReceive(android.content.Context,android.content.Intent)>',7,'s',NULL),(95,24,'<com.jackeey.eWallpapers.ShowSDPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(96,69,'<com.jackeey.eWallpapers.Wallpapers$8: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(97,20,'<com.jackeey.eWallpapers.Wallpapers: void onCreate(android.os.Bundle)>',19,'s',NULL),(98,22,'<com.jackeey.eWallpapers.CategoryPreViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(99,28,'<com.jackeey.eWallpapers.ShowPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(100,20,'<com.jackeey.eWallpapers.Wallpapers: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(101,28,'<com.jackeey.eWallpapers.ShowPhotoActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(102,28,'<com.jackeey.eWallpapers.ShowPhotoActivity: void doShareBySMS()>',26,'a',NULL),(103,27,'<com.jackeey.eWallpapers.SearchResultsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,2),(2,2,3),(3,3,4),(4,4,3),(5,5,3),(6,13,3),(7,15,9),(8,21,3),(9,24,4),(10,27,10),(11,28,9),(12,40,4),(13,41,9),(14,46,3),(15,48,3),(16,56,10),(17,61,9),(18,67,4),(19,72,9),(20,73,3),(21,81,4),(22,82,11),(23,83,11),(24,84,11),(25,85,11),(26,86,11),(27,87,11),(28,88,11),(29,89,11),(30,98,9),(31,100,8),(32,103,3),(33,107,3),(34,109,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,6,'com/jackeey/eWallpapers/CategoryPreViewActivity'),(2,7,'com/jackeey/eWallpapers/SeachTagsActivity'),(3,8,'com/jackeey/eWallpapers/Wallpapers'),(4,9,'com/jackeey/eWallpapers/SeachTagsActivity'),(5,10,'com/jackeey/eWallpapers/SeachTagsActivity'),(6,11,'com/jackeey/eWallpapers/SeachTagsActivity'),(7,12,'com/jackeey/eWallpapers/SeachTagsActivity'),(8,14,'com/jackeey/eWallpapers/Wallpapers'),(9,16,'com/jackeey/eWallpapers/SearchResultsActivity'),(10,17,'com/jackeey/eWallpapers/ShowSDPhotoActivity'),(11,18,'com/jackeey/eWallpapers/Wallpapers'),(12,19,'com/jackeey/eWallpapers/FeedBackActivity'),(13,20,'com/jackeey/eWallpapers/SeachTagsActivity'),(14,22,'com/jackeey/eWallpapers/CategoriesActivity'),(15,23,'com/jackeey/eWallpapers/CategoriesActivity'),(16,25,'com/jackeey/eWallpapers/CategoriesActivity'),(17,26,'com/jackeey/eWallpapers/SeachTagsActivity'),(18,27,'com/jackeey/eWallpapers/SearchResultsPreViewActivity'),(19,29,'com/jackeey/eWallpapers/CategoriesActivity'),(20,30,'com/jackeey/eWallpapers/Wallpapers'),(21,31,'com/jackeey/eWallpapers/CategoriesActivity'),(22,32,'com/jackeey/eWallpapers/CategoriesActivity'),(23,33,'com/jackeey/eWallpapers/SeachTagsActivity'),(24,34,'com/jackeey/eWallpapers/ShowPhotoActivity'),(25,35,'com/jackeey/eWallpapers/SeachTagsActivity'),(26,36,'com/jackeey/eWallpapers/CategoriesActivity'),(27,37,'com/jackeey/eWallpapers/CategoriesActivity'),(28,38,'com/jackeey/eWallpapers/ShowPhotoActivity'),(29,39,'com/jackeey/eWallpapers/CategoriesActivity'),(30,42,'com/jackeey/eWallpapers/Wallpapers'),(31,43,'com/jackeey/eWallpapers/DealUserIdService'),(32,44,'com/jackeey/eWallpapers/CategoriesActivity'),(33,45,'com/jackeey/eWallpapers/CategoriesActivity'),(34,47,'com/jackeey/eWallpapers/Wallpapers'),(35,49,'com/jackeey/eWallpapers/GalleryActivity'),(36,50,'com/jackeey/eWallpapers/CategoriesActivity'),(37,51,'com/jackeey/eWallpapers/Wallpapers'),(38,52,'com/jackeey/eWallpapers/Wallpapers'),(39,53,'com/jackeey/eWallpapers/SeachTagsActivity'),(40,54,'com/jackeey/eWallpapers/CategoriesActivity'),(41,55,'com/jackeey/eWallpapers/SeachTagsActivity'),(42,56,'com/jackeey/eWallpapers/SearchResultsPreViewActivity'),(43,57,'com/jackeey/eWallpapers/SeachTagsActivity'),(44,58,'com/eoemobile/api/feedback/SimpleFeedbackActivity'),(45,59,'com/jackeey/eWallpapers/GalleryActivity'),(46,60,'com/jackeey/eWallpapers/CategoriesActivity'),(47,62,'com/jackeey/eWallpapers/ShowPhotoActivity'),(48,63,'com/jackeey/eWallpapers/CategoriesActivity'),(49,64,'com/jackeey/eWallpapers/CategoriesActivity'),(50,65,'com/jackeey/eWallpapers/Wallpapers'),(51,66,'com/jackeey/eWallpapers/SeachTagsActivity'),(52,68,'com/jackeey/eWallpapers/CategoriesActivity'),(53,69,'com/jackeey/eWallpapers/ShowPhotoActivity'),(54,70,'com/jackeey/eWallpapers/CategoriesActivity'),(55,71,'com/jackeey/eWallpapers/ShowSDPhotoActivity'),(56,74,'com/jackeey/eWallpapers/CategoriesActivity'),(57,75,'com/jackeey/eWallpapers/Wallpapers'),(58,76,'com/jackeey/eWallpapers/Wallpapers'),(59,77,'com/jackeey/eWallpapers/CategoryPreViewActivity'),(60,78,'com/jackeey/eWallpapers/SeachTagsActivity'),(61,79,'com/jackeey/eWallpapers/CategoriesActivity'),(62,80,'com/jackeey/eWallpapers/SearchResultsActivity'),(63,90,'com/jackeey/eWallpapers/SeachTagsActivity'),(64,91,'com/eoemobile/api/msg/MsgManagerActivity'),(65,92,'com/jackeey/eWallpapers/Wallpapers'),(66,93,'com/jackeey/eWallpapers/Wallpapers'),(67,94,'com/jackeey/eWallpapers/CategoriesActivity'),(68,95,'com/jackeey/eWallpapers/SeachTagsActivity'),(69,96,'com/jackeey/eWallpapers/Wallpapers'),(70,97,'com/jackeey/eWallpapers/CategoriesActivity'),(71,99,'com/jackeey/eWallpapers/Wallpapers'),(72,101,'com/eoemobile/api/stat/EoeService'),(73,102,'com/jackeey/eWallpapers/Wallpapers'),(74,104,'com/jackeey/eWallpapers/DealUserIdService'),(75,105,'com/jackeey/eWallpapers/SeachTagsActivity'),(76,106,'com/jackeey/eWallpapers/CategoriesActivity'),(77,108,'com/jackeey/eWallpapers/SeachTagsActivity'),(78,110,'com/jackeey/eWallpapers/CategoriesActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,2,2),(3,4,3),(4,13,4),(5,21,5),(6,103,6),(7,107,7);
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
INSERT INTO `IExtras` VALUES (1,1,'android.intent.extra.SUBJECT'),(2,3,'android.intent.extra.TEXT'),(3,3,'android.intent.extra.SUBJECT'),(4,5,'sms_body'),(5,6,'com.eoemobile.apps.eWallpaper.category'),(6,16,'com.eoemobile.EXTRA_DATA_PHOTO_PAGE_INDEX'),(7,16,'com.eoemobile.EXTRA_DATA_SINGLE_PHOTO_INDEX'),(8,16,'com.eoemobile.apps.eWallpaper.SEARCH_KEYWORD'),(9,16,'com.eoemobile.action.COMEFROM_CATEGORYPREVIEW'),(10,17,'com.eoemobile.EXTRA_DATA_SINGLE_PHOTO_INDEX'),(11,17,'com.eoemobile.action.COMEFROM_CATEGORYPREVIEW'),(12,24,'android.intent.extra.TEXT'),(13,24,'android.intent.extra.SUBJECT'),(14,27,'com.eoemobile.apps.eWallpaper.SEARCH_KEYWORD'),(15,34,'com.eoemobile.EXTRA_DATA_PHOTO_PAGE_INDEX'),(16,34,'com.eoemobile.apps.eWallpaper.category'),(17,34,'com.eoemobile.EXTRA_DATA_SINGLE_PHOTO_INDEX'),(18,34,'com.eoemobile.action.COMEFROM_CATEGORYPREVIEW'),(19,38,'com.eoemobile.apps.eWallpaper.type'),(20,38,'com.eoemobile.EXTRA_DATA_PHOTO_PAGE_INDEX'),(21,38,'com.eoemobile.action.COMEFROM_WALLPAPERS'),(22,38,'com.eoemobile.EXTRA_DATA_SINGLE_PHOTO_INDEX'),(23,40,'android.intent.extra.TEXT'),(24,40,'android.intent.extra.SUBJECT'),(25,46,'sms_body'),(26,48,'sms_body'),(27,56,'com.eoemobile.apps.eWallpaper.SEARCH_KEYWORD'),(28,62,'com.eoemobile.apps.eWallpaper.type'),(29,62,'com.eoemobile.EXTRA_DATA_PHOTO_PAGE_INDEX'),(30,62,'com.eoemobile.action.COMEFROM_WALLPAPERS'),(31,62,'com.eoemobile.EXTRA_DATA_SINGLE_PHOTO_INDEX'),(32,67,'android.intent.extra.TEXT'),(33,67,'android.intent.extra.SUBJECT'),(34,69,'com.eoemobile.EXTRA_DATA_PHOTO_PAGE_INDEX'),(35,69,'com.eoemobile.apps.eWallpaper.category'),(36,69,'com.eoemobile.EXTRA_DATA_SINGLE_PHOTO_INDEX'),(37,69,'com.eoemobile.action.COMEFROM_CATEGORYPREVIEW'),(38,71,'com.eoemobile.EXTRA_DATA_SINGLE_PHOTO_INDEX'),(39,71,'com.eoemobile.action.COMEFROM_CATEGORYPREVIEW'),(40,73,'sms_body'),(41,77,'com.eoemobile.apps.eWallpaper.category'),(42,80,'com.eoemobile.EXTRA_DATA_PHOTO_PAGE_INDEX'),(43,80,'com.eoemobile.EXTRA_DATA_SINGLE_PHOTO_INDEX'),(44,80,'com.eoemobile.apps.eWallpaper.SEARCH_KEYWORD'),(45,80,'com.eoemobile.action.COMEFROM_CATEGORYPREVIEW'),(46,81,'android.intent.extra.TEXT'),(47,81,'android.intent.extra.SUBJECT'),(48,82,'android.intent.extra.INTENT'),(49,83,'android.intent.extra.INTENT'),(50,84,'android.intent.extra.TITLE'),(51,84,'android.intent.extra.INTENT'),(52,85,'android.intent.extra.INTENT'),(53,86,'android.intent.extra.TITLE'),(54,86,'android.intent.extra.INTENT'),(55,87,'android.intent.extra.INTENT'),(56,88,'android.intent.extra.TITLE'),(57,88,'android.intent.extra.INTENT'),(58,89,'android.intent.extra.TITLE'),(59,89,'android.intent.extra.INTENT'),(60,109,'sms_body');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,7),(8,7,6),(9,7,5),(10,8,1),(11,9,5),(12,9,6),(13,9,7),(14,10,7),(15,10,8),(16,10,6),(17,11,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,3,'message','rfc882'),(2,5,'vnd.android-dir','mms-sms'),(3,24,'message','rfc882'),(4,40,'message','rfc882'),(5,46,'vnd.android-dir','mms-sms'),(6,48,'vnd.android-dir','mms-sms'),(7,67,'message','rfc882'),(8,73,'vnd.android-dir','mms-sms'),(9,81,'message','rfc882'),(10,109,'vnd.android-dir','mms-sms');
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,6,'com.jackeey.eWallpapers.DragonBall'),(2,7,'com.jackeey.eWallpapers.DragonBall'),(3,8,'com.jackeey.eWallpapers.DragonBall'),(4,9,'com.jackeey.eWallpapers.DragonBall'),(5,10,'com.jackeey.eWallpapers.DragonBall'),(6,11,'com.jackeey.eWallpapers.DragonBall'),(7,12,'com.jackeey.eWallpapers.DragonBall'),(8,14,'com.jackeey.eWallpapers.DragonBall'),(9,16,'com.jackeey.eWallpapers.DragonBall'),(10,17,'com.jackeey.eWallpapers.DragonBall'),(11,18,'com.jackeey.eWallpapers.DragonBall'),(12,19,'com.jackeey.eWallpapers.DragonBall'),(13,20,'com.jackeey.eWallpapers.DragonBall'),(14,22,'com.jackeey.eWallpapers.DragonBall'),(15,23,'com.jackeey.eWallpapers.DragonBall'),(16,25,'com.jackeey.eWallpapers.DragonBall'),(17,26,'com.jackeey.eWallpapers.DragonBall'),(18,27,'com.jackeey.eWallpapers.DragonBall'),(19,29,'com.jackeey.eWallpapers.DragonBall'),(20,30,'com.jackeey.eWallpapers.DragonBall'),(21,31,'com.jackeey.eWallpapers.DragonBall'),(22,32,'com.jackeey.eWallpapers.DragonBall'),(23,33,'com.jackeey.eWallpapers.DragonBall'),(24,34,'com.jackeey.eWallpapers.DragonBall'),(25,35,'com.jackeey.eWallpapers.DragonBall'),(26,36,'com.jackeey.eWallpapers.DragonBall'),(27,37,'com.jackeey.eWallpapers.DragonBall'),(28,38,'com.jackeey.eWallpapers.DragonBall'),(29,39,'com.jackeey.eWallpapers.DragonBall'),(30,42,'com.jackeey.eWallpapers.DragonBall'),(31,43,'com.jackeey.eWallpapers.DragonBall'),(32,44,'com.jackeey.eWallpapers.DragonBall'),(33,45,'com.jackeey.eWallpapers.DragonBall'),(34,47,'com.jackeey.eWallpapers.DragonBall'),(35,49,'com.jackeey.eWallpapers.DragonBall'),(36,50,'com.jackeey.eWallpapers.DragonBall'),(37,51,'com.jackeey.eWallpapers.DragonBall'),(38,52,'com.jackeey.eWallpapers.DragonBall'),(39,53,'com.jackeey.eWallpapers.nba'),(40,54,'com.jackeey.eWallpapers.nba'),(41,55,'com.jackeey.eWallpapers.nba'),(42,56,'com.jackeey.eWallpapers.nba'),(43,57,'com.jackeey.eWallpapers.nba'),(44,58,'com.jackeey.eWallpapers.nba'),(45,59,'com.jackeey.eWallpapers.nba'),(46,60,'com.jackeey.eWallpapers.nba'),(47,62,'com.jackeey.eWallpapers.nba'),(48,63,'com.jackeey.eWallpapers.nba'),(49,64,'com.jackeey.eWallpapers.nba'),(50,65,'com.jackeey.eWallpapers.nba'),(51,66,'com.jackeey.eWallpapers.nba'),(52,68,'com.jackeey.eWallpapers.nba'),(53,69,'com.jackeey.eWallpapers.nba'),(54,70,'com.jackeey.eWallpapers.nba'),(55,71,'com.jackeey.eWallpapers.nba'),(56,74,'com.jackeey.eWallpapers.nba'),(57,75,'com.jackeey.eWallpapers.nba'),(58,76,'com.jackeey.eWallpapers.nba'),(59,77,'com.jackeey.eWallpapers.nba'),(60,78,'com.jackeey.eWallpapers.nba'),(61,79,'com.jackeey.eWallpapers.nba'),(62,80,'com.jackeey.eWallpapers.nba'),(63,90,'com.jackeey.eWallpapers.nba'),(64,91,'com.jackeey.eWallpapers.nba'),(65,92,'com.jackeey.eWallpapers.nba'),(66,93,'com.jackeey.eWallpapers.nba'),(67,94,'com.jackeey.eWallpapers.nba'),(68,95,'com.jackeey.eWallpapers.nba'),(69,96,'com.jackeey.eWallpapers.nba'),(70,97,'com.jackeey.eWallpapers.nba'),(71,99,'com.jackeey.eWallpapers.nba'),(72,101,'com.jackeey.eWallpapers.nba'),(73,102,'com.jackeey.eWallpapers.nba'),(74,104,'com.jackeey.eWallpapers.nba'),(75,105,'com.jackeey.eWallpapers.nba'),(76,106,'com.jackeey.eWallpapers.nba'),(77,108,'com.jackeey.eWallpapers.nba'),(78,110,'com.jackeey.eWallpapers.nba');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,1,0),(3,2,0),(4,3,0),(5,4,0),(6,5,0),(7,17,0),(8,18,0),(9,34,0),(10,35,0),(11,36,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,3,1,0),(4,4,1,0),(5,5,1,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,10,0,0),(11,11,0,0),(12,12,0,0),(13,13,1,0),(14,14,0,0),(15,15,1,0),(16,16,0,0),(17,17,0,0),(18,18,0,0),(19,19,0,0),(20,20,0,0),(21,21,1,0),(22,22,0,0),(23,23,0,0),(24,24,1,0),(25,25,0,0),(26,26,0,0),(27,27,0,0),(28,28,1,0),(29,29,0,0),(30,30,0,0),(31,31,0,0),(32,32,0,0),(33,33,0,0),(34,34,0,0),(35,35,0,0),(36,36,0,0),(37,37,0,0),(38,38,0,0),(39,39,0,0),(40,40,1,0),(41,41,1,0),(42,42,0,0),(43,43,0,0),(44,44,0,0),(45,45,0,0),(46,46,1,0),(47,47,0,0),(48,48,1,0),(49,49,0,0),(50,50,0,0),(51,51,0,0),(52,52,0,0),(53,53,0,0),(54,54,0,0),(55,55,0,0),(56,56,0,0),(57,57,0,0),(58,58,0,0),(59,59,0,0),(60,60,0,0),(61,61,1,0),(62,62,0,0),(63,63,0,0),(64,64,0,0),(65,65,0,0),(66,66,0,0),(67,67,1,0),(68,68,0,0),(69,69,0,0),(70,70,0,0),(71,71,0,0),(72,72,1,0),(73,73,1,0),(74,74,0,0),(75,75,0,0),(76,76,0,0),(77,77,0,0),(78,78,0,0),(79,79,0,0),(80,80,0,0),(81,81,1,0),(82,82,1,0),(83,82,1,0),(84,82,1,0),(85,82,1,0),(86,82,1,0),(87,82,1,0),(88,82,1,0),(89,82,1,0),(90,83,0,0),(91,84,0,0),(92,85,0,0),(93,86,0,0),(94,87,0,0),(95,88,0,0),(96,89,0,0),(97,90,0,0),(98,91,1,0),(99,92,0,0),(100,93,1,0),(101,94,0,0),(102,95,0,0),(103,96,1,0),(104,97,0,0),(105,98,0,0),(106,99,0,0),(107,100,1,0),(108,101,0,0),(109,102,1,0),(110,103,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,58,29,2,NULL),(2,59,8,2,NULL),(3,59,21,2,NULL),(4,78,10,2,NULL),(5,78,23,2,NULL),(6,79,6,2,NULL),(7,79,19,2,NULL),(8,91,30,2,NULL),(9,104,16,2,NULL),(10,104,32,2,NULL),(11,1,18,2,NULL),(12,82,18,2,NULL),(13,83,18,2,NULL),(14,84,18,2,NULL),(15,85,18,2,NULL),(16,86,18,2,NULL),(17,87,18,2,NULL),(18,88,18,2,NULL),(19,89,18,2,NULL),(20,57,10,2,NULL),(21,57,23,2,NULL),(22,99,5,2,NULL),(23,99,18,2,NULL),(24,65,5,2,NULL),(25,65,18,2,NULL),(26,94,6,2,NULL),(27,94,19,2,NULL),(28,105,10,2,NULL),(29,105,23,2,NULL),(30,66,10,2,NULL),(31,66,23,2,NULL),(32,70,6,2,NULL),(33,70,19,2,NULL),(34,92,5,2,NULL),(35,92,18,2,NULL),(36,68,6,2,NULL),(37,68,19,2,NULL),(38,90,10,2,NULL),(39,90,23,2,NULL),(40,102,5,2,NULL),(41,102,18,2,NULL),(42,54,6,2,NULL),(43,54,19,2,NULL),(44,76,5,2,NULL),(45,76,18,2,NULL),(46,55,10,2,NULL),(47,55,23,2,NULL),(48,96,5,2,NULL),(49,96,18,2,NULL),(50,97,6,2,NULL),(51,97,19,2,NULL),(52,53,10,2,NULL),(53,53,23,2,NULL),(54,93,5,2,NULL),(55,93,18,2,NULL),(56,110,6,2,NULL),(57,110,19,2,NULL),(58,75,5,2,NULL),(59,75,18,2,NULL),(60,106,6,2,NULL),(61,106,19,2,NULL),(62,108,10,2,NULL),(63,108,23,2,NULL),(64,82,1,2,NULL),(65,83,1,2,NULL),(66,84,1,2,NULL),(67,85,1,2,NULL),(68,86,1,2,NULL),(69,87,1,2,NULL),(70,88,1,2,NULL),(71,89,1,2,NULL),(72,82,2,2,NULL),(73,83,2,2,NULL),(74,84,2,2,NULL),(75,85,2,2,NULL),(76,86,2,2,NULL),(77,87,2,2,NULL),(78,88,2,2,NULL),(79,89,2,2,NULL),(80,82,3,2,NULL),(81,83,3,2,NULL),(82,84,3,2,NULL),(83,85,3,2,NULL),(84,86,3,2,NULL),(85,87,3,2,NULL),(86,88,3,2,NULL),(87,89,3,2,NULL),(88,82,4,2,NULL),(89,83,4,2,NULL),(90,84,4,2,NULL),(91,85,4,2,NULL),(92,86,4,2,NULL),(93,87,4,2,NULL),(94,88,4,2,NULL),(95,89,4,2,NULL),(96,82,5,2,NULL),(97,83,5,2,NULL),(98,84,5,2,NULL),(99,85,5,2,NULL),(100,86,5,2,NULL),(101,87,5,2,NULL),(102,88,5,2,NULL),(103,89,5,2,NULL),(104,82,17,2,NULL),(105,83,17,2,NULL),(106,84,17,2,NULL),(107,85,17,2,NULL),(108,86,17,2,NULL),(109,87,17,2,NULL),(110,88,17,2,NULL),(111,89,17,2,NULL),(112,82,34,2,NULL),(113,83,34,2,NULL),(114,19,15,2,NULL),(115,84,34,2,NULL),(116,19,28,2,NULL),(117,85,34,2,NULL),(118,23,6,2,NULL),(119,86,34,2,NULL),(120,23,19,2,NULL),(121,87,34,2,NULL),(122,26,10,2,NULL),(123,88,34,2,NULL),(124,26,23,2,NULL),(125,89,34,2,NULL),(126,43,16,2,NULL),(127,82,35,2,NULL),(128,43,32,2,NULL),(129,83,35,2,NULL),(130,49,8,2,NULL),(131,1,1,2,NULL),(132,84,35,2,NULL),(133,49,21,2,NULL),(134,1,2,2,NULL),(135,85,35,2,NULL),(136,1,5,2,NULL),(137,1,3,2,NULL),(138,86,35,2,NULL),(139,1,17,2,NULL),(140,11,10,2,NULL),(141,87,35,2,NULL),(142,1,34,2,NULL),(143,11,23,2,NULL),(144,88,35,2,NULL),(145,1,35,2,NULL),(146,89,35,2,NULL),(147,42,5,2,NULL),(148,1,36,2,NULL),(149,82,36,2,NULL),(150,42,18,2,NULL),(151,83,36,2,NULL),(152,9,10,2,NULL),(153,84,36,2,NULL),(154,9,23,2,NULL),(155,85,36,2,NULL),(156,31,6,2,NULL),(157,86,36,2,NULL),(158,31,19,2,NULL),(159,87,36,2,NULL),(160,51,5,2,NULL),(161,88,36,2,NULL),(162,51,18,2,NULL),(163,89,36,2,NULL),(164,18,5,2,NULL),(165,101,31,2,NULL),(166,18,18,2,NULL),(167,20,10,2,NULL),(168,20,23,2,NULL),(169,44,6,2,NULL),(170,44,19,2,NULL),(171,10,10,2,NULL),(172,10,23,2,NULL),(173,32,6,2,NULL),(174,32,19,2,NULL),(175,52,5,2,NULL),(176,52,18,2,NULL),(177,8,5,2,NULL),(178,8,18,2,NULL),(179,45,6,2,NULL),(180,45,19,2,NULL),(181,12,10,2,NULL),(182,12,23,2,NULL),(183,30,5,2,NULL),(184,30,18,2,NULL),(185,37,6,2,NULL),(186,37,19,2,NULL),(187,14,5,2,NULL),(188,14,18,2,NULL),(189,35,10,2,NULL),(190,35,23,2,NULL),(191,39,6,2,NULL),(192,39,19,2,NULL),(193,22,6,2,NULL),(194,22,19,2,NULL),(195,33,10,2,NULL),(196,33,23,2,NULL),(197,47,5,2,NULL),(198,47,18,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'mailto:joycetrump5@gmail.com',NULL,NULL,NULL),(2,NULL,NULL,'market://search?q=pname:Frederic',NULL,NULL,NULL),(3,NULL,NULL,'market://search?q=(.*)',NULL,NULL,NULL),(4,NULL,NULL,'market://search?q=(.*)',NULL,NULL,NULL),(5,NULL,NULL,'market://search?q=callmejack',NULL,NULL,NULL),(6,NULL,NULL,'market://search?q=(.*)',NULL,NULL,NULL),(7,NULL,NULL,'market://search?q=callmejack',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,2,1),(11,1,10),(12,2,2),(13,1,11),(14,1,12),(15,2,3),(16,1,13),(17,1,14),(18,2,4),(19,1,15),(20,1,17),(21,2,5),(22,1,16),(23,1,19),(24,1,18),(25,2,6),(26,1,21),(27,2,7),(28,1,20),(29,2,8),(30,2,9),(31,2,10),(32,2,11),(33,2,12),(34,2,13),(35,2,14),(36,2,15),(37,2,17),(38,2,16),(39,2,19),(40,2,18),(41,2,21),(42,2,20),(43,3,1),(44,3,2),(45,3,3),(46,3,4),(47,3,5),(48,3,6),(49,3,7),(50,3,8),(51,3,9),(52,3,10),(53,3,11),(54,3,12),(55,3,13),(56,3,14),(57,3,15),(58,3,17),(59,3,16),(60,3,19),(61,3,18),(62,3,21),(63,3,20),(64,3,23),(65,3,22),(66,3,24),(67,4,19),(68,4,25),(69,4,27),(70,4,26),(71,4,15),(72,5,19),(73,5,27),(74,5,26),(75,5,28),(76,5,15),(77,6,19),(78,6,3),(79,6,4),(80,6,25),(81,6,27),(82,6,26),(83,6,28),(84,6,15);
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
