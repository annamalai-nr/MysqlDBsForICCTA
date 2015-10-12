-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_149
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
INSERT INTO `ActionStrings` VALUES (7,'(.*)'),(2,'SQUARE'),(5,'android.intent.action.BATTERY_CHANGED_ACTION'),(4,'android.intent.action.BOOT_COMPLETED'),(9,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(12,'android.intent.action.PACKAGE_ADDED'),(10,'android.intent.action.SEND'),(11,'android.intent.action.SENDTO'),(3,'android.intent.action.SIG_STR'),(8,'android.intent.action.VIEW'),(13,'android.intent.action.WEB_SEARCH'),(14,'android.settings.WIRELESS_SETTINGS'),(6,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'com.ps.square',13),(2,'com.evilsunflower.calculator',1),(3,'com.czh.app.forecast',2),(4,'com.safetest.tractor',14),(5,'com.safetest.shark',2),(6,'com.gp.netscramblefull',11),(7,'com.mogo.shuijinllk',10);
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
INSERT INTO `CategoryStrings` VALUES (6,'android.intent.category.BROWSABLE'),(3,'android.intent.category.DEFAULT'),(7,'android.intent.category.HOME'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(5,'android.intent.category.PREFERENCE'),(2,'android.intent.category.SQUARE');
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.adwo.adsdk.AdwoAdBrowserActivity'),(2,1,'com.ps.square.Square'),(3,1,'com.ps.square.elos.Elos'),(4,1,'com.ps.square.eloscomplex.ElosComplex'),(5,1,'com.google.update.Dialog'),(6,1,'com.google.update.UpdateService'),(7,1,'com.google.update.Receiver'),(8,3,'com.czh.app.forecast.MainActivity'),(9,2,'com.evilsunflower.calculator.CalcPada'),(10,3,'com.czh.app.forecast.DataList'),(11,2,'com.google.ads.AdActivity'),(12,3,'com.guohead.sdk.GuoheAdActivity'),(13,2,'com.vpon.adon.android.WebInApp'),(14,3,'com.vpon.adon.android.WebInApp'),(15,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(16,3,'net.youmi.android.AdActivity'),(17,2,'com.evilsunflower.calculator.ShowTips'),(18,3,'cn.domob.android.ads.DomobActivity'),(19,2,'com.evilsunflower.calculator.UpdateService'),(20,3,'com.google.update.Dialog'),(21,2,'com.evilsunflower.calculator.Receiver'),(22,3,'com.google.update.UpdateService'),(23,3,'com.google.update.Receiver'),(24,4,'com.safetest.tractor.android.AndroidTractorGameController'),(25,4,'com.safetest.tractor.android.CreditActivity'),(26,4,'com.safetest.tractor.android.Tractor'),(27,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(28,4,'com.safetest.tractor.ShowTips'),(29,4,'com.safetest.tractor.UpdateService'),(30,4,'com.safetest.tractor.Receiver'),(31,5,'com.safetest.shark.HungryShark'),(32,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(33,5,'com.safetest.shark.ShowTips'),(34,5,'com.safetest.shark.UpdateService'),(35,5,'com.safetest.shark.Receiver'),(36,1,'com.ps.square.Square$ItemClickListener'),(37,1,'com.google.update.UpdateService$AA'),(38,1,'com.google.update.Dialog$2'),(39,1,'com.google.update.Dialog$1'),(40,6,'com.gp.netscramblefull.NetScramble'),(41,6,'com.gp.netscramblefull.ScoreList'),(42,6,'com.gp.netscramblefull.Help'),(43,6,'com.google.update.Dialog'),(44,6,'cn.domob.android.ads.DomobActivity'),(45,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(46,6,'com.waps.OffersWebView'),(47,6,'com.google.update.UpdateService'),(48,7,'com.mogo.shuijinllk.begin'),(49,6,'com.google.update.Receiver'),(50,7,'com.mogo.shuijinllk.Main'),(51,7,'com.google.ads.AdActivity'),(52,7,'com.vpon.adon.android.WebInApp'),(53,5,'com.safetest.shark.ShowTips$1'),(54,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(55,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(56,7,'com.waps.OffersWebView'),(57,7,'com.google.update.Dialog'),(58,7,'com.google.update.UpdateService'),(59,7,'com.google.update.Receiver'),(60,2,'com.madhouse.android.ads._'),(61,2,'com.evilsunflower.calculator.ShowTips$1'),(62,2,'com.adwo.adsdk.g'),(63,3,'cn.domob.android.ads.i'),(64,3,'com.czh.app.forecast.MainActivity$2'),(65,4,'com.safetest.tractor.ShowTips$1'),(66,3,'cn.domob.android.ads.i$6'),(67,3,'com.google.update.Dialog$1'),(68,4,'com.adwo.adsdk.g'),(69,3,'cn.domob.android.ads.DomobAdManager'),(70,3,'cn.domob.android.ads.DomobActionReceiver'),(71,3,'com.google.update.UpdateService$MyThread'),(72,3,'cn.domob.android.ads.DomobAdEngine$2'),(73,7,'org.loon.framework.android.game.LGameAndroid2DActivity$9'),(74,7,'com.waps.m'),(75,7,'com.waps.AppConnect'),(76,7,'com.google.update.UpdateService$MyThread'),(77,7,'com.google.update.Dialog$1'),(78,7,'com.ju6.a'),(79,7,'com.google.update.Dialog$2'),(80,6,'com.google.update.UpdateService$AA'),(81,6,'cn.domob.android.ads.DomobAdEngine$2'),(82,6,'com.waps.z'),(83,7,'com.waps.k'),(84,7,'org.loon.framework.android.game.LGameAndroid2DActivity$10'),(85,7,'com.mogo.shuijinllk.begin$beginButtonListener'),(86,6,'com.waps.d'),(87,6,'cn.domob.android.ads.DomobAdManager'),(88,6,'cn.domob.android.ads.i'),(89,6,'com.waps.o'),(90,6,'com.google.update.Dialog$2'),(91,6,'cn.domob.android.ads.i$6'),(92,6,'cn.domob.android.ads.DomobActionReceiver'),(93,6,'com.waps.aa'),(94,6,'com.waps.q'),(95,6,'com.google.update.Dialog$1'),(96,6,'com.waps.ac');
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
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,6,'ST_START_DELAY'),(2,5,'MSG'),(3,1,'shouldShowTitlebar'),(4,1,'shouldShowBottomBar'),(5,1,'shouldMakeOverlayTransparent'),(6,5,'TYPEdsada'),(7,1,'overlayTitle'),(8,6,'ST_MY_PID'),(9,1,'shouldResizeOverlay'),(10,1,'transitionTime'),(11,1,'shouldEnableBottomBar'),(12,1,'overlayTransition'),(13,1,'url'),(14,32,'url'),(15,32,'overlayTransition'),(16,32,'shouldResizeOverlay'),(17,32,'shouldMakeOverlayTransparent'),(18,33,'MM'),(19,32,'shouldEnableBottomBar'),(20,34,'SAFE_PID'),(21,34,'SAFE_START'),(22,32,'shouldShowTitlebar'),(23,32,'shouldShowBottomBar'),(24,32,'overlayTitle'),(25,32,'transitionTime'),(26,15,'overlayTitle'),(27,13,'adWidth'),(28,11,'action'),(29,15,'transitionTime'),(30,15,'url'),(31,17,'MM'),(32,11,'com.google.ads.AdOpener'),(33,11,'params'),(34,15,'shouldShowTitlebar'),(35,13,'(.*)'),(36,15,'shouldShowBottomBar'),(37,19,'SAFE_START'),(38,19,'SAFE_PID'),(39,15,'shouldEnableBottomBar'),(40,15,'overlayTransition'),(41,20,'MSG'),(42,20,'TYPEdsada'),(43,18,'appName'),(44,8,'GH_APPKEY'),(45,29,'SAFE_START'),(46,22,'ST_MY_PID'),(47,24,'game_id'),(48,10,'birthDay'),(49,27,'overlayTransition'),(50,24,'preferred_player_id'),(51,27,'transitionTime'),(52,27,'url'),(53,24,'num_ais'),(54,22,'DOMOB_PID'),(55,10,'DOMOB_PID'),(56,16,'DOMOB_PID'),(57,18,'appId'),(58,16,'A7D1721B9508405D8271AB82AC6D9B3C'),(59,10,'birthMonth'),(60,22,'DOMOB_ALLOW_LOCATION'),(61,10,'DOMOB_ALLOW_LOCATION'),(62,16,'DOMOB_ALLOW_LOCATION'),(63,22,'ST_START_DELAY'),(64,10,'birthYear'),(65,22,'DOMOB_TEST_MODE'),(66,10,'DOMOB_TEST_MODE'),(67,16,'DOMOB_TEST_MODE'),(68,18,'actType'),(69,12,'link'),(70,15,'shouldResizeOverlay'),(71,15,'shouldMakeOverlayTransparent'),(72,13,'url'),(73,24,'num_decks'),(74,24,'num_players'),(75,27,'overlayTitle'),(76,29,'SAFE_PID'),(77,27,'shouldMakeOverlayTransparent'),(78,27,'shouldShowTitlebar'),(79,28,'MM'),(80,24,'server_address'),(81,27,'shouldEnableBottomBar'),(82,27,'shouldResizeOverlay'),(83,24,'create_game'),(84,27,'shouldShowBottomBar'),(85,52,'MSG'),(86,44,'DEVICE_ID'),(87,46,'DEVICE_ID'),(88,50,'overlayTitle'),(89,51,'isFinshClose'),(90,51,'URL_PARAMS'),(91,49,'isTestMode'),(92,50,'shouldEnableBottomBar'),(93,50,'shouldShowTitlebar'),(94,50,'url'),(95,51,'Offers_URL'),(96,52,'TYPEdsada'),(97,44,'APP_ID'),(98,46,'APP_ID'),(99,50,'shouldShowBottomBar'),(100,44,'WAPS_ID'),(101,46,'WAPS_ID'),(102,53,'ST_MY_PID'),(103,48,'url'),(104,47,'com.google.ads.AdOpener'),(105,50,'overlayTransition'),(106,44,'WAPS_PID'),(107,46,'WAPS_PID'),(108,51,'USER_ID'),(109,36,'solverUsed'),(110,51,'URL'),(111,36,'rootX'),(112,42,'Offers_URL'),(113,41,'transitionTime'),(114,36,'solvedState'),(115,53,'ST_START_DELAY'),(116,50,'transitionTime'),(117,47,'params'),(118,44,'CLIENT_PACKAGE'),(119,46,'CLIENT_PACKAGE'),(120,42,'APP_ID'),(121,36,'APP_ID'),(122,48,'adWidth'),(123,50,'shouldResizeOverlay'),(124,47,'action'),(125,49,'Adwo_PID'),(126,51,'CLIENT_PACKAGE'),(127,50,'shouldMakeOverlayTransparent'),(128,42,'WAPS_ID'),(129,36,'WAPS_ID'),(130,42,'URL'),(131,42,'Notify_Id'),(132,42,'DEVICE_ID'),(133,36,'DEVICE_ID'),(134,42,'isFinshClose'),(135,36,'tickCount'),(136,36,'gridHeight'),(137,42,'offers_webview_tag'),(138,36,'gridWidth'),(139,41,'overlayTransition'),(140,42,'Notify_Url_Params'),(141,36,'accumTime'),(142,41,'shouldMakeOverlayTransparent'),(143,36,'gameState'),(144,36,'focusX'),(145,42,'UrlPath'),(146,42,'ACTIVITY_FLAG'),(147,41,'shouldEnableBottomBar'),(148,36,'gameSkill'),(149,36,'tickInterval'),(150,38,'(.*)B(.*).expanded'),(151,38,'(.*)T(.*).expanded'),(152,38,'(.*)H(.*).expanded'),(153,38,'expanded'),(154,36,'focusY'),(155,43,'DOMOB_TEST_MODE'),(156,41,'DOMOB_TEST_MODE'),(157,36,'DOMOB_TEST_MODE'),(158,42,'CLIENT_PACKAGE'),(159,43,'DOMOB_PID'),(160,41,'DOMOB_PID'),(161,36,'DOMOB_PID'),(162,41,'shouldResizeOverlay'),(163,36,'rootY'),(164,36,'cell (.*),(.*)'),(165,39,'MSG'),(166,41,'overlayTitle'),(167,41,'shouldShowBottomBar'),(168,41,'shouldShowTitlebar'),(169,42,'SHWO_FLAG'),(170,43,'DOMOB_ALLOW_LOCATION'),(171,41,'DOMOB_ALLOW_LOCATION'),(172,36,'DOMOB_ALLOW_LOCATION'),(173,39,'TYPEdsada'),(174,40,'appId'),(175,42,'WAPS_PID'),(176,36,'WAPS_PID'),(177,36,'isRunning'),(178,43,'ST_START_DELAY'),(179,43,'ST_MY_PID'),(180,40,'appName'),(181,41,'url'),(182,42,'URL_PARAMS'),(183,36,'clickCount'),(184,36,'CLIENT_PACKAGE'),(185,42,'USER_ID'),(186,40,'actType'),(187,36,'isSolved');
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'s',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'r',1,NULL,NULL),(22,22,'s',0,NULL,NULL),(23,23,'r',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'s',0,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,40,'a',1,NULL,NULL),(37,41,'a',1,NULL,NULL),(38,42,'a',1,NULL,NULL),(39,43,'a',0,NULL,NULL),(40,44,'a',0,NULL,NULL),(41,45,'a',0,NULL,NULL),(42,46,'a',0,NULL,NULL),(43,47,'s',0,NULL,NULL),(44,48,'a',1,NULL,NULL),(45,49,'r',1,NULL,NULL),(46,50,'a',0,NULL,NULL),(47,51,'a',0,NULL,NULL),(48,52,'a',0,NULL,NULL),(49,54,'a',0,NULL,NULL),(50,55,'a',0,NULL,NULL),(51,56,'a',0,NULL,NULL),(52,57,'a',0,NULL,NULL),(53,58,'s',0,NULL,NULL),(54,59,'r',1,NULL,NULL),(55,70,'r',1,NULL,NULL),(56,74,'r',1,NULL,NULL),(57,92,'r',1,NULL,NULL),(58,94,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,7),(2,2,2),(3,3,6),(4,4,6),(5,5,5),(6,6,6),(7,7,2),(8,8,5),(9,9,35),(10,10,33),(11,11,13),(12,12,9),(13,13,21),(14,14,17),(15,15,11),(16,16,9),(17,17,22),(18,17,16),(19,17,10),(20,18,8),(21,19,23),(22,20,22),(23,21,22),(24,22,28),(25,23,10),(26,23,22),(27,23,16),(28,24,24),(29,25,24),(30,26,25),(31,27,25),(32,28,24),(33,29,20),(34,30,24),(35,31,16),(36,31,10),(37,31,22),(38,32,22),(39,33,16),(40,33,22),(41,33,10),(42,34,25),(43,35,25),(44,35,24),(45,36,30),(46,37,47),(47,38,46),(48,38,50),(49,38,53),(50,39,44),(51,40,53),(52,41,53),(53,42,54),(54,43,52),(55,44,53),(56,45,52),(57,46,43),(58,47,53),(59,48,41),(60,48,43),(61,48,36),(62,49,42),(63,49,36),(64,50,51),(65,51,42),(66,52,53),(67,52,50),(68,52,46),(69,53,44),(70,54,45),(71,55,36),(72,56,36),(73,57,36),(74,57,41),(75,57,43),(76,58,43),(77,58,41),(78,59,42),(79,59,36),(80,60,39),(81,60,36),(82,61,36),(83,62,43),(84,63,43),(85,64,42),(86,65,43),(87,65,41),(88,65,36),(89,66,42),(90,66,36),(91,67,36),(92,68,36),(93,68,39),(94,69,42);
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,7,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(2,36,'<com.ps.square.Square$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(3,37,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(4,6,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(5,38,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(6,6,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(7,36,'<com.ps.square.Square$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',16,'a',NULL),(8,39,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(9,35,'<com.safetest.shark.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(10,53,'<com.safetest.shark.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(11,60,'<com.madhouse.android.ads._: com.madhouse.android.ads.c _(android.content.Context)>',11,'p',NULL),(12,9,'<com.evilsunflower.calculator.CalcPada: void onCreate(android.os.Bundle)>',28,'s',NULL),(13,21,'<com.evilsunflower.calculator.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(14,61,'<com.evilsunflower.calculator.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(15,11,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(16,62,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(17,63,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(18,64,'<com.czh.app.forecast.MainActivity$2: void onClick(android.view.View)>',77,'a',NULL),(19,23,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(20,22,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(21,22,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(22,65,'<com.safetest.tractor.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(23,66,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(24,24,'<com.safetest.tractor.android.AndroidTractorGameController: boolean onMenuItemSelected(int,android.view.MenuItem)>',32,'a',NULL),(25,24,'<com.safetest.tractor.android.AndroidTractorGameController: void LaunchNewGameActivity()>',4,'a',NULL),(26,25,'<com.safetest.tractor.android.CreditActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',14,'a',NULL),(27,25,'<com.safetest.tractor.android.CreditActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',20,'a',NULL),(28,24,'<com.safetest.tractor.android.AndroidTractorGameController: boolean onMenuItemSelected(int,android.view.MenuItem)>',26,'a',NULL),(29,67,'<com.google.update.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(30,68,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(31,69,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(32,71,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(33,72,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(34,25,'<com.safetest.tractor.android.CreditActivity: void onCreate(android.os.Bundle)>',21,'s',NULL),(35,25,'<com.safetest.tractor.android.CreditActivity: void LaunchNewGame()>',15,'a',NULL),(36,30,'<com.safetest.tractor.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(37,51,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(38,73,'<org.loon.framework.android.game.LGameAndroid2DActivity$9: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(39,75,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(40,58,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(41,76,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(42,59,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(43,77,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(44,78,'<com.ju6.a: boolean b()>',178,'p',NULL),(45,79,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(46,80,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(47,58,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(48,81,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(49,82,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(50,83,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(51,46,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(52,84,'<org.loon.framework.android.game.LGameAndroid2DActivity$10: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(53,85,'<com.mogo.shuijinllk.begin$beginButtonListener: void onClick(android.view.View)>',28,'a',NULL),(54,49,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(55,86,'<com.waps.d: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(56,40,'<com.gp.netscramblefull.NetScramble: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(57,87,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(58,88,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(59,89,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(60,90,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(61,40,'<com.gp.netscramblefull.NetScramble: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(62,47,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(63,47,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(64,46,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(65,91,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(66,93,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(67,40,'<com.gp.netscramblefull.NetScramble: void onBackPressed()>',5,'a',NULL),(68,95,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(69,96,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,1),(2,4,1),(3,7,6),(4,11,1),(5,12,1),(6,14,1),(7,15,1),(8,18,1),(9,19,1),(10,20,7),(11,21,8),(12,22,7),(13,23,9),(14,24,10),(15,25,11),(16,26,8),(17,27,8),(18,29,11),(19,30,10),(20,32,8),(21,34,10),(22,36,8),(23,37,8),(24,38,9),(25,40,1),(26,41,8),(27,43,1),(28,44,8),(29,45,8),(30,46,8),(31,47,8),(32,48,11),(33,50,8),(34,51,10),(35,53,8),(36,54,10),(37,55,8),(38,56,10),(39,57,8),(40,58,10),(41,59,8),(42,60,8),(43,61,8),(44,62,11),(45,63,8),(46,64,6),(47,65,9),(48,66,10),(49,67,10),(50,68,8),(51,70,11),(52,71,10),(53,72,8),(54,73,8),(55,74,11),(56,75,1),(57,76,10),(58,77,11),(59,78,1),(60,79,10),(61,80,8),(62,81,8),(63,82,13),(64,83,8),(65,84,8),(66,85,9),(67,86,13),(68,87,10),(69,88,8),(70,89,8),(71,90,8),(72,91,8),(73,92,9),(74,93,11),(75,94,10),(76,95,10),(77,96,10),(78,97,10),(79,98,11),(80,99,8),(81,100,10),(82,101,8),(83,103,10),(84,104,8),(85,105,11),(86,106,8),(87,107,13),(88,108,8),(89,109,13),(90,110,8),(91,111,10),(92,112,8),(93,113,9),(94,117,7),(95,118,8),(96,119,7),(97,120,14),(98,124,1),(99,125,1),(100,127,1),(101,128,1),(102,129,6),(103,130,1),(104,131,1),(105,134,8),(106,135,8),(107,137,1),(108,139,1),(109,144,8),(110,145,8),(111,146,6),(112,153,8),(113,155,8),(114,156,8),(115,157,8),(116,158,8),(117,161,1),(118,162,1),(119,163,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,3,4),(2,4,1),(3,11,1),(4,12,4),(5,14,1),(6,15,4),(7,18,1),(8,19,4),(9,20,6),(10,21,6),(11,22,6),(12,40,1),(13,43,4),(14,75,4),(15,78,1),(16,117,6),(17,118,6),(18,119,6),(19,124,1),(20,125,4),(21,127,1),(22,128,4),(23,130,4),(24,131,1),(25,137,1),(26,139,4),(27,161,7),(28,162,1),(29,163,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/google/update/UpdateService'),(2,2,'com/ps/square/eloscomplex/ElosComplex'),(3,5,'com/google/update/Dialog'),(4,6,'com/google/update/Dialog'),(5,8,'com/google/update/Dialog'),(6,9,'com/google/update/Dialog'),(7,10,'com/ps/square/elos/Elos'),(8,13,'com/safetest/shark/UpdateService'),(9,16,'com/evilsunflower/calculator/UpdateService'),(10,17,'com/evilsunflower/calculator/UpdateService'),(11,28,'com/czh/app/forecast/DataList'),(12,31,'com/google/update/UpdateService'),(13,32,'com/adwo/adsdk/AdwoAdBrowserActivity'),(14,33,'com/google/update/Dialog'),(15,35,'com/google/update/Dialog'),(16,37,'com.google.android.maps.MapsActivity'),(17,39,'com/google/update/Dialog'),(18,42,'com/google/update/Dialog'),(19,52,'com/safetest/tractor/android/Tractor'),(20,68,'com.google.android.maps.MapsActivity'),(21,73,'com.google.android.maps.MapsActivity'),(22,80,'com.google.android.maps.MapsActivity'),(23,83,'com.google.android.maps.MapsActivity'),(24,89,'com.google.android.maps.MapsActivity'),(25,101,'com.google.android.maps.MapsActivity'),(26,104,'com.google.android.maps.MapsActivity'),(27,106,'com.google.android.maps.MapsActivity'),(28,110,'com/adwo/adsdk/AdwoAdBrowserActivity'),(29,112,'com.google.android.maps.MapsActivity'),(30,114,'com/safetest/tractor/UpdateService'),(31,115,'com/safetest/tractor/android/AndroidTractorGameController'),(32,116,'com/safetest/tractor/UpdateService'),(33,121,'com/waps/OffersWebView'),(34,122,'com/google/update/Dialog'),(35,123,'com/google/update/Dialog'),(36,126,'com/google/update/UpdateService'),(37,132,'com/google/update/Dialog'),(38,133,'com/google/update/Dialog'),(39,140,'com/mogo/shuijinllk/Main'),(40,141,'com/google/update/UpdateService'),(41,142,'com/waps/OffersWebView'),(42,143,'com/gp/netscramblefull/ScoreList'),(43,147,'com/gp/netscramblefull/Help'),(44,148,'com/google/update/Dialog'),(45,149,'com/google/update/Dialog'),(46,150,'com/google/update/Dialog'),(47,151,'com/google/update/Dialog'),(48,152,'(.*)'),(49,159,'com/waps/OffersWebView'),(50,160,'com/waps/OffersWebView'),(51,164,'NULL-CONSTANT');
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,20,2),(2,21,3),(3,22,4),(4,23,5),(5,24,6),(6,25,7),(7,26,8),(8,27,9),(9,29,10),(10,30,11),(11,34,12),(12,36,13),(13,38,14),(14,41,15),(15,44,16),(16,45,17),(17,46,18),(18,48,19),(19,50,20),(20,51,21),(21,55,22),(22,53,23),(23,57,24),(24,59,25),(25,60,26),(26,58,27),(27,61,28),(28,63,29),(29,65,30),(30,66,31),(31,68,33),(32,67,34),(33,70,35),(34,71,36),(35,72,37),(36,73,38),(37,74,39),(38,76,40),(39,77,41),(40,80,42),(41,79,43),(42,81,44),(43,84,45),(44,85,46),(45,87,47),(46,88,48),(47,89,49),(48,90,50),(49,93,51),(50,94,52),(51,97,53),(52,99,54),(53,100,55),(54,101,56),(55,103,57),(56,104,58),(57,105,59),(58,106,60),(59,108,61),(60,111,62),(61,112,63),(62,117,64),(63,118,65),(64,119,66),(65,134,68),(66,135,69),(67,144,71),(68,145,72),(69,153,73),(70,155,74),(71,156,75),(72,157,76),(73,158,77);
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,5,'TYPEdsada'),(2,6,'MSG'),(3,6,'TYPEdsada'),(4,8,'TYPEdsada'),(5,9,'MSG'),(6,9,'TYPEdsada'),(7,24,'android.intent.extra.TEXT'),(8,24,'android.intent.extra.SUBJECT'),(9,24,'android.intent.extra.EMAIL'),(10,25,'sms_body'),(11,28,'birthYear'),(12,28,'birthMonth'),(13,28,'birthDay'),(14,30,'android.intent.extra.EMAIL'),(15,32,'url'),(16,33,'TYPEdsada'),(17,34,'android.intent.extra.TEXT'),(18,34,'android.intent.extra.EMAIL'),(19,35,'MSG'),(20,35,'TYPEdsada'),(21,39,'TYPEdsada'),(22,42,'MSG'),(23,42,'TYPEdsada'),(24,51,'android.intent.extra.EMAIL'),(25,56,'android.intent.extra.TEXT'),(26,56,'android.intent.extra.SUBJECT'),(27,56,'android.intent.extra.EMAIL'),(28,58,'android.intent.extra.TEXT'),(29,58,'android.intent.extra.SUBJECT'),(30,58,'android.intent.extra.EMAIL'),(31,67,'android.intent.extra.TEXT'),(32,67,'android.intent.extra.SUBJECT'),(33,67,'android.intent.extra.EMAIL'),(34,70,'sms_body'),(35,71,'android.intent.extra.TEXT'),(36,71,'android.intent.extra.EMAIL'),(37,76,'android.intent.extra.EMAIL'),(38,77,'sms_body'),(39,79,'android.intent.extra.TEXT'),(40,79,'android.intent.extra.EMAIL'),(41,82,'query'),(42,94,'android.intent.extra.EMAIL'),(43,96,'android.intent.extra.TEXT'),(44,96,'android.intent.extra.SUBJECT'),(45,96,'android.intent.extra.EMAIL'),(46,97,'android.intent.extra.TEXT'),(47,97,'android.intent.extra.SUBJECT'),(48,97,'android.intent.extra.EMAIL'),(49,103,'android.intent.extra.TEXT'),(50,103,'android.intent.extra.EMAIL'),(51,105,'sms_body'),(52,107,'query'),(53,110,'url'),(54,115,'server_address'),(55,115,'create_game'),(56,115,'num_players'),(57,115,'game_id'),(58,115,'num_decks'),(59,115,'preferred_player_id'),(60,115,'num_ais'),(61,121,'USER_ID'),(62,121,'CLIENT_PACKAGE'),(63,121,'Offers_URL'),(64,121,'URL_PARAMS'),(65,122,'MSG'),(66,122,'TYPEdsada'),(67,123,'TYPEdsada'),(68,132,'MSG'),(69,132,'TYPEdsada'),(70,133,'TYPEdsada'),(71,142,'CLIENT_PACKAGE'),(72,142,'URL'),(73,142,'isFinshClose'),(74,142,'offers_webview_tag'),(75,148,'TYPEdsada'),(76,149,'MSG'),(77,149,'TYPEdsada'),(78,150,'TYPEdsada'),(79,151,'MSG'),(80,151,'TYPEdsada'),(81,159,'UrlPath'),(82,159,'ACTIVITY_FLAG'),(83,159,'isFinshClose'),(84,159,'offers_webview_tag'),(85,160,'Notify_Url_Params'),(86,160,'UrlPath'),(87,160,'ACTIVITY_FLAG'),(88,160,'isFinshClose'),(89,160,'offers_webview_tag');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,3),(5,4,4),(6,4,5),(7,5,1),(8,6,1),(9,7,3),(10,7,4),(11,7,5),(12,8,5),(13,8,3),(14,8,4),(15,9,1),(16,10,5),(17,10,3),(18,10,4),(19,11,1),(20,12,4),(21,12,3),(22,12,5),(23,13,1),(24,14,1),(25,15,1),(26,16,1),(27,17,4),(28,17,5),(29,17,3),(30,18,5),(31,18,3),(32,18,4),(33,19,12),(34,20,12),(35,21,12),(36,22,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,2),(4,5,1),(5,6,1),(6,9,1),(7,9,3),(8,11,1),(9,13,5),(10,13,1),(11,16,1);
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
INSERT INTO `IFData` VALUES (1,19,'package',NULL,NULL,NULL,NULL,NULL),(2,20,'package',NULL,NULL,NULL,NULL,NULL),(3,21,'package',NULL,NULL,NULL,NULL,NULL),(4,22,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,22,'(.*)','(.*)'),(2,27,'*','*'),(3,44,'(.*)','(.*)'),(4,46,'application','vnd.android.package-archive'),(5,50,'application','vnd.android.package-archive'),(6,53,'application','vnd.android.package-archive'),(7,56,'message','rfc882'),(8,57,'application','vnd.android.package-archive'),(9,60,'application','vnd.android.package-archive'),(10,63,'(.*)','(.*)'),(11,72,'*','*'),(12,84,'*','*'),(13,90,'(.*)','(.*)'),(14,96,'message','rfc882'),(15,99,'(.*)','(.*)'),(16,108,'*','*'),(17,119,'(.*)','(.*)'),(18,134,'application','vnd.android.package-archive'),(19,135,'application','vnd.android.package-archive'),(20,145,'application','vnd.android.package-archive'),(21,153,'application','vnd.android.package-archive'),(22,155,'application','vnd.android.package-archive'),(23,156,'application','vnd.android.package-archive'),(24,157,'application','vnd.android.package-archive'),(25,158,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.ps.square'),(2,2,'com.ps.square'),(3,3,'com.ps.square'),(4,4,'com.ps.square'),(5,5,'com.ps.square'),(6,6,'com.ps.square'),(7,8,'com.ps.square'),(8,9,'com.ps.square'),(9,10,'com.ps.square'),(10,11,'com.noshufou.android.su'),(11,12,'com.noshufou.android.su'),(12,13,'com.safetest.shark'),(13,14,'com.noshufou.android.su'),(14,15,'com.noshufou.android.su'),(15,16,'com.evilsunflower.calculator'),(16,17,'com.evilsunflower.calculator'),(17,18,'com.noshufou.android.su'),(18,19,'com.noshufou.android.su'),(19,28,'com.czh.app.forecast'),(20,31,'com.czh.app.forecast'),(21,32,'com.evilsunflower.calculator'),(22,33,'com.czh.app.forecast'),(23,35,'com.czh.app.forecast'),(24,37,'com.google.android.apps.maps'),(25,39,'com.czh.app.forecast'),(26,40,'com.noshufou.android.su'),(27,42,'com.czh.app.forecast'),(28,43,'com.noshufou.android.su'),(29,52,'com.safetest.tractor'),(30,68,'com.google.android.apps.maps'),(31,73,'com.google.android.apps.maps'),(32,75,'com.czh.app.forecast'),(33,78,'com.czh.app.forecast'),(34,80,'com.google.android.apps.maps'),(35,83,'com.google.android.apps.maps'),(36,89,'com.google.android.apps.maps'),(37,101,'com.google.android.apps.maps'),(38,104,'com.google.android.apps.maps'),(39,106,'com.google.android.apps.maps'),(40,110,'com.safetest.tractor'),(41,112,'com.google.android.apps.maps'),(42,114,'com.safetest.tractor'),(43,115,'com.safetest.tractor'),(44,116,'com.safetest.tractor'),(45,121,'com.mogo.shuijinllk'),(46,122,'com.mogo.shuijinllk'),(47,123,'com.mogo.shuijinllk'),(48,124,'com.mogo.shuijinllk'),(49,125,'com.mogo.shuijinllk'),(50,126,'com.mogo.shuijinllk'),(51,127,'com.noshufou.android.su'),(52,128,'com.noshufou.android.su'),(53,130,'com.gp.netscramblefull'),(54,131,'com.gp.netscramblefull'),(55,132,'com.mogo.shuijinllk'),(56,133,'com.mogo.shuijinllk'),(57,137,'(.*)'),(58,139,'(.*)'),(59,140,'com.mogo.shuijinllk'),(60,141,'com.gp.netscramblefull'),(61,142,'com.gp.netscramblefull'),(62,143,'com.gp.netscramblefull'),(63,147,'com.gp.netscramblefull'),(64,148,'com.gp.netscramblefull'),(65,149,'com.gp.netscramblefull'),(66,150,'com.gp.netscramblefull'),(67,151,'com.gp.netscramblefull'),(68,152,'(.*)'),(69,159,'com.gp.netscramblefull'),(70,160,'com.gp.netscramblefull'),(71,162,'com.noshufou.android.su'),(72,163,'com.noshufou.android.su'),(73,164,'NULL-CONSTANT');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,2,0),(2,3,0),(3,4,0),(4,7,0),(5,8,0),(6,9,0),(7,21,0),(8,23,0),(9,25,0),(10,30,0),(11,31,0),(12,35,0),(13,36,0),(14,37,0),(15,38,0),(16,44,0),(17,45,0),(18,54,0),(19,55,0),(20,56,0),(21,57,0),(22,58,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,1,0),(4,3,1,0),(5,4,0,0),(6,4,0,0),(7,5,1,0),(8,6,0,0),(9,6,0,0),(10,7,0,0),(11,8,1,0),(12,8,1,0),(13,9,0,0),(14,10,1,0),(15,10,1,0),(16,12,0,0),(17,13,0,0),(18,14,1,0),(19,14,1,0),(20,15,1,0),(21,15,1,0),(22,15,1,0),(23,16,1,0),(24,16,1,0),(25,16,1,0),(26,17,1,0),(27,16,1,0),(28,18,0,0),(29,16,1,0),(30,16,1,0),(31,19,0,0),(32,16,0,0),(33,20,0,0),(34,16,1,0),(35,20,0,0),(36,16,1,0),(37,16,0,0),(38,16,1,0),(39,21,0,0),(40,22,1,0),(41,16,1,0),(42,21,0,0),(43,22,1,0),(44,16,1,0),(45,24,1,0),(46,23,1,0),(47,16,1,0),(48,16,1,0),(49,23,1,0),(50,23,1,0),(51,16,1,0),(52,25,0,0),(53,23,1,0),(54,16,1,0),(55,26,1,0),(56,16,1,0),(57,23,1,0),(58,16,1,0),(59,27,1,0),(60,23,1,0),(61,28,1,0),(62,16,1,0),(63,16,1,0),(64,29,1,0),(65,30,1,0),(66,16,1,0),(67,30,1,0),(68,16,0,0),(69,16,1,0),(70,30,1,0),(71,16,1,0),(72,30,1,0),(73,16,0,0),(74,30,1,0),(75,32,1,0),(76,30,1,0),(77,16,1,0),(78,32,1,0),(79,30,1,0),(80,16,0,0),(81,30,1,0),(82,16,1,0),(83,30,0,0),(84,16,1,0),(85,30,1,0),(86,16,1,0),(87,16,1,0),(88,30,1,0),(89,16,0,0),(90,30,1,0),(91,30,1,0),(92,16,1,0),(93,30,1,0),(94,30,1,0),(95,30,1,0),(96,30,1,0),(97,30,1,0),(98,30,1,0),(99,30,1,0),(100,30,1,0),(101,30,0,0),(102,30,1,0),(103,30,1,0),(104,30,0,0),(105,30,1,0),(106,30,0,0),(107,30,1,0),(108,30,1,0),(109,30,1,0),(110,30,0,0),(111,30,1,0),(112,30,0,0),(113,30,1,0),(114,34,0,0),(115,35,0,0),(116,36,0,0),(117,37,1,0),(118,37,1,0),(119,37,1,0),(120,38,1,0),(121,39,0,0),(122,40,0,0),(123,40,0,0),(124,41,1,0),(125,41,1,0),(126,42,0,0),(127,43,1,0),(128,43,1,0),(129,45,1,0),(130,46,1,0),(131,46,1,0),(132,47,0,0),(133,47,0,0),(134,49,1,0),(135,50,1,0),(136,51,1,0),(137,51,1,0),(138,52,1,0),(139,51,1,0),(140,53,0,0),(141,54,0,0),(142,55,0,0),(143,56,0,0),(144,58,1,0),(145,59,1,0),(146,60,1,0),(147,61,0,0),(148,62,0,0),(149,62,0,0),(150,63,0,0),(151,63,0,0),(152,64,0,0),(153,65,1,0),(154,65,1,0),(155,65,1,0),(156,65,1,0),(157,65,1,0),(158,65,1,0),(159,66,0,0),(160,66,0,0),(161,67,1,0),(162,68,1,0),(163,68,1,0),(164,69,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,20,44,2,NULL),(2,21,44,2,NULL),(3,161,44,2,NULL),(4,136,44,2,NULL),(5,137,44,2,NULL),(6,139,44,2,NULL),(7,117,44,2,NULL),(8,118,44,2,NULL),(9,117,2,2,NULL),(10,118,2,2,NULL),(11,117,3,2,NULL),(12,118,3,2,NULL),(13,117,4,2,NULL),(14,118,4,2,NULL),(15,117,7,2,NULL),(16,118,7,2,NULL),(17,117,9,2,NULL),(18,118,9,2,NULL),(19,117,21,2,NULL),(20,118,21,2,NULL),(21,117,8,2,NULL),(22,118,8,2,NULL),(23,117,23,2,NULL),(24,118,23,2,NULL),(25,117,25,2,NULL),(26,118,25,2,NULL),(27,117,30,2,NULL),(28,118,30,2,NULL),(29,117,31,2,NULL),(30,118,31,2,NULL),(31,117,35,2,NULL),(32,118,35,2,NULL),(33,117,36,2,NULL),(34,118,36,2,NULL),(35,117,37,2,NULL),(36,118,37,2,NULL),(37,117,38,2,NULL),(38,118,38,2,NULL),(39,117,45,2,NULL),(40,118,45,2,NULL),(41,117,54,2,NULL),(42,118,54,2,NULL),(43,122,5,2,NULL),(44,122,20,2,NULL),(45,122,39,2,NULL),(46,122,52,2,NULL),(47,123,5,2,NULL),(48,123,20,2,NULL),(49,123,39,2,NULL),(50,123,52,2,NULL),(51,132,5,2,NULL),(52,132,20,2,NULL),(53,132,39,2,NULL),(54,132,52,2,NULL),(55,133,5,2,NULL),(56,133,20,2,NULL),(57,133,39,2,NULL),(58,133,52,2,NULL),(59,126,6,2,NULL),(60,126,22,2,NULL),(61,126,43,2,NULL),(62,126,53,2,NULL),(63,20,54,2,NULL),(64,21,54,2,NULL),(65,161,54,2,NULL),(66,136,54,2,NULL),(67,137,54,2,NULL),(68,139,54,2,NULL),(69,20,2,2,NULL),(70,21,2,2,NULL),(71,161,2,2,NULL),(72,136,2,2,NULL),(73,137,2,2,NULL),(74,139,2,2,NULL),(75,20,3,2,NULL),(76,21,3,2,NULL),(77,161,3,2,NULL),(78,136,3,2,NULL),(79,137,3,2,NULL),(80,139,3,2,NULL),(81,20,4,2,NULL),(82,21,4,2,NULL),(83,161,4,2,NULL),(84,136,4,2,NULL),(85,137,4,2,NULL),(86,139,4,2,NULL),(87,5,5,2,NULL),(88,5,20,2,NULL),(89,5,39,2,NULL),(90,5,52,2,NULL),(91,6,5,2,NULL),(92,6,20,2,NULL),(93,6,39,2,NULL),(94,6,52,2,NULL),(95,8,5,2,NULL),(96,8,20,2,NULL),(97,8,39,2,NULL),(98,8,52,2,NULL),(99,9,5,2,NULL),(100,9,20,2,NULL),(101,9,39,2,NULL),(102,9,52,2,NULL),(103,1,6,2,NULL),(104,1,22,2,NULL),(105,1,43,2,NULL),(106,1,53,2,NULL),(107,20,7,2,NULL),(108,21,7,2,NULL),(109,161,7,2,NULL),(110,136,7,2,NULL),(111,137,7,2,NULL),(112,139,7,2,NULL),(113,143,37,2,NULL),(114,147,38,2,NULL),(115,161,9,2,NULL),(116,20,36,2,NULL),(117,21,36,2,NULL),(118,161,21,2,NULL),(119,161,8,2,NULL),(120,161,23,2,NULL),(121,161,25,2,NULL),(122,161,30,2,NULL),(123,161,31,2,NULL),(124,161,35,2,NULL),(125,161,37,2,NULL),(126,161,38,2,NULL),(127,136,36,2,NULL),(128,137,36,2,NULL),(129,139,36,2,NULL),(130,161,45,2,NULL),(131,20,37,2,NULL),(132,21,37,2,NULL),(133,136,37,2,NULL),(134,137,37,2,NULL),(135,139,37,2,NULL),(136,20,38,2,NULL),(137,21,38,2,NULL),(138,136,38,2,NULL),(139,137,38,2,NULL),(140,139,38,2,NULL),(141,136,9,2,NULL),(142,137,9,2,NULL),(143,139,9,2,NULL),(144,136,21,2,NULL),(145,137,21,2,NULL),(146,139,21,2,NULL),(147,136,8,2,NULL),(148,137,8,2,NULL),(149,139,8,2,NULL),(150,136,23,2,NULL),(151,137,23,2,NULL),(152,139,23,2,NULL),(153,136,25,2,NULL),(154,137,25,2,NULL),(155,139,25,2,NULL),(156,136,30,2,NULL),(157,137,30,2,NULL),(158,139,30,2,NULL),(159,136,31,2,NULL),(160,137,31,2,NULL),(161,139,31,2,NULL),(162,136,35,2,NULL),(163,137,35,2,NULL),(164,139,35,2,NULL),(165,136,45,2,NULL),(166,137,45,2,NULL),(167,139,45,2,NULL),(168,148,5,2,NULL),(169,148,20,2,NULL),(170,148,39,2,NULL),(171,148,52,2,NULL),(172,149,5,2,NULL),(173,149,20,2,NULL),(174,149,39,2,NULL),(175,149,52,2,NULL),(176,150,5,2,NULL),(177,150,20,2,NULL),(178,150,39,2,NULL),(179,150,52,2,NULL),(180,151,5,2,NULL),(181,151,20,2,NULL),(182,151,39,2,NULL),(183,151,52,2,NULL),(184,141,6,2,NULL),(185,141,22,2,NULL),(186,141,43,2,NULL),(187,141,53,2,NULL),(188,20,45,2,NULL),(189,21,45,2,NULL),(190,20,31,2,NULL),(191,21,31,2,NULL),(192,13,34,2,NULL),(193,20,35,2,NULL),(194,21,35,2,NULL),(195,20,8,2,NULL),(196,21,8,2,NULL),(197,33,5,2,NULL),(198,33,20,2,NULL),(199,33,39,2,NULL),(200,33,52,2,NULL),(201,35,5,2,NULL),(202,35,20,2,NULL),(203,35,39,2,NULL),(204,35,52,2,NULL),(205,39,5,2,NULL),(206,39,20,2,NULL),(207,39,39,2,NULL),(208,39,52,2,NULL),(209,42,5,2,NULL),(210,42,20,2,NULL),(211,42,39,2,NULL),(212,42,52,2,NULL),(213,31,6,2,NULL),(214,31,22,2,NULL),(215,31,43,2,NULL),(216,31,53,2,NULL),(217,20,23,2,NULL),(218,21,23,2,NULL),(219,16,19,2,NULL),(220,20,9,2,NULL),(221,21,9,2,NULL),(222,20,21,2,NULL),(223,21,21,2,NULL),(224,20,25,2,NULL),(225,21,25,2,NULL),(226,20,30,2,NULL),(227,21,30,2,NULL),(228,17,19,2,NULL),(229,52,26,2,NULL),(230,114,29,2,NULL),(231,115,24,2,NULL),(232,116,29,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (9,'android.permission.ACCESS_COARSE_LOCATION'),(12,'android.permission.ACCESS_FINE_LOCATION'),(19,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(7,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(21,'android.permission.CHANGE_CONFIGURATION'),(5,'android.permission.CHANGE_WIFI_STATE'),(18,'android.permission.GET_TASKS'),(20,'android.permission.INSTALL_PACKAGES'),(3,'android.permission.INTERNET'),(10,'android.permission.READ_CONTACTS'),(15,'android.permission.READ_EXTERNAL_STORAGE'),(16,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(11,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(17,'android.permission.VIBRATE'),(13,'android.permission.WAKE_LOCK'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(8,'android.permission.WRITE_SMS'),(14,'com.android.browser.permission.READ_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'http://sites.google.com/site/tractorandroid/manual-chinese',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(19,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'http://sites.google.com/site/tractorandroid/manual-english',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(25,NULL,NULL,'http://sites.google.com/site/tractorandroid/manual-chinese',NULL,NULL,NULL),(26,NULL,NULL,'file://',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'http://sites.google.com/site/tractorandroid/manual-english',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(33,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(34,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(35,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(38,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(39,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(40,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(41,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(42,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(43,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(44,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(45,NULL,NULL,'(.*)',NULL,NULL,NULL),(46,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(47,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(50,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(51,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(52,NULL,NULL,'(.*)',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL),(54,NULL,NULL,'(.*)',NULL,NULL,NULL),(55,NULL,NULL,'(.*)',NULL,NULL,NULL),(56,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(57,NULL,NULL,'(.*)',NULL,NULL,NULL),(58,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(59,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(60,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(61,NULL,NULL,'(.*)',NULL,NULL,NULL),(62,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(63,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(64,NULL,NULL,'(.*)',NULL,NULL,NULL),(65,NULL,NULL,'(.*)',NULL,NULL,NULL),(66,NULL,NULL,'(.*)',NULL,NULL,NULL),(67,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(68,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(69,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(70,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(71,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(72,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(73,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(74,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(75,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(76,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(77,NULL,NULL,'file://',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,11,1),(2,31,32),(3,44,67),(4,57,70);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,3,16),(10,2,3),(11,3,1),(12,2,4),(13,3,2),(14,2,6),(15,3,3),(16,2,7),(17,3,4),(18,2,8),(19,3,5),(20,2,9),(21,3,6),(22,2,10),(23,3,7),(24,2,11),(25,3,9),(26,2,12),(27,3,12),(28,2,13),(29,3,15),(30,2,14),(31,4,1),(32,4,3),(33,4,6),(34,4,7),(35,4,8),(36,4,9),(37,4,11),(38,5,17),(39,5,1),(40,5,3),(41,5,6),(42,5,7),(43,5,8),(44,5,9),(45,5,11),(46,5,13),(47,6,1),(48,6,19),(49,6,2),(50,6,18),(51,6,3),(52,6,4),(53,6,5),(54,6,6),(55,6,7),(56,6,12),(57,6,15),(58,7,1),(59,7,3),(60,7,4),(61,7,5),(62,7,6),(63,7,7),(64,7,8),(65,7,9),(66,7,11),(67,7,12),(68,7,15),(69,7,19),(70,7,18),(71,7,21),(72,7,20);
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

-- Dump completed on 2015-10-12  3:29:27
