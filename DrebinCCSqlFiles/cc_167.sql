-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_167
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
INSERT INTO `ActionStrings` VALUES (8,'(.*)'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(9,'android.intent.action.CHOOSER'),(1,'android.intent.action.MAIN'),(7,'android.intent.action.PACKAGE_ADDED'),(2,'android.intent.action.SIG_STR'),(5,'android.intent.action.VIEW'),(10,'android.settings.WIRELESS_SETTINGS'),(6,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'com.ps.mine',25),(2,'com.glu.android.dinercn',3),(3,'com.gp.geekadoo',4),(4,'com.gp.solitaire',460),(5,'com.alan.siwameinv7',1),(6,'com.mogo.shuiguollk',3),(7,'com.alan.translate',20);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.BROWSABLE'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
INSERT INTO `Classes` VALUES (1,1,'com.adwo.adsdk.AdwoAdBrowserActivity'),(2,1,'com.ps.mine.Main'),(3,1,'com.google.update.Dialog'),(4,1,'com.waps.OffersWebView'),(5,1,'com.google.update.UpdateService'),(6,1,'com.google.update.Receiver'),(7,2,'com.glu.android.dinercn.DinerDash2'),(8,3,'com.gp.geekadoo.ui.MainScreen'),(9,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(10,2,'com.glu.android.dinercn.ShowTips'),(11,2,'com.glu.android.dinercn.UpdateService'),(12,3,'com.gp.geekadoo.ui.Yaniv'),(13,2,'com.glu.android.dinercn.Receiver'),(14,3,'com.google.update.Dialog'),(15,3,'cn.domob.android.ads.DomobActivity'),(16,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(17,3,'com.waps.OffersWebView'),(18,3,'com.google.update.UpdateService'),(19,3,'com.google.update.Receiver'),(20,4,'com.gp.solitaire.Solitaire'),(21,4,'com.google.update.Dialog'),(22,4,'cn.domob.android.ads.DomobActivity'),(23,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(24,4,'com.waps.OffersWebView'),(25,4,'com.google.update.UpdateService'),(26,5,'com.alan.siwameinv7.PaperCollection'),(27,4,'com.google.update.Receiver'),(28,5,'com.alan.siwameinv7.PictureGrid'),(29,5,'com.google.ads.AdActivity'),(30,5,'com.vpon.adon.android.WebInApp'),(31,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(32,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(33,5,'com.waps.OffersWebView'),(34,5,'com.google.update.Dialog'),(35,5,'com.google.update.UpdateService'),(36,5,'com.google.update.Receiver'),(37,1,'com.google.update.Dialog$1'),(38,1,'com.waps.y'),(39,1,'com.google.update.UpdateService$AA'),(40,1,'com.waps.o'),(41,1,'com.waps.aa'),(42,1,'com.google.update.Dialog$2'),(43,1,'com.waps.q'),(44,6,'com.mogo.shuiguollk.begin'),(45,6,'com.mogo.shuiguollk.Main'),(46,6,'com.google.ads.AdActivity'),(47,6,'com.vpon.adon.android.WebInApp'),(48,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(49,1,'com.waps.x'),(50,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(51,6,'com.waps.OffersWebView'),(52,6,'com.google.update.Dialog'),(53,6,'com.google.update.UpdateService'),(54,6,'com.google.update.Receiver'),(55,2,'com.glu.android.dinercn.ShowTips$1'),(56,2,'glu.me2android.GameLet'),(57,5,'com.google.update.Dialog$2'),(58,5,'com.waps.k'),(59,5,'com.waps.m'),(60,5,'com.google.update.UpdateService$MyThread'),(61,5,'com.google.update.Dialog$1'),(62,7,'com.alan.translate.TranslateApp'),(63,7,'com.google.ads.AdActivity'),(64,7,'com.vpon.adon.android.WebInApp'),(65,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(66,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(67,7,'com.waps.OffersWebView'),(68,7,'com.google.update.Dialog'),(69,7,'com.google.update.UpdateService'),(70,3,'com.waps.ac'),(71,7,'com.google.update.Receiver'),(72,3,'com.google.update.UpdateService$AA'),(73,5,'com.ju6.a'),(74,5,'com.waps.AppConnect'),(75,3,'com.google.update.Dialog$2'),(76,4,'cn.domob.android.ads.DomobAdEngine$2'),(77,4,'com.waps.o'),(78,4,'com.waps.z'),(79,4,'cn.domob.android.ads.DomobActionReceiver'),(80,3,'cn.domob.android.ads.DomobAdEngine$2'),(81,3,'cn.domob.android.ads.i'),(82,4,'com.waps.ac'),(83,3,'cn.domob.android.ads.DomobActionReceiver'),(84,4,'com.google.update.Dialog$1'),(85,3,'com.gp.geekadoo.ui.MainScreen$3'),(86,4,'cn.domob.android.ads.DomobAdManager'),(87,3,'cn.domob.android.ads.i$6'),(88,4,'cn.domob.android.ads.i$6'),(89,3,'com.waps.aa'),(90,4,'cn.domob.android.ads.i'),(91,3,'com.waps.q'),(92,3,'com.gp.geekadoo.ui.MainScreen$5'),(93,6,'org.loon.framework.android.game.LGameAndroid2DActivity$9'),(94,4,'com.google.update.Dialog$2'),(95,4,'com.google.update.UpdateService$AA'),(96,6,'org.loon.framework.android.game.LGameAndroid2DActivity$10'),(97,6,'com.waps.k'),(98,3,'com.waps.o'),(99,4,'com.waps.aa'),(100,3,'com.waps.z'),(101,4,'com.waps.q'),(102,3,'cn.domob.android.ads.DomobAdManager'),(103,6,'com.google.update.UpdateService$MyThread'),(104,3,'com.google.update.Dialog$1'),(105,6,'com.google.update.Dialog$2'),(106,6,'com.waps.m'),(107,6,'com.ju6.a'),(108,6,'com.google.update.Dialog$1'),(109,7,'com.google.update.Dialog$2'),(110,6,'com.mogo.shuiguollk.begin$beginButtonListener'),(111,7,'com.google.update.Dialog$1'),(112,6,'com.waps.AppConnect'),(113,7,'com.waps.k'),(114,7,'com.waps.m'),(115,7,'com.waps.AppConnect'),(116,7,'com.google.update.UpdateService$MyThread'),(117,7,'com.ju6.a');
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
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,1,'url'),(2,4,'SHWO_FLAG'),(3,2,'DEVICE_ID'),(4,4,'DEVICE_ID'),(5,4,'UrlPath'),(6,1,'overlayTitle'),(7,4,'URL_PARAMS'),(8,1,'shouldResizeOverlay'),(9,4,'URL'),(10,3,'TYPEdsada'),(11,4,'offers_webview_tag'),(12,4,'USER_ID'),(13,5,'ST_MY_PID'),(14,1,'shouldEnableBottomBar'),(15,3,'MSG'),(16,1,'overlayTransition'),(17,2,'WAPS_PID'),(18,4,'WAPS_PID'),(19,4,'Offers_URL'),(20,5,'ST_START_DELAY'),(21,2,'APP_ID'),(22,4,'APP_ID'),(23,4,'ACTIVITY_FLAG'),(24,1,'shouldShowTitlebar'),(25,4,'CLIENT_PACKAGE'),(26,4,'Notify_Url_Params'),(27,2,'CLIENT_PACKAGE'),(28,4,'Notify_Id'),(29,2,'WAPS_ID'),(30,4,'WAPS_ID'),(31,4,'isFinshClose'),(32,1,'transitionTime'),(33,1,'shouldShowBottomBar'),(34,1,'shouldMakeOverlayTransparent'),(35,9,'shouldEnableBottomBar'),(36,9,'shouldShowBottomBar'),(37,9,'shouldResizeOverlay'),(38,9,'shouldShowTitlebar'),(39,9,'overlayTitle'),(40,11,'SAFE_START'),(41,7,'android_demo'),(42,29,'action'),(43,32,'url'),(44,32,'overlayTitle'),(45,32,'shouldShowTitlebar'),(46,28,'DEVICE_ID'),(47,33,'URL_PARAMS'),(48,28,'WAPS_PID'),(49,31,'Adwo_PID'),(50,29,'com.google.ads.AdOpener'),(51,32,'transitionTime'),(52,34,'TYPEdsada'),(53,9,'overlayTransition'),(54,33,'URL'),(55,7,'android_paURL'),(56,29,'params'),(57,28,'WAPS_ID'),(58,11,'SAFE_PID'),(59,10,'MM'),(60,32,'shouldEnableBottomBar'),(61,7,'android_mrcURL'),(62,9,'url'),(63,7,'android_demoURL'),(64,7,'android_mrc'),(65,9,'shouldMakeOverlayTransparent'),(66,7,'android_carrierdeviceid'),(67,9,'transitionTime'),(68,7,'0'),(69,32,'shouldMakeOverlayTransparent'),(70,33,'isFinshClose'),(71,30,'adWidth'),(72,33,'USER_ID'),(73,14,'MSG'),(74,16,'shouldShowTitlebar'),(75,34,'MSG'),(76,28,'APP_ID'),(77,30,'url'),(78,28,'CLIENT_PACKAGE'),(79,31,'isTestMode'),(80,33,'Offers_URL'),(81,17,'Offers_URL'),(82,17,'UrlPath'),(83,17,'URL'),(84,23,'shouldShowTitlebar'),(85,32,'shouldShowBottomBar'),(86,32,'shouldResizeOverlay'),(87,33,'CLIENT_PACKAGE'),(88,35,'ST_START_DELAY'),(89,18,'DOMOB_PID'),(90,32,'overlayTransition'),(91,16,'DOMOB_PID'),(92,35,'ST_MY_PID'),(93,24,'DEVICE_ID'),(94,20,'DEVICE_ID'),(95,18,'ST_START_DELAY'),(96,12,'gamedata'),(97,24,'SHWO_FLAG'),(98,24,'CLIENT_PACKAGE'),(99,20,'CLIENT_PACKAGE'),(100,23,'shouldResizeOverlay'),(101,25,'ST_MY_PID'),(102,25,'ST_START_DELAY'),(103,15,'actType'),(104,8,'WAPS_ID'),(105,17,'WAPS_ID'),(106,15,'appId'),(107,23,'shouldMakeOverlayTransparent'),(108,18,'DOMOB_TEST_MODE'),(109,24,'Offers_URL'),(110,16,'DOMOB_TEST_MODE'),(111,24,'Notify_Url_Params'),(112,17,'Notify_Url_Params'),(113,17,'URL_PARAMS'),(114,25,'DOMOB_PID'),(115,20,'DOMOB_PID'),(116,23,'DOMOB_PID'),(117,24,'APP_ID'),(118,20,'APP_ID'),(119,24,'URL'),(120,24,'UrlPath'),(121,18,'ST_MY_PID'),(122,23,'url'),(123,8,'APP_ID'),(124,25,'DOMOB_ALLOW_LOCATION'),(125,17,'APP_ID'),(126,20,'DOMOB_ALLOW_LOCATION'),(127,23,'DOMOB_ALLOW_LOCATION'),(128,22,'appId'),(129,16,'overlayTitle'),(130,24,'WAPS_PID'),(131,20,'WAPS_PID'),(132,21,'MSG'),(133,44,'URL'),(134,39,'WAPS_ID'),(135,38,'WAPS_ID'),(136,42,'Adwo_PID'),(137,21,'TYPEdsada'),(138,43,'shouldResizeOverlay'),(139,24,'WAPS_ID'),(140,43,'overlayTitle'),(141,20,'WAPS_ID'),(142,24,'ACTIVITY_FLAG'),(143,23,'transitionTime'),(144,17,'ACTIVITY_FLAG'),(145,16,'shouldMakeOverlayTransparent'),(146,8,'WAPS_PID'),(147,17,'WAPS_PID'),(148,24,'URL_PARAMS'),(149,40,'action'),(150,44,'Offers_URL'),(151,39,'APP_ID'),(152,38,'APP_ID'),(153,43,'transitionTime'),(154,24,'isFinshClose'),(155,39,'WAPS_PID'),(156,38,'WAPS_PID'),(157,43,'shouldShowTitlebar'),(158,23,'shouldEnableBottomBar'),(159,22,'appName'),(160,23,'overlayTransition'),(161,23,'overlayTitle'),(162,12,'state'),(163,24,'offers_webview_tag'),(164,16,'overlayTransition'),(165,25,'DOMOB_TEST_MODE'),(166,45,'TYPEdsada'),(167,16,'shouldShowBottomBar'),(168,20,'DOMOB_TEST_MODE'),(169,23,'DOMOB_TEST_MODE'),(170,24,'USER_ID'),(171,23,'shouldShowBottomBar'),(172,40,'params'),(173,39,'DEVICE_ID'),(174,38,'DEVICE_ID'),(175,16,'url'),(176,8,'DEVICE_ID'),(177,17,'DEVICE_ID'),(178,8,'CLIENT_PACKAGE'),(179,17,'CLIENT_PACKAGE'),(180,24,'Notify_Id'),(181,16,'shouldResizeOverlay'),(182,14,'TYPEdsada'),(183,16,'transitionTime'),(184,17,'USER_ID'),(185,41,'adWidth'),(186,17,'SHWO_FLAG'),(187,43,'shouldEnableBottomBar'),(188,17,'isFinshClose'),(189,42,'isTestMode'),(190,15,'appName'),(191,46,'ST_MY_PID'),(192,40,'com.google.ads.AdOpener'),(193,18,'DOMOB_ALLOW_LOCATION'),(194,16,'DOMOB_ALLOW_LOCATION'),(195,17,'offers_webview_tag'),(196,22,'actType'),(197,43,'url'),(198,43,'shouldMakeOverlayTransparent'),(199,17,'Notify_Id'),(200,43,'shouldShowBottomBar'),(201,44,'isFinshClose'),(202,16,'shouldEnableBottomBar'),(203,41,'url'),(204,45,'MSG'),(205,49,'WAPS_ID'),(206,52,'isTestMode'),(207,53,'shouldMakeOverlayTransparent'),(208,54,'URL'),(209,44,'CLIENT_PACKAGE'),(210,49,'WAPS_PID'),(211,53,'url'),(212,50,'com.google.ads.AdOpener'),(213,56,'ST_MY_PID'),(214,43,'overlayTransition'),(215,44,'URL_PARAMS'),(216,51,'url'),(217,39,'CLIENT_PACKAGE'),(218,54,'USER_ID'),(219,38,'CLIENT_PACKAGE'),(220,51,'adWidth'),(221,44,'USER_ID'),(222,55,'MSG'),(223,46,'ST_START_DELAY'),(224,53,'shouldShowBottomBar'),(225,52,'Adwo_PID'),(226,49,'APP_ID'),(227,50,'action'),(228,54,'URL_PARAMS'),(229,50,'params'),(230,54,'isFinshClose'),(231,54,'CLIENT_PACKAGE'),(232,53,'transitionTime'),(233,49,'CLIENT_PACKAGE'),(234,54,'Offers_URL'),(235,55,'TYPEdsada'),(236,53,'overlayTitle'),(237,49,'DEVICE_ID'),(238,53,'overlayTransition'),(239,53,'shouldShowTitlebar'),(240,53,'shouldResizeOverlay'),(241,53,'shouldEnableBottomBar'),(242,56,'ST_START_DELAY');
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'s',0,NULL,NULL),(19,19,'r',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'s',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,43,'r',1,NULL,NULL),(38,44,'a',1,NULL,NULL),(39,45,'a',0,NULL,NULL),(40,46,'a',0,NULL,NULL),(41,47,'a',0,NULL,NULL),(42,48,'a',0,NULL,NULL),(43,50,'a',0,NULL,NULL),(44,51,'a',0,NULL,NULL),(45,52,'a',0,NULL,NULL),(46,53,'s',0,NULL,NULL),(47,54,'r',1,NULL,NULL),(48,59,'r',1,NULL,NULL),(49,62,'a',1,NULL,NULL),(50,63,'a',0,NULL,NULL),(51,64,'a',0,NULL,NULL),(52,65,'a',0,NULL,NULL),(53,66,'a',0,NULL,NULL),(54,67,'a',0,NULL,NULL),(55,68,'a',0,NULL,NULL),(56,69,'s',0,NULL,NULL),(57,71,'r',1,NULL,NULL),(58,79,'r',1,NULL,NULL),(59,83,'r',1,NULL,NULL),(60,91,'r',1,NULL,NULL),(61,101,'r',1,NULL,NULL),(62,106,'r',1,NULL,NULL),(63,114,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,4),(3,3,4),(4,4,5),(5,5,5),(6,6,5),(7,7,4),(8,8,4),(9,9,3),(10,10,4),(11,11,4),(12,12,6),(13,13,4),(14,14,10),(15,15,7),(16,16,34),(17,17,33),(18,18,35),(19,19,34),(20,20,35),(21,21,13),(22,22,29),(23,23,7),(24,24,17),(25,25,35),(26,26,17),(27,27,18),(28,28,35),(29,29,28),(30,30,14),(31,31,17),(32,32,25),(33,33,36),(34,34,18),(35,35,20),(36,35,23),(37,35,25),(38,36,24),(39,37,18),(40,38,24),(41,39,16),(42,39,18),(43,40,18),(44,40,16),(45,41,8),(46,42,24),(47,43,21),(48,44,8),(49,45,19),(50,46,20),(51,46,25),(52,46,23),(53,47,16),(54,47,18),(55,48,23),(56,48,25),(57,48,20),(58,49,17),(59,50,27),(60,51,40),(61,52,25),(62,52,23),(63,52,20),(64,53,24),(65,54,8),(66,55,46),(67,55,43),(68,55,39),(69,56,21),(70,57,47),(71,58,25),(72,59,46),(73,59,43),(74,59,39),(75,60,24),(76,61,44),(77,62,46),(78,63,17),(79,64,24),(80,65,17),(81,66,46),(82,67,25),(83,68,16),(84,68,18),(85,69,46),(86,70,14),(87,71,45),(88,72,8),(89,73,46),(90,74,45),(91,75,55),(92,76,38),(93,77,55),(94,78,38),(95,79,54),(96,80,56),(97,81,49),(98,82,57),(99,83,56),(100,84,50),(101,85,56),(102,86,56);
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,37,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(2,4,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',356,'a',NULL),(3,38,'<com.waps.y: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(4,39,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(5,5,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(6,5,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(7,40,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(8,41,'<com.waps.aa: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(9,42,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(10,49,'<com.waps.x: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(11,4,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(12,6,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(13,4,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',41,'a',NULL),(14,55,'<com.glu.android.dinercn.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(15,56,'<glu.me2android.GameLet: boolean platformRequest(java.lang.String)>',5,'a',NULL),(16,57,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(17,58,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(18,60,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(19,61,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(20,35,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(21,13,'<com.glu.android.dinercn.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(22,29,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(23,56,'<glu.me2android.GameLet: void onCreate(android.os.Bundle)>',60,'s',NULL),(24,17,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',328,'a',NULL),(25,35,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(26,70,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(27,72,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(28,73,'<com.ju6.a: boolean b()>',178,'p',NULL),(29,74,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(30,75,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(31,17,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(32,25,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(33,36,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(34,18,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(35,76,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(36,77,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(37,18,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(38,78,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(39,80,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(40,81,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(41,8,'<com.gp.geekadoo.ui.MainScreen: void startYanivHandler()>',5,'a',NULL),(42,82,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(43,84,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(44,85,'<com.gp.geekadoo.ui.MainScreen$3: void onClick(android.view.View)>',6,'a',NULL),(45,19,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(46,86,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(47,87,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(48,88,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(49,89,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(50,27,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(51,46,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(52,90,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(53,24,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(54,92,'<com.gp.geekadoo.ui.MainScreen$5: void onClick(android.view.View)>',52,'a',NULL),(55,93,'<org.loon.framework.android.game.LGameAndroid2DActivity$9: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(56,94,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(57,54,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(58,95,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(59,96,'<org.loon.framework.android.game.LGameAndroid2DActivity$10: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(60,24,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(61,97,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(62,53,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(63,98,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(64,99,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(65,100,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(66,53,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(67,25,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(68,102,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(69,103,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(70,104,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(71,105,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(72,8,'<com.gp.geekadoo.ui.MainScreen: void resumeYanivHandler()>',5,'a',NULL),(73,107,'<com.ju6.a: boolean b()>',178,'p',NULL),(74,108,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(75,109,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(76,110,'<com.mogo.shuiguollk.begin$beginButtonListener: void onClick(android.view.View)>',28,'a',NULL),(77,111,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(78,112,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(79,113,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(80,69,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(81,115,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(82,71,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(83,116,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(84,63,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(85,69,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(86,117,'<com.ju6.a: boolean b()>',178,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,1),(2,2,1),(3,6,1),(4,7,1),(5,12,5),(6,14,6),(7,15,5),(8,17,1),(9,18,1),(10,20,1),(11,21,1),(12,22,1),(13,23,1),(14,24,5),(15,25,5),(16,26,5),(17,27,5),(18,28,5),(19,29,5),(20,30,5),(21,31,6),(22,32,5),(23,33,5),(24,34,5),(25,35,5),(26,36,5),(27,37,5),(28,38,1),(29,39,5),(30,40,1),(31,41,5),(32,42,5),(33,43,5),(34,44,1),(35,45,5),(36,46,1),(37,47,5),(38,49,5),(39,51,5),(40,53,8),(41,54,5),(42,56,8),(43,61,1),(44,62,1),(45,64,6),(46,66,1),(47,68,1),(48,73,5),(49,76,5),(50,77,5),(51,80,1),(52,81,5),(53,82,1),(54,84,5),(55,85,5),(56,87,5),(57,89,5),(58,90,5),(59,91,5),(60,92,5),(61,93,5),(62,94,5),(63,95,5),(64,99,8),(65,100,5),(66,101,5),(67,103,8),(68,104,1),(69,105,1),(70,106,9),(71,107,10),(72,108,9),(73,109,6),(74,110,9),(75,113,1),(76,112,9),(77,114,9),(78,115,1),(79,117,9),(80,118,9),(81,120,9),(82,121,5),(83,123,5),(84,126,5),(85,131,1),(86,133,1),(87,134,1),(88,135,1),(89,136,6),(90,138,1),(91,139,1),(92,140,6),(93,142,1),(94,144,1),(95,145,5),(96,150,1),(97,151,1),(98,152,8),(99,153,5),(100,154,8);
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
INSERT INTO `ICategories` VALUES (1,1,1),(2,2,2),(3,6,2),(4,7,1),(5,17,1),(6,18,2),(7,20,1),(8,21,2),(9,22,1),(10,23,2),(11,38,1),(12,40,2),(13,44,1),(14,46,2),(15,53,3),(16,54,3),(17,56,3),(18,61,1),(19,62,2),(20,66,1),(21,68,2),(22,80,1),(23,82,2),(24,99,3),(25,101,3),(26,103,3),(27,104,1),(28,105,2),(29,113,1),(30,115,2),(31,131,1),(32,133,2),(33,134,1),(34,135,2),(35,138,1),(36,139,2),(37,142,1),(38,144,2),(39,150,2),(40,151,1),(41,152,3),(42,153,3),(43,154,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,3,'(.*)'),(2,4,'com/waps/OffersWebView'),(3,5,'com/waps/OffersWebView'),(4,8,'com/google/update/Dialog'),(5,9,'com/google/update/Dialog'),(6,10,'com/google/update/Dialog'),(7,11,'com/google/update/Dialog'),(8,13,'NULL-CONSTANT'),(9,19,'com/google/update/UpdateService'),(10,48,'com/google/update/Dialog'),(11,50,'com/google/update/Dialog'),(12,52,'com/glu/android/dinercn/UpdateService'),(13,55,'com/glu/android/dinercn/UpdateService'),(14,57,'(.*)'),(15,58,'com/google/update/Dialog'),(16,59,'NULL-CONSTANT'),(17,60,'com/google/update/Dialog'),(18,63,'com/waps/OffersWebView'),(19,67,'com/google/update/Dialog'),(20,69,'com/google/update/UpdateService'),(21,70,'com/google/update/Dialog'),(22,71,'com/google/update/Dialog'),(23,72,'com/google/update/Dialog'),(24,74,'com/google/update/Dialog'),(25,75,'com/google/update/Dialog'),(26,78,'com/gp/geekadoo/ui/Yaniv'),(27,79,'NULL-CONSTANT'),(28,83,'com/google/update/UpdateService'),(29,97,'com/google/update/UpdateService'),(30,96,'com/waps/OffersWebView'),(31,98,'com/waps/OffersWebView'),(32,111,'com/google/update/UpdateService'),(33,119,'(.*)'),(34,122,'com/google/update/Dialog'),(35,124,'com/google/update/Dialog'),(36,125,'com/waps/OffersWebView'),(37,128,'com/google/update/Dialog'),(38,127,'com/waps/OffersWebView'),(39,129,'com/google/update/Dialog'),(40,130,'com/google/update/Dialog'),(41,132,'com/google/update/Dialog'),(42,137,'com/gp/geekadoo/ui/Yaniv'),(43,141,'com/mogo/shuiguollk/Main'),(44,143,'com/waps/OffersWebView'),(45,146,'com/google/update/Dialog'),(46,147,'com/google/update/Dialog'),(47,148,'com/waps/OffersWebView'),(48,149,'com/google/update/UpdateService'),(49,155,'com/google/update/Dialog'),(50,156,'com/google/update/Dialog');
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,12,1),(2,15,2),(3,24,3),(4,25,4),(5,26,5),(6,27,6),(7,28,7),(8,29,8),(9,30,9),(10,32,10),(11,33,11),(12,34,12),(13,35,13),(14,36,14),(15,37,15),(16,39,16),(17,41,17),(18,42,18),(19,43,19),(20,45,20),(21,47,21),(22,49,22),(23,51,23),(24,53,24),(25,54,25),(26,56,26),(27,73,28),(28,76,29),(29,77,30),(30,81,31),(31,84,33),(32,85,34),(33,87,35),(34,89,36),(35,90,37),(36,91,38),(37,92,39),(38,93,40),(39,94,41),(40,95,42),(41,99,43),(42,100,44),(43,101,45),(44,103,46),(45,121,47),(46,123,48),(47,126,49),(48,145,52),(49,152,53),(50,153,54),(51,154,55);
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
INSERT INTO `IExtras` VALUES (1,4,'UrlPath'),(2,4,'ACTIVITY_FLAG'),(3,4,'isFinshClose'),(4,4,'offers_webview_tag'),(5,5,'Notify_Url_Params'),(6,5,'UrlPath'),(7,5,'ACTIVITY_FLAG'),(8,5,'isFinshClose'),(9,5,'offers_webview_tag'),(10,8,'TYPEdsada'),(11,9,'MSG'),(12,9,'TYPEdsada'),(13,10,'TYPEdsada'),(14,11,'MSG'),(15,11,'TYPEdsada'),(16,48,'TYPEdsada'),(17,50,'MSG'),(18,50,'TYPEdsada'),(19,58,'TYPEdsada'),(20,60,'MSG'),(21,60,'TYPEdsada'),(22,63,'USER_ID'),(23,63,'CLIENT_PACKAGE'),(24,63,'Offers_URL'),(25,63,'URL_PARAMS'),(26,67,'MSG'),(27,67,'TYPEdsada'),(28,70,'TYPEdsada'),(29,71,'MSG'),(30,71,'TYPEdsada'),(31,72,'TYPEdsada'),(32,74,'MSG'),(33,74,'TYPEdsada'),(34,75,'TYPEdsada'),(35,78,'state'),(36,96,'UrlPath'),(37,96,'ACTIVITY_FLAG'),(38,96,'isFinshClose'),(39,96,'offers_webview_tag'),(40,98,'Notify_Url_Params'),(41,98,'UrlPath'),(42,98,'ACTIVITY_FLAG'),(43,98,'isFinshClose'),(44,98,'offers_webview_tag'),(45,106,'android.intent.extra.INTENT'),(46,108,'android.intent.extra.INTENT'),(47,110,'android.intent.extra.TITLE'),(48,110,'android.intent.extra.INTENT'),(49,112,'android.intent.extra.INTENT'),(50,114,'android.intent.extra.TITLE'),(51,114,'android.intent.extra.INTENT'),(52,117,'android.intent.extra.INTENT'),(53,118,'android.intent.extra.TITLE'),(54,118,'android.intent.extra.INTENT'),(55,120,'android.intent.extra.TITLE'),(56,120,'android.intent.extra.INTENT'),(57,122,'TYPEdsada'),(58,124,'MSG'),(59,125,'UrlPath'),(60,124,'TYPEdsada'),(61,125,'ACTIVITY_FLAG'),(62,125,'isFinshClose'),(63,125,'offers_webview_tag'),(64,127,'Notify_Url_Params'),(65,127,'UrlPath'),(66,127,'ACTIVITY_FLAG'),(67,128,'TYPEdsada'),(68,127,'isFinshClose'),(69,127,'offers_webview_tag'),(70,129,'MSG'),(71,129,'TYPEdsada'),(72,130,'MSG'),(73,130,'TYPEdsada'),(74,132,'TYPEdsada'),(75,137,'state'),(76,143,'USER_ID'),(77,143,'CLIENT_PACKAGE'),(78,143,'Offers_URL'),(79,143,'URL_PARAMS'),(80,146,'MSG'),(81,146,'TYPEdsada'),(82,147,'TYPEdsada'),(83,148,'USER_ID'),(84,148,'CLIENT_PACKAGE'),(85,148,'Offers_URL'),(86,148,'URL_PARAMS'),(87,155,'MSG'),(88,155,'TYPEdsada'),(89,156,'TYPEdsada');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,4,1),(7,5,3),(8,5,2),(9,5,4),(10,6,4),(11,6,3),(12,6,2),(13,7,1),(14,8,2),(15,8,3),(16,8,4),(17,9,1),(18,10,3),(19,10,4),(20,10,2),(21,11,7),(22,12,1),(23,13,4),(24,13,3),(25,13,2),(26,14,7),(27,15,1),(28,16,2),(29,16,3),(30,16,4),(31,17,7),(32,18,7),(33,19,7),(34,20,7),(35,21,7),(36,22,7);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,1),(4,7,1),(5,9,1),(6,12,1),(7,15,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,11,'package',NULL,NULL,NULL,NULL,NULL),(2,14,'package',NULL,NULL,NULL,NULL,NULL),(3,17,'package',NULL,NULL,NULL,NULL,NULL),(4,18,'package',NULL,NULL,NULL,NULL,NULL),(5,19,'package',NULL,NULL,NULL,NULL,NULL),(6,20,'package',NULL,NULL,NULL,NULL,NULL),(7,21,'package',NULL,NULL,NULL,NULL,NULL),(8,22,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,12,'application','vnd.android.package-archive'),(2,15,'application','vnd.android.package-archive'),(3,34,'application','vnd.android.package-archive'),(4,56,'(.*)','(.*)'),(5,73,'application','vnd.android.package-archive'),(6,76,'application','vnd.android.package-archive'),(7,84,'application','vnd.android.package-archive'),(8,85,'application','vnd.android.package-archive'),(9,87,'application','vnd.android.package-archive'),(10,89,'application','vnd.android.package-archive'),(11,90,'application','vnd.android.package-archive'),(12,91,'application','vnd.android.package-archive'),(13,92,'application','vnd.android.package-archive'),(14,93,'application','vnd.android.package-archive'),(15,94,'application','vnd.android.package-archive'),(16,95,'application','vnd.android.package-archive'),(17,103,'(.*)','(.*)'),(18,121,'application','vnd.android.package-archive'),(19,123,'application','vnd.android.package-archive'),(20,126,'application','vnd.android.package-archive'),(21,145,'application','vnd.android.package-archive'),(22,154,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.noshufou.android.su'),(2,2,'com.noshufou.android.su'),(3,3,'(.*)'),(4,4,'com.ps.mine'),(5,5,'com.ps.mine'),(6,6,'com.ps.mine'),(7,7,'com.ps.mine'),(8,8,'com.ps.mine'),(9,9,'com.ps.mine'),(10,10,'com.ps.mine'),(11,11,'com.ps.mine'),(12,13,'NULL-CONSTANT'),(13,17,'(.*)'),(14,18,'(.*)'),(15,19,'com.ps.mine'),(16,20,'(.*)'),(17,21,'(.*)'),(18,22,'com.noshufou.android.su'),(19,23,'com.noshufou.android.su'),(20,38,'com.alan.siwameinv7'),(21,40,'com.alan.siwameinv7'),(22,44,'com.noshufou.android.su'),(23,46,'com.noshufou.android.su'),(24,48,'com.alan.siwameinv7'),(25,50,'com.alan.siwameinv7'),(26,52,'com.glu.android.dinercn'),(27,55,'com.glu.android.dinercn'),(28,57,'(.*)'),(29,58,'com.alan.siwameinv7'),(30,59,'NULL-CONSTANT'),(31,60,'com.alan.siwameinv7'),(32,61,'com.gp.geekadoo'),(33,62,'com.gp.geekadoo'),(34,63,'com.alan.siwameinv7'),(35,66,'(.*)'),(36,67,'com.gp.solitaire'),(37,69,'com.alan.siwameinv7'),(38,68,'(.*)'),(39,70,'com.gp.solitaire'),(40,71,'com.gp.geekadoo'),(41,72,'com.gp.geekadoo'),(42,74,'com.gp.geekadoo'),(43,75,'com.gp.geekadoo'),(44,78,'com.gp.geekadoo'),(45,79,'NULL-CONSTANT'),(46,80,'com.noshufou.android.su'),(47,82,'com.noshufou.android.su'),(48,83,'com.gp.geekadoo'),(49,97,'com.gp.solitaire'),(50,96,'com.gp.geekadoo'),(51,98,'com.gp.geekadoo'),(52,104,'(.*)'),(53,105,'(.*)'),(54,111,'com.mogo.shuiguollk'),(55,113,'com.gp.solitaire'),(56,115,'com.gp.solitaire'),(57,119,'(.*)'),(58,122,'com.mogo.shuiguollk'),(59,124,'com.mogo.shuiguollk'),(60,125,'com.gp.solitaire'),(61,128,'com.mogo.shuiguollk'),(62,127,'com.gp.solitaire'),(63,129,'com.mogo.shuiguollk'),(64,130,'com.gp.solitaire'),(65,131,'com.mogo.shuiguollk'),(66,132,'com.gp.solitaire'),(67,133,'com.mogo.shuiguollk'),(68,134,'com.noshufou.android.su'),(69,135,'com.noshufou.android.su'),(70,137,'com.gp.geekadoo'),(71,138,'com.noshufou.android.su'),(72,139,'com.noshufou.android.su'),(73,141,'com.mogo.shuiguollk'),(74,142,'com.noshufou.android.su'),(75,144,'com.noshufou.android.su'),(76,143,'com.mogo.shuiguollk'),(77,146,'com.alan.translate'),(78,147,'com.alan.translate'),(79,148,'com.alan.translate'),(80,149,'com.alan.translate'),(81,150,'com.alan.translate'),(82,151,'com.alan.translate'),(83,155,'com.alan.translate'),(84,156,'com.alan.translate');
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
INSERT INTO `IntentFilters` VALUES (1,2,0),(2,6,0),(3,7,0),(4,8,0),(5,13,0),(6,19,0),(7,20,0),(8,27,0),(9,28,0),(10,36,0),(11,37,0),(12,38,0),(13,47,0),(14,48,0),(15,49,0),(16,57,0),(17,58,0),(18,59,0),(19,60,0),(20,61,0),(21,62,0),(22,63,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,2,0,0),(4,3,0,0),(5,3,0,0),(6,4,1,0),(7,4,1,0),(8,5,0,0),(9,5,0,0),(10,6,0,0),(11,6,0,0),(12,7,1,0),(13,8,0,0),(14,9,1,0),(15,10,1,0),(16,11,1,0),(17,11,1,0),(18,11,1,0),(19,12,0,0),(20,13,1,0),(21,13,1,0),(22,14,1,0),(23,14,1,0),(24,15,1,0),(25,15,1,0),(26,15,1,0),(27,15,1,0),(28,15,1,0),(29,15,1,0),(30,15,1,0),(31,16,1,0),(32,15,1,0),(33,15,1,0),(34,17,1,0),(35,15,1,0),(36,15,1,0),(37,15,1,0),(38,18,1,0),(39,15,1,0),(40,18,1,0),(41,15,1,0),(42,15,1,0),(43,15,1,0),(44,19,1,0),(45,15,1,0),(46,19,1,0),(47,15,1,0),(48,20,0,0),(49,15,1,0),(50,20,0,0),(51,15,1,0),(52,21,0,0),(53,22,1,0),(54,22,1,0),(55,23,0,0),(56,22,1,0),(57,24,0,0),(58,25,0,0),(59,26,0,0),(60,25,0,0),(61,27,1,0),(62,27,1,0),(63,29,0,0),(64,30,1,0),(65,31,1,0),(66,31,1,0),(67,32,0,0),(68,31,1,0),(69,33,0,0),(70,32,0,0),(71,34,0,0),(72,34,0,0),(73,36,1,0),(74,37,0,0),(75,37,0,0),(76,38,1,0),(77,40,1,0),(78,41,0,0),(79,42,0,0),(80,43,1,0),(81,44,1,0),(82,43,1,0),(83,45,0,0),(84,47,1,0),(85,48,1,0),(86,47,1,0),(87,47,1,0),(88,48,1,0),(89,48,1,0),(90,47,1,0),(91,48,1,0),(92,47,1,0),(93,48,1,0),(94,47,1,0),(95,48,1,0),(96,49,0,0),(97,50,0,0),(98,49,0,0),(99,51,1,0),(100,52,1,0),(101,51,1,0),(102,53,1,0),(103,51,1,0),(104,53,1,0),(105,53,1,0),(106,54,1,0),(107,55,1,0),(108,54,1,0),(109,56,1,0),(110,54,1,0),(111,57,0,0),(112,54,1,0),(113,58,1,0),(114,54,1,0),(115,58,1,0),(116,59,1,0),(117,54,1,0),(118,54,1,0),(119,60,0,0),(120,54,1,0),(121,61,1,0),(122,62,0,0),(123,63,1,0),(124,62,0,0),(125,64,0,0),(126,65,1,0),(127,64,0,0),(128,66,0,0),(129,66,0,0),(130,67,0,0),(131,69,1,0),(132,67,0,0),(133,69,1,0),(134,70,1,0),(135,70,1,0),(136,71,1,0),(137,72,0,0),(138,74,1,0),(139,74,1,0),(140,75,1,0),(141,76,0,0),(142,77,1,0),(143,78,0,0),(144,77,1,0),(145,79,1,0),(146,80,0,0),(147,80,0,0),(148,81,0,0),(149,82,0,0),(150,83,1,0),(151,83,1,0),(152,84,1,0),(153,84,1,0),(154,84,1,0),(155,85,0,0),(156,85,0,0);
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
INSERT INTO `PermissionStrings` VALUES (13,'android.permission.ACCESS_COARSE_LOCATION'),(15,'android.permission.ACCESS_FINE_LOCATION'),(16,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(9,'android.permission.ACCESS_NETWORK_STATE'),(8,'android.permission.ACCESS_WIFI_STATE'),(19,'android.permission.CHANGE_CONFIGURATION'),(7,'android.permission.CHANGE_WIFI_STATE'),(4,'android.permission.GET_TASKS'),(17,'android.permission.INSTALL_PACKAGES'),(5,'android.permission.INTERNET'),(14,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(10,'android.permission.READ_SMS'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(18,'android.permission.SET_WALLPAPER'),(12,'android.permission.VIBRATE'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(11,'android.permission.WRITE_SMS'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)type=non_mrc&gid=(.*)&placeHolder=null',NULL,NULL,NULL),(5,NULL,NULL,'(.*)type=non_mrc&gid=(.*)&phNo=',NULL,NULL,NULL),(6,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=mrc&gid=(.*)&placeHolder=null',NULL,NULL,NULL),(7,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=non_mrc&gid=(.*)&placeHolder=null',NULL,NULL,NULL),(8,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=non_mrc&gid=(.*)&phNo=',NULL,NULL,NULL),(9,NULL,NULL,'http://www.ss3.glu.com',NULL,NULL,NULL),(10,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=mrc&gid=(.*)&phNo=',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=non_mrc&gid=(.*)&phNo=&placeHolder=null',NULL,NULL,NULL),(14,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=non_mrc&gid=(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)type=mrc&gid=(.*)&phNo=',NULL,NULL,NULL),(16,NULL,NULL,'(.*)type=mrc&gid=(.*)&placeHolder=null',NULL,NULL,NULL),(17,NULL,NULL,'http://gcs.glu.com/gcs/android/index.jsp?src=diner2',NULL,NULL,NULL),(18,NULL,NULL,'(.*)type=non_mrc&gid=(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)type=mrc&gid=(.*)&phNo=&placeHolder=null',NULL,NULL,NULL),(20,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=mrc&gid=(.*)&phNo=&placeHolder=null',NULL,NULL,NULL),(21,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=mrc&gid=(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)type=non_mrc&gid=(.*)&phNo=&placeHolder=null',NULL,NULL,NULL),(23,NULL,NULL,'(.*)type=mrc&gid=(.*)',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(31,NULL,NULL,'http://www.youtube.com/watch?v=V4XuZRbbs6M',NULL,NULL,NULL),(32,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(35,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(36,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(41,NULL,NULL,'file://',NULL,NULL,NULL),(42,NULL,NULL,'file://',NULL,NULL,NULL),(43,NULL,NULL,'(.*)',NULL,NULL,NULL),(44,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(45,NULL,NULL,'(.*)',NULL,NULL,NULL),(46,NULL,NULL,'(.*)',NULL,NULL,NULL),(47,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(48,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(49,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(50,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(51,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(52,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL),(54,NULL,NULL,'(.*)',NULL,NULL,NULL),(55,NULL,NULL,'(.*)',NULL,NULL,NULL),(56,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,28,27),(2,46,32),(3,68,50),(4,73,51),(5,86,56);
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,2,1),(11,2,5),(12,3,16),(13,2,8),(14,3,1),(15,2,9),(16,3,3),(17,2,10),(18,3,4),(19,2,11),(20,3,5),(21,2,12),(22,3,6),(23,2,13),(24,3,7),(25,3,8),(26,3,9),(27,3,14),(28,3,15),(29,4,1),(30,4,3),(31,4,4),(32,4,5),(33,4,6),(34,4,7),(35,4,8),(36,4,9),(37,4,10),(38,4,11),(39,4,13),(40,4,14),(41,4,15),(42,5,1),(43,4,17),(44,5,4),(45,4,16),(46,5,5),(47,5,6),(48,5,7),(49,5,8),(50,5,9),(51,5,10),(52,5,11),(53,5,13),(54,5,14),(55,5,15),(56,5,17),(57,5,16),(58,5,19),(59,5,18),(60,6,1),(61,6,4),(62,6,5),(63,6,6),(64,6,7),(65,6,8),(66,6,9),(67,6,10),(68,6,11),(69,6,13),(70,6,14),(71,6,15),(72,6,17),(73,6,16),(74,6,19),(75,7,1),(76,7,4),(77,7,5),(78,7,6),(79,7,7),(80,7,8),(81,7,9),(82,7,10),(83,7,11),(84,7,13),(85,7,14),(86,7,15),(87,7,17),(88,7,16),(89,7,18);
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

-- Dump completed on 2015-10-09  0:38:23
