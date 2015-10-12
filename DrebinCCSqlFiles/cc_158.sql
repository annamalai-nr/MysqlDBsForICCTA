-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_158
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (5,'SQUARE'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(8,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(10,'android.intent.action.PACKAGE_ADDED'),(9,'android.intent.action.SEND'),(11,'android.intent.action.SENDTO'),(2,'android.intent.action.SIG_STR'),(12,'android.intent.action.VIEW'),(14,'android.intent.action.WEB_SEARCH'),(6,'com.android.service.START_AUDIO_SERVICE'),(7,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'com.ps.pintu.view',4),(2,'com.safetest.five',9),(3,'com.safetest.Star',5),(4,'com.ps.square',15),(5,'com.gp.search',4),(6,'com.mogo.gongfupuzzle',6),(7,'com.gp.netscramblefull',7);
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
INSERT INTO `CategoryStrings` VALUES (6,'android.intent.category.HOME'),(5,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(4,'android.intent.category.PREFERENCE'),(2,'android.intent.category.SQUARE'),(3,'android.intent.category.default');
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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.ps.pintu.view.MainActivity'),(2,1,'com.ps.pintu.view.JigsawActivity'),(3,1,'com.ps.pintu.view.LocalImageActivity'),(4,1,'com.ps.pintu.view.LocalImageGameActivity'),(5,1,'com.adwo.adsdk.AdwoAdBrowserActivity'),(6,1,'com.google.update.Dialog'),(7,2,'com.safetest.five.Welcome'),(8,1,'com.google.update.UpdateService'),(9,3,'com.safetest.Star.Star'),(10,1,'com.google.update.Receiver'),(11,2,'com.safetest.five.MainActivity'),(12,3,'com.safetest.Star.StarGame'),(13,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(14,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(15,3,'com.safetest.Star.StarHelp'),(16,4,'com.ps.square.Square'),(17,2,'com.safetest.five.ShowTips'),(18,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(19,2,'com.safetest.five.SoundService'),(20,3,'com.safetest.Star.ShowTips'),(21,4,'com.ps.square.elos.Elos'),(22,2,'com.safetest.five.UpdateService'),(23,3,'com.safetest.Star.UpdateService'),(24,2,'com.safetest.five.Receiver'),(25,3,'com.safetest.Star.Receiver'),(26,4,'com.ps.square.eloscomplex.ElosComplex'),(27,4,'com.google.update.Dialog'),(28,4,'com.waps.OffersWebView'),(29,4,'com.google.update.UpdateService'),(30,4,'com.google.update.Receiver'),(31,5,'com.gp.search.IndexUI'),(32,5,'com.gp.search.LoadWeathreUI'),(33,5,'com.gp.search.WeatherInfoUI'),(34,5,'com.gp.search.IPSearchUI'),(35,5,'com.gp.search.TrainSearchUI'),(36,5,'com.gp.search.ExpressSearchUI'),(37,5,'com.gp.search.PhoneSearchUI'),(38,6,'com.mogo.gongfupuzzle.begin'),(39,5,'com.gp.search.BusUI'),(40,6,'com.mogo.gongfupuzzle.Main'),(41,5,'com.gp.search.RPSearchUI'),(42,6,'com.google.ads.AdActivity'),(43,6,'com.vpon.adon.android.WebInApp'),(44,5,'com.gp.search.ScoreSearchUI'),(45,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(46,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(47,5,'com.gp.search.weather.proc.Splash'),(48,6,'com.waps.OffersWebView'),(49,5,'com.gp.search.weather.proc.MainService'),(50,6,'com.google.update.Dialog'),(51,5,'com.waps.OffersWebView'),(52,6,'com.google.update.UpdateService'),(53,5,'com.google.update.Dialog'),(54,6,'com.google.update.Receiver'),(55,5,'cn.domob.android.ads.DomobActivity'),(56,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(57,5,'com.gp.search.weather.func.AlarmService'),(58,5,'com.android.weather.service.LoadDataService'),(59,5,'com.google.update.UpdateService'),(60,5,'com.google.update.Receiver'),(61,1,'com.ps.pintu.view.MainActivity$1'),(62,1,'com.google.update.Dialog$2'),(63,1,'com.ps.pintu.view.LocalImageActivity$1'),(64,7,'com.gp.netscramblefull.NetScramble'),(65,7,'com.gp.netscramblefull.ScoreList'),(66,7,'com.gp.netscramblefull.Help'),(67,1,'com.google.update.Dialog$1'),(68,7,'com.google.update.Dialog'),(69,7,'cn.domob.android.ads.DomobActivity'),(70,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(71,7,'com.google.update.UpdateService'),(72,7,'com.google.update.Receiver'),(73,1,'com.ju6.a'),(74,1,'com.google.update.UpdateService$MyThread'),(75,2,'com.safetest.five.MainActivity$3'),(76,3,'com.adwo.adsdk.g'),(77,4,'com.waps.q'),(78,4,'com.waps.z'),(79,2,'com.safetest.five.Welcome$1'),(80,2,'com.safetest.five.ShowTips$1'),(81,4,'com.waps.o'),(82,2,'com.safetest.five.SoundService$1'),(83,2,'com.adwo.adsdk.g'),(84,4,'com.waps.aa'),(85,6,'com.google.update.Dialog$1'),(86,6,'com.waps.aa'),(87,4,'com.google.update.Dialog$2'),(88,4,'com.ps.square.Square$ItemClickListener'),(89,6,'com.google.update.Dialog$2'),(90,4,'com.waps.ac'),(91,6,'com.waps.AppConnect'),(92,4,'com.google.update.Dialog$1'),(93,6,'com.mogo.gongfupuzzle.begin$beginButtonListener'),(94,4,'com.google.update.UpdateService$AA'),(95,6,'com.waps.z'),(96,6,'com.google.update.UpdateService$AA'),(97,6,'com.waps.o'),(98,6,'com.waps.q'),(99,5,'com.google.update.UpdateService$AA'),(100,6,'com.waps.ac'),(101,5,'cn.domob.android.ads.DomobActionReceiver'),(102,5,'com.gp.search.control.MenuContorl$1'),(103,5,'com.google.update.Dialog$1'),(104,7,'cn.domob.android.ads.i'),(105,5,'cn.domob.android.ads.DomobAdManager'),(106,7,'cn.domob.android.ads.DomobActionReceiver'),(107,5,'com.gp.search.weather.func.AlarmHelper'),(108,7,'cn.domob.android.ads.DomobAdManager'),(109,7,'com.google.update.Dialog$2'),(110,5,'cn.domob.android.ads.i$6'),(111,5,'com.google.update.Dialog$2'),(112,7,'cn.domob.android.ads.i$6'),(113,5,'cn.domob.android.ads.DomobAdEngine$2'),(114,5,'cn.domob.android.ads.i'),(115,7,'com.google.update.UpdateService$AA'),(116,7,'cn.domob.android.ads.DomobAdEngine$2'),(117,7,'com.google.update.Dialog$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,8,'ST_MY_PID'),(2,5,'shouldResizeOverlay'),(3,2,'level'),(4,5,'shouldEnableBottomBar'),(5,8,'ST_START_DELAY'),(6,5,'shouldMakeOverlayTransparent'),(7,4,'level'),(8,2,'pictureIndex'),(9,6,'TYPEdsada'),(10,5,'overlayTransition'),(11,5,'transitionTime'),(12,5,'shouldShowBottomBar'),(13,5,'shouldShowTitlebar'),(14,5,'overlayTitle'),(15,5,'url'),(16,4,'path'),(17,6,'MSG'),(18,14,'shouldEnableBottomBar'),(19,18,'shouldShowTitlebar'),(20,23,'SAFE_START'),(21,23,'SAFE_PID'),(22,18,'overlayTitle'),(23,14,'shouldResizeOverlay'),(24,28,'offers_webview_tag'),(25,17,'MM'),(26,14,'shouldMakeOverlayTransparent'),(27,14,'transitionTime'),(28,22,'SAFE_START'),(29,14,'overlayTitle'),(30,13,'shouldEnableBottomBar'),(31,28,'ACTIVITY_FLAG'),(32,14,'url'),(33,14,'overlayTransition'),(34,45,'Adwo_PID'),(35,14,'shouldShowBottomBar'),(36,14,'shouldShowTitlebar'),(37,22,'SAFE_PID'),(38,38,'APP_ID'),(39,48,'APP_ID'),(40,48,'UrlPath'),(41,13,'url'),(42,52,'ST_MY_PID'),(43,16,'DEVICE_ID'),(44,48,'SHWO_FLAG'),(45,48,'isFinshClose'),(46,28,'DEVICE_ID'),(47,38,'DEVICE_ID'),(48,48,'DEVICE_ID'),(49,48,'Offers_URL'),(50,50,'TYPEdsada'),(51,48,'USER_ID'),(52,48,'URL_PARAMS'),(53,13,'shouldShowBottomBar'),(54,13,'overlayTitle'),(55,46,'transitionTime'),(56,28,'SHWO_FLAG'),(57,16,'APP_ID'),(58,28,'APP_ID'),(59,28,'UrlPath'),(60,28,'isFinshClose'),(61,28,'Notify_Url_Params'),(62,13,'transitionTime'),(63,48,'offers_webview_tag'),(64,29,'ST_START_DELAY'),(65,28,'CLIENT_PACKAGE'),(66,27,'MSG'),(67,48,'Notify_Id'),(68,48,'CLIENT_PACKAGE'),(69,45,'isTestMode'),(70,28,'URL_PARAMS'),(71,43,'url'),(72,28,'Notify_Id'),(73,13,'overlayTransition'),(74,13,'shouldMakeOverlayTransparent'),(75,28,'USER_ID'),(76,16,'CLIENT_PACKAGE'),(77,38,'WAPS_PID'),(78,48,'WAPS_PID'),(79,38,'CLIENT_PACKAGE'),(80,38,'WAPS_ID'),(81,16,'WAPS_PID'),(82,48,'WAPS_ID'),(83,28,'WAPS_PID'),(84,46,'url'),(85,50,'MSG'),(86,13,'shouldShowTitlebar'),(87,28,'URL'),(88,27,'TYPEdsada'),(89,13,'shouldResizeOverlay'),(90,48,'URL'),(91,46,'overlayTransition'),(92,16,'WAPS_ID'),(93,28,'WAPS_ID'),(94,28,'Offers_URL'),(95,29,'ST_MY_PID'),(96,48,'Notify_Url_Params'),(97,43,'adWidth'),(98,52,'ST_START_DELAY'),(99,46,'shouldShowBottomBar'),(100,46,'shouldEnableBottomBar'),(101,46,'shouldResizeOverlay'),(102,53,'TYPEdsada'),(103,55,'appId'),(104,55,'actType'),(105,46,'overlayTitle'),(106,48,'ACTIVITY_FLAG'),(107,46,'shouldShowTitlebar'),(108,46,'shouldMakeOverlayTransparent'),(109,59,'ST_MY_PID'),(110,56,'url'),(111,56,'shouldShowBottomBar'),(112,53,'MSG'),(113,66,'shouldShowBottomBar'),(114,61,'rootX'),(115,66,'shouldMakeOverlayTransparent'),(116,65,'appId'),(117,66,'overlayTransition'),(118,55,'appName'),(119,66,'url'),(120,56,'shouldShowTitlebar'),(121,56,'transitionTime'),(122,61,'rootY'),(123,56,'shouldMakeOverlayTransparent'),(124,63,'(.*)B(.*).expanded'),(125,63,'(.*)T(.*).expanded'),(126,63,'(.*)H(.*).expanded'),(127,63,'expanded'),(128,64,'TYPEdsada'),(129,61,'focusY'),(130,67,'ST_MY_PID'),(131,61,'focusX'),(132,61,'gameSkill'),(133,49,'DOMOB_TEST_MODE'),(134,67,'DOMOB_PID'),(135,59,'DOMOB_TEST_MODE'),(136,66,'DOMOB_PID'),(137,56,'DOMOB_TEST_MODE'),(138,61,'DOMOB_PID'),(139,61,'gridWidth'),(140,61,'solverUsed'),(141,49,'DOMOB_ALLOW_LOCATION'),(142,59,'DOMOB_ALLOW_LOCATION'),(143,56,'DOMOB_ALLOW_LOCATION'),(144,56,'overlayTransition'),(145,56,'shouldEnableBottomBar'),(146,59,'ST_START_DELAY'),(147,56,'overlayTitle'),(148,56,'shouldResizeOverlay'),(149,49,'DOMOB_PID'),(150,59,'DOMOB_PID'),(151,56,'DOMOB_PID'),(152,67,'DOMOB_ALLOW_LOCATION'),(153,66,'DOMOB_ALLOW_LOCATION'),(154,61,'DOMOB_ALLOW_LOCATION'),(155,67,'ST_START_DELAY'),(156,61,'gameState'),(157,66,'shouldShowTitlebar'),(158,61,'cell (.*),(.*)'),(159,61,'tickCount'),(160,65,'actType'),(161,66,'transitionTime'),(162,61,'solvedState'),(163,61,'tickInterval'),(164,61,'accumTime'),(165,66,'shouldResizeOverlay'),(166,61,'clickCount'),(167,66,'shouldEnableBottomBar'),(168,65,'appName'),(169,61,'gridHeight'),(170,61,'isSolved'),(171,66,'overlayTitle'),(172,61,'isRunning'),(173,67,'DOMOB_TEST_MODE'),(174,66,'DOMOB_TEST_MODE'),(175,61,'DOMOB_TEST_MODE'),(176,64,'MSG');
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'s',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'s',0,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'s',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'r',1,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'s',0,NULL,NULL),(58,58,'s',1,NULL,NULL),(59,59,'s',0,NULL,NULL),(60,60,'r',1,NULL,NULL),(61,64,'a',1,NULL,NULL),(62,65,'a',1,NULL,NULL),(63,66,'a',1,NULL,NULL),(64,68,'a',0,NULL,NULL),(65,69,'a',0,NULL,NULL),(66,70,'a',0,NULL,NULL),(67,71,'s',0,NULL,NULL),(68,72,'r',1,NULL,NULL),(69,77,'r',1,NULL,NULL),(70,98,'r',1,NULL,NULL),(71,101,'r',1,NULL,NULL),(72,106,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,1,3),(3,2,6),(4,3,8),(5,4,1),(6,4,3),(7,5,10),(8,6,3),(9,6,1),(10,7,1),(11,7,3),(12,8,6),(13,9,8),(14,10,8),(15,11,8),(16,12,11),(17,13,9),(18,14,24),(19,15,30),(20,16,7),(21,17,11),(22,18,28),(23,19,7),(24,20,28),(25,21,17),(26,22,11),(27,23,28),(28,24,52),(29,25,11),(30,26,29),(31,27,7),(32,27,19),(33,27,11),(34,28,11),(35,29,28),(36,30,50),(37,31,48),(38,32,29),(39,33,27),(40,34,48),(41,35,16),(42,36,50),(43,37,28),(44,38,38),(45,39,27),(46,40,38),(47,41,29),(48,42,48),(49,43,48),(50,44,16),(51,45,54),(52,46,28),(53,47,52),(54,48,52),(55,49,48),(56,50,49),(57,51,59),(58,52,48),(59,53,60),(60,54,33),(61,55,53),(62,56,59),(63,57,31),(64,58,67),(65,58,66),(66,59,49),(67,59,59),(68,59,56),(69,60,49),(70,61,61),(71,61,66),(72,61,67),(73,62,64),(74,62,61),(75,63,59),(76,63,56),(77,64,67),(78,65,61),(79,66,53),(80,67,61),(81,67,66),(82,67,67),(83,68,59),(84,68,49),(85,68,56),(86,69,59),(87,70,49),(88,70,59),(89,70,56),(90,71,68),(91,72,61),(92,73,67),(93,74,67),(94,75,67),(95,75,66),(96,75,61),(97,76,61),(98,77,64),(99,77,61);
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,61,'<com.ps.pintu.view.MainActivity$1: void onClick(android.view.View)>',19,'a',NULL),(2,62,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(3,8,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(4,63,'<com.ps.pintu.view.LocalImageActivity$1: void onClick(android.view.View)>',28,'a',NULL),(5,10,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(6,63,'<com.ps.pintu.view.LocalImageActivity$1: void onClick(android.view.View)>',22,'a',NULL),(7,61,'<com.ps.pintu.view.MainActivity$1: void onClick(android.view.View)>',25,'a',NULL),(8,67,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(9,8,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(10,73,'<com.ju6.a: boolean b()>',178,'p',NULL),(11,74,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(12,75,'<com.safetest.five.MainActivity$3: void onClick(android.content.DialogInterface,int)>',9,'s',NULL),(13,76,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(14,24,'<com.safetest.five.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(15,30,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(16,7,'<com.safetest.five.Welcome: void onCreate(android.os.Bundle)>',18,'s',NULL),(17,11,'<com.safetest.five.MainActivity: void onResume()>',7,'s',NULL),(18,78,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(19,79,'<com.safetest.five.Welcome$1: void onClick(android.view.View)>',21,'a',NULL),(20,28,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(21,80,'<com.safetest.five.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(22,11,'<com.safetest.five.MainActivity: void menuItemClicked(int)>',21,'s',NULL),(23,81,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(24,52,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(25,11,'<com.safetest.five.MainActivity: void onCreate(android.os.Bundle)>',36,'s',NULL),(26,29,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(27,82,'<com.safetest.five.SoundService$1: void onCompletion(android.media.MediaPlayer)>',8,'s',NULL),(28,83,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(29,84,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(30,85,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(31,86,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(32,29,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(33,87,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(34,48,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(35,88,'<com.ps.square.Square$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',16,'a',NULL),(36,89,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(37,90,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(38,91,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(39,92,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(40,93,'<com.mogo.gongfupuzzle.begin$beginButtonListener: void onClick(android.view.View)>',35,'a',NULL),(41,94,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(42,95,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(43,48,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(44,88,'<com.ps.square.Square$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(45,54,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(46,28,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(47,96,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(48,52,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(49,97,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(50,49,'<com.gp.search.weather.proc.MainService: void onTouchTheScreen()>',41,'a',NULL),(51,99,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(52,100,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(53,60,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(54,102,'<com.gp.search.control.MenuContorl$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',50,'a',NULL),(55,103,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(56,59,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(57,31,'<com.gp.search.IndexUI: void onClick(android.view.View)>',6,'a',NULL),(58,104,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(59,105,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(60,107,'<com.gp.search.weather.func.AlarmHelper: void startAlarmService()>',13,'s',NULL),(61,108,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(62,109,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(63,110,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(64,71,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(65,64,'<com.gp.netscramblefull.NetScramble: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(66,111,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(67,112,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(68,113,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(69,59,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(70,114,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(71,72,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(72,64,'<com.gp.netscramblefull.NetScramble: void onBackPressed()>',5,'a',NULL),(73,115,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(74,71,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(75,116,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(76,64,'<com.gp.netscramblefull.NetScramble: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(77,117,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,7),(2,9,1),(3,10,1),(4,13,1),(5,14,1),(6,16,8),(7,18,9),(8,21,11),(9,23,12),(10,26,1),(11,27,1),(12,28,1),(13,29,1),(14,31,12),(15,38,8),(16,40,9),(17,41,1),(18,42,1),(19,43,11),(20,45,12),(21,47,11),(22,49,9),(23,52,9),(24,53,7),(25,54,12),(26,56,1),(27,57,12),(28,58,1),(29,59,8),(30,61,12),(31,62,7),(32,63,12),(33,65,12),(34,67,11),(35,68,1),(36,69,9),(37,70,1),(38,71,9),(39,73,9),(40,74,1),(41,75,9),(42,77,1),(43,76,12),(44,78,11),(45,80,12),(46,82,9),(47,83,12),(48,86,12),(49,87,1),(50,89,9),(51,90,1),(52,91,12),(53,93,11),(54,95,12),(55,96,14),(56,97,12),(57,98,12),(58,99,14),(59,101,9),(60,102,12),(61,103,1),(62,105,8),(63,106,1),(64,109,1),(65,110,1),(66,121,12),(67,123,7),(68,124,12),(69,126,12),(70,128,12),(71,130,12),(72,131,12),(73,133,7),(74,134,12),(75,136,12),(76,137,12),(77,139,12),(78,141,12),(79,142,12),(80,144,1),(81,145,1),(82,146,1),(83,150,1),(84,151,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,9,1),(2,10,5),(3,13,1),(4,14,5),(5,26,1),(6,27,1),(7,28,5),(8,29,5),(9,41,1),(10,42,5),(11,56,1),(12,58,5),(13,68,1),(14,70,5),(15,74,5),(16,77,1),(17,87,5),(18,90,1),(19,103,5),(20,106,1),(21,109,1),(22,110,5),(23,144,6),(24,145,5),(25,146,1),(26,150,1),(27,151,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/ps/pintu/view/JigsawActivity'),(2,3,'com/google/update/Dialog'),(3,4,'com/google/update/Dialog'),(4,5,'com/ps/pintu/view/MainActivity'),(5,6,'com/google/update/UpdateService'),(6,7,'com/ps/pintu/view/LocalImageGameActivity'),(7,8,'com/ps/pintu/view/LocalImageActivity'),(8,11,'com/google/update/Dialog'),(9,12,'com/google/update/Dialog'),(10,15,'com/safetest/five/SoundService'),(11,17,'com/safetest/five/UpdateService'),(12,19,'com/google/update/UpdateService'),(13,20,'com/safetest/five/SoundService'),(14,22,'com/safetest/five/SoundService'),(15,24,'com/safetest/five/MainActivity'),(16,30,'com/safetest/five/SoundService'),(17,32,'com/google/update/Dialog'),(18,33,'com/safetest/five/UpdateService'),(19,34,'com/google/update/Dialog'),(20,35,'com/google/update/Dialog'),(21,37,'com/safetest/five/SoundService'),(22,36,'com/google/update/Dialog'),(23,39,'com/waps/OffersWebView'),(24,44,'com/waps/OffersWebView'),(25,48,'com/google/update/Dialog'),(26,46,'com/waps/OffersWebView'),(27,50,'com/google/update/Dialog'),(28,51,'com/waps/OffersWebView'),(29,57,'com.google.android.maps.MapsActivity'),(30,60,'com/ps/square/elos/Elos'),(31,64,'NULL-CONSTANT'),(32,66,'com/waps/OffersWebView'),(33,72,'com/mogo/gongfupuzzle/Main'),(34,79,'(.*)'),(35,81,'com/ps/square/eloscomplex/ElosComplex'),(36,84,'com/google/update/UpdateService'),(37,83,'com.google.android.maps.MapsActivity'),(38,85,'(.*)'),(39,86,'com/adwo/adsdk/AdwoAdBrowserActivity'),(40,91,'com.google.android.maps.MapsActivity'),(41,92,'com/google/update/Dialog'),(42,94,'com/google/update/Dialog'),(43,95,'com.google.android.maps.MapsActivity'),(44,100,'com.android.mms.ui.ComposeMessageActivity'),(45,102,'com.google.android.maps.MapsActivity'),(46,104,'NULL-CONSTANT'),(47,107,'com/google/update/UpdateService'),(48,108,'com/gp/search/weather/proc/MainService'),(49,111,'com/google/update/Dialog'),(50,112,'com/google/update/Dialog'),(51,113,'com/gp/search/RPSearchUI'),(52,115,'com/gp/search/LoadWeathreUI'),(53,116,'com/gp/search/PhoneSearchUI'),(54,117,'com/gp/search/IPSearchUI'),(55,118,'com/gp/search/BusUI'),(56,119,'com/gp/search/TrainSearchUI'),(57,120,'com/gp/search/ExpressSearchUI'),(58,122,'com/gp/search/weather/func/AlarmService'),(59,127,'com/google/update/Dialog'),(60,129,'com/google/update/Dialog'),(61,132,'com/gp/netscramblefull/ScoreList'),(62,138,'com/google/update/Dialog'),(63,140,'com/google/update/Dialog'),(64,143,'com/google/update/UpdateService'),(65,147,'com/google/update/Dialog'),(66,148,'com/google/update/Dialog'),(67,149,'com/gp/netscramblefull/Help');
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,16,2),(2,18,3),(3,21,4),(4,23,5),(5,31,6),(6,38,7),(7,40,8),(8,43,9),(9,45,10),(10,47,11),(11,49,12),(12,52,13),(13,54,14),(14,59,15),(15,61,16),(16,63,17),(17,67,18),(18,69,19),(19,76,20),(20,75,21),(21,80,22),(22,82,23),(23,83,24),(24,89,25),(25,91,26),(26,93,27),(27,95,28),(28,97,29),(29,98,30),(30,101,31),(31,102,32),(32,121,33),(33,124,36),(34,126,37),(35,128,38),(36,130,39),(37,131,40),(38,134,41),(39,136,42),(40,137,43),(41,139,44),(42,141,45),(43,142,46);
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'level'),(2,1,'pictureIndex'),(3,3,'MSG'),(4,3,'TYPEdsada'),(5,4,'TYPEdsada'),(6,7,'level'),(7,7,'path'),(8,11,'MSG'),(9,11,'TYPEdsada'),(10,12,'TYPEdsada'),(11,18,'android.intent.extra.TEXT'),(12,18,'android.intent.extra.SUBJECT'),(13,18,'android.intent.extra.EMAIL'),(14,21,'sms_body'),(15,32,'TYPEdsada'),(16,34,'TYPEdsada'),(17,35,'MSG'),(18,35,'TYPEdsada'),(19,36,'MSG'),(20,36,'TYPEdsada'),(21,39,'Notify_Url_Params'),(22,39,'UrlPath'),(23,40,'android.intent.extra.TEXT'),(24,39,'ACTIVITY_FLAG'),(25,40,'android.intent.extra.SUBJECT'),(26,39,'isFinshClose'),(27,40,'android.intent.extra.EMAIL'),(28,39,'offers_webview_tag'),(29,44,'UrlPath'),(30,43,'sms_body'),(31,44,'ACTIVITY_FLAG'),(32,44,'isFinshClose'),(33,44,'offers_webview_tag'),(34,46,'UrlPath'),(35,48,'TYPEdsada'),(36,46,'ACTIVITY_FLAG'),(37,46,'isFinshClose'),(38,46,'offers_webview_tag'),(39,50,'MSG'),(40,49,'android.intent.extra.EMAIL'),(41,50,'TYPEdsada'),(42,51,'Notify_Url_Params'),(43,51,'UrlPath'),(44,51,'ACTIVITY_FLAG'),(45,51,'isFinshClose'),(46,52,'android.intent.extra.TEXT'),(47,51,'offers_webview_tag'),(48,52,'android.intent.extra.EMAIL'),(49,66,'USER_ID'),(50,66,'CLIENT_PACKAGE'),(51,66,'Offers_URL'),(52,66,'offers_webview_tag'),(53,66,'URL_PARAMS'),(54,69,'android.intent.extra.EMAIL'),(55,73,'android.intent.extra.TEXT'),(56,73,'android.intent.extra.SUBJECT'),(57,73,'android.intent.extra.EMAIL'),(58,75,'android.intent.extra.TEXT'),(59,75,'android.intent.extra.SUBJECT'),(60,75,'android.intent.extra.EMAIL'),(61,86,'url'),(62,89,'android.intent.extra.TEXT'),(63,89,'android.intent.extra.EMAIL'),(64,92,'TYPEdsada'),(65,93,'sms_body'),(66,94,'MSG'),(67,94,'TYPEdsada'),(68,96,'query'),(69,100,'sms_body'),(70,100,'address'),(71,111,'MSG'),(72,111,'TYPEdsada'),(73,112,'TYPEdsada'),(74,127,'TYPEdsada'),(75,129,'MSG'),(76,129,'TYPEdsada'),(77,138,'MSG'),(78,138,'TYPEdsada'),(79,140,'TYPEdsada'),(80,147,'TYPEdsada'),(81,148,'MSG'),(82,148,'TYPEdsada');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,4,3),(6,4,4),(7,5,1),(8,6,5),(9,7,2),(10,7,3),(11,7,4),(12,8,2),(13,8,3),(14,8,4),(15,9,5),(16,10,3),(17,10,4),(18,10,2),(19,11,1),(20,18,1),(21,22,3),(22,22,4),(23,22,2),(24,23,6),(25,24,4),(26,24,3),(27,24,2),(28,25,1),(29,26,1),(30,27,1),(31,28,3),(32,28,4),(33,28,2),(34,29,10),(35,30,10),(36,31,10),(37,32,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,5,1),(5,6,2),(6,9,2),(7,11,1),(8,12,1),(9,13,1),(10,14,1),(11,15,1),(12,16,1),(13,17,1),(14,18,1),(15,19,1),(16,20,1),(17,21,1),(18,23,3),(19,25,1),(20,25,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,29,'package',NULL,NULL,NULL,NULL,NULL),(2,30,'package',NULL,NULL,NULL,NULL,NULL),(3,31,'package',NULL,NULL,NULL,NULL,NULL),(4,32,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,23,'application','vnd.android.package-archive'),(2,31,'application','vnd.android.package-archive'),(3,45,'*','*'),(4,63,'(.*)','(.*)'),(5,73,'message','rfc882'),(6,76,'application','vnd.android.package-archive'),(7,80,'(.*)','(.*)'),(8,97,'*','*'),(9,98,'application','vnd.android.package-archive'),(10,124,'application','vnd.android.package-archive'),(11,126,'application','vnd.android.package-archive'),(12,128,'application','vnd.android.package-archive'),(13,130,'application','vnd.android.package-archive'),(14,131,'application','vnd.android.package-archive'),(15,134,'application','vnd.android.package-archive'),(16,136,'application','vnd.android.package-archive'),(17,137,'application','vnd.android.package-archive'),(18,139,'application','vnd.android.package-archive'),(19,141,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.ps.pintu.view'),(2,3,'com.ps.pintu.view'),(3,4,'com.ps.pintu.view'),(4,5,'com.ps.pintu.view'),(5,6,'com.ps.pintu.view'),(6,7,'com.ps.pintu.view'),(7,8,'com.ps.pintu.view'),(8,9,'com.noshufou.android.su'),(9,10,'com.noshufou.android.su'),(10,11,'com.ps.pintu.view'),(11,12,'com.ps.pintu.view'),(12,13,'com.ps.pintu.view'),(13,14,'com.ps.pintu.view'),(14,15,'com.safetest.five'),(15,17,'com.safetest.five'),(16,19,'com.ps.square'),(17,20,'com.safetest.five'),(18,22,'com.safetest.five'),(19,24,'com.safetest.five'),(20,26,'com.noshufou.android.su'),(21,27,'(.*)'),(22,28,'com.noshufou.android.su'),(23,29,'(.*)'),(24,30,'com.safetest.five'),(25,32,'com.mogo.gongfupuzzle'),(26,33,'com.safetest.five'),(27,34,'com.ps.square'),(28,35,'com.mogo.gongfupuzzle'),(29,37,'com.safetest.five'),(30,36,'com.ps.square'),(31,41,'com.noshufou.android.su'),(32,39,'com.ps.square'),(33,42,'com.noshufou.android.su'),(34,44,'com.ps.square'),(35,48,'com.ps.square'),(36,46,'com.mogo.gongfupuzzle'),(37,50,'com.ps.square'),(38,51,'com.mogo.gongfupuzzle'),(39,56,'(.*)'),(40,57,'com.google.android.apps.maps'),(41,58,'(.*)'),(42,60,'com.ps.square'),(43,64,'NULL-CONSTANT'),(44,68,'com.noshufou.android.su'),(45,66,'com.mogo.gongfupuzzle'),(46,70,'com.noshufou.android.su'),(47,72,'com.mogo.gongfupuzzle'),(48,74,'com.ps.square'),(49,77,'com.ps.square'),(50,79,'(.*)'),(51,81,'com.ps.square'),(52,84,'com.mogo.gongfupuzzle'),(53,83,'com.google.android.apps.maps'),(54,85,'(.*)'),(55,86,'com.safetest.five'),(56,87,'com.mogo.gongfupuzzle'),(57,90,'com.mogo.gongfupuzzle'),(58,91,'com.google.android.apps.maps'),(59,92,'com.mogo.gongfupuzzle'),(60,94,'com.mogo.gongfupuzzle'),(61,95,'com.google.android.apps.maps'),(62,100,'com.android.mms'),(63,102,'com.google.android.apps.maps'),(64,103,'com.gp.search'),(65,104,'NULL-CONSTANT'),(66,106,'com.gp.search'),(67,107,'com.gp.search'),(68,108,'com.gp.search'),(69,109,'com.noshufou.android.su'),(70,110,'com.noshufou.android.su'),(71,111,'com.gp.search'),(72,112,'com.gp.search'),(73,113,'com.gp.search'),(74,115,'com.gp.search'),(75,116,'com.gp.search'),(76,117,'com.gp.search'),(77,118,'com.gp.search'),(78,119,'com.gp.search'),(79,120,'com.gp.search'),(80,122,'com.gp.search'),(81,127,'com.gp.netscramblefull'),(82,129,'com.gp.netscramblefull'),(83,132,'com.gp.netscramblefull'),(84,138,'com.gp.search'),(85,140,'com.gp.search'),(86,143,'com.gp.netscramblefull'),(87,145,'com.gp.netscramblefull'),(88,146,'com.gp.netscramblefull'),(89,147,'com.gp.netscramblefull'),(90,148,'com.gp.netscramblefull'),(91,149,'com.gp.netscramblefull'),(92,150,'com.noshufou.android.su'),(93,151,'com.noshufou.android.su');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,7,0),(3,9,0),(4,10,0),(5,16,0),(6,21,0),(7,24,0),(8,25,0),(9,26,0),(10,30,0),(11,31,0),(12,32,0),(13,33,0),(14,34,0),(15,35,0),(16,36,0),(17,37,0),(18,38,0),(19,39,0),(20,41,0),(21,44,0),(22,54,0),(23,58,0),(24,60,0),(25,61,0),(26,62,0),(27,63,0),(28,68,0),(29,69,0),(30,70,0),(31,71,0),(32,72,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,0,0),(4,3,0,0),(5,4,0,0),(6,5,0,0),(7,6,0,0),(8,7,0,0),(9,8,1,0),(10,8,1,0),(11,9,0,0),(12,9,0,0),(13,11,1,0),(14,11,1,0),(15,12,0,0),(16,13,1,0),(17,14,0,0),(18,13,1,0),(19,15,0,0),(20,16,0,0),(21,13,1,0),(22,17,0,0),(23,18,1,0),(24,19,0,0),(25,20,1,0),(26,21,1,0),(27,20,1,0),(28,21,1,0),(29,20,1,0),(30,22,0,0),(31,23,1,0),(32,24,0,0),(33,25,0,0),(34,26,0,0),(35,24,0,0),(36,26,0,0),(37,27,0,0),(38,28,1,0),(39,29,0,0),(40,28,1,0),(41,30,1,0),(42,30,1,0),(43,28,1,0),(44,29,0,0),(45,28,1,0),(46,31,0,0),(47,28,1,0),(48,32,0,0),(49,28,1,0),(50,32,0,0),(51,31,0,0),(52,28,1,0),(53,33,1,0),(54,28,1,0),(55,34,1,0),(56,34,1,0),(57,28,0,0),(58,34,1,0),(59,28,1,0),(60,35,0,0),(61,28,1,0),(62,36,1,0),(63,28,1,0),(64,37,0,0),(65,28,1,0),(66,38,0,0),(67,28,1,0),(68,39,1,0),(69,28,1,0),(70,39,1,0),(71,28,1,0),(72,40,0,0),(73,28,1,0),(74,41,1,0),(75,28,1,0),(76,42,1,0),(77,41,1,0),(78,28,1,0),(79,43,0,0),(80,28,1,0),(81,44,0,0),(82,28,1,0),(83,28,0,0),(84,45,0,0),(85,46,0,0),(86,28,0,0),(87,47,1,0),(88,28,1,0),(89,28,1,0),(90,47,1,0),(91,28,0,0),(92,48,0,0),(93,28,1,0),(94,48,0,0),(95,28,0,0),(96,28,1,0),(97,28,1,0),(98,49,1,0),(99,28,1,0),(100,50,0,0),(101,28,1,0),(102,28,0,0),(103,51,1,0),(104,52,0,0),(105,28,1,0),(106,51,1,0),(107,53,0,0),(108,54,0,0),(109,55,1,0),(110,55,1,0),(111,56,0,0),(112,56,0,0),(113,57,0,0),(114,57,1,0),(115,57,0,0),(116,57,0,0),(117,57,0,0),(118,57,0,0),(119,57,0,0),(120,57,0,0),(121,58,1,0),(122,60,0,0),(123,62,1,0),(124,63,1,0),(125,63,1,0),(126,63,1,0),(127,64,0,0),(128,63,1,0),(129,64,0,0),(130,63,1,0),(131,63,1,0),(132,65,0,0),(133,66,1,0),(134,67,1,0),(135,67,1,0),(136,67,1,0),(137,67,1,0),(138,69,0,0),(139,67,1,0),(140,69,0,0),(141,67,1,0),(142,70,1,0),(143,71,0,0),(144,72,1,0),(145,73,1,0),(146,73,1,0),(147,74,0,0),(148,74,0,0),(149,76,0,0),(150,77,1,0),(151,77,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_COARSE_LOCATION'),(19,'android.permission.ACCESS_FINE_LOCATION'),(18,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(17,'android.permission.ACCESS_LOCATTON_MOCK_LOCATION'),(11,'android.permission.ACCESS_NETWORK_STATE'),(9,'android.permission.ACCESS_WIFI_STATE'),(7,'android.permission.CHANGE_WIFI_STATE'),(14,'android.permission.GET_TASKS'),(2,'android.permission.INSTALL_PACKAGES'),(5,'android.permission.INTERNET'),(16,'android.permission.READ_CONTACTS'),(13,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(3,'android.permission.READ_SMS'),(4,'android.permission.RECEIVE_BOOT_COMPLETED'),(12,'android.permission.RESTART_PACKAGES'),(15,'android.permission.SEND_SMS'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(8,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(2,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(3,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(4,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(27,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(28,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(31,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(32,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(33,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(34,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(35,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(37,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(40,NULL,NULL,'file://',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(42,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(43,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(44,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(45,NULL,NULL,'file://',NULL,NULL,NULL),(46,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,10,1),(2,59,34),(3,61,35);
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,2,1),(13,2,3),(14,3,1),(15,2,5),(16,3,3),(17,2,8),(18,3,5),(19,2,9),(20,3,8),(21,2,10),(22,3,9),(23,2,11),(24,3,10),(25,4,1),(26,2,12),(27,3,11),(28,4,4),(29,4,5),(30,4,6),(31,4,7),(32,4,9),(33,4,11),(34,5,17),(35,5,16),(36,5,1),(37,5,19),(38,5,18),(39,5,4),(40,5,5),(41,5,6),(42,5,7),(43,5,9),(44,5,11),(45,5,13),(46,5,14),(47,5,15),(48,6,1),(49,6,19),(50,6,18),(51,6,4),(52,6,5),(53,6,6),(54,6,7),(55,6,9),(56,6,10),(57,6,11),(58,6,13),(59,7,1),(60,7,19),(61,7,18),(62,7,4),(63,7,5),(64,7,6),(65,7,7),(66,7,9),(67,7,11),(68,7,13);
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

-- Dump completed on 2015-10-09  0:38:20
