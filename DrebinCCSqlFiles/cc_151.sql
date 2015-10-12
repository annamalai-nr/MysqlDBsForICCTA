-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_151
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (16,'(.*)'),(6,'android.appwidget.action.APPWIDGET_UPDATE'),(5,'android.intent.action.BATTERY_CHANGED_ACTION'),(4,'android.intent.action.BOOT_COMPLETED'),(2,'android.intent.action.CREATE_SHORTCUT'),(1,'android.intent.action.MAIN'),(17,'android.intent.action.PACKAGE_ADDED'),(13,'android.intent.action.SCREEN_OFF'),(14,'android.intent.action.SCREEN_ON'),(3,'android.intent.action.SIG_STR'),(15,'android.intent.action.VIEW'),(18,'android.settings.WIRELESS_SETTINGS'),(12,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(11,'org.atools.reboot.ACTION_REBOOT'),(10,'org.atools.reboot.ACTION_REBOOT_TO_BOOTLOADER'),(8,'org.atools.reboot.ACTION_REBOOT_TO_RECOVERY'),(7,'org.atools.reboot.ACTION_TIME_REBOOT'),(9,'org.atools.reboot.TIME_REBOOT_ENABLED');
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
INSERT INTO `Applications` VALUES (1,'org.atools.reboot',1),(2,'com.cosina.game.activity',11),(3,'com.allen.cdjyqjwyw',1),(4,'com.ps.kickmouse',11),(5,'com.ps.yams',6),(6,'com.mogo.puzzle',4),(7,'com.mogo.guoshullk',4);
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'org.atools.reboot.Alert'),(2,1,'org.atools.reboot.Configuration'),(3,1,'org.atools.reboot.EtouchMarket'),(4,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(5,2,'com.cosina.game.activity.StartUpActivity'),(6,1,'com.atools.battery.ShowTips'),(7,3,'com.allen.cdjyqjwyw.txtReader'),(8,1,'org.atools.reboot.RebootService'),(9,2,'com.google.update.Dialog'),(10,1,'org.atools.reboot.BgSvc'),(11,2,'com.google.update.UpdateService'),(12,3,'com.google.ssearch.Dialog'),(13,1,'com.atools.battery.UpdateService'),(14,2,'com.google.update.Receiver'),(15,4,'com.ps.kickmouse.WhacAMouse'),(16,3,'com.allen.cdjyqjwyw.ViewFileAct_Float'),(17,1,'org.atools.reboot.RebootWidget'),(18,3,'com.allen.cdjyqjwyw.Settings'),(19,3,'com.google.ssearch.SearchService'),(20,4,'com.ps.kickmouse.Game'),(21,1,'org.atools.reboot.RebootReceiver'),(22,3,'com.google.ssearch.Receiver'),(23,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(24,4,'com.google.update.Dialog'),(25,4,'com.google.update.UpdateService'),(26,1,'com.atools.battery.Receiver'),(27,4,'com.google.update.Receiver'),(28,5,'com.ps.yams.Yams'),(29,5,'com.google.update.Dialog'),(30,5,'cn.domob.android.ads.DomobActivity'),(31,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(32,5,'com.waps.OffersWebView'),(33,5,'com.google.update.UpdateService'),(34,5,'com.google.update.Receiver'),(35,6,'com.mogo.puzzle.begin'),(36,6,'com.mogo.puzzle.Main'),(37,6,'com.google.ads.AdActivity'),(38,6,'com.vpon.adon.android.WebInApp'),(39,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(40,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(41,6,'com.waps.OffersWebView'),(42,6,'com.google.update.Dialog'),(43,6,'com.google.update.UpdateService'),(44,6,'com.google.update.Receiver'),(45,4,'com.google.update.Dialog$2'),(46,3,'com.google.ssearch.SearchService$MyThread'),(47,4,'com.google.update.Dialog$1'),(48,1,'com.atools.battery.ShowTips$1'),(49,3,'com.google.ssearch.Dialog$1'),(50,2,'com.adwo.adsdk.D'),(51,2,'com.google.update.UpdateService$AA'),(52,4,'com.ps.kickmouse.WhacAMouse$2'),(53,2,'com.google.update.Dialog$1'),(54,4,'com.google.update.UpdateService$AA'),(55,2,'com.google.update.Dialog$2'),(56,7,'com.mogo.guoshullk.begin'),(57,7,'com.mogo.guoshullk.Main'),(58,7,'com.google.ads.AdActivity'),(59,7,'com.vpon.adon.android.WebInApp'),(60,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(61,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(62,7,'com.waps.OffersWebView'),(63,7,'com.google.update.Dialog'),(64,7,'com.google.update.UpdateService'),(65,7,'com.google.update.Receiver'),(66,6,'com.google.update.UpdateService$MyThread'),(67,6,'com.waps.k'),(68,6,'com.google.update.Dialog$2'),(69,6,'com.ju6.a'),(70,5,'com.waps.q'),(71,5,'cn.domob.android.ads.i'),(72,6,'com.waps.AppConnect'),(73,5,'com.waps.z'),(74,6,'com.mogo.puzzle.begin$beginButtonListener'),(75,6,'com.waps.m'),(76,5,'com.google.update.UpdateService$AA'),(77,6,'com.google.update.Dialog$1'),(78,5,'com.waps.ac'),(79,5,'cn.domob.android.ads.DomobAdEngine$2'),(80,5,'cn.domob.android.ads.DomobActionReceiver'),(81,5,'com.google.update.Dialog$2'),(82,5,'com.waps.aa'),(83,5,'cn.domob.android.ads.DomobAdManager'),(84,5,'com.google.update.Dialog$1'),(85,5,'com.waps.o'),(86,5,'cn.domob.android.ads.i$6'),(87,7,'com.google.update.Dialog$1'),(88,7,'org.loon.framework.android.game.LGameAndroid2DActivity$9'),(89,7,'com.waps.m'),(90,7,'com.waps.k'),(91,7,'com.mogo.guoshullk.begin$beginButtonListener'),(92,7,'com.ju6.a'),(93,7,'org.loon.framework.android.game.LGameAndroid2DActivity$10'),(94,7,'com.waps.AppConnect'),(95,7,'com.google.update.Dialog$2'),(96,7,'com.google.update.UpdateService$MyThread');
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
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,12,'MSG'),(2,23,'shouldShowTitlebar'),(3,4,'shouldResizeOverlay'),(4,11,'ST_MY_PID'),(5,23,'shouldShowBottomBar'),(6,4,'url'),(7,24,'TYPEdsada'),(8,4,'overlayTransition'),(9,16,'/sdcard/txtbooks/cdjyqjwyw.txt'),(10,23,'shouldEnableBottomBar'),(11,12,'TYPEdsada'),(12,25,'ST_MY_PID'),(13,24,'MSG'),(14,23,'shouldResizeOverlay'),(15,23,'shouldMakeOverlayTransparent'),(16,20,'HP'),(17,11,'ST_START_DELAY'),(18,16,'book1'),(19,4,'transitionTime'),(20,13,'SAFE_PID'),(21,13,'SAFE_START'),(22,20,'MouseGame'),(23,4,'shouldShowTitlebar'),(24,9,'TYPEdsada'),(25,4,'shouldEnableBottomBar'),(26,20,'Progrees'),(27,4,'overlayTitle'),(28,5,'Adwo_PID'),(29,4,'shouldMakeOverlayTransparent'),(30,25,'ST_START_DELAY'),(31,23,'url'),(32,6,'MM'),(33,4,'shouldShowBottomBar'),(34,9,'MSG'),(35,20,'restart'),(36,23,'overlayTransition'),(37,23,'transitionTime'),(38,23,'overlayTitle'),(39,35,'WAPS_PID'),(40,43,'ST_START_DELAY'),(41,41,'URL_PARAMS'),(42,37,'com.google.ads.AdOpener'),(43,42,'TYPEdsada'),(44,40,'overlayTransition'),(45,40,'shouldShowTitlebar'),(46,38,'adWidth'),(47,40,'overlayTitle'),(48,40,'transitionTime'),(49,41,'Offers_URL'),(50,41,'CLIENT_PACKAGE'),(51,40,'shouldEnableBottomBar'),(52,39,'Adwo_PID'),(53,41,'URL'),(54,42,'MSG'),(55,32,'URL'),(56,37,'action'),(57,32,'APP_ID'),(58,40,'shouldResizeOverlay'),(59,28,'APP_ID'),(60,33,'ST_START_DELAY'),(61,32,'SHWO_FLAG'),(62,32,'offers_webview_tag'),(63,43,'ST_MY_PID'),(64,38,'url'),(65,41,'isFinshClose'),(66,40,'url'),(67,35,'DEVICE_ID'),(68,32,'Offers_URL'),(69,40,'shouldShowBottomBar'),(70,40,'shouldMakeOverlayTransparent'),(71,32,'WAPS_ID'),(72,28,'WAPS_ID'),(73,32,'Notify_Id'),(74,28,'de_valeur'),(75,32,'CLIENT_PACKAGE'),(76,39,'isTestMode'),(77,28,'CLIENT_PACKAGE'),(78,35,'APP_ID'),(79,32,'UrlPath'),(80,41,'USER_ID'),(81,35,'CLIENT_PACKAGE'),(82,37,'params'),(83,35,'WAPS_ID'),(84,31,'transitionTime'),(85,33,'ST_MY_PID'),(86,31,'url'),(87,30,'appId'),(88,31,'overlayTitle'),(89,32,'WAPS_PID'),(90,28,'WAPS_PID'),(91,33,'DOMOB_ALLOW_LOCATION'),(92,31,'DOMOB_ALLOW_LOCATION'),(93,28,'dialog_shown'),(94,28,'points'),(95,32,'URL_PARAMS'),(96,28,'tours'),(97,30,'appName'),(98,32,'ACTIVITY_FLAG'),(99,31,'shouldMakeOverlayTransparent'),(100,33,'DOMOB_PID'),(101,31,'DOMOB_PID'),(102,31,'shouldShowBottomBar'),(103,30,'actType'),(104,29,'MSG'),(105,33,'DOMOB_TEST_MODE'),(106,31,'DOMOB_TEST_MODE'),(107,32,'isFinshClose'),(108,29,'TYPEdsada'),(109,31,'shouldResizeOverlay'),(110,31,'shouldEnableBottomBar'),(111,32,'Notify_Url_Params'),(112,32,'USER_ID'),(113,31,'shouldShowTitlebar'),(114,32,'DEVICE_ID'),(115,28,'DEVICE_ID'),(116,31,'overlayTransition'),(117,28,'lances'),(118,48,'com.google.ads.AdOpener'),(119,47,'WAPS_PID'),(120,46,'WAPS_PID'),(121,53,'TYPEdsada'),(122,48,'params'),(123,52,'isFinshClose'),(124,51,'overlayTransition'),(125,47,'WAPS_ID'),(126,46,'WAPS_ID'),(127,53,'MSG'),(128,47,'APP_ID'),(129,46,'APP_ID'),(130,51,'shouldShowTitlebar'),(131,48,'action'),(132,49,'adWidth'),(133,54,'ST_MY_PID'),(134,47,'CLIENT_PACKAGE'),(135,46,'CLIENT_PACKAGE'),(136,50,'isTestMode'),(137,52,'URL'),(138,49,'url'),(139,52,'USER_ID'),(140,51,'shouldEnableBottomBar'),(141,52,'URL_PARAMS'),(142,51,'shouldResizeOverlay'),(143,52,'Offers_URL'),(144,51,'shouldMakeOverlayTransparent'),(145,51,'shouldShowBottomBar'),(146,54,'ST_START_DELAY'),(147,51,'url'),(148,50,'Adwo_PID'),(149,52,'CLIENT_PACKAGE'),(150,51,'transitionTime'),(151,51,'overlayTitle'),(152,47,'DEVICE_ID'),(153,46,'DEVICE_ID');
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
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'s',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,22,'r',1,NULL,NULL),(22,21,'r',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'s',0,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'s',0,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'s',0,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,50,'r',1,NULL,NULL),(46,56,'a',1,NULL,NULL),(47,57,'a',0,NULL,NULL),(48,58,'a',0,NULL,NULL),(49,59,'a',0,NULL,NULL),(50,60,'a',0,NULL,NULL),(51,61,'a',0,NULL,NULL),(52,62,'a',0,NULL,NULL),(53,63,'a',0,NULL,NULL),(54,64,'s',0,NULL,NULL),(55,65,'r',1,NULL,NULL),(56,70,'r',1,NULL,NULL),(57,75,'r',1,NULL,NULL),(58,80,'r',1,NULL,NULL),(59,89,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,7),(2,2,21),(3,3,19),(4,4,24),(5,5,25),(6,6,19),(7,7,24),(8,8,19),(9,9,2),(10,10,6),(11,11,14),(12,12,12),(13,13,15),(14,14,16),(15,15,22),(16,16,15),(17,17,11),(18,18,26),(19,19,15),(20,20,2),(21,21,25),(22,22,11),(23,23,2),(24,24,2),(25,25,2),(26,26,27),(27,27,9),(28,28,22),(29,29,25),(30,30,11),(31,31,9),(32,32,43),(33,33,44),(34,34,41),(35,35,43),(36,36,42),(37,37,37),(38,38,33),(39,39,43),(40,40,43),(41,41,33),(42,41,31),(43,42,35),(44,43,32),(45,44,32),(46,45,35),(47,46,33),(48,47,42),(49,48,33),(50,49,32),(51,50,31),(52,50,33),(53,51,34),(54,52,32),(55,53,29),(56,54,32),(57,55,31),(58,55,33),(59,56,29),(60,57,32),(61,58,33),(62,58,31),(63,59,53),(64,60,47),(65,60,51),(66,60,54),(67,61,54),(68,62,55),(69,63,48),(70,64,52),(71,65,46),(72,66,54),(73,67,54),(74,68,47),(75,68,54),(76,68,51),(77,69,46),(78,70,53),(79,71,54);
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,7,'<com.allen.cdjyqjwyw.txtReader: void onClick(android.view.View)>',10,'a',NULL),(2,22,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(3,19,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(4,45,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(5,25,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(6,46,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(7,47,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(8,19,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(9,2,'<org.atools.reboot.Configuration: void onCreate(android.os.Bundle)>',17,'s',NULL),(10,48,'<com.atools.battery.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(11,14,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(12,49,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(13,15,'<com.ps.kickmouse.WhacAMouse: void startGame()>',4,'a',NULL),(14,16,'<com.allen.cdjyqjwyw.ViewFileAct_Float: boolean onMenuItemSelected(int,android.view.MenuItem)>',9,'a',NULL),(15,21,'<org.atools.reboot.RebootReceiver: void onReceive(android.content.Context,android.content.Intent)>',18,'s',NULL),(16,15,'<com.ps.kickmouse.WhacAMouse: void restartGame()>',4,'a',NULL),(17,51,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(18,26,'<com.atools.battery.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(19,52,'<com.ps.kickmouse.WhacAMouse$2: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(20,2,'<org.atools.reboot.Configuration: void onClick(android.view.View)>',78,'a',NULL),(21,25,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(22,11,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(23,2,'<org.atools.reboot.Configuration: void onClick(android.view.View)>',83,'a',NULL),(24,2,'<org.atools.reboot.Configuration: void onClick(android.view.View)>',43,'r',NULL),(25,2,'<org.atools.reboot.Configuration: void onClick(android.view.View)>',88,'a',NULL),(26,27,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(27,53,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(28,21,'<org.atools.reboot.RebootReceiver: void onReceive(android.content.Context,android.content.Intent)>',56,'s',NULL),(29,54,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(30,11,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(31,55,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(32,66,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(33,44,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(34,67,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(35,43,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(36,68,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(37,37,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(38,33,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(39,43,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(40,69,'<com.ju6.a: boolean b()>',178,'p',NULL),(41,71,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(42,72,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(43,32,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',328,'a',NULL),(44,73,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(45,74,'<com.mogo.puzzle.begin$beginButtonListener: void onClick(android.view.View)>',28,'a',NULL),(46,76,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(47,77,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(48,33,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(49,78,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(50,79,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(51,34,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(52,32,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(53,81,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(54,82,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(55,83,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(56,84,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(57,85,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(58,86,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(59,87,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(60,88,'<org.loon.framework.android.game.LGameAndroid2DActivity$9: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(61,64,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(62,65,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(63,58,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(64,90,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(65,91,'<com.mogo.guoshullk.begin$beginButtonListener: void onClick(android.view.View)>',28,'a',NULL),(66,64,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(67,92,'<com.ju6.a: boolean b()>',178,'p',NULL),(68,93,'<org.loon.framework.android.game.LGameAndroid2DActivity$10: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(69,94,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(70,95,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(71,96,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,5,12),(2,7,1),(3,9,1),(4,10,1),(5,12,1),(6,15,1),(7,17,12),(8,18,1),(9,23,1),(10,25,1),(11,26,15),(12,27,15),(13,30,15),(14,33,9),(15,34,15),(16,36,1),(17,38,1),(18,39,1),(19,40,1),(20,43,12),(21,44,1),(22,45,1),(23,47,15),(24,50,12),(25,51,16),(26,52,15),(27,53,16),(28,58,15),(29,61,15),(30,63,1),(31,64,1),(32,65,1),(33,67,1),(34,72,1),(35,73,1),(36,74,12),(37,77,1),(38,78,1),(39,79,15),(40,80,15),(41,82,15),(42,83,15),(43,84,15),(44,85,15),(45,86,1),(46,87,1),(47,88,18),(48,92,16),(49,93,15),(50,94,16),(51,95,15),(52,101,12),(53,102,1),(54,103,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,7,1),(2,9,2),(3,10,1),(4,12,2),(5,15,1),(6,18,2),(7,23,1),(8,25,2),(9,36,1),(10,38,2),(11,39,2),(12,40,1),(13,44,2),(14,45,1),(15,51,3),(16,52,3),(17,53,3),(18,63,1),(19,64,2),(20,65,1),(21,67,2),(22,72,1),(23,73,2),(24,77,1),(25,78,2),(26,86,1),(27,87,2),(28,92,3),(29,93,3),(30,94,3),(31,102,1),(32,103,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/allen/cdjyqjwyw/ViewFileAct_Float'),(2,2,'com/google/ssearch/SearchService'),(3,3,'com/google/ssearch/Dialog'),(4,4,'com/google/ssearch/Dialog'),(5,6,'com/google/update/Dialog'),(6,8,'com/google/update/Dialog'),(7,11,'com/google/ssearch/Dialog'),(8,14,'com/atools/battery/UpdateService'),(9,13,'com/google/ssearch/Dialog'),(10,16,'com/google/update/UpdateService'),(11,19,'com/ps/kickmouse/Game'),(12,20,'com/allen/cdjyqjwyw/Settings'),(13,21,'org/atools/reboot/BgSvc'),(14,22,'com/ps/kickmouse/Game'),(15,24,'com/atools/battery/UpdateService'),(16,28,'com/google/update/Dialog'),(17,29,'com/google/update/Dialog'),(18,31,'com/google/update/Dialog'),(19,32,'com/google/update/Dialog'),(20,35,'com/google/update/UpdateService'),(21,37,'org/atools/reboot/BgSvc'),(22,41,'com/google/update/Dialog'),(23,42,'com/google/update/Dialog'),(24,46,'com/google/update/UpdateService'),(25,48,'com/google/update/Dialog'),(26,49,'com/google/update/Dialog'),(27,54,'com/google/update/Dialog'),(28,55,'com/google/update/Dialog'),(29,56,'com/google/update/Dialog'),(30,57,'com/google/update/Dialog'),(31,60,'(.*)'),(32,59,'com/waps/OffersWebView'),(33,62,'com/mogo/puzzle/Main'),(34,66,'com/google/update/Dialog'),(35,68,'com/google/update/Dialog'),(36,69,'NULL-CONSTANT'),(37,70,'com/google/update/UpdateService'),(38,75,'com/waps/OffersWebView'),(39,76,'com/waps/OffersWebView'),(40,89,'com/google/update/Dialog'),(41,90,'com/google/update/Dialog'),(42,91,'com/google/update/UpdateService'),(43,96,'com/mogo/guoshullk/Main'),(44,97,'com/google/update/Dialog'),(45,98,'com/google/update/Dialog'),(46,100,'com/waps/OffersWebView');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,26,1),(2,27,2),(3,30,3),(4,34,4),(5,47,5),(6,51,6),(7,52,7),(8,53,8),(9,58,10),(10,61,11),(11,79,13),(12,80,14),(13,82,15),(14,83,16),(15,84,17),(16,85,18),(17,92,19),(18,93,20),(19,94,21),(20,95,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'/sdcard/txtbooks/cdjyqjwyw.txt'),(2,1,'book1'),(3,3,'TYPEdsada'),(4,4,'MSG'),(5,4,'TYPEdsada'),(6,6,'TYPEdsada'),(7,8,'MSG'),(8,8,'TYPEdsada'),(9,11,'TYPEdsada'),(10,13,'MSG'),(11,13,'TYPEdsada'),(12,22,'restart'),(13,28,'TYPEdsada'),(14,29,'TYPEdsada'),(15,31,'MSG'),(16,32,'MSG'),(17,31,'TYPEdsada'),(18,32,'TYPEdsada'),(19,41,'TYPEdsada'),(20,42,'MSG'),(21,42,'TYPEdsada'),(22,48,'MSG'),(23,48,'TYPEdsada'),(24,49,'TYPEdsada'),(25,54,'MSG'),(26,55,'MSG'),(27,54,'TYPEdsada'),(28,55,'TYPEdsada'),(29,56,'TYPEdsada'),(30,57,'TYPEdsada'),(31,59,'USER_ID'),(32,59,'CLIENT_PACKAGE'),(33,59,'Offers_URL'),(34,59,'URL_PARAMS'),(35,66,'MSG'),(36,66,'TYPEdsada'),(37,68,'TYPEdsada'),(38,75,'UrlPath'),(39,75,'ACTIVITY_FLAG'),(40,75,'isFinshClose'),(41,75,'offers_webview_tag'),(42,76,'Notify_Url_Params'),(43,76,'UrlPath'),(44,76,'ACTIVITY_FLAG'),(45,76,'isFinshClose'),(46,76,'offers_webview_tag'),(47,89,'TYPEdsada'),(48,90,'MSG'),(49,90,'TYPEdsada'),(50,97,'TYPEdsada'),(51,98,'MSG'),(52,98,'TYPEdsada'),(53,100,'USER_ID'),(54,100,'CLIENT_PACKAGE'),(55,100,'Offers_URL'),(56,100,'URL_PARAMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,1),(5,5,1),(6,6,4),(7,6,5),(8,6,3),(9,7,6),(10,8,5),(11,8,3),(12,8,4),(13,9,11),(14,9,10),(15,9,9),(16,9,8),(17,9,4),(18,9,7),(19,10,5),(20,10,3),(21,10,4),(22,11,5),(23,11,4),(24,11,3),(25,12,1),(26,13,5),(27,13,4),(28,13,3),(29,14,1),(30,15,4),(31,15,5),(32,15,3),(33,16,13),(34,16,14),(35,17,1),(36,18,5),(37,18,3),(38,18,4),(39,19,17),(40,20,17),(41,21,17),(42,22,17);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,1),(4,5,1),(5,12,1),(6,14,1),(7,17,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,47,'application','vnd.android.package-archive'),(2,53,'(.*)','(.*)'),(3,61,'application','vnd.android.package-archive'),(4,79,'application','vnd.android.package-archive'),(5,80,'application','vnd.android.package-archive'),(6,82,'application','vnd.android.package-archive'),(7,83,'application','vnd.android.package-archive'),(8,84,'application','vnd.android.package-archive'),(9,85,'application','vnd.android.package-archive'),(10,94,'(.*)','(.*)'),(11,95,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.allen.cdjyqjwyw'),(2,2,'com.allen.cdjyqjwyw'),(3,3,'com.allen.cdjyqjwyw'),(4,4,'com.allen.cdjyqjwyw'),(5,6,'com.ps.kickmouse'),(6,7,'com.allen.cdjyqjwyw'),(7,8,'com.ps.kickmouse'),(8,9,'com.allen.cdjyqjwyw'),(9,10,'com.noshufou.android.su'),(10,11,'com.allen.cdjyqjwyw'),(11,12,'com.noshufou.android.su'),(12,14,'org.atools.reboot'),(13,13,'com.allen.cdjyqjwyw'),(14,15,'com.noshufou.android.su'),(15,16,'com.cosina.game.activity'),(16,18,'com.noshufou.android.su'),(17,19,'com.ps.kickmouse'),(18,20,'com.allen.cdjyqjwyw'),(19,21,'org.atools.reboot'),(20,22,'com.ps.kickmouse'),(21,23,'com.cosina.game.activity'),(22,24,'org.atools.reboot'),(23,25,'com.cosina.game.activity'),(24,28,'com.ps.kickmouse'),(25,29,'com.cosina.game.activity'),(26,31,'com.ps.kickmouse'),(27,32,'com.cosina.game.activity'),(28,35,'com.ps.kickmouse'),(29,36,'com.noshufou.android.su'),(30,37,'org.atools.reboot'),(31,38,'com.noshufou.android.su'),(32,39,'com.ps.kickmouse'),(33,40,'com.ps.kickmouse'),(34,41,'com.cosina.game.activity'),(35,42,'com.cosina.game.activity'),(36,44,'com.mogo.puzzle'),(37,45,'com.mogo.puzzle'),(38,46,'com.mogo.puzzle'),(39,48,'com.mogo.puzzle'),(40,49,'com.mogo.puzzle'),(41,54,'com.ps.yams'),(42,55,'com.mogo.puzzle'),(43,56,'com.ps.yams'),(44,57,'com.mogo.puzzle'),(45,60,'(.*)'),(46,59,'com.mogo.puzzle'),(47,62,'com.mogo.puzzle'),(48,63,'com.ps.yams'),(49,64,'com.ps.yams'),(50,65,'com.noshufou.android.su'),(51,67,'com.noshufou.android.su'),(52,66,'com.ps.yams'),(53,68,'com.ps.yams'),(54,69,'NULL-CONSTANT'),(55,70,'com.ps.yams'),(56,72,'(.*)'),(57,73,'(.*)'),(58,75,'com.ps.yams'),(59,76,'com.ps.yams'),(60,77,'com.noshufou.android.su'),(61,78,'com.noshufou.android.su'),(62,86,'com.noshufou.android.su'),(63,87,'com.noshufou.android.su'),(64,89,'com.mogo.guoshullk'),(65,90,'com.mogo.guoshullk'),(66,91,'com.mogo.guoshullk'),(67,96,'com.mogo.guoshullk'),(68,97,'com.mogo.guoshullk'),(69,98,'com.mogo.guoshullk'),(70,100,'com.mogo.guoshullk'),(71,102,'com.mogo.guoshullk'),(72,103,'com.mogo.guoshullk');
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
INSERT INTO `IntentFilters` VALUES (1,2,0),(2,3,0),(3,5,0),(4,7,0),(5,15,0),(6,14,0),(7,17,0),(8,21,0),(9,22,0),(10,26,0),(11,27,0),(12,28,0),(13,34,0),(14,35,0),(15,44,0),(16,45,0),(17,46,0),(18,55,0),(19,56,0),(20,57,0),(21,58,0),(22,59,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,3,0,0),(5,4,1,0),(6,5,0,0),(7,6,1,0),(8,5,0,0),(9,6,1,0),(10,7,1,0),(11,8,0,0),(12,7,1,0),(13,8,0,0),(14,9,0,0),(15,10,1,0),(16,11,0,0),(17,12,1,0),(18,10,1,0),(19,13,0,0),(20,14,0,0),(21,15,0,0),(22,16,0,0),(23,17,1,0),(24,18,0,0),(25,17,1,0),(26,19,1,0),(27,20,1,0),(28,21,0,0),(29,22,0,0),(30,23,1,0),(31,21,0,0),(32,22,0,0),(33,24,1,0),(34,25,1,0),(35,26,0,0),(36,27,1,0),(37,28,0,0),(38,27,1,0),(39,29,1,0),(40,29,1,0),(41,30,0,0),(42,30,0,0),(43,31,1,0),(44,32,1,0),(45,32,1,0),(46,33,0,0),(47,34,1,0),(48,35,0,0),(49,35,0,0),(50,36,1,0),(51,37,1,0),(52,37,1,0),(53,37,1,0),(54,38,0,0),(55,39,0,0),(56,38,0,0),(57,39,0,0),(58,41,1,0),(59,42,0,0),(60,43,0,0),(61,44,1,0),(62,45,0,0),(63,46,1,0),(64,46,1,0),(65,47,1,0),(66,48,0,0),(67,47,1,0),(68,48,0,0),(69,49,0,0),(70,51,0,0),(71,52,1,0),(72,52,1,0),(73,52,1,0),(74,53,1,0),(75,54,0,0),(76,54,0,0),(77,56,1,0),(78,56,1,0),(79,57,1,0),(80,58,1,0),(81,58,1,0),(82,58,1,0),(83,58,1,0),(84,58,1,0),(85,58,1,0),(86,59,1,0),(87,59,1,0),(88,60,1,0),(89,61,0,0),(90,61,0,0),(91,62,0,0),(92,63,1,0),(93,63,1,0),(94,63,1,0),(95,64,1,0),(96,65,0,0),(97,66,0,0),(98,66,0,0),(99,68,1,0),(100,69,0,0),(101,70,1,0),(102,71,1,0),(103,71,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(11,'android.permission.ACCESS_FINE_LOCATION'),(15,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(7,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(18,'android.permission.CHANGE_CONFIGURATION'),(9,'android.permission.CHANGE_WIFI_STATE'),(13,'android.permission.GET_TASKS'),(10,'android.permission.INSTALL_PACKAGES'),(3,'android.permission.INTERNET'),(14,'android.permission.READ_EXTERNAL_STORAGE'),(12,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(17,'android.permission.READ_SMS'),(4,'android.permission.REBOOT'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(8,'android.permission.WRITE_EXTERNAL_STORAGE'),(16,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'market://search?q=pname:org.atools.expo2010',NULL,NULL,NULL),(3,NULL,NULL,'market://search?q=pname:cc.etouch.music.main',NULL,NULL,NULL),(4,NULL,NULL,'market://search?q=pub:Etouch.cc',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(15,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(18,NULL,NULL,'file://',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,40,9),(2,55,12),(3,67,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,2),(10,2,3),(11,3,1),(12,2,5),(13,3,3),(14,2,7),(15,3,5),(16,2,8),(17,3,7),(18,2,9),(19,3,8),(20,3,9),(21,3,10),(22,3,11),(23,4,1),(24,3,12),(25,4,2),(26,4,3),(27,4,5),(28,4,7),(29,4,8),(30,4,9),(31,4,13),(32,5,1),(33,5,2),(34,5,3),(35,5,5),(36,5,7),(37,5,8),(38,5,9),(39,5,11),(40,5,13),(41,5,14),(42,5,15),(43,6,17),(44,6,16),(45,6,1),(46,6,3),(47,6,5),(48,6,6),(49,6,7),(50,6,8),(51,6,9),(52,6,10),(53,6,11),(54,6,14),(55,6,15),(56,7,1),(57,7,3),(58,7,5),(59,7,6),(60,7,7),(61,7,8),(62,7,9),(63,7,10),(64,7,11),(65,7,13),(66,7,14),(67,7,15),(68,7,17),(69,7,16),(70,7,18);
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

-- Dump completed on 2015-10-09  0:38:19
