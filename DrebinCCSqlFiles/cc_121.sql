-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_121
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
INSERT INTO `ActionStrings` VALUES (7,'(.*)'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(9,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(12,'android.intent.action.PACKAGE_ADDED'),(10,'android.intent.action.SEND'),(11,'android.intent.action.SENDTO'),(2,'android.intent.action.SIG_STR'),(8,'android.intent.action.VIEW'),(13,'android.intent.action.WEB_SEARCH'),(14,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(5,'android.service.wallpaper.WallpaperService'),(6,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'com.dy.game.lianliankan',1),(2,'com.ps.mine',10),(3,'com.ps.mine',7),(4,'com.ps.pintu.view',2),(5,'com.evilsunflower.calculator',3),(6,'com.livegame.wallpapershuimohua',2),(7,'com.gp.monolith',7);
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.dy.game.lianliankan.LianLianKanGame'),(2,1,'com.google.update.Dialog'),(3,1,'com.google.update.UpdateService'),(4,1,'com.google.update.Receiver'),(5,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(6,2,'com.ps.mine.Main'),(7,2,'com.google.update.Dialog'),(8,2,'com.google.update.UpdateService'),(9,2,'com.google.update.Receiver'),(10,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(11,3,'com.ps.mine.Main'),(12,3,'com.google.update.Dialog'),(13,3,'com.google.update.UpdateService'),(14,3,'com.google.update.Receiver'),(15,4,'com.ps.pintu.view.MainActivity'),(16,4,'com.ps.pintu.view.JigsawActivity'),(17,4,'com.ps.pintu.view.LocalImageActivity'),(18,4,'com.ps.pintu.view.LocalImageGameActivity'),(19,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(20,4,'com.google.update.Dialog'),(21,4,'com.google.update.UpdateService'),(22,4,'com.google.update.Receiver'),(23,5,'com.evilsunflower.calculator.CalcPada'),(24,5,'com.google.ads.AdActivity'),(25,5,'com.vpon.adon.android.WebInApp'),(26,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(27,5,'com.evilsunflower.calculator.ShowTips'),(28,5,'com.evilsunflower.calculator.UpdateService'),(29,5,'com.evilsunflower.calculator.Receiver'),(30,6,'com.livegame.wallpapershuimohua.MainActivity'),(31,7,'com.gp.monolith.Monolith'),(32,6,'com.livegame.wallpapershuimohua.SettingsActivity'),(33,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(34,6,'com.livegame.wallpapershuimohua.SelectFolderActivity'),(35,7,'com.google.update.Dialog'),(36,6,'com.google.ads.AdActivity'),(37,7,'cn.domob.android.ads.DomobActivity'),(38,6,'com.vpon.adon.android.WebInApp'),(39,7,'com.google.update.UpdateService'),(40,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(41,7,'com.google.update.Receiver'),(42,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(43,1,'com.google.update.UpdateService$AA'),(44,6,'com.waps.OffersWebView'),(45,6,'com.google.update.Dialog'),(46,6,'com.livegame.wallpapershuimohua.WallpaperSlideshow'),(47,6,'com.google.update.UpdateService'),(48,6,'com.google.update.Receiver'),(49,1,'com.google.update.Dialog$1'),(50,2,'com.google.update.UpdateService$AA'),(51,2,'com.google.update.Dialog$2'),(52,1,'com.google.update.Dialog$2'),(53,2,'com.google.update.Dialog$1'),(54,3,'com.google.update.UpdateService$MyThread'),(55,3,'com.google.update.Dialog$1'),(56,4,'com.google.update.Dialog$2'),(57,3,'com.ju6.a'),(58,3,'com.google.update.Dialog$2'),(59,4,'com.ps.pintu.view.MainActivity$1'),(60,4,'com.ps.pintu.view.LocalImageActivity$1'),(61,4,'com.google.update.UpdateService$MyThread'),(62,4,'com.google.update.Dialog$1'),(63,4,'com.ju6.a'),(64,5,'com.evilsunflower.calculator.ShowTips$1'),(65,5,'com.madhouse.android.ads._'),(66,5,'com.adwo.adsdk.g'),(67,6,'com.waps.q'),(68,7,'cn.domob.android.ads.DomobActionReceiver'),(69,7,'cn.domob.android.ads.i$6'),(70,6,'com.waps.AppConnect'),(71,6,'com.livegame.wallpapershuimohua.MainActivity$2'),(72,6,'com.waps.z'),(73,7,'com.google.update.Dialog$1'),(74,7,'com.google.update.UpdateService$AA'),(75,7,'cn.domob.android.ads.DomobAdManager'),(76,6,'com.waps.ac'),(77,7,'cn.domob.android.ads.DomobAdEngine$2'),(78,6,'com.google.update.Dialog$1'),(79,7,'com.google.update.Dialog$2'),(80,6,'com.google.update.UpdateService$AA'),(81,7,'cn.domob.android.ads.i'),(82,6,'com.waps.aa'),(83,6,'com.waps.o'),(84,6,'com.livegame.wallpapershuimohua.MainActivity$1'),(85,6,'com.google.update.Dialog$2');
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
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,1,'gfan_cpid'),(2,3,'ST_START_DELAY'),(3,2,'MSG'),(4,1,'gfan_statistics_appkey'),(5,3,'ST_MY_PID'),(6,5,'overlayTitle'),(7,2,'TYPEdsada'),(8,5,'url'),(9,5,'shouldResizeOverlay'),(10,5,'overlayTransition'),(11,5,'shouldEnableBottomBar'),(12,5,'shouldMakeOverlayTransparent'),(13,7,'TYPEdsada'),(14,8,'ST_START_DELAY'),(15,5,'shouldShowTitlebar'),(16,13,'ST_MY_PID'),(17,10,'overlayTransition'),(18,5,'shouldShowBottomBar'),(19,8,'ST_MY_PID'),(20,5,'transitionTime'),(21,7,'MSG'),(22,10,'url'),(23,10,'shouldResizeOverlay'),(24,13,'ST_START_DELAY'),(25,10,'transitionTime'),(26,10,'shouldMakeOverlayTransparent'),(27,10,'shouldShowTitlebar'),(28,10,'overlayTitle'),(29,12,'MSG'),(30,10,'shouldShowBottomBar'),(31,10,'shouldEnableBottomBar'),(32,18,'path'),(33,19,'shouldMakeOverlayTransparent'),(34,19,'shouldEnableBottomBar'),(35,19,'url'),(36,20,'MSG'),(37,12,'TYPEdsada'),(38,16,'level'),(39,19,'shouldShowTitlebar'),(40,19,'transitionTime'),(41,19,'shouldShowBottomBar'),(42,21,'ST_START_DELAY'),(43,19,'shouldResizeOverlay'),(44,18,'level'),(45,21,'ST_MY_PID'),(46,19,'overlayTransition'),(47,16,'pictureIndex'),(48,20,'TYPEdsada'),(49,19,'overlayTitle'),(50,26,'overlayTransition'),(51,26,'shouldMakeOverlayTransparent'),(52,26,'shouldShowTitlebar'),(53,28,'SAFE_START'),(54,24,'action'),(55,24,'params'),(56,24,'com.google.ads.AdOpener'),(57,25,'(.*)'),(58,26,'shouldShowBottomBar'),(59,25,'url'),(60,27,'MM'),(61,26,'transitionTime'),(62,40,'isTestMode'),(63,43,'URL'),(64,43,'Offers_URL'),(65,43,'CLIENT_PACKAGE'),(66,33,'transitionTime'),(67,35,'MSG'),(68,42,'overlayTitle'),(69,42,'shouldResizeOverlay'),(70,43,'UrlPath'),(71,46,'ST_MY_PID'),(72,38,'adWidth'),(73,43,'Notify_Id'),(74,42,'url'),(75,43,'DEVICE_ID'),(76,30,'DEVICE_ID'),(77,42,'shouldShowTitlebar'),(78,43,'ACTIVITY_FLAG'),(79,37,'appName'),(80,37,'actType'),(81,39,'DOMOB_PID'),(82,33,'DOMOB_PID'),(83,43,'SHWO_FLAG'),(84,40,'Adwo_PID'),(85,42,'shouldShowBottomBar'),(86,43,'offers_webview_tag'),(87,43,'WAPS_ID'),(88,30,'WAPS_ID'),(89,33,'shouldShowTitlebar'),(90,33,'shouldResizeOverlay'),(91,39,'ST_START_DELAY'),(92,39,'DOMOB_TEST_MODE'),(93,33,'DOMOB_TEST_MODE'),(94,39,'DOMOB_ALLOW_LOCATION'),(95,33,'DOMOB_ALLOW_LOCATION'),(96,43,'URL_PARAMS'),(97,33,'shouldShowBottomBar'),(98,33,'overlayTransition'),(99,37,'appId'),(100,35,'TYPEdsada'),(101,33,'overlayTitle'),(102,39,'ST_MY_PID'),(103,44,'TYPEdsada'),(104,42,'transitionTime'),(105,30,'CLIENT_PACKAGE'),(106,33,'shouldEnableBottomBar'),(107,33,'url'),(108,26,'shouldResizeOverlay'),(109,26,'url'),(110,28,'SAFE_PID'),(111,25,'adWidth'),(112,26,'shouldEnableBottomBar'),(113,33,'shouldMakeOverlayTransparent'),(114,32,'folder'),(115,43,'APP_ID'),(116,30,'APP_ID'),(117,43,'WAPS_PID'),(118,30,'WAPS_PID'),(119,26,'overlayTitle'),(120,42,'overlayTransition'),(121,46,'ST_START_DELAY'),(122,42,'shouldMakeOverlayTransparent'),(123,43,'USER_ID'),(124,38,'url'),(125,43,'Notify_Url_Params'),(126,42,'shouldEnableBottomBar'),(127,43,'isFinshClose'),(128,44,'MSG');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'r',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'r',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'s',0,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'s',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,44,'a',0,NULL,NULL),(44,45,'a',0,NULL,NULL),(45,46,'s',1,19,NULL),(46,47,'s',0,NULL,NULL),(47,48,'r',1,NULL,NULL),(48,67,'r',1,NULL,NULL),(49,68,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,3),(3,3,4),(4,4,2),(5,5,8),(6,6,3),(7,7,7),(8,8,2),(9,9,7),(10,10,8),(11,11,13),(12,12,8),(13,13,9),(14,14,13),(15,15,13),(16,16,12),(17,17,14),(18,18,20),(19,19,13),(20,20,12),(21,21,15),(22,21,17),(23,22,15),(24,22,17),(25,23,21),(26,24,17),(27,24,15),(28,25,15),(29,25,17),(30,26,20),(31,27,22),(32,28,21),(33,29,21),(34,30,21),(35,31,29),(36,32,27),(37,33,24),(38,34,25),(39,35,23),(40,36,43),(41,37,46),(42,38,39),(43,38,33),(44,39,30),(45,40,30),(46,41,43),(47,42,35),(48,43,46),(49,44,39),(50,45,33),(51,45,39),(52,46,34),(53,46,43),(54,47,39),(55,47,33),(56,48,47),(57,49,44),(58,50,35),(59,51,41),(60,52,46),(61,53,39),(62,53,33),(63,54,23),(64,55,39),(65,56,43),(66,57,39),(67,58,43),(68,59,30),(69,60,44),(70,61,43);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,43,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(2,3,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(3,4,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(4,49,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(5,50,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(6,3,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(7,51,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(8,52,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(9,53,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(10,8,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(11,13,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(12,8,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(13,9,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(14,54,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(15,13,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(16,55,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(17,14,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(18,56,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(19,57,'<com.ju6.a: boolean b()>',178,'p',NULL),(20,58,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(21,59,'<com.ps.pintu.view.MainActivity$1: void onClick(android.view.View)>',25,'a',NULL),(22,60,'<com.ps.pintu.view.LocalImageActivity$1: void onClick(android.view.View)>',22,'a',NULL),(23,61,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(24,59,'<com.ps.pintu.view.MainActivity$1: void onClick(android.view.View)>',19,'a',NULL),(25,60,'<com.ps.pintu.view.LocalImageActivity$1: void onClick(android.view.View)>',28,'a',NULL),(26,62,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(27,22,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(28,21,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(29,21,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(30,63,'<com.ju6.a: boolean b()>',178,'p',NULL),(31,29,'<com.evilsunflower.calculator.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(32,64,'<com.evilsunflower.calculator.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(33,24,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(34,65,'<com.madhouse.android.ads._: com.madhouse.android.ads.c _(android.content.Context)>',11,'p',NULL),(35,66,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(36,44,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(37,47,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(38,69,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(39,70,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(40,71,'<com.livegame.wallpapershuimohua.MainActivity$2: void onClick(android.view.View)>',35,'a',NULL),(41,72,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(42,73,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(43,47,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(44,74,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(45,75,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(46,76,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(47,77,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(48,48,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(49,78,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(50,79,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(51,41,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(52,80,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(53,81,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(54,23,'<com.evilsunflower.calculator.CalcPada: void onCreate(android.os.Bundle)>',28,'s',NULL),(55,39,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(56,82,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(57,39,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(58,83,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(59,84,'<com.livegame.wallpapershuimohua.MainActivity$1: void onClick(android.view.View)>',37,'a',NULL),(60,85,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(61,44,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,1),(2,2,1),(3,6,1),(4,7,1),(5,8,1),(6,10,1),(7,12,6),(8,13,6),(9,14,1),(10,15,1),(11,23,1),(12,24,1),(13,27,1),(14,28,1),(15,30,6),(16,31,6),(17,34,1),(18,35,1),(19,38,1),(20,39,1),(21,46,1),(22,47,1),(23,48,7),(24,49,8),(25,50,7),(26,51,9),(27,52,10),(28,53,11),(29,54,8),(30,55,11),(31,56,10),(32,57,8),(33,58,10),(34,59,8),(35,60,8),(36,62,1),(37,63,9),(38,64,1),(39,65,8),(40,66,8),(41,68,8),(42,70,11),(43,71,8),(44,72,10),(45,75,10),(46,76,8),(47,77,10),(48,78,8),(49,79,10),(50,80,8),(51,81,11),(52,82,8),(53,83,8),(54,85,10),(55,86,8),(56,87,8),(57,88,1),(58,89,1),(59,91,10),(60,93,1),(61,94,8),(62,96,1),(63,97,11),(64,98,8),(65,101,13),(66,102,8),(67,103,1),(68,104,6),(69,105,13),(70,106,1),(71,107,10),(72,108,8),(73,110,1),(74,111,9),(75,113,1),(76,112,8),(77,121,8),(78,122,14),(79,123,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,1,2),(2,2,1),(3,6,1),(4,7,2),(5,8,2),(6,10,1),(7,14,1),(8,15,2),(9,23,2),(10,24,1),(11,27,1),(12,28,2),(13,34,1),(14,35,2),(15,38,1),(16,39,2),(17,46,1),(18,47,2),(19,48,3),(20,49,3),(21,50,3),(22,62,1),(23,64,2),(24,88,1),(25,89,2),(26,93,2),(27,96,1),(28,103,1),(29,106,2),(30,110,2),(31,113,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,3,'com/google/update/Dialog'),(2,4,'com/google/update/Dialog'),(3,5,'com/google/update/UpdateService'),(4,9,'com/google/update/Dialog'),(5,11,'com/google/update/Dialog'),(6,16,'com/google/update/Dialog'),(7,18,'com/google/update/Dialog'),(8,17,'com/google/update/Dialog'),(9,19,'com/google/update/Dialog'),(10,20,'com/google/update/Dialog'),(11,21,'com/google/update/Dialog'),(12,22,'com/google/update/UpdateService'),(13,25,'com/google/update/Dialog'),(14,26,'com/google/update/Dialog'),(15,29,'com/google/update/UpdateService'),(16,32,'com/ps/pintu/view/LocalImageActivity'),(17,33,'com/ps/pintu/view/LocalImageGameActivity'),(18,36,'com/ps/pintu/view/JigsawActivity'),(19,37,'com/ps/pintu/view/MainActivity'),(20,40,'com/google/update/UpdateService'),(21,41,'com/google/update/Dialog'),(22,42,'com/google/update/Dialog'),(23,43,'com/google/update/Dialog'),(24,44,'com/google/update/Dialog'),(25,45,'com/evilsunflower/calculator/UpdateService'),(26,57,'com/adwo/adsdk/AdwoAdBrowserActivity'),(27,60,'com.google.android.maps.MapsActivity'),(28,67,'com/google/update/Dialog'),(29,69,'com/google/update/Dialog'),(30,73,'com/waps/OffersWebView'),(31,84,'com/livegame/wallpapershuimohua/SettingsActivity'),(32,87,'com.google.android.maps.MapsActivity'),(33,92,'com/google/update/Dialog'),(34,95,'com/google/update/Dialog'),(35,94,'com.google.android.maps.MapsActivity'),(36,99,'NULL-CONSTANT'),(37,98,'com.google.android.maps.MapsActivity'),(38,100,'com/google/update/UpdateService'),(39,109,'com/google/update/UpdateService'),(40,108,'com.google.android.maps.MapsActivity'),(41,114,'com/evilsunflower/calculator/UpdateService'),(42,115,'com/google/update/Dialog'),(43,116,'com/google/update/Dialog'),(44,118,'com/google/update/Dialog'),(45,117,'com/waps/OffersWebView'),(46,119,'com/google/update/Dialog'),(47,120,'com/waps/OffersWebView'),(48,124,'(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,48,3),(2,49,4),(3,50,5),(4,51,7),(5,52,8),(6,53,9),(7,54,10),(8,55,11),(9,56,12),(10,58,13),(11,59,14),(12,63,15),(13,65,16),(14,66,17),(15,70,18),(16,71,19),(17,72,20),(18,76,21),(19,78,22),(20,79,23),(21,80,24),(22,82,25),(23,83,26),(24,85,27),(25,87,28),(26,86,29),(27,91,30),(28,94,31),(29,97,32),(30,98,34),(31,102,35),(32,107,36),(33,108,37),(34,112,38),(35,121,39);
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'TYPEdsada'),(2,4,'MSG'),(3,4,'TYPEdsada'),(4,9,'TYPEdsada'),(5,11,'MSG'),(6,11,'TYPEdsada'),(7,16,'TYPEdsada'),(8,17,'MSG'),(9,18,'TYPEdsada'),(10,17,'TYPEdsada'),(11,19,'MSG'),(12,19,'TYPEdsada'),(13,20,'TYPEdsada'),(14,21,'MSG'),(15,21,'TYPEdsada'),(16,25,'TYPEdsada'),(17,26,'MSG'),(18,26,'TYPEdsada'),(19,33,'level'),(20,33,'path'),(21,36,'level'),(22,36,'pictureIndex'),(23,41,'MSG'),(24,41,'TYPEdsada'),(25,42,'TYPEdsada'),(26,43,'MSG'),(27,43,'TYPEdsada'),(28,44,'TYPEdsada'),(29,52,'android.intent.extra.TEXT'),(30,52,'android.intent.extra.SUBJECT'),(31,52,'android.intent.extra.EMAIL'),(32,53,'sms_body'),(33,56,'android.intent.extra.EMAIL'),(34,57,'url'),(35,58,'android.intent.extra.TEXT'),(36,58,'android.intent.extra.EMAIL'),(37,67,'TYPEdsada'),(38,69,'MSG'),(39,69,'TYPEdsada'),(40,72,'android.intent.extra.EMAIL'),(41,73,'USER_ID'),(42,73,'CLIENT_PACKAGE'),(43,73,'Offers_URL'),(44,73,'offers_webview_tag'),(45,73,'URL_PARAMS'),(46,77,'android.intent.extra.TEXT'),(47,77,'android.intent.extra.SUBJECT'),(48,77,'android.intent.extra.EMAIL'),(49,79,'android.intent.extra.TEXT'),(50,79,'android.intent.extra.SUBJECT'),(51,79,'android.intent.extra.EMAIL'),(52,91,'android.intent.extra.TEXT'),(53,91,'android.intent.extra.EMAIL'),(54,92,'TYPEdsada'),(55,95,'MSG'),(56,95,'TYPEdsada'),(57,97,'sms_body'),(58,101,'query'),(59,115,'MSG'),(60,115,'TYPEdsada'),(61,116,'TYPEdsada'),(62,117,'Notify_Url_Params'),(63,117,'UrlPath'),(64,117,'ACTIVITY_FLAG'),(65,118,'MSG'),(66,117,'isFinshClose'),(67,118,'TYPEdsada'),(68,117,'offers_webview_tag'),(69,119,'TYPEdsada'),(70,120,'UrlPath'),(71,120,'ACTIVITY_FLAG'),(72,120,'isFinshClose'),(73,120,'offers_webview_tag'),(74,122,'android.live_wallpaper.package'),(75,122,'android.live_wallpaper.settings');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,4,2),(7,4,3),(8,4,4),(9,5,1),(10,6,4),(11,6,3),(12,6,2),(13,7,1),(14,8,2),(15,8,3),(16,8,4),(17,9,1),(18,10,3),(19,10,4),(20,10,2),(21,11,1),(22,12,1),(23,13,4),(24,13,3),(25,13,2),(26,14,5),(27,15,4),(28,15,2),(29,15,3),(30,16,12),(31,17,12);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,5,1),(4,7,1),(5,9,1),(6,11,1),(7,12,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,16,'package',NULL,NULL,NULL,NULL,NULL),(2,17,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,50,'(.*)','(.*)'),(2,54,'*','*'),(3,66,'(.*)','(.*)'),(4,71,'application','vnd.android.package-archive'),(5,76,'application','vnd.android.package-archive'),(6,77,'message','rfc882'),(7,78,'application','vnd.android.package-archive'),(8,80,'application','vnd.android.package-archive'),(9,82,'application','vnd.android.package-archive'),(10,83,'(.*)','(.*)'),(11,86,'application','vnd.android.package-archive'),(12,102,'*','*'),(13,121,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.dy.game.lianliankan'),(2,2,'com.dy.game.lianliankan'),(3,3,'com.dy.game.lianliankan'),(4,4,'com.dy.game.lianliankan'),(5,5,'com.dy.game.lianliankan'),(6,6,'com.noshufou.android.su'),(7,7,'com.noshufou.android.su'),(8,8,'com.ps.mine'),(9,9,'com.dy.game.lianliankan'),(10,10,'com.ps.mine'),(11,11,'com.dy.game.lianliankan'),(12,14,'com.noshufou.android.su'),(13,15,'com.noshufou.android.su'),(14,16,'com.ps.mine'),(15,18,'com.ps.mine'),(16,17,'com.ps.mine'),(17,19,'com.ps.mine'),(18,20,'com.ps.mine'),(19,21,'com.ps.mine'),(20,22,'com.ps.mine'),(21,23,'com.ps.mine'),(22,24,'com.ps.mine'),(23,25,'com.ps.mine'),(24,26,'com.ps.mine'),(25,27,'com.noshufou.android.su'),(26,28,'com.noshufou.android.su'),(27,29,'com.ps.mine'),(28,32,'com.ps.pintu.view'),(29,33,'com.ps.pintu.view'),(30,34,'com.ps.pintu.view'),(31,35,'com.ps.pintu.view'),(32,36,'com.ps.pintu.view'),(33,37,'com.ps.pintu.view'),(34,38,'com.noshufou.android.su'),(35,39,'com.noshufou.android.su'),(36,40,'com.ps.pintu.view'),(37,41,'com.ps.pintu.view'),(38,42,'com.ps.pintu.view'),(39,43,'com.ps.pintu.view'),(40,44,'com.ps.pintu.view'),(41,45,'com.evilsunflower.calculator'),(42,46,'com.noshufou.android.su'),(43,47,'com.noshufou.android.su'),(44,57,'com.evilsunflower.calculator'),(45,60,'com.google.android.apps.maps'),(46,62,'(.*)'),(47,64,'(.*)'),(48,67,'com.livegame.wallpapershuimohua'),(49,69,'com.livegame.wallpapershuimohua'),(50,73,'com.livegame.wallpapershuimohua'),(51,84,'com.livegame.wallpapershuimohua'),(52,88,'com.noshufou.android.su'),(53,87,'com.google.android.apps.maps'),(54,89,'com.noshufou.android.su'),(55,92,'com.livegame.wallpapershuimohua'),(56,93,'com.gp.monolith'),(57,95,'com.livegame.wallpapershuimohua'),(58,94,'com.google.android.apps.maps'),(59,96,'com.gp.monolith'),(60,99,'NULL-CONSTANT'),(61,98,'com.google.android.apps.maps'),(62,100,'com.livegame.wallpapershuimohua'),(63,103,'com.noshufou.android.su'),(64,106,'com.noshufou.android.su'),(65,109,'com.gp.monolith'),(66,108,'com.google.android.apps.maps'),(67,110,'com.livegame.wallpapershuimohua'),(68,113,'com.livegame.wallpapershuimohua'),(69,114,'com.evilsunflower.calculator'),(70,115,'com.gp.monolith'),(71,116,'com.gp.monolith'),(72,118,'com.gp.monolith'),(73,117,'com.livegame.wallpapershuimohua'),(74,119,'com.gp.monolith'),(75,120,'com.livegame.wallpapershuimohua'),(76,124,'(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,6,0),(4,9,0),(5,11,0),(6,14,0),(7,15,0),(8,22,0),(9,23,0),(10,29,0),(11,30,0),(12,31,0),(13,41,0),(14,45,0),(15,47,0),(16,48,0),(17,49,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,2,0,0),(4,2,0,0),(5,3,0,0),(6,4,1,0),(7,4,1,0),(8,5,1,0),(9,6,0,0),(10,5,1,0),(11,6,0,0),(12,7,1,0),(13,8,1,0),(14,9,1,0),(15,9,1,0),(16,10,0,0),(17,10,0,0),(18,11,0,0),(19,11,0,0),(20,12,0,0),(21,12,0,0),(22,13,0,0),(23,14,1,0),(24,14,1,0),(25,15,0,0),(26,15,0,0),(27,16,1,0),(28,16,1,0),(29,17,0,0),(30,18,1,0),(31,20,1,0),(32,21,0,0),(33,22,0,0),(34,23,1,0),(35,23,1,0),(36,24,0,0),(37,25,0,0),(38,26,1,0),(39,26,1,0),(40,27,0,0),(41,28,0,0),(42,28,0,0),(43,29,0,0),(44,29,0,0),(45,31,0,0),(46,32,1,0),(47,32,1,0),(48,33,1,0),(49,33,1,0),(50,33,1,0),(51,35,1,0),(52,35,1,0),(53,35,1,0),(54,35,1,0),(55,35,1,0),(56,35,1,0),(57,35,0,0),(58,35,1,0),(59,35,1,0),(60,35,0,0),(61,36,1,0),(62,36,1,0),(63,35,1,0),(64,36,1,0),(65,35,1,0),(66,35,1,0),(67,37,0,0),(68,35,1,0),(69,37,0,0),(70,35,1,0),(71,38,1,0),(72,35,1,0),(73,39,0,0),(74,38,1,0),(75,35,1,0),(76,38,1,0),(77,35,1,0),(78,38,1,0),(79,35,1,0),(80,38,1,0),(81,35,1,0),(82,38,1,0),(83,35,1,0),(84,40,0,0),(85,35,1,0),(86,41,1,0),(87,35,0,0),(88,42,1,0),(89,42,1,0),(90,35,1,0),(91,35,1,0),(92,43,0,0),(93,44,1,0),(94,35,0,0),(95,43,0,0),(96,44,1,0),(97,35,1,0),(98,35,0,0),(99,46,0,0),(100,48,0,0),(101,35,1,0),(102,35,1,0),(103,49,1,0),(104,50,1,0),(105,35,1,0),(106,49,1,0),(107,35,1,0),(108,35,0,0),(109,51,0,0),(110,52,1,0),(111,35,1,0),(112,53,1,0),(113,52,1,0),(114,54,0,0),(115,55,0,0),(116,55,0,0),(117,56,0,0),(118,57,0,0),(119,57,0,0),(120,56,0,0),(121,58,1,0),(122,59,1,0),(123,60,1,0),(124,61,0,0);
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
INSERT INTO `PermissionStrings` VALUES (11,'android.permission.ACCESS_COARSE_LOCATION'),(13,'android.permission.ACCESS_FINE_LOCATION'),(18,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(7,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(19,'android.permission.BIND_WALLPAPER'),(5,'android.permission.CHANGE_WIFI_STATE'),(16,'android.permission.GET_TASKS'),(8,'android.permission.INSTALL_PACKAGES'),(3,'android.permission.INTERNET'),(12,'android.permission.READ_CONTACTS'),(17,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(9,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(14,'android.permission.WAKE_LOCK'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(10,'android.permission.WRITE_SMS'),(15,'com.android.browser.permission.READ_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(2,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(25,NULL,NULL,'file://',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(32,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(33,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(34,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(37,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(38,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,19,1),(2,30,2),(3,34,6),(4,45,33);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,2),(10,2,3),(11,2,4),(12,2,5),(13,2,6),(14,2,7),(15,3,1),(16,3,2),(17,3,3),(18,3,4),(19,3,5),(20,3,6),(21,3,7),(22,3,8),(23,3,9),(24,3,10),(25,3,11),(26,4,1),(27,4,2),(28,4,3),(29,4,4),(30,4,5),(31,4,6),(32,4,7),(33,4,8),(34,4,9),(35,4,10),(36,4,11),(37,5,1),(38,5,3),(39,5,4),(40,5,6),(41,5,7),(42,5,9),(43,5,10),(44,5,11),(45,5,12),(46,5,13),(47,5,14),(48,5,15),(49,6,16),(50,7,17),(51,6,1),(52,7,1),(53,6,2),(54,7,2),(55,6,3),(56,7,18),(57,6,4),(58,7,3),(59,6,5),(60,7,4),(61,6,6),(62,7,5),(63,6,7),(64,7,6),(65,6,11),(66,7,7),(67,6,13),(68,7,13);
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

-- Dump completed on 2015-10-09  0:38:09
