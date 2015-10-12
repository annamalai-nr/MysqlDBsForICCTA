-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_154
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(8,'android.intent.action.PACKAGE_ADDED'),(2,'android.intent.action.SIG_STR'),(6,'android.intent.action.VIEW'),(7,'android.settings.WIRELESS_SETTINGS'),(5,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'com.ps.llk',6),(2,'com.ps.kickmouse',9),(3,'com.ps.ddp',13),(4,'com.peter.navigationintenet',3),(5,'com.gp.monolith',4),(6,'com.gp.solitaire',455),(7,'com.gp.netscramblefull',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.HOME'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(3,'android.intent.category.PREFERENCE');
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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.ps.llk.MainActivity'),(2,1,'com.adwo.adsdk.AdwoAdBrowserActivity'),(3,1,'com.google.update.Dialog'),(4,1,'com.google.update.UpdateService'),(5,1,'com.google.update.Receiver'),(6,2,'com.ps.kickmouse.WhacAMouse'),(7,2,'com.ps.kickmouse.Game'),(8,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(9,2,'com.google.update.Dialog'),(10,2,'com.waps.OffersWebView'),(11,2,'com.ps.kickmouse.DemoApp'),(12,2,'com.google.update.UpdateService'),(13,2,'com.google.update.Receiver'),(14,3,'com.ps.ddp.MainActivity'),(15,3,'com.ps.ddp.DemoApp'),(16,3,'com.ps.ddp.GameActivity'),(17,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(18,3,'com.google.update.Dialog'),(19,3,'com.waps.OffersWebView'),(20,3,'com.google.update.UpdateService'),(21,3,'com.google.update.Receiver'),(22,4,'com.peter.navigationintenet.NavigationInternetActivity'),(23,4,'cn.domob.android.ads.DomobActivity'),(24,4,'com.google.update.Dialog'),(25,4,'com.google.update.UpdateService'),(26,4,'com.google.update.Receiver'),(27,5,'com.gp.monolith.Monolith'),(28,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(29,5,'com.google.update.Dialog'),(30,5,'cn.domob.android.ads.DomobActivity'),(31,5,'com.google.update.UpdateService'),(32,5,'com.google.update.Receiver'),(33,6,'com.gp.solitaire.Solitaire'),(34,6,'com.google.update.Dialog'),(35,6,'cn.domob.android.ads.DomobActivity'),(36,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(37,6,'com.waps.OffersWebView'),(38,6,'com.google.update.UpdateService'),(39,6,'com.google.update.Receiver'),(40,1,'com.google.update.Dialog$2'),(41,1,'com.google.update.Dialog$1'),(42,1,'com.google.update.UpdateService$AA'),(43,7,'com.gp.netscramblefull.NetScramble'),(44,7,'com.gp.netscramblefull.ScoreList'),(45,7,'com.gp.netscramblefull.Help'),(46,7,'com.google.update.Dialog'),(47,7,'cn.domob.android.ads.DomobActivity'),(48,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(49,2,'com.waps.s'),(50,7,'com.google.update.UpdateService'),(51,3,'com.google.update.Dialog$2'),(52,7,'com.google.update.Receiver'),(53,3,'com.waps.s'),(54,2,'com.waps.AppConnect'),(55,3,'com.google.update.Dialog$1'),(56,3,'com.waps.o'),(57,4,'com.google.update.UpdateService$AA'),(58,2,'com.waps.aa'),(59,4,'cn.domob.android.ads.i$6'),(60,3,'com.waps.z'),(61,3,'com.waps.aa'),(62,5,'com.google.update.Dialog$2'),(63,5,'cn.domob.android.ads.i'),(64,4,'com.iflytek.ui.v'),(65,2,'com.waps.ac'),(66,4,'com.google.update.Dialog$1'),(67,2,'com.google.update.Dialog$1'),(68,3,'com.waps.q'),(69,4,'com.iflytek.msc.c.a'),(70,5,'cn.domob.android.ads.DomobAdEngine$2'),(71,5,'cn.domob.android.ads.DomobActionReceiver'),(72,2,'com.ps.kickmouse.WhacAMouse$2'),(73,3,'com.waps.AppConnect'),(74,5,'cn.domob.android.ads.DomobAdManager'),(75,4,'cn.domob.android.ads.DomobActionReceiver'),(76,5,'cn.domob.android.ads.i$6'),(77,2,'com.google.update.Dialog$2'),(78,4,'cn.domob.android.ads.DomobAdManager'),(79,4,'cn.domob.android.ads.i'),(80,4,'com.iflytek.ui.g'),(81,4,'com.iflytek.ui.d'),(82,2,'com.waps.z'),(83,5,'com.google.update.UpdateService$AA'),(84,2,'com.google.update.UpdateService$AA'),(85,3,'com.waps.ac'),(86,3,'com.google.update.UpdateService$AA'),(87,2,'com.waps.o'),(88,6,'cn.domob.android.ads.i$6'),(89,5,'com.google.update.Dialog$1'),(90,2,'com.waps.q'),(91,4,'com.google.update.Dialog$2'),(92,4,'cn.domob.android.ads.DomobAdEngine$2'),(93,6,'cn.domob.android.ads.DomobActionReceiver'),(94,6,'com.waps.aa'),(95,6,'com.waps.o'),(96,6,'com.google.update.Dialog$1'),(97,6,'cn.domob.android.ads.i'),(98,6,'cn.domob.android.ads.DomobAdManager'),(99,6,'com.waps.q'),(100,6,'com.waps.z'),(101,6,'cn.domob.android.ads.DomobAdEngine$2'),(102,6,'com.google.update.UpdateService$AA'),(103,7,'com.google.update.Dialog$1'),(104,7,'com.google.update.UpdateService$MyThread'),(105,6,'com.waps.ac'),(106,7,'cn.domob.android.ads.DomobAdManager'),(107,7,'cn.domob.android.ads.i'),(108,6,'com.google.update.Dialog$2'),(109,7,'cn.domob.android.ads.i$6'),(110,7,'cn.domob.android.ads.DomobAdEngine$2'),(111,7,'com.ju6.a'),(112,7,'com.google.update.Dialog$2'),(113,7,'cn.domob.android.ads.DomobActionReceiver');
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
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'ST_START_DELAY'),(2,3,'TYPEdsada'),(3,2,'shouldEnableBottomBar'),(4,3,'MSG'),(5,2,'url'),(6,2,'shouldShowTitlebar'),(7,4,'ST_MY_PID'),(8,2,'shouldResizeOverlay'),(9,2,'shouldShowBottomBar'),(10,2,'overlayTitle'),(11,2,'overlayTransition'),(12,2,'shouldMakeOverlayTransparent'),(13,2,'transitionTime'),(14,8,'shouldResizeOverlay'),(15,10,'USER_ID'),(16,10,'Notify_Url_Params'),(17,6,'APP_ID'),(18,10,'APP_ID'),(19,12,'APP_ID'),(20,8,'APP_ID'),(21,11,'APP_ID'),(22,19,'UrlPath'),(23,19,'Offers_URL'),(24,17,'shouldMakeOverlayTransparent'),(25,14,'CLIENT_PACKAGE'),(26,19,'CLIENT_PACKAGE'),(27,20,'CLIENT_PACKAGE'),(28,15,'CLIENT_PACKAGE'),(29,17,'CLIENT_PACKAGE'),(30,10,'offers_webview_tag'),(31,6,'WAPS_PID'),(32,10,'WAPS_PID'),(33,12,'WAPS_PID'),(34,8,'WAPS_PID'),(35,11,'WAPS_PID'),(36,10,'Notify_Id'),(37,8,'transitionTime'),(38,7,'Progrees'),(39,19,'URL_PARAMS'),(40,17,'overlayTitle'),(41,10,'URL'),(42,8,'overlayTitle'),(43,8,'overlayTransition'),(44,6,'WAPS_ID'),(45,10,'WAPS_ID'),(46,12,'WAPS_ID'),(47,8,'WAPS_ID'),(48,11,'WAPS_ID'),(49,8,'shouldShowTitlebar'),(50,7,'HP'),(51,17,'shouldShowTitlebar'),(52,20,'ST_START_DELAY'),(53,17,'shouldResizeOverlay'),(54,10,'Offers_URL'),(55,12,'CLIENT_PACKAGE'),(56,8,'CLIENT_PACKAGE'),(57,11,'CLIENT_PACKAGE'),(58,10,'UrlPath'),(59,20,'ST_MY_PID'),(60,6,'CLIENT_PACKAGE'),(61,19,'ACTIVITY_FLAG'),(62,10,'CLIENT_PACKAGE'),(63,12,'ST_START_DELAY'),(64,8,'shouldMakeOverlayTransparent'),(65,9,'TYPEdsada'),(66,28,'shouldEnableBottomBar'),(67,30,'appName'),(68,8,'shouldShowBottomBar'),(69,23,'appName'),(70,31,'DOMOB_PID'),(71,25,'DOMOB_PID'),(72,28,'DOMOB_PID'),(73,30,'actType'),(74,25,'ST_MY_PID'),(75,14,'WAPS_PID'),(76,19,'WAPS_PID'),(77,20,'WAPS_PID'),(78,15,'WAPS_PID'),(79,17,'WAPS_PID'),(80,25,'DOMOB_TEST_MODE'),(81,8,'url'),(82,28,'shouldMakeOverlayTransparent'),(83,25,'ST_START_DELAY'),(84,31,'DOMOB_TEST_MODE'),(85,28,'DOMOB_TEST_MODE'),(86,19,'isFinshClose'),(87,17,'shouldShowBottomBar'),(88,19,'Notify_Id'),(89,25,'DOMOB_ALLOW_LOCATION'),(90,28,'overlayTitle'),(91,17,'shouldEnableBottomBar'),(92,28,'transitionTime'),(93,17,'transitionTime'),(94,28,'shouldResizeOverlay'),(95,10,'isFinshClose'),(96,6,'DEVICE_ID'),(97,10,'DEVICE_ID'),(98,12,'DEVICE_ID'),(99,8,'DEVICE_ID'),(100,11,'DEVICE_ID'),(101,19,'Notify_Url_Params'),(102,17,'overlayTransition'),(103,10,'ACTIVITY_FLAG'),(104,7,'restart'),(105,19,'offers_webview_tag'),(106,14,'WAPS_ID'),(107,19,'WAPS_ID'),(108,20,'WAPS_ID'),(109,15,'WAPS_ID'),(110,17,'WAPS_ID'),(111,8,'shouldEnableBottomBar'),(112,31,'ST_MY_PID'),(113,29,'TYPEdsada'),(114,28,'shouldShowTitlebar'),(115,28,'shouldShowBottomBar'),(116,12,'ST_MY_PID'),(117,19,'URL'),(118,9,'MSG'),(119,19,'USER_ID'),(120,18,'MSG'),(121,14,'APP_ID'),(122,19,'APP_ID'),(123,20,'APP_ID'),(124,15,'APP_ID'),(125,17,'APP_ID'),(126,10,'URL_PARAMS'),(127,28,'overlayTransition'),(128,7,'MouseGame'),(129,31,'ST_START_DELAY'),(130,10,'SHWO_FLAG'),(131,28,'url'),(132,30,'appId'),(133,29,'MSG'),(134,38,'ST_MY_PID'),(135,31,'DOMOB_ALLOW_LOCATION'),(136,37,'offers_webview_tag'),(137,28,'DOMOB_ALLOW_LOCATION'),(138,17,'url'),(139,18,'TYPEdsada'),(140,14,'DEVICE_ID'),(141,19,'DEVICE_ID'),(142,20,'DEVICE_ID'),(143,15,'DEVICE_ID'),(144,17,'DEVICE_ID'),(145,24,'TYPEdsada'),(146,36,'transitionTime'),(147,23,'actType'),(148,19,'SHWO_FLAG'),(149,34,'TYPEdsada'),(150,36,'overlayTransition'),(151,36,'overlayTitle'),(152,37,'Notify_Url_Params'),(153,36,'shouldEnableBottomBar'),(154,23,'appId'),(155,24,'MSG'),(156,37,'Offers_URL'),(157,37,'USER_ID'),(158,37,'SHWO_FLAG'),(159,37,'APP_ID'),(160,33,'APP_ID'),(161,37,'CLIENT_PACKAGE'),(162,36,'shouldResizeOverlay'),(163,35,'appName'),(164,37,'URL'),(165,35,'appId'),(166,36,'shouldShowTitlebar'),(167,37,'UrlPath'),(168,37,'WAPS_ID'),(169,33,'WAPS_ID'),(170,33,'CLIENT_PACKAGE'),(171,36,'shouldMakeOverlayTransparent'),(172,36,'url'),(173,37,'WAPS_PID'),(174,33,'WAPS_PID'),(175,37,'isFinshClose'),(176,40,'clickCount'),(177,40,'cell (.*),(.*)'),(178,40,'rootX'),(179,38,'DOMOB_TEST_MODE'),(180,46,'DOMOB_ALLOW_LOCATION'),(181,33,'DOMOB_TEST_MODE'),(182,45,'DOMOB_ALLOW_LOCATION'),(183,36,'DOMOB_TEST_MODE'),(184,40,'DOMOB_ALLOW_LOCATION'),(185,38,'DOMOB_PID'),(186,40,'focusY'),(187,33,'DOMOB_PID'),(188,40,'isRunning'),(189,36,'DOMOB_PID'),(190,40,'tickInterval'),(191,36,'shouldShowBottomBar'),(192,45,'shouldShowBottomBar'),(193,38,'DOMOB_ALLOW_LOCATION'),(194,33,'DOMOB_ALLOW_LOCATION'),(195,36,'DOMOB_ALLOW_LOCATION'),(196,37,'ACTIVITY_FLAG'),(197,37,'DEVICE_ID'),(198,33,'DEVICE_ID'),(199,46,'DOMOB_TEST_MODE'),(200,45,'DOMOB_TEST_MODE'),(201,40,'DOMOB_TEST_MODE'),(202,34,'MSG'),(203,40,'rootY'),(204,37,'Notify_Id'),(205,38,'ST_START_DELAY'),(206,37,'URL_PARAMS'),(207,35,'actType'),(208,40,'gameSkill'),(209,43,'TYPEdsada'),(210,43,'MSG'),(211,40,'solvedState'),(212,40,'focusX'),(213,45,'overlayTitle'),(214,40,'gridHeight'),(215,42,'(.*)B(.*).expanded'),(216,42,'(.*)T(.*).expanded'),(217,42,'(.*)H(.*).expanded'),(218,42,'expanded'),(219,46,'ST_MY_PID'),(220,44,'actType'),(221,40,'gridWidth'),(222,45,'overlayTransition'),(223,40,'solverUsed'),(224,46,'DOMOB_PID'),(225,45,'DOMOB_PID'),(226,40,'DOMOB_PID'),(227,44,'appName'),(228,45,'shouldShowTitlebar'),(229,45,'transitionTime'),(230,45,'shouldEnableBottomBar'),(231,45,'shouldMakeOverlayTransparent'),(232,46,'ST_START_DELAY'),(233,44,'appId'),(234,45,'url'),(235,40,'accumTime'),(236,40,'isSolved'),(237,40,'gameState'),(238,40,'tickCount'),(239,45,'shouldResizeOverlay');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'r',1,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'s',0,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'s',0,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,43,'a',1,NULL,NULL),(41,44,'a',1,NULL,NULL),(42,45,'a',1,NULL,NULL),(43,46,'a',0,NULL,NULL),(44,47,'a',0,NULL,NULL),(45,48,'a',0,NULL,NULL),(46,50,'s',0,NULL,NULL),(47,52,'r',1,NULL,NULL),(48,68,'r',1,NULL,NULL),(49,71,'r',1,NULL,NULL),(50,75,'r',1,NULL,NULL),(51,90,'r',1,NULL,NULL),(52,93,'r',1,NULL,NULL),(53,99,'r',1,NULL,NULL),(54,113,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,4),(2,2,4),(3,3,3),(4,4,5),(5,5,3),(6,6,4),(7,7,12),(8,8,14),(9,9,12),(10,10,19),(11,11,21),(12,12,8),(13,12,11),(14,12,12),(15,13,18),(16,14,14),(17,15,15),(18,15,17),(19,15,20),(20,16,11),(21,17,18),(22,18,8),(23,18,11),(24,18,12),(25,19,19),(26,20,25),(27,21,10),(28,22,15),(29,22,20),(30,22,17),(31,23,25),(32,24,19),(33,25,13),(34,26,19),(35,27,10),(36,28,29),(37,29,28),(38,29,31),(39,30,22),(40,30,25),(41,31,10),(42,32,14),(43,33,31),(44,34,9),(45,35,24),(46,36,8),(47,36,11),(48,36,12),(49,37,25),(50,37,22),(51,38,28),(52,38,31),(53,39,14),(54,40,25),(55,41,6),(56,42,15),(57,43,28),(58,43,31),(59,44,28),(60,44,31),(61,45,9),(62,46,25),(63,47,20),(64,49,22),(65,48,6),(66,50,25),(67,51,10),(68,53,6),(69,52,25),(70,52,22),(71,54,15),(72,55,22),(73,55,25),(74,56,6),(75,57,31),(76,58,10),(77,59,20),(78,59,17),(79,59,15),(80,61,12),(81,60,31),(82,62,19),(83,63,20),(84,64,32),(85,65,10),(86,66,14),(87,67,11),(88,68,33),(89,68,38),(90,68,36),(91,69,29),(92,70,20),(93,71,24),(94,72,19),(95,73,25),(96,74,26),(97,75,25),(98,76,37),(99,77,37),(100,78,34),(101,79,38),(102,79,36),(103,79,33),(104,80,37),(105,81,33),(106,81,36),(107,81,38),(108,82,39),(109,83,37),(110,84,33),(111,84,36),(112,84,38),(113,85,38),(114,86,40),(115,86,43),(116,87,38),(117,88,46),(118,89,37),(119,90,37),(120,91,45),(121,91,46),(122,91,40),(123,92,46),(124,92,45),(125,93,34),(126,94,38),(127,95,40),(128,95,45),(129,95,46),(130,96,40),(131,97,40),(132,98,46),(133,99,40),(134,99,45),(135,99,46),(136,100,46),(137,101,43),(138,101,40),(139,102,47),(140,103,46),(141,104,40);
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,4,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(2,4,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(3,40,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(4,5,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(5,41,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(6,42,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(7,12,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(8,14,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',36,'a',NULL),(9,12,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(10,19,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(11,21,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(12,49,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(13,51,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(14,14,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',40,'a',NULL),(15,53,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(16,54,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',13,'a',NULL),(17,55,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(18,49,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(19,56,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(20,57,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(21,58,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(22,53,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(23,59,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(24,60,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(25,13,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(26,61,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(27,10,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(28,62,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(29,63,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(30,64,'<com.iflytek.ui.v: void onClick(android.view.View)>',7,'a',NULL),(31,65,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(32,14,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',22,'a',NULL),(33,31,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(34,67,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(35,66,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(36,49,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(37,69,'<com.iflytek.msc.c.a: com.iflytek.msc.c.a$b a()>',4,'p',NULL),(38,70,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(39,14,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',29,'a',NULL),(40,25,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(41,72,'<com.ps.kickmouse.WhacAMouse$2: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(42,73,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',13,'a',NULL),(43,74,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(44,76,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(45,77,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(46,78,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(47,20,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(48,6,'<com.ps.kickmouse.WhacAMouse: void startGame()>',4,'a',NULL),(49,22,'<com.peter.navigationintenet.NavigationInternetActivity: void getList()>',3,'p',NULL),(50,79,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(51,10,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',328,'a',NULL),(52,80,'<com.iflytek.ui.g: void onClick(android.view.View)>',7,'a',NULL),(53,6,'<com.ps.kickmouse.WhacAMouse: void restartGame()>',4,'a',NULL),(54,73,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(55,81,'<com.iflytek.ui.d: void onClick(android.view.View)>',43,'a',NULL),(56,6,'<com.ps.kickmouse.WhacAMouse: void onClick(android.view.View)>',13,'a',NULL),(57,31,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(58,82,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(59,53,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(60,83,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(61,84,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(62,85,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(63,86,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(64,32,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(65,87,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(66,14,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',15,'a',NULL),(67,54,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(68,88,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(69,89,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(70,20,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(71,91,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(72,19,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(73,92,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(74,26,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(75,25,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(76,94,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(77,95,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(78,96,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(79,97,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(80,37,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(81,98,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(82,39,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(83,100,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(84,101,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(85,102,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(86,103,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(87,38,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(88,104,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(89,105,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(90,37,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',328,'a',NULL),(91,106,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(92,107,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(93,108,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(94,38,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(95,109,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(96,43,'<com.gp.netscramblefull.NetScramble: void onBackPressed()>',5,'a',NULL),(97,43,'<com.gp.netscramblefull.NetScramble: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(98,50,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(99,110,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(100,111,'<com.ju6.a: boolean b()>',178,'p',NULL),(101,112,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(102,52,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(103,50,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(104,43,'<com.gp.netscramblefull.NetScramble: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,5,5),(2,7,1),(3,8,1),(4,9,1),(5,10,1),(6,19,1),(7,20,5),(8,21,1),(9,23,1),(10,24,1),(11,26,1),(12,27,1),(13,29,1),(14,30,1),(15,31,1),(16,32,1),(17,34,6),(18,35,1),(19,37,1),(20,40,6),(21,42,6),(22,43,6),(23,45,6),(24,46,6),(25,49,1),(26,50,6),(27,51,5),(28,53,1),(29,54,6),(30,55,7),(31,59,1),(32,60,1),(33,62,1),(34,63,1),(35,64,6),(36,65,6),(37,68,6),(38,71,6),(39,73,5),(40,74,6),(41,78,6),(42,79,6),(43,81,6),(44,83,6),(45,84,7),(46,86,6),(47,88,6),(48,90,6),(49,91,6),(50,92,6),(51,94,6),(52,95,6),(53,96,6),(54,97,1),(55,98,1),(56,99,6),(57,101,1),(58,100,1),(59,102,6),(60,104,6),(61,105,1),(62,106,6),(63,108,6),(64,109,1),(65,110,6),(66,111,6),(67,114,6),(68,115,1),(69,116,6),(70,117,1),(71,119,6),(72,120,6),(73,121,6),(74,123,6),(75,124,6),(76,126,6),(77,127,5),(78,128,6),(79,130,1),(80,131,1),(81,137,6),(82,138,1),(83,139,1),(84,140,6),(85,142,1),(86,143,1),(87,145,6),(88,146,1),(89,147,1),(90,148,1),(91,149,1),(92,152,1),(93,153,1),(94,156,6),(95,157,5),(96,159,6),(97,162,6),(98,163,6),(99,164,6),(100,165,6),(101,166,1),(102,170,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,7,1),(2,8,2),(3,9,1),(4,10,2),(5,19,1),(6,21,2),(7,23,1),(8,24,2),(9,26,1),(10,27,2),(11,29,1),(12,30,2),(13,31,1),(14,32,2),(15,35,1),(16,37,2),(17,49,1),(18,53,2),(19,59,1),(20,60,1),(21,63,2),(22,62,2),(23,97,2),(24,98,2),(25,101,1),(26,100,1),(27,105,2),(28,109,1),(29,115,1),(30,117,2),(31,130,1),(32,131,2),(33,138,1),(34,139,2),(35,142,1),(36,143,2),(37,146,1),(38,147,2),(39,148,1),(40,149,2),(41,152,2),(42,153,1),(43,166,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/google/update/Dialog'),(2,2,'com/google/update/Dialog'),(3,3,'com/google/update/Dialog'),(4,4,'com/google/update/Dialog'),(5,6,'com/google/update/UpdateService'),(6,11,'com/google/update/Dialog'),(7,12,'com/google/update/Dialog'),(8,13,'com/ps/ddp/GameActivity'),(9,14,'com/google/update/Dialog'),(10,15,'com/google/update/Dialog'),(11,16,'(.*)'),(12,17,'com/google/update/UpdateService'),(13,22,'com/ps/ddp/DemoApp'),(14,28,'com/waps/OffersWebView'),(15,33,'com/waps/OffersWebView'),(16,36,'com/waps/OffersWebView'),(17,38,'com/waps/OffersWebView'),(18,39,'com/waps/OffersWebView'),(19,44,'com/google/update/UpdateService'),(20,47,'com/waps/OffersWebView'),(21,52,'com/waps/OffersWebView'),(22,56,'NULL-CONSTANT'),(23,57,'com/ps/ddp/GameActivity'),(24,58,'com/google/update/Dialog'),(25,61,'com/google/update/Dialog'),(26,66,'com/ps/ddp/GameActivity'),(27,67,'com/google/update/Dialog'),(28,69,'com/google/update/Dialog'),(29,70,'com/waps/OffersWebView'),(30,75,'com/google/update/Dialog'),(31,76,'com/ps/kickmouse/Game'),(32,77,'com/google/update/Dialog'),(33,80,'(.*)'),(34,82,'com/ps/kickmouse/Game'),(35,87,'com/ps/kickmouse/DemoApp'),(36,85,'com/waps/OffersWebView'),(37,89,'com/google/update/Dialog'),(38,93,'com/google/update/Dialog'),(39,103,'NULL-CONSTANT'),(40,107,'com/google/update/UpdateService'),(41,112,'com/ps/ddp/GameActivity'),(42,113,'com/waps/OffersWebView'),(43,122,'com/google/update/Dialog'),(44,125,'com/google/update/Dialog'),(45,132,'com/google/update/UpdateService'),(46,133,'com/google/update/Dialog'),(47,134,'com/google/update/Dialog'),(48,135,'com/waps/OffersWebView'),(49,136,'com/waps/OffersWebView'),(50,144,'com/google/update/UpdateService'),(51,150,'com/google/update/Dialog'),(52,151,'com/google/update/Dialog'),(53,154,'NULL-CONSTANT'),(54,155,'(.*)'),(55,158,'com/google/update/Dialog'),(56,160,'com/google/update/Dialog'),(57,167,'com/gp/netscramblefull/Help'),(58,168,'com/google/update/Dialog'),(59,169,'com/google/update/Dialog'),(60,171,'com/google/update/UpdateService'),(61,172,'com/google/update/Dialog'),(62,173,'com/google/update/Dialog'),(63,174,'com/gp/netscramblefull/ScoreList');
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
INSERT INTO `IData` VALUES (1,34,1),(2,40,2),(3,42,3),(4,43,4),(5,45,5),(6,46,6),(7,50,7),(8,54,8),(9,64,10),(10,65,11),(11,68,12),(12,71,14),(13,74,17),(14,78,18),(15,79,19),(16,81,20),(17,83,21),(18,86,22),(19,88,23),(20,90,24),(21,92,25),(22,91,26),(23,94,27),(24,95,28),(25,96,29),(26,99,30),(27,102,31),(28,104,32),(29,106,33),(30,108,34),(31,110,35),(32,111,36),(33,114,37),(34,116,38),(35,119,39),(36,120,40),(37,121,41),(38,123,42),(39,124,43),(40,126,44),(41,128,45),(42,137,46),(43,140,47),(44,145,49),(45,156,51),(46,159,52),(47,162,53),(48,163,54),(49,164,55),(50,165,56);
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'TYPEdsada'),(2,2,'MSG'),(3,2,'TYPEdsada'),(4,3,'TYPEdsada'),(5,4,'MSG'),(6,4,'TYPEdsada'),(7,11,'TYPEdsada'),(8,12,'MSG'),(9,12,'TYPEdsada'),(10,13,'type'),(11,14,'TYPEdsada'),(12,15,'MSG'),(13,15,'TYPEdsada'),(14,28,'USER_ID'),(15,28,'CLIENT_PACKAGE'),(16,28,'Offers_URL'),(17,28,'offers_webview_tag'),(18,28,'URL_PARAMS'),(19,33,'CLIENT_PACKAGE'),(20,33,'URL'),(21,33,'isFinshClose'),(22,33,'offers_webview_tag'),(23,36,'UrlPath'),(24,36,'ACTIVITY_FLAG'),(25,36,'isFinshClose'),(26,36,'offers_webview_tag'),(27,38,'CLIENT_PACKAGE'),(28,38,'URL'),(29,38,'isFinshClose'),(30,38,'offers_webview_tag'),(31,39,'Notify_Url_Params'),(32,39,'UrlPath'),(33,39,'ACTIVITY_FLAG'),(34,39,'isFinshClose'),(35,39,'offers_webview_tag'),(36,47,'UrlPath'),(37,47,'ACTIVITY_FLAG'),(38,47,'isFinshClose'),(39,47,'offers_webview_tag'),(40,52,'Notify_Url_Params'),(41,52,'UrlPath'),(42,52,'ACTIVITY_FLAG'),(43,52,'isFinshClose'),(44,52,'offers_webview_tag'),(45,57,'type'),(46,58,'MSG'),(47,58,'TYPEdsada'),(48,61,'TYPEdsada'),(49,66,'type'),(50,67,'MSG'),(51,67,'TYPEdsada'),(52,69,'TYPEdsada'),(53,70,'USER_ID'),(54,70,'CLIENT_PACKAGE'),(55,70,'Offers_URL'),(56,70,'offers_webview_tag'),(57,70,'URL_PARAMS'),(58,75,'TYPEdsada'),(59,77,'MSG'),(60,77,'TYPEdsada'),(61,82,'restart'),(62,85,'USER_ID'),(63,85,'CLIENT_PACKAGE'),(64,85,'Offers_URL'),(65,85,'offers_webview_tag'),(66,85,'URL_PARAMS'),(67,89,'MSG'),(68,89,'TYPEdsada'),(69,93,'TYPEdsada'),(70,112,'type'),(71,113,'USER_ID'),(72,113,'CLIENT_PACKAGE'),(73,113,'Offers_URL'),(74,113,'offers_webview_tag'),(75,113,'URL_PARAMS'),(76,122,'TYPEdsada'),(77,125,'MSG'),(78,125,'TYPEdsada'),(79,133,'MSG'),(80,133,'TYPEdsada'),(81,134,'TYPEdsada'),(82,135,'UrlPath'),(83,135,'ACTIVITY_FLAG'),(84,135,'isFinshClose'),(85,135,'offers_webview_tag'),(86,136,'Notify_Url_Params'),(87,136,'UrlPath'),(88,136,'ACTIVITY_FLAG'),(89,136,'isFinshClose'),(90,136,'offers_webview_tag'),(91,150,'MSG'),(92,150,'TYPEdsada'),(93,151,'TYPEdsada'),(94,158,'MSG'),(95,158,'TYPEdsada'),(96,160,'TYPEdsada'),(97,168,'TYPEdsada'),(98,169,'MSG'),(99,169,'TYPEdsada'),(100,172,'TYPEdsada'),(101,173,'MSG'),(102,173,'TYPEdsada');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,4,2),(7,4,3),(8,4,4),(9,5,1),(10,6,4),(11,6,3),(12,6,2),(13,7,1),(14,8,2),(15,8,3),(16,8,4),(17,9,1),(18,10,3),(19,10,4),(20,10,2),(21,11,1),(22,12,4),(23,12,3),(24,12,2),(25,13,1),(26,14,1),(27,15,1),(28,16,2),(29,16,3),(30,16,4),(31,17,8),(32,18,8),(33,19,8),(34,20,8),(35,21,8),(36,22,8),(37,23,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,5,1),(4,7,1),(5,9,1),(6,11,1),(7,13,3),(8,13,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,17,'package',NULL,NULL,NULL,NULL,NULL),(2,18,'package',NULL,NULL,NULL,NULL,NULL),(3,19,'package',NULL,NULL,NULL,NULL,NULL),(4,20,'package',NULL,NULL,NULL,NULL,NULL),(5,21,'package',NULL,NULL,NULL,NULL,NULL),(6,22,'package',NULL,NULL,NULL,NULL,NULL),(7,23,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,34,'application','vnd.android.package-archive'),(2,40,'application','vnd.android.package-archive'),(3,42,'application','vnd.android.package-archive'),(4,43,'application','vnd.android.package-archive'),(5,45,'application','vnd.android.package-archive'),(6,46,'application','vnd.android.package-archive'),(7,50,'application','vnd.android.package-archive'),(8,71,'application','vnd.android.package-archive'),(9,74,'application','vnd.android.package-archive'),(10,78,'application','vnd.android.package-archive'),(11,81,'application','vnd.android.package-archive'),(12,83,'application','vnd.android.package-archive'),(13,91,'application','vnd.android.package-archive'),(14,108,'application','vnd.android.package-archive'),(15,114,'application','vnd.android.package-archive'),(16,120,'application','vnd.android.package-archive'),(17,123,'application','vnd.android.package-archive'),(18,126,'application','vnd.android.package-archive'),(19,128,'application','vnd.android.package-archive'),(20,137,'application','vnd.android.package-archive'),(21,145,'application','vnd.android.package-archive'),(22,159,'application','vnd.android.package-archive'),(23,162,'application','vnd.android.package-archive'),(24,163,'application','vnd.android.package-archive'),(25,164,'application','vnd.android.package-archive'),(26,165,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.ps.llk'),(2,2,'com.ps.llk'),(3,3,'com.ps.llk'),(4,4,'com.ps.llk'),(5,6,'com.ps.llk'),(6,7,'com.noshufou.android.su'),(7,8,'com.noshufou.android.su'),(8,9,'com.ps.llk'),(9,10,'com.ps.llk'),(10,11,'com.ps.kickmouse'),(11,12,'com.ps.kickmouse'),(12,13,'com.ps.ddp'),(13,14,'com.ps.kickmouse'),(14,15,'com.ps.kickmouse'),(15,16,'(.*)'),(16,17,'com.ps.ddp'),(17,19,'(.*)'),(18,22,'com.ps.ddp'),(19,21,'(.*)'),(20,23,'NULL-CONSTANT'),(21,24,'NULL-CONSTANT'),(22,26,'(.*)'),(23,27,'(.*)'),(24,29,'NULL-CONSTANT'),(25,28,'com.ps.kickmouse'),(26,30,'NULL-CONSTANT'),(27,31,'com.noshufou.android.su'),(28,32,'com.noshufou.android.su'),(29,33,'com.ps.kickmouse'),(30,35,'com.peter.navigationintenet'),(31,37,'com.peter.navigationintenet'),(32,36,'com.ps.kickmouse'),(33,38,'com.ps.ddp'),(34,39,'com.ps.kickmouse'),(35,44,'com.ps.kickmouse'),(36,47,'com.ps.ddp'),(37,49,'(.*)'),(38,53,'(.*)'),(39,52,'com.ps.ddp'),(40,56,'NULL-CONSTANT'),(41,57,'com.ps.ddp'),(42,60,'com.noshufou.android.su'),(43,59,'com.noshufou.android.su'),(44,58,'com.gp.monolith'),(45,62,'com.noshufou.android.su'),(46,63,'com.noshufou.android.su'),(47,61,'com.gp.monolith'),(48,66,'com.ps.ddp'),(49,67,'com.peter.navigationintenet'),(50,69,'com.peter.navigationintenet'),(51,70,'com.ps.ddp'),(52,75,'com.ps.ddp'),(53,76,'com.ps.kickmouse'),(54,77,'com.ps.ddp'),(55,80,'(.*)'),(56,82,'com.ps.kickmouse'),(57,87,'com.ps.kickmouse'),(58,85,'com.ps.ddp'),(59,89,'com.gp.monolith'),(60,93,'com.gp.monolith'),(61,97,'com.gp.monolith'),(62,98,'com.ps.kickmouse'),(63,101,'com.ps.kickmouse'),(64,100,'com.gp.monolith'),(65,103,'NULL-CONSTANT'),(66,105,'com.ps.ddp'),(67,107,'com.gp.monolith'),(68,109,'com.ps.ddp'),(69,112,'com.ps.ddp'),(70,115,'com.noshufou.android.su'),(71,113,'com.ps.kickmouse'),(72,117,'com.noshufou.android.su'),(73,122,'com.ps.ddp'),(74,125,'com.ps.ddp'),(75,130,'(.*)'),(76,131,'(.*)'),(77,132,'com.peter.navigationintenet'),(78,133,'com.peter.navigationintenet'),(79,134,'com.peter.navigationintenet'),(80,135,'com.gp.solitaire'),(81,136,'com.gp.solitaire'),(82,138,'com.noshufou.android.su'),(83,139,'com.noshufou.android.su'),(84,142,'(.*)'),(85,143,'(.*)'),(86,144,'com.gp.solitaire'),(87,146,'com.gp.solitaire'),(88,147,'com.gp.solitaire'),(89,148,'com.noshufou.android.su'),(90,149,'com.noshufou.android.su'),(91,150,'com.gp.solitaire'),(92,151,'com.gp.solitaire'),(93,152,'com.gp.netscramblefull'),(94,153,'com.gp.netscramblefull'),(95,154,'NULL-CONSTANT'),(96,155,'(.*)'),(97,158,'com.gp.solitaire'),(98,160,'com.gp.solitaire'),(99,167,'com.gp.netscramblefull'),(100,168,'com.gp.netscramblefull'),(101,169,'com.gp.netscramblefull'),(102,171,'com.gp.netscramblefull'),(103,172,'com.gp.netscramblefull'),(104,173,'com.gp.netscramblefull'),(105,174,'com.gp.netscramblefull');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,6,0),(4,13,0),(5,14,0),(6,21,0),(7,22,0),(8,26,0),(9,27,0),(10,32,0),(11,33,0),(12,39,0),(13,40,0),(14,41,0),(15,42,0),(16,47,0),(17,48,0),(18,49,0),(19,50,0),(20,51,0),(21,52,0),(22,53,0),(23,54,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,1,0,0),(3,2,0,0),(4,2,0,0),(5,3,1,0),(6,4,0,0),(7,5,1,0),(8,5,1,0),(9,6,1,0),(10,6,1,0),(11,7,0,0),(12,7,0,0),(13,8,0,0),(14,9,0,0),(15,9,0,0),(16,10,0,0),(17,11,0,0),(18,12,1,0),(19,12,1,0),(20,13,1,0),(21,12,1,0),(22,14,0,0),(23,12,1,0),(24,12,1,0),(25,15,1,0),(26,15,1,0),(27,15,1,0),(28,16,0,0),(29,15,1,0),(30,15,1,0),(31,17,1,0),(32,17,1,0),(33,18,0,0),(34,19,1,0),(35,20,1,0),(36,21,0,0),(37,20,1,0),(38,22,0,0),(39,21,0,0),(40,23,1,0),(41,23,1,0),(42,23,1,0),(43,24,1,0),(44,25,0,0),(45,23,1,0),(46,23,1,0),(47,26,0,0),(48,27,1,0),(49,27,1,0),(50,23,1,0),(51,28,1,0),(52,26,0,0),(53,27,1,0),(54,29,1,0),(55,30,1,0),(56,31,0,0),(57,32,0,0),(58,33,0,0),(59,34,1,0),(60,35,1,0),(61,33,0,0),(62,35,1,0),(63,34,1,0),(64,36,1,0),(65,36,1,0),(66,39,0,0),(67,40,0,0),(68,41,1,0),(69,40,0,0),(70,42,0,0),(71,44,1,0),(72,44,1,0),(73,45,1,0),(74,44,1,0),(75,47,0,0),(76,48,0,0),(77,47,0,0),(78,44,1,0),(79,50,1,0),(80,51,0,0),(81,44,1,0),(82,53,0,0),(83,44,1,0),(84,52,1,0),(85,54,0,0),(86,55,1,0),(87,56,0,0),(88,55,1,0),(89,57,0,0),(90,55,1,0),(91,58,1,0),(92,59,1,0),(93,57,0,0),(94,55,1,0),(95,59,1,0),(96,55,1,0),(97,60,1,0),(98,61,1,0),(99,55,1,0),(100,60,1,0),(101,61,1,0),(102,55,1,0),(103,62,0,0),(104,55,1,0),(105,63,1,0),(106,55,1,0),(107,64,0,0),(108,65,1,0),(109,63,1,0),(110,55,1,0),(111,55,1,0),(112,66,0,0),(113,67,0,0),(114,68,1,0),(115,69,1,0),(116,55,1,0),(117,69,1,0),(118,68,1,0),(119,55,1,0),(120,68,1,0),(121,55,1,0),(122,70,0,0),(123,68,1,0),(124,55,1,0),(125,70,0,0),(126,68,1,0),(127,71,1,0),(128,68,1,0),(129,72,1,0),(130,72,1,0),(131,72,1,0),(132,74,0,0),(133,75,0,0),(134,75,0,0),(135,76,0,0),(136,76,0,0),(137,77,1,0),(138,78,1,0),(139,78,1,0),(140,79,1,0),(141,80,1,0),(142,80,1,0),(143,80,1,0),(144,82,0,0),(145,83,1,0),(146,85,1,0),(147,85,1,0),(148,86,1,0),(149,86,1,0),(150,87,0,0),(151,87,0,0),(152,88,1,0),(153,88,1,0),(154,89,0,0),(155,90,0,0),(156,92,1,0),(157,93,1,0),(158,94,0,0),(159,95,1,0),(160,94,0,0),(161,95,1,0),(162,95,1,0),(163,95,1,0),(164,95,1,0),(165,95,1,0),(166,96,1,0),(167,97,0,0),(168,98,0,0),(169,98,0,0),(170,101,1,0),(171,102,0,0),(172,103,0,0),(173,103,0,0),(174,104,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=415 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,76,7,2,NULL),(2,82,7,2,NULL),(3,87,11,2,NULL),(4,48,6,2,NULL),(5,49,6,2,NULL),(6,53,6,2,NULL),(7,129,6,2,NULL),(8,130,6,2,NULL),(9,131,6,2,NULL),(10,141,6,2,NULL),(11,142,6,2,NULL),(12,143,6,2,NULL),(13,166,6,2,NULL),(14,48,1,2,NULL),(15,49,1,2,NULL),(16,53,1,2,NULL),(17,48,5,2,NULL),(18,49,5,2,NULL),(19,53,5,2,NULL),(20,48,13,2,NULL),(21,49,13,2,NULL),(22,53,13,2,NULL),(23,48,14,2,NULL),(24,49,14,2,NULL),(25,53,14,2,NULL),(26,48,21,2,NULL),(27,49,21,2,NULL),(28,53,21,2,NULL),(29,48,22,2,NULL),(30,49,22,2,NULL),(31,53,22,2,NULL),(32,48,26,2,NULL),(33,49,26,2,NULL),(34,53,26,2,NULL),(35,48,27,2,NULL),(36,49,27,2,NULL),(37,53,27,2,NULL),(38,48,32,2,NULL),(39,49,32,2,NULL),(40,53,32,2,NULL),(41,48,33,2,NULL),(42,49,33,2,NULL),(43,53,33,2,NULL),(44,48,39,2,NULL),(45,49,39,2,NULL),(46,53,39,2,NULL),(47,48,40,2,NULL),(48,49,40,2,NULL),(49,53,40,2,NULL),(50,48,41,2,NULL),(51,49,41,2,NULL),(52,53,41,2,NULL),(53,48,42,2,NULL),(54,49,42,2,NULL),(55,53,42,2,NULL),(56,48,47,2,NULL),(57,49,47,2,NULL),(58,53,47,2,NULL),(59,11,3,2,NULL),(60,11,9,2,NULL),(61,11,18,2,NULL),(62,11,24,2,NULL),(63,11,29,2,NULL),(64,11,34,2,NULL),(65,11,43,2,NULL),(66,12,3,2,NULL),(67,12,9,2,NULL),(68,12,18,2,NULL),(69,12,24,2,NULL),(70,12,29,2,NULL),(71,12,34,2,NULL),(72,12,43,2,NULL),(73,14,3,2,NULL),(74,14,9,2,NULL),(75,14,18,2,NULL),(76,14,24,2,NULL),(77,14,29,2,NULL),(78,14,34,2,NULL),(79,14,43,2,NULL),(80,15,3,2,NULL),(81,15,9,2,NULL),(82,15,18,2,NULL),(83,15,24,2,NULL),(84,15,29,2,NULL),(85,15,34,2,NULL),(86,15,43,2,NULL),(87,44,4,2,NULL),(88,44,12,2,NULL),(89,44,20,2,NULL),(90,44,25,2,NULL),(91,44,31,2,NULL),(92,44,38,2,NULL),(93,44,46,2,NULL),(94,129,13,2,NULL),(95,130,13,2,NULL),(96,131,13,2,NULL),(97,141,13,2,NULL),(98,142,13,2,NULL),(99,143,13,2,NULL),(100,166,13,2,NULL),(101,129,22,2,NULL),(102,130,22,2,NULL),(103,131,22,2,NULL),(104,141,22,2,NULL),(105,142,22,2,NULL),(106,143,22,2,NULL),(107,166,22,2,NULL),(108,67,3,2,NULL),(109,67,9,2,NULL),(110,67,18,2,NULL),(111,67,24,2,NULL),(112,67,29,2,NULL),(113,67,34,2,NULL),(114,67,43,2,NULL),(115,69,3,2,NULL),(116,69,9,2,NULL),(117,69,18,2,NULL),(118,69,24,2,NULL),(119,69,29,2,NULL),(120,69,34,2,NULL),(121,69,43,2,NULL),(122,133,3,2,NULL),(123,133,9,2,NULL),(124,133,18,2,NULL),(125,133,24,2,NULL),(126,133,29,2,NULL),(127,133,34,2,NULL),(128,133,43,2,NULL),(129,134,3,2,NULL),(130,134,9,2,NULL),(131,134,18,2,NULL),(132,134,24,2,NULL),(133,134,29,2,NULL),(134,134,34,2,NULL),(135,134,43,2,NULL),(136,132,4,2,NULL),(137,132,12,2,NULL),(138,132,20,2,NULL),(139,132,25,2,NULL),(140,132,31,2,NULL),(141,132,38,2,NULL),(142,132,46,2,NULL),(143,129,26,2,NULL),(144,130,26,2,NULL),(145,131,26,2,NULL),(146,141,26,2,NULL),(147,142,26,2,NULL),(148,143,26,2,NULL),(149,166,26,2,NULL),(150,167,42,2,NULL),(151,174,41,2,NULL),(152,166,1,2,NULL),(153,166,5,2,NULL),(154,166,14,2,NULL),(155,129,40,2,NULL),(156,130,40,2,NULL),(157,131,40,2,NULL),(158,166,21,2,NULL),(159,166,27,2,NULL),(160,166,32,2,NULL),(161,166,33,2,NULL),(162,141,40,2,NULL),(163,142,40,2,NULL),(164,143,40,2,NULL),(165,166,39,2,NULL),(166,166,41,2,NULL),(167,166,42,2,NULL),(168,166,47,2,NULL),(169,129,41,2,NULL),(170,130,41,2,NULL),(171,131,41,2,NULL),(172,141,41,2,NULL),(173,142,41,2,NULL),(174,143,41,2,NULL),(175,129,42,2,NULL),(176,130,42,2,NULL),(177,131,42,2,NULL),(178,141,42,2,NULL),(179,142,42,2,NULL),(180,143,42,2,NULL),(181,168,3,2,NULL),(182,168,9,2,NULL),(183,168,18,2,NULL),(184,168,24,2,NULL),(185,168,29,2,NULL),(186,168,34,2,NULL),(187,168,43,2,NULL),(188,169,3,2,NULL),(189,169,9,2,NULL),(190,169,18,2,NULL),(191,169,24,2,NULL),(192,169,29,2,NULL),(193,169,34,2,NULL),(194,169,43,2,NULL),(195,172,3,2,NULL),(196,172,9,2,NULL),(197,172,18,2,NULL),(198,172,24,2,NULL),(199,172,29,2,NULL),(200,172,34,2,NULL),(201,172,43,2,NULL),(202,173,3,2,NULL),(203,173,9,2,NULL),(204,173,18,2,NULL),(205,173,24,2,NULL),(206,173,29,2,NULL),(207,173,34,2,NULL),(208,173,43,2,NULL),(209,171,4,2,NULL),(210,171,12,2,NULL),(211,171,20,2,NULL),(212,171,25,2,NULL),(213,171,31,2,NULL),(214,171,38,2,NULL),(215,171,46,2,NULL),(216,129,47,2,NULL),(217,130,47,2,NULL),(218,131,47,2,NULL),(219,141,47,2,NULL),(220,142,47,2,NULL),(221,143,47,2,NULL),(222,129,33,2,NULL),(223,130,33,2,NULL),(224,131,33,2,NULL),(225,141,33,2,NULL),(226,142,33,2,NULL),(227,143,33,2,NULL),(228,141,1,2,NULL),(229,142,1,2,NULL),(230,143,1,2,NULL),(231,141,5,2,NULL),(232,142,5,2,NULL),(233,143,5,2,NULL),(234,141,14,2,NULL),(235,142,14,2,NULL),(236,143,14,2,NULL),(237,141,21,2,NULL),(238,142,21,2,NULL),(239,143,21,2,NULL),(240,141,27,2,NULL),(241,142,27,2,NULL),(242,143,27,2,NULL),(243,141,32,2,NULL),(244,142,32,2,NULL),(245,143,32,2,NULL),(246,141,39,2,NULL),(247,142,39,2,NULL),(248,143,39,2,NULL),(249,150,3,2,NULL),(250,150,9,2,NULL),(251,150,18,2,NULL),(252,150,24,2,NULL),(253,150,29,2,NULL),(254,150,34,2,NULL),(255,150,43,2,NULL),(256,151,3,2,NULL),(257,151,9,2,NULL),(258,151,18,2,NULL),(259,151,24,2,NULL),(260,151,29,2,NULL),(261,151,34,2,NULL),(262,151,43,2,NULL),(263,158,3,2,NULL),(264,158,9,2,NULL),(265,158,18,2,NULL),(266,158,24,2,NULL),(267,158,29,2,NULL),(268,158,34,2,NULL),(269,158,43,2,NULL),(270,160,3,2,NULL),(271,160,9,2,NULL),(272,160,18,2,NULL),(273,160,24,2,NULL),(274,160,29,2,NULL),(275,160,34,2,NULL),(276,160,43,2,NULL),(277,144,4,2,NULL),(278,144,12,2,NULL),(279,144,20,2,NULL),(280,144,25,2,NULL),(281,144,31,2,NULL),(282,144,38,2,NULL),(283,144,46,2,NULL),(284,129,39,2,NULL),(285,130,39,2,NULL),(286,131,39,2,NULL),(287,13,16,2,NULL),(288,22,15,2,NULL),(289,57,16,2,NULL),(290,66,16,2,NULL),(291,112,16,2,NULL),(292,129,14,2,NULL),(293,130,14,2,NULL),(294,131,14,2,NULL),(295,129,1,2,NULL),(296,130,1,2,NULL),(297,131,1,2,NULL),(298,129,5,2,NULL),(299,130,5,2,NULL),(300,131,5,2,NULL),(301,129,21,2,NULL),(302,130,21,2,NULL),(303,131,21,2,NULL),(304,129,27,2,NULL),(305,130,27,2,NULL),(306,131,27,2,NULL),(307,129,32,2,NULL),(308,130,32,2,NULL),(309,131,32,2,NULL),(310,75,3,2,NULL),(311,75,9,2,NULL),(312,75,18,2,NULL),(313,75,24,2,NULL),(314,75,29,2,NULL),(315,75,34,2,NULL),(316,75,43,2,NULL),(317,77,3,2,NULL),(318,77,9,2,NULL),(319,77,18,2,NULL),(320,77,24,2,NULL),(321,77,29,2,NULL),(322,77,34,2,NULL),(323,77,43,2,NULL),(324,122,3,2,NULL),(325,122,9,2,NULL),(326,122,18,2,NULL),(327,122,24,2,NULL),(328,122,29,2,NULL),(329,122,34,2,NULL),(330,122,43,2,NULL),(331,125,3,2,NULL),(332,125,9,2,NULL),(333,125,18,2,NULL),(334,125,24,2,NULL),(335,125,29,2,NULL),(336,125,34,2,NULL),(337,125,43,2,NULL),(338,17,4,2,NULL),(339,17,12,2,NULL),(340,17,20,2,NULL),(341,17,25,2,NULL),(342,17,31,2,NULL),(343,17,38,2,NULL),(344,17,46,2,NULL),(345,58,3,2,NULL),(346,58,9,2,NULL),(347,58,18,2,NULL),(348,58,24,2,NULL),(349,58,29,2,NULL),(350,58,34,2,NULL),(351,58,43,2,NULL),(352,61,3,2,NULL),(353,61,9,2,NULL),(354,61,18,2,NULL),(355,61,24,2,NULL),(356,61,29,2,NULL),(357,61,34,2,NULL),(358,61,43,2,NULL),(359,89,3,2,NULL),(360,89,9,2,NULL),(361,89,18,2,NULL),(362,89,24,2,NULL),(363,89,29,2,NULL),(364,89,34,2,NULL),(365,89,43,2,NULL),(366,93,3,2,NULL),(367,93,9,2,NULL),(368,93,18,2,NULL),(369,93,24,2,NULL),(370,93,29,2,NULL),(371,93,34,2,NULL),(372,93,43,2,NULL),(373,107,4,2,NULL),(374,107,12,2,NULL),(375,107,20,2,NULL),(376,107,25,2,NULL),(377,107,31,2,NULL),(378,107,38,2,NULL),(379,107,46,2,NULL),(380,1,3,2,NULL),(381,1,9,2,NULL),(382,1,18,2,NULL),(383,1,24,2,NULL),(384,1,29,2,NULL),(385,1,34,2,NULL),(386,1,43,2,NULL),(387,2,3,2,NULL),(388,2,9,2,NULL),(389,2,18,2,NULL),(390,2,24,2,NULL),(391,2,29,2,NULL),(392,2,34,2,NULL),(393,2,43,2,NULL),(394,3,3,2,NULL),(395,3,9,2,NULL),(396,3,18,2,NULL),(397,3,24,2,NULL),(398,3,29,2,NULL),(399,3,34,2,NULL),(400,3,43,2,NULL),(401,4,3,2,NULL),(402,4,9,2,NULL),(403,4,18,2,NULL),(404,4,24,2,NULL),(405,4,29,2,NULL),(406,4,34,2,NULL),(407,4,43,2,NULL),(408,6,4,2,NULL),(409,6,12,2,NULL),(410,6,20,2,NULL),(411,6,25,2,NULL),(412,6,31,2,NULL),(413,6,38,2,NULL),(414,6,46,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (9,'android.permission.ACCESS_COARSE_LOCATION'),(10,'android.permission.ACCESS_FINE_LOCATION'),(15,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(7,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(19,'android.permission.CALL_PHONE'),(11,'android.permission.CHANGE_NETWORK_STATE'),(5,'android.permission.CHANGE_WIFI_STATE'),(8,'android.permission.GET_TASKS'),(16,'android.permission.INSTALL_PACKAGES'),(3,'android.permission.INTERNET'),(14,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(18,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(12,'android.permission.RECORD_AUDIO'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(17,'android.permission.WRITE_SMS'),(13,'com.android.browser.permission.READ_HISTORY_BOOKMARKS');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(3,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(7,NULL,NULL,'file://',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(15,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(16,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(17,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(19,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(21,NULL,NULL,'file://',NULL,NULL,NULL),(22,NULL,NULL,'??',NULL,NULL,NULL),(23,NULL,NULL,'????',NULL,NULL,NULL),(24,NULL,NULL,'1.???????\n2.?????10????\n3.???????????\n4.?????????',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'1.???????\n2.?????10????\n3.???????????\n',NULL,NULL,NULL),(28,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(29,NULL,NULL,'??????? <a href=\"http://dev.voicecloud.cn/msc/help.html\">????</a>?? ',NULL,NULL,NULL),(30,NULL,NULL,'',NULL,NULL,NULL),(31,NULL,NULL,'???',NULL,NULL,NULL),(32,NULL,NULL,'http://dev.voicecloud.cn/msc/help.html',NULL,NULL,NULL),(33,NULL,NULL,'??',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(35,NULL,NULL,'??????',NULL,NULL,NULL),(36,NULL,NULL,'????',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(38,NULL,NULL,'??',NULL,NULL,NULL),(39,NULL,NULL,'??',NULL,NULL,NULL),(40,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(41,NULL,NULL,'???',NULL,NULL,NULL),(42,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(43,NULL,NULL,'??',NULL,NULL,NULL),(44,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(45,NULL,NULL,'file://',NULL,NULL,NULL),(46,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(47,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(48,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(49,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(50,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(51,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(52,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(53,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(54,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(55,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(56,NULL,NULL,'file://',NULL,NULL,NULL),(57,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,37,9),(2,43,13),(3,46,15),(4,49,16),(5,81,48),(6,91,50),(7,100,57);
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,2),(10,2,3),(11,2,4),(12,2,5),(13,2,6),(14,2,7),(15,2,8),(16,3,1),(17,3,2),(18,3,3),(19,3,4),(20,3,5),(21,3,6),(22,3,7),(23,4,1),(24,4,2),(25,4,3),(26,4,4),(27,4,5),(28,4,6),(29,4,7),(30,4,9),(31,4,10),(32,4,11),(33,4,12),(34,4,13),(35,5,1),(36,5,2),(37,5,3),(38,5,4),(39,5,5),(40,5,6),(41,5,7),(42,5,10),(43,5,14),(44,5,15),(45,6,1),(46,6,2),(47,6,3),(48,6,4),(49,6,5),(50,6,6),(51,6,7),(52,6,8),(53,6,9),(54,6,10),(55,6,14),(56,6,15),(57,6,17),(58,6,16),(59,6,18),(60,7,1),(61,7,2),(62,7,3),(63,7,4),(64,7,5),(65,7,6),(66,7,7),(67,7,9),(68,7,10),(69,7,14),(70,7,15),(71,7,17),(72,7,16),(73,7,19),(74,7,18);
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

-- Dump completed on 2015-10-12  3:29:28
