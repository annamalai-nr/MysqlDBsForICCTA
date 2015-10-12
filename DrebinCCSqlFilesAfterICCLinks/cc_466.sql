-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_466
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
INSERT INTO `ActionStrings` VALUES (10,'(.*)'),(4,'android.intent.action.CHOOSER'),(1,'android.intent.action.MAIN'),(7,'android.intent.action.SCREEN_OFF'),(8,'android.intent.action.USER_PRESENT'),(5,'android.intent.action.VIEW'),(9,'com.android.launcher.action.INSTALL_SHORTCUT'),(3,'com.google.android.c2dm.intent.RECEIVE'),(6,'com.google.android.c2dm.intent.REGISTER'),(2,'com.google.android.c2dm.intent.REGISTRATION');
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
INSERT INTO `Applications` VALUES (1,'com.wVoiceUnlocker',1330599784),(2,'com.wTdtandroid',1330519908),(3,'com.wEarnMoneyForFree',1330050877),(4,'com.wCMCC',1334279924),(5,'com.wCoGiaoThao',1337845505),(6,'com.wRadioStreamingIndonesia',1345695842);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (1,'android.intent.category.DEFAULT'),(2,'android.intent.category.LAUNCHER'),(5,'com.wCMCC'),(7,'com.wCoGiaoThao'),(6,'com.wEarnMoneyForFree'),(8,'com.wRadioStreamingIndonesia'),(4,'com.wTdtandroid'),(3,'com.wVoiceUnlocker');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.wVoiceUnlocker.MainNavigationActivity'),(2,1,'com.wVoiceUnlocker.MessageViewer'),(3,1,'com.wVoiceUnlocker.Server.C2DMClientReceiver'),(4,1,'com.google.android.c2dm.C2DMBroadcastReceiver'),(5,2,'com.wTdtandroid.MainNavigationActivity'),(6,2,'com.wTdtandroid.MessageViewer'),(7,2,'com.wTdtandroid.Server.C2DMClientReceiver'),(8,2,'com.google.android.c2dm.C2DMBroadcastReceiver'),(9,3,'com.wEarnMoneyForFree.MainNavigationActivity'),(10,4,'com.wCMCC.MainNavigationActivity'),(11,4,'com.wCMCC.MessageViewer'),(12,3,'com.wEarnMoneyForFree.MessageViewer'),(13,4,'com.wCMCC.Server.C2DMClientReceiver'),(14,4,'com.google.android.c2dm.C2DMBroadcastReceiver'),(15,3,'com.wEarnMoneyForFree.Server.C2DMClientReceiver'),(16,3,'com.google.android.c2dm.C2DMBroadcastReceiver'),(17,5,'com.wCoGiaoThao.MainNavigationActivity'),(18,5,'com.wCoGiaoThao.MessageViewer'),(19,5,'com.google.ads.AdActivity'),(20,5,'com.wCoGiaoThao.Server.C2DMClientReceiver'),(21,5,'com.google.android.c2dm.C2DMBroadcastReceiver'),(22,6,'com.wRadioStreamingIndonesia.MainNavigationActivity'),(23,6,'com.wRadioStreamingIndonesia.MessageViewer'),(24,6,'com.google.ads.AdActivity'),(25,6,'com.wRadioStreamingIndonesia.Server.C2DMClientReceiver'),(26,6,'com.google.android.c2dm.C2DMBroadcastReceiver'),(27,1,'com.wVoiceUnlocker.Utils.BrowserDownloadListener'),(28,2,'com.wTdtandroid.Utils.BrowserDownloadListener'),(29,1,'com.google.android.c2dm.C2DMessaging'),(30,4,'com.wCMCC.Views.AboutDialog$1'),(31,4,'com.wCMCC.Utils.BrowserDownloadListener'),(32,3,'com.wEarnMoneyForFree.Utils.BrowserDownloadListener'),(33,4,'com.google.android.c2dm.C2DMessaging'),(34,3,'com.google.android.c2dm.C2DMessaging'),(35,2,'com.google.android.c2dm.C2DMessaging'),(36,6,'com.wRadioStreamingIndonesia.Utils.BrowserDownloadListener'),(37,5,'com.wCoGiaoThao.Utils.BrowserDownloadListener'),(38,5,'com.google.ads.util.AdUtil$UserActivityReceiver'),(39,6,'com.wRadioStreamingIndonesia.Utils.ShortcutFabric'),(40,5,'com.wCoGiaoThao.Views.AboutDialog$1'),(41,6,'com.google.android.c2dm.C2DMessaging'),(42,6,'com.wRadioStreamingIndonesia.Views.AboutDialog$1'),(43,5,'com.google.android.c2dm.C2DMessaging'),(44,6,'com.google.ads.util.AdUtil$UserActivityReceiver');
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'url'),(2,4,'registration_id'),(3,4,'unregistered'),(4,8,'registration_id'),(5,2,'title'),(6,6,'url'),(7,2,'url'),(8,4,'message'),(9,16,'error'),(10,16,'registration_id'),(11,4,'error'),(12,14,'registration_id'),(13,4,'title'),(14,14,'message'),(15,14,'unregistered'),(16,16,'title'),(17,16,'unregistered'),(18,12,'url'),(19,16,'url'),(20,8,'url'),(21,6,'title'),(22,8,'error'),(23,12,'title'),(24,8,'message'),(25,11,'url'),(26,8,'title'),(27,11,'title'),(28,8,'unregistered'),(29,14,'title'),(30,14,'url'),(31,14,'error'),(32,19,'com.google.circles.platform.result.extra.ACTION'),(33,16,'message'),(34,21,'url'),(35,19,'com.google.circles.platform.result.extra.CONFIRMATION'),(36,21,'error'),(37,21,'title'),(38,26,'url'),(39,26,'registration_id'),(40,26,'message'),(41,23,'url'),(42,24,'com.google.circles.platform.result.extra.CONFIRMATION'),(43,19,'action'),(44,18,'title'),(45,24,'com.google.circles.platform.result.extra.ACTION'),(46,21,'message'),(47,26,'error'),(48,24,'params'),(49,18,'url'),(50,19,'com.google.ads.AdOpener'),(51,19,'params'),(52,21,'unregistered'),(53,21,'registration_id'),(54,24,'action'),(55,26,'title'),(56,24,'com.google.ads.AdOpener'),(57,23,'title'),(58,26,'unregistered');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'r',1,7,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'r',1,7,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'r',1,7,NULL),(15,15,'s',0,NULL,NULL),(16,16,'r',1,7,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'r',1,7,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'s',0,NULL,NULL),(26,26,'r',1,7,NULL),(27,38,'r',1,NULL,NULL),(28,44,'r',1,NULL,NULL);
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
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,3,5),(4,4,1),(5,5,5),(6,6,1),(7,7,1),(8,7,4),(9,8,9),(10,10,10),(11,9,10),(12,11,10),(13,12,9),(14,13,5),(15,14,9),(16,15,14),(17,15,10),(18,16,5),(19,17,10),(20,18,16),(21,18,9),(22,19,10),(23,20,8),(24,20,5),(25,21,9),(26,22,14),(27,22,10),(28,23,10),(29,24,10),(30,25,10),(31,26,10),(32,27,19),(33,28,22),(34,29,10),(35,30,17),(36,31,22),(37,32,22),(38,33,17),(39,34,22),(40,35,17),(41,36,22),(42,37,17),(43,38,26),(44,38,22),(45,39,24),(46,40,17),(47,41,19),(48,42,22),(49,43,17),(50,43,21),(51,44,24);
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
INSERT INTO `ExitPoints` VALUES (1,1,'<com.wVoiceUnlocker.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',42,'a',NULL),(2,27,'<com.wVoiceUnlocker.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',21,'a',NULL),(3,28,'<com.wTdtandroid.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',21,'a',NULL),(4,27,'<com.wVoiceUnlocker.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',15,'a',NULL),(5,5,'<com.wTdtandroid.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',42,'a',NULL),(6,1,'<com.wVoiceUnlocker.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(7,29,'<com.google.android.c2dm.C2DMessaging: void register(android.content.Context,java.lang.String)>',9,'s',NULL),(8,9,'<com.wEarnMoneyForFree.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(9,30,'<com.wCMCC.Views.AboutDialog$1: boolean onTouch(android.view.View,android.view.MotionEvent)>',11,'a',NULL),(10,31,'<com.wCMCC.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',21,'a',NULL),(11,10,'<com.wCMCC.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',51,'a',NULL),(12,32,'<com.wEarnMoneyForFree.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',21,'a',NULL),(13,28,'<com.wTdtandroid.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',15,'a',NULL),(14,32,'<com.wEarnMoneyForFree.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',15,'a',NULL),(15,33,'<com.google.android.c2dm.C2DMessaging: void register(android.content.Context,java.lang.String)>',9,'s',NULL),(16,5,'<com.wTdtandroid.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(17,31,'<com.wCMCC.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',21,'a',NULL),(18,34,'<com.google.android.c2dm.C2DMessaging: void register(android.content.Context,java.lang.String)>',9,'s',NULL),(19,10,'<com.wCMCC.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(20,35,'<com.google.android.c2dm.C2DMessaging: void register(android.content.Context,java.lang.String)>',9,'s',NULL),(21,9,'<com.wEarnMoneyForFree.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',42,'a',NULL),(22,33,'<com.google.android.c2dm.C2DMessaging: void register(android.content.Context,java.lang.String)>',9,'s',NULL),(23,10,'<com.wCMCC.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',51,'a',NULL),(24,10,'<com.wCMCC.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(25,31,'<com.wCMCC.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',15,'a',NULL),(26,30,'<com.wCMCC.Views.AboutDialog$1: boolean onTouch(android.view.View,android.view.MotionEvent)>',11,'a',NULL),(27,19,'<com.google.ads.AdActivity: void a(java.util.HashMap,com.google.ads.internal.d)>',23,'a',NULL),(28,36,'<com.wRadioStreamingIndonesia.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',21,'a',NULL),(29,31,'<com.wCMCC.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',15,'a',NULL),(30,17,'<com.wCoGiaoThao.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',51,'a',NULL),(31,22,'<com.wRadioStreamingIndonesia.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(32,22,'<com.wRadioStreamingIndonesia.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',51,'a',NULL),(33,37,'<com.wCoGiaoThao.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',21,'a',NULL),(34,39,'<com.wRadioStreamingIndonesia.Utils.ShortcutFabric: void createShortcut(java.lang.String,java.lang.String,android.content.Context)>',24,'r',NULL),(35,37,'<com.wCoGiaoThao.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',15,'a',NULL),(36,36,'<com.wRadioStreamingIndonesia.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',15,'a',NULL),(37,40,'<com.wCoGiaoThao.Views.AboutDialog$1: boolean onTouch(android.view.View,android.view.MotionEvent)>',11,'a',NULL),(38,41,'<com.google.android.c2dm.C2DMessaging: void register(android.content.Context,java.lang.String)>',9,'s',NULL),(39,24,'<com.google.ads.AdActivity: void b(java.util.HashMap,com.google.ads.internal.d)>',31,'a',NULL),(40,17,'<com.wCoGiaoThao.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(41,19,'<com.google.ads.AdActivity: void b(java.util.HashMap,com.google.ads.internal.d)>',31,'a',NULL),(42,42,'<com.wRadioStreamingIndonesia.Views.AboutDialog$1: boolean onTouch(android.view.View,android.view.MotionEvent)>',11,'a',NULL),(43,43,'<com.google.android.c2dm.C2DMessaging: void register(android.content.Context,java.lang.String)>',9,'s',NULL),(44,24,'<com.google.ads.AdActivity: void a(java.util.HashMap,com.google.ads.internal.d)>',23,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,4),(2,2,4),(3,3,4),(4,4,4),(5,5,4),(6,6,4),(7,7,4),(8,8,4),(9,9,5),(10,10,5),(11,11,5),(12,12,4),(13,13,5),(14,14,4),(15,15,4),(16,16,6),(17,17,4),(18,18,4),(19,19,5),(20,20,4),(21,21,5),(22,22,5),(23,23,4),(24,24,5),(25,25,4),(26,26,4),(27,27,5),(28,28,5),(29,29,4),(30,30,5),(31,31,4),(32,32,5),(33,33,6),(34,34,4),(35,35,4),(36,36,5),(37,37,5),(38,38,6),(39,39,4),(40,40,4),(41,41,5),(42,43,4),(43,42,6),(44,44,4),(45,45,4),(46,46,4),(47,47,6),(48,48,4),(49,49,4),(50,50,4),(51,51,4),(52,53,4),(53,52,5),(54,54,4),(55,55,4),(56,56,4),(57,57,5),(58,58,4),(59,59,4),(60,60,4),(61,61,5),(62,63,4),(63,64,5),(64,65,4),(65,66,5),(66,67,5),(67,68,5),(68,69,4),(69,70,5),(70,71,4),(71,72,4),(72,73,4),(73,74,4),(74,75,4),(75,76,4),(76,77,4),(77,78,4),(78,79,4),(79,80,4),(80,81,4),(81,82,4),(82,83,4),(83,84,4),(84,85,5),(85,86,4),(86,87,9),(87,88,5),(88,89,5),(89,90,5),(90,91,5),(91,92,6),(92,93,5),(93,94,5),(94,95,5),(95,96,10),(96,97,10),(97,98,5),(98,99,5),(99,100,10),(100,101,10),(101,102,5),(102,103,5),(103,104,5),(104,105,6),(105,106,5);
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
INSERT INTO `ICategories` VALUES (1,62,2),(2,107,2);
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
INSERT INTO `IClasses` VALUES (1,62,'com.google.android.apps.circles.platform.PlusOneActivity'),(2,107,'com.google.android.apps.circles.platform.PlusOneActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,9,1),(2,10,2),(3,11,3),(4,13,4),(5,19,5),(6,21,6),(7,22,7),(8,24,8),(9,27,9),(10,28,10),(11,30,11),(12,32,12),(13,36,13),(14,37,14),(15,41,15),(16,52,16),(17,57,17),(18,61,18),(19,64,19),(20,66,20),(21,67,21),(22,68,22),(23,70,23),(24,85,24),(25,88,25),(26,89,26),(27,90,27),(28,91,28),(29,93,29),(30,94,30),(31,95,31),(32,96,32),(33,97,33),(34,98,34),(35,99,35),(36,100,36),(37,101,37),(38,103,38),(39,102,39),(40,104,40),(41,106,41);
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'android.intent.extra.INTENT'),(2,2,'android.intent.extra.INTENT'),(3,3,'android.intent.extra.TITLE'),(4,3,'android.intent.extra.INTENT'),(5,4,'android.intent.extra.INTENT'),(6,5,'android.intent.extra.TITLE'),(7,5,'android.intent.extra.INTENT'),(8,6,'android.intent.extra.INTENT'),(9,7,'android.intent.extra.TITLE'),(10,7,'android.intent.extra.INTENT'),(11,8,'android.intent.extra.TITLE'),(12,8,'android.intent.extra.INTENT'),(13,12,'android.intent.extra.INTENT'),(14,14,'android.intent.extra.INTENT'),(15,15,'android.intent.extra.TITLE'),(16,15,'android.intent.extra.INTENT'),(17,16,'sender'),(18,17,'android.intent.extra.INTENT'),(19,16,'app'),(20,18,'android.intent.extra.TITLE'),(21,18,'android.intent.extra.INTENT'),(22,20,'android.intent.extra.INTENT'),(23,23,'android.intent.extra.TITLE'),(24,23,'android.intent.extra.INTENT'),(25,25,'android.intent.extra.TITLE'),(26,25,'android.intent.extra.INTENT'),(27,26,'android.intent.extra.INTENT'),(28,29,'android.intent.extra.INTENT'),(29,31,'android.intent.extra.TITLE'),(30,31,'android.intent.extra.INTENT'),(31,33,'sender'),(32,34,'android.intent.extra.INTENT'),(33,33,'app'),(34,35,'android.intent.extra.TITLE'),(35,35,'android.intent.extra.INTENT'),(36,38,'sender'),(37,38,'app'),(38,39,'android.intent.extra.INTENT'),(39,40,'android.intent.extra.TITLE'),(40,40,'android.intent.extra.INTENT'),(41,43,'android.intent.extra.INTENT'),(42,42,'sender'),(43,42,'app'),(44,44,'android.intent.extra.TITLE'),(45,45,'android.intent.extra.INTENT'),(46,44,'android.intent.extra.INTENT'),(47,46,'android.intent.extra.TITLE'),(48,46,'android.intent.extra.INTENT'),(49,47,'sender'),(50,48,'android.intent.extra.INTENT'),(51,47,'app'),(52,49,'android.intent.extra.INTENT'),(53,50,'android.intent.extra.INTENT'),(54,51,'android.intent.extra.TITLE'),(55,51,'android.intent.extra.INTENT'),(56,53,'android.intent.extra.TITLE'),(57,53,'android.intent.extra.INTENT'),(58,54,'android.intent.extra.INTENT'),(59,55,'android.intent.extra.INTENT'),(60,56,'android.intent.extra.TITLE'),(61,56,'android.intent.extra.INTENT'),(62,58,'android.intent.extra.TITLE'),(63,58,'android.intent.extra.INTENT'),(64,59,'android.intent.extra.TITLE'),(65,59,'android.intent.extra.INTENT'),(66,60,'android.intent.extra.INTENT'),(67,62,'com.google.circles.platform.intent.extra.ACTION'),(68,63,'android.intent.extra.TITLE'),(69,62,'(.*)'),(70,62,'com.google.circles.platform.intent.extra.ENTITY'),(71,63,'android.intent.extra.INTENT'),(72,62,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(73,65,'android.intent.extra.TITLE'),(74,65,'android.intent.extra.INTENT'),(75,69,'android.intent.extra.INTENT'),(76,71,'android.intent.extra.INTENT'),(77,72,'android.intent.extra.TITLE'),(78,72,'android.intent.extra.INTENT'),(79,73,'android.intent.extra.INTENT'),(80,74,'android.intent.extra.INTENT'),(81,75,'android.intent.extra.INTENT'),(82,76,'android.intent.extra.TITLE'),(83,76,'android.intent.extra.INTENT'),(84,77,'android.intent.extra.TITLE'),(85,77,'android.intent.extra.INTENT'),(86,78,'android.intent.extra.INTENT'),(87,79,'android.intent.extra.INTENT'),(88,80,'android.intent.extra.TITLE'),(89,80,'android.intent.extra.INTENT'),(90,81,'android.intent.extra.TITLE'),(91,81,'android.intent.extra.INTENT'),(92,82,'android.intent.extra.TITLE'),(93,82,'android.intent.extra.INTENT'),(94,83,'android.intent.extra.INTENT'),(95,84,'android.intent.extra.TITLE'),(96,84,'android.intent.extra.INTENT'),(97,86,'android.intent.extra.TITLE'),(98,86,'android.intent.extra.INTENT'),(99,87,'android.intent.extra.shortcut.NAME'),(100,87,'android.intent.extra.shortcut.ICON_RESOURCE'),(101,87,'android.intent.extra.shortcut.INTENT'),(102,92,'sender'),(103,92,'app'),(104,105,'sender'),(105,105,'app'),(106,107,'com.google.circles.platform.intent.extra.ACTION'),(107,107,'(.*)'),(108,107,'com.google.circles.platform.intent.extra.ENTITY'),(109,107,'com.google.circles.platform.intent.extra.ENTITY_TYPE');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,3),(5,5,2),(6,6,3),(7,7,1),(8,8,1),(9,9,1),(10,10,2),(11,11,2),(12,12,3),(13,13,3),(14,14,2),(15,15,3),(16,16,1),(17,17,2),(18,18,1),(19,19,3),(20,20,2),(21,21,3),(22,22,8),(23,22,7),(24,23,7),(25,23,8);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,1,2),(3,2,1),(4,2,2),(5,3,3),(6,4,3),(7,5,4),(8,6,4),(9,7,1),(10,7,2),(11,8,1),(12,8,2),(13,9,1),(14,9,2),(15,10,5),(16,11,5),(17,12,5),(18,13,5),(19,14,6),(20,15,6),(21,16,1),(22,16,2),(23,17,7),(24,18,1),(25,18,2),(26,19,7),(27,20,8),(28,21,8);
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
INSERT INTO `IMimeTypes` VALUES (1,96,'(.*)','(.*)'),(2,99,'(.*)','(.*)'),(3,100,'(.*)','(.*)'),(4,102,'(.*)','(.*)');
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
INSERT INTO `IPackages` VALUES (1,62,'com.google.android.apps.plus'),(2,107,'com.google.android.apps.plus');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,4,0),(4,4,0),(5,8,0),(6,8,0),(7,10,0),(8,9,0),(9,10,0),(10,14,0),(11,14,0),(12,14,0),(13,14,0),(14,16,0),(15,16,0),(16,17,0),(17,21,0),(18,22,0),(19,21,0),(20,26,0),(21,26,0),(22,27,0),(23,28,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,1,1,0),(4,1,1,0),(5,1,1,0),(6,1,1,0),(7,1,1,0),(8,1,1,0),(9,2,1,0),(10,3,1,0),(11,4,1,0),(12,5,1,0),(13,6,1,0),(14,5,1,0),(15,5,1,0),(16,7,1,0),(17,5,1,0),(18,5,1,0),(19,8,1,0),(20,5,1,0),(21,10,1,0),(22,9,1,0),(23,5,1,0),(24,9,1,0),(25,5,1,0),(26,11,1,0),(27,12,1,0),(28,9,1,0),(29,11,1,0),(30,13,1,0),(31,11,1,0),(32,14,1,0),(33,15,1,0),(34,11,1,0),(35,11,1,0),(36,16,1,0),(37,17,1,0),(38,18,1,0),(39,11,1,0),(40,11,1,0),(41,19,1,0),(42,20,1,0),(43,21,1,0),(44,11,1,0),(45,21,1,0),(46,21,1,0),(47,22,1,0),(48,23,1,0),(49,21,1,0),(50,23,1,0),(51,21,1,0),(52,24,1,0),(53,23,1,0),(54,21,1,0),(55,23,1,0),(56,21,1,0),(57,25,1,0),(58,23,1,0),(59,21,1,0),(60,23,1,0),(61,26,1,0),(62,27,0,0),(63,23,1,0),(64,26,1,0),(65,23,1,0),(66,26,1,0),(67,28,1,0),(68,29,1,0),(69,30,1,0),(70,31,1,0),(71,30,1,0),(72,30,1,0),(73,32,1,0),(74,30,1,0),(75,32,1,0),(76,30,1,0),(77,32,1,0),(78,30,1,0),(79,32,1,0),(80,30,1,0),(81,32,1,0),(82,30,1,0),(83,32,1,0),(84,32,1,0),(85,33,1,0),(86,32,1,0),(87,34,1,0),(88,35,1,0),(89,36,1,0),(90,37,1,0),(91,37,1,0),(92,38,1,0),(93,37,1,0),(94,39,1,0),(95,40,1,0),(96,39,1,0),(97,39,1,0),(98,41,1,0),(99,39,1,0),(100,41,1,0),(101,41,1,0),(102,41,1,0),(103,42,1,0),(104,42,1,0),(105,43,1,0),(106,42,1,0),(107,44,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=785 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,26,1,2,NULL),(2,29,1,2,NULL),(3,31,1,2,NULL),(4,34,1,2,NULL),(5,35,1,2,NULL),(6,39,1,2,NULL),(7,40,1,2,NULL),(8,44,1,2,NULL),(9,48,1,2,NULL),(10,50,1,2,NULL),(11,53,1,2,NULL),(12,55,1,2,NULL),(13,58,1,2,NULL),(14,60,1,2,NULL),(15,63,1,2,NULL),(16,65,1,2,NULL),(17,1,10,2,NULL),(18,2,10,2,NULL),(19,3,10,2,NULL),(20,4,10,2,NULL),(21,5,10,2,NULL),(22,6,10,2,NULL),(23,7,10,2,NULL),(24,8,10,2,NULL),(25,26,4,2,NULL),(26,29,4,2,NULL),(27,31,4,2,NULL),(28,34,4,2,NULL),(29,35,4,2,NULL),(30,39,4,2,NULL),(31,40,4,2,NULL),(32,44,4,2,NULL),(33,48,4,2,NULL),(34,50,4,2,NULL),(35,53,4,2,NULL),(36,55,4,2,NULL),(37,58,4,2,NULL),(38,60,4,2,NULL),(39,63,4,2,NULL),(40,65,4,2,NULL),(41,26,5,2,NULL),(42,29,5,2,NULL),(43,31,5,2,NULL),(44,34,5,2,NULL),(45,35,5,2,NULL),(46,39,5,2,NULL),(47,40,5,2,NULL),(48,44,5,2,NULL),(49,48,5,2,NULL),(50,50,5,2,NULL),(51,53,5,2,NULL),(52,55,5,2,NULL),(53,58,5,2,NULL),(54,60,5,2,NULL),(55,63,5,2,NULL),(56,65,5,2,NULL),(57,12,10,2,NULL),(58,14,10,2,NULL),(59,15,10,2,NULL),(60,17,10,2,NULL),(61,18,10,2,NULL),(62,20,10,2,NULL),(63,23,10,2,NULL),(64,25,10,2,NULL),(65,26,8,2,NULL),(66,29,8,2,NULL),(67,31,8,2,NULL),(68,34,8,2,NULL),(69,35,8,2,NULL),(70,39,8,2,NULL),(71,40,8,2,NULL),(72,44,8,2,NULL),(73,48,8,2,NULL),(74,50,8,2,NULL),(75,53,8,2,NULL),(76,55,8,2,NULL),(77,58,8,2,NULL),(78,60,8,2,NULL),(79,63,8,2,NULL),(80,65,8,2,NULL),(81,26,9,2,NULL),(82,29,9,2,NULL),(83,31,9,2,NULL),(84,34,9,2,NULL),(85,35,9,2,NULL),(86,39,9,2,NULL),(87,40,9,2,NULL),(88,44,9,2,NULL),(89,48,9,2,NULL),(90,50,9,2,NULL),(91,53,9,2,NULL),(92,55,9,2,NULL),(93,58,9,2,NULL),(94,60,9,2,NULL),(95,63,9,2,NULL),(96,65,9,2,NULL),(97,43,10,2,NULL),(98,45,10,2,NULL),(99,46,10,2,NULL),(100,49,10,2,NULL),(101,51,10,2,NULL),(102,54,10,2,NULL),(103,56,10,2,NULL),(104,59,10,2,NULL),(105,26,16,2,NULL),(106,29,16,2,NULL),(107,31,16,2,NULL),(108,34,16,2,NULL),(109,35,16,2,NULL),(110,39,16,2,NULL),(111,40,16,2,NULL),(112,44,16,2,NULL),(113,48,16,2,NULL),(114,50,16,2,NULL),(115,53,16,2,NULL),(116,55,16,2,NULL),(117,58,16,2,NULL),(118,60,16,2,NULL),(119,63,16,2,NULL),(120,65,16,2,NULL),(121,26,14,2,NULL),(122,29,14,2,NULL),(123,31,14,2,NULL),(124,34,14,2,NULL),(125,35,14,2,NULL),(126,39,14,2,NULL),(127,40,14,2,NULL),(128,44,14,2,NULL),(129,48,14,2,NULL),(130,50,14,2,NULL),(131,53,14,2,NULL),(132,55,14,2,NULL),(133,58,14,2,NULL),(134,60,14,2,NULL),(135,63,14,2,NULL),(136,65,14,2,NULL),(137,26,17,2,NULL),(138,29,17,2,NULL),(139,31,17,2,NULL),(140,34,17,2,NULL),(141,35,17,2,NULL),(142,39,17,2,NULL),(143,40,17,2,NULL),(144,44,17,2,NULL),(145,48,17,2,NULL),(146,50,17,2,NULL),(147,53,17,2,NULL),(148,55,17,2,NULL),(149,58,17,2,NULL),(150,60,17,2,NULL),(151,63,17,2,NULL),(152,65,17,2,NULL),(153,69,10,2,NULL),(154,71,10,2,NULL),(155,72,10,2,NULL),(156,74,10,2,NULL),(157,76,10,2,NULL),(158,78,10,2,NULL),(159,80,10,2,NULL),(160,82,10,2,NULL),(161,98,10,2,NULL),(162,101,10,2,NULL),(163,26,21,2,NULL),(164,29,21,2,NULL),(165,31,21,2,NULL),(166,34,21,2,NULL),(167,35,21,2,NULL),(168,39,21,2,NULL),(169,40,21,2,NULL),(170,44,21,2,NULL),(171,48,21,2,NULL),(172,50,21,2,NULL),(173,53,21,2,NULL),(174,55,21,2,NULL),(175,58,21,2,NULL),(176,60,21,2,NULL),(177,63,21,2,NULL),(178,65,21,2,NULL),(179,26,27,2,NULL),(180,29,27,2,NULL),(181,31,27,2,NULL),(182,34,27,2,NULL),(183,35,27,2,NULL),(184,39,27,2,NULL),(185,40,27,2,NULL),(186,44,27,2,NULL),(187,48,27,2,NULL),(188,50,27,2,NULL),(189,53,27,2,NULL),(190,55,27,2,NULL),(191,58,27,2,NULL),(192,60,27,2,NULL),(193,63,27,2,NULL),(194,65,27,2,NULL),(195,26,22,2,NULL),(196,29,22,2,NULL),(197,31,22,2,NULL),(198,34,22,2,NULL),(199,35,22,2,NULL),(200,39,22,2,NULL),(201,40,22,2,NULL),(202,44,22,2,NULL),(203,48,22,2,NULL),(204,50,22,2,NULL),(205,53,22,2,NULL),(206,55,22,2,NULL),(207,58,22,2,NULL),(208,60,22,2,NULL),(209,63,22,2,NULL),(210,65,22,2,NULL),(211,73,10,2,NULL),(212,75,10,2,NULL),(213,77,10,2,NULL),(214,79,10,2,NULL),(215,81,10,2,NULL),(216,83,10,2,NULL),(217,84,10,2,NULL),(218,86,10,2,NULL),(219,94,10,2,NULL),(220,97,10,2,NULL),(221,26,26,2,NULL),(222,29,26,2,NULL),(223,31,26,2,NULL),(224,34,26,2,NULL),(225,35,26,2,NULL),(226,39,26,2,NULL),(227,40,26,2,NULL),(228,44,26,2,NULL),(229,48,26,2,NULL),(230,50,26,2,NULL),(231,53,26,2,NULL),(232,55,26,2,NULL),(233,58,26,2,NULL),(234,60,26,2,NULL),(235,63,26,2,NULL),(236,65,26,2,NULL),(237,26,28,2,NULL),(238,29,28,2,NULL),(239,31,28,2,NULL),(240,34,28,2,NULL),(241,35,28,2,NULL),(242,39,28,2,NULL),(243,40,28,2,NULL),(244,44,28,2,NULL),(245,48,28,2,NULL),(246,50,28,2,NULL),(247,53,28,2,NULL),(248,55,28,2,NULL),(249,58,28,2,NULL),(250,60,28,2,NULL),(251,63,28,2,NULL),(252,65,28,2,NULL),(253,1,14,2,NULL),(254,2,14,2,NULL),(255,3,14,2,NULL),(256,4,14,2,NULL),(257,5,14,2,NULL),(258,6,14,2,NULL),(259,7,14,2,NULL),(260,8,14,2,NULL),(261,12,14,2,NULL),(262,14,14,2,NULL),(263,15,14,2,NULL),(264,17,14,2,NULL),(265,18,14,2,NULL),(266,20,14,2,NULL),(267,23,14,2,NULL),(268,25,14,2,NULL),(269,43,14,2,NULL),(270,45,14,2,NULL),(271,46,14,2,NULL),(272,49,14,2,NULL),(273,51,14,2,NULL),(274,54,14,2,NULL),(275,56,14,2,NULL),(276,59,14,2,NULL),(277,69,14,2,NULL),(278,71,14,2,NULL),(279,72,14,2,NULL),(280,74,14,2,NULL),(281,76,14,2,NULL),(282,78,14,2,NULL),(283,80,14,2,NULL),(284,82,14,2,NULL),(285,98,14,2,NULL),(286,101,14,2,NULL),(287,73,14,2,NULL),(288,75,14,2,NULL),(289,77,14,2,NULL),(290,79,14,2,NULL),(291,81,14,2,NULL),(292,83,14,2,NULL),(293,84,14,2,NULL),(294,86,14,2,NULL),(295,94,14,2,NULL),(296,97,14,2,NULL),(297,69,1,2,NULL),(298,71,1,2,NULL),(299,72,1,2,NULL),(300,74,1,2,NULL),(301,76,1,2,NULL),(302,78,1,2,NULL),(303,80,1,2,NULL),(304,82,1,2,NULL),(305,1,17,2,NULL),(306,2,17,2,NULL),(307,3,17,2,NULL),(308,4,17,2,NULL),(309,5,17,2,NULL),(310,6,17,2,NULL),(311,7,17,2,NULL),(312,8,17,2,NULL),(313,69,4,2,NULL),(314,71,4,2,NULL),(315,72,4,2,NULL),(316,74,4,2,NULL),(317,76,4,2,NULL),(318,78,4,2,NULL),(319,80,4,2,NULL),(320,82,4,2,NULL),(321,69,5,2,NULL),(322,71,5,2,NULL),(323,72,5,2,NULL),(324,74,5,2,NULL),(325,76,5,2,NULL),(326,78,5,2,NULL),(327,80,5,2,NULL),(328,82,5,2,NULL),(329,12,17,2,NULL),(330,14,17,2,NULL),(331,15,17,2,NULL),(332,17,17,2,NULL),(333,18,17,2,NULL),(334,20,17,2,NULL),(335,23,17,2,NULL),(336,25,17,2,NULL),(337,69,8,2,NULL),(338,71,8,2,NULL),(339,72,8,2,NULL),(340,74,8,2,NULL),(341,76,8,2,NULL),(342,78,8,2,NULL),(343,80,8,2,NULL),(344,82,8,2,NULL),(345,69,9,2,NULL),(346,71,9,2,NULL),(347,72,9,2,NULL),(348,74,9,2,NULL),(349,76,9,2,NULL),(350,78,9,2,NULL),(351,80,9,2,NULL),(352,82,9,2,NULL),(353,43,17,2,NULL),(354,45,17,2,NULL),(355,46,17,2,NULL),(356,49,17,2,NULL),(357,51,17,2,NULL),(358,54,17,2,NULL),(359,56,17,2,NULL),(360,59,17,2,NULL),(361,69,16,2,NULL),(362,71,16,2,NULL),(363,72,16,2,NULL),(364,74,16,2,NULL),(365,76,16,2,NULL),(366,78,16,2,NULL),(367,80,16,2,NULL),(368,82,16,2,NULL),(369,98,17,2,NULL),(370,101,17,2,NULL),(371,69,21,2,NULL),(372,71,21,2,NULL),(373,72,21,2,NULL),(374,74,21,2,NULL),(375,76,21,2,NULL),(376,78,21,2,NULL),(377,80,21,2,NULL),(378,82,21,2,NULL),(379,69,27,2,NULL),(380,71,27,2,NULL),(381,72,27,2,NULL),(382,74,27,2,NULL),(383,76,27,2,NULL),(384,78,27,2,NULL),(385,80,27,2,NULL),(386,82,27,2,NULL),(387,69,22,2,NULL),(388,71,22,2,NULL),(389,72,22,2,NULL),(390,74,22,2,NULL),(391,76,22,2,NULL),(392,78,22,2,NULL),(393,80,22,2,NULL),(394,82,22,2,NULL),(395,73,17,2,NULL),(396,75,17,2,NULL),(397,77,17,2,NULL),(398,79,17,2,NULL),(399,81,17,2,NULL),(400,83,17,2,NULL),(401,84,17,2,NULL),(402,86,17,2,NULL),(403,94,17,2,NULL),(404,97,17,2,NULL),(405,69,26,2,NULL),(406,71,26,2,NULL),(407,72,26,2,NULL),(408,74,26,2,NULL),(409,76,26,2,NULL),(410,78,26,2,NULL),(411,80,26,2,NULL),(412,82,26,2,NULL),(413,69,28,2,NULL),(414,71,28,2,NULL),(415,72,28,2,NULL),(416,74,28,2,NULL),(417,76,28,2,NULL),(418,78,28,2,NULL),(419,80,28,2,NULL),(420,82,28,2,NULL),(421,98,1,2,NULL),(422,101,1,2,NULL),(423,98,4,2,NULL),(424,101,4,2,NULL),(425,98,5,2,NULL),(426,101,5,2,NULL),(427,98,8,2,NULL),(428,101,8,2,NULL),(429,98,9,2,NULL),(430,101,9,2,NULL),(431,98,16,2,NULL),(432,101,16,2,NULL),(433,98,21,2,NULL),(434,101,21,2,NULL),(435,98,27,2,NULL),(436,101,27,2,NULL),(437,98,22,2,NULL),(438,101,22,2,NULL),(439,98,26,2,NULL),(440,101,26,2,NULL),(441,98,28,2,NULL),(442,101,28,2,NULL),(443,1,21,2,NULL),(444,2,21,2,NULL),(445,3,21,2,NULL),(446,4,21,2,NULL),(447,5,21,2,NULL),(448,6,21,2,NULL),(449,7,21,2,NULL),(450,8,21,2,NULL),(451,12,21,2,NULL),(452,14,21,2,NULL),(453,15,21,2,NULL),(454,17,21,2,NULL),(455,18,21,2,NULL),(456,20,21,2,NULL),(457,23,21,2,NULL),(458,25,21,2,NULL),(459,43,21,2,NULL),(460,45,21,2,NULL),(461,46,21,2,NULL),(462,49,21,2,NULL),(463,51,21,2,NULL),(464,54,21,2,NULL),(465,56,21,2,NULL),(466,59,21,2,NULL),(467,73,21,2,NULL),(468,75,21,2,NULL),(469,77,21,2,NULL),(470,79,21,2,NULL),(471,81,21,2,NULL),(472,83,21,2,NULL),(473,84,21,2,NULL),(474,86,21,2,NULL),(475,94,21,2,NULL),(476,97,21,2,NULL),(477,1,27,2,NULL),(478,2,27,2,NULL),(479,3,27,2,NULL),(480,4,27,2,NULL),(481,5,27,2,NULL),(482,6,27,2,NULL),(483,7,27,2,NULL),(484,8,27,2,NULL),(485,12,27,2,NULL),(486,14,27,2,NULL),(487,15,27,2,NULL),(488,17,27,2,NULL),(489,18,27,2,NULL),(490,20,27,2,NULL),(491,23,27,2,NULL),(492,25,27,2,NULL),(493,43,27,2,NULL),(494,45,27,2,NULL),(495,46,27,2,NULL),(496,49,27,2,NULL),(497,51,27,2,NULL),(498,54,27,2,NULL),(499,56,27,2,NULL),(500,59,27,2,NULL),(501,73,27,2,NULL),(502,75,27,2,NULL),(503,77,27,2,NULL),(504,79,27,2,NULL),(505,81,27,2,NULL),(506,83,27,2,NULL),(507,84,27,2,NULL),(508,86,27,2,NULL),(509,94,27,2,NULL),(510,97,27,2,NULL),(511,12,1,2,NULL),(512,14,1,2,NULL),(513,15,1,2,NULL),(514,17,1,2,NULL),(515,18,1,2,NULL),(516,20,1,2,NULL),(517,23,1,2,NULL),(518,25,1,2,NULL),(519,1,5,2,NULL),(520,2,5,2,NULL),(521,3,5,2,NULL),(522,4,5,2,NULL),(523,5,5,2,NULL),(524,6,5,2,NULL),(525,7,5,2,NULL),(526,8,5,2,NULL),(527,12,4,2,NULL),(528,14,4,2,NULL),(529,15,4,2,NULL),(530,17,4,2,NULL),(531,18,4,2,NULL),(532,20,4,2,NULL),(533,23,4,2,NULL),(534,25,4,2,NULL),(535,12,8,2,NULL),(536,14,8,2,NULL),(537,15,8,2,NULL),(538,17,8,2,NULL),(539,18,8,2,NULL),(540,20,8,2,NULL),(541,23,8,2,NULL),(542,25,8,2,NULL),(543,12,9,2,NULL),(544,14,9,2,NULL),(545,15,9,2,NULL),(546,17,9,2,NULL),(547,18,9,2,NULL),(548,20,9,2,NULL),(549,23,9,2,NULL),(550,25,9,2,NULL),(551,43,5,2,NULL),(552,45,5,2,NULL),(553,46,5,2,NULL),(554,49,5,2,NULL),(555,51,5,2,NULL),(556,54,5,2,NULL),(557,56,5,2,NULL),(558,59,5,2,NULL),(559,12,16,2,NULL),(560,14,16,2,NULL),(561,15,16,2,NULL),(562,17,16,2,NULL),(563,18,16,2,NULL),(564,20,16,2,NULL),(565,23,16,2,NULL),(566,25,16,2,NULL),(567,12,22,2,NULL),(568,14,22,2,NULL),(569,15,22,2,NULL),(570,17,22,2,NULL),(571,18,22,2,NULL),(572,20,22,2,NULL),(573,23,22,2,NULL),(574,25,22,2,NULL),(575,73,5,2,NULL),(576,75,5,2,NULL),(577,77,5,2,NULL),(578,79,5,2,NULL),(579,81,5,2,NULL),(580,83,5,2,NULL),(581,84,5,2,NULL),(582,86,5,2,NULL),(583,94,5,2,NULL),(584,97,5,2,NULL),(585,12,26,2,NULL),(586,14,26,2,NULL),(587,15,26,2,NULL),(588,17,26,2,NULL),(589,18,26,2,NULL),(590,20,26,2,NULL),(591,23,26,2,NULL),(592,25,26,2,NULL),(593,12,28,2,NULL),(594,14,28,2,NULL),(595,15,28,2,NULL),(596,17,28,2,NULL),(597,18,28,2,NULL),(598,20,28,2,NULL),(599,23,28,2,NULL),(600,25,28,2,NULL),(601,1,8,2,NULL),(602,2,8,2,NULL),(603,3,8,2,NULL),(604,4,8,2,NULL),(605,5,8,2,NULL),(606,6,8,2,NULL),(607,7,8,2,NULL),(608,8,8,2,NULL),(609,43,8,2,NULL),(610,45,8,2,NULL),(611,46,8,2,NULL),(612,49,8,2,NULL),(613,51,8,2,NULL),(614,54,8,2,NULL),(615,56,8,2,NULL),(616,59,8,2,NULL),(617,73,8,2,NULL),(618,75,8,2,NULL),(619,77,8,2,NULL),(620,79,8,2,NULL),(621,81,8,2,NULL),(622,83,8,2,NULL),(623,84,8,2,NULL),(624,86,8,2,NULL),(625,94,8,2,NULL),(626,97,8,2,NULL),(627,43,1,2,NULL),(628,45,1,2,NULL),(629,46,1,2,NULL),(630,49,1,2,NULL),(631,51,1,2,NULL),(632,54,1,2,NULL),(633,56,1,2,NULL),(634,59,1,2,NULL),(635,1,9,2,NULL),(636,2,9,2,NULL),(637,3,9,2,NULL),(638,4,9,2,NULL),(639,5,9,2,NULL),(640,6,9,2,NULL),(641,7,9,2,NULL),(642,8,9,2,NULL),(643,43,4,2,NULL),(644,45,4,2,NULL),(645,46,4,2,NULL),(646,49,4,2,NULL),(647,51,4,2,NULL),(648,54,4,2,NULL),(649,56,4,2,NULL),(650,59,4,2,NULL),(651,43,16,2,NULL),(652,45,16,2,NULL),(653,46,16,2,NULL),(654,49,16,2,NULL),(655,51,16,2,NULL),(656,54,16,2,NULL),(657,56,16,2,NULL),(658,59,16,2,NULL),(659,43,22,2,NULL),(660,45,22,2,NULL),(661,46,22,2,NULL),(662,49,22,2,NULL),(663,51,22,2,NULL),(664,54,22,2,NULL),(665,56,22,2,NULL),(666,59,22,2,NULL),(667,73,9,2,NULL),(668,75,9,2,NULL),(669,77,9,2,NULL),(670,79,9,2,NULL),(671,81,9,2,NULL),(672,83,9,2,NULL),(673,84,9,2,NULL),(674,86,9,2,NULL),(675,94,9,2,NULL),(676,97,9,2,NULL),(677,43,26,2,NULL),(678,45,26,2,NULL),(679,46,26,2,NULL),(680,49,26,2,NULL),(681,51,26,2,NULL),(682,54,26,2,NULL),(683,56,26,2,NULL),(684,59,26,2,NULL),(685,43,28,2,NULL),(686,45,28,2,NULL),(687,46,28,2,NULL),(688,49,28,2,NULL),(689,51,28,2,NULL),(690,54,28,2,NULL),(691,56,28,2,NULL),(692,59,28,2,NULL),(693,1,16,2,NULL),(694,2,16,2,NULL),(695,3,16,2,NULL),(696,4,16,2,NULL),(697,5,16,2,NULL),(698,6,16,2,NULL),(699,7,16,2,NULL),(700,8,16,2,NULL),(701,73,16,2,NULL),(702,75,16,2,NULL),(703,77,16,2,NULL),(704,79,16,2,NULL),(705,81,16,2,NULL),(706,83,16,2,NULL),(707,84,16,2,NULL),(708,86,16,2,NULL),(709,94,16,2,NULL),(710,97,16,2,NULL),(711,73,1,2,NULL),(712,75,1,2,NULL),(713,77,1,2,NULL),(714,79,1,2,NULL),(715,81,1,2,NULL),(716,83,1,2,NULL),(717,84,1,2,NULL),(718,86,1,2,NULL),(719,1,22,2,NULL),(720,2,22,2,NULL),(721,3,22,2,NULL),(722,4,22,2,NULL),(723,5,22,2,NULL),(724,6,22,2,NULL),(725,7,22,2,NULL),(726,8,22,2,NULL),(727,73,4,2,NULL),(728,75,4,2,NULL),(729,77,4,2,NULL),(730,79,4,2,NULL),(731,81,4,2,NULL),(732,83,4,2,NULL),(733,84,4,2,NULL),(734,86,4,2,NULL),(735,94,22,2,NULL),(736,97,22,2,NULL),(737,73,26,2,NULL),(738,75,26,2,NULL),(739,77,26,2,NULL),(740,79,26,2,NULL),(741,81,26,2,NULL),(742,83,26,2,NULL),(743,84,26,2,NULL),(744,86,26,2,NULL),(745,73,28,2,NULL),(746,75,28,2,NULL),(747,77,28,2,NULL),(748,79,28,2,NULL),(749,81,28,2,NULL),(750,83,28,2,NULL),(751,84,28,2,NULL),(752,86,28,2,NULL),(753,94,1,2,NULL),(754,97,1,2,NULL),(755,94,4,2,NULL),(756,97,4,2,NULL),(757,94,26,2,NULL),(758,97,26,2,NULL),(759,94,28,2,NULL),(760,97,28,2,NULL),(761,1,26,2,NULL),(762,2,26,2,NULL),(763,3,26,2,NULL),(764,4,26,2,NULL),(765,5,26,2,NULL),(766,6,26,2,NULL),(767,7,26,2,NULL),(768,8,26,2,NULL),(769,1,28,2,NULL),(770,2,28,2,NULL),(771,3,28,2,NULL),(772,4,28,2,NULL),(773,5,28,2,NULL),(774,6,28,2,NULL),(775,7,28,2,NULL),(776,8,28,2,NULL),(777,1,4,2,NULL),(778,2,4,2,NULL),(779,3,4,2,NULL),(780,4,4,2,NULL),(781,5,4,2,NULL),(782,6,4,2,NULL),(783,7,4,2,NULL),(784,8,4,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (4,'android.permission.ACCESS_NETWORK_STATE'),(2,'android.permission.INTERNET'),(9,'android.permission.READ_PHONE_STATE'),(1,'android.webkit.permission.PLUGIN'),(12,'com.android.launcher.permission.INSTALL_SHORTCUT'),(5,'com.google.android.c2dm.permission.RECEIVE'),(7,'com.google.android.c2dm.permission.SEND'),(10,'com.wCMCC.permission.C2D_MESSAGE'),(11,'com.wCoGiaoThao.permission.C2D_MESSAGE'),(8,'com.wEarnMoneyForFree.permission.C2D_MESSAGE'),(13,'com.wRadioStreamingIndonesia.permission.C2D_MESSAGE'),(6,'com.wTdtandroid.permission.C2D_MESSAGE'),(3,'com.wVoiceUnlocker.permission.C2D_MESSAGE');
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
INSERT INTO `Permissions` VALUES (3,'s'),(6,'s'),(8,'s'),(10,'s'),(11,'s'),(13,'s');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'',NULL,NULL,NULL),(2,NULL,NULL,'',NULL,NULL,NULL),(3,NULL,NULL,'',NULL,NULL,NULL),(4,NULL,NULL,'market://details?id=com.wVoiceUnlocker',NULL,NULL,NULL),(5,NULL,NULL,'market://details?id=com.wEarnMoneyForFree',NULL,NULL,NULL),(6,NULL,NULL,'',NULL,NULL,NULL),(7,NULL,NULL,'http://www.appsgeyser.com',NULL,NULL,NULL),(8,NULL,NULL,'',NULL,NULL,NULL),(9,NULL,NULL,'',NULL,NULL,NULL),(10,NULL,NULL,'http://www.appsgeyser.com?(.*)',NULL,NULL,NULL),(11,NULL,NULL,'',NULL,NULL,NULL),(12,NULL,NULL,'',NULL,NULL,NULL),(13,NULL,NULL,'market://details?id=com.wTdtandroid',NULL,NULL,NULL),(14,NULL,NULL,'',NULL,NULL,NULL),(15,NULL,NULL,'market://details?id=com.wCMCC',NULL,NULL,NULL),(16,NULL,NULL,'market://details?id=com.wCMCC',NULL,NULL,NULL),(17,NULL,NULL,'',NULL,NULL,NULL),(18,NULL,NULL,'http://www.appsgeyser.com',NULL,NULL,NULL),(19,NULL,NULL,'',NULL,NULL,NULL),(20,NULL,NULL,'http://www.appsgeyser.com?(.*)',NULL,NULL,NULL),(21,NULL,NULL,'',NULL,NULL,NULL),(22,NULL,NULL,'',NULL,NULL,NULL),(23,NULL,NULL,'market://details?id=com.wRadioStreamingIndonesia',NULL,NULL,NULL),(24,NULL,NULL,'',NULL,NULL,NULL),(25,NULL,NULL,'',NULL,NULL,NULL),(26,NULL,NULL,'',NULL,NULL,NULL),(27,NULL,NULL,'http://www.appsgeyser.com',NULL,NULL,NULL),(28,NULL,NULL,'',NULL,NULL,NULL),(29,NULL,NULL,'http://www.appsgeyser.com?(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'market://details?id=com.wCoGiaoThao',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'http://www.appsgeyser.com',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'',NULL,NULL,NULL),(41,NULL,NULL,'http://www.appsgeyser.com?(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,2,2),(8,2,4),(9,2,5),(10,2,6),(11,3,1),(12,3,2),(13,3,4),(14,4,1),(15,3,5),(16,4,2),(17,3,8),(18,4,4),(19,4,5),(20,4,9),(21,4,10),(22,5,1),(23,5,2),(24,5,4),(25,5,5),(26,5,11),(27,6,1),(28,6,2),(29,6,4),(30,6,5),(31,6,12),(32,6,13);
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
