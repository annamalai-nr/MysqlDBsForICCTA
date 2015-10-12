-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_128
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(7,'android.intent.action.PACKAGE_ADDED'),(2,'android.intent.action.SIG_STR'),(6,'android.intent.action.VIEW'),(5,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'com.ps.llk',3),(2,'com.ps.ddp',10),(3,'com.wqx.blackjack',16),(4,'com.allen.txtdz',1),(5,'com.ps.llk',24),(6,'com.mogo.gongfupuzzle',5),(7,'com.gp.solitaire',458);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
INSERT INTO `Classes` VALUES (1,1,'com.ps.llk.MainActivity'),(2,1,'com.adwo.adsdk.AdwoAdBrowserActivity'),(3,1,'com.google.update.Dialog'),(4,2,'com.ps.ddp.MainActivity'),(5,1,'com.google.update.UpdateService'),(6,1,'com.google.update.Receiver'),(7,2,'com.ps.ddp.DemoApp'),(8,2,'com.ps.ddp.GameActivity'),(9,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(10,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(11,3,'com.wqx.blackjack.Blackjack'),(12,2,'com.google.update.Dialog'),(13,2,'com.waps.OffersWebView'),(14,2,'com.google.update.UpdateService'),(15,3,'com.wqx.blackjack.Card'),(16,2,'com.google.update.Receiver'),(17,3,'com.google.update.Dialog'),(18,3,'com.google.update.UpdateService'),(19,4,'com.allen.txtdz.txtReader'),(20,3,'com.google.update.Receiver'),(21,4,'com.allen.txtdz.ViewFileAct_Float'),(22,4,'com.allen.txtdz.Settings'),(23,5,'com.ps.llk.MainActivity'),(24,4,'com.eguan.state.Dialog'),(25,4,'com.eguan.state.StateService'),(26,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(27,4,'com.eguan.state.Receiver'),(28,5,'com.google.update.Dialog'),(29,5,'com.waps.OffersWebView'),(30,5,'com.google.update.UpdateService'),(31,5,'com.google.update.Receiver'),(32,6,'com.mogo.gongfupuzzle.begin'),(33,6,'com.mogo.gongfupuzzle.Main'),(34,6,'com.google.ads.AdActivity'),(35,6,'com.vpon.adon.android.WebInApp'),(36,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(37,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(38,6,'com.waps.OffersWebView'),(39,6,'com.google.update.Dialog'),(40,6,'com.google.update.UpdateService'),(41,6,'com.google.update.Receiver'),(42,7,'com.gp.solitaire.Solitaire'),(43,7,'com.google.update.Dialog'),(44,7,'cn.domob.android.ads.DomobActivity'),(45,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(46,7,'com.waps.OffersWebView'),(47,7,'com.google.update.UpdateService'),(48,7,'com.google.update.Receiver'),(49,1,'com.google.update.Dialog$1'),(50,1,'com.google.update.UpdateService$MyThread'),(51,1,'com.google.update.Dialog$2'),(52,4,'com.eguan.state.Dialog$1'),(53,1,'com.ju6.a'),(54,4,'com.eguan.state.StateService$MyThread'),(55,3,'com.google.update.Dialog$2'),(56,3,'com.google.update.UpdateService$AA'),(57,3,'com.google.update.Dialog$1'),(58,2,'com.google.update.UpdateService$AA'),(59,5,'com.google.update.Dialog$1'),(60,2,'com.waps.o'),(61,5,'com.waps.q'),(62,5,'com.google.update.Dialog$2'),(63,5,'com.google.update.UpdateService$AA'),(64,5,'com.waps.aa'),(65,2,'com.waps.AppConnect'),(66,5,'com.waps.x'),(67,2,'com.google.update.Dialog$2'),(68,2,'com.waps.q'),(69,6,'com.mogo.gongfupuzzle.begin$beginButtonListener'),(70,5,'com.waps.y'),(71,6,'com.google.update.Dialog$1'),(72,6,'com.google.update.Dialog$2'),(73,2,'com.waps.s'),(74,6,'com.waps.m'),(75,6,'com.ju6.a'),(76,2,'com.google.update.Dialog$1'),(77,5,'com.waps.o'),(78,6,'com.google.update.UpdateService$MyThread'),(79,2,'com.waps.z'),(80,6,'com.waps.k'),(81,6,'com.waps.AppConnect'),(82,7,'com.waps.o'),(83,2,'com.waps.aa'),(84,7,'cn.domob.android.ads.DomobAdManager'),(85,2,'com.waps.ac'),(86,7,'com.waps.q'),(87,7,'cn.domob.android.ads.DomobAdEngine$2'),(88,7,'com.google.update.Dialog$1'),(89,7,'com.google.update.Dialog$2'),(90,7,'com.waps.aa'),(91,7,'com.google.update.UpdateService$AA'),(92,7,'cn.domob.android.ads.i$6'),(93,7,'cn.domob.android.ads.i'),(94,7,'com.waps.z'),(95,7,'com.waps.ac'),(96,7,'cn.domob.android.ads.DomobActionReceiver');
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
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'shouldEnableBottomBar'),(2,2,'shouldResizeOverlay'),(3,2,'shouldMakeOverlayTransparent'),(4,5,'ST_START_DELAY'),(5,2,'overlayTitle'),(6,2,'overlayTransition'),(7,2,'shouldShowTitlebar'),(8,3,'MSG'),(9,2,'url'),(10,2,'transitionTime'),(11,5,'ST_MY_PID'),(12,24,'TYPEdsada'),(13,3,'TYPEdsada'),(14,24,'MSG'),(15,21,'/sdcard/txtbooks/dz.txt'),(16,9,'shouldEnableBottomBar'),(17,11,'mWinCount'),(18,15,'mCurrentScore'),(19,2,'shouldShowBottomBar'),(20,9,'overlayTransition'),(21,11,'mStartTime'),(22,11,'mMaxScore'),(23,9,'shouldShowTitlebar'),(24,11,'mCurrentScore'),(25,17,'MSG'),(26,9,'transitionTime'),(27,9,'shouldMakeOverlayTransparent'),(28,21,'book1'),(29,9,'url'),(30,15,'mStartTime'),(31,15,'mLoseCount'),(32,11,'mLoseCount'),(33,11,'mMoney'),(34,11,'Blackjack'),(35,18,'ST_START_DELAY'),(36,15,'mMoney'),(37,15,'mWinCount'),(38,18,'ST_MY_PID'),(39,17,'TYPEdsada'),(40,15,'mMaxScore'),(41,9,'overlayTitle'),(42,9,'shouldResizeOverlay'),(43,9,'shouldShowBottomBar'),(44,13,'Offers_URL'),(45,26,'transitionTime'),(46,26,'shouldMakeOverlayTransparent'),(47,29,'URL'),(48,30,'ST_START_DELAY'),(49,26,'shouldResizeOverlay'),(50,29,'UrlPath'),(51,26,'url'),(52,23,'APP_ID'),(53,29,'APP_ID'),(54,13,'isFinshClose'),(55,14,'CLIENT_PACKAGE'),(56,7,'CLIENT_PACKAGE'),(57,10,'CLIENT_PACKAGE'),(58,13,'URL'),(59,29,'offers_webview_tag'),(60,29,'ACTIVITY_FLAG'),(61,29,'Offers_URL'),(62,26,'shouldShowTitlebar'),(63,29,'isFinshClose'),(64,4,'CLIENT_PACKAGE'),(65,13,'CLIENT_PACKAGE'),(66,13,'UrlPath'),(67,12,'TYPEdsada'),(68,10,'overlayTransition'),(69,14,'ST_START_DELAY'),(70,29,'CLIENT_PACKAGE'),(71,10,'shouldShowTitlebar'),(72,29,'Notify_Id'),(73,28,'TYPEdsada'),(74,29,'USER_ID'),(75,29,'URL_PARAMS'),(76,26,'overlayTitle'),(77,29,'Notify_Url_Params'),(78,29,'SHWO_FLAG'),(79,10,'url'),(80,14,'ST_MY_PID'),(81,4,'APP_ID'),(82,13,'APP_ID'),(83,14,'APP_ID'),(84,7,'APP_ID'),(85,26,'shouldShowBottomBar'),(86,10,'APP_ID'),(87,12,'MSG'),(88,37,'shouldResizeOverlay'),(89,10,'shouldMakeOverlayTransparent'),(90,35,'url'),(91,13,'ACTIVITY_FLAG'),(92,40,'ST_MY_PID'),(93,13,'offers_webview_tag'),(94,36,'Adwo_PID'),(95,13,'Notify_Url_Params'),(96,13,'Notify_Id'),(97,13,'SHWO_FLAG'),(98,4,'DEVICE_ID'),(99,13,'DEVICE_ID'),(100,14,'DEVICE_ID'),(101,7,'DEVICE_ID'),(102,10,'DEVICE_ID'),(103,37,'shouldShowTitlebar'),(104,23,'WAPS_PID'),(105,29,'WAPS_PID'),(106,23,'DEVICE_ID'),(107,29,'DEVICE_ID'),(108,23,'WAPS_ID'),(109,32,'WAPS_ID'),(110,29,'WAPS_ID'),(111,35,'adWidth'),(112,32,'APP_ID'),(113,37,'shouldShowBottomBar'),(114,37,'overlayTransition'),(115,38,'Offers_URL'),(116,38,'URL'),(117,39,'TYPEdsada'),(118,23,'CLIENT_PACKAGE'),(119,26,'shouldEnableBottomBar'),(120,32,'DEVICE_ID'),(121,36,'isTestMode'),(122,28,'MSG'),(123,10,'transitionTime'),(124,32,'CLIENT_PACKAGE'),(125,37,'overlayTitle'),(126,32,'WAPS_PID'),(127,4,'WAPS_ID'),(128,13,'WAPS_ID'),(129,14,'WAPS_ID'),(130,7,'WAPS_ID'),(131,10,'WAPS_ID'),(132,26,'overlayTransition'),(133,30,'ST_MY_PID'),(134,39,'MSG'),(135,38,'URL_PARAMS'),(136,38,'isFinshClose'),(137,38,'USER_ID'),(138,37,'shouldMakeOverlayTransparent'),(139,10,'overlayTitle'),(140,10,'shouldEnableBottomBar'),(141,10,'shouldShowBottomBar'),(142,10,'shouldResizeOverlay'),(143,37,'transitionTime'),(144,37,'url'),(145,40,'ST_START_DELAY'),(146,37,'shouldEnableBottomBar'),(147,38,'CLIENT_PACKAGE'),(148,13,'USER_ID'),(149,47,'ST_MY_PID'),(150,46,'URL'),(151,46,'APP_ID'),(152,42,'APP_ID'),(153,13,'URL_PARAMS'),(154,45,'url'),(155,46,'CLIENT_PACKAGE'),(156,46,'isFinshClose'),(157,4,'WAPS_PID'),(158,13,'WAPS_PID'),(159,46,'UrlPath'),(160,14,'WAPS_PID'),(161,46,'Notify_Id'),(162,7,'WAPS_PID'),(163,10,'WAPS_PID'),(164,47,'DOMOB_ALLOW_LOCATION'),(165,42,'DOMOB_ALLOW_LOCATION'),(166,45,'DOMOB_ALLOW_LOCATION'),(167,46,'Offers_URL'),(168,45,'overlayTitle'),(169,46,'WAPS_ID'),(170,42,'WAPS_ID'),(171,45,'overlayTransition'),(172,46,'WAPS_PID'),(173,42,'WAPS_PID'),(174,45,'shouldShowBottomBar'),(175,43,'MSG'),(176,43,'TYPEdsada'),(177,42,'CLIENT_PACKAGE'),(178,46,'DEVICE_ID'),(179,42,'DEVICE_ID'),(180,46,'Notify_Url_Params'),(181,45,'shouldResizeOverlay'),(182,45,'shouldMakeOverlayTransparent'),(183,47,'DOMOB_PID'),(184,42,'DOMOB_PID'),(185,45,'DOMOB_PID'),(186,44,'actType'),(187,46,'URL_PARAMS'),(188,44,'appId'),(189,47,'ST_START_DELAY'),(190,44,'appName'),(191,45,'shouldEnableBottomBar'),(192,46,'ACTIVITY_FLAG'),(193,47,'DOMOB_TEST_MODE'),(194,42,'DOMOB_TEST_MODE'),(195,45,'DOMOB_TEST_MODE'),(196,46,'SHWO_FLAG'),(197,45,'transitionTime'),(198,45,'shouldShowTitlebar'),(199,46,'offers_webview_tag'),(200,46,'USER_ID');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'r',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'s',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'s',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'s',0,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'s',0,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'s',0,NULL,NULL),(48,48,'r',1,NULL,NULL),(49,61,'r',1,NULL,NULL),(50,68,'r',1,NULL,NULL),(51,74,'r',1,NULL,NULL),(52,86,'r',1,NULL,NULL),(53,96,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,5),(3,3,5),(4,4,3),(5,5,19),(6,6,6),(7,7,21),(8,8,24),(9,9,5),(10,10,5),(11,11,25),(12,12,20),(13,13,25),(14,14,11),(15,15,25),(16,16,11),(17,17,27),(18,18,17),(19,19,18),(20,20,18),(21,21,17),(22,22,14),(23,23,11),(24,24,14),(25,25,18),(26,26,13),(27,27,28),(28,28,4),(29,29,13),(30,30,28),(31,31,4),(32,32,30),(33,33,4),(34,34,13),(35,35,29),(36,36,7),(37,37,29),(38,38,12),(39,39,29),(40,40,32),(41,41,29),(42,42,39),(43,43,4),(44,44,39),(45,45,14),(46,45,7),(47,45,10),(48,46,30),(49,47,40),(50,48,30),(51,49,12),(52,50,40),(53,51,31),(54,52,16),(55,53,29),(56,54,40),(57,55,13),(58,56,29),(59,57,38),(60,58,29),(61,59,7),(62,60,14),(63,61,40),(64,62,32),(65,63,4),(66,64,14),(67,64,10),(68,64,7),(69,65,41),(70,66,46),(71,67,13),(72,68,46),(73,69,45),(74,69,47),(75,69,42),(76,70,14),(77,70,10),(78,70,7),(79,71,47),(80,72,13),(81,73,46),(82,74,47),(83,74,45),(84,74,42),(85,75,48),(86,76,43),(87,77,43),(88,78,47),(89,79,46),(90,80,47),(91,81,42),(92,81,45),(93,81,47),(94,82,47),(95,82,45),(96,82,42),(97,83,46),(98,84,46);
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,49,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(2,50,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(3,5,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(4,51,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(5,19,'<com.allen.txtdz.txtReader: void onClick(android.view.View)>',10,'a',NULL),(6,6,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(7,21,'<com.allen.txtdz.ViewFileAct_Float: boolean onMenuItemSelected(int,android.view.MenuItem)>',9,'a',NULL),(8,52,'<com.eguan.state.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(9,53,'<com.ju6.a: boolean b()>',178,'p',NULL),(10,5,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(11,54,'<com.eguan.state.StateService$MyThread: void run()>',39,'a',NULL),(12,20,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(13,25,'<com.eguan.state.StateService: int setUsbEnabled()>',34,'a',NULL),(14,11,'<com.wqx.blackjack.Blackjack: boolean onOptionsItemSelected(android.view.MenuItem)>',43,'a',NULL),(15,25,'<com.eguan.state.StateService: void getPermission2()>',78,'a',NULL),(16,11,'<com.wqx.blackjack.Blackjack: void onClick(android.view.View)>',33,'a',NULL),(17,27,'<com.eguan.state.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(18,55,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(19,56,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(20,18,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(21,57,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(22,58,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(23,11,'<com.wqx.blackjack.Blackjack: boolean onKeyDown(int,android.view.KeyEvent)>',37,'a',NULL),(24,14,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(25,18,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(26,13,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(27,59,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(28,4,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',40,'a',NULL),(29,60,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(30,62,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(31,4,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',36,'a',NULL),(32,63,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(33,4,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',15,'a',NULL),(34,13,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',328,'a',NULL),(35,64,'<com.waps.aa: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(36,65,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',13,'a',NULL),(37,66,'<com.waps.x: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(38,67,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(39,29,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',41,'a',NULL),(40,69,'<com.mogo.gongfupuzzle.begin$beginButtonListener: void onClick(android.view.View)>',36,'a',NULL),(41,70,'<com.waps.y: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(42,71,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(43,4,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',29,'a',NULL),(44,72,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(45,73,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(46,30,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(47,75,'<com.ju6.a: boolean b()>',178,'p',NULL),(48,30,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(49,76,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(50,40,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(51,31,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(52,16,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(53,77,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(54,78,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(55,79,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(56,29,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',356,'a',NULL),(57,80,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(58,29,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(59,65,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(60,14,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(61,40,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(62,81,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(63,4,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',22,'a',NULL),(64,73,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(65,41,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(66,82,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(67,83,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(68,46,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(69,84,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(70,73,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(71,47,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(72,85,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(73,46,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(74,87,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(75,48,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(76,88,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(77,89,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(78,47,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(79,90,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(80,91,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(81,92,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(82,93,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(83,94,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(84,95,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL);
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
INSERT INTO `IActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,7,5),(6,11,5),(7,13,1),(8,15,1),(9,24,5),(10,25,1),(11,26,1),(12,29,1),(13,30,1),(14,31,1),(15,32,1),(16,38,1),(17,40,1),(18,41,1),(19,42,1),(20,44,6),(21,45,5),(22,47,1),(23,49,1),(24,53,6),(25,54,5),(26,55,1),(27,56,1),(28,59,1),(29,61,1),(30,63,5),(31,65,1),(32,67,1),(33,69,1),(34,70,1),(35,72,1),(36,75,1),(37,79,6),(38,80,1),(39,81,1),(40,82,6),(41,85,6),(42,87,1),(43,88,1),(44,95,6),(45,96,6),(46,98,6),(47,101,1),(48,102,1),(49,110,1),(50,111,1),(51,112,5),(52,117,1),(53,118,1),(54,119,6),(55,121,6),(56,122,6),(57,123,6),(58,124,6),(59,125,6),(60,126,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,2),(5,13,2),(6,15,1),(7,25,1),(8,26,2),(9,29,1),(10,30,2),(11,31,2),(12,32,1),(13,38,1),(14,40,2),(15,41,1),(16,42,2),(17,47,1),(18,49,2),(19,55,1),(20,56,2),(21,59,1),(22,61,2),(23,65,1),(24,67,2),(25,69,1),(26,70,2),(27,72,1),(28,75,2),(29,80,2),(30,81,1),(31,87,1),(32,88,2),(33,101,1),(34,102,2),(35,110,1),(36,111,2),(37,117,1),(38,118,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,5,'com/google/update/Dialog'),(2,6,'com/google/update/Dialog'),(3,8,'com/allen/txtdz/ViewFileAct_Float'),(4,9,'com/google/update/UpdateService'),(5,10,'com/allen/txtdz/Settings'),(6,12,'com/google/update/Dialog'),(7,14,'com/google/update/Dialog'),(8,16,'com/google/update/UpdateService'),(9,17,'com/eguan/state/Dialog'),(10,18,'com/wqx/blackjack/Blackjack'),(11,19,'com/eguan/state/Dialog'),(12,20,'com/eguan/state/Dialog'),(13,21,'com/eguan/state/Dialog'),(14,23,'com/eguan/state/StateService'),(15,22,'com/wqx/blackjack/Card'),(16,27,'com/google/update/Dialog'),(17,28,'com/google/update/Dialog'),(18,34,'com/google/update/Dialog'),(19,33,'com/wqx/blackjack/Card'),(20,35,'com/google/update/Dialog'),(21,36,'com/google/update/Dialog'),(22,39,'com/google/update/Dialog'),(23,43,'com/ps/ddp/DemoApp'),(24,46,'com/ps/ddp/GameActivity'),(25,48,'com/ps/ddp/GameActivity'),(26,50,'(.*)'),(27,51,'NULL-CONSTANT'),(28,52,'com/waps/OffersWebView'),(29,57,'com/mogo/gongfupuzzle/Main'),(30,58,'com/waps/OffersWebView'),(31,60,'com/waps/OffersWebView'),(32,62,'com/ps/ddp/GameActivity'),(33,66,'com/google/update/Dialog'),(34,68,'com/google/update/Dialog'),(35,71,'com/google/update/Dialog'),(36,73,'com/google/update/Dialog'),(37,74,'com/google/update/Dialog'),(38,76,'com/google/update/Dialog'),(39,77,'com/google/update/UpdateService'),(40,78,'com/google/update/UpdateService'),(41,83,'(.*)'),(42,86,'com/waps/OffersWebView'),(43,89,'com/google/update/Dialog'),(44,90,'com/google/update/Dialog'),(45,91,'com/google/update/Dialog'),(46,92,'com/google/update/Dialog'),(47,94,'com/ps/ddp/GameActivity'),(48,93,'com/waps/OffersWebView'),(49,97,'com/google/update/UpdateService'),(50,99,'com/waps/OffersWebView'),(51,103,'com/waps/OffersWebView'),(52,104,'com/waps/OffersWebView'),(53,105,'com/google/update/Dialog'),(54,106,'NULL-CONSTANT'),(55,107,'com/google/update/Dialog'),(56,108,'(.*)'),(57,109,'com/google/update/UpdateService'),(58,113,'com/google/update/Dialog'),(59,114,'com/google/update/Dialog'),(60,115,'com/waps/OffersWebView'),(61,116,'com/waps/OffersWebView'),(62,127,'NULL-CONSTANT');
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
INSERT INTO `IData` VALUES (1,44,2),(2,53,3),(3,79,5),(4,82,6),(5,85,7),(6,95,8),(7,96,9),(8,98,10),(9,119,12),(10,121,13),(11,122,14),(12,123,15),(13,124,16),(14,125,17),(15,126,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,5,'TYPEdsada'),(2,6,'MSG'),(3,6,'TYPEdsada'),(4,8,'book1'),(5,8,'/sdcard/txtbooks/dz.txt'),(6,12,'TYPEdsada'),(7,14,'MSG'),(8,14,'TYPEdsada'),(9,17,'MSG'),(10,17,'TYPEdsada'),(11,19,'TYPEdsada'),(12,20,'MSG'),(13,20,'TYPEdsada'),(14,21,'TYPEdsada'),(15,22,'mMaxScore'),(16,22,'mMoney'),(17,22,'mWinCount'),(18,22,'mLoseCount'),(19,22,'mStartTime'),(20,22,'mCurrentScore'),(21,27,'MSG'),(22,27,'TYPEdsada'),(23,28,'TYPEdsada'),(24,33,'mMaxScore'),(25,33,'mMoney'),(26,33,'mWinCount'),(27,33,'mLoseCount'),(28,34,'TYPEdsada'),(29,33,'mStartTime'),(30,33,'mCurrentScore'),(31,35,'MSG'),(32,35,'TYPEdsada'),(33,36,'MSG'),(34,36,'TYPEdsada'),(35,39,'TYPEdsada'),(36,46,'type'),(37,48,'type'),(38,52,'USER_ID'),(39,52,'CLIENT_PACKAGE'),(40,52,'Offers_URL'),(41,52,'offers_webview_tag'),(42,52,'URL_PARAMS'),(43,58,'Notify_Url_Params'),(44,58,'UrlPath'),(45,58,'ACTIVITY_FLAG'),(46,58,'isFinshClose'),(47,58,'offers_webview_tag'),(48,60,'UrlPath'),(49,60,'ACTIVITY_FLAG'),(50,60,'isFinshClose'),(51,60,'offers_webview_tag'),(52,62,'type'),(53,66,'TYPEdsada'),(54,68,'MSG'),(55,68,'TYPEdsada'),(56,71,'TYPEdsada'),(57,73,'MSG'),(58,73,'TYPEdsada'),(59,74,'TYPEdsada'),(60,76,'MSG'),(61,76,'TYPEdsada'),(62,86,'USER_ID'),(63,86,'CLIENT_PACKAGE'),(64,86,'Offers_URL'),(65,86,'offers_webview_tag'),(66,86,'URL_PARAMS'),(67,89,'TYPEdsada'),(68,90,'TYPEdsada'),(69,91,'MSG'),(70,91,'TYPEdsada'),(71,92,'MSG'),(72,92,'TYPEdsada'),(73,93,'USER_ID'),(74,94,'type'),(75,93,'CLIENT_PACKAGE'),(76,93,'Offers_URL'),(77,93,'URL_PARAMS'),(78,99,'UrlPath'),(79,99,'ACTIVITY_FLAG'),(80,99,'isFinshClose'),(81,99,'offers_webview_tag'),(82,103,'Notify_Url_Params'),(83,103,'UrlPath'),(84,103,'ACTIVITY_FLAG'),(85,103,'isFinshClose'),(86,103,'offers_webview_tag'),(87,104,'CLIENT_PACKAGE'),(88,104,'URL'),(89,104,'isFinshClose'),(90,104,'offers_webview_tag'),(91,105,'MSG'),(92,105,'TYPEdsada'),(93,107,'TYPEdsada'),(94,113,'MSG'),(95,113,'TYPEdsada'),(96,114,'TYPEdsada'),(97,115,'UrlPath'),(98,115,'ACTIVITY_FLAG'),(99,115,'isFinshClose'),(100,115,'offers_webview_tag'),(101,116,'Notify_Url_Params'),(102,116,'UrlPath'),(103,116,'ACTIVITY_FLAG'),(104,116,'isFinshClose'),(105,116,'offers_webview_tag');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,4),(4,3,2),(5,3,3),(6,4,1),(7,5,3),(8,5,2),(9,5,4),(10,6,1),(11,7,2),(12,7,3),(13,7,4),(14,8,1),(15,9,4),(16,9,2),(17,9,3),(18,10,3),(19,10,4),(20,10,2),(21,11,1),(22,12,4),(23,12,3),(24,12,2),(25,13,1),(26,14,2),(27,14,4),(28,14,3),(29,15,7),(30,16,7),(31,17,7),(32,18,7),(33,19,7);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,4,1),(4,6,1),(5,8,1),(6,11,1),(7,13,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,15,'package',NULL,NULL,NULL,NULL,NULL),(2,16,'package',NULL,NULL,NULL,NULL,NULL),(3,17,'package',NULL,NULL,NULL,NULL,NULL),(4,18,'package',NULL,NULL,NULL,NULL,NULL),(5,19,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,44,'application','vnd.android.package-archive'),(2,53,'application','vnd.android.package-archive'),(3,79,'application','vnd.android.package-archive'),(4,82,'application','vnd.android.package-archive'),(5,85,'application','vnd.android.package-archive'),(6,98,'application','vnd.android.package-archive'),(7,119,'application','vnd.android.package-archive'),(8,121,'application','vnd.android.package-archive'),(9,122,'application','vnd.android.package-archive'),(10,123,'application','vnd.android.package-archive'),(11,124,'application','vnd.android.package-archive'),(12,126,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.noshufou.android.su'),(2,2,'com.noshufou.android.su'),(3,3,'com.ps.llk'),(4,4,'com.ps.llk'),(5,5,'com.ps.llk'),(6,6,'com.ps.llk'),(7,8,'com.allen.txtdz'),(8,9,'com.ps.llk'),(9,10,'com.allen.txtdz'),(10,12,'com.ps.llk'),(11,13,'com.allen.txtdz'),(12,14,'com.ps.llk'),(13,15,'com.allen.txtdz'),(14,16,'com.wqx.blackjack'),(15,17,'com.allen.txtdz'),(16,18,'com.wqx.blackjack'),(17,19,'com.allen.txtdz'),(18,20,'com.allen.txtdz'),(19,21,'com.allen.txtdz'),(20,23,'com.allen.txtdz'),(21,22,'com.wqx.blackjack'),(22,25,'com.wqx.blackjack'),(23,26,'com.wqx.blackjack'),(24,27,'com.wqx.blackjack'),(25,28,'com.wqx.blackjack'),(26,29,'com.noshufou.android.su'),(27,30,'com.ps.ddp'),(28,31,'com.noshufou.android.su'),(29,32,'com.ps.ddp'),(30,34,'com.ps.ddp'),(31,33,'com.wqx.blackjack'),(32,35,'com.ps.ddp'),(33,36,'com.wqx.blackjack'),(34,38,'(.*)'),(35,39,'com.wqx.blackjack'),(36,40,'(.*)'),(37,41,'com.noshufou.android.su'),(38,43,'com.ps.ddp'),(39,42,'com.noshufou.android.su'),(40,46,'com.ps.ddp'),(41,47,'com.ps.llk'),(42,48,'com.ps.ddp'),(43,49,'com.ps.llk'),(44,50,'(.*)'),(45,51,'NULL-CONSTANT'),(46,52,'com.ps.ddp'),(47,55,'(.*)'),(48,56,'(.*)'),(49,57,'com.mogo.gongfupuzzle'),(50,58,'com.ps.llk'),(51,59,'com.noshufou.android.su'),(52,61,'com.noshufou.android.su'),(53,60,'com.ps.llk'),(54,62,'com.ps.ddp'),(55,65,'(.*)'),(56,66,'com.ps.llk'),(57,67,'(.*)'),(58,68,'com.ps.llk'),(59,69,'NULL-CONSTANT'),(60,70,'NULL-CONSTANT'),(61,71,'com.ps.llk'),(62,72,'com.noshufou.android.su'),(63,73,'com.ps.llk'),(64,74,'com.mogo.gongfupuzzle'),(65,75,'com.noshufou.android.su'),(66,77,'com.ps.llk'),(67,76,'com.mogo.gongfupuzzle'),(68,78,'com.ps.ddp'),(69,80,'com.mogo.gongfupuzzle'),(70,81,'com.mogo.gongfupuzzle'),(71,83,'(.*)'),(72,87,'(.*)'),(73,86,'com.ps.ddp'),(74,88,'(.*)'),(75,89,'com.ps.ddp'),(76,90,'com.mogo.gongfupuzzle'),(77,91,'com.ps.ddp'),(78,92,'com.mogo.gongfupuzzle'),(79,94,'com.ps.ddp'),(80,93,'com.mogo.gongfupuzzle'),(81,97,'com.mogo.gongfupuzzle'),(82,101,'(.*)'),(83,99,'com.ps.ddp'),(84,102,'(.*)'),(85,103,'com.ps.ddp'),(86,104,'com.ps.ddp'),(87,105,'com.gp.solitaire'),(88,106,'NULL-CONSTANT'),(89,107,'com.gp.solitaire'),(90,108,'(.*)'),(91,109,'com.gp.solitaire'),(92,110,'com.noshufou.android.su'),(93,111,'com.noshufou.android.su'),(94,113,'com.gp.solitaire'),(95,114,'com.gp.solitaire'),(96,115,'com.gp.solitaire'),(97,116,'com.gp.solitaire'),(98,117,'com.gp.solitaire'),(99,118,'com.gp.solitaire'),(100,127,'NULL-CONSTANT');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,6,0),(4,11,0),(5,16,0),(6,19,0),(7,20,0),(8,23,0),(9,27,0),(10,31,0),(11,32,0),(12,41,0),(13,42,0),(14,48,0),(15,49,0),(16,50,0),(17,51,0),(18,52,0),(19,53,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,2,1,0),(4,2,1,0),(5,3,0,0),(6,3,0,0),(7,4,1,0),(8,5,0,0),(9,6,0,0),(10,7,0,0),(11,8,1,0),(12,10,0,0),(13,11,1,0),(14,10,0,0),(15,11,1,0),(16,12,0,0),(17,13,0,0),(18,14,0,0),(19,13,0,0),(20,15,0,0),(21,15,0,0),(22,16,0,0),(23,17,0,0),(24,18,1,0),(25,19,1,0),(26,19,1,0),(27,20,0,0),(28,20,0,0),(29,21,1,0),(30,22,1,0),(31,21,1,0),(32,22,1,0),(33,23,0,0),(34,24,0,0),(35,24,0,0),(36,25,0,0),(37,26,1,0),(38,26,1,0),(39,25,0,0),(40,26,1,0),(41,27,1,0),(42,27,1,0),(43,28,0,0),(44,29,1,0),(45,30,1,0),(46,31,0,0),(47,32,1,0),(48,33,0,0),(49,32,1,0),(50,34,0,0),(51,35,0,0),(52,36,0,0),(53,37,1,0),(54,38,1,0),(55,39,1,0),(56,39,1,0),(57,40,0,0),(58,41,0,0),(59,42,1,0),(60,41,0,0),(61,42,1,0),(62,43,0,0),(63,44,1,0),(64,45,1,0),(65,45,1,0),(66,46,0,0),(67,45,1,0),(68,46,0,0),(69,45,1,0),(70,45,1,0),(71,48,0,0),(72,49,1,0),(73,48,0,0),(74,50,0,0),(75,49,1,0),(76,50,0,0),(77,51,0,0),(78,52,0,0),(79,53,1,0),(80,54,1,0),(81,54,1,0),(82,55,1,0),(83,56,0,0),(84,58,1,0),(85,57,1,0),(86,59,0,0),(87,58,1,0),(88,58,1,0),(89,60,0,0),(90,61,0,0),(91,60,0,0),(92,61,0,0),(93,62,0,0),(94,63,0,0),(95,64,1,0),(96,64,1,0),(97,65,0,0),(98,66,1,0),(99,67,0,0),(100,68,1,0),(101,68,1,0),(102,68,1,0),(103,67,0,0),(104,70,0,0),(105,71,0,0),(106,72,0,0),(107,71,0,0),(108,73,0,0),(109,75,0,0),(110,76,1,0),(111,76,1,0),(112,77,1,0),(113,78,0,0),(114,78,0,0),(115,79,0,0),(116,79,0,0),(117,80,1,0),(118,80,1,0),(119,81,1,0),(120,81,1,0),(121,81,1,0),(122,81,1,0),(123,81,1,0),(124,81,1,0),(125,82,1,0),(126,83,1,0),(127,84,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=350 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,37,1,2,NULL),(2,38,1,2,NULL),(3,40,1,2,NULL),(4,55,1,2,NULL),(5,56,1,2,NULL),(6,84,1,2,NULL),(7,87,1,2,NULL),(8,88,1,2,NULL),(9,100,1,2,NULL),(10,101,1,2,NULL),(11,102,1,2,NULL),(12,5,3,2,NULL),(13,5,12,2,NULL),(14,5,17,2,NULL),(15,5,28,2,NULL),(16,5,39,2,NULL),(17,5,43,2,NULL),(18,6,3,2,NULL),(19,6,12,2,NULL),(20,6,17,2,NULL),(21,6,28,2,NULL),(22,6,39,2,NULL),(23,6,43,2,NULL),(24,12,3,2,NULL),(25,12,12,2,NULL),(26,12,17,2,NULL),(27,12,28,2,NULL),(28,12,39,2,NULL),(29,12,43,2,NULL),(30,14,3,2,NULL),(31,14,12,2,NULL),(32,14,17,2,NULL),(33,14,28,2,NULL),(34,14,39,2,NULL),(35,14,43,2,NULL),(36,9,5,2,NULL),(37,9,14,2,NULL),(38,9,18,2,NULL),(39,9,30,2,NULL),(40,9,40,2,NULL),(41,9,47,2,NULL),(42,37,6,2,NULL),(43,38,6,2,NULL),(44,40,6,2,NULL),(45,55,6,2,NULL),(46,56,6,2,NULL),(47,84,6,2,NULL),(48,87,6,2,NULL),(49,88,6,2,NULL),(50,100,6,2,NULL),(51,101,6,2,NULL),(52,102,6,2,NULL),(53,37,23,2,NULL),(54,38,23,2,NULL),(55,40,23,2,NULL),(56,55,23,2,NULL),(57,56,23,2,NULL),(58,84,23,2,NULL),(59,87,23,2,NULL),(60,88,23,2,NULL),(61,100,23,2,NULL),(62,101,23,2,NULL),(63,102,23,2,NULL),(64,55,4,2,NULL),(65,56,4,2,NULL),(66,84,4,2,NULL),(67,87,4,2,NULL),(68,88,4,2,NULL),(69,55,16,2,NULL),(70,56,16,2,NULL),(71,84,16,2,NULL),(72,87,16,2,NULL),(73,88,16,2,NULL),(74,55,11,2,NULL),(75,56,11,2,NULL),(76,84,11,2,NULL),(77,87,11,2,NULL),(78,88,11,2,NULL),(79,55,20,2,NULL),(80,56,20,2,NULL),(81,84,20,2,NULL),(82,87,20,2,NULL),(83,88,20,2,NULL),(84,55,19,2,NULL),(85,56,19,2,NULL),(86,84,19,2,NULL),(87,87,19,2,NULL),(88,88,19,2,NULL),(89,55,27,2,NULL),(90,56,27,2,NULL),(91,84,27,2,NULL),(92,87,27,2,NULL),(93,88,27,2,NULL),(94,55,31,2,NULL),(95,56,31,2,NULL),(96,84,31,2,NULL),(97,87,31,2,NULL),(98,88,31,2,NULL),(99,55,32,2,NULL),(100,56,32,2,NULL),(101,84,32,2,NULL),(102,87,32,2,NULL),(103,88,32,2,NULL),(104,55,41,2,NULL),(105,56,41,2,NULL),(106,84,41,2,NULL),(107,87,41,2,NULL),(108,88,41,2,NULL),(109,55,42,2,NULL),(110,56,42,2,NULL),(111,84,42,2,NULL),(112,87,42,2,NULL),(113,88,42,2,NULL),(114,55,48,2,NULL),(115,56,48,2,NULL),(116,84,48,2,NULL),(117,87,48,2,NULL),(118,88,48,2,NULL),(119,66,3,2,NULL),(120,66,12,2,NULL),(121,66,17,2,NULL),(122,66,28,2,NULL),(123,66,39,2,NULL),(124,66,43,2,NULL),(125,68,3,2,NULL),(126,68,12,2,NULL),(127,68,17,2,NULL),(128,68,28,2,NULL),(129,68,39,2,NULL),(130,68,43,2,NULL),(131,71,3,2,NULL),(132,71,12,2,NULL),(133,71,17,2,NULL),(134,71,28,2,NULL),(135,71,39,2,NULL),(136,71,43,2,NULL),(137,73,3,2,NULL),(138,73,12,2,NULL),(139,73,17,2,NULL),(140,73,28,2,NULL),(141,73,39,2,NULL),(142,73,43,2,NULL),(143,77,5,2,NULL),(144,77,14,2,NULL),(145,77,18,2,NULL),(146,77,30,2,NULL),(147,77,40,2,NULL),(148,77,47,2,NULL),(149,37,31,2,NULL),(150,38,31,2,NULL),(151,40,31,2,NULL),(152,100,31,2,NULL),(153,101,31,2,NULL),(154,102,31,2,NULL),(155,37,42,2,NULL),(156,38,42,2,NULL),(157,40,42,2,NULL),(158,100,42,2,NULL),(159,101,42,2,NULL),(160,102,42,2,NULL),(161,100,4,2,NULL),(162,101,4,2,NULL),(163,102,4,2,NULL),(164,100,16,2,NULL),(165,101,16,2,NULL),(166,102,16,2,NULL),(167,100,11,2,NULL),(168,101,11,2,NULL),(169,102,11,2,NULL),(170,100,20,2,NULL),(171,101,20,2,NULL),(172,102,20,2,NULL),(173,100,19,2,NULL),(174,101,19,2,NULL),(175,102,19,2,NULL),(176,100,27,2,NULL),(177,101,27,2,NULL),(178,102,27,2,NULL),(179,100,32,2,NULL),(180,101,32,2,NULL),(181,102,32,2,NULL),(182,100,41,2,NULL),(183,101,41,2,NULL),(184,102,41,2,NULL),(185,100,48,2,NULL),(186,101,48,2,NULL),(187,102,48,2,NULL),(188,105,3,2,NULL),(189,105,12,2,NULL),(190,105,17,2,NULL),(191,105,28,2,NULL),(192,105,39,2,NULL),(193,105,43,2,NULL),(194,107,3,2,NULL),(195,107,12,2,NULL),(196,107,17,2,NULL),(197,107,28,2,NULL),(198,107,39,2,NULL),(199,107,43,2,NULL),(200,113,3,2,NULL),(201,113,12,2,NULL),(202,113,17,2,NULL),(203,113,28,2,NULL),(204,113,39,2,NULL),(205,113,43,2,NULL),(206,114,3,2,NULL),(207,114,12,2,NULL),(208,114,17,2,NULL),(209,114,28,2,NULL),(210,114,39,2,NULL),(211,114,43,2,NULL),(212,109,5,2,NULL),(213,109,14,2,NULL),(214,109,18,2,NULL),(215,109,30,2,NULL),(216,109,40,2,NULL),(217,109,47,2,NULL),(218,37,48,2,NULL),(219,38,48,2,NULL),(220,40,48,2,NULL),(221,18,11,2,NULL),(222,22,15,2,NULL),(223,33,15,2,NULL),(224,37,11,2,NULL),(225,38,11,2,NULL),(226,40,11,2,NULL),(227,27,3,2,NULL),(228,27,12,2,NULL),(229,27,17,2,NULL),(230,27,28,2,NULL),(231,27,39,2,NULL),(232,27,43,2,NULL),(233,28,3,2,NULL),(234,28,12,2,NULL),(235,28,17,2,NULL),(236,28,28,2,NULL),(237,28,39,2,NULL),(238,28,43,2,NULL),(239,36,3,2,NULL),(240,36,12,2,NULL),(241,36,17,2,NULL),(242,36,28,2,NULL),(243,36,39,2,NULL),(244,36,43,2,NULL),(245,39,3,2,NULL),(246,39,12,2,NULL),(247,39,17,2,NULL),(248,39,28,2,NULL),(249,39,39,2,NULL),(250,39,43,2,NULL),(251,16,5,2,NULL),(252,16,14,2,NULL),(253,16,18,2,NULL),(254,16,30,2,NULL),(255,16,40,2,NULL),(256,16,47,2,NULL),(257,37,20,2,NULL),(258,38,20,2,NULL),(259,40,20,2,NULL),(260,43,7,2,NULL),(261,46,8,2,NULL),(262,48,8,2,NULL),(263,62,8,2,NULL),(264,94,8,2,NULL),(265,37,4,2,NULL),(266,38,4,2,NULL),(267,40,4,2,NULL),(268,37,16,2,NULL),(269,38,16,2,NULL),(270,40,16,2,NULL),(271,37,19,2,NULL),(272,38,19,2,NULL),(273,40,19,2,NULL),(274,37,27,2,NULL),(275,38,27,2,NULL),(276,40,27,2,NULL),(277,37,32,2,NULL),(278,38,32,2,NULL),(279,40,32,2,NULL),(280,37,41,2,NULL),(281,38,41,2,NULL),(282,40,41,2,NULL),(283,34,3,2,NULL),(284,34,12,2,NULL),(285,34,17,2,NULL),(286,34,28,2,NULL),(287,34,39,2,NULL),(288,34,43,2,NULL),(289,35,3,2,NULL),(290,35,12,2,NULL),(291,35,17,2,NULL),(292,35,28,2,NULL),(293,35,39,2,NULL),(294,35,43,2,NULL),(295,89,3,2,NULL),(296,89,12,2,NULL),(297,89,17,2,NULL),(298,89,28,2,NULL),(299,89,39,2,NULL),(300,89,43,2,NULL),(301,91,3,2,NULL),(302,91,12,2,NULL),(303,91,17,2,NULL),(304,91,28,2,NULL),(305,91,39,2,NULL),(306,91,43,2,NULL),(307,78,5,2,NULL),(308,78,14,2,NULL),(309,78,18,2,NULL),(310,78,30,2,NULL),(311,78,40,2,NULL),(312,78,47,2,NULL),(313,8,21,2,NULL),(314,10,22,2,NULL),(315,17,24,2,NULL),(316,19,24,2,NULL),(317,20,24,2,NULL),(318,21,24,2,NULL),(319,23,25,2,NULL),(320,74,3,2,NULL),(321,74,12,2,NULL),(322,74,17,2,NULL),(323,74,28,2,NULL),(324,74,39,2,NULL),(325,74,43,2,NULL),(326,76,3,2,NULL),(327,76,12,2,NULL),(328,76,17,2,NULL),(329,76,28,2,NULL),(330,76,39,2,NULL),(331,76,43,2,NULL),(332,90,3,2,NULL),(333,90,12,2,NULL),(334,90,17,2,NULL),(335,90,28,2,NULL),(336,90,39,2,NULL),(337,90,43,2,NULL),(338,92,3,2,NULL),(339,92,12,2,NULL),(340,92,17,2,NULL),(341,92,28,2,NULL),(342,92,39,2,NULL),(343,92,43,2,NULL),(344,97,5,2,NULL),(345,97,14,2,NULL),(346,97,18,2,NULL),(347,97,30,2,NULL),(348,97,40,2,NULL),(349,97,47,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_COARSE_LOCATION'),(15,'android.permission.ACCESS_FINE_LOCATION'),(16,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(11,'android.permission.ACCESS_NETWORK_STATE'),(9,'android.permission.ACCESS_WIFI_STATE'),(7,'android.permission.CHANGE_WIFI_STATE'),(13,'android.permission.GET_TASKS'),(2,'android.permission.INSTALL_PACKAGES'),(5,'android.permission.INTERNET'),(14,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(3,'android.permission.READ_SMS'),(4,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(8,'android.permission.WRITE_SMS'),(12,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(13,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(16,NULL,NULL,'file://',NULL,NULL,NULL),(17,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,9,1),(2,47,4),(3,69,11);
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,2,1),(13,2,4),(14,2,5),(15,2,6),(16,2,7),(17,2,9),(18,2,11),(19,3,1),(20,3,4),(21,3,5),(22,3,6),(23,3,7),(24,3,9),(25,3,11),(26,4,1),(27,4,5),(28,4,6),(29,4,7),(30,5,1),(31,4,9),(32,5,4),(33,5,5),(34,5,6),(35,5,7),(36,5,9),(37,5,11),(38,5,12),(39,5,13),(40,6,1),(41,6,2),(42,6,3),(43,6,5),(44,6,6),(45,6,7),(46,6,8),(47,6,9),(48,6,10),(49,6,11),(50,6,14),(51,6,15),(52,6,16),(53,7,1),(54,7,2),(55,7,3),(56,7,4),(57,7,5),(58,7,6),(59,7,7),(60,7,8),(61,7,9),(62,7,10),(63,7,11),(64,7,13),(65,7,14),(66,7,15),(67,7,16);
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

-- Dump completed on 2015-10-12  3:29:23
