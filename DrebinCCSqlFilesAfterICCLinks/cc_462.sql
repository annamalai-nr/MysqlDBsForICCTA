-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_462
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
INSERT INTO `ActionStrings` VALUES (11,'(.*)'),(2,'android.intent.action.BOOT_COMPLETED'),(8,'android.intent.action.CHOOSER'),(1,'android.intent.action.MAIN'),(9,'android.intent.action.SCREEN_OFF'),(10,'android.intent.action.USER_PRESENT'),(6,'android.intent.action.VIEW'),(5,'com.gone60.gone60.refresh'),(4,'com.google.android.c2dm.intent.RECEIVE'),(7,'com.google.android.c2dm.intent.REGISTER'),(3,'com.google.android.c2dm.intent.REGISTRATION');
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
INSERT INTO `Applications` VALUES (1,'net.maxicom.android.tracker',217),(2,'net.maxicom.android.tracker',259),(3,'com.gone60',15),(4,'net.maxicom.android.gpsspyplus',258),(5,'com.wTdtandroid',1332160583),(6,'com.wRuddyExecutive',1332924752),(7,'com.wHOTChatDating',1339849759);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.DEFAULT'),(1,'android.intent.category.INFO'),(2,'android.intent.category.LAUNCHER'),(6,'com.wHOTChatDating'),(4,'com.wRuddyExecutive'),(5,'com.wTdtandroid');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'net.maxicom.android.tracker.Tracker'),(2,1,'net.maxicom.android.tracker.SnakeService'),(3,1,'net.maxicom.android.tracker.BootDetector'),(4,2,'net.maxicom.android.tracker.Tracker'),(5,2,'net.maxicom.android.tracker.SnakeService'),(6,2,'net.maxicom.android.tracker.BootDetector'),(7,3,'com.gone60.gone60'),(8,3,'com.gone60.MyService'),(9,4,'net.maxicom.android.gpsspyplus.MainActivity'),(10,4,'net.maxicom.android.gpsspyplus.SnakeService'),(11,4,'net.maxicom.android.gpsspyplus.BootDetector'),(12,5,'com.wTdtandroid.MainNavigationActivity'),(13,6,'com.wRuddyExecutive.MainNavigationActivity'),(14,5,'com.wTdtandroid.MessageViewer'),(15,6,'com.wRuddyExecutive.MessageViewer'),(16,5,'com.wTdtandroid.Server.C2DMClientReceiver'),(17,6,'com.wRuddyExecutive.Server.C2DMClientReceiver'),(18,5,'com.google.android.c2dm.C2DMBroadcastReceiver'),(19,6,'com.google.android.c2dm.C2DMBroadcastReceiver'),(20,1,'net.maxicom.android.tracker.Tracker$1'),(21,2,'net.maxicom.android.tracker.Tracker$1'),(22,3,'com.gone60.gone60$DataUpdateReceiver'),(23,7,'com.wHOTChatDating.MainNavigationActivity'),(24,7,'com.wHOTChatDating.MessageViewer'),(25,7,'com.google.ads.AdActivity'),(26,7,'com.wHOTChatDating.Server.C2DMClientReceiver'),(27,7,'com.google.android.c2dm.C2DMBroadcastReceiver'),(28,5,'com.google.android.c2dm.C2DMessaging'),(29,6,'com.wRuddyExecutive.Views.AboutDialog$1'),(30,6,'com.wRuddyExecutive.Utils.BrowserDownloadListener'),(31,6,'com.google.android.c2dm.C2DMessaging'),(32,5,'com.wTdtandroid.Utils.BrowserDownloadListener'),(33,7,'com.wHOTChatDating.Views.AboutDialog$1'),(34,7,'com.google.ads.util.AdUtil$UserActivityReceiver'),(35,7,'com.wHOTChatDating.Utils.BrowserDownloadListener'),(36,7,'com.google.android.c2dm.C2DMessaging');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,19,'title'),(2,18,'message'),(3,19,'url'),(4,19,'error'),(5,19,'unregistered'),(6,15,'title'),(7,14,'url'),(8,18,'error'),(9,19,'message'),(10,19,'registration_id'),(11,15,'url'),(12,18,'url'),(13,18,'registration_id'),(14,18,'unregistered'),(15,14,'title'),(16,18,'title'),(17,23,'com.google.circles.platform.result.extra.ACTION'),(18,25,'unregistered'),(19,23,'com.google.ads.AdOpener'),(20,23,'com.google.circles.platform.result.extra.CONFIRMATION'),(21,23,'action'),(22,25,'message'),(23,25,'error'),(24,23,'params'),(25,22,'url'),(26,25,'url'),(27,25,'title'),(28,22,'title'),(29,25,'registration_id');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'s',0,NULL,NULL),(3,3,'r',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,18,'r',1,14,NULL),(19,19,'r',1,14,NULL),(20,22,'r',1,NULL,NULL),(21,23,'a',1,NULL,NULL),(22,24,'a',0,NULL,NULL),(23,25,'a',0,NULL,NULL),(24,26,'s',0,NULL,NULL),(25,27,'r',1,14,NULL),(26,34,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,1),(3,3,1),(4,4,4),(5,5,4),(6,6,7),(7,7,6),(8,8,11),(9,9,13),(10,10,18),(11,10,12),(12,11,12),(13,12,13),(14,13,13),(15,14,13),(16,14,19),(17,15,12),(18,16,13),(19,17,12),(20,18,13),(21,19,12),(22,20,21),(23,21,21),(24,22,21),(25,23,21),(26,24,25),(27,24,21),(28,25,23),(29,26,23),(30,27,21);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,3,'<net.maxicom.android.tracker.BootDetector: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(2,20,'<net.maxicom.android.tracker.Tracker$1: void onClick(android.content.DialogInterface,int)>',89,'s',NULL),(3,1,'<net.maxicom.android.tracker.Tracker: void onResume()>',12,'s',NULL),(4,21,'<net.maxicom.android.tracker.Tracker$1: void onClick(android.content.DialogInterface,int)>',91,'s',0),(5,4,'<net.maxicom.android.tracker.Tracker: void onResume()>',5,'s',NULL),(6,7,'<com.gone60.gone60: void onCreate(android.os.Bundle)>',41,'s',NULL),(7,6,'<net.maxicom.android.tracker.BootDetector: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(8,11,'<net.maxicom.android.gpsspyplus.BootDetector: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(9,13,'<com.wRuddyExecutive.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(10,28,'<com.google.android.c2dm.C2DMessaging: void register(android.content.Context,java.lang.String)>',9,'s',NULL),(11,12,'<com.wTdtandroid.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',51,'a',NULL),(12,29,'<com.wRuddyExecutive.Views.AboutDialog$1: boolean onTouch(android.view.View,android.view.MotionEvent)>',11,'a',NULL),(13,30,'<com.wRuddyExecutive.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',21,'a',NULL),(14,31,'<com.google.android.c2dm.C2DMessaging: void register(android.content.Context,java.lang.String)>',9,'s',NULL),(15,12,'<com.wTdtandroid.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(16,30,'<com.wRuddyExecutive.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',15,'a',NULL),(17,32,'<com.wTdtandroid.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',15,'a',NULL),(18,13,'<com.wRuddyExecutive.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',51,'a',NULL),(19,32,'<com.wTdtandroid.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',21,'a',NULL),(20,33,'<com.wHOTChatDating.Views.AboutDialog$1: boolean onTouch(android.view.View,android.view.MotionEvent)>',11,'a',NULL),(21,23,'<com.wHOTChatDating.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(22,23,'<com.wHOTChatDating.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',51,'a',NULL),(23,35,'<com.wHOTChatDating.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',15,'a',NULL),(24,36,'<com.google.android.c2dm.C2DMessaging: void register(android.content.Context,java.lang.String)>',9,'s',NULL),(25,25,'<com.google.ads.AdActivity: void a(java.util.HashMap,com.google.ads.internal.d)>',23,'a',NULL),(26,25,'<com.google.ads.AdActivity: void b(java.util.HashMap,com.google.ads.internal.d)>',31,'a',NULL),(27,35,'<com.wHOTChatDating.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',21,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,8,6),(2,9,7),(3,10,8),(4,11,6),(5,12,8),(6,13,6),(7,14,8),(8,15,6),(9,16,8),(10,17,8),(11,18,8),(12,19,6),(13,20,8),(14,21,8),(15,22,7),(16,23,6),(17,24,6),(18,25,6),(19,26,8),(20,27,8),(21,28,8),(22,29,6),(23,30,8),(24,31,8),(25,32,8),(26,33,8),(27,34,8),(28,35,6),(29,36,6),(30,37,6),(31,38,6),(32,39,8),(33,40,8),(34,41,8),(35,42,8),(36,43,8),(37,44,8),(38,45,8),(39,46,8),(40,47,6),(41,48,7),(42,50,6),(43,51,11),(44,52,11),(45,53,6),(46,54,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,49,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'net/maxicom/android/tracker/SnakeService'),(2,2,'net/maxicom/android/tracker/SnakeService'),(3,3,'net/maxicom/android/tracker/SnakeService'),(4,4,'net/maxicom/android/tracker/SnakeService'),(5,5,'com/gone60/MyService'),(6,6,'net/maxicom/android/tracker/SnakeService'),(7,7,'net/maxicom/android/gpsspyplus/SnakeService'),(8,49,'com.google.android.apps.circles.platform.PlusOneActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,8,1),(2,11,2),(3,13,3),(4,15,4),(5,19,5),(6,23,6),(7,24,7),(8,25,8),(9,29,9),(10,35,10),(11,36,11),(12,37,12),(13,38,13),(14,47,14),(15,50,15),(16,51,16),(17,52,17),(18,53,18),(19,54,19);
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
INSERT INTO `IExtras` VALUES (1,9,'sender'),(2,9,'app'),(3,10,'android.intent.extra.INTENT'),(4,12,'android.intent.extra.INTENT'),(5,14,'android.intent.extra.TITLE'),(6,14,'android.intent.extra.INTENT'),(7,16,'android.intent.extra.INTENT'),(8,17,'android.intent.extra.TITLE'),(9,17,'android.intent.extra.INTENT'),(10,18,'android.intent.extra.INTENT'),(11,20,'android.intent.extra.TITLE'),(12,20,'android.intent.extra.INTENT'),(13,21,'android.intent.extra.TITLE'),(14,21,'android.intent.extra.INTENT'),(15,22,'sender'),(16,22,'app'),(17,26,'android.intent.extra.INTENT'),(18,27,'android.intent.extra.INTENT'),(19,28,'android.intent.extra.TITLE'),(20,28,'android.intent.extra.INTENT'),(21,30,'android.intent.extra.INTENT'),(22,31,'android.intent.extra.TITLE'),(23,31,'android.intent.extra.INTENT'),(24,32,'android.intent.extra.INTENT'),(25,33,'android.intent.extra.TITLE'),(26,33,'android.intent.extra.INTENT'),(27,34,'android.intent.extra.TITLE'),(28,34,'android.intent.extra.INTENT'),(29,39,'android.intent.extra.INTENT'),(30,40,'android.intent.extra.INTENT'),(31,41,'android.intent.extra.TITLE'),(32,41,'android.intent.extra.INTENT'),(33,42,'android.intent.extra.INTENT'),(34,43,'android.intent.extra.TITLE'),(35,43,'android.intent.extra.INTENT'),(36,44,'android.intent.extra.INTENT'),(37,45,'android.intent.extra.TITLE'),(38,45,'android.intent.extra.INTENT'),(39,46,'android.intent.extra.TITLE'),(40,46,'android.intent.extra.INTENT'),(41,48,'sender'),(42,48,'app'),(43,49,'com.google.circles.platform.intent.extra.ACTION'),(44,49,'(.*)'),(45,49,'com.google.circles.platform.intent.extra.ENTITY'),(46,49,'com.google.circles.platform.intent.extra.ENTITY_TYPE');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,2),(5,5,1),(6,6,1),(7,7,2),(8,8,1),(9,9,1),(10,10,3),(11,11,3),(12,12,4),(13,13,4),(14,14,5),(15,15,1),(16,16,4),(17,17,3),(18,18,9),(19,18,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,5,2),(4,6,2),(5,8,2),(6,8,3),(7,9,2),(8,9,3),(9,10,4),(10,11,5),(11,12,5),(12,13,4),(13,15,2),(14,15,3),(15,16,6),(16,17,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,51,'(.*)','(.*)'),(2,53,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'net.maxicom.android.tracker'),(2,2,'net.maxicom.android.tracker'),(3,3,'net.maxicom.android.tracker'),(4,4,'net.maxicom.android.tracker'),(5,5,'com.gone60'),(6,6,'net.maxicom.android.tracker'),(7,7,'net.maxicom.android.gpsspyplus'),(8,49,'com.google.android.apps.plus');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,4,0),(4,6,0),(5,7,0),(6,9,0),(7,11,0),(8,12,0),(9,13,0),(10,19,0),(11,18,0),(12,18,0),(13,19,0),(14,20,0),(15,21,0),(16,25,0),(17,25,0),(18,26,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,5,0,0),(5,6,0,0),(6,7,0,0),(7,8,0,0),(8,9,1,0),(9,10,1,0),(10,11,1,0),(11,12,1,0),(12,11,1,0),(13,12,1,0),(14,11,1,0),(15,12,1,0),(16,11,1,0),(17,11,1,0),(18,11,1,0),(19,13,1,0),(20,11,1,0),(21,11,1,0),(22,14,1,0),(23,15,1,0),(24,16,1,0),(25,17,1,0),(26,18,1,0),(27,18,1,0),(28,18,1,0),(29,19,1,0),(30,18,1,0),(31,18,1,0),(32,18,1,0),(33,18,1,0),(34,18,1,0),(35,20,1,0),(36,20,1,0),(37,20,1,0),(38,21,1,0),(39,22,1,0),(40,22,1,0),(41,22,1,0),(42,22,1,0),(43,22,1,0),(44,22,1,0),(45,22,1,0),(46,22,1,0),(47,23,1,0),(48,24,1,0),(49,25,0,0),(50,26,1,0),(51,26,1,0),(52,26,1,0),(53,26,1,0),(54,27,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=377 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,5,8,2,NULL),(2,10,7,2,NULL),(3,12,7,2,NULL),(4,14,7,2,NULL),(5,16,7,2,NULL),(6,17,7,2,NULL),(7,18,7,2,NULL),(8,20,7,2,NULL),(9,21,7,2,NULL),(10,26,7,2,NULL),(11,27,7,2,NULL),(12,28,7,2,NULL),(13,30,7,2,NULL),(14,31,7,2,NULL),(15,32,7,2,NULL),(16,33,7,2,NULL),(17,34,7,2,NULL),(18,39,7,2,NULL),(19,40,7,2,NULL),(20,41,7,2,NULL),(21,42,7,2,NULL),(22,43,7,2,NULL),(23,44,7,2,NULL),(24,45,7,2,NULL),(25,46,7,2,NULL),(26,50,7,2,NULL),(27,52,7,2,NULL),(28,10,20,2,NULL),(29,12,20,2,NULL),(30,14,20,2,NULL),(31,16,20,2,NULL),(32,17,20,2,NULL),(33,18,20,2,NULL),(34,20,20,2,NULL),(35,21,20,2,NULL),(36,26,20,2,NULL),(37,27,20,2,NULL),(38,28,20,2,NULL),(39,30,20,2,NULL),(40,31,20,2,NULL),(41,32,20,2,NULL),(42,33,20,2,NULL),(43,34,20,2,NULL),(44,39,20,2,NULL),(45,40,20,2,NULL),(46,41,20,2,NULL),(47,42,20,2,NULL),(48,43,20,2,NULL),(49,44,20,2,NULL),(50,45,20,2,NULL),(51,46,20,2,NULL),(52,50,20,2,NULL),(53,52,20,2,NULL),(54,3,2,2,NULL),(55,3,5,2,NULL),(56,10,1,2,NULL),(57,12,1,2,NULL),(58,14,1,2,NULL),(59,16,1,2,NULL),(60,17,1,2,NULL),(61,18,1,2,NULL),(62,20,1,2,NULL),(63,21,1,2,NULL),(64,26,1,2,NULL),(65,27,1,2,NULL),(66,28,1,2,NULL),(67,30,1,2,NULL),(68,31,1,2,NULL),(69,32,1,2,NULL),(70,33,1,2,NULL),(71,34,1,2,NULL),(72,39,1,2,NULL),(73,40,1,2,NULL),(74,41,1,2,NULL),(75,42,1,2,NULL),(76,43,1,2,NULL),(77,44,1,2,NULL),(78,45,1,2,NULL),(79,46,1,2,NULL),(80,50,1,2,NULL),(81,52,1,2,NULL),(82,1,2,2,NULL),(83,1,5,2,NULL),(84,10,3,2,NULL),(85,12,3,2,NULL),(86,14,3,2,NULL),(87,16,3,2,NULL),(88,17,3,2,NULL),(89,18,3,2,NULL),(90,20,3,2,NULL),(91,21,3,2,NULL),(92,26,3,2,NULL),(93,27,3,2,NULL),(94,28,3,2,NULL),(95,30,3,2,NULL),(96,31,3,2,NULL),(97,32,3,2,NULL),(98,33,3,2,NULL),(99,34,3,2,NULL),(100,39,3,2,NULL),(101,40,3,2,NULL),(102,41,3,2,NULL),(103,42,3,2,NULL),(104,43,3,2,NULL),(105,44,3,2,NULL),(106,45,3,2,NULL),(107,46,3,2,NULL),(108,50,3,2,NULL),(109,52,3,2,NULL),(110,4,2,2,NULL),(111,4,5,2,NULL),(112,10,4,2,NULL),(113,12,4,2,NULL),(114,14,4,2,NULL),(115,16,4,2,NULL),(116,17,4,2,NULL),(117,18,4,2,NULL),(118,20,4,2,NULL),(119,21,4,2,NULL),(120,26,4,2,NULL),(121,27,4,2,NULL),(122,28,4,2,NULL),(123,30,4,2,NULL),(124,31,4,2,NULL),(125,32,4,2,NULL),(126,33,4,2,NULL),(127,34,4,2,NULL),(128,39,4,2,NULL),(129,40,4,2,NULL),(130,41,4,2,NULL),(131,42,4,2,NULL),(132,43,4,2,NULL),(133,44,4,2,NULL),(134,45,4,2,NULL),(135,46,4,2,NULL),(136,50,4,2,NULL),(137,52,4,2,NULL),(138,6,2,2,NULL),(139,6,5,2,NULL),(140,10,6,2,NULL),(141,12,6,2,NULL),(142,14,6,2,NULL),(143,16,6,2,NULL),(144,17,6,2,NULL),(145,18,6,2,NULL),(146,20,6,2,NULL),(147,21,6,2,NULL),(148,26,6,2,NULL),(149,27,6,2,NULL),(150,28,6,2,NULL),(151,30,6,2,NULL),(152,31,6,2,NULL),(153,32,6,2,NULL),(154,33,6,2,NULL),(155,34,6,2,NULL),(156,39,6,2,NULL),(157,40,6,2,NULL),(158,41,6,2,NULL),(159,42,6,2,NULL),(160,43,6,2,NULL),(161,44,6,2,NULL),(162,45,6,2,NULL),(163,46,6,2,NULL),(164,50,6,2,NULL),(165,52,6,2,NULL),(166,10,9,2,NULL),(167,12,9,2,NULL),(168,14,9,2,NULL),(169,16,9,2,NULL),(170,17,9,2,NULL),(171,18,9,2,NULL),(172,20,9,2,NULL),(173,21,9,2,NULL),(174,26,9,2,NULL),(175,27,9,2,NULL),(176,28,9,2,NULL),(177,30,9,2,NULL),(178,31,9,2,NULL),(179,32,9,2,NULL),(180,33,9,2,NULL),(181,34,9,2,NULL),(182,39,9,2,NULL),(183,40,9,2,NULL),(184,41,9,2,NULL),(185,42,9,2,NULL),(186,43,9,2,NULL),(187,44,9,2,NULL),(188,45,9,2,NULL),(189,46,9,2,NULL),(190,50,9,2,NULL),(191,52,9,2,NULL),(192,7,10,2,NULL),(193,10,11,2,NULL),(194,12,11,2,NULL),(195,14,11,2,NULL),(196,16,11,2,NULL),(197,17,11,2,NULL),(198,18,11,2,NULL),(199,20,11,2,NULL),(200,21,11,2,NULL),(201,26,11,2,NULL),(202,27,11,2,NULL),(203,28,11,2,NULL),(204,30,11,2,NULL),(205,31,11,2,NULL),(206,32,11,2,NULL),(207,33,11,2,NULL),(208,34,11,2,NULL),(209,39,11,2,NULL),(210,40,11,2,NULL),(211,41,11,2,NULL),(212,42,11,2,NULL),(213,43,11,2,NULL),(214,44,11,2,NULL),(215,45,11,2,NULL),(216,46,11,2,NULL),(217,50,11,2,NULL),(218,52,11,2,NULL),(219,39,12,2,NULL),(220,40,12,2,NULL),(221,41,12,2,NULL),(222,42,12,2,NULL),(223,43,12,2,NULL),(224,44,12,2,NULL),(225,45,12,2,NULL),(226,46,12,2,NULL),(227,10,21,2,NULL),(228,12,21,2,NULL),(229,14,21,2,NULL),(230,16,21,2,NULL),(231,17,21,2,NULL),(232,18,21,2,NULL),(233,20,21,2,NULL),(234,21,21,2,NULL),(235,39,18,2,NULL),(236,40,18,2,NULL),(237,41,18,2,NULL),(238,42,18,2,NULL),(239,43,18,2,NULL),(240,44,18,2,NULL),(241,45,18,2,NULL),(242,46,18,2,NULL),(243,39,13,2,NULL),(244,40,13,2,NULL),(245,41,13,2,NULL),(246,42,13,2,NULL),(247,43,13,2,NULL),(248,44,13,2,NULL),(249,45,13,2,NULL),(250,46,13,2,NULL),(251,26,21,2,NULL),(252,27,21,2,NULL),(253,28,21,2,NULL),(254,30,21,2,NULL),(255,31,21,2,NULL),(256,32,21,2,NULL),(257,33,21,2,NULL),(258,34,21,2,NULL),(259,39,19,2,NULL),(260,40,19,2,NULL),(261,41,19,2,NULL),(262,42,19,2,NULL),(263,43,19,2,NULL),(264,44,19,2,NULL),(265,45,19,2,NULL),(266,46,19,2,NULL),(267,50,21,2,NULL),(268,52,21,2,NULL),(269,39,25,2,NULL),(270,40,25,2,NULL),(271,41,25,2,NULL),(272,42,25,2,NULL),(273,43,25,2,NULL),(274,44,25,2,NULL),(275,45,25,2,NULL),(276,46,25,2,NULL),(277,39,26,2,NULL),(278,40,26,2,NULL),(279,41,26,2,NULL),(280,42,26,2,NULL),(281,43,26,2,NULL),(282,44,26,2,NULL),(283,45,26,2,NULL),(284,46,26,2,NULL),(285,50,12,2,NULL),(286,52,12,2,NULL),(287,50,18,2,NULL),(288,52,18,2,NULL),(289,50,13,2,NULL),(290,52,13,2,NULL),(291,50,19,2,NULL),(292,52,19,2,NULL),(293,50,25,2,NULL),(294,52,25,2,NULL),(295,50,26,2,NULL),(296,52,26,2,NULL),(297,10,25,2,NULL),(298,12,25,2,NULL),(299,14,25,2,NULL),(300,16,25,2,NULL),(301,17,25,2,NULL),(302,18,25,2,NULL),(303,20,25,2,NULL),(304,21,25,2,NULL),(305,26,25,2,NULL),(306,27,25,2,NULL),(307,28,25,2,NULL),(308,30,25,2,NULL),(309,31,25,2,NULL),(310,32,25,2,NULL),(311,33,25,2,NULL),(312,34,25,2,NULL),(313,10,26,2,NULL),(314,12,26,2,NULL),(315,14,26,2,NULL),(316,16,26,2,NULL),(317,17,26,2,NULL),(318,18,26,2,NULL),(319,20,26,2,NULL),(320,21,26,2,NULL),(321,26,26,2,NULL),(322,27,26,2,NULL),(323,28,26,2,NULL),(324,30,26,2,NULL),(325,31,26,2,NULL),(326,32,26,2,NULL),(327,33,26,2,NULL),(328,34,26,2,NULL),(329,26,12,2,NULL),(330,27,12,2,NULL),(331,28,12,2,NULL),(332,30,12,2,NULL),(333,31,12,2,NULL),(334,32,12,2,NULL),(335,33,12,2,NULL),(336,34,12,2,NULL),(337,10,13,2,NULL),(338,12,13,2,NULL),(339,14,13,2,NULL),(340,16,13,2,NULL),(341,17,13,2,NULL),(342,18,13,2,NULL),(343,20,13,2,NULL),(344,21,13,2,NULL),(345,26,18,2,NULL),(346,27,18,2,NULL),(347,28,18,2,NULL),(348,30,18,2,NULL),(349,31,18,2,NULL),(350,32,18,2,NULL),(351,33,18,2,NULL),(352,34,18,2,NULL),(353,26,19,2,NULL),(354,27,19,2,NULL),(355,28,19,2,NULL),(356,30,19,2,NULL),(357,31,19,2,NULL),(358,32,19,2,NULL),(359,33,19,2,NULL),(360,34,19,2,NULL),(361,10,19,2,NULL),(362,12,19,2,NULL),(363,14,19,2,NULL),(364,16,19,2,NULL),(365,17,19,2,NULL),(366,18,19,2,NULL),(367,20,19,2,NULL),(368,21,19,2,NULL),(369,10,18,2,NULL),(370,12,18,2,NULL),(371,14,18,2,NULL),(372,16,18,2,NULL),(373,17,18,2,NULL),(374,18,18,2,NULL),(375,20,18,2,NULL),(376,21,18,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (4,'android.permission.ACCESS_COARSE_LOCATION'),(3,'android.permission.ACCESS_FINE_LOCATION'),(11,'android.permission.ACCESS_NETWORK_STATE'),(2,'android.permission.INTERNET'),(7,'android.permission.READ_CONTACTS'),(6,'android.permission.READ_SMS'),(1,'android.permission.RECEIVE_BOOT_COMPLETED'),(5,'android.permission.WAKE_LOCK'),(9,'android.webkit.permission.PLUGIN'),(8,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(12,'com.google.android.c2dm.permission.RECEIVE'),(14,'com.google.android.c2dm.permission.SEND'),(15,'com.wHOTChatDating.permission.C2D_MESSAGE'),(13,'com.wRuddyExecutive.permission.C2D_MESSAGE'),(10,'com.wTdtandroid.permission.C2D_MESSAGE');
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
INSERT INTO `Permissions` VALUES (10,'s'),(13,'s'),(15,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'market://details?id=com.wRuddyExecutive',NULL,NULL,NULL),(2,NULL,NULL,'http://www.appsgeyser.com',NULL,NULL,NULL),(3,NULL,NULL,'',NULL,NULL,NULL),(4,NULL,NULL,'http://www.appsgeyser.com?(.*)',NULL,NULL,NULL),(5,NULL,NULL,'',NULL,NULL,NULL),(6,NULL,NULL,'market://details?id=com.wTdtandroid',NULL,NULL,NULL),(7,NULL,NULL,'',NULL,NULL,NULL),(8,NULL,NULL,'',NULL,NULL,NULL),(9,NULL,NULL,'',NULL,NULL,NULL),(10,NULL,NULL,'http://www.appsgeyser.com',NULL,NULL,NULL),(11,NULL,NULL,'',NULL,NULL,NULL),(12,NULL,NULL,'http://www.appsgeyser.com?(.*)',NULL,NULL,NULL),(13,NULL,NULL,'market://details?id=com.wHOTChatDating',NULL,NULL,NULL),(14,NULL,NULL,'',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'',NULL,NULL,NULL);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,2,2),(8,2,3),(9,2,4),(10,2,5),(11,3,2),(12,3,6),(13,3,7),(14,3,8),(15,4,1),(16,4,2),(17,4,3),(18,4,4),(19,4,5),(20,5,2),(21,5,9),(22,5,10),(23,6,2),(24,5,11),(25,6,9),(26,5,12),(27,6,11),(28,6,12),(29,6,13),(30,7,2),(31,7,9),(32,7,11),(33,7,12),(34,7,15);
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

-- Dump completed on 2015-10-12  3:30:34
