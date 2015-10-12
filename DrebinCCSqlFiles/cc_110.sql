-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_110
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (13,'(.*)'),(5,'SQUARE'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(10,'android.intent.action.CHOOSER'),(1,'android.intent.action.MAIN'),(12,'android.intent.action.PACKAGE_ADDED'),(2,'android.intent.action.SIG_STR'),(6,'android.intent.action.VIEW'),(8,'android.net.conn.CONNECTIVITY_CHANGE'),(7,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(11,'com/tutusw/onekeyvpn/Intents.OPEN_VPN_SERVICE_STARTED'),(9,'org.openintents.action.PICK_DIRECTORY');
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
INSERT INTO `Applications` VALUES (1,'com.atools.cuttherope',1),(2,'com.tutusw.onekeyvpn',7),(3,'com.ps.mine',16),(4,'com.wqx.blackjack',8),(5,'com.ps.square',24),(6,'com.alan.mp3cutter',46),(7,'com.gp.netscramblefull',13);
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
INSERT INTO `CategoryStrings` VALUES (5,'android.intent.category.BROWSABLE'),(6,'android.intent.category.HOME'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(4,'android.intent.category.PREFERENCE'),(2,'android.intent.category.SQUARE');
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.atools.cuttherope.MainActivity'),(2,2,'com.tutusw.onekeyvpn.OpenVpnSettings'),(3,1,'com.atools.battery.ShowTips'),(4,2,'com.tutusw.onekeyvpn.AdvancedSettings'),(5,1,'com.atools.battery.UpdateService'),(6,2,'com.tutusw.onekeyvpn.EditConfig'),(7,1,'com.atools.battery.Receiver'),(8,2,'com.tutusw.onekeyvpn.EditConfigPreferences'),(9,2,'com.tutusw.onekeyvpn.EnterPassphrase'),(10,2,'com.tutusw.onekeyvpn.EnterUserPassword'),(11,2,'com.tutusw.onekeyvpn.ImportFiles'),(12,2,'com.tutusw.onekeyvpn.service.OpenVpnService'),(13,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(14,2,'com.tutusw.onekeyvpn.util.BootCompletedReceiver'),(15,3,'com.ps.mine.Main'),(16,3,'com.google.update.Dialog'),(17,3,'com.google.update.UpdateService'),(18,3,'com.google.update.Receiver'),(19,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(20,4,'com.wqx.blackjack.Blackjack'),(21,4,'com.wqx.blackjack.Card'),(22,4,'com.google.update.Dialog'),(23,4,'com.waps.OffersWebView'),(24,4,'com.google.update.UpdateService'),(25,4,'com.google.update.Receiver'),(26,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(27,5,'com.ps.square.Square'),(28,5,'com.ps.square.elos.Elos'),(29,5,'com.ps.square.eloscomplex.ElosComplex'),(30,5,'com.google.update.Dialog'),(31,5,'com.waps.OffersWebView'),(32,5,'com.google.update.UpdateService'),(33,5,'com.google.update.Receiver'),(34,6,'com.alan.mp3cutter.Mp3Cutter'),(35,6,'com.alan.mp3cutter.Mp3Cut'),(36,6,'com.alan.mp3cutter.Mp3Join'),(37,6,'com.alan.mp3cutter.Mp3List'),(38,6,'org.achartengine.GraphicalActivity'),(39,6,'com.google.ads.AdActivity'),(40,6,'com.vpon.adon.android.WebInApp'),(41,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(42,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(43,6,'com.waps.OffersWebView'),(44,6,'com.google.update.Dialog'),(45,6,'com.google.update.UpdateService'),(46,6,'com.google.update.Receiver'),(47,1,'com.atools.battery.ShowTips$1'),(48,1,'com.atools.cuttherope.MainActivity$2'),(49,1,'com.atools.cuttherope.MainActivity$3'),(50,3,'com.google.update.Dialog$2'),(51,3,'com.google.update.Dialog$1'),(52,2,'com.tutusw.onekeyvpn.service.DaemonMonitor$2'),(53,2,'com.tutusw.onekeyvpn.service.ManagementThread'),(54,3,'com.google.update.UpdateService$AA'),(55,2,'com.tutusw.onekeyvpn.util.NetworkConnectivityListener$ConnectivityBroadcastReceiver'),(56,2,'com.tutusw.onekeyvpn.OpenVpnSettings$1'),(57,2,'com.tutusw.onekeyvpn.ImportFiles$2'),(58,2,'com.tutusw.onekeyvpn.service.DaemonMonitor'),(59,2,'com.tutusw.onekeyvpn.OpenVpnSettings$4'),(60,4,'com.waps.ac'),(61,4,'com.waps.aa'),(62,7,'com.gp.netscramblefull.NetScramble'),(63,7,'com.gp.netscramblefull.ScoreList'),(64,7,'com.gp.netscramblefull.Help'),(65,4,'com.google.update.UpdateService$AA'),(66,7,'com.google.update.Dialog'),(67,7,'cn.domob.android.ads.DomobActivity'),(68,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(69,7,'com.google.update.UpdateService'),(70,7,'com.google.update.Receiver'),(71,5,'com.waps.y'),(72,5,'com.google.update.Dialog$2'),(73,4,'com.google.update.Dialog$2'),(74,5,'com.google.update.UpdateService$AA'),(75,4,'com.google.update.Dialog$1'),(76,5,'com.waps.o'),(77,6,'com.alan.mp3cutter.Mp3Cutter$2'),(78,4,'com.waps.z'),(79,6,'com.waps.k'),(80,5,'com.ps.square.Square$ItemClickListener'),(81,6,'com.waps.AppConnect'),(82,5,'com.waps.q'),(83,4,'com.waps.q'),(84,6,'com.waps.m'),(85,5,'com.waps.aa'),(86,6,'com.google.update.Dialog$2'),(87,6,'com.alan.mp3cutter.Mp3Cutter$3'),(88,5,'com.waps.x'),(89,6,'com.ju6.a'),(90,4,'com.waps.o'),(91,6,'com.google.update.Dialog$1'),(92,5,'com.google.update.Dialog$1'),(93,6,'com.alan.mp3cutter.Mp3List$3'),(94,6,'com.google.update.UpdateService$MyThread'),(95,7,'com.google.update.Dialog$1'),(96,7,'com.google.update.UpdateService$AA'),(97,7,'cn.domob.android.ads.DomobAdManager'),(98,7,'com.google.update.Dialog$2'),(99,7,'cn.domob.android.ads.DomobAdEngine$2'),(100,7,'cn.domob.android.ads.i$6'),(101,7,'cn.domob.android.ads.i'),(102,7,'cn.domob.android.ads.DomobActionReceiver');
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
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'MM'),(2,5,'SAFE_PID'),(3,5,'SAFE_START'),(4,13,'shouldResizeOverlay'),(5,13,'shouldShowBottomBar'),(6,13,'shouldEnableBottomBar'),(7,13,'overlayTransition'),(8,17,'ST_START_DELAY'),(9,16,'MSG'),(10,13,'url'),(11,16,'TYPEdsada'),(12,13,'overlayTitle'),(13,13,'shouldMakeOverlayTransparent'),(14,13,'shouldShowTitlebar'),(15,17,'ST_MY_PID'),(16,13,'transitionTime'),(17,19,'shouldMakeOverlayTransparent'),(18,23,'UrlPath'),(19,23,'URL_PARAMS'),(20,23,'Offers_URL'),(21,23,'WAPS_ID'),(22,20,'WAPS_ID'),(23,19,'overlayTransition'),(24,20,'mCurrentScore'),(25,23,'DEVICE_ID'),(26,20,'DEVICE_ID'),(27,31,'URL_PARAMS'),(28,31,'Notify_Id'),(29,20,'mWinCount'),(30,20,'Blackjack'),(31,19,'shouldEnableBottomBar'),(32,23,'isFinshClose'),(33,19,'shouldShowBottomBar'),(34,19,'shouldShowTitlebar'),(35,19,'url'),(36,23,'APP_ID'),(37,20,'APP_ID'),(38,20,'mMaxScore'),(39,26,'overlayTransition'),(40,21,'mWinCount'),(41,21,'mMaxScore'),(42,20,'mLoseCount'),(43,21,'mStartTime'),(44,19,'transitionTime'),(45,23,'USER_ID'),(46,30,'MSG'),(47,24,'ST_START_DELAY'),(48,31,'UrlPath'),(49,24,'ST_MY_PID'),(50,27,'WAPS_PID'),(51,31,'WAPS_PID'),(52,28,'WAPS_PID'),(53,29,'WAPS_PID'),(54,30,'TYPEdsada'),(55,26,'shouldShowTitlebar'),(56,22,'MSG'),(57,22,'TYPEdsada'),(58,19,'shouldResizeOverlay'),(59,23,'Notify_Url_Params'),(60,23,'URL'),(61,31,'offers_webview_tag'),(62,20,'mStartTime'),(63,32,'ST_START_DELAY'),(64,20,'mMoney'),(65,31,'Offers_URL'),(66,27,'DEVICE_ID'),(67,31,'DEVICE_ID'),(68,28,'DEVICE_ID'),(69,29,'DEVICE_ID'),(70,31,'USER_ID'),(71,26,'shouldEnableBottomBar'),(72,23,'CLIENT_PACKAGE'),(73,23,'ACTIVITY_FLAG'),(74,43,'Offers_URL'),(75,27,'WAPS_ID'),(76,40,'adWidth'),(77,31,'WAPS_ID'),(78,23,'Notify_Id'),(79,43,'URL_PARAMS'),(80,28,'WAPS_ID'),(81,21,'mCurrentScore'),(82,29,'WAPS_ID'),(83,42,'shouldShowBottomBar'),(84,31,'URL'),(85,41,'Adwo_PID'),(86,27,'APP_ID'),(87,31,'APP_ID'),(88,28,'APP_ID'),(89,29,'APP_ID'),(90,34,'WAPS_ID'),(91,26,'shouldMakeOverlayTransparent'),(92,31,'SHWO_FLAG'),(93,26,'shouldShowBottomBar'),(94,23,'offers_webview_tag'),(95,31,'ACTIVITY_FLAG'),(96,23,'WAPS_PID'),(97,20,'WAPS_PID'),(98,32,'ST_MY_PID'),(99,26,'shouldResizeOverlay'),(100,20,'CLIENT_PACKAGE'),(101,34,'DEVICE_ID'),(102,21,'mLoseCount'),(103,39,'com.google.ads.AdOpener'),(104,31,'isFinshClose'),(105,26,'url'),(106,31,'Notify_Url_Params'),(107,27,'CLIENT_PACKAGE'),(108,34,'CLIENT_PACKAGE'),(109,42,'url'),(110,31,'CLIENT_PACKAGE'),(111,28,'CLIENT_PACKAGE'),(112,43,'USER_ID'),(113,29,'CLIENT_PACKAGE'),(114,42,'shouldShowTitlebar'),(115,26,'transitionTime'),(116,34,'APP_ID'),(117,23,'SHWO_FLAG'),(118,39,'params'),(119,40,'url'),(120,42,'shouldEnableBottomBar'),(121,43,'URL'),(122,19,'overlayTitle'),(123,21,'mMoney'),(124,39,'action'),(125,43,'isFinshClose'),(126,44,'MSG'),(127,42,'transitionTime'),(128,26,'overlayTitle'),(129,45,'ST_MY_PID'),(130,42,'shouldResizeOverlay'),(131,42,'overlayTitle'),(132,42,'overlayTransition'),(133,41,'isTestMode'),(134,43,'CLIENT_PACKAGE'),(135,35,'name'),(136,42,'shouldMakeOverlayTransparent'),(137,34,'WAPS_PID'),(138,45,'ST_START_DELAY'),(139,44,'TYPEdsada'),(140,37,'action'),(141,53,'overlayTitle'),(142,48,'rootX'),(143,54,'DOMOB_TEST_MODE'),(144,53,'DOMOB_TEST_MODE'),(145,48,'DOMOB_TEST_MODE'),(146,48,'isRunning'),(147,48,'gridHeight'),(148,48,'rootY'),(149,48,'tickInterval'),(150,53,'shouldShowBottomBar'),(151,48,'clickCount'),(152,48,'gameSkill'),(153,48,'focusY'),(154,48,'cell (.*),(.*)'),(155,48,'tickCount'),(156,53,'shouldShowTitlebar'),(157,53,'transitionTime'),(158,48,'solverUsed'),(159,51,'MSG'),(160,54,'DOMOB_PID'),(161,53,'DOMOB_PID'),(162,48,'DOMOB_PID'),(163,48,'focusX'),(164,53,'url'),(165,54,'DOMOB_ALLOW_LOCATION'),(166,53,'DOMOB_ALLOW_LOCATION'),(167,48,'DOMOB_ALLOW_LOCATION'),(168,48,'isSolved'),(169,48,'solvedState'),(170,52,'actType'),(171,54,'ST_START_DELAY'),(172,54,'ST_MY_PID'),(173,48,'gameState'),(174,53,'shouldEnableBottomBar'),(175,51,'TYPEdsada'),(176,53,'shouldResizeOverlay'),(177,52,'appId'),(178,50,'(.*)B(.*).expanded'),(179,50,'(.*)T(.*).expanded'),(180,50,'(.*)H(.*).expanded'),(181,50,'expanded'),(182,48,'accumTime'),(183,48,'gridWidth'),(184,52,'appName'),(185,53,'overlayTransition'),(186,53,'shouldMakeOverlayTransparent');
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'r',1,7,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'s',0,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'s',0,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,55,'r',1,NULL,NULL),(48,62,'a',1,NULL,NULL),(49,63,'a',1,NULL,NULL),(50,64,'a',1,NULL,NULL),(51,66,'a',0,NULL,NULL),(52,67,'a',0,NULL,NULL),(53,68,'a',0,NULL,NULL),(54,69,'s',0,NULL,NULL),(55,70,'r',1,NULL,NULL),(56,82,'r',1,NULL,NULL),(57,83,'r',1,NULL,NULL),(58,84,'r',1,NULL,NULL),(59,102,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,3),(3,3,1),(4,4,1),(5,5,7),(6,6,16),(7,7,17),(8,8,16),(9,9,18),(10,10,17),(11,11,2),(12,11,12),(13,12,2),(14,13,2),(15,13,12),(16,14,2),(17,15,17),(18,16,14),(19,17,2),(20,17,12),(21,18,9),(22,19,12),(23,19,2),(24,20,2),(25,21,11),(26,22,2),(27,23,2),(28,24,12),(29,24,2),(30,25,2),(31,26,23),(32,27,23),(33,28,12),(34,29,10),(35,30,24),(36,31,2),(37,31,12),(38,32,32),(39,33,2),(40,34,2),(41,34,12),(42,35,2),(43,35,12),(44,36,31),(45,37,20),(46,38,30),(47,39,22),(48,40,20),(49,41,32),(50,42,31),(51,43,22),(52,44,31),(53,45,34),(54,46,23),(55,47,24),(56,48,37),(57,49,43),(58,50,27),(59,51,25),(60,52,34),(61,53,23),(62,54,31),(63,55,45),(64,56,24),(65,57,27),(66,58,23),(67,60,31),(68,59,44),(69,61,34),(70,62,20),(71,63,31),(72,64,45),(73,65,31),(74,66,23),(75,67,44),(76,68,30),(77,69,37),(78,70,32),(79,71,46),(80,72,33),(81,73,39),(82,74,45),(83,75,45),(84,76,51),(85,76,48),(86,77,48),(87,78,54),(88,79,48),(89,79,53),(90,79,54),(91,80,54),(92,81,54),(93,82,51),(94,82,48),(95,83,54),(96,83,48),(97,83,53),(98,84,48),(99,84,53),(100,84,54),(101,85,48),(102,86,48),(103,87,53),(104,87,54),(105,88,55);
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.atools.cuttherope.MainActivity: void onCreate(android.os.Bundle)>',37,'s',NULL),(2,47,'<com.atools.battery.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(3,48,'<com.atools.cuttherope.MainActivity$2: void onClick(android.view.View)>',8,'a',NULL),(4,49,'<com.atools.cuttherope.MainActivity$3: void onClick(android.view.View)>',6,'a',NULL),(5,7,'<com.atools.battery.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(6,50,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(7,17,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(8,51,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(9,18,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(10,17,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(11,52,'<com.tutusw.onekeyvpn.service.DaemonMonitor$2: void onCmdTerminated()>',10,'r',0),(12,2,'<com.tutusw.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',27,'s',NULL),(13,53,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',55,'r',0),(14,2,'<com.tutusw.onekeyvpn.OpenVpnSettings: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(15,54,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(16,14,'<com.tutusw.onekeyvpn.util.BootCompletedReceiver: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(17,53,'<com.tutusw.onekeyvpn.service.ManagementThread: void onState(java.lang.String)>',44,'r',0),(18,9,'<com.tutusw.onekeyvpn.EnterPassphrase: void onCreate(android.os.Bundle)>',6,'s',NULL),(19,53,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',31,'r',0),(20,56,'<com.tutusw.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',12,'s',NULL),(21,57,'<com.tutusw.onekeyvpn.ImportFiles$2: void onClick(android.view.View)>',6,'a',NULL),(22,2,'<com.tutusw.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',24,'s',NULL),(23,56,'<com.tutusw.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',18,'s',NULL),(24,58,'<com.tutusw.onekeyvpn.service.DaemonMonitor: void start()>',68,'r',0),(25,59,'<com.tutusw.onekeyvpn.OpenVpnSettings$4: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(26,60,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(27,61,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(28,12,'<com.tutusw.onekeyvpn.service.OpenVpnService: void onCreate()>',6,'r',NULL),(29,10,'<com.tutusw.onekeyvpn.EnterUserPassword: void onCreate(android.os.Bundle)>',6,'s',NULL),(30,65,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(31,53,'<com.tutusw.onekeyvpn.service.ManagementThread: void networkStateChanged(int)>',11,'r',0),(32,32,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(33,12,'<com.tutusw.onekeyvpn.service.OpenVpnService: void daemonStart(java.io.File)>',27,'r',0),(34,58,'<com.tutusw.onekeyvpn.service.DaemonMonitor: void start()>',13,'r',0),(35,53,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',23,'r',0),(36,71,'<com.waps.y: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(37,20,'<com.wqx.blackjack.Blackjack: void onClick(android.view.View)>',33,'a',NULL),(38,72,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(39,73,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(40,20,'<com.wqx.blackjack.Blackjack: boolean onOptionsItemSelected(android.view.MenuItem)>',43,'a',NULL),(41,74,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(42,31,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',356,'a',NULL),(43,75,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(44,76,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(45,77,'<com.alan.mp3cutter.Mp3Cutter$2: void onClick(android.view.View)>',45,'a',NULL),(46,78,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(47,24,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(48,37,'<com.alan.mp3cutter.Mp3List: void addDataToListView()>',3,'p',NULL),(49,79,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(50,80,'<com.ps.square.Square$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(51,25,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(52,81,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(53,23,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',328,'a',NULL),(54,31,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(55,45,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(56,24,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(57,80,'<com.ps.square.Square$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',16,'a',NULL),(58,23,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(59,86,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(60,85,'<com.waps.aa: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(61,87,'<com.alan.mp3cutter.Mp3Cutter$3: void onClick(android.view.View)>',45,'a',NULL),(62,20,'<com.wqx.blackjack.Blackjack: boolean onKeyDown(int,android.view.KeyEvent)>',37,'a',NULL),(63,88,'<com.waps.x: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(64,89,'<com.ju6.a: boolean b()>',178,'p',NULL),(65,31,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',41,'a',NULL),(66,90,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(67,91,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(68,92,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(69,93,'<com.alan.mp3cutter.Mp3List$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',125,'a',NULL),(70,32,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(71,46,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(72,33,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(73,39,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(74,94,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(75,45,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(76,95,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(77,62,'<com.gp.netscramblefull.NetScramble: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(78,96,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(79,97,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(80,69,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(81,69,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(82,98,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(83,99,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(84,100,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(85,62,'<com.gp.netscramblefull.NetScramble: void onBackPressed()>',5,'a',NULL),(86,62,'<com.gp.netscramblefull.NetScramble: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(87,101,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(88,70,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,1),(2,3,1),(3,4,1),(4,5,6),(5,7,7),(6,10,1),(7,11,1),(8,17,1),(9,18,1),(10,22,9),(11,25,10),(12,26,10),(13,27,10),(14,29,10),(15,30,10),(16,31,10),(17,32,10),(18,34,10),(19,36,11),(20,38,1),(21,40,1),(22,45,7),(23,46,7),(24,48,1),(25,49,1),(26,51,1),(27,52,1),(28,53,6),(29,55,6),(30,58,6),(31,64,1),(32,66,1),(33,72,1),(34,73,1),(35,75,7),(36,78,6),(37,79,1),(38,80,1),(39,81,6),(40,82,1),(41,83,1),(42,84,1),(43,85,1),(44,91,13),(45,92,6),(46,93,13),(47,94,1),(48,95,1),(49,98,1),(50,99,1),(51,101,1),(52,102,1),(53,107,7),(54,108,6),(55,110,6),(56,111,6),(57,112,6),(58,113,6),(59,114,1),(60,116,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,2,1),(2,3,3),(3,4,1),(4,10,1),(5,11,3),(6,17,3),(7,18,1),(8,38,1),(9,40,3),(10,48,3),(11,49,1),(12,51,1),(13,52,3),(14,64,1),(15,66,3),(16,72,1),(17,73,3),(18,79,1),(19,80,3),(20,82,1),(21,83,1),(22,84,3),(23,85,3),(24,91,5),(25,92,5),(26,93,5),(27,94,3),(28,95,1),(29,98,1),(30,99,3),(31,101,3),(32,102,1),(33,114,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/atools/battery/UpdateService'),(2,4,'(.*)'),(3,6,'com/atools/battery/UpdateService'),(4,8,'com/google/update/Dialog'),(5,9,'com/google/update/Dialog'),(6,12,'com/google/update/UpdateService'),(7,13,'com/google/update/Dialog'),(8,14,'com/tutusw/onekeyvpn/service/OpenVpnService'),(9,15,'com/google/update/Dialog'),(10,16,'com/tutusw/onekeyvpn/AdvancedSettings'),(11,19,'com/tutusw/onekeyvpn/service/OpenVpnService'),(12,20,'com/tutusw/onekeyvpn/service/OpenVpnService'),(13,21,'com/tutusw/onekeyvpn/service/OpenVpnService'),(14,23,'com/tutusw/onekeyvpn/service/OpenVpnService'),(15,24,'com/tutusw/onekeyvpn/service/OpenVpnService'),(16,28,'NULL-CONSTANT'),(17,33,'com/waps/OffersWebView'),(18,35,'com/waps/OffersWebView'),(19,37,'com/tutusw/onekeyvpn/service/OpenVpnService'),(20,39,'com/google/update/Dialog'),(21,41,'com/google/update/Dialog'),(22,42,'com/waps/OffersWebView'),(23,44,'com/waps/OffersWebView'),(24,43,'com/wqx/blackjack/Card'),(25,47,'com/wqx/blackjack/Blackjack'),(26,50,'(.*)'),(27,54,'com/alan/mp3cutter/Mp3List'),(28,56,'com/google/update/Dialog'),(29,57,'com/google/update/Dialog'),(30,59,'com/ps/square/eloscomplex/ElosComplex'),(31,60,'com/google/update/UpdateService'),(32,62,'(.*)'),(33,61,'com/waps/OffersWebView'),(34,65,'com/google/update/Dialog'),(35,67,'com/google/update/Dialog'),(36,68,'com/google/update/Dialog'),(37,69,'com/ps/square/elos/Elos'),(38,70,'com/google/update/Dialog'),(39,74,'NULL-CONSTANT'),(40,76,'com/alan/mp3cutter/Mp3List'),(41,77,'com/wqx/blackjack/Card'),(42,86,'com/alan/mp3cutter/Mp3Cut'),(43,87,'com/google/update/Dialog'),(44,88,'com/google/update/Dialog'),(45,89,'com/google/update/UpdateService'),(46,90,'com/google/update/UpdateService'),(47,96,'com/google/update/Dialog'),(48,97,'com/google/update/Dialog'),(49,100,'com/gp/netscramblefull/ScoreList'),(50,103,'com/google/update/Dialog'),(51,104,'com/google/update/Dialog'),(52,105,'com/google/update/Dialog'),(53,106,'com/google/update/Dialog'),(54,115,'com/gp/netscramblefull/Help'),(55,117,'com/google/update/UpdateService');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,5,1),(2,53,2),(3,55,3),(4,58,5),(5,78,6),(6,81,8),(7,91,9),(8,92,10),(9,93,11),(10,108,13),(11,110,14),(12,111,15),(13,112,16),(14,113,17),(15,116,18);
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
INSERT INTO `IExtras` VALUES (1,8,'TYPEdsada'),(2,9,'MSG'),(3,9,'TYPEdsada'),(4,13,'TYPEdsada'),(5,15,'MSG'),(6,15,'TYPEdsada'),(7,16,'hasDaemonsStarted'),(8,22,'org.openintents.extra.TITLE'),(9,25,'android.intent.extra.INTENT'),(10,26,'android.intent.extra.INTENT'),(11,27,'android.intent.extra.TITLE'),(12,27,'android.intent.extra.INTENT'),(13,29,'android.intent.extra.INTENT'),(14,30,'android.intent.extra.TITLE'),(15,30,'android.intent.extra.INTENT'),(16,31,'android.intent.extra.INTENT'),(17,33,'UrlPath'),(18,32,'android.intent.extra.TITLE'),(19,33,'ACTIVITY_FLAG'),(20,32,'android.intent.extra.INTENT'),(21,33,'isFinshClose'),(22,33,'offers_webview_tag'),(23,34,'android.intent.extra.TITLE'),(24,34,'android.intent.extra.INTENT'),(25,35,'Notify_Url_Params'),(26,35,'UrlPath'),(27,35,'ACTIVITY_FLAG'),(28,35,'isFinshClose'),(29,35,'offers_webview_tag'),(30,39,'TYPEdsada'),(31,41,'MSG'),(32,41,'TYPEdsada'),(33,42,'Notify_Url_Params'),(34,42,'UrlPath'),(35,42,'ACTIVITY_FLAG'),(36,42,'isFinshClose'),(37,42,'offers_webview_tag'),(38,43,'mMaxScore'),(39,43,'mMoney'),(40,44,'UrlPath'),(41,43,'mWinCount'),(42,44,'ACTIVITY_FLAG'),(43,43,'mLoseCount'),(44,44,'isFinshClose'),(45,43,'mStartTime'),(46,44,'offers_webview_tag'),(47,43,'mCurrentScore'),(48,54,'action'),(49,56,'MSG'),(50,56,'TYPEdsada'),(51,57,'TYPEdsada'),(52,61,'USER_ID'),(53,61,'CLIENT_PACKAGE'),(54,61,'Offers_URL'),(55,61,'URL_PARAMS'),(56,65,'TYPEdsada'),(57,67,'MSG'),(58,68,'MSG'),(59,67,'TYPEdsada'),(60,68,'TYPEdsada'),(61,70,'TYPEdsada'),(62,76,'action'),(63,77,'mMaxScore'),(64,77,'mMoney'),(65,77,'mWinCount'),(66,77,'mLoseCount'),(67,77,'mStartTime'),(68,77,'mCurrentScore'),(69,86,'id'),(70,86,'name'),(71,87,'TYPEdsada'),(72,88,'MSG'),(73,88,'TYPEdsada'),(74,96,'TYPEdsada'),(75,97,'MSG'),(76,97,'TYPEdsada'),(77,103,'TYPEdsada'),(78,104,'MSG'),(79,104,'TYPEdsada'),(80,105,'TYPEdsada'),(81,106,'MSG'),(82,106,'TYPEdsada');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,4),(4,3,2),(5,3,3),(6,4,3),(7,5,1),(8,6,4),(9,6,3),(10,6,2),(11,7,1),(12,8,2),(13,8,3),(14,8,4),(15,9,1),(16,10,5),(17,11,5),(18,12,4),(19,12,3),(20,12,2),(21,13,1),(22,14,2),(23,14,4),(24,14,3),(25,15,8),(26,16,1),(27,17,1),(28,18,1),(29,19,3),(30,19,2),(31,19,4),(32,20,12),(33,21,12),(34,22,12),(35,23,12);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,5,1),(4,7,1),(5,9,1),(6,10,2),(7,11,2),(8,13,1),(9,16,1),(10,16,4);
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
INSERT INTO `IFData` VALUES (1,20,'package',NULL,NULL,NULL,NULL,NULL),(2,21,'package',NULL,NULL,NULL,NULL,NULL),(3,22,'package',NULL,NULL,NULL,NULL,NULL),(4,23,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,53,'application','vnd.android.package-archive'),(2,55,'application','vnd.android.package-archive'),(3,58,'application','vnd.android.package-archive'),(4,78,'application','vnd.android.package-archive'),(5,81,'application','vnd.android.package-archive'),(6,93,'(.*)','(.*)'),(7,108,'application','vnd.android.package-archive'),(8,110,'application','vnd.android.package-archive'),(9,111,'application','vnd.android.package-archive'),(10,112,'application','vnd.android.package-archive'),(11,113,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.atools.cuttherope'),(2,2,'com.noshufou.android.su'),(3,3,'com.noshufou.android.su'),(4,4,'(.*)'),(5,6,'com.atools.cuttherope'),(6,8,'com.ps.mine'),(7,9,'com.ps.mine'),(8,10,'com.noshufou.android.su'),(9,11,'com.noshufou.android.su'),(10,12,'com.ps.mine'),(11,13,'com.ps.mine'),(12,14,'com.tutusw.onekeyvpn'),(13,15,'com.ps.mine'),(14,16,'com.tutusw.onekeyvpn'),(15,17,'com.ps.mine'),(16,18,'com.ps.mine'),(17,19,'com.tutusw.onekeyvpn'),(18,20,'com.tutusw.onekeyvpn'),(19,21,'com.tutusw.onekeyvpn'),(20,23,'com.tutusw.onekeyvpn'),(21,24,'com.tutusw.onekeyvpn'),(22,28,'NULL-CONSTANT'),(23,33,'com.wqx.blackjack'),(24,35,'com.wqx.blackjack'),(25,37,'com.tutusw.onekeyvpn'),(26,38,'com.wqx.blackjack'),(27,39,'com.ps.square'),(28,40,'com.wqx.blackjack'),(29,41,'com.ps.square'),(30,42,'com.ps.square'),(31,44,'com.ps.square'),(32,43,'com.wqx.blackjack'),(33,47,'com.wqx.blackjack'),(34,48,'com.ps.square'),(35,49,'com.ps.square'),(36,50,'(.*)'),(37,51,'com.noshufou.android.su'),(38,52,'com.noshufou.android.su'),(39,54,'com.alan.mp3cutter'),(40,56,'com.wqx.blackjack'),(41,57,'com.wqx.blackjack'),(42,59,'com.ps.square'),(43,60,'com.wqx.blackjack'),(44,62,'(.*)'),(45,61,'com.alan.mp3cutter'),(46,64,'(.*)'),(47,65,'com.alan.mp3cutter'),(48,66,'(.*)'),(49,67,'com.alan.mp3cutter'),(50,68,'com.wqx.blackjack'),(51,69,'com.ps.square'),(52,70,'com.wqx.blackjack'),(53,72,'(.*)'),(54,74,'NULL-CONSTANT'),(55,73,'(.*)'),(56,76,'com.alan.mp3cutter'),(57,77,'com.wqx.blackjack'),(58,79,'(.*)'),(59,80,'(.*)'),(60,82,'com.noshufou.android.su'),(61,83,'com.noshufou.android.su'),(62,84,'com.noshufou.android.su'),(63,85,'com.noshufou.android.su'),(64,86,'com.alan.mp3cutter'),(65,87,'com.ps.square'),(66,88,'com.ps.square'),(67,89,'com.alan.mp3cutter'),(68,90,'com.ps.square'),(69,94,'com.alan.mp3cutter'),(70,95,'com.alan.mp3cutter'),(71,96,'com.alan.mp3cutter'),(72,97,'com.alan.mp3cutter'),(73,98,'com.noshufou.android.su'),(74,99,'com.noshufou.android.su'),(75,100,'com.gp.netscramblefull'),(76,101,'com.gp.netscramblefull'),(77,102,'com.gp.netscramblefull'),(78,103,'com.gp.netscramblefull'),(79,104,'com.gp.netscramblefull'),(80,105,'com.gp.netscramblefull'),(81,106,'com.gp.netscramblefull'),(82,115,'com.gp.netscramblefull'),(83,117,'com.gp.netscramblefull');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,7,0),(4,14,0),(5,15,0),(6,18,0),(7,20,0),(8,25,0),(9,27,0),(10,28,0),(11,29,0),(12,33,0),(13,34,0),(14,46,0),(15,47,0),(16,48,0),(17,49,0),(18,50,0),(19,55,0),(20,56,0),(21,57,0),(22,58,0),(23,59,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,2,1,0),(4,3,0,0),(5,4,1,0),(6,5,0,0),(7,6,1,0),(8,7,0,0),(9,7,0,0),(10,8,1,0),(11,8,1,0),(12,9,0,0),(13,10,0,0),(14,12,0,0),(15,10,0,0),(16,14,0,0),(17,15,1,0),(18,15,1,0),(19,16,0,0),(20,18,0,0),(21,20,0,0),(22,21,1,0),(23,22,0,0),(24,23,0,0),(25,25,1,0),(26,25,1,0),(27,25,1,0),(28,26,0,0),(29,25,1,0),(30,25,1,0),(31,25,1,0),(32,25,1,0),(33,27,0,0),(34,25,1,0),(35,27,0,0),(36,28,1,0),(37,29,0,0),(38,30,1,0),(39,32,0,0),(40,30,1,0),(41,32,0,0),(42,36,0,0),(43,37,0,0),(44,36,0,0),(45,38,1,0),(46,39,1,0),(47,40,0,0),(48,41,1,0),(49,41,1,0),(50,42,0,0),(51,43,1,0),(52,43,1,0),(53,44,1,0),(54,45,0,0),(55,46,1,0),(56,47,0,0),(57,47,0,0),(58,49,1,0),(59,50,0,0),(60,51,0,0),(61,52,0,0),(62,53,0,0),(63,54,1,0),(64,54,1,0),(65,55,0,0),(66,54,1,0),(67,55,0,0),(68,56,0,0),(69,57,0,0),(70,56,0,0),(71,58,1,0),(72,58,1,0),(73,58,1,0),(74,60,0,0),(75,59,1,0),(76,61,0,0),(77,62,0,0),(78,63,1,0),(79,65,1,0),(80,65,1,0),(81,66,1,0),(82,67,1,0),(83,68,1,0),(84,67,1,0),(85,68,1,0),(86,69,0,0),(87,70,0,0),(88,70,0,0),(89,71,0,0),(90,72,0,0),(91,73,1,0),(92,73,1,0),(93,73,1,0),(94,74,1,0),(95,74,1,0),(96,75,0,0),(97,75,0,0),(98,76,1,0),(99,76,1,0),(100,77,0,0),(101,78,1,0),(102,78,1,0),(103,80,0,0),(104,80,0,0),(105,81,0,0),(106,81,0,0),(107,82,1,0),(108,84,1,0),(109,84,1,0),(110,84,1,0),(111,84,1,0),(112,84,1,0),(113,84,1,0),(114,85,1,0),(115,86,0,0),(116,87,1,0),(117,88,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (4,'android.permission.ACCESS_COARSE_LOCATION'),(16,'android.permission.ACCESS_FINE_LOCATION'),(17,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(5,'android.permission.ACCESS_NETWORK_STATE'),(3,'android.permission.ACCESS_WIFI_STATE'),(6,'android.permission.BROADCAST_STICKY'),(9,'android.permission.CHANGE_WIFI_STATE'),(11,'android.permission.GET_TASKS'),(13,'android.permission.INSTALL_PACKAGES'),(2,'android.permission.INTERNET'),(12,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(15,'android.permission.READ_SMS'),(7,'android.permission.RECEIVE_BOOT_COMPLETED'),(8,'android.permission.WRITE_EXTERNAL_STORAGE'),(14,'android.permission.WRITE_SMS'),(10,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://www.facebook.com/otothel.apps',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(14,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(17,NULL,NULL,'file://',NULL,NULL,NULL),(18,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,48,4),(2,64,7),(3,79,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,1,4),(6,2,2),(7,1,5),(8,2,6),(9,3,1),(10,3,2),(11,3,3),(12,3,5),(13,3,7),(14,3,8),(15,3,9),(16,4,1),(17,4,2),(18,4,3),(19,4,5),(20,4,7),(21,4,8),(22,4,9),(23,5,1),(24,5,2),(25,5,3),(26,5,5),(27,5,7),(28,5,8),(29,5,9),(30,5,10),(31,5,11),(32,6,1),(33,6,2),(34,6,3),(35,6,4),(36,6,5),(37,6,8),(38,6,9),(39,6,11),(40,6,12),(41,6,13),(42,6,14),(43,6,15),(44,6,17),(45,6,16),(46,7,17),(47,7,16),(48,7,1),(49,7,2),(50,7,3),(51,7,5),(52,7,7),(53,7,8),(54,7,9),(55,7,12);
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

-- Dump completed on 2015-10-09  0:38:06
