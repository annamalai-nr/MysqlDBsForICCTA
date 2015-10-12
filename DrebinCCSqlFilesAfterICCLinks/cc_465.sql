-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_465
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
INSERT INTO `ActionStrings` VALUES (9,'(.*)'),(4,'android.intent.action.CHOOSER'),(1,'android.intent.action.MAIN'),(7,'android.intent.action.SCREEN_OFF'),(8,'android.intent.action.USER_PRESENT'),(5,'android.intent.action.VIEW'),(3,'com.google.android.c2dm.intent.RECEIVE'),(6,'com.google.android.c2dm.intent.REGISTER'),(2,'com.google.android.c2dm.intent.REGISTRATION');
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
INSERT INTO `Applications` VALUES (1,'com.wTdtandroid',1330519908),(2,'com.wTdtandroid',1334318049),(3,'com.wDokuStream',1330504689),(4,'com.wadventureques',1335798308),(5,'com.wSETMAXLive',1340918887),(6,'com.wAppsGeyserSoapOperaYouTubeApp',1336605724);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (1,'android.intent.category.DEFAULT'),(2,'android.intent.category.LAUNCHER'),(7,'com.wAppsGeyserSoapOperaYouTubeApp'),(4,'com.wDokuStream'),(6,'com.wSETMAXLive'),(3,'com.wTdtandroid'),(5,'com.wadventureques');
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.wTdtandroid.MainNavigationActivity'),(2,1,'com.wTdtandroid.MessageViewer'),(3,2,'com.wTdtandroid.MainNavigationActivity'),(4,1,'com.wTdtandroid.Server.C2DMClientReceiver'),(5,1,'com.google.android.c2dm.C2DMBroadcastReceiver'),(6,3,'com.wDokuStream.MainNavigationActivity'),(7,2,'com.wTdtandroid.MessageViewer'),(8,2,'com.wTdtandroid.Server.C2DMClientReceiver'),(9,2,'com.google.android.c2dm.C2DMBroadcastReceiver'),(10,2,'com.google.android.c2dm.C2DMBroadcastReceiver'),(11,3,'com.wDokuStream.MessageViewer'),(12,3,'com.wDokuStream.Server.C2DMClientReceiver'),(13,3,'com.google.android.c2dm.C2DMBroadcastReceiver'),(14,4,'com.wadventureques.MainNavigationActivity'),(15,4,'com.wadventureques.MessageViewer'),(16,4,'com.wadventureques.Server.C2DMClientReceiver'),(17,4,'com.google.android.c2dm.C2DMBroadcastReceiver'),(18,5,'com.wSETMAXLive.MainNavigationActivity'),(19,5,'com.wSETMAXLive.MessageViewer'),(20,5,'com.google.ads.AdActivity'),(21,5,'com.wSETMAXLive.Server.C2DMClientReceiver'),(22,5,'com.google.android.c2dm.C2DMBroadcastReceiver'),(23,6,'com.wAppsGeyserSoapOperaYouTubeApp.MainNavigationActivity'),(24,6,'com.wAppsGeyserSoapOperaYouTubeApp.MessageViewer'),(25,6,'com.google.ads.AdActivity'),(26,6,'com.wAppsGeyserSoapOperaYouTubeApp.Server.C2DMClientReceiver'),(27,6,'com.google.android.c2dm.C2DMBroadcastReceiver'),(28,2,'com.wTdtandroid.Utils.BrowserDownloadListener'),(29,3,'com.google.android.c2dm.C2DMessaging'),(30,4,'com.google.android.c2dm.C2DMessaging'),(31,3,'com.wDokuStream.Utils.BrowserDownloadListener'),(32,2,'com.google.android.c2dm.C2DMessaging'),(33,1,'com.wTdtandroid.Utils.BrowserDownloadListener'),(34,4,'com.wadventureques.Utils.BrowserDownloadListener'),(35,2,'com.wTdtandroid.Views.AboutDialog$1'),(36,4,'com.wadventureques.Views.AboutDialog$1'),(37,1,'com.google.android.c2dm.C2DMessaging'),(38,5,'com.google.ads.util.AdUtil$UserActivityReceiver'),(39,5,'com.wSETMAXLive.Views.AboutDialog$1'),(40,5,'com.google.android.c2dm.C2DMessaging'),(41,6,'com.wAppsGeyserSoapOperaYouTubeApp.Utils.BrowserDownloadListener'),(42,5,'com.wSETMAXLive.Utils.BrowserDownloadListener'),(43,6,'com.google.ads.util.AdUtil$UserActivityReceiver'),(44,6,'com.google.android.c2dm.C2DMessaging'),(45,6,'com.wAppsGeyserSoapOperaYouTubeApp.Views.AboutDialog$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'url'),(2,2,'title'),(3,5,'message'),(4,10,'title'),(5,10,'error'),(6,11,'unregistered'),(7,11,'message'),(8,7,'url'),(9,5,'title'),(10,5,'registration_id'),(11,18,'title'),(12,11,'title'),(13,12,'url'),(14,12,'title'),(15,14,'registration_id'),(16,5,'url'),(17,14,'url'),(18,18,'unregistered'),(19,14,'unregistered'),(20,14,'message'),(21,14,'title'),(22,14,'error'),(23,10,'url'),(24,16,'title'),(25,11,'error'),(26,18,'url'),(27,18,'registration_id'),(28,18,'error'),(29,5,'unregistered'),(30,18,'message'),(31,5,'error'),(32,10,'message'),(33,10,'registration_id'),(34,11,'url'),(35,10,'unregistered'),(36,7,'title'),(37,11,'registration_id'),(38,16,'url'),(39,21,'com.google.circles.platform.result.extra.ACTION'),(40,20,'title'),(41,23,'error'),(42,21,'com.google.ads.AdOpener'),(43,26,'com.google.ads.AdOpener'),(44,21,'action'),(45,23,'title'),(46,23,'url'),(47,23,'message'),(48,20,'url'),(49,23,'registration_id'),(50,23,'unregistered'),(51,26,'com.google.circles.platform.result.extra.CONFIRMATION'),(52,26,'action'),(53,28,'message'),(54,28,'unregistered'),(55,21,'params'),(56,21,'com.google.circles.platform.result.extra.CONFIRMATION'),(57,26,'params'),(58,25,'title'),(59,28,'title'),(60,28,'error'),(61,28,'url'),(62,28,'registration_id'),(63,25,'url'),(64,26,'com.google.circles.platform.result.extra.ACTION');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'r',1,8,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,8,'s',0,NULL,NULL),(10,9,'r',1,8,NULL),(11,10,'r',1,8,NULL),(12,11,'a',0,NULL,NULL),(13,12,'s',0,NULL,NULL),(14,13,'r',1,8,NULL),(15,14,'a',1,NULL,NULL),(16,15,'a',0,NULL,NULL),(17,16,'s',0,NULL,NULL),(18,17,'r',1,8,NULL),(19,18,'a',1,NULL,NULL),(20,19,'a',0,NULL,NULL),(21,20,'a',0,NULL,NULL),(22,21,'s',0,NULL,NULL),(23,22,'r',1,8,NULL),(24,23,'a',1,NULL,NULL),(25,24,'a',0,NULL,NULL),(26,25,'a',0,NULL,NULL),(27,26,'s',0,NULL,NULL),(28,27,'r',1,8,NULL),(29,38,'r',1,NULL,NULL),(30,43,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,3),(3,3,14),(4,3,6),(5,4,3),(6,5,6),(7,6,15),(8,6,18),(9,7,6),(10,8,11),(11,8,3),(12,9,6),(13,10,1),(14,11,15),(15,12,3),(16,13,1),(17,14,15),(18,15,6),(19,16,1),(20,16,5),(21,17,3),(22,18,3),(23,19,1),(24,20,10),(25,20,3),(26,21,3),(27,22,15),(28,23,3),(29,24,3),(30,25,15),(31,26,3),(32,27,3),(33,28,15),(34,29,19),(35,30,26),(36,31,19),(37,32,19),(38,32,23),(39,33,21),(40,34,26),(41,35,24),(42,36,19),(43,37,24),(44,38,19),(45,39,24),(46,40,21),(47,41,19),(48,42,24),(49,43,28),(50,43,24),(51,44,24);
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.wTdtandroid.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',42,'a',NULL),(2,28,'<com.wTdtandroid.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',21,'a',NULL),(3,29,'<com.google.android.c2dm.C2DMessaging: void register(android.content.Context,java.lang.String)>',9,'s',NULL),(4,3,'<com.wTdtandroid.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',51,'a',NULL),(5,6,'<com.wDokuStream.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(6,30,'<com.google.android.c2dm.C2DMessaging: void register(android.content.Context,java.lang.String)>',9,'s',NULL),(7,31,'<com.wDokuStream.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',21,'a',NULL),(8,32,'<com.google.android.c2dm.C2DMessaging: void register(android.content.Context,java.lang.String)>',9,'s',NULL),(9,31,'<com.wDokuStream.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',15,'a',NULL),(10,33,'<com.wTdtandroid.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',21,'a',NULL),(11,34,'<com.wadventureques.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',15,'a',NULL),(12,35,'<com.wTdtandroid.Views.AboutDialog$1: boolean onTouch(android.view.View,android.view.MotionEvent)>',11,'a',NULL),(13,1,'<com.wTdtandroid.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(14,36,'<com.wadventureques.Views.AboutDialog$1: boolean onTouch(android.view.View,android.view.MotionEvent)>',11,'a',NULL),(15,6,'<com.wDokuStream.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',42,'a',NULL),(16,37,'<com.google.android.c2dm.C2DMessaging: void register(android.content.Context,java.lang.String)>',9,'s',NULL),(17,3,'<com.wTdtandroid.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(18,28,'<com.wTdtandroid.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',21,'a',NULL),(19,33,'<com.wTdtandroid.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',15,'a',NULL),(20,32,'<com.google.android.c2dm.C2DMessaging: void register(android.content.Context,java.lang.String)>',9,'s',NULL),(21,3,'<com.wTdtandroid.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(22,14,'<com.wadventureques.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(23,28,'<com.wTdtandroid.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',15,'a',NULL),(24,28,'<com.wTdtandroid.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',15,'a',NULL),(25,34,'<com.wadventureques.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',21,'a',NULL),(26,35,'<com.wTdtandroid.Views.AboutDialog$1: boolean onTouch(android.view.View,android.view.MotionEvent)>',11,'a',NULL),(27,3,'<com.wTdtandroid.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',51,'a',NULL),(28,14,'<com.wadventureques.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',51,'a',NULL),(29,39,'<com.wSETMAXLive.Views.AboutDialog$1: boolean onTouch(android.view.View,android.view.MotionEvent)>',11,'a',NULL),(30,25,'<com.google.ads.AdActivity: void b(java.util.HashMap,com.google.ads.internal.d)>',31,'a',NULL),(31,18,'<com.wSETMAXLive.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(32,40,'<com.google.android.c2dm.C2DMessaging: void register(android.content.Context,java.lang.String)>',9,'s',NULL),(33,20,'<com.google.ads.AdActivity: void b(java.util.HashMap,com.google.ads.internal.d)>',31,'a',NULL),(34,25,'<com.google.ads.AdActivity: void a(java.util.HashMap,com.google.ads.internal.d)>',23,'a',NULL),(35,41,'<com.wAppsGeyserSoapOperaYouTubeApp.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',15,'a',NULL),(36,42,'<com.wSETMAXLive.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',21,'a',NULL),(37,23,'<com.wAppsGeyserSoapOperaYouTubeApp.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(38,18,'<com.wSETMAXLive.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',51,'a',NULL),(39,23,'<com.wAppsGeyserSoapOperaYouTubeApp.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',51,'a',NULL),(40,20,'<com.google.ads.AdActivity: void a(java.util.HashMap,com.google.ads.internal.d)>',23,'a',NULL),(41,42,'<com.wSETMAXLive.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',15,'a',NULL),(42,41,'<com.wAppsGeyserSoapOperaYouTubeApp.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',21,'a',NULL),(43,44,'<com.google.android.c2dm.C2DMessaging: void register(android.content.Context,java.lang.String)>',9,'s',NULL),(44,45,'<com.wAppsGeyserSoapOperaYouTubeApp.Views.AboutDialog$1: boolean onTouch(android.view.View,android.view.MotionEvent)>',11,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,4),(2,2,4),(3,3,4),(4,4,4),(5,5,5),(6,6,4),(7,7,4),(8,8,6),(9,9,4),(10,10,4),(11,11,4),(12,12,5),(13,13,4),(14,14,4),(15,15,6),(16,16,5),(17,17,4),(18,18,6),(19,19,5),(20,20,4),(21,21,5),(22,22,5),(23,23,4),(24,24,5),(25,25,4),(26,26,5),(27,27,5),(28,28,5),(29,29,4),(30,30,4),(31,31,5),(32,32,5),(33,33,6),(34,34,4),(35,35,5),(36,36,5),(37,38,4),(38,37,5),(39,39,5),(40,40,4),(41,41,6),(42,43,4),(43,42,5),(44,44,5),(45,45,4),(46,46,4),(47,47,5),(48,48,5),(49,49,5),(50,50,4),(51,51,5),(52,52,4),(53,53,4),(54,54,5),(55,55,4),(56,56,4),(57,57,5),(58,58,4),(59,59,4),(60,60,4),(61,61,4),(62,62,4),(63,63,4),(64,64,4),(65,65,4),(66,66,4),(67,67,4),(68,68,4),(69,69,4),(70,70,5),(71,71,5),(72,72,5),(73,73,5),(74,74,9),(75,75,5),(76,76,9),(77,77,6),(78,78,5),(79,79,5),(80,80,9),(81,82,9),(82,83,5),(83,84,5),(84,85,5),(85,86,5),(86,87,4),(87,88,4),(88,89,4),(89,90,4),(90,91,4),(91,92,4),(92,93,4),(93,94,4),(94,95,4),(95,96,4),(96,97,4),(97,98,4),(98,99,4),(99,101,4),(100,102,4),(101,103,4),(102,104,5),(103,105,5),(104,106,6),(105,107,5),(106,108,5),(107,109,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,81,2),(2,100,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,81,'com.google.android.apps.circles.platform.PlusOneActivity'),(2,100,'com.google.android.apps.circles.platform.PlusOneActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,5,1),(2,12,2),(3,16,3),(4,19,4),(5,21,5),(6,22,6),(7,24,7),(8,26,8),(9,27,9),(10,28,10),(11,31,11),(12,32,12),(13,35,13),(14,36,14),(15,37,15),(16,39,16),(17,42,17),(18,44,18),(19,47,19),(20,48,20),(21,49,21),(22,51,22),(23,54,23),(24,57,24),(25,70,25),(26,71,26),(27,72,27),(28,73,28),(29,75,29),(30,74,30),(31,76,31),(32,78,32),(33,79,33),(34,80,34),(35,82,35),(36,83,36),(37,84,37),(38,85,38),(39,86,39),(40,104,40),(41,105,41),(42,107,42),(43,108,43),(44,109,44);
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'android.intent.extra.INTENT'),(2,2,'android.intent.extra.INTENT'),(3,3,'android.intent.extra.TITLE'),(4,3,'android.intent.extra.INTENT'),(5,4,'android.intent.extra.INTENT'),(6,6,'android.intent.extra.TITLE'),(7,6,'android.intent.extra.INTENT'),(8,7,'android.intent.extra.INTENT'),(9,8,'sender'),(10,8,'app'),(11,9,'android.intent.extra.INTENT'),(12,10,'android.intent.extra.TITLE'),(13,10,'android.intent.extra.INTENT'),(14,11,'android.intent.extra.INTENT'),(15,14,'android.intent.extra.TITLE'),(16,13,'android.intent.extra.TITLE'),(17,14,'android.intent.extra.INTENT'),(18,13,'android.intent.extra.INTENT'),(19,15,'sender'),(20,15,'app'),(21,18,'sender'),(22,17,'android.intent.extra.INTENT'),(23,18,'app'),(24,20,'android.intent.extra.TITLE'),(25,20,'android.intent.extra.INTENT'),(26,23,'android.intent.extra.INTENT'),(27,25,'android.intent.extra.TITLE'),(28,25,'android.intent.extra.INTENT'),(29,29,'android.intent.extra.TITLE'),(30,29,'android.intent.extra.INTENT'),(31,30,'android.intent.extra.INTENT'),(32,33,'sender'),(33,34,'android.intent.extra.INTENT'),(34,33,'app'),(35,38,'android.intent.extra.TITLE'),(36,38,'android.intent.extra.INTENT'),(37,40,'android.intent.extra.INTENT'),(38,41,'sender'),(39,41,'app'),(40,43,'android.intent.extra.TITLE'),(41,43,'android.intent.extra.INTENT'),(42,45,'android.intent.extra.INTENT'),(43,46,'android.intent.extra.TITLE'),(44,46,'android.intent.extra.INTENT'),(45,50,'android.intent.extra.TITLE'),(46,50,'android.intent.extra.INTENT'),(47,52,'android.intent.extra.INTENT'),(48,53,'android.intent.extra.INTENT'),(49,55,'android.intent.extra.INTENT'),(50,56,'android.intent.extra.INTENT'),(51,58,'android.intent.extra.TITLE'),(52,59,'android.intent.extra.TITLE'),(53,58,'android.intent.extra.INTENT'),(54,59,'android.intent.extra.INTENT'),(55,60,'android.intent.extra.INTENT'),(56,61,'android.intent.extra.INTENT'),(57,62,'android.intent.extra.TITLE'),(58,63,'android.intent.extra.TITLE'),(59,62,'android.intent.extra.INTENT'),(60,63,'android.intent.extra.INTENT'),(61,64,'android.intent.extra.INTENT'),(62,65,'android.intent.extra.INTENT'),(63,66,'android.intent.extra.TITLE'),(64,67,'android.intent.extra.TITLE'),(65,66,'android.intent.extra.INTENT'),(66,67,'android.intent.extra.INTENT'),(67,68,'android.intent.extra.TITLE'),(68,69,'android.intent.extra.TITLE'),(69,68,'android.intent.extra.INTENT'),(70,69,'android.intent.extra.INTENT'),(71,77,'sender'),(72,77,'app'),(73,81,'com.google.circles.platform.intent.extra.ACTION'),(74,81,'(.*)'),(75,81,'com.google.circles.platform.intent.extra.ENTITY'),(76,81,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(77,87,'android.intent.extra.INTENT'),(78,88,'android.intent.extra.INTENT'),(79,89,'android.intent.extra.TITLE'),(80,89,'android.intent.extra.INTENT'),(81,90,'android.intent.extra.INTENT'),(82,91,'android.intent.extra.TITLE'),(83,92,'android.intent.extra.INTENT'),(84,91,'android.intent.extra.INTENT'),(85,93,'android.intent.extra.INTENT'),(86,94,'android.intent.extra.INTENT'),(87,95,'android.intent.extra.TITLE'),(88,96,'android.intent.extra.TITLE'),(89,95,'android.intent.extra.INTENT'),(90,96,'android.intent.extra.INTENT'),(91,97,'android.intent.extra.INTENT'),(92,98,'android.intent.extra.TITLE'),(93,98,'android.intent.extra.INTENT'),(94,99,'android.intent.extra.TITLE'),(95,99,'android.intent.extra.INTENT'),(96,100,'com.google.circles.platform.intent.extra.ACTION'),(97,101,'android.intent.extra.INTENT'),(98,100,'(.*)'),(99,100,'com.google.circles.platform.intent.extra.ENTITY'),(100,100,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(101,102,'android.intent.extra.TITLE'),(102,102,'android.intent.extra.INTENT'),(103,103,'android.intent.extra.TITLE'),(104,103,'android.intent.extra.INTENT'),(105,106,'sender'),(106,106,'app');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,2),(6,6,2),(7,7,2),(8,8,3),(9,9,3),(10,10,3),(11,11,2),(12,12,3),(13,13,1),(14,14,2),(15,15,3),(16,16,1),(17,17,2),(18,18,3),(19,19,1),(20,20,2),(21,21,3),(22,22,8),(23,22,7),(24,23,7),(25,23,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,1,2),(3,2,1),(4,2,2),(5,3,1),(6,3,2),(7,4,2),(8,4,1),(9,5,3),(10,6,3),(11,7,3),(12,8,3),(13,9,3),(14,10,3),(15,11,4),(16,12,4),(17,13,2),(18,13,1),(19,14,5),(20,15,5),(21,16,1),(22,16,2),(23,17,6),(24,18,6),(25,19,1),(26,19,2),(27,20,7),(28,21,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,74,'(.*)','(.*)'),(2,78,'(.*)','(.*)'),(3,80,'(.*)','(.*)'),(4,83,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,81,'com.google.android.apps.plus'),(2,100,'com.google.android.apps.plus');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,3,0),(4,6,0),(5,5,0),(6,10,0),(7,11,0),(8,5,0),(9,10,0),(10,11,0),(11,14,0),(12,14,0),(13,15,0),(14,18,0),(15,18,0),(16,19,0),(17,23,0),(18,23,0),(19,24,0),(20,28,0),(21,28,0),(22,29,0),(23,30,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,1,1,0),(4,1,1,0),(5,2,1,0),(6,1,1,0),(7,1,1,0),(8,3,1,0),(9,4,1,0),(10,1,1,0),(11,4,1,0),(12,5,1,0),(13,1,1,0),(14,4,1,0),(15,6,1,0),(16,7,1,0),(17,4,1,0),(18,8,1,0),(19,9,1,0),(20,4,1,0),(21,10,1,0),(22,11,1,0),(23,4,1,0),(24,12,1,0),(25,4,1,0),(26,13,1,0),(27,12,1,0),(28,14,1,0),(29,4,1,0),(30,15,1,0),(31,12,1,0),(32,14,1,0),(33,16,1,0),(34,15,1,0),(35,17,1,0),(36,14,1,0),(37,18,1,0),(38,15,1,0),(39,19,1,0),(40,15,1,0),(41,20,1,0),(42,21,1,0),(43,15,1,0),(44,22,1,0),(45,15,1,0),(46,15,1,0),(47,23,1,0),(48,24,1,0),(49,25,1,0),(50,15,1,0),(51,26,1,0),(52,27,1,0),(53,28,1,0),(54,26,1,0),(55,27,1,0),(56,28,1,0),(57,26,1,0),(58,27,1,0),(59,28,1,0),(60,27,1,0),(61,28,1,0),(62,27,1,0),(63,28,1,0),(64,27,1,0),(65,28,1,0),(66,27,1,0),(67,28,1,0),(68,27,1,0),(69,28,1,0),(70,29,1,0),(71,29,1,0),(72,29,1,0),(73,30,1,0),(74,30,1,0),(75,31,1,0),(76,30,1,0),(77,32,1,0),(78,30,1,0),(79,33,1,0),(80,33,1,0),(81,34,0,0),(82,33,1,0),(83,33,1,0),(84,35,1,0),(85,36,1,0),(86,37,1,0),(87,38,1,0),(88,38,1,0),(89,38,1,0),(90,38,1,0),(91,38,1,0),(92,39,1,0),(93,39,1,0),(94,38,1,0),(95,39,1,0),(96,38,1,0),(97,39,1,0),(98,38,1,0),(99,39,1,0),(100,40,0,0),(101,39,1,0),(102,39,1,0),(103,39,1,0),(104,41,1,0),(105,42,1,0),(106,43,1,0),(107,44,1,0),(108,44,1,0),(109,44,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=821 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,1,5,2,NULL),(2,2,5,2,NULL),(3,3,5,2,NULL),(4,4,5,2,NULL),(5,6,5,2,NULL),(6,7,5,2,NULL),(7,10,5,2,NULL),(8,13,5,2,NULL),(9,1,10,2,NULL),(10,2,10,2,NULL),(11,3,10,2,NULL),(12,4,10,2,NULL),(13,6,10,2,NULL),(14,7,10,2,NULL),(15,10,10,2,NULL),(16,13,10,2,NULL),(17,1,11,2,NULL),(18,2,11,2,NULL),(19,3,11,2,NULL),(20,4,11,2,NULL),(21,6,11,2,NULL),(22,7,11,2,NULL),(23,10,11,2,NULL),(24,13,11,2,NULL),(25,1,6,2,NULL),(26,2,6,2,NULL),(27,3,6,2,NULL),(28,4,6,2,NULL),(29,6,6,2,NULL),(30,7,6,2,NULL),(31,10,6,2,NULL),(32,13,6,2,NULL),(33,30,1,2,NULL),(34,34,1,2,NULL),(35,38,1,2,NULL),(36,40,1,2,NULL),(37,43,1,2,NULL),(38,45,1,2,NULL),(39,46,1,2,NULL),(40,50,1,2,NULL),(41,1,14,2,NULL),(42,2,14,2,NULL),(43,3,14,2,NULL),(44,4,14,2,NULL),(45,6,14,2,NULL),(46,7,14,2,NULL),(47,10,14,2,NULL),(48,13,14,2,NULL),(49,1,15,2,NULL),(50,2,15,2,NULL),(51,3,15,2,NULL),(52,4,15,2,NULL),(53,6,15,2,NULL),(54,7,15,2,NULL),(55,10,15,2,NULL),(56,13,15,2,NULL),(57,53,1,2,NULL),(58,56,1,2,NULL),(59,59,1,2,NULL),(60,61,1,2,NULL),(61,63,1,2,NULL),(62,65,1,2,NULL),(63,67,1,2,NULL),(64,69,1,2,NULL),(65,1,18,2,NULL),(66,2,18,2,NULL),(67,3,18,2,NULL),(68,4,18,2,NULL),(69,6,18,2,NULL),(70,7,18,2,NULL),(71,10,18,2,NULL),(72,13,18,2,NULL),(73,1,19,2,NULL),(74,2,19,2,NULL),(75,3,19,2,NULL),(76,4,19,2,NULL),(77,6,19,2,NULL),(78,7,19,2,NULL),(79,10,19,2,NULL),(80,13,19,2,NULL),(81,87,1,2,NULL),(82,88,1,2,NULL),(83,89,1,2,NULL),(84,90,1,2,NULL),(85,91,1,2,NULL),(86,94,1,2,NULL),(87,96,1,2,NULL),(88,98,1,2,NULL),(89,79,1,2,NULL),(90,82,1,2,NULL),(91,1,23,2,NULL),(92,2,23,2,NULL),(93,3,23,2,NULL),(94,4,23,2,NULL),(95,6,23,2,NULL),(96,7,23,2,NULL),(97,10,23,2,NULL),(98,13,23,2,NULL),(99,1,29,2,NULL),(100,2,29,2,NULL),(101,3,29,2,NULL),(102,4,29,2,NULL),(103,6,29,2,NULL),(104,7,29,2,NULL),(105,10,29,2,NULL),(106,13,29,2,NULL),(107,1,24,2,NULL),(108,2,24,2,NULL),(109,3,24,2,NULL),(110,4,24,2,NULL),(111,6,24,2,NULL),(112,7,24,2,NULL),(113,10,24,2,NULL),(114,13,24,2,NULL),(115,92,1,2,NULL),(116,93,1,2,NULL),(117,95,1,2,NULL),(118,97,1,2,NULL),(119,99,1,2,NULL),(120,101,1,2,NULL),(121,102,1,2,NULL),(122,103,1,2,NULL),(123,73,1,2,NULL),(124,76,1,2,NULL),(125,1,28,2,NULL),(126,2,28,2,NULL),(127,3,28,2,NULL),(128,4,28,2,NULL),(129,6,28,2,NULL),(130,7,28,2,NULL),(131,10,28,2,NULL),(132,13,28,2,NULL),(133,1,30,2,NULL),(134,2,30,2,NULL),(135,3,30,2,NULL),(136,4,30,2,NULL),(137,6,30,2,NULL),(138,7,30,2,NULL),(139,10,30,2,NULL),(140,13,30,2,NULL),(141,9,5,2,NULL),(142,11,5,2,NULL),(143,14,5,2,NULL),(144,17,5,2,NULL),(145,20,5,2,NULL),(146,23,5,2,NULL),(147,25,5,2,NULL),(148,29,5,2,NULL),(149,52,5,2,NULL),(150,55,5,2,NULL),(151,58,5,2,NULL),(152,60,5,2,NULL),(153,62,5,2,NULL),(154,64,5,2,NULL),(155,66,5,2,NULL),(156,68,5,2,NULL),(157,30,5,2,NULL),(158,34,5,2,NULL),(159,38,5,2,NULL),(160,40,5,2,NULL),(161,43,5,2,NULL),(162,45,5,2,NULL),(163,46,5,2,NULL),(164,50,5,2,NULL),(165,53,5,2,NULL),(166,56,5,2,NULL),(167,59,5,2,NULL),(168,61,5,2,NULL),(169,63,5,2,NULL),(170,65,5,2,NULL),(171,67,5,2,NULL),(172,69,5,2,NULL),(173,87,5,2,NULL),(174,88,5,2,NULL),(175,89,5,2,NULL),(176,90,5,2,NULL),(177,91,5,2,NULL),(178,94,5,2,NULL),(179,96,5,2,NULL),(180,98,5,2,NULL),(181,79,5,2,NULL),(182,82,5,2,NULL),(183,92,5,2,NULL),(184,93,5,2,NULL),(185,95,5,2,NULL),(186,97,5,2,NULL),(187,99,5,2,NULL),(188,101,5,2,NULL),(189,102,5,2,NULL),(190,103,5,2,NULL),(191,73,5,2,NULL),(192,76,5,2,NULL),(193,9,10,2,NULL),(194,11,10,2,NULL),(195,14,10,2,NULL),(196,17,10,2,NULL),(197,20,10,2,NULL),(198,23,10,2,NULL),(199,25,10,2,NULL),(200,29,10,2,NULL),(201,52,10,2,NULL),(202,55,10,2,NULL),(203,58,10,2,NULL),(204,60,10,2,NULL),(205,62,10,2,NULL),(206,64,10,2,NULL),(207,66,10,2,NULL),(208,68,10,2,NULL),(209,9,11,2,NULL),(210,11,11,2,NULL),(211,14,11,2,NULL),(212,17,11,2,NULL),(213,20,11,2,NULL),(214,23,11,2,NULL),(215,25,11,2,NULL),(216,29,11,2,NULL),(217,52,11,2,NULL),(218,55,11,2,NULL),(219,58,11,2,NULL),(220,60,11,2,NULL),(221,62,11,2,NULL),(222,64,11,2,NULL),(223,66,11,2,NULL),(224,68,11,2,NULL),(225,9,6,2,NULL),(226,11,6,2,NULL),(227,14,6,2,NULL),(228,17,6,2,NULL),(229,20,6,2,NULL),(230,23,6,2,NULL),(231,25,6,2,NULL),(232,29,6,2,NULL),(233,52,6,2,NULL),(234,55,6,2,NULL),(235,58,6,2,NULL),(236,60,6,2,NULL),(237,62,6,2,NULL),(238,64,6,2,NULL),(239,66,6,2,NULL),(240,68,6,2,NULL),(241,30,3,2,NULL),(242,34,3,2,NULL),(243,38,3,2,NULL),(244,40,3,2,NULL),(245,43,3,2,NULL),(246,45,3,2,NULL),(247,46,3,2,NULL),(248,50,3,2,NULL),(249,9,14,2,NULL),(250,11,14,2,NULL),(251,14,14,2,NULL),(252,17,14,2,NULL),(253,20,14,2,NULL),(254,23,14,2,NULL),(255,25,14,2,NULL),(256,29,14,2,NULL),(257,52,14,2,NULL),(258,55,14,2,NULL),(259,58,14,2,NULL),(260,60,14,2,NULL),(261,62,14,2,NULL),(262,64,14,2,NULL),(263,66,14,2,NULL),(264,68,14,2,NULL),(265,9,15,2,NULL),(266,11,15,2,NULL),(267,14,15,2,NULL),(268,17,15,2,NULL),(269,20,15,2,NULL),(270,23,15,2,NULL),(271,25,15,2,NULL),(272,29,15,2,NULL),(273,52,15,2,NULL),(274,55,15,2,NULL),(275,58,15,2,NULL),(276,60,15,2,NULL),(277,62,15,2,NULL),(278,64,15,2,NULL),(279,66,15,2,NULL),(280,68,15,2,NULL),(281,53,3,2,NULL),(282,56,3,2,NULL),(283,59,3,2,NULL),(284,61,3,2,NULL),(285,63,3,2,NULL),(286,65,3,2,NULL),(287,67,3,2,NULL),(288,69,3,2,NULL),(289,9,18,2,NULL),(290,11,18,2,NULL),(291,14,18,2,NULL),(292,17,18,2,NULL),(293,20,18,2,NULL),(294,23,18,2,NULL),(295,25,18,2,NULL),(296,29,18,2,NULL),(297,52,18,2,NULL),(298,55,18,2,NULL),(299,58,18,2,NULL),(300,60,18,2,NULL),(301,62,18,2,NULL),(302,64,18,2,NULL),(303,66,18,2,NULL),(304,68,18,2,NULL),(305,9,19,2,NULL),(306,11,19,2,NULL),(307,14,19,2,NULL),(308,17,19,2,NULL),(309,20,19,2,NULL),(310,23,19,2,NULL),(311,25,19,2,NULL),(312,29,19,2,NULL),(313,52,19,2,NULL),(314,55,19,2,NULL),(315,58,19,2,NULL),(316,60,19,2,NULL),(317,62,19,2,NULL),(318,64,19,2,NULL),(319,66,19,2,NULL),(320,68,19,2,NULL),(321,87,3,2,NULL),(322,88,3,2,NULL),(323,89,3,2,NULL),(324,90,3,2,NULL),(325,91,3,2,NULL),(326,94,3,2,NULL),(327,96,3,2,NULL),(328,98,3,2,NULL),(329,79,3,2,NULL),(330,82,3,2,NULL),(331,9,23,2,NULL),(332,11,23,2,NULL),(333,14,23,2,NULL),(334,17,23,2,NULL),(335,20,23,2,NULL),(336,23,23,2,NULL),(337,25,23,2,NULL),(338,29,23,2,NULL),(339,52,23,2,NULL),(340,55,23,2,NULL),(341,58,23,2,NULL),(342,60,23,2,NULL),(343,62,23,2,NULL),(344,64,23,2,NULL),(345,66,23,2,NULL),(346,68,23,2,NULL),(347,9,29,2,NULL),(348,11,29,2,NULL),(349,14,29,2,NULL),(350,17,29,2,NULL),(351,20,29,2,NULL),(352,23,29,2,NULL),(353,25,29,2,NULL),(354,29,29,2,NULL),(355,52,29,2,NULL),(356,55,29,2,NULL),(357,58,29,2,NULL),(358,60,29,2,NULL),(359,62,29,2,NULL),(360,64,29,2,NULL),(361,66,29,2,NULL),(362,68,29,2,NULL),(363,9,24,2,NULL),(364,11,24,2,NULL),(365,14,24,2,NULL),(366,17,24,2,NULL),(367,20,24,2,NULL),(368,23,24,2,NULL),(369,25,24,2,NULL),(370,29,24,2,NULL),(371,52,24,2,NULL),(372,55,24,2,NULL),(373,58,24,2,NULL),(374,60,24,2,NULL),(375,62,24,2,NULL),(376,64,24,2,NULL),(377,66,24,2,NULL),(378,68,24,2,NULL),(379,92,3,2,NULL),(380,93,3,2,NULL),(381,95,3,2,NULL),(382,97,3,2,NULL),(383,99,3,2,NULL),(384,101,3,2,NULL),(385,102,3,2,NULL),(386,103,3,2,NULL),(387,73,3,2,NULL),(388,76,3,2,NULL),(389,9,28,2,NULL),(390,11,28,2,NULL),(391,14,28,2,NULL),(392,17,28,2,NULL),(393,20,28,2,NULL),(394,23,28,2,NULL),(395,25,28,2,NULL),(396,29,28,2,NULL),(397,52,28,2,NULL),(398,55,28,2,NULL),(399,58,28,2,NULL),(400,60,28,2,NULL),(401,62,28,2,NULL),(402,64,28,2,NULL),(403,66,28,2,NULL),(404,68,28,2,NULL),(405,9,30,2,NULL),(406,11,30,2,NULL),(407,14,30,2,NULL),(408,17,30,2,NULL),(409,20,30,2,NULL),(410,23,30,2,NULL),(411,25,30,2,NULL),(412,29,30,2,NULL),(413,52,30,2,NULL),(414,55,30,2,NULL),(415,58,30,2,NULL),(416,60,30,2,NULL),(417,62,30,2,NULL),(418,64,30,2,NULL),(419,66,30,2,NULL),(420,68,30,2,NULL),(421,30,10,2,NULL),(422,34,10,2,NULL),(423,38,10,2,NULL),(424,40,10,2,NULL),(425,43,10,2,NULL),(426,45,10,2,NULL),(427,46,10,2,NULL),(428,50,10,2,NULL),(429,53,10,2,NULL),(430,56,10,2,NULL),(431,59,10,2,NULL),(432,61,10,2,NULL),(433,63,10,2,NULL),(434,65,10,2,NULL),(435,67,10,2,NULL),(436,69,10,2,NULL),(437,87,10,2,NULL),(438,88,10,2,NULL),(439,89,10,2,NULL),(440,90,10,2,NULL),(441,91,10,2,NULL),(442,94,10,2,NULL),(443,96,10,2,NULL),(444,98,10,2,NULL),(445,79,10,2,NULL),(446,82,10,2,NULL),(447,92,10,2,NULL),(448,93,10,2,NULL),(449,95,10,2,NULL),(450,97,10,2,NULL),(451,99,10,2,NULL),(452,101,10,2,NULL),(453,102,10,2,NULL),(454,103,10,2,NULL),(455,73,10,2,NULL),(456,76,10,2,NULL),(457,30,11,2,NULL),(458,34,11,2,NULL),(459,38,11,2,NULL),(460,40,11,2,NULL),(461,43,11,2,NULL),(462,45,11,2,NULL),(463,46,11,2,NULL),(464,50,11,2,NULL),(465,53,11,2,NULL),(466,56,11,2,NULL),(467,59,11,2,NULL),(468,61,11,2,NULL),(469,63,11,2,NULL),(470,65,11,2,NULL),(471,67,11,2,NULL),(472,69,11,2,NULL),(473,87,11,2,NULL),(474,88,11,2,NULL),(475,89,11,2,NULL),(476,90,11,2,NULL),(477,91,11,2,NULL),(478,94,11,2,NULL),(479,96,11,2,NULL),(480,98,11,2,NULL),(481,79,11,2,NULL),(482,82,11,2,NULL),(483,92,11,2,NULL),(484,93,11,2,NULL),(485,95,11,2,NULL),(486,97,11,2,NULL),(487,99,11,2,NULL),(488,101,11,2,NULL),(489,102,11,2,NULL),(490,103,11,2,NULL),(491,73,11,2,NULL),(492,76,11,2,NULL),(493,87,6,2,NULL),(494,88,6,2,NULL),(495,89,6,2,NULL),(496,90,6,2,NULL),(497,91,6,2,NULL),(498,94,6,2,NULL),(499,96,6,2,NULL),(500,98,6,2,NULL),(501,30,19,2,NULL),(502,34,19,2,NULL),(503,38,19,2,NULL),(504,40,19,2,NULL),(505,43,19,2,NULL),(506,45,19,2,NULL),(507,46,19,2,NULL),(508,50,19,2,NULL),(509,87,14,2,NULL),(510,88,14,2,NULL),(511,89,14,2,NULL),(512,90,14,2,NULL),(513,91,14,2,NULL),(514,94,14,2,NULL),(515,96,14,2,NULL),(516,98,14,2,NULL),(517,87,15,2,NULL),(518,88,15,2,NULL),(519,89,15,2,NULL),(520,90,15,2,NULL),(521,91,15,2,NULL),(522,94,15,2,NULL),(523,96,15,2,NULL),(524,98,15,2,NULL),(525,53,19,2,NULL),(526,56,19,2,NULL),(527,59,19,2,NULL),(528,61,19,2,NULL),(529,63,19,2,NULL),(530,65,19,2,NULL),(531,67,19,2,NULL),(532,69,19,2,NULL),(533,87,18,2,NULL),(534,88,18,2,NULL),(535,89,18,2,NULL),(536,90,18,2,NULL),(537,91,18,2,NULL),(538,94,18,2,NULL),(539,96,18,2,NULL),(540,98,18,2,NULL),(541,79,19,2,NULL),(542,82,19,2,NULL),(543,87,23,2,NULL),(544,88,23,2,NULL),(545,89,23,2,NULL),(546,90,23,2,NULL),(547,91,23,2,NULL),(548,94,23,2,NULL),(549,96,23,2,NULL),(550,98,23,2,NULL),(551,87,29,2,NULL),(552,88,29,2,NULL),(553,89,29,2,NULL),(554,90,29,2,NULL),(555,91,29,2,NULL),(556,94,29,2,NULL),(557,96,29,2,NULL),(558,98,29,2,NULL),(559,87,24,2,NULL),(560,88,24,2,NULL),(561,89,24,2,NULL),(562,90,24,2,NULL),(563,91,24,2,NULL),(564,94,24,2,NULL),(565,96,24,2,NULL),(566,98,24,2,NULL),(567,92,19,2,NULL),(568,93,19,2,NULL),(569,95,19,2,NULL),(570,97,19,2,NULL),(571,99,19,2,NULL),(572,101,19,2,NULL),(573,102,19,2,NULL),(574,103,19,2,NULL),(575,73,19,2,NULL),(576,76,19,2,NULL),(577,87,28,2,NULL),(578,88,28,2,NULL),(579,89,28,2,NULL),(580,90,28,2,NULL),(581,91,28,2,NULL),(582,94,28,2,NULL),(583,96,28,2,NULL),(584,98,28,2,NULL),(585,87,30,2,NULL),(586,88,30,2,NULL),(587,89,30,2,NULL),(588,90,30,2,NULL),(589,91,30,2,NULL),(590,94,30,2,NULL),(591,96,30,2,NULL),(592,98,30,2,NULL),(593,79,6,2,NULL),(594,82,6,2,NULL),(595,79,14,2,NULL),(596,82,14,2,NULL),(597,79,15,2,NULL),(598,82,15,2,NULL),(599,79,18,2,NULL),(600,82,18,2,NULL),(601,79,23,2,NULL),(602,82,23,2,NULL),(603,79,29,2,NULL),(604,82,29,2,NULL),(605,79,24,2,NULL),(606,82,24,2,NULL),(607,79,28,2,NULL),(608,82,28,2,NULL),(609,79,30,2,NULL),(610,82,30,2,NULL),(611,30,23,2,NULL),(612,34,23,2,NULL),(613,38,23,2,NULL),(614,40,23,2,NULL),(615,43,23,2,NULL),(616,45,23,2,NULL),(617,46,23,2,NULL),(618,50,23,2,NULL),(619,53,23,2,NULL),(620,56,23,2,NULL),(621,59,23,2,NULL),(622,61,23,2,NULL),(623,63,23,2,NULL),(624,65,23,2,NULL),(625,67,23,2,NULL),(626,69,23,2,NULL),(627,92,23,2,NULL),(628,93,23,2,NULL),(629,95,23,2,NULL),(630,97,23,2,NULL),(631,99,23,2,NULL),(632,101,23,2,NULL),(633,102,23,2,NULL),(634,103,23,2,NULL),(635,73,23,2,NULL),(636,76,23,2,NULL),(637,30,29,2,NULL),(638,34,29,2,NULL),(639,38,29,2,NULL),(640,40,29,2,NULL),(641,43,29,2,NULL),(642,45,29,2,NULL),(643,46,29,2,NULL),(644,50,29,2,NULL),(645,53,29,2,NULL),(646,56,29,2,NULL),(647,59,29,2,NULL),(648,61,29,2,NULL),(649,63,29,2,NULL),(650,65,29,2,NULL),(651,67,29,2,NULL),(652,69,29,2,NULL),(653,92,29,2,NULL),(654,93,29,2,NULL),(655,95,29,2,NULL),(656,97,29,2,NULL),(657,99,29,2,NULL),(658,101,29,2,NULL),(659,102,29,2,NULL),(660,103,29,2,NULL),(661,73,29,2,NULL),(662,76,29,2,NULL),(663,30,14,2,NULL),(664,34,14,2,NULL),(665,38,14,2,NULL),(666,40,14,2,NULL),(667,43,14,2,NULL),(668,45,14,2,NULL),(669,46,14,2,NULL),(670,50,14,2,NULL),(671,30,15,2,NULL),(672,34,15,2,NULL),(673,38,15,2,NULL),(674,40,15,2,NULL),(675,43,15,2,NULL),(676,45,15,2,NULL),(677,46,15,2,NULL),(678,50,15,2,NULL),(679,53,6,2,NULL),(680,56,6,2,NULL),(681,59,6,2,NULL),(682,61,6,2,NULL),(683,63,6,2,NULL),(684,65,6,2,NULL),(685,67,6,2,NULL),(686,69,6,2,NULL),(687,30,18,2,NULL),(688,34,18,2,NULL),(689,38,18,2,NULL),(690,40,18,2,NULL),(691,43,18,2,NULL),(692,45,18,2,NULL),(693,46,18,2,NULL),(694,50,18,2,NULL),(695,30,24,2,NULL),(696,34,24,2,NULL),(697,38,24,2,NULL),(698,40,24,2,NULL),(699,43,24,2,NULL),(700,45,24,2,NULL),(701,46,24,2,NULL),(702,50,24,2,NULL),(703,92,6,2,NULL),(704,93,6,2,NULL),(705,95,6,2,NULL),(706,97,6,2,NULL),(707,99,6,2,NULL),(708,101,6,2,NULL),(709,102,6,2,NULL),(710,103,6,2,NULL),(711,73,6,2,NULL),(712,76,6,2,NULL),(713,30,28,2,NULL),(714,34,28,2,NULL),(715,38,28,2,NULL),(716,40,28,2,NULL),(717,43,28,2,NULL),(718,45,28,2,NULL),(719,46,28,2,NULL),(720,50,28,2,NULL),(721,30,30,2,NULL),(722,34,30,2,NULL),(723,38,30,2,NULL),(724,40,30,2,NULL),(725,43,30,2,NULL),(726,45,30,2,NULL),(727,46,30,2,NULL),(728,50,30,2,NULL),(729,53,14,2,NULL),(730,56,14,2,NULL),(731,59,14,2,NULL),(732,61,14,2,NULL),(733,63,14,2,NULL),(734,65,14,2,NULL),(735,67,14,2,NULL),(736,69,14,2,NULL),(737,92,14,2,NULL),(738,93,14,2,NULL),(739,95,14,2,NULL),(740,97,14,2,NULL),(741,99,14,2,NULL),(742,101,14,2,NULL),(743,102,14,2,NULL),(744,103,14,2,NULL),(745,73,14,2,NULL),(746,76,14,2,NULL),(747,53,18,2,NULL),(748,56,18,2,NULL),(749,59,18,2,NULL),(750,61,18,2,NULL),(751,63,18,2,NULL),(752,65,18,2,NULL),(753,67,18,2,NULL),(754,69,18,2,NULL),(755,53,24,2,NULL),(756,56,24,2,NULL),(757,59,24,2,NULL),(758,61,24,2,NULL),(759,63,24,2,NULL),(760,65,24,2,NULL),(761,67,24,2,NULL),(762,69,24,2,NULL),(763,92,15,2,NULL),(764,93,15,2,NULL),(765,95,15,2,NULL),(766,97,15,2,NULL),(767,99,15,2,NULL),(768,101,15,2,NULL),(769,102,15,2,NULL),(770,103,15,2,NULL),(771,73,15,2,NULL),(772,76,15,2,NULL),(773,53,28,2,NULL),(774,56,28,2,NULL),(775,59,28,2,NULL),(776,61,28,2,NULL),(777,63,28,2,NULL),(778,65,28,2,NULL),(779,67,28,2,NULL),(780,69,28,2,NULL),(781,53,30,2,NULL),(782,56,30,2,NULL),(783,59,30,2,NULL),(784,61,30,2,NULL),(785,63,30,2,NULL),(786,65,30,2,NULL),(787,67,30,2,NULL),(788,69,30,2,NULL),(789,92,18,2,NULL),(790,93,18,2,NULL),(791,95,18,2,NULL),(792,97,18,2,NULL),(793,99,18,2,NULL),(794,101,18,2,NULL),(795,102,18,2,NULL),(796,103,18,2,NULL),(797,73,18,2,NULL),(798,76,18,2,NULL),(799,73,24,2,NULL),(800,76,24,2,NULL),(801,92,28,2,NULL),(802,93,28,2,NULL),(803,95,28,2,NULL),(804,97,28,2,NULL),(805,99,28,2,NULL),(806,101,28,2,NULL),(807,102,28,2,NULL),(808,103,28,2,NULL),(809,92,30,2,NULL),(810,93,30,2,NULL),(811,95,30,2,NULL),(812,97,30,2,NULL),(813,99,30,2,NULL),(814,101,30,2,NULL),(815,102,30,2,NULL),(816,103,30,2,NULL),(817,73,28,2,NULL),(818,76,28,2,NULL),(819,73,30,2,NULL),(820,76,30,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (12,'android.permission.ACCESS_COARSE_LOCATION'),(11,'android.permission.ACCESS_FINE_LOCATION'),(4,'android.permission.ACCESS_NETWORK_STATE'),(3,'android.permission.INTERNET'),(6,'android.permission.READ_PHONE_STATE'),(1,'android.webkit.permission.PLUGIN'),(5,'com.google.android.c2dm.permission.RECEIVE'),(8,'com.google.android.c2dm.permission.SEND'),(13,'com.wAppsGeyserSoapOperaYouTubeApp.permission.C2D_MESSAGE'),(7,'com.wDokuStream.permission.C2D_MESSAGE'),(10,'com.wSETMAXLive.permission.C2D_MESSAGE'),(2,'com.wTdtandroid.permission.C2D_MESSAGE'),(9,'com.wadventureques.permission.C2D_MESSAGE');
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
INSERT INTO `Permissions` VALUES (2,'s'),(7,'s'),(9,'s'),(10,'s'),(13,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'',NULL,NULL,NULL),(2,NULL,NULL,'market://details?id=com.wDokuStream',NULL,NULL,NULL),(3,NULL,NULL,'',NULL,NULL,NULL),(4,NULL,NULL,'',NULL,NULL,NULL),(5,NULL,NULL,'',NULL,NULL,NULL),(6,NULL,NULL,'',NULL,NULL,NULL),(7,NULL,NULL,'http://www.appsgeyser.com',NULL,NULL,NULL),(8,NULL,NULL,'market://details?id=com.wTdtandroid',NULL,NULL,NULL),(9,NULL,NULL,'',NULL,NULL,NULL),(10,NULL,NULL,'http://www.appsgeyser.com',NULL,NULL,NULL),(11,NULL,NULL,'http://www.appsgeyser.com?(.*)',NULL,NULL,NULL),(12,NULL,NULL,'',NULL,NULL,NULL),(13,NULL,NULL,'market://details?id=com.wTdtandroid',NULL,NULL,NULL),(14,NULL,NULL,'http://www.appsgeyser.com?(.*)',NULL,NULL,NULL),(15,NULL,NULL,'',NULL,NULL,NULL),(16,NULL,NULL,'',NULL,NULL,NULL),(17,NULL,NULL,'market://details?id=com.wTdtandroid',NULL,NULL,NULL),(18,NULL,NULL,'market://details?id=com.wadventureques',NULL,NULL,NULL),(19,NULL,NULL,'',NULL,NULL,NULL),(20,NULL,NULL,'',NULL,NULL,NULL),(21,NULL,NULL,'',NULL,NULL,NULL),(22,NULL,NULL,'http://www.appsgeyser.com',NULL,NULL,NULL),(23,NULL,NULL,'',NULL,NULL,NULL),(24,NULL,NULL,'http://www.appsgeyser.com?(.*)',NULL,NULL,NULL),(25,NULL,NULL,'http://www.appsgeyser.com',NULL,NULL,NULL),(26,NULL,NULL,'',NULL,NULL,NULL),(27,NULL,NULL,'http://www.appsgeyser.com?(.*)',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'market://details?id=com.wSETMAXLive',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'',NULL,NULL,NULL),(38,NULL,NULL,'',NULL,NULL,NULL),(39,NULL,NULL,'market://details?id=com.wAppsGeyserSoapOperaYouTubeApp',NULL,NULL,NULL),(40,NULL,NULL,'',NULL,NULL,NULL),(41,NULL,NULL,'',NULL,NULL,NULL),(42,NULL,NULL,'http://www.appsgeyser.com',NULL,NULL,NULL),(43,NULL,NULL,'',NULL,NULL,NULL),(44,NULL,NULL,'http://www.appsgeyser.com?(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,2,2),(8,2,3),(9,2,4),(10,2,5),(11,3,1),(12,2,6),(13,3,3),(14,3,4),(15,3,5),(16,3,7),(17,4,1),(18,4,3),(19,4,4),(20,4,5),(21,4,6),(22,4,9),(23,5,1),(24,5,3),(25,5,4),(26,5,5),(27,5,10),(28,5,11),(29,5,12),(30,6,1),(31,6,3),(32,6,4),(33,6,5),(34,6,13);
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

-- Dump completed on 2015-10-12  3:30:35
